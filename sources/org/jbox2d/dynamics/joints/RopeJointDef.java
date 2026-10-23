package org.jbox2d.dynamics.joints;

import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public class RopeJointDef extends JointDef {
    public final Vec2 localAnchorA = new Vec2();
    public final Vec2 localAnchorB = new Vec2();
    public float maxLength;

    public RopeJointDef() {
        this.type = JointType.ROPE;
        this.localAnchorA.set(-1.0f, 0.0f);
        this.localAnchorB.set(1.0f, 0.0f);
    }
}
