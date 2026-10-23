###### Class org.jbox2d.dynamics.joints.PrismaticJoint (org.jbox2d.dynamics.joints.PrismaticJoint)
.class public Lorg/jbox2d/dynamics/joints/PrismaticJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "PrismaticJoint.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final m_K:Lorg/jbox2d/common/Mat33;

.field private m_a1:F

.field private m_a2:F

.field private final m_axis:Lorg/jbox2d/common/Vec2;

.field private m_enableLimit:Z

.field private m_enableMotor:Z

.field private final m_impulse:Lorg/jbox2d/common/Vec3;

.field private m_indexA:I

.field private m_indexB:I

.field private m_invIA:F

.field private m_invIB:F

.field private m_invMassA:F

.field private m_invMassB:F

.field private m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

.field protected final m_localAnchorA:Lorg/jbox2d/common/Vec2;

.field protected final m_localAnchorB:Lorg/jbox2d/common/Vec2;

.field private final m_localCenterA:Lorg/jbox2d/common/Vec2;

.field private final m_localCenterB:Lorg/jbox2d/common/Vec2;

.field protected final m_localXAxisA:Lorg/jbox2d/common/Vec2;

.field protected final m_localYAxisA:Lorg/jbox2d/common/Vec2;

.field private m_lowerTranslation:F

.field private m_maxMotorForce:F

.field private m_motorImpulse:F

.field private m_motorMass:F

.field private m_motorSpeed:F

.field private final m_perp:Lorg/jbox2d/common/Vec2;

.field protected m_referenceAngle:F

.field private m_s1:F

.field private m_s2:F

.field private m_upperTranslation:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 111
    const-class v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/PrismaticJointDef;)V
    .registers 7
    .param p1, "argWorld"    # Lorg/jbox2d/pooling/IWorldPool;
    .param p2, "def"    # Lorg/jbox2d/dynamics/joints/PrismaticJointDef;

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-direct {p0, p1, p2}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 132
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    .line 133
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    .line 146
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(Lorg/jbox2d/common/Vec2;)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 147
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(Lorg/jbox2d/common/Vec2;)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 148
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAxisA:Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(Lorg/jbox2d/common/Vec2;)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxisA:Lorg/jbox2d/common/Vec2;

    .line 149
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxisA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 150
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localYAxisA:Lorg/jbox2d/common/Vec2;

    .line 151
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxisA:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localYAxisA:Lorg/jbox2d/common/Vec2;

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 152
    iget v0, p2, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->referenceAngle:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_referenceAngle:F

    .line 154
    new-instance v0, Lorg/jbox2d/common/Vec3;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec3;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    .line 155
    iput v3, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorMass:F

    .line 156
    iput v3, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorImpulse:F

    .line 158
    iget v0, p2, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->lowerTranslation:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_lowerTranslation:F

    .line 159
    iget v0, p2, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->upperTranslation:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_upperTranslation:F

    .line 160
    iget v0, p2, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->maxMotorForce:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_maxMotorForce:F

    .line 161
    iget v0, p2, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->motorSpeed:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorSpeed:F

    .line 162
    iget-boolean v0, p2, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->enableLimit:Z

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableLimit:Z

    .line 163
    iget-boolean v0, p2, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->enableMotor:Z

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableMotor:Z

    .line 164
    sget-object v0, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE:Lorg/jbox2d/dynamics/joints/LimitState;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 166
    new-instance v0, Lorg/jbox2d/common/Mat33;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat33;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_K:Lorg/jbox2d/common/Mat33;

    .line 167
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_axis:Lorg/jbox2d/common/Vec2;

    .line 168
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_perp:Lorg/jbox2d/common/Vec2;

    .line 169
    return-void
.end method


# virtual methods
.method public enableLimit(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x1

    .line 275
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableLimit:Z

    if-eq p1, v0, :cond_16

    .line 276
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 277
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 278
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableLimit:Z

    .line 279
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    const/4 v1, 0x0

    iput v1, v0, Lorg/jbox2d/common/Vec3;->z:F

    .line 281
    :cond_16
    return-void
.end method

.method public enableMotor(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x1

    .line 333
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 334
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 335
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableMotor:Z

    .line 336
    return-void
.end method

.method public getAnchorA(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 181
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 182
    return-void
.end method

.method public getAnchorB(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 186
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 187
    return-void
.end method

.method public getJointSpeed()F
    .registers 21

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    .line 207
    .local v3, "bA":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    .line 209
    .local v4, "bB":Lorg/jbox2d/dynamics/Body;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v11

    .line 210
    .local v11, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 211
    .local v8, "rA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v9

    .line 212
    .local v9, "rB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 213
    .local v6, "p1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 214
    .local v7, "p2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 215
    .local v5, "d":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 216
    .local v2, "axis":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v12

    .line 217
    .local v12, "temp2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v13

    .line 219
    .local v13, "temp3":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    iget-object v0, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 220
    iget-object v0, v3, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v11, v8}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    iget-object v0, v4, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 223
    iget-object v0, v4, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v11, v9}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 225
    iget-object v0, v3, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 226
    iget-object v0, v4, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 228
    invoke-virtual {v5, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 229
    iget-object v0, v3, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxisA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 231
    iget-object v14, v3, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    .line 232
    .local v14, "vA":Lorg/jbox2d/common/Vec2;
    iget-object v15, v4, Lorg/jbox2d/dynamics/Body;->m_linearVelocity:Lorg/jbox2d/common/Vec2;

    .line 233
    .local v15, "vB":Lorg/jbox2d/common/Vec2;
    iget v0, v3, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v16, v0

    .line 234
    .local v16, "wA":F
    iget v0, v4, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    move/from16 v17, v0

    .line 237
    .local v17, "wB":F
    move/from16 v0, v16

    invoke-static {v0, v2, v11}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 238
    move/from16 v0, v17

    invoke-static {v0, v9, v12}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 239
    move/from16 v0, v16

    invoke-static {v0, v8, v13}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 241
    invoke-virtual {v12, v15}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 242
    invoke-static {v5, v11}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v18

    invoke-static {v2, v12}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v19

    add-float v10, v18, v19

    .line 244
    .local v10, "speed":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    invoke-interface/range {v18 .. v19}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 246
    return v10
.end method

.method public getJointTranslation()F
    .registers 7

    .prologue
    .line 250
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v4}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .local v1, "pA":Lorg/jbox2d/common/Vec2;
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v4}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .local v2, "pB":Lorg/jbox2d/common/Vec2;
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v4}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 251
    .local v0, "axis":Lorg/jbox2d/common/Vec2;
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v5, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5, v1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 252
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v5, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5, v2}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 253
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v5, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxisA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5, v0}, Lorg/jbox2d/dynamics/Body;->getWorldVectorToOutUnsafe(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 254
    invoke-virtual {v2, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 255
    invoke-static {v2, v0}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v3

    .line 256
    .local v3, "translation":F
    iget-object v4, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 257
    return v3
.end method

.method public getLocalAnchorA()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getLocalAnchorB()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getLocalAxisA()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxisA:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getLowerLimit()F
    .registers 2

    .prologue
    .line 289
    iget v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_lowerTranslation:F

    return v0
.end method

.method public getMaxMotorForce()F
    .registers 2

    .prologue
    .line 380
    iget v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_maxMotorForce:F

    return v0
.end method

.method public getMotorForce(F)F
    .registers 3
    .param p1, "inv_dt"    # F

    .prologue
    .line 376
    iget v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorImpulse:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public getMotorSpeed()F
    .registers 2

    .prologue
    .line 355
    iget v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorSpeed:F

    return v0
.end method

.method public getReactionForce(FLorg/jbox2d/common/Vec2;)V
    .registers 7
    .param p1, "inv_dt"    # F
    .param p2, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 191
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v1}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 192
    .local v0, "temp":Lorg/jbox2d/common/Vec2;
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_axis:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorImpulse:F

    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    iget v3, v3, Lorg/jbox2d/common/Vec3;->z:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 193
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_perp:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    iget v2, v2, Lorg/jbox2d/common/Vec3;->x:F

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 194
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 195
    return-void
.end method

.method public getReactionTorque(F)F
    .registers 3
    .param p1, "inv_dt"    # F

    .prologue
    .line 199
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public getReferenceAngle()F
    .registers 2

    .prologue
    .line 384
    iget v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_referenceAngle:F

    return v0
.end method

.method public getUpperLimit()F
    .registers 2

    .prologue
    .line 298
    iget v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_upperTranslation:F

    return v0
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 37
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexA:I

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexB:I

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_invMassA:F

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_invMassB:F

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_invIA:F

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_invIB:F

    .line 402
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexA:I

    move/from16 v33, v0

    aget-object v32, v32, v33

    move-object/from16 v0, v32

    iget-object v9, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 403
    .local v9, "cA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexA:I

    move/from16 v33, v0

    aget-object v32, v32, v33

    move-object/from16 v0, v32

    iget v7, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 404
    .local v7, "aA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexA:I

    move/from16 v33, v0

    aget-object v32, v32, v33

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    .line 405
    .local v28, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexA:I

    move/from16 v33, v0

    aget-object v32, v32, v33

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v30, v0

    .line 407
    .local v30, "wA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexB:I

    move/from16 v33, v0

    aget-object v32, v32, v33

    move-object/from16 v0, v32

    iget-object v10, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 408
    .local v10, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexB:I

    move/from16 v33, v0

    aget-object v32, v32, v33

    move-object/from16 v0, v32

    iget v8, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 409
    .local v8, "aB":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexB:I

    move/from16 v33, v0

    aget-object v32, v32, v33

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v29, v0

    .line 410
    .local v29, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexB:I

    move/from16 v33, v0

    aget-object v32, v32, v33

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v31, v0

    .line 412
    .local v31, "wB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v23

    .line 413
    .local v23, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v24

    .line 414
    .local v24, "qB":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v11

    .line 415
    .local v11, "d":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v27

    .line 416
    .local v27, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v25

    .line 417
    .local v25, "rA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v26

    .line 419
    .local v26, "rB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 420
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 425
    invoke-virtual {v11, v10}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 427
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_invMassA:F

    move/from16 v21, v0

    .local v21, "mA":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_invMassB:F

    move/from16 v22, v0

    .line 428
    .local v22, "mB":F
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_invIA:F

    .local v12, "iA":F
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_invIB:F

    .line 432
    .local v13, "iB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxisA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_axis:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 433
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_axis:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a1:F

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_axis:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a2:F

    .line 437
    add-float v32, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a1:F

    move/from16 v33, v0

    mul-float v33, v33, v12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a1:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a2:F

    move/from16 v33, v0

    mul-float v33, v33, v13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a2:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorMass:F

    .line 438
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorMass:F

    move/from16 v32, v0

    const/16 v33, 0x0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_27d

    .line 439
    const/high16 v32, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorMass:F

    move/from16 v33, v0

    div-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorMass:F

    .line 445
    :cond_27d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localYAxisA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_perp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v33, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 447
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_perp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s1:F

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_perp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s2:F

    .line 451
    add-float v32, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s1:F

    move/from16 v33, v0

    mul-float v33, v33, v12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s1:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s2:F

    move/from16 v33, v0

    mul-float v33, v33, v13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s2:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v15, v32, v33

    .line 452
    .local v15, "k11":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s1:F

    move/from16 v32, v0

    mul-float v32, v32, v12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s2:F

    move/from16 v33, v0

    mul-float v33, v33, v13

    add-float v16, v32, v33

    .line 453
    .local v16, "k12":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s1:F

    move/from16 v32, v0

    mul-float v32, v32, v12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a1:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s2:F

    move/from16 v33, v0

    mul-float v33, v33, v13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a2:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v17, v32, v33

    .line 454
    .local v17, "k13":F
    add-float v18, v12, v13

    .line 455
    .local v18, "k22":F
    const/16 v32, 0x0

    cmpl-float v32, v18, v32

    if-nez v32, :cond_32b

    .line 457
    const/high16 v18, 0x3f800000    # 1.0f

    .line 459
    :cond_32b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a1:F

    move/from16 v32, v0

    mul-float v32, v32, v12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a2:F

    move/from16 v33, v0

    mul-float v33, v33, v13

    add-float v19, v32, v33

    .line 460
    .local v19, "k23":F
    add-float v32, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a1:F

    move/from16 v33, v0

    mul-float v33, v33, v12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a1:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a2:F

    move/from16 v33, v0

    mul-float v33, v33, v13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a2:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v20, v32, v33

    .line 462
    .local v20, "k33":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_K:Lorg/jbox2d/common/Mat33;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Lorg/jbox2d/common/Vec3;->set(FFF)Lorg/jbox2d/common/Vec3;

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_K:Lorg/jbox2d/common/Mat33;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/jbox2d/common/Vec3;->set(FFF)Lorg/jbox2d/common/Vec3;

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_K:Lorg/jbox2d/common/Mat33;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/jbox2d/common/Vec3;->set(FFF)Lorg/jbox2d/common/Vec3;

    .line 468
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableLimit:Z

    move/from16 v32, v0

    if-eqz v32, :cond_614

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_axis:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v11}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v14

    .line 471
    .local v14, "jointTranslation":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_upperTranslation:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_lowerTranslation:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    invoke-static/range {v32 .. v32}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v32

    const v33, 0x3c23d70a    # 0.01f

    cmpg-float v32, v32, v33

    if-gez v32, :cond_59c

    .line 472
    sget-object v32, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 492
    .end local v14    # "jointTranslation":F
    :cond_3db
    :goto_3db
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableMotor:Z

    move/from16 v32, v0

    if-nez v32, :cond_3eb

    .line 493
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorImpulse:F

    .line 496
    :cond_3eb
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    move/from16 v32, v0

    if-eqz v32, :cond_62c

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/jbox2d/common/Vec3;->mulLocal(F)Lorg/jbox2d/common/Vec3;

    .line 499
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorImpulse:F

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorImpulse:F

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 502
    .local v6, "P":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_axis:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorImpulse:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v34, v0

    add-float v33, v33, v34

    invoke-virtual/range {v32 .. v33}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_perp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s1:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v33, v0

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorImpulse:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v34, v0

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a1:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v4, v32, v33

    .line 506
    .local v4, "LA":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s2:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v33, v0

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorImpulse:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v34, v0

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a2:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    add-float v5, v32, v33

    .line 508
    .local v5, "LB":F
    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v33, v0

    mul-float v33, v33, v21

    sub-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 509
    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v33, v0

    mul-float v33, v33, v21

    sub-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 510
    mul-float v32, v12, v4

    sub-float v30, v30, v32

    .line 512
    move-object/from16 v0, v29

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v32, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v33, v0

    mul-float v33, v33, v22

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v29

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 513
    move-object/from16 v0, v29

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v33, v0

    mul-float v33, v33, v22

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v29

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 514
    mul-float v32, v13, v5

    add-float v31, v31, v32

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-interface/range {v32 .. v33}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 523
    .end local v4    # "LA":F
    .end local v5    # "LB":F
    .end local v6    # "P":Lorg/jbox2d/common/Vec2;
    :goto_55d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexA:I

    move/from16 v33, v0

    aget-object v32, v32, v33

    move/from16 v0, v30

    move-object/from16 v1, v32

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 525
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexB:I

    move/from16 v33, v0

    aget-object v32, v32, v33

    move/from16 v0, v31

    move-object/from16 v1, v32

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v32, v0

    const/16 v33, 0x2

    invoke-interface/range {v32 .. v33}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v32, v0

    const/16 v33, 0x4

    invoke-interface/range {v32 .. v33}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 529
    return-void

    .line 473
    .restart local v14    # "jointTranslation":F
    :cond_59c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_lowerTranslation:F

    move/from16 v32, v0

    cmpg-float v32, v14, v32

    if-gtz v32, :cond_5cc

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v32, v0

    sget-object v33, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_3db

    .line 475
    sget-object v32, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    goto/16 :goto_3db

    .line 478
    :cond_5cc
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_upperTranslation:F

    move/from16 v32, v0

    cmpl-float v32, v14, v32

    if-ltz v32, :cond_5fc

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v32, v0

    sget-object v33, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_3db

    .line 480
    sget-object v32, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    goto/16 :goto_3db

    .line 484
    :cond_5fc
    sget-object v32, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    goto/16 :goto_3db

    .line 488
    .end local v14    # "jointTranslation":F
    :cond_614
    sget-object v32, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    goto/16 :goto_3db

    .line 518
    :cond_62c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/jbox2d/common/Vec3;->setZero()V

    .line 519
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorImpulse:F

    goto/16 :goto_55d
.end method

.method public isLimitEnabled()Z
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableLimit:Z

    return v0
.end method

.method public isMotorEnabled()Z
    .registers 2

    .prologue
    .line 324
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableMotor:Z

    return v0
.end method

.method public setLimits(FF)V
    .registers 5
    .param p1, "lower"    # F
    .param p2, "upper"    # F

    .prologue
    const/4 v1, 0x1

    .line 308
    sget-boolean v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    cmpg-float v0, p1, p2

    if-lez v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 309
    :cond_f
    iget v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_lowerTranslation:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1b

    iget v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_upperTranslation:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2e

    .line 310
    :cond_1b
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 311
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 312
    iput p1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_lowerTranslation:F

    .line 313
    iput p2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_upperTranslation:F

    .line 314
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    const/4 v1, 0x0

    iput v1, v0, Lorg/jbox2d/common/Vec3;->z:F

    .line 316
    :cond_2e
    return-void
.end method

.method public setMaxMotorForce(F)V
    .registers 4
    .param p1, "force"    # F

    .prologue
    const/4 v1, 0x1

    .line 364
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 365
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 366
    iput p1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_maxMotorForce:F

    .line 367
    return-void
.end method

.method public setMotorSpeed(F)V
    .registers 4
    .param p1, "speed"    # F

    .prologue
    const/4 v1, 0x1

    .line 344
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 345
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 346
    iput p1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorSpeed:F

    .line 347
    return-void
.end method

.method public solvePositionConstraints(Lorg/jbox2d/dynamics/SolverData;)Z
    .registers 48
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v35

    .line 668
    .local v35, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v36

    .line 669
    .local v36, "qB":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v37

    .line 670
    .local v37, "rA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v38

    .line 671
    .local v38, "rB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v21

    .line 672
    .local v21, "d":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v18

    .line 673
    .local v18, "axis":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v34

    .line 674
    .local v34, "perp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v41

    .line 675
    .local v41, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 677
    .local v5, "C1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lorg/jbox2d/pooling/IWorldPool;->popVec3()Lorg/jbox2d/common/Vec3;

    move-result-object v24

    .line 679
    .local v24, "impulse":Lorg/jbox2d/common/Vec3;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexA:I

    move/from16 v44, v0

    aget-object v43, v43, v44

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    .line 680
    .local v19, "cA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexA:I

    move/from16 v44, v0

    aget-object v43, v43, v44

    move-object/from16 v0, v43

    iget v14, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 681
    .local v14, "aA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexB:I

    move/from16 v44, v0

    aget-object v43, v43, v44

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    .line 682
    .local v20, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexB:I

    move/from16 v44, v0

    aget-object v43, v43, v44

    move-object/from16 v0, v43

    iget v15, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 684
    .local v15, "aB":F
    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 685
    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 687
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_invMassA:F

    move/from16 v32, v0

    .local v32, "mA":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_invMassB:F

    move/from16 v33, v0

    .line 688
    .local v33, "mB":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_invIA:F

    move/from16 v22, v0

    .local v22, "iA":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_invIB:F

    move/from16 v23, v0

    .line 691
    .local v23, "iB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v43, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v43

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v43, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v43

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 693
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxisA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v43, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 696
    move-object/from16 v0, v41

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v12

    .line 697
    .local v12, "a1":F
    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v13

    .line 698
    .local v13, "a2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localYAxisA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v43, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 700
    move-object/from16 v0, v41

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v39

    .line 701
    .local v39, "s1":F
    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v40

    .line 703
    .local v40, "s2":F
    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v43

    move/from16 v0, v43

    iput v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 704
    sub-float v43, v15, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_referenceAngle:F

    move/from16 v44, v0

    sub-float v43, v43, v44

    move/from16 v0, v43

    iput v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 706
    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v31

    .line 707
    .local v31, "linearError":F
    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v17

    .line 709
    .local v17, "angularError":F
    const/16 v16, 0x0

    .line 710
    .local v16, "active":Z
    const/4 v6, 0x0

    .line 711
    .local v6, "C2":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableLimit:Z

    move/from16 v43, v0

    if-eqz v43, :cond_1ff

    .line 712
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v42

    .line 713
    .local v42, "translation":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_upperTranslation:F

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_lowerTranslation:F

    move/from16 v44, v0

    sub-float v43, v43, v44

    invoke-static/range {v43 .. v43}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v43

    const v44, 0x3c23d70a    # 0.01f

    cmpg-float v43, v43, v44

    if-gez v43, :cond_3bf

    .line 715
    const v43, -0x41b33333    # -0.2f

    const v44, 0x3e4ccccd    # 0.2f

    invoke-static/range {v42 .. v44}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v6

    .line 718
    invoke-static/range {v42 .. v42}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v43

    move/from16 v0, v31

    move/from16 v1, v43

    invoke-static {v0, v1}, Lorg/jbox2d/common/MathUtils;->max(FF)F

    move-result v31

    .line 719
    const/16 v16, 0x1

    .line 737
    .end local v42    # "translation":F
    :cond_1ff
    :goto_1ff
    if-eqz v16, :cond_427

    .line 738
    add-float v43, v32, v33

    mul-float v44, v22, v39

    mul-float v44, v44, v39

    add-float v43, v43, v44

    mul-float v44, v23, v40

    mul-float v44, v44, v40

    add-float v25, v43, v44

    .line 739
    .local v25, "k11":F
    mul-float v43, v22, v39

    mul-float v44, v23, v40

    add-float v26, v43, v44

    .line 740
    .local v26, "k12":F
    mul-float v43, v22, v39

    mul-float v43, v43, v12

    mul-float v44, v23, v40

    mul-float v44, v44, v13

    add-float v27, v43, v44

    .line 741
    .local v27, "k13":F
    add-float v28, v22, v23

    .line 742
    .local v28, "k22":F
    const/16 v43, 0x0

    cmpl-float v43, v28, v43

    if-nez v43, :cond_229

    .line 744
    const/high16 v28, 0x3f800000    # 1.0f

    .line 746
    :cond_229
    mul-float v43, v22, v12

    mul-float v44, v23, v13

    add-float v29, v43, v44

    .line 747
    .local v29, "k23":F
    add-float v43, v32, v33

    mul-float v44, v22, v12

    mul-float v44, v44, v12

    add-float v43, v43, v44

    mul-float v44, v23, v13

    mul-float v44, v44, v13

    add-float v30, v43, v44

    .line 749
    .local v30, "k33":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lorg/jbox2d/pooling/IWorldPool;->popMat33()Lorg/jbox2d/common/Mat33;

    move-result-object v7

    .line 750
    .local v7, "K":Lorg/jbox2d/common/Mat33;
    iget-object v0, v7, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/jbox2d/common/Vec3;->set(FFF)Lorg/jbox2d/common/Vec3;

    .line 751
    iget-object v0, v7, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/jbox2d/common/Vec3;->set(FFF)Lorg/jbox2d/common/Vec3;

    .line 752
    iget-object v0, v7, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v27

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lorg/jbox2d/common/Vec3;->set(FFF)Lorg/jbox2d/common/Vec3;

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lorg/jbox2d/pooling/IWorldPool;->popVec3()Lorg/jbox2d/common/Vec3;

    move-result-object v4

    .line 755
    .local v4, "C":Lorg/jbox2d/common/Vec3;
    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v43, v0

    move/from16 v0, v43

    iput v0, v4, Lorg/jbox2d/common/Vec3;->x:F

    .line 756
    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v43, v0

    move/from16 v0, v43

    iput v0, v4, Lorg/jbox2d/common/Vec3;->y:F

    .line 757
    iput v6, v4, Lorg/jbox2d/common/Vec3;->z:F

    .line 759
    invoke-virtual {v4}, Lorg/jbox2d/common/Vec3;->negateLocal()Lorg/jbox2d/common/Vec3;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Lorg/jbox2d/common/Mat33;->solve33ToOut(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    invoke-interface/range {v43 .. v44}, Lorg/jbox2d/pooling/IWorldPool;->pushVec3(I)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    invoke-interface/range {v43 .. v44}, Lorg/jbox2d/pooling/IWorldPool;->pushMat33(I)V

    .line 785
    .end local v4    # "C":Lorg/jbox2d/common/Vec3;
    .end local v7    # "K":Lorg/jbox2d/common/Mat33;
    .end local v27    # "k13":F
    .end local v29    # "k23":F
    .end local v30    # "k33":F
    :goto_2b1
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v43, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v44, v0

    mul-float v43, v43, v44

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v44, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v45, v0

    mul-float v44, v44, v45

    add-float v10, v43, v44

    .line 786
    .local v10, "Px":F
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v43, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v44, v0

    mul-float v43, v43, v44

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v44, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v45, v0

    mul-float v44, v44, v45

    add-float v11, v43, v44

    .line 787
    .local v11, "Py":F
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v43, v0

    mul-float v43, v43, v39

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v44, v0

    add-float v43, v43, v44

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v44, v0

    mul-float v44, v44, v12

    add-float v8, v43, v44

    .line 788
    .local v8, "LA":F
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v43, v0

    mul-float v43, v43, v40

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v44, v0

    add-float v43, v43, v44

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v44, v0

    mul-float v44, v44, v13

    add-float v9, v43, v44

    .line 790
    .local v9, "LB":F
    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v43, v0

    mul-float v44, v32, v10

    sub-float v43, v43, v44

    move/from16 v0, v43

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 791
    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v43, v0

    mul-float v44, v32, v11

    sub-float v43, v43, v44

    move/from16 v0, v43

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 792
    mul-float v43, v22, v8

    sub-float v14, v14, v43

    .line 793
    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v43, v0

    mul-float v44, v33, v10

    add-float v43, v43, v44

    move/from16 v0, v43

    move-object/from16 v1, v20

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 794
    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v43, v0

    mul-float v44, v33, v11

    add-float v43, v43, v44

    move/from16 v0, v43

    move-object/from16 v1, v20

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 795
    mul-float v43, v23, v9

    add-float v15, v15, v43

    .line 798
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexA:I

    move/from16 v44, v0

    aget-object v43, v43, v44

    move-object/from16 v0, v43

    iput v14, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 800
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexB:I

    move/from16 v44, v0

    aget-object v43, v43, v44

    move-object/from16 v0, v43

    iput v15, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    const/16 v44, 0x7

    invoke-interface/range {v43 .. v44}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    invoke-interface/range {v43 .. v44}, Lorg/jbox2d/pooling/IWorldPool;->pushVec3(I)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    const/16 v44, 0x2

    invoke-interface/range {v43 .. v44}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 806
    const v43, 0x3ba3d70a    # 0.005f

    cmpg-float v43, v31, v43

    if-gtz v43, :cond_4a4

    const v43, 0x3d0efa36

    cmpg-float v43, v17, v43

    if-gtz v43, :cond_4a4

    const/16 v43, 0x1

    :goto_3be
    return v43

    .line 720
    .end local v8    # "LA":F
    .end local v9    # "LB":F
    .end local v10    # "Px":F
    .end local v11    # "Py":F
    .end local v25    # "k11":F
    .end local v26    # "k12":F
    .end local v28    # "k22":F
    .restart local v42    # "translation":F
    :cond_3bf
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_lowerTranslation:F

    move/from16 v43, v0

    cmpg-float v43, v42, v43

    if-gtz v43, :cond_3f3

    .line 722
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_lowerTranslation:F

    move/from16 v43, v0

    sub-float v43, v42, v43

    const v44, 0x3ba3d70a    # 0.005f

    add-float v43, v43, v44

    const v44, -0x41b33333    # -0.2f

    const/16 v45, 0x0

    invoke-static/range {v43 .. v45}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v6

    .line 725
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_lowerTranslation:F

    move/from16 v43, v0

    sub-float v43, v43, v42

    move/from16 v0, v31

    move/from16 v1, v43

    invoke-static {v0, v1}, Lorg/jbox2d/common/MathUtils;->max(FF)F

    move-result v31

    .line 726
    const/16 v16, 0x1

    goto/16 :goto_1ff

    .line 727
    :cond_3f3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_upperTranslation:F

    move/from16 v43, v0

    cmpl-float v43, v42, v43

    if-ltz v43, :cond_1ff

    .line 729
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_upperTranslation:F

    move/from16 v43, v0

    sub-float v43, v42, v43

    const v44, 0x3ba3d70a    # 0.005f

    sub-float v43, v43, v44

    const/16 v44, 0x0

    const v45, 0x3e4ccccd    # 0.2f

    invoke-static/range {v43 .. v45}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v6

    .line 732
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_upperTranslation:F

    move/from16 v43, v0

    sub-float v43, v42, v43

    move/from16 v0, v31

    move/from16 v1, v43

    invoke-static {v0, v1}, Lorg/jbox2d/common/MathUtils;->max(FF)F

    move-result v31

    .line 733
    const/16 v16, 0x1

    goto/16 :goto_1ff

    .line 763
    .end local v42    # "translation":F
    :cond_427
    add-float v43, v32, v33

    mul-float v44, v22, v39

    mul-float v44, v44, v39

    add-float v43, v43, v44

    mul-float v44, v23, v40

    mul-float v44, v44, v40

    add-float v25, v43, v44

    .line 764
    .restart local v25    # "k11":F
    mul-float v43, v22, v39

    mul-float v44, v23, v40

    add-float v26, v43, v44

    .line 765
    .restart local v26    # "k12":F
    add-float v28, v22, v23

    .line 766
    .restart local v28    # "k22":F
    const/16 v43, 0x0

    cmpl-float v43, v28, v43

    if-nez v43, :cond_445

    .line 767
    const/high16 v28, 0x3f800000    # 1.0f

    .line 770
    :cond_445
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lorg/jbox2d/pooling/IWorldPool;->popMat22()Lorg/jbox2d/common/Mat22;

    move-result-object v7

    .line 771
    .local v7, "K":Lorg/jbox2d/common/Mat22;
    iget-object v0, v7, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 772
    iget-object v0, v7, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 775
    invoke-virtual {v5}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v7, v0, v1}, Lorg/jbox2d/common/Mat22;->solveToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 776
    invoke-virtual {v5}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 778
    move-object/from16 v0, v41

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 779
    move-object/from16 v0, v41

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 780
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    invoke-interface/range {v43 .. v44}, Lorg/jbox2d/pooling/IWorldPool;->pushMat22(I)V

    goto/16 :goto_2b1

    .line 806
    .end local v7    # "K":Lorg/jbox2d/common/Mat22;
    .restart local v8    # "LA":F
    .restart local v9    # "LB":F
    .restart local v10    # "Px":F
    .restart local v11    # "Py":F
    :cond_4a4
    const/16 v43, 0x0

    goto/16 :goto_3be
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 30
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 533
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexA:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    .line 534
    .local v21, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexA:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v23, v0

    .line 535
    .local v23, "wA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexB:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    .line 536
    .local v22, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexB:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v24, v0

    .line 538
    .local v24, "wB":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_invMassA:F

    move/from16 v16, v0

    .local v16, "mA":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_invMassB:F

    move/from16 v17, v0

    .line 539
    .local v17, "mB":F
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_invIA:F

    .local v13, "iA":F
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_invIB:F

    .line 541
    .local v14, "iB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v20

    .line 544
    .local v20, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableMotor:Z

    move/from16 v25, v0

    if-eqz v25, :cond_192

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_192

    .line 545
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_axis:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a2:F

    move/from16 v26, v0

    mul-float v26, v26, v24

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a1:F

    move/from16 v26, v0

    mul-float v26, v26, v23

    sub-float v3, v25, v26

    .line 547
    .local v3, "Cdot":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorMass:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorSpeed:F

    move/from16 v26, v0

    sub-float v26, v26, v3

    mul-float v15, v25, v26

    .line 548
    .local v15, "impulse":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorImpulse:F

    move/from16 v19, v0

    .line 549
    .local v19, "oldImpulse":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_maxMotorForce:F

    move/from16 v26, v0

    mul-float v18, v25, v26

    .line 550
    .local v18, "maxImpulse":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorImpulse:F

    move/from16 v25, v0

    add-float v25, v25, v15

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorImpulse:F

    .line 551
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_motorImpulse:F

    move/from16 v25, v0

    sub-float v15, v25, v19

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 554
    .local v8, "P":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_axis:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 555
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a1:F

    move/from16 v25, v0

    mul-float v6, v15, v25

    .line 556
    .local v6, "LA":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a2:F

    move/from16 v25, v0

    mul-float v7, v15, v25

    .line 558
    .local v7, "LB":F
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    iget v0, v8, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v26, v26, v16

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 559
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    iget v0, v8, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v26, v26, v16

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 560
    mul-float v25, v13, v6

    sub-float v23, v23, v25

    .line 562
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    iget v0, v8, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v26, v26, v17

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 563
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    iget v0, v8, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v26, v26, v17

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 564
    mul-float v25, v14, v7

    add-float v24, v24, v25

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 569
    .end local v3    # "Cdot":F
    .end local v6    # "LA":F
    .end local v7    # "LB":F
    .end local v8    # "P":Lorg/jbox2d/common/Vec2;
    .end local v15    # "impulse":F
    .end local v18    # "maxImpulse":F
    .end local v19    # "oldImpulse":F
    :cond_192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 570
    .local v4, "Cdot1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_perp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s2:F

    move/from16 v26, v0

    mul-float v26, v26, v24

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s1:F

    move/from16 v26, v0

    mul-float v26, v26, v23

    sub-float v25, v25, v26

    move/from16 v0, v25

    iput v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 572
    sub-float v25, v24, v23

    move/from16 v0, v25

    iput v0, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 575
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_enableLimit:Z

    move/from16 v25, v0

    if-eqz v25, :cond_499

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_499

    .line 578
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_axis:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a2:F

    move/from16 v26, v0

    mul-float v26, v26, v24

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a1:F

    move/from16 v26, v0

    mul-float v26, v26, v23

    sub-float v5, v25, v26

    .line 581
    .local v5, "Cdot2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->popVec3()Lorg/jbox2d/common/Vec3;

    move-result-object v3

    .line 582
    .local v3, "Cdot":Lorg/jbox2d/common/Vec3;
    iget v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1, v5}, Lorg/jbox2d/common/Vec3;->set(FFF)Lorg/jbox2d/common/Vec3;

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->popVec3()Lorg/jbox2d/common/Vec3;

    move-result-object v11

    .line 585
    .local v11, "f1":Lorg/jbox2d/common/Vec3;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->popVec3()Lorg/jbox2d/common/Vec3;

    move-result-object v10

    .line 587
    .local v10, "df":Lorg/jbox2d/common/Vec3;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lorg/jbox2d/common/Vec3;->set(Lorg/jbox2d/common/Vec3;)Lorg/jbox2d/common/Vec3;

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_K:Lorg/jbox2d/common/Mat33;

    move-object/from16 v25, v0

    invoke-virtual {v3}, Lorg/jbox2d/common/Vec3;->negateLocal()Lorg/jbox2d/common/Vec3;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Lorg/jbox2d/common/Mat33;->solve33ToOut(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lorg/jbox2d/common/Vec3;->addLocal(Lorg/jbox2d/common/Vec3;)Lorg/jbox2d/common/Vec3;

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_46b

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lorg/jbox2d/common/MathUtils;->max(FF)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 600
    :cond_29e
    :goto_29e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v9

    .line 601
    .local v9, "b":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v12

    .line 603
    .local v12, "f2r":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_K:Lorg/jbox2d/common/Mat33;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_K:Lorg/jbox2d/common/Mat33;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v26, v0

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v26, v0

    iget v0, v11, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 604
    invoke-virtual {v9, v4}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_K:Lorg/jbox2d/common/Mat33;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9, v12}, Lorg/jbox2d/common/Mat33;->solve22ToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 607
    iget v0, v11, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v25, v0

    iget v0, v11, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(FF)Lorg/jbox2d/common/Vec2;

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    iget v0, v12, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    iget v0, v12, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lorg/jbox2d/common/Vec3;->set(Lorg/jbox2d/common/Vec3;)Lorg/jbox2d/common/Vec3;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lorg/jbox2d/common/Vec3;->subLocal(Lorg/jbox2d/common/Vec3;)Lorg/jbox2d/common/Vec3;

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 614
    .restart local v8    # "P":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_axis:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    iget v0, v10, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_perp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    iget v0, v10, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 617
    iget v0, v10, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s1:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    iget v0, v10, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v26, v0

    add-float v25, v25, v26

    iget v0, v10, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a1:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    add-float v6, v25, v26

    .line 618
    .restart local v6    # "LA":F
    iget v0, v10, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s2:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    iget v0, v10, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v26, v0

    add-float v25, v25, v26

    iget v0, v10, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_a2:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    add-float v7, v25, v26

    .line 620
    .restart local v7    # "LB":F
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    iget v0, v8, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v26, v26, v16

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 621
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    iget v0, v8, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v26, v26, v16

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 622
    mul-float v25, v13, v6

    sub-float v23, v23, v25

    .line 624
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    iget v0, v8, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v26, v26, v17

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 625
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    iget v0, v8, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v26, v26, v17

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 626
    mul-float v25, v14, v7

    add-float v24, v24, v25

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-interface/range {v25 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-interface/range {v25 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->pushVec3(I)V

    .line 656
    .end local v3    # "Cdot":Lorg/jbox2d/common/Vec3;
    .end local v5    # "Cdot2":F
    .end local v9    # "b":Lorg/jbox2d/common/Vec2;
    .end local v10    # "df":Lorg/jbox2d/common/Vec3;
    .end local v11    # "f1":Lorg/jbox2d/common/Vec3;
    .end local v12    # "f2r":Lorg/jbox2d/common/Vec2;
    :goto_437
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexA:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move/from16 v0, v23

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 658
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_indexB:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move/from16 v0, v24

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-interface/range {v25 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 661
    return-void

    .line 594
    .end local v6    # "LA":F
    .end local v7    # "LB":F
    .end local v8    # "P":Lorg/jbox2d/common/Vec2;
    .restart local v3    # "Cdot":Lorg/jbox2d/common/Vec3;
    .restart local v5    # "Cdot2":F
    .restart local v10    # "df":Lorg/jbox2d/common/Vec3;
    .restart local v11    # "f1":Lorg/jbox2d/common/Vec3;
    :cond_46b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_29e

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lorg/jbox2d/common/MathUtils;->min(FF)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    goto/16 :goto_29e

    .line 632
    .end local v3    # "Cdot":Lorg/jbox2d/common/Vec3;
    .end local v5    # "Cdot2":F
    .end local v10    # "df":Lorg/jbox2d/common/Vec3;
    .end local v11    # "f1":Lorg/jbox2d/common/Vec3;
    :cond_499
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v10

    .line 633
    .local v10, "df":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_K:Lorg/jbox2d/common/Mat33;

    move-object/from16 v25, v0

    invoke-virtual {v4}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Lorg/jbox2d/common/Mat33;->solve22ToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 634
    invoke-virtual {v4}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v26, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v26, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 640
    .restart local v8    # "P":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_perp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    iget v0, v10, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 641
    iget v0, v10, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s1:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    iget v0, v10, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    add-float v6, v25, v26

    .line 642
    .restart local v6    # "LA":F
    iget v0, v10, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_s2:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    iget v0, v10, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    add-float v7, v25, v26

    .line 644
    .restart local v7    # "LB":F
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    iget v0, v8, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v26, v26, v16

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 645
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    iget v0, v8, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v26, v26, v16

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 646
    mul-float v25, v13, v6

    sub-float v23, v23, v25

    .line 648
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    iget v0, v8, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v26, v26, v17

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 649
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    iget v0, v8, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v26, v26, v17

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 650
    mul-float v25, v14, v7

    add-float v24, v24, v25

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-interface/range {v25 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    goto/16 :goto_437
.end method
