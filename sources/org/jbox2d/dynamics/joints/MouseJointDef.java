package org.jbox2d.dynamics.joints;

import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public class MouseJointDef extends JointDef {
    public float dampingRatio;
    public float frequencyHz;
    public float maxForce;
    public final Vec2 target = new Vec2();

    public MouseJointDef() {
        this.type = JointType.MOUSE;
        this.target.set(0.0f, 0.0f);
        this.maxForce = 0.0f;
        this.frequencyHz = 5.0f;
        this.dampingRatio = 0.7f;
    }
}
