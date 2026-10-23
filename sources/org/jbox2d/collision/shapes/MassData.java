package org.jbox2d.collision.shapes;

import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public class MassData {
    public float I;
    public final Vec2 center;
    public float mass;

    public MassData() {
        this.I = 0.0f;
        this.mass = 0.0f;
        this.center = new Vec2();
    }

    public MassData(MassData md) {
        this.mass = md.mass;
        this.I = md.I;
        this.center = md.center.clone();
    }

    public void set(MassData md) {
        this.mass = md.mass;
        this.I = md.I;
        this.center.set(md.center);
    }

    public MassData clone() {
        return new MassData(this);
    }
}
