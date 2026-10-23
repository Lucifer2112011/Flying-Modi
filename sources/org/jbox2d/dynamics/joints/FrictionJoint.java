package org.jbox2d.dynamics.joints;

import org.jbox2d.common.Mat22;
import org.jbox2d.common.MathUtils;
import org.jbox2d.common.Rot;
import org.jbox2d.common.Vec2;
import org.jbox2d.dynamics.SolverData;
import org.jbox2d.pooling.IWorldPool;

/* JADX INFO: loaded from: classes2.dex */
public class FrictionJoint extends Joint {
    static final /* synthetic */ boolean $assertionsDisabled;
    private float m_angularImpulse;
    private float m_angularMass;
    private int m_indexA;
    private int m_indexB;
    private float m_invIA;
    private float m_invIB;
    private float m_invMassA;
    private float m_invMassB;
    private final Vec2 m_linearImpulse;
    private final Mat22 m_linearMass;
    private final Vec2 m_localAnchorA;
    private final Vec2 m_localAnchorB;
    private final Vec2 m_localCenterA;
    private final Vec2 m_localCenterB;
    private float m_maxForce;
    private float m_maxTorque;
    private final Vec2 m_rA;
    private final Vec2 m_rB;

    static {
        $assertionsDisabled = !FrictionJoint.class.desiredAssertionStatus();
    }

    protected FrictionJoint(IWorldPool argWorldPool, FrictionJointDef def) {
        super(argWorldPool, def);
        this.m_rA = new Vec2();
        this.m_rB = new Vec2();
        this.m_localCenterA = new Vec2();
        this.m_localCenterB = new Vec2();
        this.m_linearMass = new Mat22();
        this.m_localAnchorA = new Vec2(def.localAnchorA);
        this.m_localAnchorB = new Vec2(def.localAnchorB);
        this.m_linearImpulse = new Vec2();
        this.m_angularImpulse = 0.0f;
        this.m_maxForce = def.maxForce;
        this.m_maxTorque = def.maxTorque;
    }

    public Vec2 getLocalAnchorA() {
        return this.m_localAnchorA;
    }

    public Vec2 getLocalAnchorB() {
        return this.m_localAnchorB;
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
        argOut.set(this.m_linearImpulse).mulLocal(inv_dt);
    }

    @Override // org.jbox2d.dynamics.joints.Joint
    public float getReactionTorque(float inv_dt) {
        return this.m_angularImpulse * inv_dt;
    }

    public void setMaxForce(float force) {
        if (!$assertionsDisabled && force < 0.0f) {
            throw new AssertionError();
        }
        this.m_maxForce = force;
    }

    public float getMaxForce() {
        return this.m_maxForce;
    }

    public void setMaxTorque(float torque) {
        if (!$assertionsDisabled && torque < 0.0f) {
            throw new AssertionError();
        }
        this.m_maxTorque = torque;
    }

    public float getMaxTorque() {
        return this.m_maxTorque;
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
        float aA = data.positions[this.m_indexA].a;
        Vec2 vA = data.velocities[this.m_indexA].v;
        float wA = data.velocities[this.m_indexA].w;
        float aB = data.positions[this.m_indexB].a;
        Vec2 vB = data.velocities[this.m_indexB].v;
        float wB = data.velocities[this.m_indexB].w;
        Vec2 temp = this.pool.popVec2();
        Rot qA = this.pool.popRot();
        Rot qB = this.pool.popRot();
        qA.set(aA);
        qB.set(aB);
        Rot.mulToOutUnsafe(qA, temp.set(this.m_localAnchorA).subLocal(this.m_localCenterA), this.m_rA);
        Rot.mulToOutUnsafe(qB, temp.set(this.m_localAnchorB).subLocal(this.m_localCenterB), this.m_rB);
        float mA = this.m_invMassA;
        float mB = this.m_invMassB;
        float iA = this.m_invIA;
        float iB = this.m_invIB;
        Mat22 K = this.pool.popMat22();
        K.ex.x = mA + mB + (this.m_rA.y * iA * this.m_rA.y) + (this.m_rB.y * iB * this.m_rB.y);
        K.ex.y = (((-iA) * this.m_rA.x) * this.m_rA.y) - ((this.m_rB.x * iB) * this.m_rB.y);
        K.ey.x = K.ex.y;
        K.ey.y = mA + mB + (this.m_rA.x * iA * this.m_rA.x) + (this.m_rB.x * iB * this.m_rB.x);
        K.invertToOut(this.m_linearMass);
        this.m_angularMass = iA + iB;
        if (this.m_angularMass > 0.0f) {
            this.m_angularMass = 1.0f / this.m_angularMass;
        }
        if (data.step.warmStarting) {
            this.m_linearImpulse.mulLocal(data.step.dtRatio);
            this.m_angularImpulse *= data.step.dtRatio;
            Vec2 P = this.pool.popVec2();
            P.set(this.m_linearImpulse);
            temp.set(P).mulLocal(mA);
            vA.subLocal(temp);
            wA -= (Vec2.cross(this.m_rA, P) + this.m_angularImpulse) * iA;
            temp.set(P).mulLocal(mB);
            vB.addLocal(temp);
            wB += (Vec2.cross(this.m_rB, P) + this.m_angularImpulse) * iB;
            this.pool.pushVec2(1);
        } else {
            this.m_linearImpulse.setZero();
            this.m_angularImpulse = 0.0f;
        }
        if (data.velocities[this.m_indexA].w != wA && !$assertionsDisabled && data.velocities[this.m_indexA].w == wA) {
            throw new AssertionError();
        }
        data.velocities[this.m_indexA].w = wA;
        data.velocities[this.m_indexB].w = wB;
        this.pool.pushRot(2);
        this.pool.pushVec2(1);
        this.pool.pushMat22(1);
    }

    @Override // org.jbox2d.dynamics.joints.Joint
    public void solveVelocityConstraints(SolverData data) {
        Vec2 vA = data.velocities[this.m_indexA].v;
        float wA = data.velocities[this.m_indexA].w;
        Vec2 vB = data.velocities[this.m_indexB].v;
        float wB = data.velocities[this.m_indexB].w;
        float mA = this.m_invMassA;
        float mB = this.m_invMassB;
        float iA = this.m_invIA;
        float iB = this.m_invIB;
        float h = data.step.dt;
        float impulse = (-this.m_angularMass) * (wB - wA);
        float oldImpulse = this.m_angularImpulse;
        float maxImpulse = h * this.m_maxTorque;
        this.m_angularImpulse = MathUtils.clamp(this.m_angularImpulse + impulse, -maxImpulse, maxImpulse);
        float impulse2 = this.m_angularImpulse - oldImpulse;
        float wA2 = wA - (iA * impulse2);
        float wB2 = wB + (iB * impulse2);
        Vec2 Cdot = this.pool.popVec2();
        Vec2 temp = this.pool.popVec2();
        Vec2.crossToOutUnsafe(wA2, this.m_rA, temp);
        Vec2.crossToOutUnsafe(wB2, this.m_rB, Cdot);
        Cdot.addLocal(vB).subLocal(vA).subLocal(temp);
        Vec2 impulse3 = this.pool.popVec2();
        Mat22.mulToOutUnsafe(this.m_linearMass, Cdot, impulse3);
        impulse3.negateLocal();
        Vec2 oldImpulse2 = this.pool.popVec2();
        oldImpulse2.set(this.m_linearImpulse);
        this.m_linearImpulse.addLocal(impulse3);
        float maxImpulse2 = h * this.m_maxForce;
        if (this.m_linearImpulse.lengthSquared() > maxImpulse2 * maxImpulse2) {
            this.m_linearImpulse.normalize();
            this.m_linearImpulse.mulLocal(maxImpulse2);
        }
        impulse3.set(this.m_linearImpulse).subLocal(oldImpulse2);
        temp.set(impulse3).mulLocal(mA);
        vA.subLocal(temp);
        float wA3 = wA2 - (Vec2.cross(this.m_rA, impulse3) * iA);
        temp.set(impulse3).mulLocal(mB);
        vB.addLocal(temp);
        float wB3 = wB2 + (Vec2.cross(this.m_rB, impulse3) * iB);
        if (data.velocities[this.m_indexA].w != wA3 && !$assertionsDisabled && data.velocities[this.m_indexA].w == wA3) {
            throw new AssertionError();
        }
        data.velocities[this.m_indexA].w = wA3;
        data.velocities[this.m_indexB].w = wB3;
        this.pool.pushVec2(4);
    }

    @Override // org.jbox2d.dynamics.joints.Joint
    public boolean solvePositionConstraints(SolverData data) {
        return true;
    }
}
