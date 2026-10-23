package org.jbox2d.collision.broadphase;

import org.jbox2d.callbacks.DebugDraw;
import org.jbox2d.callbacks.TreeCallback;
import org.jbox2d.callbacks.TreeRayCastCallback;
import org.jbox2d.collision.AABB;
import org.jbox2d.collision.RayCastInput;
import org.jbox2d.common.Color3f;
import org.jbox2d.common.MathUtils;
import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public class DynamicTree implements BroadPhaseStrategy {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final int MAX_STACK_SIZE = 64;
    public static final int NULL_NODE = -1;
    private int m_freeList;
    private int m_insertionCount;
    private final Vec2[] drawVecs = new Vec2[4];
    private final TreeNodeStack nodeStack = new TreeNodeStack(10);
    private final Vec2 r = new Vec2();
    private final AABB aabb = new AABB();
    private final RayCastInput subInput = new RayCastInput();
    private final AABB combinedAABB = new AABB();
    private final Color3f color = new Color3f();
    private final Vec2 textVec = new Vec2();
    private DynamicTreeNode m_root = null;
    private int m_nodeCount = 0;
    private int m_nodeCapacity = 16;
    private DynamicTreeNode[] m_nodes = new DynamicTreeNode[16];

    static {
        $assertionsDisabled = !DynamicTree.class.desiredAssertionStatus();
    }

    public DynamicTree() {
        int i = this.m_nodeCapacity - 1;
        while (i >= 0) {
            this.m_nodes[i] = new DynamicTreeNode(i);
            this.m_nodes[i].parent = i == this.m_nodeCapacity + (-1) ? null : this.m_nodes[i + 1];
            this.m_nodes[i].height = -1;
            i--;
        }
        this.m_freeList = 0;
        this.m_insertionCount = 0;
        for (int i2 = 0; i2 < this.drawVecs.length; i2++) {
            this.drawVecs[i2] = new Vec2();
        }
    }

    @Override // org.jbox2d.collision.broadphase.BroadPhaseStrategy
    public final int createProxy(AABB aabb, Object userData) {
        DynamicTreeNode node = allocateNode();
        int proxyId = node.id;
        AABB nodeAABB = node.aabb;
        nodeAABB.lowerBound.x = aabb.lowerBound.x - 0.1f;
        nodeAABB.lowerBound.y = aabb.lowerBound.y - 0.1f;
        nodeAABB.upperBound.x = aabb.upperBound.x + 0.1f;
        nodeAABB.upperBound.y = aabb.upperBound.y + 0.1f;
        node.userData = userData;
        insertLeaf(proxyId);
        return proxyId;
    }

    @Override // org.jbox2d.collision.broadphase.BroadPhaseStrategy
    public final void destroyProxy(int proxyId) {
        if (!$assertionsDisabled && (proxyId < 0 || proxyId >= this.m_nodeCapacity)) {
            throw new AssertionError();
        }
        DynamicTreeNode node = this.m_nodes[proxyId];
        if (!$assertionsDisabled && !node.isLeaf()) {
            throw new AssertionError();
        }
        removeLeaf(node);
        freeNode(node);
    }

    @Override // org.jbox2d.collision.broadphase.BroadPhaseStrategy
    public final boolean moveProxy(int proxyId, AABB aabb, Vec2 displacement) {
        if (!$assertionsDisabled && (proxyId < 0 || proxyId >= this.m_nodeCapacity)) {
            throw new AssertionError();
        }
        DynamicTreeNode node = this.m_nodes[proxyId];
        if (!$assertionsDisabled && !node.isLeaf()) {
            throw new AssertionError();
        }
        AABB nodeAABB = node.aabb;
        if (nodeAABB.lowerBound.x > aabb.lowerBound.x && nodeAABB.lowerBound.y > aabb.lowerBound.y && aabb.upperBound.x > nodeAABB.upperBound.x && aabb.upperBound.y > nodeAABB.upperBound.y) {
            return false;
        }
        removeLeaf(node);
        Vec2 lowerBound = nodeAABB.lowerBound;
        Vec2 upperBound = nodeAABB.upperBound;
        lowerBound.x = aabb.lowerBound.x - 0.1f;
        lowerBound.y = aabb.lowerBound.y - 0.1f;
        upperBound.x = aabb.upperBound.x + 0.1f;
        upperBound.y = aabb.upperBound.y + 0.1f;
        float dx = displacement.x * 2.0f;
        float dy = displacement.y * 2.0f;
        if (dx < 0.0f) {
            lowerBound.x += dx;
        } else {
            upperBound.x += dx;
        }
        if (dy < 0.0f) {
            lowerBound.y += dy;
        } else {
            upperBound.y += dy;
        }
        insertLeaf(proxyId);
        return true;
    }

    @Override // org.jbox2d.collision.broadphase.BroadPhaseStrategy
    public final Object getUserData(int proxyId) {
        if ($assertionsDisabled || (proxyId >= 0 && proxyId < this.m_nodeCapacity)) {
            return this.m_nodes[proxyId].userData;
        }
        throw new AssertionError();
    }

    @Override // org.jbox2d.collision.broadphase.BroadPhaseStrategy
    public final AABB getFatAABB(int proxyId) {
        if ($assertionsDisabled || (proxyId >= 0 && proxyId < this.m_nodeCapacity)) {
            return this.m_nodes[proxyId].aabb;
        }
        throw new AssertionError();
    }

    @Override // org.jbox2d.collision.broadphase.BroadPhaseStrategy
    public final void query(TreeCallback callback, AABB aabb) {
        this.nodeStack.reset();
        this.nodeStack.push(this.m_root);
        while (this.nodeStack.getCount() > 0) {
            DynamicTreeNode node = this.nodeStack.pop();
            if (node != null && AABB.testOverlap(node.aabb, aabb)) {
                if (node.child1 == null) {
                    boolean proceed = callback.treeCallback(node.id);
                    if (!proceed) {
                        return;
                    }
                } else {
                    this.nodeStack.push(node.child1);
                    this.nodeStack.push(node.child2);
                }
            }
        }
    }

    @Override // org.jbox2d.collision.broadphase.BroadPhaseStrategy
    public void raycast(TreeRayCastCallback callback, RayCastInput input) {
        Vec2 p1 = input.p1;
        Vec2 p2 = input.p2;
        float p1x = p1.x;
        float p2x = p2.x;
        float p1y = p1.y;
        float p2y = p2.y;
        this.r.x = p2x - p1x;
        this.r.y = p2y - p1y;
        if (!$assertionsDisabled && (this.r.x * this.r.x) + (this.r.y * this.r.y) <= 0.0f) {
            throw new AssertionError();
        }
        this.r.normalize();
        float rx = this.r.x;
        float ry = this.r.y;
        float vx = (-1.0f) * ry;
        float vy = 1.0f * rx;
        float absVx = MathUtils.abs(vx);
        float absVy = MathUtils.abs(vy);
        float maxFraction = input.maxFraction;
        AABB segAABB = this.aabb;
        float tempx = ((p2x - p1x) * maxFraction) + p1x;
        float tempy = ((p2y - p1y) * maxFraction) + p1y;
        segAABB.lowerBound.x = p1x < tempx ? p1x : tempx;
        segAABB.lowerBound.y = p1y < tempy ? p1y : tempy;
        segAABB.upperBound.x = p1x > tempx ? p1x : tempx;
        segAABB.upperBound.y = p1y > tempy ? p1y : tempy;
        this.nodeStack.reset();
        this.nodeStack.push(this.m_root);
        while (this.nodeStack.getCount() > 0) {
            DynamicTreeNode node = this.nodeStack.pop();
            if (node != null) {
                AABB nodeAABB = node.aabb;
                if (AABB.testOverlap(nodeAABB, segAABB)) {
                    float cx = (nodeAABB.lowerBound.x + nodeAABB.upperBound.x) * 0.5f;
                    float cy = (nodeAABB.lowerBound.y + nodeAABB.upperBound.y) * 0.5f;
                    float hx = (nodeAABB.upperBound.x - nodeAABB.lowerBound.x) * 0.5f;
                    float hy = (nodeAABB.upperBound.y - nodeAABB.lowerBound.y) * 0.5f;
                    float separation = MathUtils.abs((vx * (p1x - cx)) + (vy * (p1y - cy))) - ((absVx * hx) + (absVy * hy));
                    if (separation > 0.0f) {
                        continue;
                    } else if (node.isLeaf()) {
                        this.subInput.p1.x = p1x;
                        this.subInput.p1.y = p1y;
                        this.subInput.p2.x = p2x;
                        this.subInput.p2.y = p2y;
                        this.subInput.maxFraction = maxFraction;
                        float value = callback.raycastCallback(this.subInput, node.id);
                        if (value == 0.0f) {
                            return;
                        }
                        if (value > 0.0f) {
                            maxFraction = value;
                            float tempx2 = ((p2x - p1x) * maxFraction) + p1x;
                            float tempy2 = ((p2y - p1y) * maxFraction) + p1y;
                            segAABB.lowerBound.x = p1x < tempx2 ? p1x : tempx2;
                            segAABB.lowerBound.y = p1y < tempy2 ? p1y : tempy2;
                            segAABB.upperBound.x = p1x > tempx2 ? p1x : tempx2;
                            segAABB.upperBound.y = p1y > tempy2 ? p1y : tempy2;
                        }
                    } else {
                        this.nodeStack.push(node.child1);
                        this.nodeStack.push(node.child2);
                    }
                } else {
                    continue;
                }
            }
        }
    }

    @Override // org.jbox2d.collision.broadphase.BroadPhaseStrategy
    public final int computeHeight() {
        return computeHeight(this.m_root);
    }

    private final int computeHeight(DynamicTreeNode node) {
        if (!$assertionsDisabled && (node.id < 0 || node.id >= this.m_nodeCapacity)) {
            throw new AssertionError();
        }
        if (node.isLeaf()) {
            return 0;
        }
        int height1 = computeHeight(node.child1);
        int height2 = computeHeight(node.child2);
        return MathUtils.max(height1, height2) + 1;
    }

    public void validate() {
        validateStructure(this.m_root);
        validateMetrics(this.m_root);
        int freeCount = 0;
        DynamicTreeNode freeNode = this.m_freeList != -1 ? this.m_nodes[this.m_freeList] : null;
        while (freeNode != null) {
            if (!$assertionsDisabled && (freeNode.id < 0 || freeNode.id >= this.m_nodeCapacity)) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && freeNode != this.m_nodes[freeNode.id]) {
                throw new AssertionError();
            }
            freeNode = freeNode.parent;
            freeCount++;
        }
        if (!$assertionsDisabled && getHeight() != computeHeight()) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.m_nodeCount + freeCount != this.m_nodeCapacity) {
            throw new AssertionError();
        }
    }

    @Override // org.jbox2d.collision.broadphase.BroadPhaseStrategy
    public int getHeight() {
        if (this.m_root == null) {
            return 0;
        }
        return this.m_root.height;
    }

    @Override // org.jbox2d.collision.broadphase.BroadPhaseStrategy
    public int getMaxBalance() {
        int maxBalance = 0;
        for (int i = 0; i < this.m_nodeCapacity; i++) {
            DynamicTreeNode node = this.m_nodes[i];
            if (node.height > 1) {
                if (!$assertionsDisabled && node.isLeaf()) {
                    throw new AssertionError();
                }
                DynamicTreeNode child1 = node.child1;
                DynamicTreeNode child2 = node.child2;
                int balance = MathUtils.abs(child2.height - child1.height);
                maxBalance = MathUtils.max(maxBalance, balance);
            }
        }
        return maxBalance;
    }

    @Override // org.jbox2d.collision.broadphase.BroadPhaseStrategy
    public float getAreaRatio() {
        if (this.m_root == null) {
            return 0.0f;
        }
        DynamicTreeNode root = this.m_root;
        float rootArea = root.aabb.getPerimeter();
        float totalArea = 0.0f;
        for (int i = 0; i < this.m_nodeCapacity; i++) {
            DynamicTreeNode node = this.m_nodes[i];
            if (node.height >= 0) {
                totalArea += node.aabb.getPerimeter();
            }
        }
        return totalArea / rootArea;
    }

    public void rebuildBottomUp() {
        int[] nodes = new int[this.m_nodeCount];
        int count = 0;
        for (int i = 0; i < this.m_nodeCapacity; i++) {
            if (this.m_nodes[i].height >= 0) {
                DynamicTreeNode node = this.m_nodes[i];
                if (node.isLeaf()) {
                    node.parent = null;
                    nodes[count] = i;
                    count++;
                } else {
                    freeNode(node);
                }
            }
        }
        AABB b = new AABB();
        while (count > 1) {
            float minCost = Float.MAX_VALUE;
            int iMin = -1;
            int jMin = -1;
            for (int i2 = 0; i2 < count; i2++) {
                AABB aabbi = this.m_nodes[nodes[i2]].aabb;
                for (int j = i2 + 1; j < count; j++) {
                    AABB aabbj = this.m_nodes[nodes[j]].aabb;
                    b.combine(aabbi, aabbj);
                    float cost = b.getPerimeter();
                    if (cost < minCost) {
                        iMin = i2;
                        jMin = j;
                        minCost = cost;
                    }
                }
            }
            int index1 = nodes[iMin];
            int index2 = nodes[jMin];
            DynamicTreeNode child1 = this.m_nodes[index1];
            DynamicTreeNode child2 = this.m_nodes[index2];
            DynamicTreeNode parent = allocateNode();
            parent.child1 = child1;
            parent.child2 = child2;
            parent.height = MathUtils.max(child1.height, child2.height) + 1;
            parent.aabb.combine(child1.aabb, child2.aabb);
            parent.parent = null;
            child1.parent = parent;
            child2.parent = parent;
            nodes[jMin] = nodes[count - 1];
            nodes[iMin] = parent.id;
            count--;
        }
        this.m_root = this.m_nodes[nodes[0]];
        validate();
    }

    private final DynamicTreeNode allocateNode() {
        if (this.m_freeList == -1) {
            if (!$assertionsDisabled && this.m_nodeCount != this.m_nodeCapacity) {
                throw new AssertionError();
            }
            DynamicTreeNode[] old = this.m_nodes;
            this.m_nodeCapacity *= 2;
            this.m_nodes = new DynamicTreeNode[this.m_nodeCapacity];
            System.arraycopy(old, 0, this.m_nodes, 0, old.length);
            int i = this.m_nodeCapacity - 1;
            while (i >= this.m_nodeCount) {
                this.m_nodes[i] = new DynamicTreeNode(i);
                this.m_nodes[i].parent = i == this.m_nodeCapacity + (-1) ? null : this.m_nodes[i + 1];
                this.m_nodes[i].height = -1;
                i--;
            }
            this.m_freeList = this.m_nodeCount;
        }
        int nodeId = this.m_freeList;
        DynamicTreeNode treeNode = this.m_nodes[nodeId];
        this.m_freeList = treeNode.parent != null ? treeNode.parent.id : -1;
        treeNode.parent = null;
        treeNode.child1 = null;
        treeNode.child2 = null;
        treeNode.height = 0;
        treeNode.userData = null;
        this.m_nodeCount++;
        return treeNode;
    }

    private final void freeNode(DynamicTreeNode node) {
        if (!$assertionsDisabled && node == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.m_nodeCount <= 0) {
            throw new AssertionError();
        }
        node.parent = this.m_freeList != -1 ? this.m_nodes[this.m_freeList] : null;
        node.height = -1;
        this.m_freeList = node.id;
        this.m_nodeCount--;
    }

    @Override // org.jbox2d.collision.broadphase.BroadPhaseStrategy
    public int getInsertionCount() {
        return this.m_insertionCount;
    }

    private final void insertLeaf(int leaf_index) {
        float cost1;
        float cost2;
        this.m_insertionCount++;
        DynamicTreeNode leaf = this.m_nodes[leaf_index];
        if (this.m_root == null) {
            this.m_root = leaf;
            this.m_root.parent = null;
            return;
        }
        AABB leafAABB = leaf.aabb;
        DynamicTreeNode index = this.m_root;
        while (index.child1 != null) {
            DynamicTreeNode node = index;
            DynamicTreeNode child1 = node.child1;
            DynamicTreeNode child2 = node.child2;
            float area = node.aabb.getPerimeter();
            this.combinedAABB.combine(node.aabb, leafAABB);
            float combinedArea = this.combinedAABB.getPerimeter();
            float cost = 2.0f * combinedArea;
            float inheritanceCost = 2.0f * (combinedArea - area);
            if (child1.isLeaf()) {
                this.combinedAABB.combine(leafAABB, child1.aabb);
                cost1 = this.combinedAABB.getPerimeter() + inheritanceCost;
            } else {
                this.combinedAABB.combine(leafAABB, child1.aabb);
                float oldArea = child1.aabb.getPerimeter();
                float newArea = this.combinedAABB.getPerimeter();
                cost1 = (newArea - oldArea) + inheritanceCost;
            }
            if (child2.isLeaf()) {
                this.combinedAABB.combine(leafAABB, child2.aabb);
                cost2 = this.combinedAABB.getPerimeter() + inheritanceCost;
            } else {
                this.combinedAABB.combine(leafAABB, child2.aabb);
                float oldArea2 = child2.aabb.getPerimeter();
                float newArea2 = this.combinedAABB.getPerimeter();
                cost2 = (newArea2 - oldArea2) + inheritanceCost;
            }
            if (cost < cost1 && cost < cost2) {
                break;
            } else if (cost1 < cost2) {
                index = child1;
            } else {
                index = child2;
            }
        }
        DynamicTreeNode sibling = index;
        DynamicTreeNode oldParent = this.m_nodes[sibling.id].parent;
        DynamicTreeNode newParent = allocateNode();
        newParent.parent = oldParent;
        newParent.userData = null;
        newParent.aabb.combine(leafAABB, sibling.aabb);
        newParent.height = sibling.height + 1;
        if (oldParent != null) {
            if (oldParent.child1 == sibling) {
                oldParent.child1 = newParent;
            } else {
                oldParent.child2 = newParent;
            }
            newParent.child1 = sibling;
            newParent.child2 = leaf;
            sibling.parent = newParent;
            leaf.parent = newParent;
        } else {
            newParent.child1 = sibling;
            newParent.child2 = leaf;
            sibling.parent = newParent;
            leaf.parent = newParent;
            this.m_root = newParent;
        }
        DynamicTreeNode index2 = leaf.parent;
        while (index2 != null) {
            DynamicTreeNode index3 = balance(index2);
            DynamicTreeNode child12 = index3.child1;
            DynamicTreeNode child22 = index3.child2;
            if (!$assertionsDisabled && child12 == null) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && child22 == null) {
                throw new AssertionError();
            }
            index3.height = MathUtils.max(child12.height, child22.height) + 1;
            index3.aabb.combine(child12.aabb, child22.aabb);
            index2 = index3.parent;
        }
    }

    private final void removeLeaf(DynamicTreeNode leaf) {
        DynamicTreeNode sibling;
        if (leaf == this.m_root) {
            this.m_root = null;
            return;
        }
        DynamicTreeNode parent = leaf.parent;
        DynamicTreeNode grandParent = parent.parent;
        if (parent.child1 == leaf) {
            sibling = parent.child2;
        } else {
            sibling = parent.child1;
        }
        if (grandParent != null) {
            if (grandParent.child1 == parent) {
                grandParent.child1 = sibling;
            } else {
                grandParent.child2 = sibling;
            }
            sibling.parent = grandParent;
            freeNode(parent);
            DynamicTreeNode index = grandParent;
            while (index != null) {
                DynamicTreeNode index2 = balance(index);
                DynamicTreeNode child1 = index2.child1;
                DynamicTreeNode child2 = index2.child2;
                index2.aabb.combine(child1.aabb, child2.aabb);
                index2.height = MathUtils.max(child1.height, child2.height) + 1;
                index = index2.parent;
            }
            return;
        }
        this.m_root = sibling;
        sibling.parent = null;
        freeNode(parent);
    }

    private DynamicTreeNode balance(DynamicTreeNode iA) {
        if (!$assertionsDisabled && iA == null) {
            throw new AssertionError();
        }
        if (!iA.isLeaf() && iA.height >= 2) {
            DynamicTreeNode iB = iA.child1;
            DynamicTreeNode iC = iA.child2;
            if (!$assertionsDisabled && (iB.id < 0 || iB.id >= this.m_nodeCapacity)) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && (iC.id < 0 || iC.id >= this.m_nodeCapacity)) {
                throw new AssertionError();
            }
            int balance = iC.height - iB.height;
            if (balance > 1) {
                DynamicTreeNode iF = iC.child1;
                DynamicTreeNode iG = iC.child2;
                if (!$assertionsDisabled && iF == null) {
                    throw new AssertionError();
                }
                if (!$assertionsDisabled && iG == null) {
                    throw new AssertionError();
                }
                if (!$assertionsDisabled && (iF.id < 0 || iF.id >= this.m_nodeCapacity)) {
                    throw new AssertionError();
                }
                if (!$assertionsDisabled && (iG.id < 0 || iG.id >= this.m_nodeCapacity)) {
                    throw new AssertionError();
                }
                iC.child1 = iA;
                iC.parent = iA.parent;
                iA.parent = iC;
                if (iC.parent != null) {
                    if (iC.parent.child1 == iA) {
                        iC.parent.child1 = iC;
                    } else {
                        if (!$assertionsDisabled && iC.parent.child2 != iA) {
                            throw new AssertionError();
                        }
                        iC.parent.child2 = iC;
                    }
                } else {
                    this.m_root = iC;
                }
                if (iF.height > iG.height) {
                    iC.child2 = iF;
                    iA.child2 = iG;
                    iG.parent = iA;
                    iA.aabb.combine(iB.aabb, iG.aabb);
                    iC.aabb.combine(iA.aabb, iF.aabb);
                    iA.height = MathUtils.max(iB.height, iG.height) + 1;
                    iC.height = MathUtils.max(iA.height, iF.height) + 1;
                } else {
                    iC.child2 = iG;
                    iA.child2 = iF;
                    iF.parent = iA;
                    iA.aabb.combine(iB.aabb, iF.aabb);
                    iC.aabb.combine(iA.aabb, iG.aabb);
                    iA.height = MathUtils.max(iB.height, iF.height) + 1;
                    iC.height = MathUtils.max(iA.height, iG.height) + 1;
                }
                return iC;
            }
            if (balance < -1) {
                DynamicTreeNode iD = iB.child1;
                DynamicTreeNode iE = iB.child2;
                if (!$assertionsDisabled && (iD.id < 0 || iD.id >= this.m_nodeCapacity)) {
                    throw new AssertionError();
                }
                if (!$assertionsDisabled && (iE.id < 0 || iE.id >= this.m_nodeCapacity)) {
                    throw new AssertionError();
                }
                iB.child1 = iA;
                iB.parent = iA.parent;
                iA.parent = iB;
                if (iB.parent != null) {
                    if (iB.parent.child1 == iA) {
                        iB.parent.child1 = iB;
                    } else {
                        if (!$assertionsDisabled && iB.parent.child2 != iA) {
                            throw new AssertionError();
                        }
                        iB.parent.child2 = iB;
                    }
                } else {
                    this.m_root = iB;
                }
                if (iD.height > iE.height) {
                    iB.child2 = iD;
                    iA.child1 = iE;
                    iE.parent = iA;
                    iA.aabb.combine(iC.aabb, iE.aabb);
                    iB.aabb.combine(iA.aabb, iD.aabb);
                    iA.height = MathUtils.max(iC.height, iE.height) + 1;
                    iB.height = MathUtils.max(iA.height, iD.height) + 1;
                } else {
                    iB.child2 = iE;
                    iA.child1 = iD;
                    iD.parent = iA;
                    iA.aabb.combine(iC.aabb, iD.aabb);
                    iB.aabb.combine(iA.aabb, iE.aabb);
                    iA.height = MathUtils.max(iC.height, iD.height) + 1;
                    iB.height = MathUtils.max(iA.height, iE.height) + 1;
                }
                return iB;
            }
            return iA;
        }
        return iA;
    }

    private void validateStructure(DynamicTreeNode node) {
        if (node != null) {
            if (!$assertionsDisabled && node != this.m_nodes[node.id]) {
                throw new AssertionError();
            }
            if (node == this.m_root && !$assertionsDisabled && node.parent != null) {
                throw new AssertionError();
            }
            DynamicTreeNode child1 = node.child1;
            DynamicTreeNode child2 = node.child2;
            if (node.isLeaf()) {
                if (!$assertionsDisabled && child1 != null) {
                    throw new AssertionError();
                }
                if (!$assertionsDisabled && child2 != null) {
                    throw new AssertionError();
                }
                if (!$assertionsDisabled && node.height != 0) {
                    throw new AssertionError();
                }
                return;
            }
            if (!$assertionsDisabled && (child1 == null || child1.id < 0 || child1.id >= this.m_nodeCapacity)) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && (child2 == null || child2.id < 0 || child2.id >= this.m_nodeCapacity)) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && child1.parent != node) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && child2.parent != node) {
                throw new AssertionError();
            }
            validateStructure(child1);
            validateStructure(child2);
        }
    }

    private void validateMetrics(DynamicTreeNode node) {
        if (node != null) {
            DynamicTreeNode child1 = node.child1;
            DynamicTreeNode child2 = node.child2;
            if (node.isLeaf()) {
                if (!$assertionsDisabled && child1 != null) {
                    throw new AssertionError();
                }
                if (!$assertionsDisabled && child2 != null) {
                    throw new AssertionError();
                }
                if (!$assertionsDisabled && node.height != 0) {
                    throw new AssertionError();
                }
                return;
            }
            if (!$assertionsDisabled && (child1 == null || child1.id < 0 || child1.id >= this.m_nodeCapacity)) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && (child2 == null || child2.id < 0 || child2.id >= this.m_nodeCapacity)) {
                throw new AssertionError();
            }
            int height1 = child1.height;
            int height2 = child2.height;
            int height = MathUtils.max(height1, height2) + 1;
            if (!$assertionsDisabled && node.height != height) {
                throw new AssertionError();
            }
            AABB aabb = new AABB();
            aabb.combine(child1.aabb, child2.aabb);
            if (!$assertionsDisabled && !aabb.lowerBound.equals(node.aabb.lowerBound)) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && !aabb.upperBound.equals(node.aabb.upperBound)) {
                throw new AssertionError();
            }
            validateMetrics(child1);
            validateMetrics(child2);
        }
    }

    @Override // org.jbox2d.collision.broadphase.BroadPhaseStrategy
    public void drawTree(DebugDraw argDraw) {
        if (this.m_root != null) {
            int height = computeHeight();
            drawTree(argDraw, this.m_root, 0, height);
        }
    }

    public void drawTree(DebugDraw argDraw, DynamicTreeNode node, int spot, int height) {
        node.aabb.getVertices(this.drawVecs);
        this.color.set(1.0f, ((height - spot) * 1.0f) / height, ((height - spot) * 1.0f) / height);
        argDraw.drawPolygon(this.drawVecs, 4, this.color);
        argDraw.getViewportTranform().getWorldToScreen(node.aabb.upperBound, this.textVec);
        argDraw.drawString(this.textVec.x, this.textVec.y, node.id + "-" + (spot + 1) + "/" + height, this.color);
        if (node.child1 != null) {
            drawTree(argDraw, node.child1, spot + 1, height);
        }
        if (node.child2 != null) {
            drawTree(argDraw, node.child2, spot + 1, height);
        }
    }

    public class TreeNodeStack {
        static final /* synthetic */ boolean $assertionsDisabled;
        private int position = 0;
        private int size;
        private DynamicTreeNode[] stack;

        static {
            $assertionsDisabled = !DynamicTree.class.desiredAssertionStatus();
        }

        public TreeNodeStack(int initialSize) {
            this.stack = new DynamicTreeNode[initialSize];
            this.size = initialSize;
        }

        public void reset() {
            this.position = 0;
        }

        public DynamicTreeNode pop() {
            if (!$assertionsDisabled && this.position <= 0) {
                throw new AssertionError();
            }
            DynamicTreeNode[] dynamicTreeNodeArr = this.stack;
            int i = this.position - 1;
            this.position = i;
            return dynamicTreeNodeArr[i];
        }

        public void push(DynamicTreeNode i) {
            if (this.position == this.size) {
                DynamicTreeNode[] old = this.stack;
                this.stack = new DynamicTreeNode[this.size * 2];
                this.size = this.stack.length;
                System.arraycopy(old, 0, this.stack, 0, old.length);
            }
            DynamicTreeNode[] dynamicTreeNodeArr = this.stack;
            int i2 = this.position;
            this.position = i2 + 1;
            dynamicTreeNodeArr[i2] = i;
        }

        public int getCount() {
            return this.position;
        }
    }
}
