package org.jbox2d.dynamics.joints;

import org.jbox2d.common.Vec2;
import org.jbox2d.dynamics.Body;

/* JADX INFO: loaded from: classes2.dex */
public class DistanceJointDef extends JointDef {
    public float dampingRatio;
    public float frequencyHz;
    public float length;
    public final Vec2 localAnchorA;
    public final Vec2 localAnchorB;

    public DistanceJointDef() {
        this.type = JointType.DISTANCE;
        this.localAnchorA = new Vec2(0.0f, 0.0f);
        this.localAnchorB = new Vec2(0.0f, 0.0f);
        this.length = 1.0f;
        this.frequencyHz = 0.0f;
        this.dampingRatio = 0.0f;
    }

    public void initialize(Body b1, Body b2, Vec2 anchor1, Vec2 anchor2) {
        this.bodyA = b1;
        this.bodyB = b2;
        this.localAnchorA.set(this.bodyA.getLocalPoint(anchor1));
        this.localAnchorB.set(this.bodyB.getLocalPoint(anchor2));
        Vec2 d = anchor2.sub(anchor1);
        this.length = d.length();
    }
}
