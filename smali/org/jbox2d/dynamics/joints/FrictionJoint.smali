###### Class org.jbox2d.dynamics.joints.FrictionJoint (org.jbox2d.dynamics.joints.FrictionJoint)
.class public Lorg/jbox2d/dynamics/joints/FrictionJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "FrictionJoint.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private m_angularImpulse:F

.field private m_angularMass:F

.field private m_indexA:I

.field private m_indexB:I

.field private m_invIA:F

.field private m_invIB:F

.field private m_invMassA:F

.field private m_invMassB:F

.field private final m_linearImpulse:Lorg/jbox2d/common/Vec2;

.field private final m_linearMass:Lorg/jbox2d/common/Mat22;

.field private final m_localAnchorA:Lorg/jbox2d/common/Vec2;

.field private final m_localAnchorB:Lorg/jbox2d/common/Vec2;

.field private final m_localCenterA:Lorg/jbox2d/common/Vec2;

.field private final m_localCenterB:Lorg/jbox2d/common/Vec2;

.field private m_maxForce:F

.field private m_maxTorque:F

.field private final m_rA:Lorg/jbox2d/common/Vec2;

.field private final m_rB:Lorg/jbox2d/common/Vec2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/FrictionJointDef;)V
    .registers 5
    .param p1, "argWorldPool"    # Lorg/jbox2d/pooling/IWorldPool;
    .param p2, "def"    # Lorg/jbox2d/dynamics/joints/FrictionJointDef;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 53
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    .line 54
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    .line 55
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    .line 56
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    .line 61
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_linearMass:Lorg/jbox2d/common/Mat22;

    .line 66
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/FrictionJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(Lorg/jbox2d/common/Vec2;)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 67
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/FrictionJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(Lorg/jbox2d/common/Vec2;)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 69
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_linearImpulse:Lorg/jbox2d/common/Vec2;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_angularImpulse:F

    .line 72
    iget v0, p2, Lorg/jbox2d/dynamics/joints/FrictionJointDef;->maxForce:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_maxForce:F

    .line 73
    iget v0, p2, Lorg/jbox2d/dynamics/joints/FrictionJointDef;->maxTorque:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_maxTorque:F

    .line 74
    return-void
.end method


# virtual methods
.method public getAnchorA(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 87
    return-void
.end method

.method public getAnchorB(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 92
    return-void
.end method

.method public getLocalAnchorA()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getLocalAnchorB()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getMaxForce()F
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_maxForce:F

    return v0
.end method

.method public getMaxTorque()F
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_maxTorque:F

    return v0
.end method

.method public getReactionForce(FLorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "inv_dt"    # F
    .param p2, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_linearImpulse:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 97
    return-void
.end method

.method public getReactionTorque(F)F
    .registers 3
    .param p1, "inv_dt"    # F

    .prologue
    .line 101
    iget v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_angularImpulse:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 23
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexA:I

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexB:I

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_invMassA:F

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_invMassB:F

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_invIA:F

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_invIB:F

    .line 136
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexA:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v4, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 137
    .local v4, "aA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexA:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v13, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 138
    .local v13, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexA:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v15, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 140
    .local v15, "wA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexB:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v5, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 141
    .local v5, "aB":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexB:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v14, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 142
    .local v14, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexB:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v16, v0

    .line 145
    .local v16, "wB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v12

    .line 146
    .local v12, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v10

    .line 147
    .local v10, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v11

    .line 149
    .local v11, "qB":Lorg/jbox2d/common/Rot;
    invoke-virtual {v10, v4}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 150
    invoke-virtual {v11, v5}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v10, v0, v1}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v11, v0, v1}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 165
    move-object/from16 v0, p0

    iget v8, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_invMassA:F

    .local v8, "mA":F
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_invMassB:F

    .line 166
    .local v9, "mB":F
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_invIA:F

    .local v6, "iA":F
    move-object/from16 v0, p0

    iget v7, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_invIB:F

    .line 168
    .local v7, "iB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/jbox2d/pooling/IWorldPool;->popMat22()Lorg/jbox2d/common/Mat22;

    move-result-object v2

    .line 169
    .local v2, "K":Lorg/jbox2d/common/Mat22;
    iget-object v0, v2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    add-float v18, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 170
    iget-object v0, v2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    neg-float v0, v6

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 171
    iget-object v0, v2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    iget-object v0, v2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 172
    iget-object v0, v2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    add-float v18, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_linearMass:Lorg/jbox2d/common/Mat22;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/jbox2d/common/Mat22;->invertToOut(Lorg/jbox2d/common/Mat22;)V

    .line 176
    add-float v17, v6, v7

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_angularMass:F

    .line 177
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_angularMass:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_2ae

    .line 178
    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_angularMass:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_angularMass:F

    .line 181
    :cond_2ae
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    move/from16 v17, v0

    if-eqz v17, :cond_38d

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_linearImpulse:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 184
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_angularImpulse:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_angularImpulse:F

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 187
    .local v3, "P":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_linearImpulse:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 189
    invoke-virtual {v12, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 190
    invoke-virtual {v13, v12}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_angularImpulse:F

    move/from16 v18, v0

    add-float v17, v17, v18

    mul-float v17, v17, v6

    sub-float v15, v15, v17

    .line 193
    invoke-virtual {v12, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 194
    invoke-virtual {v14, v12}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_angularImpulse:F

    move/from16 v18, v0

    add-float v17, v17, v18

    mul-float v17, v17, v7

    add-float v16, v16, v17

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 203
    .end local v3    # "P":Lorg/jbox2d/common/Vec2;
    :goto_353
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexA:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v17, v0

    cmpl-float v17, v17, v15

    if-eqz v17, :cond_39f

    .line 204
    sget-boolean v17, Lorg/jbox2d/dynamics/joints/FrictionJoint;->$assertionsDisabled:Z

    if-nez v17, :cond_39f

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexA:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v17, v0

    cmpl-float v17, v17, v15

    if-nez v17, :cond_39f

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 199
    :cond_38d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_linearImpulse:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 200
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_angularImpulse:F

    goto :goto_353

    .line 206
    :cond_39f
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexA:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iput v15, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 208
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexB:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move/from16 v0, v16

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-interface/range {v17 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->pushMat22(I)V

    .line 213
    return-void
.end method

.method public setMaxForce(F)V
    .registers 3
    .param p1, "force"    # F

    .prologue
    .line 105
    sget-boolean v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gez v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 106
    :cond_f
    iput p1, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_maxForce:F

    .line 107
    return-void
.end method

.method public setMaxTorque(F)V
    .registers 3
    .param p1, "torque"    # F

    .prologue
    .line 114
    sget-boolean v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gez v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 115
    :cond_f
    iput p1, p0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_maxTorque:F

    .line 116
    return-void
.end method

.method public solvePositionConstraints(Lorg/jbox2d/dynamics/SolverData;)Z
    .registers 3
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 19
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 217
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexA:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iget-object v11, v15, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 218
    .local v11, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexA:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iget v13, v15, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 219
    .local v13, "wA":F
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexB:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iget-object v12, v15, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 220
    .local v12, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexB:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iget v14, v15, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 222
    .local v14, "wB":F
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_invMassA:F

    .local v6, "mA":F
    move-object/from16 v0, p0

    iget v7, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_invMassB:F

    .line 223
    .local v7, "mB":F
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_invIA:F

    .local v3, "iA":F
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_invIB:F

    .line 225
    .local v4, "iB":F
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    iget v2, v15, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    .line 229
    .local v2, "h":F
    sub-float v1, v14, v13

    .line 230
    .local v1, "Cdot":F
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_angularMass:F

    neg-float v15, v15

    mul-float v5, v15, v1

    .line 232
    .local v5, "impulse":F
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_angularImpulse:F

    .line 233
    .local v9, "oldImpulse":F
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_maxTorque:F

    mul-float v8, v2, v15

    .line 234
    .local v8, "maxImpulse":F
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_angularImpulse:F

    add-float/2addr v15, v5

    neg-float v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v15, v0, v8}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_angularImpulse:F

    .line 235
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_angularImpulse:F

    sub-float v5, v15, v9

    .line 237
    mul-float v15, v3, v5

    sub-float/2addr v13, v15

    .line 238
    mul-float v15, v4, v5

    add-float/2addr v14, v15

    .line 243
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v15}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 244
    .local v1, "Cdot":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v15}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v10

    .line 246
    .local v10, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    invoke-static {v13, v15, v10}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    invoke-static {v14, v15, v1}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 248
    invoke-virtual {v1, v12}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-virtual {v15, v11}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-virtual {v15, v10}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 250
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v15}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 251
    .local v5, "impulse":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_linearMass:Lorg/jbox2d/common/Mat22;

    invoke-static {v15, v1, v5}, Lorg/jbox2d/common/Mat22;->mulToOutUnsafe(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 252
    invoke-virtual {v5}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 255
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v15}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v9

    .line 256
    .local v9, "oldImpulse":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_linearImpulse:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v9, v15}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 257
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_linearImpulse:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v15, v5}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 259
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_maxForce:F

    mul-float v8, v2, v15

    .line 261
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_linearImpulse:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v15}, Lorg/jbox2d/common/Vec2;->lengthSquared()F

    move-result v15

    mul-float v16, v8, v8

    cmpl-float v15, v15, v16

    if-lez v15, :cond_f2

    .line 262
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_linearImpulse:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v15}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 263
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_linearImpulse:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v15, v8}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 266
    :cond_f2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_linearImpulse:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v5, v15}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-virtual {v15, v9}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 268
    invoke-virtual {v10, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-virtual {v15, v6}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 269
    invoke-virtual {v11, v10}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 270
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    invoke-static {v15, v5}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v15

    mul-float/2addr v15, v3

    sub-float/2addr v13, v15

    .line 272
    invoke-virtual {v10, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-virtual {v15, v7}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 273
    invoke-virtual {v12, v10}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 274
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    invoke-static {v15, v5}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v15

    mul-float/2addr v15, v4

    add-float/2addr v14, v15

    .line 279
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexA:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iget v15, v15, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    cmpl-float v15, v15, v13

    if-eqz v15, :cond_153

    .line 280
    sget-boolean v15, Lorg/jbox2d/dynamics/joints/FrictionJoint;->$assertionsDisabled:Z

    if-nez v15, :cond_153

    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexA:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iget v15, v15, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    cmpl-float v15, v15, v13

    if-nez v15, :cond_153

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 282
    :cond_153
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexA:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iput v13, v15, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 285
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->m_indexB:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iput v14, v15, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 287
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/FrictionJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/16 v16, 0x4

    invoke-interface/range {v15 .. v16}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 288
    return-void
.end method
