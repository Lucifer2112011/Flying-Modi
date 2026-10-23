package org.jbox2d.dynamics.contacts;

import org.jbox2d.collision.Manifold;
import org.jbox2d.collision.ManifoldPoint;
import org.jbox2d.collision.WorldManifold;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.Mat22;
import org.jbox2d.common.MathUtils;
import org.jbox2d.common.Rot;
import org.jbox2d.common.Transform;
import org.jbox2d.common.Vec2;
import org.jbox2d.dynamics.Body;
import org.jbox2d.dynamics.Fixture;
import org.jbox2d.dynamics.TimeStep;
import org.jbox2d.dynamics.contacts.ContactVelocityConstraint;

/* JADX INFO: loaded from: classes2.dex */
public class ContactSolver {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final boolean DEBUG_SOLVER = false;
    public static final int INITIAL_NUM_CONSTRAINTS = 256;
    public static final float k_errorTol = 0.001f;
    public static final float k_maxConditionNumber = 100.0f;
    public Contact[] m_contacts;
    public int m_count;
    public Position[] m_positions;
    public TimeStep m_step;
    public Velocity[] m_velocities;
    private final Vec2 tangent = new Vec2();
    private final Vec2 temp1 = new Vec2();
    private final Vec2 temp2 = new Vec2();
    private final Vec2 P = new Vec2();
    private final Vec2 temp = new Vec2();
    private final Transform xfA = new Transform();
    private final Transform xfB = new Transform();
    private final WorldManifold worldManifold = new WorldManifold();
    private final Vec2 a = new Vec2();
    private final Vec2 b = new Vec2();
    private final Vec2 dv1 = new Vec2();
    private final Vec2 dv2 = new Vec2();
    private final Vec2 x = new Vec2();
    private final Vec2 d = new Vec2();
    private final Vec2 P1 = new Vec2();
    private final Vec2 P2 = new Vec2();
    private final PositionSolverManifold psolver = new PositionSolverManifold();
    private final Vec2 rA = new Vec2();
    private final Vec2 rB = new Vec2();
    public ContactPositionConstraint[] m_positionConstraints = new ContactPositionConstraint[INITIAL_NUM_CONSTRAINTS];
    public ContactVelocityConstraint[] m_velocityConstraints = new ContactVelocityConstraint[INITIAL_NUM_CONSTRAINTS];

    public static class ContactSolverDef {
        public Contact[] contacts;
        public int count;
        public Position[] positions;
        public TimeStep step;
        public Velocity[] velocities;
    }

    static {
        $assertionsDisabled = !ContactSolver.class.desiredAssertionStatus();
    }

    public ContactSolver() {
        for (int i = 0; i < 256; i++) {
            this.m_positionConstraints[i] = new ContactPositionConstraint();
            this.m_velocityConstraints[i] = new ContactVelocityConstraint();
        }
    }

    public final void init(ContactSolverDef def) {
        this.m_step = def.step;
        this.m_count = def.count;
        if (this.m_positionConstraints.length < this.m_count) {
            ContactPositionConstraint[] old = this.m_positionConstraints;
            this.m_positionConstraints = new ContactPositionConstraint[MathUtils.max(old.length * 2, this.m_count)];
            System.arraycopy(old, 0, this.m_positionConstraints, 0, old.length);
            for (int i = old.length; i < this.m_positionConstraints.length; i++) {
                this.m_positionConstraints[i] = new ContactPositionConstraint();
            }
        }
        if (this.m_velocityConstraints.length < this.m_count) {
            ContactVelocityConstraint[] old2 = this.m_velocityConstraints;
            this.m_velocityConstraints = new ContactVelocityConstraint[MathUtils.max(old2.length * 2, this.m_count)];
            System.arraycopy(old2, 0, this.m_velocityConstraints, 0, old2.length);
            for (int i2 = old2.length; i2 < this.m_velocityConstraints.length; i2++) {
                this.m_velocityConstraints[i2] = new ContactVelocityConstraint();
            }
        }
        this.m_positions = def.positions;
        this.m_velocities = def.velocities;
        this.m_contacts = def.contacts;
        for (int i3 = 0; i3 < this.m_count; i3++) {
            Contact contact = this.m_contacts[i3];
            Fixture fixtureA = contact.m_fixtureA;
            Fixture fixtureB = contact.m_fixtureB;
            Shape shapeA = fixtureA.getShape();
            Shape shapeB = fixtureB.getShape();
            float radiusA = shapeA.m_radius;
            float radiusB = shapeB.m_radius;
            Body bodyA = fixtureA.getBody();
            Body bodyB = fixtureB.getBody();
            Manifold manifold = contact.getManifold();
            int pointCount = manifold.pointCount;
            if (!$assertionsDisabled && pointCount <= 0) {
                throw new AssertionError();
            }
            ContactVelocityConstraint vc = this.m_velocityConstraints[i3];
            vc.friction = contact.m_friction;
            vc.restitution = contact.m_restitution;
            vc.tangentSpeed = contact.m_tangentSpeed;
            vc.indexA = bodyA.m_islandIndex;
            vc.indexB = bodyB.m_islandIndex;
            vc.invMassA = bodyA.m_invMass;
            vc.invMassB = bodyB.m_invMass;
            vc.invIA = bodyA.m_invI;
            vc.invIB = bodyB.m_invI;
            vc.contactIndex = i3;
            vc.pointCount = pointCount;
            vc.K.setZero();
            vc.normalMass.setZero();
            ContactPositionConstraint pc = this.m_positionConstraints[i3];
            pc.indexA = bodyA.m_islandIndex;
            pc.indexB = bodyB.m_islandIndex;
            pc.invMassA = bodyA.m_invMass;
            pc.invMassB = bodyB.m_invMass;
            pc.localCenterA.set(bodyA.m_sweep.localCenter);
            pc.localCenterB.set(bodyB.m_sweep.localCenter);
            pc.invIA = bodyA.m_invI;
            pc.invIB = bodyB.m_invI;
            pc.localNormal.set(manifold.localNormal);
            pc.localPoint.set(manifold.localPoint);
            pc.pointCount = pointCount;
            pc.radiusA = radiusA;
            pc.radiusB = radiusB;
            pc.type = manifold.type;
            for (int j = 0; j < pointCount; j++) {
                ManifoldPoint cp = manifold.points[j];
                ContactVelocityConstraint.VelocityConstraintPoint vcp = vc.points[j];
                if (this.m_step.warmStarting) {
                    vcp.normalImpulse = this.m_step.dtRatio * cp.normalImpulse;
                    vcp.tangentImpulse = this.m_step.dtRatio * cp.tangentImpulse;
                } else {
                    vcp.normalImpulse = 0.0f;
                    vcp.tangentImpulse = 0.0f;
                }
                vcp.rA.setZero();
                vcp.rB.setZero();
                vcp.normalMass = 0.0f;
                vcp.tangentMass = 0.0f;
                vcp.velocityBias = 0.0f;
                pc.localPoints[j].x = cp.localPoint.x;
                pc.localPoints[j].y = cp.localPoint.y;
            }
        }
    }

    public void warmStart() {
        for (int i = 0; i < this.m_count; i++) {
            ContactVelocityConstraint vc = this.m_velocityConstraints[i];
            int indexA = vc.indexA;
            int indexB = vc.indexB;
            float mA = vc.invMassA;
            float iA = vc.invIA;
            float mB = vc.invMassB;
            float iB = vc.invIB;
            int pointCount = vc.pointCount;
            Vec2 vA = this.m_velocities[indexA].v;
            float wA = this.m_velocities[indexA].w;
            Vec2 vB = this.m_velocities[indexB].v;
            float wB = this.m_velocities[indexB].w;
            Vec2 normal = vc.normal;
            float tangentx = 1.0f * normal.y;
            float tangenty = (-1.0f) * normal.x;
            for (int j = 0; j < pointCount; j++) {
                ContactVelocityConstraint.VelocityConstraintPoint vcp = vc.points[j];
                float Px = (vcp.tangentImpulse * tangentx) + (normal.x * vcp.normalImpulse);
                float Py = (vcp.tangentImpulse * tangenty) + (normal.y * vcp.normalImpulse);
                wA -= ((vcp.rA.x * Py) - (vcp.rA.y * Px)) * iA;
                vA.x -= Px * mA;
                vA.y -= Py * mA;
                wB += ((vcp.rB.x * Py) - (vcp.rB.y * Px)) * iB;
                vB.x += Px * mB;
                vB.y += Py * mB;
            }
            this.m_velocities[indexA].w = wA;
            this.m_velocities[indexB].w = wB;
        }
    }

    public final void initializeVelocityConstraints() {
        for (int i = 0; i < this.m_count; i++) {
            ContactVelocityConstraint vc = this.m_velocityConstraints[i];
            ContactPositionConstraint pc = this.m_positionConstraints[i];
            float radiusA = pc.radiusA;
            float radiusB = pc.radiusB;
            Manifold manifold = this.m_contacts[vc.contactIndex].getManifold();
            int indexA = vc.indexA;
            int indexB = vc.indexB;
            float mA = vc.invMassA;
            float mB = vc.invMassB;
            float iA = vc.invIA;
            float iB = vc.invIB;
            Vec2 localCenterA = pc.localCenterA;
            Vec2 localCenterB = pc.localCenterB;
            Vec2 cA = this.m_positions[indexA].c;
            float aA = this.m_positions[indexA].a;
            Vec2 vA = this.m_velocities[indexA].v;
            float wA = this.m_velocities[indexA].w;
            Vec2 cB = this.m_positions[indexB].c;
            float aB = this.m_positions[indexB].a;
            Vec2 vB = this.m_velocities[indexB].v;
            float wB = this.m_velocities[indexB].w;
            if (!$assertionsDisabled && manifold.pointCount <= 0) {
                throw new AssertionError();
            }
            this.xfA.q.set(aA);
            this.xfB.q.set(aB);
            this.xfA.p.x = cA.x - ((this.xfA.q.c * localCenterA.x) - (this.xfA.q.s * localCenterA.y));
            this.xfA.p.y = cA.y - ((this.xfA.q.s * localCenterA.x) + (this.xfA.q.c * localCenterA.y));
            this.xfB.p.x = cB.x - ((this.xfB.q.c * localCenterB.x) - (this.xfB.q.s * localCenterB.y));
            this.xfB.p.y = cB.y - ((this.xfB.q.s * localCenterB.x) + (this.xfB.q.c * localCenterB.y));
            this.worldManifold.initialize(manifold, this.xfA, radiusA, this.xfB, radiusB);
            vc.normal.set(this.worldManifold.normal);
            int pointCount = vc.pointCount;
            for (int j = 0; j < pointCount; j++) {
                ContactVelocityConstraint.VelocityConstraintPoint vcp = vc.points[j];
                vcp.rA.set(this.worldManifold.points[j]).subLocal(cA);
                vcp.rB.set(this.worldManifold.points[j]).subLocal(cB);
                float rnA = (vcp.rA.x * vc.normal.y) - (vcp.rA.y * vc.normal.x);
                float rnB = (vcp.rB.x * vc.normal.y) - (vcp.rB.y * vc.normal.x);
                float kNormal = mA + mB + (iA * rnA * rnA) + (iB * rnB * rnB);
                vcp.normalMass = kNormal > 0.0f ? 1.0f / kNormal : 0.0f;
                float tangentx = 1.0f * vc.normal.y;
                float tangenty = (-1.0f) * vc.normal.x;
                float rtA = (vcp.rA.x * tangenty) - (vcp.rA.y * tangentx);
                float rtB = (vcp.rB.x * tangenty) - (vcp.rB.y * tangentx);
                float kTangent = mA + mB + (iA * rtA * rtA) + (iB * rtB * rtB);
                vcp.tangentMass = kTangent > 0.0f ? 1.0f / kTangent : 0.0f;
                vcp.velocityBias = 0.0f;
                float tempx = ((vB.x + ((-wB) * vcp.rB.y)) - vA.x) - ((-wA) * vcp.rA.y);
                float tempy = ((vB.y + (vcp.rB.x * wB)) - vA.y) - (vcp.rA.x * wA);
                float vRel = (vc.normal.x * tempx) + (vc.normal.y * tempy);
                if (vRel < -1.0f) {
                    vcp.velocityBias = (-vc.restitution) * vRel;
                }
            }
            if (vc.pointCount == 2) {
                ContactVelocityConstraint.VelocityConstraintPoint vcp1 = vc.points[0];
                ContactVelocityConstraint.VelocityConstraintPoint vcp2 = vc.points[1];
                float rn1A = Vec2.cross(vcp1.rA, vc.normal);
                float rn1B = Vec2.cross(vcp1.rB, vc.normal);
                float rn2A = Vec2.cross(vcp2.rA, vc.normal);
                float rn2B = Vec2.cross(vcp2.rB, vc.normal);
                float k11 = mA + mB + (iA * rn1A * rn1A) + (iB * rn1B * rn1B);
                float k22 = mA + mB + (iA * rn2A * rn2A) + (iB * rn2B * rn2B);
                float k12 = mA + mB + (iA * rn1A * rn2A) + (iB * rn1B * rn2B);
                if (k11 * k11 < 100.0f * ((k11 * k22) - (k12 * k12))) {
                    vc.K.ex.set(k11, k12);
                    vc.K.ey.set(k12, k22);
                    vc.K.invertToOut(vc.normalMass);
                } else {
                    vc.pointCount = 1;
                }
            }
        }
    }

    public final void solveVelocityConstraints() {
        for (int i = 0; i < this.m_count; i++) {
            ContactVelocityConstraint vc = this.m_velocityConstraints[i];
            int indexA = vc.indexA;
            int indexB = vc.indexB;
            float mA = vc.invMassA;
            float mB = vc.invMassB;
            float iA = vc.invIA;
            float iB = vc.invIB;
            int pointCount = vc.pointCount;
            Vec2 vA = this.m_velocities[indexA].v;
            float wA = this.m_velocities[indexA].w;
            Vec2 vB = this.m_velocities[indexB].v;
            float wB = this.m_velocities[indexB].w;
            Vec2 normal = vc.normal;
            this.tangent.x = 1.0f * vc.normal.y;
            this.tangent.y = (-1.0f) * vc.normal.x;
            float friction = vc.friction;
            if (!$assertionsDisabled && pointCount != 1 && pointCount != 2) {
                throw new AssertionError();
            }
            for (int j = 0; j < pointCount; j++) {
                ContactVelocityConstraint.VelocityConstraintPoint vcp = vc.points[j];
                Vec2 a = vcp.rA;
                float dvx = ((((-wB) * vcp.rB.y) + vB.x) - vA.x) + (a.y * wA);
                float dvy = (((vcp.rB.x * wB) + vB.y) - vA.y) - (a.x * wA);
                float vt = ((this.tangent.x * dvx) + (this.tangent.y * dvy)) - vc.tangentSpeed;
                float lambda = vcp.tangentMass * (-vt);
                float maxFriction = friction * vcp.normalImpulse;
                float newImpulse = MathUtils.clamp(vcp.tangentImpulse + lambda, -maxFriction, maxFriction);
                float lambda2 = newImpulse - vcp.tangentImpulse;
                vcp.tangentImpulse = newImpulse;
                float Px = this.tangent.x * lambda2;
                float Py = this.tangent.y * lambda2;
                vA.x -= Px * mA;
                vA.y -= Py * mA;
                wA -= ((vcp.rA.x * Py) - (vcp.rA.y * Px)) * iA;
                vB.x += Px * mB;
                vB.y += Py * mB;
                wB += ((vcp.rB.x * Py) - (vcp.rB.y * Px)) * iB;
            }
            if (vc.pointCount == 1) {
                ContactVelocityConstraint.VelocityConstraintPoint vcp2 = vc.points[0];
                float dvx2 = ((((-wB) * vcp2.rB.y) + vB.x) - vA.x) + (vcp2.rA.y * wA);
                float dvy2 = (((vcp2.rB.x * wB) + vB.y) - vA.y) - (vcp2.rA.x * wA);
                float vn = (normal.x * dvx2) + (normal.y * dvy2);
                float a2 = vcp2.normalImpulse + ((-vcp2.normalMass) * (vn - vcp2.velocityBias));
                float newImpulse2 = a2 > 0.0f ? a2 : 0.0f;
                float lambda3 = newImpulse2 - vcp2.normalImpulse;
                vcp2.normalImpulse = newImpulse2;
                float Px2 = normal.x * lambda3;
                float Py2 = normal.y * lambda3;
                vA.x -= Px2 * mA;
                vA.y -= Py2 * mA;
                wA -= ((vcp2.rA.x * Py2) - (vcp2.rA.y * Px2)) * iA;
                vB.x += Px2 * mB;
                vB.y += Py2 * mB;
                wB += ((vcp2.rB.x * Py2) - (vcp2.rB.y * Px2)) * iB;
            } else {
                ContactVelocityConstraint.VelocityConstraintPoint cp1 = vc.points[0];
                ContactVelocityConstraint.VelocityConstraintPoint cp2 = vc.points[1];
                this.a.x = cp1.normalImpulse;
                this.a.y = cp2.normalImpulse;
                if (!$assertionsDisabled && (this.a.x < 0.0f || this.a.y < 0.0f)) {
                    throw new AssertionError();
                }
                this.dv1.x = ((((-wB) * cp1.rB.y) + vB.x) - vA.x) + (cp1.rA.y * wA);
                this.dv1.y = (((cp1.rB.x * wB) + vB.y) - vA.y) - (cp1.rA.x * wA);
                this.dv2.x = ((((-wB) * cp2.rB.y) + vB.x) - vA.x) + (cp2.rA.y * wA);
                this.dv2.y = (((cp2.rB.x * wB) + vB.y) - vA.y) - (cp2.rA.x * wA);
                float vn1 = (this.dv1.x * normal.x) + (this.dv1.y * normal.y);
                float vn2 = (this.dv2.x * normal.x) + (this.dv2.y * normal.y);
                this.b.x = vn1 - cp1.velocityBias;
                this.b.y = vn2 - cp2.velocityBias;
                Mat22 R = vc.K;
                this.b.x -= (R.ex.x * this.a.x) + (R.ey.x * this.a.y);
                this.b.y -= (R.ex.y * this.a.x) + (R.ey.y * this.a.y);
                Mat22.mulToOutUnsafe(vc.normalMass, this.b, this.x);
                this.x.x *= -1.0f;
                this.x.y *= -1.0f;
                if (this.x.x >= 0.0f && this.x.y >= 0.0f) {
                    this.d.set(this.x).subLocal(this.a);
                    this.P1.set(normal).mulLocal(this.d.x);
                    this.P2.set(normal).mulLocal(this.d.y);
                    this.temp1.set(this.P1).addLocal(this.P2);
                    this.temp2.set(this.temp1).mulLocal(mA);
                    vA.subLocal(this.temp2);
                    this.temp2.set(this.temp1).mulLocal(mB);
                    vB.addLocal(this.temp2);
                    wA -= (Vec2.cross(cp1.rA, this.P1) + Vec2.cross(cp2.rA, this.P2)) * iA;
                    wB += (Vec2.cross(cp1.rB, this.P1) + Vec2.cross(cp2.rB, this.P2)) * iB;
                    cp1.normalImpulse = this.x.x;
                    cp2.normalImpulse = this.x.y;
                } else {
                    this.x.x = (-cp1.normalMass) * this.b.x;
                    this.x.y = 0.0f;
                    float vn22 = (vc.K.ex.y * this.x.x) + this.b.y;
                    if (this.x.x >= 0.0f && vn22 >= 0.0f) {
                        this.d.set(this.x).subLocal(this.a);
                        this.P1.set(normal).mulLocal(this.d.x);
                        this.P2.set(normal).mulLocal(this.d.y);
                        this.temp1.set(this.P1).addLocal(this.P2);
                        this.temp2.set(this.temp1).mulLocal(mA);
                        vA.subLocal(this.temp2);
                        this.temp2.set(this.temp1).mulLocal(mB);
                        vB.addLocal(this.temp2);
                        wA -= (Vec2.cross(cp1.rA, this.P1) + Vec2.cross(cp2.rA, this.P2)) * iA;
                        wB += (Vec2.cross(cp1.rB, this.P1) + Vec2.cross(cp2.rB, this.P2)) * iB;
                        cp1.normalImpulse = this.x.x;
                        cp2.normalImpulse = this.x.y;
                    } else {
                        this.x.x = 0.0f;
                        this.x.y = (-cp2.normalMass) * this.b.y;
                        float vn12 = (vc.K.ey.x * this.x.y) + this.b.x;
                        if (this.x.y >= 0.0f && vn12 >= 0.0f) {
                            this.d.set(this.x).subLocal(this.a);
                            this.P1.set(normal).mulLocal(this.d.x);
                            this.P2.set(normal).mulLocal(this.d.y);
                            this.temp1.set(this.P1).addLocal(this.P2);
                            this.temp2.set(this.temp1).mulLocal(mA);
                            vA.subLocal(this.temp2);
                            this.temp2.set(this.temp1).mulLocal(mB);
                            vB.addLocal(this.temp2);
                            wA -= (Vec2.cross(cp1.rA, this.P1) + Vec2.cross(cp2.rA, this.P2)) * iA;
                            wB += (Vec2.cross(cp1.rB, this.P1) + Vec2.cross(cp2.rB, this.P2)) * iB;
                            cp1.normalImpulse = this.x.x;
                            cp2.normalImpulse = this.x.y;
                        } else {
                            this.x.x = 0.0f;
                            this.x.y = 0.0f;
                            float vn13 = this.b.x;
                            float vn23 = this.b.y;
                            if (vn13 >= 0.0f && vn23 >= 0.0f) {
                                this.d.set(this.x).subLocal(this.a);
                                this.P1.set(normal).mulLocal(this.d.x);
                                this.P2.set(normal).mulLocal(this.d.y);
                                this.temp1.set(this.P1).addLocal(this.P2);
                                this.temp2.set(this.temp1).mulLocal(mA);
                                vA.subLocal(this.temp2);
                                this.temp2.set(this.temp1).mulLocal(mB);
                                vB.addLocal(this.temp2);
                                wA -= (Vec2.cross(cp1.rA, this.P1) + Vec2.cross(cp2.rA, this.P2)) * iA;
                                wB += (Vec2.cross(cp1.rB, this.P1) + Vec2.cross(cp2.rB, this.P2)) * iB;
                                cp1.normalImpulse = this.x.x;
                                cp2.normalImpulse = this.x.y;
                            }
                        }
                    }
                }
            }
            this.m_velocities[indexA].w = wA;
            this.m_velocities[indexB].w = wB;
        }
    }

    public void storeImpulses() {
        for (int i = 0; i < this.m_count; i++) {
            ContactVelocityConstraint vc = this.m_velocityConstraints[i];
            Manifold manifold = this.m_contacts[vc.contactIndex].getManifold();
            for (int j = 0; j < vc.pointCount; j++) {
                manifold.points[j].normalImpulse = vc.points[j].normalImpulse;
                manifold.points[j].tangentImpulse = vc.points[j].tangentImpulse;
            }
        }
    }

    public final boolean solvePositionConstraints() {
        float minSeparation = 0.0f;
        for (int i = 0; i < this.m_count; i++) {
            ContactPositionConstraint pc = this.m_positionConstraints[i];
            int indexA = pc.indexA;
            int indexB = pc.indexB;
            float mA = pc.invMassA;
            float iA = pc.invIA;
            Vec2 localCenterA = pc.localCenterA;
            float mB = pc.invMassB;
            float iB = pc.invIB;
            Vec2 localCenterB = pc.localCenterB;
            int pointCount = pc.pointCount;
            Vec2 cA = this.m_positions[indexA].c;
            float aA = this.m_positions[indexA].a;
            Vec2 cB = this.m_positions[indexB].c;
            float aB = this.m_positions[indexB].a;
            for (int j = 0; j < pointCount; j++) {
                this.xfA.q.set(aA);
                this.xfB.q.set(aB);
                Rot.mulToOutUnsafe(this.xfA.q, localCenterA, this.xfA.p);
                this.xfA.p.negateLocal().addLocal(cA);
                Rot.mulToOutUnsafe(this.xfB.q, localCenterB, this.xfB.p);
                this.xfB.p.negateLocal().addLocal(cB);
                PositionSolverManifold psm = this.psolver;
                psm.initialize(pc, this.xfA, this.xfB, j);
                Vec2 normal = psm.normal;
                Vec2 point = psm.point;
                float separation = psm.separation;
                this.rA.set(point).subLocal(cA);
                this.rB.set(point).subLocal(cB);
                minSeparation = MathUtils.min(minSeparation, separation);
                float C = MathUtils.clamp(0.2f * (0.005f + separation), -0.2f, 0.0f);
                float rnA = Vec2.cross(this.rA, normal);
                float rnB = Vec2.cross(this.rB, normal);
                float K = mA + mB + (iA * rnA * rnA) + (iB * rnB * rnB);
                float impulse = K > 0.0f ? (-C) / K : 0.0f;
                this.P.set(normal).mulLocal(impulse);
                cA.subLocal(this.temp.set(this.P).mulLocal(mA));
                aA -= Vec2.cross(this.rA, this.P) * iA;
                cB.addLocal(this.temp.set(this.P).mulLocal(mB));
                aB += Vec2.cross(this.rB, this.P) * iB;
            }
            this.m_positions[indexA].a = aA;
            this.m_positions[indexB].a = aB;
        }
        return minSeparation >= -0.015f;
    }

    public boolean solveTOIPositionConstraints(int toiIndexA, int toiIndexB) {
        float minSeparation = 0.0f;
        for (int i = 0; i < this.m_count; i++) {
            ContactPositionConstraint pc = this.m_positionConstraints[i];
            int indexA = pc.indexA;
            int indexB = pc.indexB;
            Vec2 localCenterA = pc.localCenterA;
            Vec2 localCenterB = pc.localCenterB;
            int pointCount = pc.pointCount;
            float mA = 0.0f;
            float iA = 0.0f;
            if (indexA == toiIndexA || indexA == toiIndexB) {
                mA = pc.invMassA;
                iA = pc.invIA;
            }
            float mB = 0.0f;
            float iB = 0.0f;
            if (indexB == toiIndexA || indexB == toiIndexB) {
                mB = pc.invMassB;
                iB = pc.invIB;
            }
            Vec2 cA = this.m_positions[indexA].c;
            float aA = this.m_positions[indexA].a;
            Vec2 cB = this.m_positions[indexB].c;
            float aB = this.m_positions[indexB].a;
            for (int j = 0; j < pointCount; j++) {
                this.xfA.q.set(aA);
                this.xfB.q.set(aB);
                Rot.mulToOutUnsafe(this.xfA.q, localCenterA, this.xfA.p);
                this.xfA.p.negateLocal().addLocal(cA);
                Rot.mulToOutUnsafe(this.xfB.q, localCenterB, this.xfB.p);
                this.xfB.p.negateLocal().addLocal(cB);
                PositionSolverManifold psm = this.psolver;
                psm.initialize(pc, this.xfA, this.xfB, j);
                Vec2 normal = psm.normal;
                Vec2 point = psm.point;
                float separation = psm.separation;
                this.rA.set(point).subLocal(cA);
                this.rB.set(point).subLocal(cB);
                minSeparation = MathUtils.min(minSeparation, separation);
                float C = MathUtils.clamp(0.75f * (0.005f + separation), -0.2f, 0.0f);
                float rnA = Vec2.cross(this.rA, normal);
                float rnB = Vec2.cross(this.rB, normal);
                float K = mA + mB + (iA * rnA * rnA) + (iB * rnB * rnB);
                float impulse = K > 0.0f ? (-C) / K : 0.0f;
                this.P.set(normal).mulLocal(impulse);
                cA.subLocal(this.temp.set(this.P).mulLocal(mA));
                aA -= Vec2.cross(this.rA, this.P) * iA;
                cB.addLocal(this.temp.set(this.P).mulLocal(mB));
                aB += Vec2.cross(this.rB, this.P) * iB;
            }
            this.m_positions[indexA].a = aA;
            this.m_positions[indexB].a = aB;
        }
        return minSeparation >= -0.0075f;
    }
}
