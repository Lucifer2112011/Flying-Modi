###### Class org.jbox2d.dynamics.joints.WeldJoint (org.jbox2d.dynamics.joints.WeldJoint)
.class public Lorg/jbox2d/dynamics/joints/WeldJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "WeldJoint.java"


# instance fields
.field private m_bias:F

.field private m_dampingRatio:F

.field private m_frequencyHz:F

.field private m_gamma:F

.field private final m_impulse:Lorg/jbox2d/common/Vec3;

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

.field private final m_mass:Lorg/jbox2d/common/Mat33;

.field private final m_rA:Lorg/jbox2d/common/Vec2;

.field private final m_rB:Lorg/jbox2d/common/Vec2;

.field private m_referenceAngle:F


# direct methods
.method protected constructor <init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/WeldJointDef;)V
    .registers 5
    .param p1, "argWorld"    # Lorg/jbox2d/pooling/IWorldPool;
    .param p2, "def"    # Lorg/jbox2d/dynamics/joints/WeldJointDef;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 75
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    .line 76
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    .line 77
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    .line 78
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    .line 83
    new-instance v0, Lorg/jbox2d/common/Mat33;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat33;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    .line 87
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/WeldJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(Lorg/jbox2d/common/Vec2;)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 88
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/WeldJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(Lorg/jbox2d/common/Vec2;)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 89
    iget v0, p2, Lorg/jbox2d/dynamics/joints/WeldJointDef;->referenceAngle:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_referenceAngle:F

    .line 90
    iget v0, p2, Lorg/jbox2d/dynamics/joints/WeldJointDef;->frequencyHz:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_frequencyHz:F

    .line 91
    iget v0, p2, Lorg/jbox2d/dynamics/joints/WeldJointDef;->dampingRatio:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_dampingRatio:F

    .line 93
    new-instance v0, Lorg/jbox2d/common/Vec3;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec3;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    .line 94
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec3;->setZero()V

    .line 95
    return-void
.end method


# virtual methods
.method public getAnchorA(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 128
    return-void
.end method

.method public getAnchorB(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 133
    return-void
.end method

.method public getDampingRatio()F
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_dampingRatio:F

    return v0
.end method

.method public getFrequency()F
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_frequencyHz:F

    return v0
.end method

.method public getLocalAnchorA()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getLocalAnchorB()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getReactionForce(FLorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "inv_dt"    # F
    .param p2, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 137
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    iget v1, v1, Lorg/jbox2d/common/Vec3;->y:F

    invoke-virtual {p2, v0, v1}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 138
    invoke-virtual {p2, p1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 139
    return-void
.end method

.method public getReactionTorque(F)F
    .registers 3
    .param p1, "inv_dt"    # F

    .prologue
    .line 143
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public getReferenceAngle()F
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_referenceAngle:F

    return v0
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 31
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexA:I

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexB:I

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_invMassA:F

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_invMassB:F

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_invIA:F

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_invIB:F

    .line 158
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexA:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v6, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 159
    .local v6, "aA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexA:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    .line 160
    .local v21, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexA:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v23, v0

    .line 163
    .local v23, "wA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexB:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v7, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 164
    .local v7, "aB":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexB:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    .line 165
    .local v22, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexB:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v24, v0

    .line 167
    .local v24, "wB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v18

    .line 168
    .local v18, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v19

    .line 169
    .local v19, "qB":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v20

    .line 171
    .local v20, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 172
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 187
    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_invMassA:F

    .local v15, "mA":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_invMassB:F

    move/from16 v16, v0

    .line 188
    .local v16, "mB":F
    move-object/from16 v0, p0

    iget v10, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_invIA:F

    .local v10, "iA":F
    move-object/from16 v0, p0

    iget v11, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_invIB:F

    .line 190
    .local v11, "iB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->popMat33()Lorg/jbox2d/common/Mat33;

    move-result-object v4

    .line 192
    .local v4, "K":Lorg/jbox2d/common/Mat33;
    iget-object v0, v4, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    add-float v26, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    mul-float v27, v27, v10

    add-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    mul-float v27, v27, v11

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 193
    iget-object v0, v4, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    mul-float v26, v26, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    mul-float v27, v27, v11

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 194
    iget-object v0, v4, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    mul-float v27, v27, v11

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 195
    iget-object v0, v4, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    iget-object v0, v4, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 196
    iget-object v0, v4, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    add-float v26, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    mul-float v27, v27, v10

    add-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    mul-float v27, v27, v11

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 197
    iget-object v0, v4, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v26, v26, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    mul-float v27, v27, v11

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 198
    iget-object v0, v4, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    iget-object v0, v4, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 199
    iget-object v0, v4, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    iget-object v0, v4, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 200
    iget-object v0, v4, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    add-float v26, v10, v11

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 202
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_frequencyHz:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_508

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lorg/jbox2d/common/Mat33;->getInverse22(Lorg/jbox2d/common/Mat33;)V

    .line 205
    add-float v12, v10, v11

    .line 206
    .local v12, "invM":F
    const/16 v25, 0x0

    cmpl-float v25, v12, v25

    if-lez v25, :cond_4fd

    const/high16 v25, 0x3f800000    # 1.0f

    div-float v14, v25, v12

    .line 208
    .local v14, "m":F
    :goto_341
    sub-float v25, v7, v6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_referenceAngle:F

    move/from16 v26, v0

    sub-float v3, v25, v26

    .line 211
    .local v3, "C":F
    const v25, 0x40c90fdb

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_frequencyHz:F

    move/from16 v26, v0

    mul-float v17, v25, v26

    .line 214
    .local v17, "omega":F
    const/high16 v25, 0x40000000    # 2.0f

    mul-float v25, v25, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_dampingRatio:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    mul-float v8, v25, v17

    .line 217
    .local v8, "d":F
    mul-float v25, v14, v17

    mul-float v13, v25, v17

    .line 220
    .local v13, "k":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v9, v0, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    .line 221
    .local v9, "h":F
    mul-float v25, v9, v13

    add-float v25, v25, v8

    mul-float v25, v25, v9

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_gamma:F

    .line 222
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_gamma:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_500

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_gamma:F

    move/from16 v26, v0

    div-float v25, v25, v26

    :goto_394
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_gamma:F

    .line 223
    mul-float v25, v3, v9

    mul-float v25, v25, v13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_gamma:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_bias:F

    .line 225
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_gamma:F

    move/from16 v25, v0

    add-float v12, v12, v25

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v26, v0

    const/16 v25, 0x0

    cmpl-float v25, v12, v25

    if-eqz v25, :cond_504

    const/high16 v25, 0x3f800000    # 1.0f

    div-float v25, v25, v12

    :goto_3ca
    move/from16 v0, v25

    move-object/from16 v1, v26

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 233
    .end local v3    # "C":F
    .end local v8    # "d":F
    .end local v9    # "h":F
    .end local v12    # "invM":F
    .end local v13    # "k":F
    .end local v14    # "m":F
    .end local v17    # "omega":F
    :goto_3d0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    move/from16 v25, v0

    if-eqz v25, :cond_525

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 236
    .local v5, "P":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec3;->mulLocal(F)Lorg/jbox2d/common/Vec3;

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 240
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v26, v26, v15

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 241
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v26, v26, v15

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v5}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v26, v0

    add-float v25, v25, v26

    mul-float v25, v25, v10

    sub-float v23, v23, v25

    .line 244
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v26, v26, v16

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 245
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v26, v26, v16

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v5}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v26, v0

    add-float v25, v25, v26

    mul-float v25, v25, v11

    add-float v24, v24, v25

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 253
    .end local v5    # "P":Lorg/jbox2d/common/Vec2;
    :goto_4b3
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexA:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move/from16 v0, v23

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 255
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexB:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move/from16 v0, v24

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-interface/range {v25 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->pushMat33(I)V

    .line 260
    return-void

    .line 206
    .restart local v12    # "invM":F
    :cond_4fd
    const/4 v14, 0x0

    goto/16 :goto_341

    .line 222
    .restart local v3    # "C":F
    .restart local v8    # "d":F
    .restart local v9    # "h":F
    .restart local v13    # "k":F
    .restart local v14    # "m":F
    .restart local v17    # "omega":F
    :cond_500
    const/16 v25, 0x0

    goto/16 :goto_394

    .line 226
    :cond_504
    const/16 v25, 0x0

    goto/16 :goto_3ca

    .line 228
    .end local v3    # "C":F
    .end local v8    # "d":F
    .end local v9    # "h":F
    .end local v12    # "invM":F
    .end local v13    # "k":F
    .end local v14    # "m":F
    .end local v17    # "omega":F
    :cond_508
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lorg/jbox2d/common/Mat33;->getSymInverse33(Lorg/jbox2d/common/Mat33;)V

    .line 229
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_gamma:F

    .line 230
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_bias:F

    goto/16 :goto_3d0

    .line 249
    :cond_525
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/jbox2d/common/Vec3;->setZero()V

    goto :goto_4b3
.end method

.method public setDampingRatio(F)V
    .registers 2
    .param p1, "dampingRatio"    # F

    .prologue
    .line 122
    iput p1, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_dampingRatio:F

    .line 123
    return-void
.end method

.method public setFrequency(F)V
    .registers 2
    .param p1, "frequencyHz"    # F

    .prologue
    .line 114
    iput p1, p0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_frequencyHz:F

    .line 115
    return-void
.end method

.method public solvePositionConstraints(Lorg/jbox2d/dynamics/SolverData;)Z
    .registers 30
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 339
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexA:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v11, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 340
    .local v11, "cA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexA:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v8, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 341
    .local v8, "aA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexB:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v12, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 342
    .local v12, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexB:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v9, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 343
    .local v9, "aB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v19

    .line 344
    .local v19, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v20

    .line 345
    .local v20, "qB":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v23

    .line 346
    .local v23, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v21

    .line 347
    .local v21, "rA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v22

    .line 349
    .local v22, "rB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 350
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 352
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_invMassA:F

    move/from16 v16, v0

    .local v16, "mA":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_invMassB:F

    move/from16 v17, v0

    .line 353
    .local v17, "mB":F
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_invIA:F

    .local v13, "iA":F
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_invIB:F

    .line 355
    .local v14, "iB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popMat33()Lorg/jbox2d/common/Mat33;

    move-result-object v6

    .line 360
    .local v6, "K":Lorg/jbox2d/common/Mat33;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 361
    .local v4, "C1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 363
    .local v7, "P":Lorg/jbox2d/common/Vec2;
    iget-object v0, v6, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    move-object/from16 v24, v0

    add-float v25, v16, v17

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    mul-float v26, v26, v13

    add-float v25, v25, v26

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    mul-float v26, v26, v14

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 364
    iget-object v0, v6, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    mul-float v25, v25, v13

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    mul-float v26, v26, v14

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 365
    iget-object v0, v6, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v13

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v26, v26, v14

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 366
    iget-object v0, v6, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    move-object/from16 v24, v0

    iget-object v0, v6, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 367
    iget-object v0, v6, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    move-object/from16 v24, v0

    add-float v25, v16, v17

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    mul-float v26, v26, v13

    add-float v25, v25, v26

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    mul-float v26, v26, v14

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 368
    iget-object v0, v6, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v25, v25, v13

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v26, v26, v14

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 369
    iget-object v0, v6, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    move-object/from16 v24, v0

    iget-object v0, v6, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 370
    iget-object v0, v6, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    move-object/from16 v24, v0

    iget-object v0, v6, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 371
    iget-object v0, v6, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v24, v0

    add-float v25, v13, v14

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_frequencyHz:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_2e0

    .line 373
    invoke-virtual {v4, v12}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 375
    invoke-virtual {v4}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v18

    .line 376
    .local v18, "positionError":F
    const/4 v10, 0x0

    .line 378
    .local v10, "angularError":F
    invoke-virtual {v6, v4, v7}, Lorg/jbox2d/common/Mat33;->solve22ToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 379
    invoke-virtual {v7}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 381
    iget v0, v11, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v25, v25, v16

    sub-float v24, v24, v25

    move/from16 v0, v24

    iput v0, v11, Lorg/jbox2d/common/Vec2;->x:F

    .line 382
    iget v0, v11, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v25, v25, v16

    sub-float v24, v24, v25

    move/from16 v0, v24

    iput v0, v11, Lorg/jbox2d/common/Vec2;->y:F

    .line 383
    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    mul-float v24, v24, v13

    sub-float v8, v8, v24

    .line 385
    iget v0, v12, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v25, v25, v17

    add-float v24, v24, v25

    move/from16 v0, v24

    iput v0, v12, Lorg/jbox2d/common/Vec2;->x:F

    .line 386
    iget v0, v12, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v25, v25, v17

    add-float v24, v24, v25

    move/from16 v0, v24

    iput v0, v12, Lorg/jbox2d/common/Vec2;->y:F

    .line 387
    move-object/from16 v0, v22

    invoke-static {v0, v7}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    mul-float v24, v24, v14

    add-float v9, v9, v24

    .line 414
    :goto_28a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexA:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iput v8, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 416
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexB:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iput v9, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    invoke-interface/range {v24 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-interface/range {v24 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->pushMat33(I)V

    .line 422
    const v24, 0x3ba3d70a    # 0.005f

    cmpg-float v24, v18, v24

    if-gtz v24, :cond_3b0

    const v24, 0x3d0efa36

    cmpg-float v24, v10, v24

    if-gtz v24, :cond_3b0

    const/16 v24, 0x1

    :goto_2df
    return v24

    .line 389
    .end local v10    # "angularError":F
    .end local v18    # "positionError":F
    :cond_2e0
    invoke-virtual {v4, v12}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 390
    sub-float v24, v9, v8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_referenceAngle:F

    move/from16 v25, v0

    sub-float v5, v24, v25

    .line 392
    .local v5, "C2":F
    invoke-virtual {v4}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v18

    .line 393
    .restart local v18    # "positionError":F
    invoke-static {v5}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v10

    .line 395
    .restart local v10    # "angularError":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popVec3()Lorg/jbox2d/common/Vec3;

    move-result-object v3

    .line 396
    .local v3, "C":Lorg/jbox2d/common/Vec3;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popVec3()Lorg/jbox2d/common/Vec3;

    move-result-object v15

    .line 397
    .local v15, "impulse":Lorg/jbox2d/common/Vec3;
    iget v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1, v5}, Lorg/jbox2d/common/Vec3;->set(FFF)Lorg/jbox2d/common/Vec3;

    .line 399
    invoke-virtual {v6, v3, v15}, Lorg/jbox2d/common/Mat33;->solve33ToOut(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V

    .line 400
    invoke-virtual {v15}, Lorg/jbox2d/common/Vec3;->negateLocal()Lorg/jbox2d/common/Vec3;

    .line 401
    iget v0, v15, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v24, v0

    iget v0, v15, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 403
    iget v0, v11, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v25, v25, v16

    sub-float v24, v24, v25

    move/from16 v0, v24

    iput v0, v11, Lorg/jbox2d/common/Vec2;->x:F

    .line 404
    iget v0, v11, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v25, v25, v16

    sub-float v24, v24, v25

    move/from16 v0, v24

    iput v0, v11, Lorg/jbox2d/common/Vec2;->y:F

    .line 405
    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    iget v0, v15, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v25, v0

    add-float v24, v24, v25

    mul-float v24, v24, v13

    sub-float v8, v8, v24

    .line 407
    iget v0, v12, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    mul-float v25, v25, v17

    add-float v24, v24, v25

    move/from16 v0, v24

    iput v0, v12, Lorg/jbox2d/common/Vec2;->x:F

    .line 408
    iget v0, v12, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    mul-float v25, v25, v17

    add-float v24, v24, v25

    move/from16 v0, v24

    iput v0, v12, Lorg/jbox2d/common/Vec2;->y:F

    .line 409
    move-object/from16 v0, v22

    invoke-static {v0, v7}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    iget v0, v15, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v25, v0

    add-float v24, v24, v25

    mul-float v24, v24, v14

    add-float v9, v9, v24

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-interface/range {v24 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->pushVec3(I)V

    goto/16 :goto_28a

    .line 422
    .end local v3    # "C":Lorg/jbox2d/common/Vec3;
    .end local v5    # "C2":F
    .end local v15    # "impulse":Lorg/jbox2d/common/Vec3;
    :cond_3b0
    const/16 v24, 0x0

    goto/16 :goto_2df
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 24
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 264
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexA:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v14, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 265
    .local v14, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexA:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v16, v0

    .line 266
    .local v16, "wA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexB:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v15, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 267
    .local v15, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexB:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v17, v0

    .line 269
    .local v17, "wB":F
    move-object/from16 v0, p0

    iget v11, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_invMassA:F

    .local v11, "mA":F
    move-object/from16 v0, p0

    iget v12, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_invMassB:F

    .line 270
    .local v12, "mB":F
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_invIA:F

    .local v6, "iA":F
    move-object/from16 v0, p0

    iget v7, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_invIB:F

    .line 272
    .local v7, "iB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 273
    .local v3, "Cdot1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 274
    .local v5, "P":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v13

    .line 275
    .local v13, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_frequencyHz:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_1d7

    .line 276
    sub-float v4, v17, v16

    .line 278
    .local v4, "Cdot2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_bias:F

    move/from16 v19, v0

    add-float v19, v19, v4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_gamma:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v19, v19, v20

    mul-float v10, v18, v19

    .line 279
    .local v10, "impulse2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v19, v0

    add-float v19, v19, v10

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->z:F

    .line 281
    mul-float v18, v6, v10

    sub-float v16, v16, v18

    .line 282
    mul-float v18, v7, v10

    add-float v17, v17, v18

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1, v13}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 286
    invoke-virtual {v3, v15}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 288
    move-object v9, v5

    .line 289
    .local v9, "impulse1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v3, v9}, Lorg/jbox2d/common/Mat33;->mul22ToOutUnsafe(Lorg/jbox2d/common/Mat33;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 290
    invoke-virtual {v9}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v19, v0

    iget v0, v9, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->x:F

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v19, v0

    iget v0, v9, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec3;->y:F

    .line 295
    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v11

    sub-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 296
    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v11

    sub-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v18

    mul-float v18, v18, v6

    sub-float v16, v16, v18

    .line 299
    iget v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v12

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    .line 300
    iget v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v12

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v18

    mul-float v18, v18, v7

    add-float v17, v17, v18

    .line 330
    .end local v9    # "impulse1":Lorg/jbox2d/common/Vec2;
    .end local v10    # "impulse2":F
    :goto_1a3
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexA:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move/from16 v0, v16

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 332
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_indexB:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-interface/range {v18 .. v19}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 335
    return-void

    .line 303
    .end local v4    # "Cdot2":F
    :cond_1d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1, v13}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 305
    invoke-virtual {v3, v15}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 306
    sub-float v4, v17, v16

    .line 308
    .restart local v4    # "Cdot2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec3()Lorg/jbox2d/common/Vec3;

    move-result-object v2

    .line 309
    .local v2, "Cdot":Lorg/jbox2d/common/Vec3;
    iget v0, v3, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    iget v0, v3, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1, v4}, Lorg/jbox2d/common/Vec3;->set(FFF)Lorg/jbox2d/common/Vec3;

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/jbox2d/pooling/IWorldPool;->popVec3()Lorg/jbox2d/common/Vec3;

    move-result-object v8

    .line 312
    .local v8, "impulse":Lorg/jbox2d/common/Vec3;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_mass:Lorg/jbox2d/common/Mat33;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v2, v8}, Lorg/jbox2d/common/Mat33;->mulToOutUnsafe(Lorg/jbox2d/common/Mat33;Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V

    .line 313
    invoke-virtual {v8}, Lorg/jbox2d/common/Vec3;->negateLocal()Lorg/jbox2d/common/Vec3;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_impulse:Lorg/jbox2d/common/Vec3;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lorg/jbox2d/common/Vec3;->addLocal(Lorg/jbox2d/common/Vec3;)Lorg/jbox2d/common/Vec3;

    .line 316
    iget v0, v8, Lorg/jbox2d/common/Vec3;->x:F

    move/from16 v18, v0

    iget v0, v8, Lorg/jbox2d/common/Vec3;->y:F

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 318
    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v11

    sub-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 319
    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v11

    sub-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v18

    iget v0, v8, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v19, v0

    add-float v18, v18, v19

    mul-float v18, v18, v6

    sub-float v16, v16, v18

    .line 322
    iget v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    mul-float v19, v19, v12

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    .line 323
    iget v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v19, v19, v12

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v18

    iget v0, v8, Lorg/jbox2d/common/Vec3;->z:F

    move/from16 v19, v0

    add-float v18, v18, v19

    mul-float v18, v18, v7

    add-float v17, v17, v18

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/WeldJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-interface/range {v18 .. v19}, Lorg/jbox2d/pooling/IWorldPool;->pushVec3(I)V

    goto/16 :goto_1a3
.end method
