###### Class org.jbox2d.dynamics.joints.DistanceJoint (org.jbox2d.dynamics.joints.DistanceJoint)
.class public Lorg/jbox2d/dynamics/joints/DistanceJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "DistanceJoint.java"


# instance fields
.field private m_bias:F

.field private m_dampingRatio:F

.field private m_frequencyHz:F

.field private m_gamma:F

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

.field private final m_rA:Lorg/jbox2d/common/Vec2;

.field private final m_rB:Lorg/jbox2d/common/Vec2;

.field private final m_u:Lorg/jbox2d/common/Vec2;


# direct methods
.method protected constructor <init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/DistanceJointDef;)V
    .registers 5
    .param p1, "argWorld"    # Lorg/jbox2d/pooling/IWorldPool;
    .param p2, "def"    # Lorg/jbox2d/dynamics/joints/DistanceJointDef;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 83
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    .line 84
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    .line 85
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    .line 86
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    .line 87
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    .line 96
    iget-object v0, p2, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 97
    iget-object v0, p2, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 98
    iget v0, p2, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->length:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_length:F

    .line 99
    iput v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    .line 100
    iget v0, p2, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->frequencyHz:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_frequencyHz:F

    .line 101
    iget v0, p2, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->dampingRatio:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_dampingRatio:F

    .line 102
    iput v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_gamma:F

    .line 103
    iput v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bias:F

    .line 104
    return-void
.end method


# virtual methods
.method public getAnchorA(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 133
    return-void
.end method

.method public getAnchorB(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 137
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 138
    return-void
.end method

.method public getDampingRatio()F
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_dampingRatio:F

    return v0
.end method

.method public getFrequency()F
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_frequencyHz:F

    return v0
.end method

.method public getLength()F
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_length:F

    return v0
.end method

.method public getLocalAnchorA()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getLocalAnchorB()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getReactionForce(FLorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "inv_dt"    # F
    .param p2, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 153
    iget v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 154
    iget v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 155
    return-void
.end method

.method public getReactionTorque(F)F
    .registers 3
    .param p1, "inv_dt"    # F

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 28
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexA:I

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexB:I

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invMassA:F

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invMassB:F

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invIA:F

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invIB:F

    .line 178
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexA:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v7, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 179
    .local v7, "cA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexA:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v5, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 180
    .local v5, "aA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexA:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    .line 181
    .local v19, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexA:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v21, v0

    .line 183
    .local v21, "wA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexB:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v8, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 184
    .local v8, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexB:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v6, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 185
    .local v6, "aB":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexB:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    .line 186
    .local v20, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexB:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v22, v0

    .line 188
    .local v22, "wB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v17

    .line 189
    .local v17, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v18

    .line 191
    .local v18, "qB":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 192
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-interface/range {v23 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v15

    .line 203
    .local v15, "length":F
    const v23, 0x3ba3d70a    # 0.005f

    cmpl-float v23, v15, v23

    if-lez v23, :cond_419

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    const/high16 v25, 0x3f800000    # 1.0f

    div-float v25, v25, v15

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    const/high16 v25, 0x3f800000    # 1.0f

    div-float v25, v25, v15

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 211
    :goto_21b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v9

    .line 212
    .local v9, "crAu":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v10

    .line 213
    .local v10, "crBu":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invMassA:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invIA:F

    move/from16 v24, v0

    mul-float v24, v24, v9

    mul-float v24, v24, v9

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invMassB:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invIB:F

    move/from16 v24, v0

    mul-float v24, v24, v10

    mul-float v24, v24, v10

    add-float v13, v23, v24

    .line 216
    .local v13, "invMass":F
    const/16 v23, 0x0

    cmpl-float v23, v13, v23

    if-eqz v23, :cond_428

    const/high16 v23, 0x3f800000    # 1.0f

    div-float v23, v23, v13

    :goto_26b
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_mass:F

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_frequencyHz:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_434

    .line 219
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_length:F

    move/from16 v23, v0

    sub-float v3, v15, v23

    .line 222
    .local v3, "C":F
    const v23, 0x40c90fdb

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_frequencyHz:F

    move/from16 v24, v0

    mul-float v16, v23, v24

    .line 225
    .local v16, "omega":F
    const/high16 v23, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_mass:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_dampingRatio:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    mul-float v11, v23, v16

    .line 228
    .local v11, "d":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_mass:F

    move/from16 v23, v0

    mul-float v23, v23, v16

    mul-float v14, v23, v16

    .line 231
    .local v14, "k":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v12, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    .line 232
    .local v12, "h":F
    mul-float v23, v12, v14

    add-float v23, v23, v11

    mul-float v23, v23, v12

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_gamma:F

    .line 233
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_gamma:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-eqz v23, :cond_42c

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_gamma:F

    move/from16 v24, v0

    div-float v23, v23, v24

    :goto_2da
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_gamma:F

    .line 234
    mul-float v23, v3, v12

    mul-float v23, v23, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_gamma:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bias:F

    .line 236
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_gamma:F

    move/from16 v23, v0

    add-float v13, v13, v23

    .line 237
    const/16 v23, 0x0

    cmpl-float v23, v13, v23

    if-eqz v23, :cond_430

    const/high16 v23, 0x3f800000    # 1.0f

    div-float v23, v23, v13

    :goto_304
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_mass:F

    .line 242
    .end local v3    # "C":F
    .end local v11    # "d":F
    .end local v12    # "h":F
    .end local v14    # "k":F
    .end local v16    # "omega":F
    :goto_30a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    move/from16 v23, v0

    if-eqz v23, :cond_446

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 248
    .local v4, "P":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 250
    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invMassA:F

    move/from16 v24, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 251
    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invMassA:F

    move/from16 v24, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 252
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invIA:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    mul-float v23, v23, v24

    sub-float v21, v21, v23

    .line 254
    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invMassB:F

    move/from16 v24, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 255
    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invMassB:F

    move/from16 v24, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invIB:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    mul-float v23, v23, v24

    add-float v22, v22, v23

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-interface/range {v23 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 263
    .end local v4    # "P":Lorg/jbox2d/common/Vec2;
    :goto_3f0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexA:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move/from16 v0, v21

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 265
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexB:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move/from16 v0, v22

    move-object/from16 v1, v23

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 266
    return-void

    .line 207
    .end local v9    # "crAu":F
    .end local v10    # "crBu":F
    .end local v13    # "invMass":F
    :cond_419
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    goto/16 :goto_21b

    .line 216
    .restart local v9    # "crAu":F
    .restart local v10    # "crBu":F
    .restart local v13    # "invMass":F
    :cond_428
    const/16 v23, 0x0

    goto/16 :goto_26b

    .line 233
    .restart local v3    # "C":F
    .restart local v11    # "d":F
    .restart local v12    # "h":F
    .restart local v14    # "k":F
    .restart local v16    # "omega":F
    :cond_42c
    const/16 v23, 0x0

    goto/16 :goto_2da

    .line 237
    :cond_430
    const/16 v23, 0x0

    goto/16 :goto_304

    .line 239
    .end local v3    # "C":F
    .end local v11    # "d":F
    .end local v12    # "h":F
    .end local v14    # "k":F
    .end local v16    # "omega":F
    :cond_434
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_gamma:F

    .line 240
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bias:F

    goto/16 :goto_30a

    .line 260
    :cond_446
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    goto :goto_3f0
.end method

.method public setDampingRatio(F)V
    .registers 2
    .param p1, "damp"    # F

    .prologue
    .line 123
    iput p1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_dampingRatio:F

    .line 124
    return-void
.end method

.method public setFrequency(F)V
    .registers 2
    .param p1, "hz"    # F

    .prologue
    .line 107
    iput p1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_frequencyHz:F

    .line 108
    return-void
.end method

.method public setLength(F)V
    .registers 2
    .param p1, "argLength"    # F

    .prologue
    .line 119
    iput p1, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_length:F

    .line 120
    return-void
.end method

.method public solvePositionConstraints(Lorg/jbox2d/dynamics/SolverData;)Z
    .registers 20
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 309
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_frequencyHz:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_c

    .line 310
    const/4 v15, 0x1

    .line 354
    :goto_b
    return v15

    .line 312
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v15}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v10

    .line 313
    .local v10, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v15}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v11

    .line 314
    .local v11, "qB":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v15}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v12

    .line 315
    .local v12, "rA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v15}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v13

    .line 316
    .local v13, "rB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v15}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v14

    .line 318
    .local v14, "u":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexA:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iget-object v6, v15, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 319
    .local v6, "cA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexA:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iget v4, v15, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 320
    .local v4, "aA":F
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexB:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iget-object v7, v15, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 321
    .local v7, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexB:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iget v5, v15, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 323
    .local v5, "aB":F
    invoke-virtual {v10, v4}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 324
    invoke-virtual {v11, v5}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 326
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v14, v15}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-static {v10, v15, v12}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v14, v15}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-static {v11, v15, v13}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 328
    invoke-virtual {v14, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-virtual {v15, v13}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-virtual {v15, v6}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-virtual {v15, v12}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 331
    invoke-virtual {v14}, Lorg/jbox2d/common/Vec2;->normalize()F

    move-result v9

    .line 332
    .local v9, "length":F
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_length:F

    sub-float v1, v9, v15

    .line 333
    .local v1, "C":F
    const v15, -0x41b33333    # -0.2f

    const v16, 0x3e4ccccd    # 0.2f

    move/from16 v0, v16

    invoke-static {v1, v15, v0}, Lorg/jbox2d/common/MathUtils;->clamp(FFF)F

    move-result v1

    .line 335
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_mass:F

    neg-float v15, v15

    mul-float v8, v15, v1

    .line 336
    .local v8, "impulse":F
    iget v15, v14, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v2, v8, v15

    .line 337
    .local v2, "Px":F
    iget v15, v14, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v3, v8, v15

    .line 339
    .local v3, "Py":F
    iget v15, v6, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invMassA:F

    move/from16 v16, v0

    mul-float v16, v16, v2

    sub-float v15, v15, v16

    iput v15, v6, Lorg/jbox2d/common/Vec2;->x:F

    .line 340
    iget v15, v6, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invMassA:F

    move/from16 v16, v0

    mul-float v16, v16, v3

    sub-float v15, v15, v16

    iput v15, v6, Lorg/jbox2d/common/Vec2;->y:F

    .line 341
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invIA:F

    iget v0, v12, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    mul-float v16, v16, v3

    iget v0, v12, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    mul-float v17, v17, v2

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    sub-float/2addr v4, v15

    .line 342
    iget v15, v7, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invMassB:F

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v15, v15, v16

    iput v15, v7, Lorg/jbox2d/common/Vec2;->x:F

    .line 343
    iget v15, v7, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invMassB:F

    move/from16 v16, v0

    mul-float v16, v16, v3

    add-float v15, v15, v16

    iput v15, v7, Lorg/jbox2d/common/Vec2;->y:F

    .line 344
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invIB:F

    iget v0, v13, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    mul-float v16, v16, v3

    iget v0, v13, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    mul-float v17, v17, v2

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v5, v15

    .line 347
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexA:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iput v4, v15, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 349
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexB:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iput v5, v15, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 351
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/16 v16, 0x3

    invoke-interface/range {v15 .. v16}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/16 v16, 0x2

    invoke-interface/range {v15 .. v16}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 354
    invoke-static {v1}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v15

    const v16, 0x3ba3d70a    # 0.005f

    cmpg-float v15, v15, v16

    if-gez v15, :cond_16e

    const/4 v15, 0x1

    goto/16 :goto_b

    :cond_16e
    const/4 v15, 0x0

    goto/16 :goto_b
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 16
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 270
    iget-object v10, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    iget v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexA:I

    aget-object v10, v10, v11

    iget-object v4, v10, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 271
    .local v4, "vA":Lorg/jbox2d/common/Vec2;
    iget-object v10, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    iget v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexA:I

    aget-object v10, v10, v11

    iget v8, v10, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 272
    .local v8, "wA":F
    iget-object v10, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    iget v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexB:I

    aget-object v10, v10, v11

    iget-object v5, v10, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 273
    .local v5, "vB":Lorg/jbox2d/common/Vec2;
    iget-object v10, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    iget v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexB:I

    aget-object v10, v10, v11

    iget v9, v10, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 275
    .local v9, "wB":F
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v10}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 276
    .local v6, "vpA":Lorg/jbox2d/common/Vec2;
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v10}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 279
    .local v7, "vpB":Lorg/jbox2d/common/Vec2;
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    invoke-static {v8, v10, v6}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 280
    invoke-virtual {v6, v4}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 281
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    invoke-static {v9, v10, v7}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 282
    invoke-virtual {v7, v5}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 283
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v7, v6}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    .line 285
    .local v0, "Cdot":F
    iget v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_mass:F

    neg-float v10, v10

    iget v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_bias:F

    add-float/2addr v11, v0

    iget v12, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_gamma:F

    iget v13, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    mul-float v3, v10, v11

    .line 286
    .local v3, "impulse":F
    iget v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    add-float/2addr v10, v3

    iput v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_impulse:F

    .line 289
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v1, v3, v10

    .line 290
    .local v1, "Px":F
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_u:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v2, v3, v10

    .line 292
    .local v2, "Py":F
    iget v10, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invMassA:F

    mul-float/2addr v11, v1

    sub-float/2addr v10, v11

    iput v10, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 293
    iget v10, v4, Lorg/jbox2d/common/Vec2;->y:F

    iget v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invMassA:F

    mul-float/2addr v11, v2

    sub-float/2addr v10, v11

    iput v10, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 294
    iget v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invIA:F

    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v2

    iget-object v12, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v12, v1

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v8, v10

    .line 295
    iget v10, v5, Lorg/jbox2d/common/Vec2;->x:F

    iget v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invMassB:F

    mul-float/2addr v11, v1

    add-float/2addr v10, v11

    iput v10, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 296
    iget v10, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invMassB:F

    mul-float/2addr v11, v2

    add-float/2addr v10, v11

    iput v10, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 297
    iget v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_invIB:F

    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v2

    iget-object v12, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v12, v1

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 300
    iget-object v10, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    iget v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexA:I

    aget-object v10, v10, v11

    iput v8, v10, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 302
    iget-object v10, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    iget v11, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->m_indexB:I

    aget-object v10, v10, v11

    iput v9, v10, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 304
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/DistanceJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 305
    return-void
.end method
