package org.jbox2d.dynamics;

import org.jbox2d.callbacks.QueryCallback;
import org.jbox2d.callbacks.TreeCallback;
import org.jbox2d.collision.broadphase.BroadPhase;

/* JADX INFO: compiled from: World.java */
/* JADX INFO: loaded from: classes2.dex */
class WorldQueryWrapper implements TreeCallback {
    BroadPhase broadPhase;
    QueryCallback callback;

    WorldQueryWrapper() {
    }

    @Override // org.jbox2d.callbacks.TreeCallback
    public boolean treeCallback(int nodeId) {
        FixtureProxy proxy = (FixtureProxy) this.broadPhase.getUserData(nodeId);
        return this.callback.reportFixture(proxy.fixture);
    }
}
