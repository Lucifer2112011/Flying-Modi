package org.jbox2d.dynamics.joints;

import org.jbox2d.common.MathUtils;
import org.jbox2d.common.Rot;
import org.jbox2d.common.Vec2;
import org.jbox2d.dynamics.SolverData;
import org.jbox2d.pooling.IWorldPool;

/* JADX INFO: loaded from: classes2.dex */
public class RopeJoint extends Joint {
    private float m_impulse;
    private int m_indexA;
    private int m_indexB;
    private float m_invIA;
    private float m_invIB;
    private float m_invMassA;
    private float m_invMassB;
    private float m_length;
    private final Vec2 m_localAnchorA;
    private final Vec2 m_localAnchorB;
    private final Vec2 m_localCenterA;
    private final Vec2 m_localCenterB;
    private float m_mass;
    private float m_maxLength;
    private final Vec2 m_rA;
    private final Vec2 m_rB;
    private LimitState m_state;
    private final Vec2 m_u;

    protected RopeJoint(IWorldPool worldPool, RopeJointDef def) {
        super(worldPool, def);
        this.m_localAnchorA = new Vec2();
        this.m_localAnchorB = new Vec2();
        this.m_u = new Vec2();
        this.m_rA = new Vec2();
        this.m_rB = new Vec2();
        this.m_localCenterA = new Vec2();
        this.m_localCenterB = new Vec2();
        this.m_localAnchorA.set(def.localAnchorA);
        this.m_localAnchorB.set(def.localAnchorB);
        this.m_maxLength = def.maxLength;
        this.m_mass = 0.0f;
        this.m_impulse = 0.0f;
        this.m_state = LimitState.INACTIVE;
        this.m_length = 0.0f;
    }

    @Override // org.jbox2d.dynamics.joints.Joint
    public void initVelocityConstraints(SolverData data) {
        this.m_indexA = this.m_bodyA.m_islandIndex;
        this.m_indexB = this.m_bodyB.m_islandIndex;
        this.m_localCenterA.set(this.m_bodyA.m_sweep.localCenter);
        this.m_localCenterB.set(this.m_bodyB.m_sweep.localCenter);
        this.m_invMassA = this.m_bodyA.m_invMass;
        this.m_invMassB = this.m_bodyB.m_invMass;
        this.m_invIA = this.m_bodyA.m_invI;
        this.m_invIB = this.m_bodyB.m_invI;
        Vec2 cA = data.positions[this.m_indexA].c;
        float aA = data.positions[this.m_indexA].a;
        Vec2 vA = data.velocities[this.m_indexA].v;
        float wA = data.velocities[this.m_indexA].w;
        Vec2 cB = data.positions[this.m_indexB].c;
        float aB = data.positions[this.m_indexB].a;
        Vec2 vB = data.velocities[this.m_indexB].v;
        float wB = data.velocities[this.m_indexB].w;
        Rot qA = this.pool.popRot();
        Rot qB = this.pool.popRot();
        Vec2 temp = this.pool.popVec2();
        qA.set(aA);
        qB.set(aB);
        Rot.mulToOutUnsafe(qA, temp.set(this.m_localAnchorA).subLocal(this.m_localCenterA), this.m_rA);
        Rot.mulToOutUnsafe(qB, temp.set(this.m_localAnchorB).subLocal(this.m_localCenterB), this.m_rB);
        this.m_u.set(cB).addLocal(this.m_rB).subLocal(cA).subLocal(this.m_rA);
        this.m_length = this.m_u.length();
        float C = this.m_length - this.m_maxLength;
        if (C > 0.0f) {
            this.m_state = LimitState.AT_UPPER;
        } else {
            this.m_state = LimitState.INACTIVE;
        }
        if (this.m_length > 0.005f) {
            this.m_u.mulLocal(1.0f / this.m_length);
            float crA = Vec2.cross(this.m_rA, this.m_u);
            float crB = Vec2.cross(this.m_rB, this.m_u);
            float invMass = this.m_invMassA + (this.m_invIA * crA * crA) + this.m_invMassB + (this.m_invIB * crB * crB);
            this.m_mass = invMass != 0.0f ? 1.0f / invMass : 0.0f;
            if (data.step.warmStarting) {
                this.m_impulse *= data.step.dtRatio;
                float Px = this.m_impulse * this.m_u.x;
                float Py = this.m_impulse * this.m_u.y;
                vA.x -= this.m_invMassA * Px;
                vA.y -= this.m_invMassA * Py;
                wA -= this.m_invIA * ((this.m_rA.x * Py) - (this.m_rA.y * Px));
                vB.x += this.m_invMassB * Px;
                vB.y += this.m_invMassB * Py;
                wB += this.m_invIB * ((this.m_rB.x * Py) - (this.m_rB.y * Px));
            } else {
                this.m_impulse = 0.0f;
            }
            this.pool.pushRot(2);
            this.pool.pushVec2(1);
            data.velocities[this.m_indexA].w = wA;
            data.velocities[this.m_indexB].w = wB;
            return;
        }
        this.m_u.setZero();
        this.m_mass = 0.0f;
        this.m_impulse = 0.0f;
    }

    @Override // org.jbox2d.dynamics.joints.Joint
    public void solveVelocityConstraints(SolverData data) {
        Vec2 vA = data.velocities[this.m_indexA].v;
        float wA = data.velocities[this.m_indexA].w;
        Vec2 vB = data.velocities[this.m_indexB].v;
        float wB = data.velocities[this.m_indexB].w;
        Vec2 vpA = this.pool.popVec2();
        Vec2 vpB = this.pool.popVec2();
        Vec2 temp = this.pool.popVec2();
        Vec2.crossToOutUnsafe(wA, this.m_rA, vpA);
        vpA.addLocal(vA);
        Vec2.crossToOutUnsafe(wB, this.m_rB, vpB);
        vpB.addLocal(vB);
        float C = this.m_length - this.m_maxLength;
        float Cdot = Vec2.dot(this.m_u, temp.set(vpB).subLocal(vpA));
        if (C < 0.0f) {
            Cdot += data.step.inv_dt * C;
        }
        float impulse = (-this.m_mass) * Cdot;
        float oldImpulse = this.m_impulse;
        this.m_impulse = MathUtils.min(0.0f, this.m_impulse + impulse);
        float impulse2 = this.m_impulse - oldImpulse;
        float Px = impulse2 * this.m_u.x;
        float Py = impulse2 * this.m_u.y;
        vA.x -= this.m_invMassA * Px;
        vA.y -= this.m_invMassA * Py;
        float wA2 = wA - (this.m_invIA * ((this.m_rA.x * Py) - (this.m_rA.y * Px)));
        vB.x += this.m_invMassB * Px;
        vB.y += this.m_invMassB * Py;
        float wB2 = wB + (this.m_invIB * ((this.m_rB.x * Py) - (this.m_rB.y * Px)));
        this.pool.pushVec2(3);
        data.velocities[this.m_indexA].w = wA2;
        data.velocities[this.m_indexB].w = wB2;
    }

    @Override // org.jbox2d.dynamics.joints.Joint
    public boolean solvePositionConstraints(SolverData data) {
        Vec2 cA = data.positions[this.m_indexA].c;
        float aA = data.positions[this.m_indexA].a;
        Vec2 cB = data.positions[this.m_indexB].c;
        float aB = data.positions[this.m_indexB].a;
        Rot qA = this.pool.popRot();
        Rot qB = this.pool.popRot();
        Vec2 u = this.pool.popVec2();
        Vec2 rA = this.pool.popVec2();
        Vec2 rB = this.pool.popVec2();
        Vec2 temp = this.pool.popVec2();
        qA.set(aA);
        qB.set(aB);
        Rot.mulToOutUnsafe(qA, temp.set(this.m_localAnchorA).subLocal(this.m_localCenterA), rA);
        Rot.mulToOutUnsafe(qB, temp.set(this.m_localAnchorB).subLocal(this.m_localCenterB), rB);
        u.set(cB).addLocal(rB).subLocal(cA).subLocal(rA);
        float length = u.normalize();
        float C = length - this.m_maxLength;
        float impulse = (-this.m_mass) * MathUtils.clamp(C, 0.0f, 0.2f);
        float Px = impulse * u.x;
        float Py = impulse * u.y;
        cA.x -= this.m_invMassA * Px;
        cA.y -= this.m_invMassA * Py;
        float aA2 = aA - (this.m_invIA * ((rA.x * Py) - (rA.y * Px)));
        cB.x += this.m_invMassB * Px;
        cB.y += this.m_invMassB * Py;
        float aB2 = aB + (this.m_invIB * ((rB.x * Py) - (rB.y * Px)));
        this.pool.pushRot(2);
        this.pool.pushVec2(4);
        data.positions[this.m_indexA].a = aA2;
        data.positions[this.m_indexB].a = aB2;
        return length - this.m_maxLength < 0.005f;
    }

    @Override // org.jbox2d.dynamics.joints.Joint
    public void getAnchorA(Vec2 argOut) {
        this.m_bodyA.getWorldPointToOut(this.m_localAnchorA, argOut);
    }

    @Override // org.jbox2d.dynamics.joints.Joint
    public void getAnchorB(Vec2 argOut) {
        this.m_bodyB.getWorldPointToOut(this.m_localAnchorB, argOut);
    }

    @Override // org.jbox2d.dynamics.joints.Joint
    public void getReactionForce(float inv_dt, Vec2 argOut) {
        argOut.set(this.m_u).mulLocal(inv_dt).mulLocal(this.m_impulse);
    }

    @Override // org.jbox2d.dynamics.joints.Joint
    public float getReactionTorque(float inv_dt) {
        return 0.0f;
    }

    public Vec2 getLocalAnchorA() {
        return this.m_localAnchorA;
    }

    public Vec2 getLocalAnchorB() {
        return this.m_localAnchorB;
    }

    public float getMaxLength() {
        return this.m_maxLength;
    }

    public void setMaxLength(float maxLength) {
        this.m_maxLength = maxLength;
    }

    public LimitState getLimitState() {
        return this.m_state;
    }
}
