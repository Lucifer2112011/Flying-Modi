package org.jbox2d.dynamics.joints;

import org.jbox2d.common.Vec2;
import org.jbox2d.dynamics.Body;

/* JADX INFO: loaded from: classes2.dex */
public class WeldJointDef extends JointDef {
    public float dampingRatio;
    public float frequencyHz;
    public final Vec2 localAnchorA;
    public final Vec2 localAnchorB;
    public float referenceAngle;

    public WeldJointDef() {
        this.type = JointType.WELD;
        this.localAnchorA = new Vec2();
        this.localAnchorB = new Vec2();
        this.referenceAngle = 0.0f;
    }

    public void initialize(Body bA, Body bB, Vec2 anchor) {
        this.bodyA = bA;
        this.bodyB = bB;
        this.bodyA.getLocalPointToOut(anchor, this.localAnchorA);
        this.bodyB.getLocalPointToOut(anchor, this.localAnchorB);
        this.referenceAngle = this.bodyB.getAngle() - this.bodyA.getAngle();
    }
}
