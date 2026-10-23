###### Class org.jbox2d.dynamics.joints.PulleyJoint (org.jbox2d.dynamics.joints.PulleyJoint)
.class public Lorg/jbox2d/dynamics/joints/PulleyJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "PulleyJoint.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final MIN_PULLEY_LENGTH:F = 2.0f


# instance fields
.field private m_constant:F

.field private final m_groundAnchorA:Lorg/jbox2d/common/Vec2;

.field private final m_groundAnchorB:Lorg/jbox2d/common/Vec2;

.field private m_impulse:F

.field private m_indexA:I

.field private m_indexB:I

.field private m_invIA:F

.field private m_invIB:F

.field private m_invMassA:F

.field private m_invMassB:F

.field private m_lengthA:F

.field private m_lengthB:F

.field private final m_localAnchorA:Lorg/jbox2d/common/Vec2;

.field private final m_localAnchorB:Lorg/jbox2d/common/Vec2;

.field private final m_localCenterA:Lorg/jbox2d/common/Vec2;

.field private final m_localCenterB:Lorg/jbox2d/common/Vec2;

.field private m_mass:F

.field private final m_rA:Lorg/jbox2d/common/Vec2;

.field private final m_rB:Lorg/jbox2d/common/Vec2;

.field private m_ratio:F

.field private final m_uA:Lorg/jbox2d/common/Vec2;

.field private final m_uB:Lorg/jbox2d/common/Vec2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-class v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/PulleyJointDef;)V
    .registers 7
    .param p1, "argWorldPool"    # Lorg/jbox2d/pooling/IWorldPool;
    .param p2, "def"    # Lorg/jbox2d/dynamics/joints/PulleyJointDef;

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 49
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchorA:Lorg/jbox2d/common/Vec2;

    .line 50
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchorB:Lorg/jbox2d/common/Vec2;

    .line 55
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 56
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 64
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uA:Lorg/jbox2d/common/Vec2;

    .line 65
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uB:Lorg/jbox2d/common/Vec2;

    .line 66
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    .line 67
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    .line 68
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    .line 69
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    .line 78
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchorA:Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->groundAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 79
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchorB:Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->groundAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 80
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 81
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 83
    sget-boolean v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->$assertionsDisabled:Z

    if-nez v0, :cond_76

    iget v0, p2, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->ratio:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_76

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :cond_76
    iget v0, p2, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->ratio:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    .line 86
    iget v0, p2, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->lengthA:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_lengthA:F

    .line 87
    iget v0, p2, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->lengthB:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_lengthB:F

    .line 89
    iget v0, p2, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->lengthA:F

    iget v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    iget v2, p2, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->lengthB:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_constant:F

    .line 90
    iput v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_impulse:F

    .line 91
    return-void
.end method


# virtual methods
.method public getAnchorA(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 132
    return-void
.end method

.method public getAnchorB(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 136
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 137
    return-void
.end method

.method public getCurrentLengthA()F
    .registers 5

    .prologue
    .line 102
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v2}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 103
    .local v1, "p":Lorg/jbox2d/common/Vec2;
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3, v1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 104
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 105
    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v0

    .line 106
    .local v0, "length":F
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 107
    return v0
.end method

.method public getCurrentLengthB()F
    .registers 5

    .prologue
    .line 111
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v2}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 112
    .local v1, "p":Lorg/jbox2d/common/Vec2;
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3, v1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 113
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 114
    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v0

    .line 115
    .local v0, "length":F
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 116
    return v0
.end method

.method public getGroundAnchorA()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchorA:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getGroundAnchorB()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchorB:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getLength1()F
    .registers 5

    .prologue
    .line 158
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v2}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 159
    .local v1, "p":Lorg/jbox2d/common/Vec2;
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3, v1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 160
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 162
    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v0

    .line 163
    .local v0, "len":F
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 164
    return v0
.end method

.method public getLength2()F
    .registers 5

    .prologue
    .line 168
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v2}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 169
    .local v1, "p":Lorg/jbox2d/common/Vec2;
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v3, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3, v1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 170
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 172
    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v0

    .line 173
    .local v0, "len":F
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 174
    return v0
.end method

.method public getLengthA()F
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_lengthA:F

    return v0
.end method

.method public getLengthB()F
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_lengthB:F

    return v0
.end method

.method public getLocalAnchorA()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getLocalAnchorB()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public getRatio()F
    .registers 2

    .prologue
    .line 178
    iget v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    return v0
.end method

.method public getReactionForce(FLorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "inv_dt"    # F
    .param p2, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_impulse:F

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 142
    return-void
.end method

.method public getReactionTorque(F)F
    .registers 3
    .param p1, "inv_dt"    # F

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 26
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexA:I

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexB:I

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassA:F

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassB:F

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invIA:F

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invIB:F

    .line 192
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexA:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v6, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 193
    .local v6, "cA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexA:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget v4, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 194
    .local v4, "aA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexA:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    .line 195
    .local v17, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexA:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v19, v0

    .line 197
    .local v19, "wA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexB:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v7, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 198
    .local v7, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexB:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget v5, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 199
    .local v5, "aB":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexB:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    .line 200
    .local v18, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexB:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v20, v0

    .line 202
    .local v20, "wB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v12

    .line 203
    .local v12, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v13

    .line 204
    .local v13, "qB":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v16

    .line 206
    .local v16, "temp":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v12, v4}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 207
    invoke-virtual {v13, v5}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v12, v0, v1}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v13, v0, v1}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v8

    .line 217
    .local v8, "lengthA":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v9

    .line 219
    .local v9, "lengthB":F
    const v21, 0x3d4ccccc    # 0.049999997f

    cmpl-float v21, v8, v21

    if-lez v21, :cond_3f0

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    div-float v22, v22, v8

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 225
    :goto_20e
    const v21, 0x3d4ccccc    # 0.049999997f

    cmpl-float v21, v9, v21

    if-lez v21, :cond_3fb

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    div-float v22, v22, v9

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 232
    :goto_222
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v14

    .line 233
    .local v14, "ruA":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v15

    .line 235
    .local v15, "ruB":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassA:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invIA:F

    move/from16 v22, v0

    mul-float v22, v22, v14

    mul-float v22, v22, v14

    add-float v10, v21, v22

    .line 236
    .local v10, "mA":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassB:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invIB:F

    move/from16 v22, v0

    mul-float v22, v22, v15

    mul-float v22, v22, v15

    add-float v11, v21, v22

    .line 238
    .local v11, "mB":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    mul-float v21, v21, v11

    add-float v21, v21, v10

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_mass:F

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_mass:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_29a

    .line 241
    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_mass:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_mass:F

    .line 244
    :cond_29a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    move/from16 v21, v0

    if-eqz v21, :cond_406

    .line 247
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_impulse:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_impulse:F

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 251
    .local v2, "PA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 253
    .local v3, "PB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_impulse:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_impulse:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 256
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassA:F

    move/from16 v22, v0

    iget v0, v2, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 257
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassA:F

    move/from16 v22, v0

    iget v0, v2, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 258
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invIA:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v22

    mul-float v21, v21, v22

    add-float v19, v19, v21

    .line 259
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassB:F

    move/from16 v22, v0

    iget v0, v3, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 260
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassB:F

    move/from16 v22, v0

    iget v0, v3, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 261
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invIB:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v22

    mul-float v21, v21, v22

    add-float v20, v20, v21

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-interface/range {v21 .. v22}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 268
    .end local v2    # "PA":Lorg/jbox2d/common/Vec2;
    .end local v3    # "PB":Lorg/jbox2d/common/Vec2;
    :goto_3b1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexA:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    move/from16 v0, v19

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 270
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexB:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-interface/range {v21 .. v22}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 274
    return-void

    .line 222
    .end local v10    # "mA":F
    .end local v11    # "mB":F
    .end local v14    # "ruA":F
    .end local v15    # "ruB":F
    :cond_3f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/jbox2d/common/Vec2;->setZero()V

    goto/16 :goto_20e

    .line 228
    :cond_3fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/jbox2d/common/Vec2;->setZero()V

    goto/16 :goto_222

    .line 265
    .restart local v10    # "mA":F
    .restart local v11    # "mB":F
    .restart local v14    # "ruA":F
    .restart local v15    # "ruB":F
    :cond_406
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_impulse:F

    goto :goto_3b1
.end method

.method public solvePositionConstraints(Lorg/jbox2d/dynamics/SolverData;)Z
    .registers 31
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v17

    .line 317
    .local v17, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v18

    .line 318
    .local v18, "qB":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v19

    .line 319
    .local v19, "rA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v20

    .line 320
    .local v20, "rB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v24

    .line 321
    .local v24, "uA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v25

    .line 322
    .local v25, "uB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v23

    .line 323
    .local v23, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 324
    .local v4, "PA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 326
    .local v5, "PB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexA:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    iget-object v8, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 327
    .local v8, "cA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexA:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    iget v6, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 328
    .local v6, "aA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexB:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    iget-object v9, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 329
    .local v9, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexB:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    iget v7, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 331
    .local v7, "aB":F
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 332
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localCenterA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 337
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 338
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_groundAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 340
    invoke-virtual/range {v24 .. v24}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v11

    .line 341
    .local v11, "lengthA":F
    invoke-virtual/range {v25 .. v25}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v12

    .line 343
    .local v12, "lengthB":F
    const v26, 0x3d4ccccc    # 0.049999997f

    cmpl-float v26, v11, v26

    if-lez v26, :cond_28f

    .line 344
    const/high16 v26, 0x3f800000    # 1.0f

    div-float v26, v26, v11

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 349
    :goto_136
    const v26, 0x3d4ccccc    # 0.049999997f

    cmpl-float v26, v12, v26

    if-lez v26, :cond_294

    .line 350
    const/high16 v26, 0x3f800000    # 1.0f

    div-float v26, v26, v12

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 356
    :goto_144
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v21

    .line 357
    .local v21, "ruA":F
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v22

    .line 359
    .local v22, "ruB":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassA:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invIA:F

    move/from16 v27, v0

    mul-float v27, v27, v21

    mul-float v27, v27, v21

    add-float v14, v26, v27

    .line 360
    .local v14, "mA":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassB:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invIB:F

    move/from16 v27, v0

    mul-float v27, v27, v22

    mul-float v27, v27, v22

    add-float v15, v26, v27

    .line 362
    .local v15, "mB":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    mul-float v26, v26, v15

    add-float v16, v14, v26

    .line 364
    .local v16, "mass":F
    const/16 v26, 0x0

    cmpl-float v26, v16, v26

    if-lez v26, :cond_194

    .line 365
    const/high16 v26, 0x3f800000    # 1.0f

    div-float v16, v26, v16

    .line 368
    :cond_194
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_constant:F

    move/from16 v26, v0

    sub-float v26, v26, v11

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    move/from16 v27, v0

    mul-float v27, v27, v12

    sub-float v3, v26, v27

    .line 369
    .local v3, "C":F
    invoke-static {v3}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v13

    .line 371
    .local v13, "linearError":F
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v26, v0

    mul-float v10, v26, v3

    .line 373
    .local v10, "impulse":F
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    neg-float v0, v10

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 374
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    move/from16 v27, v0

    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v10

    invoke-virtual/range {v26 .. v27}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 376
    iget v0, v8, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassA:F

    move/from16 v27, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v0, v26

    iput v0, v8, Lorg/jbox2d/common/Vec2;->x:F

    .line 377
    iget v0, v8, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassA:F

    move/from16 v27, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v0, v26

    iput v0, v8, Lorg/jbox2d/common/Vec2;->y:F

    .line 378
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invIA:F

    move/from16 v26, v0

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v27

    mul-float v26, v26, v27

    add-float v6, v6, v26

    .line 379
    iget v0, v9, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassB:F

    move/from16 v27, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v0, v26

    iput v0, v9, Lorg/jbox2d/common/Vec2;->x:F

    .line 380
    iget v0, v9, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassB:F

    move/from16 v27, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v0, v26

    iput v0, v9, Lorg/jbox2d/common/Vec2;->y:F

    .line 381
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invIB:F

    move/from16 v26, v0

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v27

    mul-float v26, v26, v27

    add-float v7, v7, v26

    .line 384
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexA:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    iput v6, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 386
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexB:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    iput v7, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-interface/range {v26 .. v27}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v26, v0

    const/16 v27, 0x7

    invoke-interface/range {v26 .. v27}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 391
    const v26, 0x3ba3d70a    # 0.005f

    cmpg-float v26, v13, v26

    if-gez v26, :cond_299

    const/16 v26, 0x1

    :goto_28e
    return v26

    .line 346
    .end local v3    # "C":F
    .end local v10    # "impulse":F
    .end local v13    # "linearError":F
    .end local v14    # "mA":F
    .end local v15    # "mB":F
    .end local v16    # "mass":F
    .end local v21    # "ruA":F
    .end local v22    # "ruB":F
    :cond_28f
    invoke-virtual/range {v24 .. v24}, Lorg/jbox2d/common/Vec2;->setZero()V

    goto/16 :goto_136

    .line 352
    :cond_294
    invoke-virtual/range {v25 .. v25}, Lorg/jbox2d/common/Vec2;->setZero()V

    goto/16 :goto_144

    .line 391
    .restart local v3    # "C":F
    .restart local v10    # "impulse":F
    .restart local v13    # "linearError":F
    .restart local v14    # "mA":F
    .restart local v15    # "mB":F
    .restart local v16    # "mass":F
    .restart local v21    # "ruA":F
    .restart local v22    # "ruB":F
    :cond_299
    const/16 v26, 0x0

    goto :goto_28e
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 15
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 278
    iget-object v10, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    iget v11, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexA:I

    aget-object v10, v10, v11

    iget-object v4, v10, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 279
    .local v4, "vA":Lorg/jbox2d/common/Vec2;
    iget-object v10, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    iget v11, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexA:I

    aget-object v10, v10, v11

    iget v8, v10, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 280
    .local v8, "wA":F
    iget-object v10, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    iget v11, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexB:I

    aget-object v10, v10, v11

    iget-object v5, v10, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 281
    .local v5, "vB":Lorg/jbox2d/common/Vec2;
    iget-object v10, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    iget v11, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexB:I

    aget-object v10, v10, v11

    iget v9, v10, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 283
    .local v9, "wB":F
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v10}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v6

    .line 284
    .local v6, "vpA":Lorg/jbox2d/common/Vec2;
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v10}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 285
    .local v7, "vpB":Lorg/jbox2d/common/Vec2;
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v10}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 286
    .local v1, "PA":Lorg/jbox2d/common/Vec2;
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v10}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 288
    .local v2, "PB":Lorg/jbox2d/common/Vec2;
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    invoke-static {v8, v10, v6}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 289
    invoke-virtual {v6, v4}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 290
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    invoke-static {v9, v10, v7}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 291
    invoke-virtual {v7, v5}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 293
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uA:Lorg/jbox2d/common/Vec2;

    invoke-static {v10, v6}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v10

    neg-float v10, v10

    iget v11, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    iget-object v12, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uB:Lorg/jbox2d/common/Vec2;

    invoke-static {v12, v7}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v12

    mul-float/2addr v11, v12

    sub-float v0, v10, v11

    .line 294
    .local v0, "Cdot":F
    iget v10, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_mass:F

    neg-float v10, v10

    mul-float v3, v10, v0

    .line 295
    .local v3, "impulse":F
    iget v10, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_impulse:F

    add-float/2addr v10, v3

    iput v10, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_impulse:F

    .line 297
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v10}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v10

    neg-float v11, v3

    invoke-virtual {v10, v11}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 298
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_uB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v10}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v10

    iget v11, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_ratio:F

    neg-float v11, v11

    mul-float/2addr v11, v3

    invoke-virtual {v10, v11}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 299
    iget v10, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget v11, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassA:F

    iget v12, v1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 300
    iget v10, v4, Lorg/jbox2d/common/Vec2;->y:F

    iget v11, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassA:F

    iget v12, v1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 301
    iget v10, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invIA:F

    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_rA:Lorg/jbox2d/common/Vec2;

    invoke-static {v11, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    .line 302
    iget v10, v5, Lorg/jbox2d/common/Vec2;->x:F

    iget v11, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassB:F

    iget v12, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 303
    iget v10, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget v11, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invMassB:F

    iget v12, v2, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 304
    iget v10, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_invIB:F

    iget-object v11, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    invoke-static {v11, v2}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 307
    iget-object v10, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    iget v11, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexA:I

    aget-object v10, v10, v11

    iput v8, v10, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 309
    iget-object v10, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    iget v11, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->m_indexB:I

    aget-object v10, v10, v11

    iput v9, v10, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 311
    iget-object v10, p0, Lorg/jbox2d/dynamics/joints/PulleyJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 312
    return-void
.end method
