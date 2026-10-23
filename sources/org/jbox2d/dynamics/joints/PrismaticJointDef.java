package org.jbox2d.dynamics.joints;

import org.jbox2d.common.Vec2;
import org.jbox2d.dynamics.Body;

/* JADX INFO: loaded from: classes2.dex */
public class PrismaticJointDef extends JointDef {
    public boolean enableLimit;
    public boolean enableMotor;
    public final Vec2 localAnchorA;
    public final Vec2 localAnchorB;
    public final Vec2 localAxisA;
    public float lowerTranslation;
    public float maxMotorForce;
    public float motorSpeed;
    public float referenceAngle;
    public float upperTranslation;

    public PrismaticJointDef() {
        this.type = JointType.PRISMATIC;
        this.localAnchorA = new Vec2();
        this.localAnchorB = new Vec2();
        this.localAxisA = new Vec2(1.0f, 0.0f);
        this.referenceAngle = 0.0f;
        this.enableLimit = false;
        this.lowerTranslation = 0.0f;
        this.upperTranslation = 0.0f;
        this.enableMotor = false;
        this.maxMotorForce = 0.0f;
        this.motorSpeed = 0.0f;
    }

    public void initialize(Body b1, Body b2, Vec2 anchor, Vec2 axis) {
        this.bodyA = b1;
        this.bodyB = b2;
        this.bodyA.getLocalPointToOut(anchor, this.localAnchorA);
        this.bodyB.getLocalPointToOut(anchor, this.localAnchorB);
        this.bodyA.getLocalVectorToOut(axis, this.localAxisA);
        this.referenceAngle = this.bodyB.getAngle() - this.bodyA.getAngle();
    }
}
