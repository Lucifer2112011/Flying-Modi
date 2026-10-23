package org.jbox2d.dynamics.joints;

import org.jbox2d.common.Vec2;
import org.jbox2d.dynamics.Body;

/* JADX INFO: loaded from: classes2.dex */
public class FrictionJointDef extends JointDef {
    public final Vec2 localAnchorA;
    public final Vec2 localAnchorB;
    public float maxForce;
    public float maxTorque;

    public FrictionJointDef() {
        this.type = JointType.FRICTION;
        this.localAnchorA = new Vec2();
        this.localAnchorB = new Vec2();
        this.maxForce = 0.0f;
        this.maxTorque = 0.0f;
    }

    public void initialize(Body bA, Body bB, Vec2 anchor) {
        this.bodyA = bA;
        this.bodyB = bB;
        bA.getLocalPointToOut(anchor, this.localAnchorA);
        bB.getLocalPointToOut(anchor, this.localAnchorB);
    }
}
