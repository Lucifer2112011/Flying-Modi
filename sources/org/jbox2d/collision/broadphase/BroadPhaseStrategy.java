package org.jbox2d.collision.broadphase;

import org.jbox2d.callbacks.DebugDraw;
import org.jbox2d.callbacks.TreeCallback;
import org.jbox2d.callbacks.TreeRayCastCallback;
import org.jbox2d.collision.AABB;
import org.jbox2d.collision.RayCastInput;
import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public interface BroadPhaseStrategy {
    int computeHeight();

    int createProxy(AABB aabb, Object obj);

    void destroyProxy(int i);

    void drawTree(DebugDraw debugDraw);

    float getAreaRatio();

    AABB getFatAABB(int i);

    int getHeight();

    int getInsertionCount();

    int getMaxBalance();

    Object getUserData(int i);

    boolean moveProxy(int i, AABB aabb, Vec2 vec2);

    void query(TreeCallback treeCallback, AABB aabb);

    void raycast(TreeRayCastCallback treeRayCastCallback, RayCastInput rayCastInput);
}
