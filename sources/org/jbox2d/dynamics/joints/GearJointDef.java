package org.jbox2d.dynamics.joints;

/* JADX INFO: loaded from: classes2.dex */
public class GearJointDef extends JointDef {
    public Joint joint1;
    public Joint joint2;
    public float ratio;

    public GearJointDef() {
        this.type = JointType.GEAR;
        this.joint1 = null;
        this.joint2 = null;
    }
}
