package org.jbox2d.dynamics;

import org.jbox2d.callbacks.RayCastCallback;
import org.jbox2d.callbacks.TreeRayCastCallback;
import org.jbox2d.collision.RayCastInput;
import org.jbox2d.collision.RayCastOutput;
import org.jbox2d.collision.broadphase.BroadPhase;
import org.jbox2d.common.Vec2;

/* JADX INFO: compiled from: World.java */
/* JADX INFO: loaded from: classes2.dex */
class WorldRayCastWrapper implements TreeRayCastCallback {
    BroadPhase broadPhase;
    RayCastCallback callback;
    private final RayCastOutput output = new RayCastOutput();
    private final Vec2 temp = new Vec2();
    private final Vec2 point = new Vec2();

    WorldRayCastWrapper() {
    }

    @Override // org.jbox2d.callbacks.TreeRayCastCallback
    public float raycastCallback(RayCastInput input, int nodeId) {
        Object userData = this.broadPhase.getUserData(nodeId);
        FixtureProxy proxy = (FixtureProxy) userData;
        Fixture fixture = proxy.fixture;
        int index = proxy.childIndex;
        boolean hit = fixture.raycast(this.output, input, index);
        if (!hit) {
            return input.maxFraction;
        }
        float fraction = this.output.fraction;
        this.temp.set(input.p2).mulLocal(fraction);
        this.point.set(input.p1).mulLocal(1.0f - fraction).addLocal(this.temp);
        return this.callback.reportFixture(fixture, this.point, this.output.normal, fraction);
    }
}
