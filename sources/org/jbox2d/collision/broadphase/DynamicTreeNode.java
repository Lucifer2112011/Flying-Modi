package org.jbox2d.collision.broadphase;

import org.jbox2d.collision.AABB;

/* JADX INFO: loaded from: classes2.dex */
public class DynamicTreeNode {
    public final AABB aabb = new AABB();
    protected DynamicTreeNode child1;
    protected DynamicTreeNode child2;
    protected int height;
    protected final int id;
    protected boolean leaf;
    protected DynamicTreeNode parent;
    public Object userData;

    public final boolean isLeaf() {
        return this.child1 == null;
    }

    public Object getUserData() {
        return this.userData;
    }

    public void setUserData(Object argData) {
        this.userData = argData;
    }

    protected DynamicTreeNode(int id) {
        this.id = id;
    }
}
