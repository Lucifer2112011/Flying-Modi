###### Class org.jbox2d.dynamics.joints.RopeJoint (org.jbox2d.dynamics.joints.RopeJoint)
.class public Lorg/jbox2d/dynamics/joints/RopeJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "RopeJoint.java"


# instance fields
.field private m_impulse:F

.field private m_indexA:I

.field private m_indexB:I

.field private m_invIA:F

.field private m_invIB:F

.field private m_invMassA:F

.field private m_invMassB:F

.field private m_length:F

.field private final m_localAnchorA:Lorg/jbox2d/common/Vec2;

.field private final m_localAnchorB:Lorg/jbox2d/common/Vec2;

.field private final m_localCenterA:Lorg/jbox2d/common/Vec2;

.field private final m_localCenterB:Lorg/jbox2d/common/Vec2;

.field private m_mass:F

.field private m_maxLength:F

.field private final m_rA:Lorg/jbox2d/common/Vec2;

.field private final m_rB:Lorg/jbox2d/common/Vec2;

.field private m_state:Lorg/jbox2d/dynamics/joints/LimitState;

.field private final m_u:Lorg/jbox2d/common/Vec2;


# direct methods
.method protected constructor <init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/RopeJointDef;)V
    .registers 6
    .param p1, "worldPool"    # Lorg/jbox2d/pooling/IWorldPool;
    .param p2, "def"    # Lorg/jbox2d/dynamics/joints/RopeJointDef;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 21
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 22
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 30
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_u:Lorg/jbox2d/common/Vec2;

    .line 31
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    .line 32
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    .line 33
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    .line 34
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    .line 44
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/RopeJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 45
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/RopeJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 47
    iget v0, p2, Lorg/jbox2d/dynamics/joints/RopeJointDef;->maxLength:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_maxLength:F

    .line 49
    iput v2, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_mass:F

    .line 50
    iput v2, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_impulse:F

    .line 51
    sget-object v0, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE:Lorg/jbox2d/dynamics/joints/LimitState;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_state:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 52
    iput v2, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_length:F

    .line 53
    return-void
.end method


# virtual methods
.method public getAnchorA(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 238
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 239
    return-void
.end method

.method public getAnchorB(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 243
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 244
    return-void
.end method

.method public getLimitState()Lorg/jbox2d/dynamics/joints/LimitState;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_state:Lorg/jbox2d/dynamics/joints/LimitState;

    return-object v0
.end method

.method public getLocalAnchorA()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getLocalAnchorB()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getMaxLength()F
    .registers 2

    .prologue
    .line 265
    iget v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_maxLength:F

    return v0
.end method

.method public getReactionForce(FLorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "inv_dt"    # F
    .param p2, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 248
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_u:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget v1, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_impulse:F

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 249
    return-void
.end method

.method public getReactionTorque(F)F
    .registers 3
    .param p1, "inv_dt"    # F

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 24
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexA:I

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexB:I

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invMassA:F

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invMassB:F

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invIA:F

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invIB:F

    .line 66
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexA:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v7, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 67
    .local v7, "cA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexA:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget v5, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 68
    .local v5, "aA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexA:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v15, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 69
    .local v15, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexA:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v17, v0

    .line 71
    .local v17, "wA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexB:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v8, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 72
    .local v8, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexB:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget v6, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 73
    .local v6, "aB":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexB:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    .line 74
    .local v16, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexB:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v18, v0

    .line 76
    .local v18, "wB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v12

    .line 77
    .local v12, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v13

    .line 78
    .local v13, "qB":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v14

    .line 80
    .local v14, "temp":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v12, v5}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 81
    invoke-virtual {v13, v6}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v12, v0, v1}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v13, v0, v1}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_length:F

    .line 91
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_length:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_maxLength:F

    move/from16 v20, v0

    sub-float v2, v19, v20

    .line 92
    .local v2, "C":F
    const/16 v19, 0x0

    cmpl-float v19, v2, v19

    if-lez v19, :cond_398

    .line 93
    sget-object v19, Lorg/jbox2d/dynamics/joints/LimitState;->AT_UPPER:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_state:Lorg/jbox2d/dynamics/joints/LimitState;

    .line 98
    :goto_1f3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_length:F

    move/from16 v19, v0

    const v20, 0x3ba3d70a    # 0.005f

    cmpl-float v19, v19, v20

    if-lez v19, :cond_3a2

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_length:F

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v9

    .line 109
    .local v9, "crA":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v10

    .line 110
    .local v10, "crB":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invMassA:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invIA:F

    move/from16 v20, v0

    mul-float v20, v20, v9

    mul-float v20, v20, v9

    add-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invMassB:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invIB:F

    move/from16 v20, v0

    mul-float v20, v20, v10

    mul-float v20, v20, v10

    add-float v11, v19, v20

    .line 112
    .local v11, "invMass":F
    const/16 v19, 0x0

    cmpl-float v19, v11, v19

    if-eqz v19, :cond_3bc

    const/high16 v19, 0x3f800000    # 1.0f

    div-float v19, v19, v11

    :goto_263
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_mass:F

    .line 114
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3c0

    .line 116
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_impulse:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_impulse:F

    .line 118
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_impulse:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v3, v19, v20

    .line 119
    .local v3, "Px":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_impulse:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    mul-float v4, v19, v20

    .line 120
    .local v4, "Py":F
    iget v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invMassA:F

    move/from16 v20, v0

    mul-float v20, v20, v3

    sub-float v19, v19, v20

    move/from16 v0, v19

    iput v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    .line 121
    iget v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invMassA:F

    move/from16 v20, v0

    mul-float v20, v20, v4

    sub-float v19, v19, v20

    move/from16 v0, v19

    iput v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    .line 122
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invIA:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v20, v20, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v21, v21, v3

    sub-float v20, v20, v21

    mul-float v19, v19, v20

    sub-float v17, v17, v19

    .line 124
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invMassB:F

    move/from16 v20, v0

    mul-float v20, v20, v3

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 125
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invMassB:F

    move/from16 v20, v0

    mul-float v20, v20, v4

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 126
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invIB:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    mul-float v20, v20, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    mul-float v21, v21, v3

    sub-float v20, v20, v21

    mul-float v19, v19, v20

    add-float v18, v18, v19

    .line 131
    .end local v3    # "Px":F
    .end local v4    # "Py":F
    :goto_359
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-interface/range {v19 .. v20}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 135
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexA:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    move/from16 v0, v17

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 137
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexB:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 138
    .end local v9    # "crA":F
    .end local v10    # "crB":F
    .end local v11    # "invMass":F
    :goto_397
    return-void

    .line 95
    :cond_398
    sget-object v19, Lorg/jbox2d/dynamics/joints/LimitState;->INACTIVE:Lorg/jbox2d/dynamics/joints/LimitState;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_state:Lorg/jbox2d/dynamics/joints/LimitState;

    goto/16 :goto_1f3

    .line 101
    :cond_3a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 102
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_mass:F

    .line 103
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_impulse:F

    goto :goto_397

    .line 112
    .restart local v9    # "crA":F
    .restart local v10    # "crB":F
    .restart local v11    # "invMass":F
    :cond_3bc
    const/16 v19, 0x0

    goto/16 :goto_263

    .line 128
    :cond_3c0
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_impulse:F

    goto :goto_359
.end method

.method public setMaxLength(F)V
    .registers 2
    .param p1, "maxLength"    # F

    .prologue
    .line 269
    iput p1, p0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_maxLength:F

    .line 270
    return-void
.end method

.method public solvePositionConstraints(Lorg/jbox2d/dynamics/SolverData;)Z
    .registers 22
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 189
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexA:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v7, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 190
    .local v7, "cA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexA:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v5, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 191
    .local v5, "aA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexB:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v8, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 192
    .local v8, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexB:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v6, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 194
    .local v6, "aB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v11

    .line 195
    .local v11, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v12

    .line 196
    .local v12, "qB":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v16

    .line 197
    .local v16, "u":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v13

    .line 198
    .local v13, "rA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v14

    .line 199
    .local v14, "rB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v15

    .line 201
    .local v15, "temp":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v11, v5}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 202
    invoke-virtual {v12, v6}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v11, v0, v13}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v12, v0, v14}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 207
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 209
    invoke-virtual/range {v16 .. v16}, Lorg/jbox2d/common/Vec2;->normalize()F

    move-result v10

    .line 210
    .local v10, "length":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_maxLength:F

    move/from16 v17, v0

    sub-float v2, v10, v17

    .line 212
    .local v2, "C":F
    const/16 v17, 0x0

    const v18, 0x3e4ccccd    # 0.2f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v2, v0, v1}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v2

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_mass:F

    move/from16 v17, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    mul-float v9, v17, v2

    .line 215
    .local v9, "impulse":F
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v17, v0

    mul-float v3, v9, v17

    .line 216
    .local v3, "Px":F
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    mul-float v4, v9, v17

    .line 218
    .local v4, "Py":F
    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invMassA:F

    move/from16 v18, v0

    mul-float v18, v18, v3

    sub-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    .line 219
    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invMassA:F

    move/from16 v18, v0

    mul-float v18, v18, v4

    sub-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invIA:F

    move/from16 v17, v0

    iget v0, v13, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    mul-float v18, v18, v4

    iget v0, v13, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v3

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    sub-float v5, v5, v17

    .line 221
    iget v0, v8, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invMassB:F

    move/from16 v18, v0

    mul-float v18, v18, v3

    add-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v8, Lorg/jbox2d/common/Vec2;->x:F

    .line 222
    iget v0, v8, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invMassB:F

    move/from16 v18, v0

    mul-float v18, v18, v4

    add-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v8, Lorg/jbox2d/common/Vec2;->y:F

    .line 223
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invIB:F

    move/from16 v17, v0

    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    mul-float v18, v18, v4

    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v3

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    add-float v6, v6, v17

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-interface/range {v17 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-interface/range {v17 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 229
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexA:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iput v5, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 231
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexB:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iput v6, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 233
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_maxLength:F

    move/from16 v17, v0

    sub-float v17, v10, v17

    const v18, 0x3ba3d70a    # 0.005f

    cmpg-float v17, v17, v18

    if-gez v17, :cond_1d1

    const/16 v17, 0x1

    :goto_1d0
    return v17

    :cond_1d1
    const/16 v17, 0x0

    goto :goto_1d0
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 19
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 142
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexA:I

    aget-object v14, v14, v15

    iget-object v8, v14, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 143
    .local v8, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexA:I

    aget-object v14, v14, v15

    iget v12, v14, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 144
    .local v12, "wA":F
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexB:I

    aget-object v14, v14, v15

    iget-object v9, v14, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 145
    .local v9, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexB:I

    aget-object v14, v14, v15

    iget v13, v14, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 148
    .local v13, "wB":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v14}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v10

    .line 149
    .local v10, "vpA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v14}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v11

    .line 150
    .local v11, "vpB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v14}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 152
    .local v7, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    invoke-static {v12, v14, v10}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 153
    invoke-virtual {v10, v8}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 154
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    invoke-static {v13, v14, v11}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 155
    invoke-virtual {v11, v9}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 157
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_length:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_maxLength:F

    sub-float v1, v14, v15

    .line 158
    .local v1, "C":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_u:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v7, v11}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-virtual {v15, v10}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v2

    .line 161
    .local v2, "Cdot":F
    const/4 v14, 0x0

    cmpg-float v14, v1, v14

    if-gez v14, :cond_83

    .line 162
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    iget v14, v14, Lorg/jbox2d/dynamics/TimeStep;->inv_dt:F

    mul-float/2addr v14, v1

    add-float/2addr v2, v14

    .line 165
    :cond_83
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_mass:F

    neg-float v14, v14

    mul-float v5, v14, v2

    .line 166
    .local v5, "impulse":F
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_impulse:F

    .line 167
    .local v6, "oldImpulse":F
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_impulse:F

    add-float/2addr v15, v5

    invoke-static {v14, v15}, Lorg/jbox2d/common/MathUtils;->min(FF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_impulse:F

    .line 168
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_impulse:F

    sub-float v5, v14, v6

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_u:Lorg/jbox2d/common/Vec2;

    iget v14, v14, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v3, v5, v14

    .line 171
    .local v3, "Px":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_u:Lorg/jbox2d/common/Vec2;

    iget v14, v14, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v4, v5, v14

    .line 172
    .local v4, "Py":F
    iget v14, v8, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invMassA:F

    mul-float/2addr v15, v3

    sub-float/2addr v14, v15

    iput v14, v8, Lorg/jbox2d/common/Vec2;->x:F

    .line 173
    iget v14, v8, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invMassA:F

    mul-float/2addr v15, v4

    sub-float/2addr v14, v15

    iput v14, v8, Lorg/jbox2d/common/Vec2;->y:F

    .line 174
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invIA:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v15, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    mul-float v16, v16, v3

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    sub-float/2addr v12, v14

    .line 175
    iget v14, v9, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invMassB:F

    mul-float/2addr v15, v3

    add-float/2addr v14, v15

    iput v14, v9, Lorg/jbox2d/common/Vec2;->x:F

    .line 176
    iget v14, v9, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invMassB:F

    mul-float/2addr v15, v4

    add-float/2addr v14, v15

    iput v14, v9, Lorg/jbox2d/common/Vec2;->y:F

    .line 177
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_invIB:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v15, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    mul-float v16, v16, v3

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    .line 179
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 182
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexA:I

    aget-object v14, v14, v15

    iput v12, v14, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 184
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/RopeJoint;->m_indexB:I

    aget-object v14, v14, v15

    iput v13, v14, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 185
    return-void
.end method
