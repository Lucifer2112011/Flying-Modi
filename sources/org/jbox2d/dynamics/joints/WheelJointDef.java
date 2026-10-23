package org.jbox2d.dynamics.joints;

import org.jbox2d.common.Vec2;
import org.jbox2d.dynamics.Body;

/* JADX INFO: loaded from: classes2.dex */
public class WheelJointDef extends JointDef {
    public float dampingRatio;
    public boolean enableMotor;
    public float frequencyHz;
    public final Vec2 localAnchorA = new Vec2();
    public final Vec2 localAnchorB = new Vec2();
    public final Vec2 localAxisA = new Vec2();
    public float maxMotorTorque;
    public float motorSpeed;

    public WheelJointDef() {
        this.type = JointType.WHEEL;
        this.localAxisA.set(1.0f, 0.0f);
        this.enableMotor = false;
        this.maxMotorTorque = 0.0f;
        this.motorSpeed = 0.0f;
    }

    public void initialize(Body b1, Body b2, Vec2 anchor, Vec2 axis) {
        this.bodyA = b1;
        this.bodyB = b2;
        b1.getLocalPointToOut(anchor, this.localAnchorA);
        b2.getLocalPointToOut(anchor, this.localAnchorB);
        this.bodyA.getLocalVectorToOut(axis, this.localAxisA);
    }
}
