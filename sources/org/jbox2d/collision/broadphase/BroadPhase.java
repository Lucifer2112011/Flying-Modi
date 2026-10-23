package org.jbox2d.collision.broadphase;

import java.util.Arrays;
import org.jbox2d.callbacks.DebugDraw;
import org.jbox2d.callbacks.PairCallback;
import org.jbox2d.callbacks.TreeCallback;
import org.jbox2d.callbacks.TreeRayCastCallback;
import org.jbox2d.collision.AABB;
import org.jbox2d.collision.RayCastInput;
import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public class BroadPhase implements TreeCallback {
    public static final int NULL_PROXY = -1;
    private int[] m_moveBuffer;
    private int m_moveCapacity;
    private int m_moveCount;
    private int m_queryProxyId;
    private final BroadPhaseStrategy m_tree;
    private int m_proxyCount = 0;
    private int m_pairCapacity = 16;
    private int m_pairCount = 0;
    private Pair[] m_pairBuffer = new Pair[this.m_pairCapacity];

    public BroadPhase(BroadPhaseStrategy strategy) {
        for (int i = 0; i < this.m_pairCapacity; i++) {
            this.m_pairBuffer[i] = new Pair();
        }
        this.m_moveCapacity = 16;
        this.m_moveCount = 0;
        this.m_moveBuffer = new int[this.m_moveCapacity];
        this.m_tree = strategy;
        this.m_queryProxyId = -1;
    }

    public final int createProxy(AABB aabb, Object userData) {
        int proxyId = this.m_tree.createProxy(aabb, userData);
        this.m_proxyCount++;
        bufferMove(proxyId);
        return proxyId;
    }

    public final void destroyProxy(int proxyId) {
        unbufferMove(proxyId);
        this.m_proxyCount--;
        this.m_tree.destroyProxy(proxyId);
    }

    public final void moveProxy(int proxyId, AABB aabb, Vec2 displacement) {
        boolean buffer = this.m_tree.moveProxy(proxyId, aabb, displacement);
        if (buffer) {
            bufferMove(proxyId);
        }
    }

    public void touchProxy(int proxyId) {
        bufferMove(proxyId);
    }

    public Object getUserData(int proxyId) {
        return this.m_tree.getUserData(proxyId);
    }

    public AABB getFatAABB(int proxyId) {
        return this.m_tree.getFatAABB(proxyId);
    }

    public boolean testOverlap(int proxyIdA, int proxyIdB) {
        AABB a = this.m_tree.getFatAABB(proxyIdA);
        AABB b = this.m_tree.getFatAABB(proxyIdB);
        return b.lowerBound.x - a.upperBound.x <= 0.0f && b.lowerBound.y - a.upperBound.y <= 0.0f && a.lowerBound.x - b.upperBound.x <= 0.0f && a.lowerBound.y - b.upperBound.y <= 0.0f;
    }

    public final int getProxyCount() {
        return this.m_proxyCount;
    }

    public void drawTree(DebugDraw argDraw) {
        this.m_tree.drawTree(argDraw);
    }

    public final void updatePairs(PairCallback callback) {
        Pair pair;
        this.m_pairCount = 0;
        for (int i = 0; i < this.m_moveCount; i++) {
            this.m_queryProxyId = this.m_moveBuffer[i];
            if (this.m_queryProxyId != -1) {
                AABB fatAABB = this.m_tree.getFatAABB(this.m_queryProxyId);
                this.m_tree.query(this, fatAABB);
            }
        }
        this.m_moveCount = 0;
        Arrays.sort(this.m_pairBuffer, 0, this.m_pairCount);
        int i2 = 0;
        while (i2 < this.m_pairCount) {
            Pair primaryPair = this.m_pairBuffer[i2];
            Object userDataA = this.m_tree.getUserData(primaryPair.proxyIdA);
            Object userDataB = this.m_tree.getUserData(primaryPair.proxyIdB);
            callback.addPair(userDataA, userDataB);
            do {
                i2++;
                if (i2 < this.m_pairCount) {
                    pair = this.m_pairBuffer[i2];
                    if (pair.proxyIdA == primaryPair.proxyIdA) {
                    }
                }
            } while (pair.proxyIdB == primaryPair.proxyIdB);
        }
    }

    public final void query(TreeCallback callback, AABB aabb) {
        this.m_tree.query(callback, aabb);
    }

    public final void raycast(TreeRayCastCallback callback, RayCastInput input) {
        this.m_tree.raycast(callback, input);
    }

    public final int getTreeHeight() {
        return this.m_tree.computeHeight();
    }

    public int getTreeBalance() {
        return this.m_tree.getMaxBalance();
    }

    public float getTreeQuality() {
        return this.m_tree.getAreaRatio();
    }

    protected final void bufferMove(int proxyId) {
        if (this.m_moveCount == this.m_moveCapacity) {
            int[] old = this.m_moveBuffer;
            this.m_moveCapacity *= 2;
            this.m_moveBuffer = new int[this.m_moveCapacity];
            System.arraycopy(old, 0, this.m_moveBuffer, 0, old.length);
        }
        this.m_moveBuffer[this.m_moveCount] = proxyId;
        this.m_moveCount++;
    }

    protected final void unbufferMove(int proxyId) {
        for (int i = 0; i < this.m_moveCount; i++) {
            if (this.m_moveBuffer[i] == proxyId) {
                this.m_moveBuffer[i] = -1;
            }
        }
    }

    @Override // org.jbox2d.callbacks.TreeCallback
    public final boolean treeCallback(int proxyId) {
        if (proxyId != this.m_queryProxyId) {
            if (this.m_pairCount == this.m_pairCapacity) {
                Pair[] oldBuffer = this.m_pairBuffer;
                this.m_pairCapacity *= 2;
                this.m_pairBuffer = new Pair[this.m_pairCapacity];
                System.arraycopy(oldBuffer, 0, this.m_pairBuffer, 0, oldBuffer.length);
                for (int i = oldBuffer.length; i < this.m_pairCapacity; i++) {
                    this.m_pairBuffer[i] = new Pair();
                }
            }
            if (proxyId < this.m_queryProxyId) {
                this.m_pairBuffer[this.m_pairCount].proxyIdA = proxyId;
                this.m_pairBuffer[this.m_pairCount].proxyIdB = this.m_queryProxyId;
            } else {
                this.m_pairBuffer[this.m_pairCount].proxyIdA = this.m_queryProxyId;
                this.m_pairBuffer[this.m_pairCount].proxyIdB = proxyId;
            }
            this.m_pairCount++;
        }
        return true;
    }
}
