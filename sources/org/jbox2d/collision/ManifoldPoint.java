package org.jbox2d.collision;

import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public class ManifoldPoint {
    public final ContactID id;
    public final Vec2 localPoint;
    public float normalImpulse;
    public float tangentImpulse;

    public ManifoldPoint() {
        this.localPoint = new Vec2();
        this.tangentImpulse = 0.0f;
        this.normalImpulse = 0.0f;
        this.id = new ContactID();
    }

    public ManifoldPoint(ManifoldPoint cp) {
        this.localPoint = cp.localPoint.clone();
        this.normalImpulse = cp.normalImpulse;
        this.tangentImpulse = cp.tangentImpulse;
        this.id = new ContactID(cp.id);
    }

    public void set(ManifoldPoint cp) {
        this.localPoint.set(cp.localPoint);
        this.normalImpulse = cp.normalImpulse;
        this.tangentImpulse = cp.tangentImpulse;
        this.id.set(cp.id);
    }
}
