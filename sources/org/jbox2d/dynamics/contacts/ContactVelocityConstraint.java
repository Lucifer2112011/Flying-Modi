package org.jbox2d.dynamics.contacts;

import org.jbox2d.common.Mat22;
import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public class ContactVelocityConstraint {
    public int contactIndex;
    public float friction;
    public int indexA;
    public int indexB;
    public float invIA;
    public float invIB;
    public float invMassA;
    public float invMassB;
    public int pointCount;
    public float restitution;
    public float tangentSpeed;
    public VelocityConstraintPoint[] points = new VelocityConstraintPoint[2];
    public final Vec2 normal = new Vec2();
    public final Mat22 normalMass = new Mat22();
    public final Mat22 K = new Mat22();

    public static class VelocityConstraintPoint {
        public float normalImpulse;
        public float normalMass;
        public final Vec2 rA = new Vec2();
        public final Vec2 rB = new Vec2();
        public float tangentImpulse;
        public float tangentMass;
        public float velocityBias;
    }

    public ContactVelocityConstraint() {
        for (int i = 0; i < this.points.length; i++) {
            this.points[i] = new VelocityConstraintPoint();
        }
    }
}
