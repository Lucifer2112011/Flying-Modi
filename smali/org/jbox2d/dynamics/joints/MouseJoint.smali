###### Class org.jbox2d.dynamics.joints.MouseJoint (org.jbox2d.dynamics.joints.MouseJoint)
.class public Lorg/jbox2d/dynamics/joints/MouseJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "MouseJoint.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final m_C:Lorg/jbox2d/common/Vec2;

.field private m_beta:F

.field private m_dampingRatio:F

.field private m_frequencyHz:F

.field private m_gamma:F

.field private final m_impulse:Lorg/jbox2d/common/Vec2;

.field private m_indexB:I

.field private m_invIB:F

.field private m_invMassB:F

.field private final m_localAnchorB:Lorg/jbox2d/common/Vec2;

.field private final m_localCenterB:Lorg/jbox2d/common/Vec2;

.field private final m_mass:Lorg/jbox2d/common/Mat22;

.field private m_maxForce:F

.field private final m_rB:Lorg/jbox2d/common/Vec2;

.field private final m_targetA:Lorg/jbox2d/common/Vec2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lorg/jbox2d/dynamics/joints/MouseJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/MouseJointDef;)V
    .registers 7
    .param p1, "argWorld"    # Lorg/jbox2d/pooling/IWorldPool;
    .param p2, "def"    # Lorg/jbox2d/dynamics/joints/MouseJointDef;

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 45
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 46
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_targetA:Lorg/jbox2d/common/Vec2;

    .line 52
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_impulse:Lorg/jbox2d/common/Vec2;

    .line 58
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    .line 59
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    .line 62
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_mass:Lorg/jbox2d/common/Mat22;

    .line 63
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_C:Lorg/jbox2d/common/Vec2;

    .line 67
    sget-boolean v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->$assertionsDisabled:Z

    if-nez v0, :cond_47

    iget-object v0, p2, Lorg/jbox2d/dynamics/joints/MouseJointDef;->target:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->isValid()Z

    move-result v0

    if-nez v0, :cond_47

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_47
    sget-boolean v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->$assertionsDisabled:Z

    if-nez v0, :cond_57

    iget v0, p2, Lorg/jbox2d/dynamics/joints/MouseJointDef;->maxForce:F

    cmpl-float v0, v0, v3

    if-gez v0, :cond_57

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_57
    sget-boolean v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->$assertionsDisabled:Z

    if-nez v0, :cond_67

    iget v0, p2, Lorg/jbox2d/dynamics/joints/MouseJointDef;->frequencyHz:F

    cmpl-float v0, v0, v3

    if-gez v0, :cond_67

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_67
    sget-boolean v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->$assertionsDisabled:Z

    if-nez v0, :cond_77

    iget v0, p2, Lorg/jbox2d/dynamics/joints/MouseJointDef;->dampingRatio:F

    cmpl-float v0, v0, v3

    if-gez v0, :cond_77

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_77
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_targetA:Lorg/jbox2d/common/Vec2;

    iget-object v1, p2, Lorg/jbox2d/dynamics/joints/MouseJointDef;->target:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 73
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->getTransform()Lorg/jbox2d/common/Transform;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_targetA:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Transform;->mulTransToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 75
    iget v0, p2, Lorg/jbox2d/dynamics/joints/MouseJointDef;->maxForce:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_maxForce:F

    .line 76
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_impulse:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 78
    iget v0, p2, Lorg/jbox2d/dynamics/joints/MouseJointDef;->frequencyHz:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_frequencyHz:F

    .line 79
    iget v0, p2, Lorg/jbox2d/dynamics/joints/MouseJointDef;->dampingRatio:F

    iput v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_dampingRatio:F

    .line 81
    iput v3, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_beta:F

    .line 82
    iput v3, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_gamma:F

    .line 83
    return-void
.end method


# virtual methods
.method public getAnchorA(Lorg/jbox2d/common/Vec2;)V
    .registers 3
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_targetA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p1, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 88
    return-void
.end method

.method public getAnchorB(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 93
    return-void
.end method

.method public getDampingRatio()F
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_dampingRatio:F

    return v0
.end method

.method public getFrequency()F
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_frequencyHz:F

    return v0
.end method

.method public getMaxForce()F
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_maxForce:F

    return v0
.end method

.method public getReactionForce(FLorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "invDt"    # F
    .param p2, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_impulse:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 98
    return-void
.end method

.method public getReactionTorque(F)F
    .registers 3
    .param p1, "invDt"    # F

    .prologue
    .line 102
    const/4 v0, 0x0

    mul-float/2addr v0, p1

    return v0
.end method

.method public getTarget()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_targetA:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 19
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget v13, v13, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_indexB:I

    .line 147
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v14, v14, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    iget-object v14, v14, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v13, v14}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget v13, v13, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_invMassB:F

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget v13, v13, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_invIB:F

    .line 151
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_indexB:I

    aget-object v13, v13, v14

    iget-object v3, v13, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 152
    .local v3, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_indexB:I

    aget-object v13, v13, v14

    iget v2, v13, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 153
    .local v2, "aB":F
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_indexB:I

    aget-object v13, v13, v14

    iget-object v11, v13, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 154
    .local v11, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_indexB:I

    aget-object v13, v13, v14

    iget v12, v13, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 156
    .local v12, "wB":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v13}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v9

    .line 158
    .local v9, "qB":Lorg/jbox2d/common/Rot;
    invoke-virtual {v9, v2}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v13}, Lorg/jbox2d/dynamics/Body;->getMass()F

    move-result v7

    .line 163
    .local v7, "mass":F
    const v13, 0x40c90fdb

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_frequencyHz:F

    mul-float v8, v13, v14

    .line 166
    .local v8, "omega":F
    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v7

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_dampingRatio:F

    mul-float/2addr v13, v14

    mul-float v4, v13, v8

    .line 169
    .local v4, "d":F
    mul-float v13, v8, v8

    mul-float v6, v7, v13

    .line 174
    .local v6, "k":F
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    iget v5, v13, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    .line 175
    .local v5, "h":F
    sget-boolean v13, Lorg/jbox2d/dynamics/joints/MouseJoint;->$assertionsDisabled:Z

    if-nez v13, :cond_a0

    mul-float v13, v5, v6

    add-float/2addr v13, v4

    const/high16 v14, 0x34000000

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_a0

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 176
    :cond_a0
    mul-float v13, v5, v6

    add-float/2addr v13, v4

    mul-float/2addr v13, v5

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_gamma:F

    .line 177
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_gamma:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_bc

    .line 178
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_gamma:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_gamma:F

    .line 180
    :cond_bc
    mul-float v13, v5, v6

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_gamma:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_beta:F

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v13}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v10

    .line 185
    .local v10, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v10, v13}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_localCenterB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v13, v14}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    invoke-static {v9, v13, v14}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v13}, Lorg/jbox2d/pooling/IWorldPool;->popMat22()Lorg/jbox2d/common/Mat22;

    move-result-object v1

    .line 191
    .local v1, "K":Lorg/jbox2d/common/Mat22;
    iget-object v13, v1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_invMassB:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_invIB:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_gamma:F

    add-float/2addr v14, v15

    iput v14, v13, Lorg/jbox2d/common/Vec2;->x:F

    .line 192
    iget-object v13, v1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_invIB:F

    neg-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v15

    iput v14, v13, Lorg/jbox2d/common/Vec2;->y:F

    .line 193
    iget-object v13, v1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v14, v1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v14, v14, Lorg/jbox2d/common/Vec2;->y:F

    iput v14, v13, Lorg/jbox2d/common/Vec2;->x:F

    .line 194
    iget-object v13, v1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_invMassB:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_invIB:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_gamma:F

    add-float/2addr v14, v15

    iput v14, v13, Lorg/jbox2d/common/Vec2;->y:F

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_mass:Lorg/jbox2d/common/Mat22;

    invoke-virtual {v1, v13}, Lorg/jbox2d/common/Mat22;->invertToOut(Lorg/jbox2d/common/Mat22;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_C:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v13, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v13, v14}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_targetA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v13, v14}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 199
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_C:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_beta:F

    invoke-virtual {v13, v14}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 202
    const v13, 0x3f7ae148    # 0.98f

    mul-float/2addr v12, v13

    .line 204
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    iget-boolean v13, v13, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    if-eqz v13, :cond_202

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_impulse:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    iget v14, v14, Lorg/jbox2d/dynamics/TimeStep;->dtRatio:F

    invoke-virtual {v13, v14}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 206
    iget v13, v11, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_invMassB:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_impulse:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v11, Lorg/jbox2d/common/Vec2;->x:F

    .line 207
    iget v13, v11, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_invMassB:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_impulse:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v11, Lorg/jbox2d/common/Vec2;->y:F

    .line 208
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_invIB:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_impulse:Lorg/jbox2d/common/Vec2;

    invoke-static {v14, v15}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 214
    :goto_1dd
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_indexB:I

    aget-object v13, v13, v14

    iput v12, v13, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Lorg/jbox2d/pooling/IWorldPool;->pushMat22(I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 219
    return-void

    .line 210
    :cond_202
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_impulse:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v13}, Lorg/jbox2d/common/Vec2;->setZero()V

    goto :goto_1dd
.end method

.method public setDampingRatio(F)V
    .registers 2
    .param p1, "ratio"    # F

    .prologue
    .line 137
    iput p1, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_dampingRatio:F

    .line 138
    return-void
.end method

.method public setFrequency(F)V
    .registers 2
    .param p1, "hz"    # F

    .prologue
    .line 128
    iput p1, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_frequencyHz:F

    .line 129
    return-void
.end method

.method public setMaxForce(F)V
    .registers 2
    .param p1, "force"    # F

    .prologue
    .line 119
    iput p1, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_maxForce:F

    .line 120
    return-void
.end method

.method public setTarget(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "target"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->isAwake()Z

    move-result v0

    if-nez v0, :cond_e

    .line 108
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/Body;->setAwake(Z)V

    .line 110
    :cond_e
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_targetA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 111
    return-void
.end method

.method public solvePositionConstraints(Lorg/jbox2d/dynamics/SolverData;)Z
    .registers 3
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 12
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 229
    iget-object v7, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    iget v8, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_indexB:I

    aget-object v7, v7, v8

    iget-object v5, v7, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 230
    .local v5, "vB":Lorg/jbox2d/common/Vec2;
    iget-object v7, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    iget v8, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_indexB:I

    aget-object v7, v7, v8

    iget v6, v7, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 233
    .local v6, "wB":F
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v7}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 234
    .local v0, "Cdot":Lorg/jbox2d/common/Vec2;
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    invoke-static {v6, v7, v0}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 235
    invoke-virtual {v0, v5}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 237
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v7}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 238
    .local v1, "impulse":Lorg/jbox2d/common/Vec2;
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v7}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 240
    .local v4, "temp":Lorg/jbox2d/common/Vec2;
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_impulse:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    iget v8, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_gamma:F

    invoke-virtual {v7, v8}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    iget-object v8, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_C:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v7, v8}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 241
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_mass:Lorg/jbox2d/common/Mat22;

    invoke-static {v7, v4, v1}, Lorg/jbox2d/common/Mat22;->mulToOutUnsafe(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 243
    move-object v3, v4

    .line 244
    .local v3, "oldImpulse":Lorg/jbox2d/common/Vec2;
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_impulse:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 245
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_impulse:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v7, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 246
    iget-object v7, p1, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    iget v7, v7, Lorg/jbox2d/dynamics/TimeStep;->dt:F

    iget v8, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_maxForce:F

    mul-float v2, v7, v8

    .line 247
    .local v2, "maxImpulse":F
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_impulse:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v7}, Lorg/jbox2d/common/Vec2;->lengthSquared()F

    move-result v7

    mul-float v8, v2, v2

    cmpl-float v7, v7, v8

    if-lez v7, :cond_74

    .line 248
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_impulse:Lorg/jbox2d/common/Vec2;

    iget-object v8, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_impulse:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v8}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v8

    div-float v8, v2, v8

    invoke-virtual {v7, v8}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 250
    :cond_74
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_impulse:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 252
    iget v7, v5, Lorg/jbox2d/common/Vec2;->x:F

    iget v8, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_invMassB:F

    iget v9, v1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 253
    iget v7, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget v8, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_invMassB:F

    iget v9, v1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 254
    iget v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_invIB:F

    iget-object v8, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_rB:Lorg/jbox2d/common/Vec2;

    invoke-static {v8, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 257
    iget-object v7, p1, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    iget v8, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->m_indexB:I

    aget-object v7, v7, v8

    iput v6, v7, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 259
    iget-object v7, p0, Lorg/jbox2d/dynamics/joints/MouseJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 260
    return-void
.end method
