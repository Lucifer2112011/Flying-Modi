###### Class org.jbox2d.dynamics.joints.RevoluteJoint (org.jbox2d.dynamics.joints.RevoluteJoint)
.class public Lorg/jbox2d/dynamics/joints/RevoluteJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "RevoluteJoint.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
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

.field private m_lowerAngle:F

.field private final m_mass:Lorg/jbox2d/common/Mat33;

.field private m_maxMotorTorque:F

.field private m_motorImpulse:F

.field private m_motorMass:F

.field private m_motorSpeed:F

.field private final m_rA:Lorg/jbox2d/common/Vec2;

.field private final m_rB:Lorg/jbox2d/common/Vec2;

.field protected m_referenceAngle:F

.field private m_upperAngle:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-class v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/RevoluteJointDef;)V
    .registers 5
    .param p1, "argWorld"    # Lorg/jbox2d/pooling/IWorldPool;
    .param p2, "def"    # Lorg/jbox2d/dynamics/joints/RevoluteJointDef;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 62
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 63
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 64
    new-instance v0, Lorg/jbox2d/common/Vec3;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec3;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    .line 79
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    .line 80
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    .line 81
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    .line 82
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    .line 87
    new-instance v0, Lorg/jbox2d/common/Mat33;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat33;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    .line 93
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 94
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 95
    iget v0, p2, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->referenceAngle:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_referenceAngle:F

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorImpulse:F

    .line 99
    iget v0, p2, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->lowerAngle:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_lowerAngle:F

    .line 100
    iget v0, p2, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->upperAngle:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_upperAngle:F

    .line 101
    iget v0, p2, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->maxMotorTorque:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_maxMotorTorque:F

    .line 102
    iget v0, p2, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->motorSpeed:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorSpeed:F

    .line 103
    iget-boolean v0, p2, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->enableLimit:Z

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableLimit:Z

    .line 104
    iget-boolean v0, p2, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->enableMotor:Z

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableMotor:Z

    .line 105
    sget-object v0, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE:Lorg/jbox2d/dynamics/joints/LimitState;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 106
    return-void
.end method


# virtual methods
.method public enableLimit(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x1

    .line 528
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableLimit:Z

    if-eq p1, v0, :cond_16

    .line 529
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 530
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 531
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableLimit:Z

    .line 532
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    const/4 v1, 0x0

    iput v1, v0, Lorg/jbox2d/common/Vec3;->z:F

    .line 534
    :cond_16
    return-void
.end method

.method public enableMotor(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x1

    .line 494
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 495
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 496
    iput-boolean p1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableMotor:Z

    .line 497
    return-void
.end method

.method public getAnchorA(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 459
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 460
    return-void
.end method

.method public getAnchorB(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 464
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 465
    return-void
.end method

.method public getJointAngle()F
    .registers 5

    .prologue
    .line 478
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    .line 479
    .local v0, "b1":Lorg/jbox2d/dynamics/Body;
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    .line 480
    .local v1, "b2":Lorg/jbox2d/dynamics/Body;
    iget-object v2, v1, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v2, v2, Lorg/jbox2d/common/Sweep;->a:F

    iget-object v3, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget v3, v3, Lorg/jbox2d/common/Sweep;->a:F

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_referenceAngle:F

    sub-float/2addr v2, v3

    return v2
.end method

.method public getJointSpeed()F
    .registers 5

    .prologue
    .line 484
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    .line 485
    .local v0, "b1":Lorg/jbox2d/dynamics/Body;
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    .line 486
    .local v1, "b2":Lorg/jbox2d/dynamics/Body;
    iget v2, v1, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    iget v3, v0, Lorg/jbox2d/dynamics/Body;->m_angularVelocity:F

    sub-float/2addr v2, v3

    return v2
.end method

.method public getLocalAnchorA()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getLocalAnchorB()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getLowerLimit()F
    .registers 2

    .prologue
    .line 537
    iget v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_lowerAngle:F

    return v0
.end method

.method public getMaxMotorTorque()F
    .registers 2

    .prologue
    .line 520
    iget v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_maxMotorTorque:F

    return v0
.end method

.method public getMotorSpeed()F
    .registers 2

    .prologue
    .line 516
    iget v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorSpeed:F

    return v0
.end method

.method public getMotorTorque(F)F
    .registers 3
    .param p1, "inv_dt"    # F

    .prologue
    .line 500
    iget v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorImpulse:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public getReactionForce(FLorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "inv_dt"    # F
    .param p2, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 469
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    iget v1, v1, Lorg/jbox2d/common/Vec3;->y:F

    invoke-virtual {p2, v0, v1}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 470
    return-void
.end method

.method public getReactionTorque(F)F
    .registers 3
    .param p1, "inv_dt"    # F

    .prologue
    .line 474
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public getReferenceAngle()F
    .registers 2

    .prologue
    .line 454
    iget v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_referenceAngle:F

    return v0
.end method

.method public getUpperLimit()F
    .registers 2

    .prologue
    .line 541
    iget v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_upperAngle:F

    return v0
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 24
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexA:I

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexB:I

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invMassA:F

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invMassB:F

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invIA:F

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invIB:F

    .line 120
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexA:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v3, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 121
    .local v3, "aA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexA:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v14, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 122
    .local v14, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexA:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v16, v0

    .line 125
    .local v16, "wA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexB:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v4, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 126
    .local v4, "aB":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexB:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v15, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 127
    .local v15, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexB:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v17, v0

    .line 128
    .local v17, "wB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v11

    .line 129
    .local v11, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v12

    .line 130
    .local v12, "qB":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v13

    .line 132
    .local v13, "temp":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v11, v3}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 133
    invoke-virtual {v12, v4}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v11, v0, v1}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 148
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invMassA:F

    .local v9, "mA":F
    move-object/from16 v0, p0

    iget v10, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invMassB:F

    .line 149
    .local v10, "mB":F
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invIA:F

    .local v6, "iA":F
    move-object/from16 v0, p0

    iget v7, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invIB:F

    .line 151
    .local v7, "iB":F
    add-float v18, v6, v7

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_53e

    const/4 v5, 0x1

    .line 153
    .local v5, "fixedRotation":Z
    :goto_195
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    add-float v19, v9, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    mul-float v20, v20, v6

    add-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    mul-float v20, v20, v7

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    mul-float v19, v19, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    mul-float v20, v20, v7

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    mul-float v20, v20, v7

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    add-float v19, v9, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    mul-float v20, v20, v6

    add-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    mul-float v20, v20, v7

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v20, v20, v7

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    add-float v19, v6, v7

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 163
    add-float v18, v6, v7

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorMass:F

    .line 164
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorMass:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_38f

    .line 165
    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorMass:F

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorMass:F

    .line 168
    :cond_38f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableMotor:Z

    move/from16 v18, v0

    if-eqz v18, :cond_399

    if-eqz v5, :cond_3a1

    .line 169
    :cond_399
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorImpulse:F

    .line 172
    :cond_3a1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableLimit:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5b9

    if-nez v5, :cond_5b9

    .line 173
    sub-float v18, v4, v3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_referenceAngle:F

    move/from16 v19, v0

    sub-float v8, v18, v19

    .line 174
    .local v8, "jointAngle":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_upperAngle:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_lowerAngle:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v18

    const v19, 0x3d8efa36

    cmpg-float v18, v18, v19

    if-gez v18, :cond_541

    .line 175
    sget-object v18, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 194
    .end local v8    # "jointAngle":F
    :goto_3d6
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5c3

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 197
    .local v2, "P":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 199
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorImpulse:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorImpulse:F

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 204
    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    iget v0, v2, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v9

    sub-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 205
    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    iget v0, v2, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v9

    sub-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorImpulse:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v19, v0

    add-float v18, v18, v19

    mul-float v18, v18, v6

    sub-float v16, v16, v18

    .line 208
    iget v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    iget v0, v2, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v10

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    .line 209
    iget v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    iget v0, v2, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v10

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorImpulse:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v19, v0

    add-float v18, v18, v19

    mul-float v18, v18, v7

    add-float v17, v17, v18

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 217
    .end local v2    # "P":Lorg/jbox2d/common/Vec2;
    :goto_4ff
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexA:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move/from16 v0, v16

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 219
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexB:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-interface/range {v18 .. v19}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 223
    return-void

    .line 151
    .end local v5    # "fixedRotation":Z
    :cond_53e
    const/4 v5, 0x0

    goto/16 :goto_195

    .line 176
    .restart local v5    # "fixedRotation":Z
    .restart local v8    # "jointAngle":F
    :cond_541
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_lowerAngle:F

    move/from16 v18, v0

    cmpg-float v18, v8, v18

    if-gtz v18, :cond_571

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v18, v0

    sget-object v19, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_567

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 180
    :cond_567
    sget-object v18, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    goto/16 :goto_3d6

    .line 181
    :cond_571
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_upperAngle:F

    move/from16 v18, v0

    cmpl-float v18, v8, v18

    if-ltz v18, :cond_5a1

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v18, v0

    sget-object v19, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_597

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 185
    :cond_597
    sget-object v18, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    goto/16 :goto_3d6

    .line 187
    :cond_5a1
    sget-object v18, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    goto/16 :goto_3d6

    .line 191
    .end local v8    # "jointAngle":F
    :cond_5b9
    sget-object v18, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    goto/16 :goto_3d6

    .line 213
    :cond_5c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jbox2d/common/Vec3;->setZero()V

    .line 214
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorImpulse:F

    goto/16 :goto_4ff
.end method

.method public isLimitEnabled()Z
    .registers 2

    .prologue
    .line 524
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableLimit:Z

    return v0
.end method

.method public isMotorEnabled()Z
    .registers 2

    .prologue
    .line 490
    iget-boolean v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableMotor:Z

    return v0
.end method

.method public setLimits(FF)V
    .registers 5
    .param p1, "lower"    # F
    .param p2, "upper"    # F

    .prologue
    const/4 v1, 0x1

    .line 545
    sget-boolean v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    cmpg-float v0, p1, p2

    if-lez v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 546
    :cond_f
    iget v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_lowerAngle:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1b

    iget v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_upperAngle:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2e

    .line 547
    :cond_1b
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 548
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 549
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    const/4 v1, 0x0

    iput v1, v0, Lorg/jbox2d/common/Vec3;->z:F

    .line 550
    iput p1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_lowerAngle:F

    .line 551
    iput p2, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_upperAngle:F

    .line 553
    :cond_2e
    return-void
.end method

.method public setMaxMotorTorque(F)V
    .registers 4
    .param p1, "torque"    # F

    .prologue
    const/4 v1, 0x1

    .line 510
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 511
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 512
    iput p1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_maxMotorTorque:F

    .line 513
    return-void
.end method

.method public setMotorSpeed(F)V
    .registers 4
    .param p1, "speed"    # F

    .prologue
    const/4 v1, 0x1

    .line 504
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 505
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 506
    iput p1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorSpeed:F

    .line 507
    return-void
.end method

.method public solvePositionConstraints(Lorg/jbox2d/dynamics/SolverData;)Z
    .registers 29
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v19

    .line 353
    .local v19, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v20

    .line 354
    .local v20, "qB":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexA:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v9, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 355
    .local v9, "cA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexA:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v5, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 356
    .local v5, "aA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexB:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v10, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 357
    .local v10, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexB:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v6, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 359
    .local v6, "aB":F
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 360
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 362
    const/4 v8, 0x0

    .line 363
    .local v8, "angularError":F
    const/16 v18, 0x0

    .line 365
    .local v18, "positionError":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invIA:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invIB:F

    move/from16 v24, v0

    add-float v23, v23, v24

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-nez v23, :cond_2e4

    const/4 v11, 0x1

    .line 368
    .local v11, "fixedRotation":Z
    :goto_7e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableLimit:Z

    move/from16 v23, v0

    if-eqz v23, :cond_e6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v23, v0

    sget-object v24, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_e6

    if-nez v11, :cond_e6

    .line 369
    sub-float v23, v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_referenceAngle:F

    move/from16 v24, v0

    sub-float v7, v23, v24

    .line 370
    .local v7, "angle":F
    const/4 v15, 0x0

    .line 372
    .local v15, "limitImpulse":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v23, v0

    sget-object v24, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2e7

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_lowerAngle:F

    move/from16 v23, v0

    sub-float v23, v7, v23

    const v24, -0x41f105ca

    const v25, 0x3e0efa36

    invoke-static/range {v23 .. v25}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v3

    .line 377
    .local v3, "C":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorMass:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    mul-float v15, v23, v3

    .line 378
    invoke-static {v3}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v8

    .line 395
    .end local v3    # "C":F
    :cond_d2
    :goto_d2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invIA:F

    move/from16 v23, v0

    mul-float v23, v23, v15

    sub-float v5, v5, v23

    .line 396
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invIB:F

    move/from16 v23, v0

    mul-float v23, v23, v15

    add-float v6, v6, v23

    .line 400
    .end local v7    # "angle":F
    .end local v15    # "limitImpulse":F
    :cond_e6
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 401
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v21

    .line 404
    .local v21, "rA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v22

    .line 405
    .local v22, "rB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 406
    .local v3, "C":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v14

    .line 408
    .local v14, "impulse":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 410
    invoke-virtual {v3, v10}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 411
    invoke-virtual {v3}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v18

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invMassA:F

    move/from16 v16, v0

    .local v16, "mA":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invMassB:F

    move/from16 v17, v0

    .line 414
    .local v17, "mB":F
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invIA:F

    .local v12, "iA":F
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invIB:F

    .line 416
    .local v13, "iB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/jbox2d/pooling/IWorldPool;->popMat22()Lorg/jbox2d/common/Mat22;

    move-result-object v4

    .line 417
    .local v4, "K":Lorg/jbox2d/common/Mat22;
    iget-object v0, v4, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    add-float v24, v16, v17

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v25, v25, v12

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v25, v25, v13

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 418
    iget-object v0, v4, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    neg-float v0, v12

    move/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v25, v25, v13

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 419
    iget-object v0, v4, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    iget-object v0, v4, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 420
    iget-object v0, v4, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    add-float v24, v16, v17

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v25, v25, v12

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v25, v25, v13

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 421
    invoke-virtual {v4, v3, v14}, Lorg/jbox2d/common/Mat22;->solveToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 422
    invoke-virtual {v14}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 424
    iget v0, v9, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    mul-float v24, v24, v16

    sub-float v23, v23, v24

    move/from16 v0, v23

    iput v0, v9, Lorg/jbox2d/common/Vec2;->x:F

    .line 425
    iget v0, v9, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    mul-float v24, v24, v16

    sub-float v23, v23, v24

    move/from16 v0, v23

    iput v0, v9, Lorg/jbox2d/common/Vec2;->y:F

    .line 426
    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v23

    mul-float v23, v23, v12

    sub-float v5, v5, v23

    .line 428
    iget v0, v10, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    mul-float v24, v24, v17

    add-float v23, v23, v24

    move/from16 v0, v23

    iput v0, v10, Lorg/jbox2d/common/Vec2;->x:F

    .line 429
    iget v0, v10, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    mul-float v24, v24, v17

    add-float v23, v23, v24

    move/from16 v0, v23

    iput v0, v10, Lorg/jbox2d/common/Vec2;->y:F

    .line 430
    move-object/from16 v0, v22

    invoke-static {v0, v14}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v23

    mul-float v23, v23, v13

    add-float v6, v6, v23

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-interface/range {v23 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-interface/range {v23 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->pushMat22(I)V

    .line 436
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexA:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iput v5, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 438
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexB:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iput v6, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-interface/range {v23 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 442
    const v23, 0x3ba3d70a    # 0.005f

    cmpg-float v23, v18, v23

    if-gtz v23, :cond_34f

    const v23, 0x3d0efa36

    cmpg-float v23, v8, v23

    if-gtz v23, :cond_34f

    const/16 v23, 0x1

    :goto_2e3
    return v23

    .line 365
    .end local v3    # "C":Lorg/jbox2d/common/Vec2;
    .end local v4    # "K":Lorg/jbox2d/common/Mat22;
    .end local v11    # "fixedRotation":Z
    .end local v12    # "iA":F
    .end local v13    # "iB":F
    .end local v14    # "impulse":Lorg/jbox2d/common/Vec2;
    .end local v16    # "mA":F
    .end local v17    # "mB":F
    .end local v21    # "rA":Lorg/jbox2d/common/Vec2;
    .end local v22    # "rB":Lorg/jbox2d/common/Vec2;
    :cond_2e4
    const/4 v11, 0x0

    goto/16 :goto_7e

    .line 379
    .restart local v7    # "angle":F
    .restart local v11    # "fixedRotation":Z
    .restart local v15    # "limitImpulse":F
    :cond_2e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v23, v0

    sget-object v24, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_31b

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_lowerAngle:F

    move/from16 v23, v0

    sub-float v3, v7, v23

    .line 381
    .local v3, "C":F
    neg-float v8, v3

    .line 384
    const v23, 0x3d0efa36

    add-float v23, v23, v3

    const v24, -0x41f105ca

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v3

    .line 385
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorMass:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    mul-float v15, v23, v3

    .line 386
    goto/16 :goto_d2

    .end local v3    # "C":F
    :cond_31b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v23, v0

    sget-object v24, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_d2

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_upperAngle:F

    move/from16 v23, v0

    sub-float v3, v7, v23

    .line 388
    .restart local v3    # "C":F
    move v8, v3

    .line 391
    const v23, 0x3d0efa36

    sub-float v23, v3, v23

    const/16 v24, 0x0

    const v25, 0x3e0efa36

    invoke-static/range {v23 .. v25}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v3

    .line 392
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorMass:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    mul-float v15, v23, v3

    goto/16 :goto_d2

    .line 442
    .end local v7    # "angle":F
    .end local v15    # "limitImpulse":F
    .local v3, "C":Lorg/jbox2d/common/Vec2;
    .restart local v4    # "K":Lorg/jbox2d/common/Mat22;
    .restart local v12    # "iA":F
    .restart local v13    # "iB":F
    .restart local v14    # "impulse":Lorg/jbox2d/common/Vec2;
    .restart local v16    # "mA":F
    .restart local v17    # "mB":F
    .restart local v21    # "rA":Lorg/jbox2d/common/Vec2;
    .restart local v22    # "rB":Lorg/jbox2d/common/Vec2;
    :cond_34f
    const/16 v23, 0x0

    goto :goto_2e3
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 27
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 227
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexA:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    .line 228
    .local v18, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexA:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v20, v0

    .line 229
    .local v20, "wA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexB:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    .line 230
    .local v19, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexB:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v21, v0

    .line 232
    .local v21, "wB":F
    move-object/from16 v0, p0

    iget v11, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invMassA:F

    .local v11, "mA":F
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invMassB:F

    .line 233
    .local v12, "mB":F
    move-object/from16 v0, p0

    iget v8, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invIA:F

    .local v8, "iA":F
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_invIB:F

    .line 235
    .local v9, "iB":F
    add-float v22, v8, v9

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_261

    const/4 v7, 0x1

    .line 238
    .local v7, "fixedRotation":Z
    :goto_69
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableMotor:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v22, v0

    sget-object v23, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_d9

    if-nez v7, :cond_d9

    .line 239
    sub-float v22, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorSpeed:F

    move/from16 v23, v0

    sub-float v3, v22, v23

    .line 240
    .local v3, "Cdot":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorMass:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    mul-float v10, v22, v3

    .line 241
    .local v10, "impulse":F
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorImpulse:F

    .line 242
    .local v15, "oldImpulse":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_maxMotorTorque:F

    move/from16 v23, v0

    mul-float v13, v22, v23

    .line 243
    .local v13, "maxImpulse":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorImpulse:F

    move/from16 v22, v0

    add-float v22, v22, v10

    neg-float v0, v13

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v13}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorImpulse:F

    .line 244
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_motorImpulse:F

    move/from16 v22, v0

    sub-float v10, v22, v15

    .line 246
    mul-float v22, v8, v10

    sub-float v20, v20, v22

    .line 247
    mul-float v22, v9, v10

    add-float v21, v21, v22

    .line 249
    .end local v3    # "Cdot":F
    .end local v10    # "impulse":F
    .end local v13    # "maxImpulse":F
    .end local v15    # "oldImpulse":F
    :cond_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v17

    .line 252
    .local v17, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_enableLimit:Z

    move/from16 v22, v0

    if-eqz v22, :cond_472

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v22, v0

    sget-object v23, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_472

    if-nez v7, :cond_472

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 255
    .local v4, "Cdot1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/jbox2d/pooling/IWorldPool;->popVec3()Lorg/jbox2d/common/Vec3;

    move-result-object v3

    .line 258
    .local v3, "Cdot":Lorg/jbox2d/common/Vec3;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 260
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 261
    sub-float v5, v21, v20

    .line 262
    .local v5, "Cdot2":F
    iget v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1, v5}, Lorg/jbox2d/common/Vec3;->set(FFF)Lorg/jbox2d/common/Vec3;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/jbox2d/pooling/IWorldPool;->popVec3()Lorg/jbox2d/common/Vec3;

    move-result-object v10

    .line 265
    .local v10, "impulse":Lorg/jbox2d/common/Vec3;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v10}, Lorg/jbox2d/common/Mat33;->solve33ToOut(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V

    .line 266
    invoke-virtual {v10}, Lorg/jbox2d/common/Vec3;->negateLocal()Lorg/jbox2d/common/Vec3;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v22, v0

    sget-object v23, Lorg/jbox2d/dynamics/joints/LimitState;->EQUAL:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_264

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lorg/jbox2d/common/Vec3;->addLocal(Lorg/jbox2d/common/Vec3;)Lorg/jbox2d/common/Vec3;

    .line 303
    :cond_182
    :goto_182
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 305
    .local v6, "P":Lorg/jbox2d/common/Vec2;
    iget v0, v10, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v22, v0

    iget v0, v10, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 307
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v11

    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 308
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    mul-float v23, v23, v11

    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v22

    iget v0, v10, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v23, v0

    add-float v22, v22, v23

    mul-float v22, v22, v8

    sub-float v20, v20, v22

    .line 311
    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v12

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 312
    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    mul-float v23, v23, v12

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v22

    iget v0, v10, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v23, v0

    add-float v22, v22, v23

    mul-float v22, v22, v9

    add-float v21, v21, v22

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-interface/range {v22 .. v23}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-interface/range {v22 .. v23}, Lorg/jbox2d/pooling/IWorldPool;->pushVec3(I)V

    .line 343
    .end local v3    # "Cdot":Lorg/jbox2d/common/Vec3;
    .end local v4    # "Cdot1":Lorg/jbox2d/common/Vec2;
    .end local v5    # "Cdot2":F
    .end local v6    # "P":Lorg/jbox2d/common/Vec2;
    .end local v10    # "impulse":Lorg/jbox2d/common/Vec3;
    :goto_22d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexA:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move/from16 v0, v20

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 345
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_indexB:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 348
    return-void

    .line 235
    .end local v7    # "fixedRotation":Z
    .end local v17    # "temp":Lorg/jbox2d/common/Vec2;
    :cond_261
    const/4 v7, 0x0

    goto/16 :goto_69

    .line 270
    .restart local v3    # "Cdot":Lorg/jbox2d/common/Vec3;
    .restart local v4    # "Cdot1":Lorg/jbox2d/common/Vec2;
    .restart local v5    # "Cdot2":F
    .restart local v7    # "fixedRotation":Z
    .restart local v10    # "impulse":Lorg/jbox2d/common/Vec3;
    .restart local v17    # "temp":Lorg/jbox2d/common/Vec2;
    :cond_264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v22, v0

    sget-object v23, Lorg/jbox2d/dynamics/joints/LimitState;->AT_LOWER:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_36b

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v22, v0

    iget v0, v10, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v23, v0

    add-float v14, v22, v23

    .line 272
    .local v14, "newImpulse":F
    const/16 v22, 0x0

    cmpg-float v22, v14, v22

    if-gez v22, :cond_35e

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v16

    .line 274
    .local v16, "rhs":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Mat33;->solve22ToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 276
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v10, Lorg/jbox2d/common/Vec3;->x:F

    .line 277
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v10, Lorg/jbox2d/common/Vec3;->y:F

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v10, Lorg/jbox2d/common/Vec3;->z:F

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    goto/16 :goto_182

    .line 284
    .end local v16    # "rhs":Lorg/jbox2d/common/Vec2;
    :cond_35e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lorg/jbox2d/common/Vec3;->addLocal(Lorg/jbox2d/common/Vec3;)Lorg/jbox2d/common/Vec3;

    goto/16 :goto_182

    .line 286
    .end local v14    # "newImpulse":F
    :cond_36b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_limitState:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v22, v0

    sget-object v23, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_182

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v22, v0

    iget v0, v10, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v23, v0

    add-float v14, v22, v23

    .line 288
    .restart local v14    # "newImpulse":F
    const/16 v22, 0x0

    cmpl-float v22, v14, v22

    if-lez v22, :cond_465

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v16

    .line 290
    .restart local v16    # "rhs":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Mat33;->solve22ToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 292
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v10, Lorg/jbox2d/common/Vec3;->x:F

    .line 293
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v10, Lorg/jbox2d/common/Vec3;->y:F

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v10, Lorg/jbox2d/common/Vec3;->z:F

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    goto/16 :goto_182

    .line 300
    .end local v16    # "rhs":Lorg/jbox2d/common/Vec2;
    :cond_465
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lorg/jbox2d/common/Vec3;->addLocal(Lorg/jbox2d/common/Vec3;)Lorg/jbox2d/common/Vec3;

    goto/16 :goto_182

    .line 320
    .end local v3    # "Cdot":Lorg/jbox2d/common/Vec3;
    .end local v4    # "Cdot1":Lorg/jbox2d/common/Vec2;
    .end local v5    # "Cdot2":F
    .end local v10    # "impulse":Lorg/jbox2d/common/Vec3;
    .end local v14    # "newImpulse":F
    :cond_472
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 321
    .local v3, "Cdot":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v10

    .line 323
    .local v10, "impulse":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v3}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 325
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v22, v0

    invoke-virtual {v3}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Lorg/jbox2d/common/Mat33;->solve22ToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v23, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v23, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 331
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v11

    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 332
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    mul-float v23, v23, v11

    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v10}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v22

    mul-float v22, v22, v8

    sub-float v20, v20, v22

    .line 335
    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v12

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 336
    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    iget v0, v10, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    mul-float v23, v23, v12

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v10}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v22

    mul-float v22, v22, v9

    add-float v21, v21, v22

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-interface/range {v22 .. v23}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    goto/16 :goto_22d
.end method
