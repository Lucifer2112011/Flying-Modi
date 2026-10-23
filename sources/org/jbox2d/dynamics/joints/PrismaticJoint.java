package org.jbox2d.dynamics.joints;

import org.jbox2d.common.Mat22;
import org.jbox2d.common.Mat33;
import org.jbox2d.common.MathUtils;
import org.jbox2d.common.Rot;
import org.jbox2d.common.Vec2;
import org.jbox2d.common.Vec3;
import org.jbox2d.dynamics.Body;
import org.jbox2d.dynamics.SolverData;
import org.jbox2d.pooling.IWorldPool;

/* JADX INFO: loaded from: classes2.dex */
public class PrismaticJoint extends Joint {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Mat33 m_K;
    private float m_a1;
    private float m_a2;
    private final Vec2 m_axis;
    private boolean m_enableLimit;
    private boolean m_enableMotor;
    private final Vec3 m_impulse;
    private int m_indexA;
    private int m_indexB;
    private float m_invIA;
    private float m_invIB;
    private float m_invMassA;
    private float m_invMassB;
    private LimitState m_limitState;
    protected final Vec2 m_localAnchorA;
    protected final Vec2 m_localAnchorB;
    private final Vec2 m_localCenterA;
    private final Vec2 m_localCenterB;
    protected final Vec2 m_localXAxisA;
    protected final Vec2 m_localYAxisA;
    private float m_lowerTranslation;
    private float m_maxMotorForce;
    private float m_motorImpulse;
    private float m_motorMass;
    private float m_motorSpeed;
    private final Vec2 m_perp;
    protected float m_referenceAngle;
    private float m_s1;
    private float m_s2;
    private float m_upperTranslation;

    static {
        $assertionsDisabled = !PrismaticJoint.class.desiredAssertionStatus();
    }

    protected PrismaticJoint(IWorldPool argWorld, PrismaticJointDef def) {
        super(argWorld, def);
        this.m_localCenterA = new Vec2();
        this.m_localCenterB = new Vec2();
        this.m_localAnchorA = new Vec2(def.localAnchorA);
        this.m_localAnchorB = new Vec2(def.localAnchorB);
        this.m_localXAxisA = new Vec2(def.localAxisA);
        this.m_localXAxisA.normalize();
        this.m_localYAxisA = new Vec2();
        Vec2.crossToOutUnsafe(1.0f, this.m_localXAxisA, this.m_localYAxisA);
        this.m_referenceAngle = def.referenceAngle;
        this.m_impulse = new Vec3();
        this.m_motorMass = 0.0f;
        this.m_motorImpulse = 0.0f;
        this.m_lowerTranslation = def.lowerTranslation;
        this.m_upperTranslation = def.upperTranslation;
        this.m_maxMotorForce = def.maxMotorForce;
        this.m_motorSpeed = def.motorSpeed;
        this.m_enableLimit = def.enableLimit;
        this.m_enableMotor = def.enableMotor;
        this.m_limitState = LimitState.INACTIVE;
        this.m_K = new Mat33();
        this.m_axis = new Vec2();
        this.m_perp = new Vec2();
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
        Vec2 temp = this.pool.popVec2();
        temp.set(this.m_axis).mulLocal(this.m_motorImpulse + this.m_impulse.z);
        argOut.set(this.m_perp).mulLocal(this.m_impulse.x).addLocal(temp).mulLocal(inv_dt);
        this.pool.pushVec2(1);
    }

    @Override // org.jbox2d.dynamics.joints.Joint
    public float getReactionTorque(float inv_dt) {
        return this.m_impulse.y * inv_dt;
    }

    public float getJointSpeed() {
        Body bA = this.m_bodyA;
        Body bB = this.m_bodyB;
        Vec2 temp = this.pool.popVec2();
        Vec2 rA = this.pool.popVec2();
        Vec2 rB = this.pool.popVec2();
        Vec2 p1 = this.pool.popVec2();
        Vec2 p2 = this.pool.popVec2();
        Vec2 d = this.pool.popVec2();
        Vec2 axis = this.pool.popVec2();
        Vec2 temp2 = this.pool.popVec2();
        Vec2 temp3 = this.pool.popVec2();
        temp.set(this.m_localAnchorA).subLocal(bA.m_sweep.localCenter);
        Rot.mulToOutUnsafe(bA.m_xf.q, temp, rA);
        temp.set(this.m_localAnchorB).subLocal(bB.m_sweep.localCenter);
        Rot.mulToOutUnsafe(bB.m_xf.q, temp, rB);
        p1.set(bA.m_sweep.c).addLocal(rA);
        p2.set(bB.m_sweep.c).addLocal(rB);
        d.set(p2).subLocal(p1);
        Rot.mulToOutUnsafe(bA.m_xf.q, this.m_localXAxisA, axis);
        Vec2 vA = bA.m_linearVelocity;
        Vec2 vB = bB.m_linearVelocity;
        float wA = bA.m_angularVelocity;
        float wB = bB.m_angularVelocity;
        Vec2.crossToOutUnsafe(wA, axis, temp);
        Vec2.crossToOutUnsafe(wB, rB, temp2);
        Vec2.crossToOutUnsafe(wA, rA, temp3);
        temp2.addLocal(vB).subLocal(vA).subLocal(temp3);
        float speed = Vec2.dot(d, temp) + Vec2.dot(axis, temp2);
        this.pool.pushVec2(9);
        return speed;
    }

    public float getJointTranslation() {
        Vec2 pA = this.pool.popVec2();
        Vec2 pB = this.pool.popVec2();
        Vec2 axis = this.pool.popVec2();
        this.m_bodyA.getWorldPointToOut(this.m_localAnchorA, pA);
        this.m_bodyB.getWorldPointToOut(this.m_localAnchorB, pB);
        this.m_bodyA.getWorldVectorToOutUnsafe(this.m_localXAxisA, axis);
        pB.subLocal(pA);
        float translation = Vec2.dot(pB, axis);
        this.pool.pushVec2(3);
        return translation;
    }

    public boolean isLimitEnabled() {
        return this.m_enableLimit;
    }

    public void enableLimit(boolean flag) {
        if (flag != this.m_enableLimit) {
            this.m_bodyA.setAwake(true);
            this.m_bodyB.setAwake(true);
            this.m_enableLimit = flag;
            this.m_impulse.z = 0.0f;
        }
    }

    public float getLowerLimit() {
        return this.m_lowerTranslation;
    }

    public float getUpperLimit() {
        return this.m_upperTranslation;
    }

    public void setLimits(float lower, float upper) {
        if (!$assertionsDisabled && lower > upper) {
            throw new AssertionError();
        }
        if (lower != this.m_lowerTranslation || upper != this.m_upperTranslation) {
            this.m_bodyA.setAwake(true);
            this.m_bodyB.setAwake(true);
            this.m_lowerTranslation = lower;
            this.m_upperTranslation = upper;
            this.m_impulse.z = 0.0f;
        }
    }

    public boolean isMotorEnabled() {
        return this.m_enableMotor;
    }

    public void enableMotor(boolean flag) {
        this.m_bodyA.setAwake(true);
        this.m_bodyB.setAwake(true);
        this.m_enableMotor = flag;
    }

    public void setMotorSpeed(float speed) {
        this.m_bodyA.setAwake(true);
        this.m_bodyB.setAwake(true);
        this.m_motorSpeed = speed;
    }

    public float getMotorSpeed() {
        return this.m_motorSpeed;
    }

    public void setMaxMotorForce(float force) {
        this.m_bodyA.setAwake(true);
        this.m_bodyB.setAwake(true);
        this.m_maxMotorForce = force;
    }

    public float getMotorForce(float inv_dt) {
        return this.m_motorImpulse * inv_dt;
    }

    public float getMaxMotorForce() {
        return this.m_maxMotorForce;
    }

    public float getReferenceAngle() {
        return this.m_referenceAngle;
    }

    public Vec2 getLocalAxisA() {
        return this.m_localXAxisA;
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
        Vec2 d = this.pool.popVec2();
        Vec2 temp = this.pool.popVec2();
        Vec2 rA = this.pool.popVec2();
        Vec2 rB = this.pool.popVec2();
        qA.set(aA);
        qB.set(aB);
        Rot.mulToOutUnsafe(qA, d.set(this.m_localAnchorA).subLocal(this.m_localCenterA), rA);
        Rot.mulToOutUnsafe(qB, d.set(this.m_localAnchorB).subLocal(this.m_localCenterB), rB);
        d.set(cB).subLocal(cA).addLocal(rB).subLocal(rA);
        float mA = this.m_invMassA;
        float mB = this.m_invMassB;
        float iA = this.m_invIA;
        float iB = this.m_invIB;
        Rot.mulToOutUnsafe(qA, this.m_localXAxisA, this.m_axis);
        temp.set(d).addLocal(rA);
        this.m_a1 = Vec2.cross(temp, this.m_axis);
        this.m_a2 = Vec2.cross(rB, this.m_axis);
        this.m_motorMass = mA + mB + (this.m_a1 * iA * this.m_a1) + (this.m_a2 * iB * this.m_a2);
        if (this.m_motorMass > 0.0f) {
            this.m_motorMass = 1.0f / this.m_motorMass;
        }
        Rot.mulToOutUnsafe(qA, this.m_localYAxisA, this.m_perp);
        temp.set(d).addLocal(rA);
        this.m_s1 = Vec2.cross(temp, this.m_perp);
        this.m_s2 = Vec2.cross(rB, this.m_perp);
        float k11 = mA + mB + (this.m_s1 * iA * this.m_s1) + (this.m_s2 * iB * this.m_s2);
        float k12 = (this.m_s1 * iA) + (this.m_s2 * iB);
        float k13 = (this.m_s1 * iA * this.m_a1) + (this.m_s2 * iB * this.m_a2);
        float k22 = iA + iB;
        if (k22 == 0.0f) {
            k22 = 1.0f;
        }
        float k23 = (this.m_a1 * iA) + (this.m_a2 * iB);
        float k33 = mA + mB + (this.m_a1 * iA * this.m_a1) + (this.m_a2 * iB * this.m_a2);
        this.m_K.ex.set(k11, k12, k13);
        this.m_K.ey.set(k12, k22, k23);
        this.m_K.ez.set(k13, k23, k33);
        if (this.m_enableLimit) {
            float jointTranslation = Vec2.dot(this.m_axis, d);
            if (MathUtils.abs(this.m_upperTranslation - this.m_lowerTranslation) < 0.01f) {
                this.m_limitState = LimitState.EQUAL;
            } else if (jointTranslation <= this.m_lowerTranslation) {
                if (this.m_limitState != LimitState.AT_LOWER) {
                    this.m_limitState = LimitState.AT_LOWER;
                    this.m_impulse.z = 0.0f;
                }
            } else if (jointTranslation >= this.m_upperTranslation) {
                if (this.m_limitState != LimitState.AT_UPPER) {
                    this.m_limitState = LimitState.AT_UPPER;
                    this.m_impulse.z = 0.0f;
                }
            } else {
                this.m_limitState = LimitState.INACTIVE;
                this.m_impulse.z = 0.0f;
            }
        } else {
            this.m_limitState = LimitState.INACTIVE;
            this.m_impulse.z = 0.0f;
        }
        if (!this.m_enableMotor) {
            this.m_motorImpulse = 0.0f;
        }
        if (data.step.warmStarting) {
            this.m_impulse.mulLocal(data.step.dtRatio);
            this.m_motorImpulse *= data.step.dtRatio;
            Vec2 P = this.pool.popVec2();
            temp.set(this.m_axis).mulLocal(this.m_motorImpulse + this.m_impulse.z);
            P.set(this.m_perp).mulLocal(this.m_impulse.x).addLocal(temp);
            float LA = (this.m_impulse.x * this.m_s1) + this.m_impulse.y + ((this.m_motorImpulse + this.m_impulse.z) * this.m_a1);
            float LB = (this.m_impulse.x * this.m_s2) + this.m_impulse.y + ((this.m_motorImpulse + this.m_impulse.z) * this.m_a2);
            vA.x -= P.x * mA;
            vA.y -= P.y * mA;
            wA -= iA * LA;
            vB.x += P.x * mB;
            vB.y += P.y * mB;
            wB += iB * LB;
            this.pool.pushVec2(1);
        } else {
            this.m_impulse.setZero();
            this.m_motorImpulse = 0.0f;
        }
        data.velocities[this.m_indexA].w = wA;
        data.velocities[this.m_indexB].w = wB;
        this.pool.pushRot(2);
        this.pool.pushVec2(4);
    }

    @Override // org.jbox2d.dynamics.joints.Joint
    public void solveVelocityConstraints(SolverData data) {
        float wA;
        float wB;
        Vec2 vA = data.velocities[this.m_indexA].v;
        float wA2 = data.velocities[this.m_indexA].w;
        Vec2 vB = data.velocities[this.m_indexB].v;
        float wB2 = data.velocities[this.m_indexB].w;
        float mA = this.m_invMassA;
        float mB = this.m_invMassB;
        float iA = this.m_invIA;
        float iB = this.m_invIB;
        Vec2 temp = this.pool.popVec2();
        if (this.m_enableMotor && this.m_limitState != LimitState.EQUAL) {
            temp.set(vB).subLocal(vA);
            float impulse = this.m_motorMass * (this.m_motorSpeed - ((Vec2.dot(this.m_axis, temp) + (this.m_a2 * wB2)) - (this.m_a1 * wA2)));
            float oldImpulse = this.m_motorImpulse;
            float maxImpulse = data.step.dt * this.m_maxMotorForce;
            this.m_motorImpulse = MathUtils.clamp(this.m_motorImpulse + impulse, -maxImpulse, maxImpulse);
            float impulse2 = this.m_motorImpulse - oldImpulse;
            Vec2 P = this.pool.popVec2();
            P.set(this.m_axis).mulLocal(impulse2);
            float LA = impulse2 * this.m_a1;
            float LB = impulse2 * this.m_a2;
            vA.x -= P.x * mA;
            vA.y -= P.y * mA;
            wA2 -= iA * LA;
            vB.x += P.x * mB;
            vB.y += P.y * mB;
            wB2 += iB * LB;
            this.pool.pushVec2(1);
        }
        Vec2 Cdot1 = this.pool.popVec2();
        temp.set(vB).subLocal(vA);
        Cdot1.x = (Vec2.dot(this.m_perp, temp) + (this.m_s2 * wB2)) - (this.m_s1 * wA2);
        Cdot1.y = wB2 - wA2;
        if (this.m_enableLimit && this.m_limitState != LimitState.INACTIVE) {
            temp.set(vB).subLocal(vA);
            float Cdot2 = (Vec2.dot(this.m_axis, temp) + (this.m_a2 * wB2)) - (this.m_a1 * wA2);
            Vec3 Cdot = this.pool.popVec3();
            Cdot.set(Cdot1.x, Cdot1.y, Cdot2);
            Vec3 f1 = this.pool.popVec3();
            Vec3 df = this.pool.popVec3();
            f1.set(this.m_impulse);
            this.m_K.solve33ToOut(Cdot.negateLocal(), df);
            this.m_impulse.addLocal(df);
            if (this.m_limitState == LimitState.AT_LOWER) {
                this.m_impulse.z = MathUtils.max(this.m_impulse.z, 0.0f);
            } else if (this.m_limitState == LimitState.AT_UPPER) {
                this.m_impulse.z = MathUtils.min(this.m_impulse.z, 0.0f);
            }
            Vec2 b = this.pool.popVec2();
            Vec2 f2r = this.pool.popVec2();
            temp.set(this.m_K.ez.x, this.m_K.ez.y).mulLocal(this.m_impulse.z - f1.z);
            b.set(Cdot1).negateLocal().subLocal(temp);
            this.m_K.solve22ToOut(b, f2r);
            f2r.addLocal(f1.x, f1.y);
            this.m_impulse.x = f2r.x;
            this.m_impulse.y = f2r.y;
            df.set(this.m_impulse).subLocal(f1);
            Vec2 P2 = this.pool.popVec2();
            temp.set(this.m_axis).mulLocal(df.z);
            P2.set(this.m_perp).mulLocal(df.x).addLocal(temp);
            float LA2 = (df.x * this.m_s1) + df.y + (df.z * this.m_a1);
            float LB2 = (df.x * this.m_s2) + df.y + (df.z * this.m_a2);
            vA.x -= P2.x * mA;
            vA.y -= P2.y * mA;
            wA = wA2 - (iA * LA2);
            vB.x += P2.x * mB;
            vB.y += P2.y * mB;
            wB = wB2 + (iB * LB2);
            this.pool.pushVec2(3);
            this.pool.pushVec3(3);
        } else {
            Vec2 df2 = this.pool.popVec2();
            this.m_K.solve22ToOut(Cdot1.negateLocal(), df2);
            Cdot1.negateLocal();
            this.m_impulse.x += df2.x;
            this.m_impulse.y += df2.y;
            Vec2 P3 = this.pool.popVec2();
            P3.set(this.m_perp).mulLocal(df2.x);
            float LA3 = (df2.x * this.m_s1) + df2.y;
            float LB3 = (df2.x * this.m_s2) + df2.y;
            vA.x -= P3.x * mA;
            vA.y -= P3.y * mA;
            wA = wA2 - (iA * LA3);
            vB.x += P3.x * mB;
            vB.y += P3.y * mB;
            wB = wB2 + (iB * LB3);
            this.pool.pushVec2(2);
        }
        data.velocities[this.m_indexA].w = wA;
        data.velocities[this.m_indexB].w = wB;
        this.pool.pushVec2(2);
    }

    @Override // org.jbox2d.dynamics.joints.Joint
    public boolean solvePositionConstraints(SolverData data) {
        Rot qA = this.pool.popRot();
        Rot qB = this.pool.popRot();
        Vec2 rA = this.pool.popVec2();
        Vec2 rB = this.pool.popVec2();
        Vec2 d = this.pool.popVec2();
        Vec2 axis = this.pool.popVec2();
        Vec2 perp = this.pool.popVec2();
        Vec2 temp = this.pool.popVec2();
        Vec2 C1 = this.pool.popVec2();
        Vec3 impulse = this.pool.popVec3();
        Vec2 cA = data.positions[this.m_indexA].c;
        float aA = data.positions[this.m_indexA].a;
        Vec2 cB = data.positions[this.m_indexB].c;
        float aB = data.positions[this.m_indexB].a;
        qA.set(aA);
        qB.set(aB);
        float mA = this.m_invMassA;
        float mB = this.m_invMassB;
        float iA = this.m_invIA;
        float iB = this.m_invIB;
        Rot.mulToOutUnsafe(qA, temp.set(this.m_localAnchorA).subLocal(this.m_localCenterA), rA);
        Rot.mulToOutUnsafe(qB, temp.set(this.m_localAnchorB).subLocal(this.m_localCenterB), rB);
        d.set(cB).addLocal(rB).subLocal(cA).subLocal(rA);
        Rot.mulToOutUnsafe(qA, this.m_localXAxisA, axis);
        float a1 = Vec2.cross(temp.set(d).addLocal(rA), axis);
        float a2 = Vec2.cross(rB, axis);
        Rot.mulToOutUnsafe(qA, this.m_localYAxisA, perp);
        float s1 = Vec2.cross(temp.set(d).addLocal(rA), perp);
        float s2 = Vec2.cross(rB, perp);
        C1.x = Vec2.dot(perp, d);
        C1.y = (aB - aA) - this.m_referenceAngle;
        float linearError = MathUtils.abs(C1.x);
        float angularError = MathUtils.abs(C1.y);
        boolean active = false;
        float C2 = 0.0f;
        if (this.m_enableLimit) {
            float translation = Vec2.dot(axis, d);
            if (MathUtils.abs(this.m_upperTranslation - this.m_lowerTranslation) < 0.01f) {
                C2 = MathUtils.clamp(translation, -0.2f, 0.2f);
                linearError = MathUtils.max(linearError, MathUtils.abs(translation));
                active = true;
            } else if (translation <= this.m_lowerTranslation) {
                C2 = MathUtils.clamp((translation - this.m_lowerTranslation) + 0.005f, -0.2f, 0.0f);
                linearError = MathUtils.max(linearError, this.m_lowerTranslation - translation);
                active = true;
            } else if (translation >= this.m_upperTranslation) {
                C2 = MathUtils.clamp((translation - this.m_upperTranslation) - 0.005f, 0.0f, 0.2f);
                linearError = MathUtils.max(linearError, translation - this.m_upperTranslation);
                active = true;
            }
        }
        if (active) {
            float k11 = mA + mB + (iA * s1 * s1) + (iB * s2 * s2);
            float k12 = (iA * s1) + (iB * s2);
            float k13 = (iA * s1 * a1) + (iB * s2 * a2);
            float k22 = iA + iB;
            if (k22 == 0.0f) {
                k22 = 1.0f;
            }
            float k23 = (iA * a1) + (iB * a2);
            float k33 = mA + mB + (iA * a1 * a1) + (iB * a2 * a2);
            Mat33 K = this.pool.popMat33();
            K.ex.set(k11, k12, k13);
            K.ey.set(k12, k22, k23);
            K.ez.set(k13, k23, k33);
            Vec3 C = this.pool.popVec3();
            C.x = C1.x;
            C.y = C1.y;
            C.z = C2;
            K.solve33ToOut(C.negateLocal(), impulse);
            this.pool.pushVec3(1);
            this.pool.pushMat33(1);
        } else {
            float k112 = mA + mB + (iA * s1 * s1) + (iB * s2 * s2);
            float k122 = (iA * s1) + (iB * s2);
            float k222 = iA + iB;
            if (k222 == 0.0f) {
                k222 = 1.0f;
            }
            Mat22 K2 = this.pool.popMat22();
            K2.ex.set(k112, k122);
            K2.ey.set(k122, k222);
            K2.solveToOut(C1.negateLocal(), temp);
            C1.negateLocal();
            impulse.x = temp.x;
            impulse.y = temp.y;
            impulse.z = 0.0f;
            this.pool.pushMat22(1);
        }
        float Px = (impulse.x * perp.x) + (impulse.z * axis.x);
        float Py = (impulse.x * perp.y) + (impulse.z * axis.y);
        float LA = (impulse.x * s1) + impulse.y + (impulse.z * a1);
        float LB = (impulse.x * s2) + impulse.y + (impulse.z * a2);
        cA.x -= mA * Px;
        cA.y -= mA * Py;
        cB.x += mB * Px;
        cB.y += mB * Py;
        data.positions[this.m_indexA].a = aA - (iA * LA);
        data.positions[this.m_indexB].a = aB + (iB * LB);
        this.pool.pushVec2(7);
        this.pool.pushVec3(1);
        this.pool.pushRot(2);
        return linearError <= 0.005f && angularError <= 0.03490659f;
    }
}
