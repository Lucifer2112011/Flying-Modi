package org.jbox2d.dynamics.joints;

import java.util.ArrayList;
import org.jbox2d.dynamics.Body;

/* JADX INFO: loaded from: classes2.dex */
public class ConstantVolumeJointDef extends JointDef {
    ArrayList<Body> bodies;
    public float dampingRatio;
    public float frequencyHz;
    ArrayList<DistanceJoint> joints;

    public ConstantVolumeJointDef() {
        this.type = JointType.CONSTANT_VOLUME;
        this.bodies = new ArrayList<>();
        this.joints = null;
        this.collideConnected = false;
        this.frequencyHz = 0.0f;
        this.dampingRatio = 0.0f;
    }

    public void addBody(Body argBody) {
        this.bodies.add(argBody);
        if (this.bodies.size() == 1) {
            this.bodyA = argBody;
        }
        if (this.bodies.size() == 2) {
            this.bodyB = argBody;
        }
    }

    public void addBodyAndJoint(Body argBody, DistanceJoint argJoint) {
        addBody(argBody);
        if (this.joints == null) {
            this.joints = new ArrayList<>();
        }
        this.joints.add(argJoint);
    }
}
