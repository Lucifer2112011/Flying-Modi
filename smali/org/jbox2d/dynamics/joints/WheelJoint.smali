###### Class org.jbox2d.dynamics.joints.WheelJoint (org.jbox2d.dynamics.joints.WheelJoint)
.class public Lorg/jbox2d/dynamics/joints/WheelJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "WheelJoint.java"


# instance fields
.field private final d:Lorg/jbox2d/common/Vec2;

.field private final m_ax:Lorg/jbox2d/common/Vec2;

.field private final m_ay:Lorg/jbox2d/common/Vec2;

.field private m_bias:F

.field private m_dampingRatio:F

.field private m_enableMotor:Z

.field private m_frequencyHz:F

.field private m_gamma:F

.field private m_impulse:F

.field private m_indexA:I

.field private m_indexB:I

.field private m_invIA:F

.field private m_invIB:F

.field private m_invMassA:F

.field private m_invMassB:F

.field private final m_localAnchorA:Lorg/jbox2d/common/Vec2;

.field private final m_localAnchorB:Lorg/jbox2d/common/Vec2;

.field private final m_localCenterA:Lorg/jbox2d/common/Vec2;

.field private final m_localCenterB:Lorg/jbox2d/common/Vec2;

.field private final m_localXAxisA:Lorg/jbox2d/common/Vec2;

.field private final m_localYAxisA:Lorg/jbox2d/common/Vec2;

.field private m_mass:F

.field private m_maxMotorTorque:F

.field private m_motorImpulse:F

.field private m_motorMass:F

.field private m_motorSpeed:F

.field private m_sAx:F

.field private m_sAy:F

.field private m_sBx:F

.field private m_sBy:F

.field private m_springImpulse:F

.field private m_springMass:F

.field private final rA:Lorg/jbox2d/common/Vec2;

.field private final rB:Lorg/jbox2d/common/Vec2;


# direct methods
.method protected constructor <init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/WheelJointDef;)V
    .registers 7
    .param p1, "argPool"    # Lorg/jbox2d/pooling/IWorldPool;
    .param p2, "def"    # Lorg/jbox2d/dynamics/joints/WheelJointDef;

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 64
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 65
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 66
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localXAxisA:Lorg/jbox2d/common/Vec2;

    .line 67
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localYAxisA:Lorg/jbox2d/common/Vec2;

    .line 80
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    .line 81
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    .line 87
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ax:Lorg/jbox2d/common/Vec2;

    .line 88
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ay:Lorg/jbox2d/common/Vec2;

    .line 226
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->rA:Lorg/jbox2d/common/Vec2;

    .line 227
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->rB:Lorg/jbox2d/common/Vec2;

    .line 228
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->d:Lorg/jbox2d/common/Vec2;

    .line 101
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/WheelJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 102
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/WheelJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 103
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localXAxisA:Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/WheelJointDef;->localAxisA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 104
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localXAxisA:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localYAxisA:Lorg/jbox2d/common/Vec2;

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 107
    iput v3, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorMass:F

    .line 108
    iput v3, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorImpulse:F

    .line 110
    iget v0, p2, Lorg/jbox2d/dynamics/joints/WheelJointDef;->maxMotorTorque:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_maxMotorTorque:F

    .line 111
    iget v0, p2, Lorg/jbox2d/dynamics/joints/WheelJointDef;->motorSpeed:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorSpeed:F

    .line 112
    iget-boolean v0, p2, Lorg/jbox2d/dynamics/joints/WheelJointDef;->enableMotor:Z

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_enableMotor:Z

    .line 114
    iget v0, p2, Lorg/jbox2d/dynamics/joints/WheelJointDef;->frequencyHz:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_frequencyHz:F

    .line 115
    iget v0, p2, Lorg/jbox2d/dynamics/joints/WheelJointDef;->dampingRatio:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_dampingRatio:F

    .line 116
    return-void
.end method


# virtual methods
.method public enableMotor(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x1

    .line 180
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 181
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 182
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_enableMotor:Z

    .line 183
    return-void
.end method

.method public getAnchorA(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 128
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 129
    return-void
.end method

.method public getAnchorB(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 133
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 134
    return-void
.end method

.method public getJointSpeed()F
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget v1, v1, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getJointTranslation()F
    .registers 9

    .prologue
    .line 150
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    .line 151
    .local v1, "b1":Lorg/jbox2d/dynamics/Body;
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    .line 153
    .local v2, "b2":Lorg/jbox2d/dynamics/Body;
    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v6}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 154
    .local v3, "p1":Lorg/jbox2d/common/Vec2;
    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v6}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 155
    .local v4, "p2":Lorg/jbox2d/common/Vec2;
    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v6}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 156
    .local v0, "axis":Lorg/jbox2d/common/Vec2;
    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v6, v3}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 157
    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v6, v4}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 158
    invoke-virtual {v4, v3}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 159
    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localXAxisA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v6, v0}, Lorg/jbox2d/dynamics/Body;->getWorldVectorToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 161
    invoke-static {v4, v0}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v5

    .line 162
    .local v5, "translation":F
    iget-object v6, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 163
    return v5
.end method

.method public getLocalAnchorA()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getLocalAnchorB()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getLocalAxisA()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localXAxisA:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getMaxMotorTorque()F
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_maxMotorTorque:F

    return v0
.end method

.method public getMotorSpeed()F
    .registers 2

    .prologue
    .line 192
    iget v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorSpeed:F

    return v0
.end method

.method public getMotorTorque(F)F
    .registers 3
    .param p1, "inv_dt"    # F

    .prologue
    .line 206
    iget v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorImpulse:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public getReactionForce(FLorg/jbox2d/common/Vec2;)V
    .registers 6
    .param p1, "inv_dt"    # F
    .param p2, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 138
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v1}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 139
    .local v0, "temp":Lorg/jbox2d/common/Vec2;
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ay:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget v2, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_impulse:F

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 140
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ax:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget v2, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springImpulse:F

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 141
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 142
    return-void
.end method

.method public getReactionTorque(F)F
    .registers 3
    .param p1, "inv_dt"    # F

    .prologue
    .line 146
    iget v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorImpulse:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public getSpringDampingRatio()F
    .registers 2

    .prologue
    .line 222
    iget v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_dampingRatio:F

    return v0
.end method

.method public getSpringFrequencyHz()F
    .registers 2

    .prologue
    .line 214
    iget v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_frequencyHz:F

    return v0
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 32
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexA:I

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexB:I

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invMassA:F

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invMassB:F

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invIA:F

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invIB:F

    .line 241
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invMassA:F

    move/from16 v17, v0

    .local v17, "mA":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invMassB:F

    move/from16 v18, v0

    .line 242
    .local v18, "mB":F
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invIA:F

    .local v13, "iA":F
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invIB:F

    .line 244
    .local v14, "iB":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexA:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    iget-object v9, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 245
    .local v9, "cA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexA:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    iget v7, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 246
    .local v7, "aA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexA:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    .line 247
    .local v23, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexA:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v25, v0

    .line 249
    .local v25, "wA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexB:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    iget-object v10, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 250
    .local v10, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexB:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    iget v8, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 251
    .local v8, "aB":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexB:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    .line 252
    .local v24, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexB:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v26, v0

    .line 254
    .local v26, "wB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v20

    .line 255
    .local v20, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v21

    .line 256
    .local v21, "qB":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v22

    .line 258
    .local v22, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 259
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localYAxisA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ay:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOut(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ay:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sAy:F

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ay:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sBy:F

    .line 272
    add-float v27, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sAy:F

    move/from16 v28, v0

    mul-float v28, v28, v13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sAy:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sBy:F

    move/from16 v28, v0

    mul-float v28, v28, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sBy:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_mass:F

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_mass:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_284

    .line 275
    const/high16 v27, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_mass:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_mass:F

    .line 280
    :cond_284
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springMass:F

    .line 281
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bias:F

    .line 282
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_gamma:F

    .line 283
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_frequencyHz:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_5d8

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localXAxisA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ax:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOut(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ax:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sAx:F

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ax:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sBx:F

    .line 288
    add-float v27, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sAx:F

    move/from16 v28, v0

    mul-float v28, v28, v13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sAx:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sBx:F

    move/from16 v28, v0

    mul-float v28, v28, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sBx:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v15, v27, v28

    .line 290
    .local v15, "invMass":F
    const/16 v27, 0x0

    cmpl-float v27, v15, v27

    if-lez v27, :cond_3d8

    .line 291
    const/high16 v27, 0x3f800000    # 1.0f

    div-float v27, v27, v15

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springMass:F

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ax:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v3

    .line 296
    .local v3, "C":F
    const v27, 0x40c90fdb

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_frequencyHz:F

    move/from16 v28, v0

    mul-float v19, v27, v28

    .line 299
    .local v19, "omega":F
    const/high16 v27, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springMass:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_dampingRatio:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    mul-float v11, v27, v19

    .line 302
    .local v11, "d":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springMass:F

    move/from16 v27, v0

    mul-float v27, v27, v19

    mul-float v16, v27, v19

    .line 305
    .local v16, "k":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v12, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    .line 306
    .local v12, "h":F
    mul-float v27, v12, v16

    add-float v27, v27, v11

    mul-float v27, v27, v12

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_gamma:F

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_gamma:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_39c

    .line 308
    const/high16 v27, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_gamma:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_gamma:F

    .line 311
    :cond_39c
    mul-float v27, v3, v12

    mul-float v27, v27, v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_gamma:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bias:F

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_gamma:F

    move/from16 v27, v0

    add-float v27, v27, v15

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springMass:F

    .line 314
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springMass:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_3d8

    .line 315
    const/high16 v27, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springMass:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springMass:F

    .line 323
    .end local v3    # "C":F
    .end local v11    # "d":F
    .end local v12    # "h":F
    .end local v15    # "invMass":F
    .end local v16    # "k":F
    .end local v19    # "omega":F
    :cond_3d8
    :goto_3d8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_enableMotor:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5e2

    .line 324
    add-float v27, v13, v14

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorMass:F

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorMass:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_404

    .line 326
    const/high16 v27, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorMass:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorMass:F

    .line 333
    :cond_404
    :goto_404
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5f4

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 336
    .local v6, "P":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_impulse:F

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_impulse:F

    .line 337
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springImpulse:F

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springImpulse:F

    .line 338
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorImpulse:F

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorImpulse:F

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_impulse:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ay:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springImpulse:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ax:Lorg/jbox2d/common/Vec2;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move/from16 v0, v27

    iput v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    .line 341
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_impulse:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ay:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springImpulse:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ax:Lorg/jbox2d/common/Vec2;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move/from16 v0, v27

    iput v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_impulse:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sAy:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springImpulse:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sAx:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorImpulse:F

    move/from16 v28, v0

    add-float v4, v27, v28

    .line 343
    .local v4, "LA":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_impulse:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sBy:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springImpulse:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sBx:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorImpulse:F

    move/from16 v28, v0

    add-float v5, v27, v28

    .line 345
    .local v5, "LB":F
    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invMassA:F

    move/from16 v28, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 346
    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invMassA:F

    move/from16 v28, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 347
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invIA:F

    move/from16 v27, v0

    mul-float v27, v27, v4

    sub-float v25, v25, v27

    .line 349
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invMassB:F

    move/from16 v28, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 350
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invMassB:F

    move/from16 v28, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invIB:F

    move/from16 v27, v0

    mul-float v27, v27, v5

    add-float v26, v26, v27

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 358
    .end local v4    # "LA":F
    .end local v5    # "LB":F
    .end local v6    # "P":Lorg/jbox2d/common/Vec2;
    :goto_599
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-interface/range {v27 .. v28}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 362
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexA:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    move/from16 v0, v25

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 364
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexB:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    move/from16 v0, v26

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 365
    return-void

    .line 319
    :cond_5d8
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springImpulse:F

    goto/16 :goto_3d8

    .line 329
    :cond_5e2
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorMass:F

    .line 330
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorImpulse:F

    goto/16 :goto_404

    .line 354
    :cond_5f4
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_impulse:F

    .line 355
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springImpulse:F

    .line 356
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorImpulse:F

    goto :goto_599
.end method

.method public isMotorEnabled()Z
    .registers 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_enableMotor:Z

    return v0
.end method

.method public setMaxMotorTorque(F)V
    .registers 4
    .param p1, "torque"    # F

    .prologue
    const/4 v1, 0x1

    .line 200
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 201
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 202
    iput p1, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_maxMotorTorque:F

    .line 203
    return-void
.end method

.method public setMotorSpeed(F)V
    .registers 4
    .param p1, "speed"    # F

    .prologue
    const/4 v1, 0x1

    .line 186
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 187
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 188
    iput p1, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorSpeed:F

    .line 189
    return-void
.end method

.method public setSpringDampingRatio(F)V
    .registers 2
    .param p1, "ratio"    # F

    .prologue
    .line 218
    iput p1, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_dampingRatio:F

    .line 219
    return-void
.end method

.method public setSpringFrequencyHz(F)V
    .registers 2
    .param p1, "hz"    # F

    .prologue
    .line 210
    iput p1, p0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_frequencyHz:F

    .line 211
    return-void
.end method

.method public solvePositionConstraints(Lorg/jbox2d/dynamics/SolverData;)Z
    .registers 23
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 443
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexA:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v9, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 444
    .local v9, "cA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexA:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v6, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 445
    .local v6, "aA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexB:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v10, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 446
    .local v10, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexB:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v7, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 448
    .local v7, "aB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v13

    .line 449
    .local v13, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v14

    .line 450
    .local v14, "qB":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v17

    .line 452
    .local v17, "temp":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v13, v6}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 453
    invoke-virtual {v14, v7}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v13, v0, v1}, Lorg/jbox2d/common/Rot;->mulToOut(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v14, v0, v1}, Lorg/jbox2d/common/Rot;->mulToOut(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 460
    .local v8, "ay":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_localYAxisA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v13, v0, v8}, Lorg/jbox2d/common/Rot;->mulToOut(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v15

    .line 463
    .local v15, "sAy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v16

    .line 465
    .local v16, "sBy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v2

    .line 467
    .local v2, "C":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invMassA:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invMassB:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invIA:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sAy:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sAy:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invIB:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sBy:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sBy:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v12, v18, v19

    .line 470
    .local v12, "k":F
    const/16 v18, 0x0

    cmpl-float v18, v12, v18

    if-eqz v18, :cond_239

    .line 471
    neg-float v0, v2

    move/from16 v18, v0

    div-float v11, v18, v12

    .line 476
    .local v11, "impulse":F
    :goto_163
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 477
    .local v5, "P":Lorg/jbox2d/common/Vec2;
    iget v0, v8, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    mul-float v18, v18, v11

    move/from16 v0, v18

    iput v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 478
    iget v0, v8, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    mul-float v18, v18, v11

    move/from16 v0, v18

    iput v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 479
    mul-float v3, v11, v15

    .line 480
    .local v3, "LA":F
    mul-float v4, v11, v16

    .line 482
    .local v4, "LB":F
    iget v0, v9, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invMassA:F

    move/from16 v19, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v9, Lorg/jbox2d/common/Vec2;->x:F

    .line 483
    iget v0, v9, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invMassA:F

    move/from16 v19, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v9, Lorg/jbox2d/common/Vec2;->y:F

    .line 484
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invIA:F

    move/from16 v18, v0

    mul-float v18, v18, v3

    sub-float v6, v6, v18

    .line 485
    iget v0, v10, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invMassB:F

    move/from16 v19, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v10, Lorg/jbox2d/common/Vec2;->x:F

    .line 486
    iget v0, v10, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invMassB:F

    move/from16 v19, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v10, Lorg/jbox2d/common/Vec2;->y:F

    .line 487
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invIB:F

    move/from16 v18, v0

    mul-float v18, v18, v4

    add-float v7, v7, v18

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-interface/range {v18 .. v19}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-interface/range {v18 .. v19}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 492
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexA:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iput v6, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 494
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexB:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iput v7, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 496
    invoke-static {v2}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v18

    const v19, 0x3ba3d70a    # 0.005f

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_23c

    const/16 v18, 0x1

    :goto_238
    return v18

    .line 473
    .end local v3    # "LA":F
    .end local v4    # "LB":F
    .end local v5    # "P":Lorg/jbox2d/common/Vec2;
    .end local v11    # "impulse":F
    :cond_239
    const/4 v11, 0x0

    .restart local v11    # "impulse":F
    goto/16 :goto_163

    .line 496
    .restart local v3    # "LA":F
    .restart local v4    # "LB":F
    .restart local v5    # "P":Lorg/jbox2d/common/Vec2;
    :cond_23c
    const/16 v18, 0x0

    goto :goto_238
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 24
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invMassA:F

    .local v9, "mA":F
    move-object/from16 v0, p0

    iget v10, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invMassB:F

    .line 370
    .local v10, "mB":F
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invIA:F

    .local v6, "iA":F
    move-object/from16 v0, p0

    iget v7, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_invIB:F

    .line 372
    .local v7, "iB":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexA:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v14, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 373
    .local v14, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexA:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v16, v0

    .line 374
    .local v16, "wA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexB:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v15, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 375
    .local v15, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexB:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v17, v0

    .line 377
    .local v17, "wB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v13

    .line 378
    .local v13, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 382
    .local v5, "P":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ax:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual {v13, v15}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sBx:F

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sAx:F

    move/from16 v19, v0

    mul-float v19, v19, v16

    sub-float v2, v18, v19

    .line 383
    .local v2, "Cdot":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springMass:F

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_bias:F

    move/from16 v19, v0

    add-float v19, v19, v2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_gamma:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springImpulse:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v19, v19, v20

    mul-float v8, v18, v19

    .line 384
    .local v8, "impulse":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springImpulse:F

    move/from16 v18, v0

    add-float v18, v18, v8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_springImpulse:F

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ax:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    iput v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ax:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    iput v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sAx:F

    move/from16 v18, v0

    mul-float v3, v8, v18

    .line 389
    .local v3, "LA":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sBx:F

    move/from16 v18, v0

    mul-float v4, v8, v18

    .line 391
    .local v4, "LB":F
    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v9

    sub-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 392
    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v9

    sub-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 393
    mul-float v18, v6, v3

    sub-float v16, v16, v18

    .line 395
    iget v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v10

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    .line 396
    iget v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v10

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    .line 397
    mul-float v18, v7, v4

    add-float v17, v17, v18

    .line 402
    sub-float v18, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorSpeed:F

    move/from16 v19, v0

    sub-float v2, v18, v19

    .line 403
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorMass:F

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    mul-float v8, v18, v2

    .line 405
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorImpulse:F

    .line 406
    .local v12, "oldImpulse":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_maxMotorTorque:F

    move/from16 v19, v0

    mul-float v11, v18, v19

    .line 407
    .local v11, "maxImpulse":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorImpulse:F

    move/from16 v18, v0

    add-float v18, v18, v8

    neg-float v0, v11

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v11}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorImpulse:F

    .line 408
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_motorImpulse:F

    move/from16 v18, v0

    sub-float v8, v18, v12

    .line 410
    mul-float v18, v6, v8

    sub-float v16, v16, v18

    .line 411
    mul-float v18, v7, v8

    add-float v17, v17, v18

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ay:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual {v13, v15}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sBy:F

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sAy:F

    move/from16 v19, v0

    mul-float v19, v19, v16

    sub-float v2, v18, v19

    .line 417
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_mass:F

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    mul-float v8, v18, v2

    .line 418
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_impulse:F

    move/from16 v18, v0

    add-float v18, v18, v8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_impulse:F

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ay:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    iput v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_ay:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    iput v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 422
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sAy:F

    move/from16 v18, v0

    mul-float v3, v8, v18

    .line 423
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_sBy:F

    move/from16 v18, v0

    mul-float v4, v8, v18

    .line 425
    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v9

    sub-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 426
    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v9

    sub-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 427
    mul-float v18, v6, v3

    sub-float v16, v16, v18

    .line 429
    iget v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v10

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    .line 430
    iget v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v10

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    .line 431
    mul-float v18, v7, v4

    add-float v17, v17, v18

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-interface/range {v18 .. v19}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 436
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexA:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move/from16 v0, v16

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 438
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WheelJoint;->m_indexB:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 439
    return-void
.end method
