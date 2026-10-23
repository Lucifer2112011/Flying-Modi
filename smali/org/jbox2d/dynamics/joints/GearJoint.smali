###### Class org.jbox2d.dynamics.joints.GearJoint (org.jbox2d.dynamics.joints.GearJoint)
.class public Lorg/jbox2d/dynamics/joints/GearJoint;
.super Lorg/jbox2d/dynamics/joints/Joint;
.source "GearJoint.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final m_JvAC:Lorg/jbox2d/common/Vec2;

.field private final m_JvBD:Lorg/jbox2d/common/Vec2;

.field private m_JwA:F

.field private m_JwB:F

.field private m_JwC:F

.field private m_JwD:F

.field private final m_bodyC:Lorg/jbox2d/dynamics/Body;

.field private final m_bodyD:Lorg/jbox2d/dynamics/Body;

.field private m_constant:F

.field private m_iA:F

.field private m_iB:F

.field private m_iC:F

.field private m_iD:F

.field private m_impulse:F

.field private m_indexA:I

.field private m_indexB:I

.field private m_indexC:I

.field private m_indexD:I

.field private final m_joint1:Lorg/jbox2d/dynamics/joints/Joint;

.field private final m_joint2:Lorg/jbox2d/dynamics/joints/Joint;

.field private final m_lcA:Lorg/jbox2d/common/Vec2;

.field private final m_lcB:Lorg/jbox2d/common/Vec2;

.field private final m_lcC:Lorg/jbox2d/common/Vec2;

.field private final m_lcD:Lorg/jbox2d/common/Vec2;

.field private final m_localAnchorA:Lorg/jbox2d/common/Vec2;

.field private final m_localAnchorB:Lorg/jbox2d/common/Vec2;

.field private final m_localAnchorC:Lorg/jbox2d/common/Vec2;

.field private final m_localAnchorD:Lorg/jbox2d/common/Vec2;

.field private final m_localAxisC:Lorg/jbox2d/common/Vec2;

.field private final m_localAxisD:Lorg/jbox2d/common/Vec2;

.field private m_mA:F

.field private m_mB:F

.field private m_mC:F

.field private m_mD:F

.field private m_mass:F

.field private m_ratio:F

.field private m_referenceAngleA:F

.field private m_referenceAngleB:F

.field private final m_typeA:Lorg/jbox2d/dynamics/joints/JointType;

.field private final m_typeB:Lorg/jbox2d/dynamics/joints/JointType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const-class v0, Lorg/jbox2d/dynamics/joints/GearJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/dynamics/joints/GearJoint;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/GearJointDef;)V
    .registers 24
    .param p1, "argWorldPool"    # Lorg/jbox2d/pooling/IWorldPool;
    .param p2, "def"    # Lorg/jbox2d/dynamics/joints/GearJointDef;

    .prologue
    .line 108
    invoke-direct/range {p0 .. p2}, Lorg/jbox2d/dynamics/joints/Joint;-><init>(Lorg/jbox2d/pooling/IWorldPool;Lorg/jbox2d/dynamics/joints/JointDef;)V

    .line 81
    new-instance v19, Lorg/jbox2d/common/Vec2;

    invoke-direct/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 82
    new-instance v19, Lorg/jbox2d/common/Vec2;

    invoke-direct/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 83
    new-instance v19, Lorg/jbox2d/common/Vec2;

    invoke-direct/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorC:Lorg/jbox2d/common/Vec2;

    .line 84
    new-instance v19, Lorg/jbox2d/common/Vec2;

    invoke-direct/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorD:Lorg/jbox2d/common/Vec2;

    .line 86
    new-instance v19, Lorg/jbox2d/common/Vec2;

    invoke-direct/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAxisC:Lorg/jbox2d/common/Vec2;

    .line 87
    new-instance v19, Lorg/jbox2d/common/Vec2;

    invoke-direct/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAxisD:Lorg/jbox2d/common/Vec2;

    .line 99
    new-instance v19, Lorg/jbox2d/common/Vec2;

    invoke-direct/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcA:Lorg/jbox2d/common/Vec2;

    new-instance v19, Lorg/jbox2d/common/Vec2;

    invoke-direct/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcB:Lorg/jbox2d/common/Vec2;

    new-instance v19, Lorg/jbox2d/common/Vec2;

    invoke-direct/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcC:Lorg/jbox2d/common/Vec2;

    new-instance v19, Lorg/jbox2d/common/Vec2;

    invoke-direct/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcD:Lorg/jbox2d/common/Vec2;

    .line 103
    new-instance v19, Lorg/jbox2d/common/Vec2;

    invoke-direct/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvAC:Lorg/jbox2d/common/Vec2;

    new-instance v19, Lorg/jbox2d/common/Vec2;

    invoke-direct/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvBD:Lorg/jbox2d/common/Vec2;

    .line 110
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint1:Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_joint1:Lorg/jbox2d/dynamics/joints/Joint;

    .line 111
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint2:Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_joint2:Lorg/jbox2d/dynamics/joints/Joint;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_joint1:Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/dynamics/joints/Joint;->getType()Lorg/jbox2d/dynamics/joints/JointType;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_typeA:Lorg/jbox2d/dynamics/joints/JointType;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_joint2:Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/dynamics/joints/Joint;->getType()Lorg/jbox2d/dynamics/joints/JointType;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_typeB:Lorg/jbox2d/dynamics/joints/JointType;

    .line 116
    sget-boolean v19, Lorg/jbox2d/dynamics/joints/GearJoint;->$assertionsDisabled:Z

    if-nez v19, :cond_e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_typeA:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v19, v0

    sget-object v20, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_typeA:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v19, v0

    sget-object v20, Lorg/jbox2d/dynamics/joints/JointType;->PRISMATIC:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_e5

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 117
    :cond_e5
    sget-boolean v19, Lorg/jbox2d/dynamics/joints/GearJoint;->$assertionsDisabled:Z

    if-nez v19, :cond_10b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_typeB:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v19, v0

    sget-object v20, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_10b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_typeB:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v19, v0

    sget-object v20, Lorg/jbox2d/dynamics/joints/JointType;->PRISMATIC:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_10b

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 123
    :cond_10b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_joint1:Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyA()Lorg/jbox2d/dynamics/Body;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyC:Lorg/jbox2d/dynamics/Body;

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_joint1:Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyB()Lorg/jbox2d/dynamics/Body;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v15, v0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    .line 128
    .local v15, "xfA":Lorg/jbox2d/common/Transform;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Lorg/jbox2d/common/Sweep;->a:F

    .line 129
    .local v2, "aA":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyC:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    move-object/from16 v17, v0

    .line 130
    .local v17, "xfC":Lorg/jbox2d/common/Transform;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyC:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v4, v0, Lorg/jbox2d/common/Sweep;->a:F

    .line 132
    .local v4, "aC":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_typeA:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v19, v0

    sget-object v20, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_274

    .line 133
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint1:Lorg/jbox2d/dynamics/joints/Joint;

    check-cast v13, Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    .line 134
    .local v13, "revolute":Lorg/jbox2d/dynamics/joints/RevoluteJoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    iget-object v0, v13, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    iget-object v0, v13, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 136
    iget v0, v13, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_referenceAngle:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_referenceAngleA:F

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAxisC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 139
    sub-float v19, v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_referenceAngleA:F

    move/from16 v20, v0

    sub-float v6, v19, v20

    .line 157
    .end local v13    # "revolute":Lorg/jbox2d/dynamics/joints/RevoluteJoint;
    .local v6, "coordinateA":F
    :goto_1ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_joint2:Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyA()Lorg/jbox2d/dynamics/Body;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyD:Lorg/jbox2d/dynamics/Body;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_joint2:Lorg/jbox2d/dynamics/joints/Joint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/dynamics/joints/Joint;->getBodyB()Lorg/jbox2d/dynamics/Body;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    move-object/from16 v16, v0

    .line 162
    .local v16, "xfB":Lorg/jbox2d/common/Transform;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v3, v0, Lorg/jbox2d/common/Sweep;->a:F

    .line 163
    .local v3, "aB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyD:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_xf:Lorg/jbox2d/common/Transform;

    move-object/from16 v18, v0

    .line 164
    .local v18, "xfD":Lorg/jbox2d/common/Transform;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyD:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v5, v0, Lorg/jbox2d/common/Sweep;->a:F

    .line 166
    .local v5, "aD":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_typeB:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v19, v0

    sget-object v20, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_30d

    .line 167
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint2:Lorg/jbox2d/dynamics/joints/Joint;

    check-cast v13, Lorg/jbox2d/dynamics/joints/RevoluteJoint;

    .line 168
    .restart local v13    # "revolute":Lorg/jbox2d/dynamics/joints/RevoluteJoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    iget-object v0, v13, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    iget-object v0, v13, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 170
    iget v0, v13, Lorg/jbox2d/dynamics/joints/RevoluteJoint;->m_referenceAngle:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_referenceAngleB:F

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAxisD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 173
    sub-float v19, v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_referenceAngleB:F

    move/from16 v20, v0

    sub-float v7, v19, v20

    .line 191
    .end local v13    # "revolute":Lorg/jbox2d/dynamics/joints/RevoluteJoint;
    .local v7, "coordinateB":F
    :goto_24f
    move-object/from16 v0, p2

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJointDef;->ratio:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    .line 193
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    move/from16 v19, v0

    mul-float v19, v19, v7

    add-float v19, v19, v6

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_constant:F

    .line 195
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    .line 196
    return-void

    .line 141
    .end local v3    # "aB":F
    .end local v5    # "aD":F
    .end local v6    # "coordinateA":F
    .end local v7    # "coordinateB":F
    .end local v16    # "xfB":Lorg/jbox2d/common/Transform;
    .end local v18    # "xfD":Lorg/jbox2d/common/Transform;
    :cond_274
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v8

    .line 142
    .local v8, "pA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v14

    .line 143
    .local v14, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint1:Lorg/jbox2d/dynamics/joints/Joint;

    check-cast v12, Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    .line 144
    .local v12, "prismatic":Lorg/jbox2d/dynamics/joints/PrismaticJoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    iget-object v0, v12, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    iget-object v0, v12, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 146
    iget v0, v12, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_referenceAngle:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_referenceAngleA:F

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAxisC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    iget-object v0, v12, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxisA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 149
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorC:Lorg/jbox2d/common/Vec2;

    .line 150
    .local v10, "pC":Lorg/jbox2d/common/Vec2;
    iget-object v0, v15, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 151
    iget-object v0, v15, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 152
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v14, v8}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 153
    invoke-virtual {v8, v10}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAxisC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v6

    .line 154
    .restart local v6    # "coordinateA":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-interface/range {v19 .. v20}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    goto/16 :goto_1ac

    .line 175
    .end local v8    # "pA":Lorg/jbox2d/common/Vec2;
    .end local v10    # "pC":Lorg/jbox2d/common/Vec2;
    .end local v12    # "prismatic":Lorg/jbox2d/dynamics/joints/PrismaticJoint;
    .end local v14    # "temp":Lorg/jbox2d/common/Vec2;
    .restart local v3    # "aB":F
    .restart local v5    # "aD":F
    .restart local v16    # "xfB":Lorg/jbox2d/common/Transform;
    .restart local v18    # "xfD":Lorg/jbox2d/common/Transform;
    :cond_30d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v9

    .line 176
    .local v9, "pB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v14

    .line 177
    .restart local v14    # "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint2:Lorg/jbox2d/dynamics/joints/Joint;

    check-cast v12, Lorg/jbox2d/dynamics/joints/PrismaticJoint;

    .line 178
    .restart local v12    # "prismatic":Lorg/jbox2d/dynamics/joints/PrismaticJoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    iget-object v0, v12, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    iget-object v0, v12, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 180
    iget v0, v12, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_referenceAngle:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_referenceAngleB:F

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAxisD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    iget-object v0, v12, Lorg/jbox2d/dynamics/joints/PrismaticJoint;->m_localXAxisA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 183
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorD:Lorg/jbox2d/common/Vec2;

    .line 184
    .local v11, "pD":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 185
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 186
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v14, v9}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 187
    invoke-virtual {v9, v11}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAxisD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v7

    .line 188
    .restart local v7    # "coordinateB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-interface/range {v19 .. v20}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    goto/16 :goto_24f
.end method


# virtual methods
.method public getAnchorA(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 200
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 201
    return-void
.end method

.method public getAnchorB(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 205
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, p1}, Lorg/jbox2d/dynamics/Body;->getWorldPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 206
    return-void
.end method

.method public getJoint1()Lorg/jbox2d/dynamics/joints/Joint;
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_joint1:Lorg/jbox2d/dynamics/joints/Joint;

    return-object v0
.end method

.method public getJoint2()Lorg/jbox2d/dynamics/joints/Joint;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_joint2:Lorg/jbox2d/dynamics/joints/Joint;

    return-object v0
.end method

.method public getRatio()F
    .registers 2

    .prologue
    .line 225
    iget v0, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    return v0
.end method

.method public getReactionForce(FLorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "inv_dt"    # F
    .param p2, "argOut"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 210
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvAC:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget v1, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 211
    invoke-virtual {p2, p1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 212
    return-void
.end method

.method public getReactionTorque(F)F
    .registers 5
    .param p1, "inv_dt"    # F

    .prologue
    .line 216
    iget v1, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    iget v2, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwA:F

    mul-float v0, v1, v2

    .line 217
    .local v0, "L":F
    mul-float v1, p1, v0

    return v1
.end method

.method public initVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 30
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexA:I

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexB:I

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyC:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexC:I

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyD:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_islandIndex:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexD:I

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyC:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyD:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/dynamics/Body;->m_sweep:Lorg/jbox2d/common/Sweep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mA:F

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mB:F

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyC:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mC:F

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyD:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invMass:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mD:F

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyA:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iA:F

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyB:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iB:F

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyC:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iC:F

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_bodyD:Lorg/jbox2d/dynamics/Body;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/Body;->m_invI:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iD:F

    .line 248
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexA:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v2, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 249
    .local v2, "aA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexA:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    .line 250
    .local v16, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexA:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v20, v0

    .line 253
    .local v20, "wA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexB:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v3, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 254
    .local v3, "aB":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexB:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    .line 255
    .local v17, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexB:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v21, v0

    .line 258
    .local v21, "wB":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexC:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v4, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 259
    .local v4, "aC":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexC:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    .line 260
    .local v18, "vC":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexC:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v22, v0

    .line 263
    .local v22, "wC":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexD:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v5, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 264
    .local v5, "aD":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexD:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    .line 265
    .local v19, "vD":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexD:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    move/from16 v23, v0

    .line 267
    .local v23, "wD":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v6

    .local v6, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v7

    .local v7, "qB":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v8

    .local v8, "qC":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v9

    .line 268
    .local v9, "qD":Lorg/jbox2d/common/Rot;
    invoke-virtual {v6, v2}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 269
    invoke-virtual {v7, v3}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 270
    invoke-virtual {v8, v4}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 271
    invoke-virtual {v9, v5}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 273
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mass:F

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v14

    .line 277
    .local v14, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_typeA:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v24, v0

    sget-object v25, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_551

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvAC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 279
    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwA:F

    .line 280
    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwC:F

    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mass:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iA:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iC:F

    move/from16 v26, v0

    add-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mass:F

    .line 294
    :goto_2b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_typeB:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v24, v0

    sget-object v25, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_62b

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvBD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwB:F

    .line 297
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwD:F

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mass:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iB:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iD:F

    move/from16 v27, v0

    add-float v26, v26, v27

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mass:F

    .line 314
    :goto_310
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mass:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_72c

    const/high16 v24, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mass:F

    move/from16 v25, v0

    div-float v24, v24, v25

    :goto_326
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mass:F

    .line 316
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->step:Lorg/jbox2d/dynamics/TimeStep;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lorg/jbox2d/dynamics/TimeStep;->warmStarting:Z

    move/from16 v24, v0

    if-eqz v24, :cond_730

    .line 317
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mA:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvAC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 318
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mA:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvAC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 319
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iA:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwA:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v20, v20, v24

    .line 321
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mB:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvBD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 322
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mB:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvBD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 323
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iB:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwB:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v21, v21, v24

    .line 325
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mC:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvAC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 326
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mC:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvAC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iC:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwC:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v22, v22, v24

    .line 329
    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mD:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvBD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 330
    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mD:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvBD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 331
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iD:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwD:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    .line 335
    :goto_4ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-interface/range {v24 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 339
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexA:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move/from16 v0, v20

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 341
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexB:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move/from16 v0, v21

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 343
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexC:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move/from16 v0, v22

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 345
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexD:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move/from16 v0, v23

    move-object/from16 v1, v24

    iput v0, v1, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 346
    return-void

    .line 283
    :cond_551
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v12

    .line 284
    .local v12, "rC":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v10

    .line 285
    .local v10, "rA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAxisC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvAC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v8, v0, v1}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v8, v0, v12}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v6, v0, v10}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvAC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwC:F

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvAC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v10, v0}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwA:F

    .line 290
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mass:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mC:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mA:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iC:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwC:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwC:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iA:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwA:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwA:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    add-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mass:F

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-interface/range {v24 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    goto/16 :goto_2b5

    .line 300
    .end local v10    # "rA":Lorg/jbox2d/common/Vec2;
    .end local v12    # "rC":Lorg/jbox2d/common/Vec2;
    :cond_62b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v15

    .line 301
    .local v15, "u":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v13

    .line 302
    .local v13, "rD":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v11

    .line 303
    .local v11, "rB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAxisD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v9, v0, v15}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v9, v0, v13}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v7, v0, v11}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvBD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    move/from16 v24, v0

    invoke-static {v13, v15}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwD:F

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    move/from16 v24, v0

    invoke-static {v11, v15}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwB:F

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mass:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mD:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mB:F

    move/from16 v27, v0

    add-float v26, v26, v27

    mul-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iD:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwD:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwD:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iB:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwB:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwB:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    add-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mass:F

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-interface/range {v24 .. v25}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    goto/16 :goto_310

    .line 314
    .end local v11    # "rB":Lorg/jbox2d/common/Vec2;
    .end local v13    # "rD":Lorg/jbox2d/common/Vec2;
    .end local v15    # "u":Lorg/jbox2d/common/Vec2;
    :cond_72c
    const/16 v24, 0x0

    goto/16 :goto_326

    .line 333
    :cond_730
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    goto/16 :goto_4ea
.end method

.method public setRatio(F)V
    .registers 2
    .param p1, "argRatio"    # F

    .prologue
    .line 221
    iput p1, p0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    .line 222
    return-void
.end method

.method public solvePositionConstraints(Lorg/jbox2d/dynamics/SolverData;)Z
    .registers 42
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 406
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexA:I

    move/from16 v38, v0

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v14, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 407
    .local v14, "cA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexA:I

    move/from16 v38, v0

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget v10, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 408
    .local v10, "aA":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexB:I

    move/from16 v38, v0

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v15, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    .line 409
    .local v15, "cB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexB:I

    move/from16 v38, v0

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget v11, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 410
    .local v11, "aB":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexC:I

    move/from16 v38, v0

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    .line 411
    .local v16, "cC":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexC:I

    move/from16 v38, v0

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget v12, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 412
    .local v12, "aC":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexD:I

    move/from16 v38, v0

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/Position;->c:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    .line 413
    .local v17, "cD":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexD:I

    move/from16 v38, v0

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget v13, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 415
    .local v13, "aD":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v27

    .local v27, "qA":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v28

    .local v28, "qB":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v29

    .local v29, "qC":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/jbox2d/pooling/IWorldPool;->popRot()Lorg/jbox2d/common/Rot;

    move-result-object v30

    .line 416
    .local v30, "qD":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 417
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 418
    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 419
    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 421
    const/16 v21, 0x0

    .line 425
    .local v21, "linearError":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v35

    .line 426
    .local v35, "temp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 427
    .local v4, "JvAC":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 429
    .local v5, "JvBD":Lorg/jbox2d/common/Vec2;
    const/16 v22, 0x0

    .line 431
    .local v22, "mass":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_typeA:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v37, v0

    sget-object v38, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_2eb

    .line 432
    invoke-virtual {v4}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 433
    const/high16 v6, 0x3f800000    # 1.0f

    .line 434
    .local v6, "JwA":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 435
    .local v8, "JwC":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iA:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iC:F

    move/from16 v38, v0

    add-float v37, v37, v38

    add-float v22, v22, v37

    .line 437
    sub-float v37, v10, v12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_referenceAngleA:F

    move/from16 v38, v0

    sub-float v18, v37, v38

    .line 456
    .local v18, "coordinateA":F
    :goto_121
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_typeB:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v37, v0

    sget-object v38, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE:Lorg/jbox2d/dynamics/joints/JointType;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_3eb

    .line 457
    invoke-virtual {v5}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 458
    move-object/from16 v0, p0

    iget v7, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    .line 459
    .local v7, "JwB":F
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    .line 460
    .local v9, "JwD":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    move/from16 v38, v0

    mul-float v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iB:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iD:F

    move/from16 v39, v0

    add-float v38, v38, v39

    mul-float v37, v37, v38

    add-float v22, v22, v37

    .line 462
    sub-float v37, v11, v13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_referenceAngleB:F

    move/from16 v38, v0

    sub-float v19, v37, v38

    .line 483
    .local v19, "coordinateB":F
    :goto_164
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    move/from16 v37, v0

    mul-float v37, v37, v19

    add-float v37, v37, v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_constant:F

    move/from16 v38, v0

    sub-float v3, v37, v38

    .line 485
    .local v3, "C":F
    const/16 v20, 0x0

    .line 486
    .local v20, "impulse":F
    const/16 v37, 0x0

    cmpl-float v37, v22, v37

    if-lez v37, :cond_183

    .line 487
    neg-float v0, v3

    move/from16 v37, v0

    div-float v20, v37, v22

    .line 489
    :cond_183
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    const/16 v38, 0x3

    invoke-interface/range {v37 .. v38}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    const/16 v38, 0x4

    invoke-interface/range {v37 .. v38}, Lorg/jbox2d/pooling/IWorldPool;->pushRot(I)V

    .line 492
    iget v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mA:F

    move/from16 v38, v0

    mul-float v38, v38, v20

    iget v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v39, v0

    mul-float v38, v38, v39

    add-float v37, v37, v38

    move/from16 v0, v37

    iput v0, v14, Lorg/jbox2d/common/Vec2;->x:F

    .line 493
    iget v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mA:F

    move/from16 v38, v0

    mul-float v38, v38, v20

    iget v0, v4, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v39, v0

    mul-float v38, v38, v39

    add-float v37, v37, v38

    move/from16 v0, v37

    iput v0, v14, Lorg/jbox2d/common/Vec2;->y:F

    .line 494
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iA:F

    move/from16 v37, v0

    mul-float v37, v37, v20

    mul-float v37, v37, v6

    add-float v10, v10, v37

    .line 496
    iget v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mB:F

    move/from16 v38, v0

    mul-float v38, v38, v20

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v39, v0

    mul-float v38, v38, v39

    add-float v37, v37, v38

    move/from16 v0, v37

    iput v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    .line 497
    iget v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mB:F

    move/from16 v38, v0

    mul-float v38, v38, v20

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v39, v0

    mul-float v38, v38, v39

    add-float v37, v37, v38

    move/from16 v0, v37

    iput v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    .line 498
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iB:F

    move/from16 v37, v0

    mul-float v37, v37, v20

    mul-float v37, v37, v7

    add-float v11, v11, v37

    .line 500
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mC:F

    move/from16 v38, v0

    mul-float v38, v38, v20

    iget v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v39, v0

    mul-float v38, v38, v39

    sub-float v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 501
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mC:F

    move/from16 v38, v0

    mul-float v38, v38, v20

    iget v0, v4, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v39, v0

    mul-float v38, v38, v39

    sub-float v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 502
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iC:F

    move/from16 v37, v0

    mul-float v37, v37, v20

    mul-float v37, v37, v8

    sub-float v12, v12, v37

    .line 504
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mD:F

    move/from16 v38, v0

    mul-float v38, v38, v20

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v39, v0

    mul-float v38, v38, v39

    sub-float v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 505
    move-object/from16 v0, v17

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mD:F

    move/from16 v38, v0

    mul-float v38, v38, v20

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v39, v0

    mul-float v38, v38, v39

    sub-float v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 506
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iD:F

    move/from16 v37, v0

    mul-float v37, v37, v20

    mul-float v37, v37, v9

    sub-float v13, v13, v37

    .line 509
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexA:I

    move/from16 v38, v0

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iput v10, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 511
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexB:I

    move/from16 v38, v0

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iput v11, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 513
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexC:I

    move/from16 v38, v0

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iput v12, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 515
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/dynamics/SolverData;->positions:[Lorg/jbox2d/dynamics/contacts/Position;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexD:I

    move/from16 v38, v0

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iput v13, v0, Lorg/jbox2d/dynamics/contacts/Position;->a:F

    .line 518
    const v37, 0x3ba3d70a    # 0.005f

    cmpg-float v37, v21, v37

    if-gez v37, :cond_51a

    const/16 v37, 0x1

    :goto_2ea
    return v37

    .line 439
    .end local v3    # "C":F
    .end local v6    # "JwA":F
    .end local v7    # "JwB":F
    .end local v8    # "JwC":F
    .end local v9    # "JwD":F
    .end local v18    # "coordinateA":F
    .end local v19    # "coordinateB":F
    .end local v20    # "impulse":F
    :cond_2eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v33

    .line 440
    .local v33, "rC":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v31

    .line 441
    .local v31, "rA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v25

    .line 442
    .local v25, "pC":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v23

    .line 443
    .local v23, "pA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAxisC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-static {v0, v1, v4}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 446
    move-object/from16 v0, v33

    invoke-static {v0, v4}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v8

    .line 447
    .restart local v8    # "JwC":F
    move-object/from16 v0, v31

    invoke-static {v0, v4}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v6

    .line 448
    .restart local v6    # "JwA":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mC:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mA:F

    move/from16 v38, v0

    add-float v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iC:F

    move/from16 v38, v0

    mul-float v38, v38, v8

    mul-float v38, v38, v8

    add-float v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iA:F

    move/from16 v38, v0

    mul-float v38, v38, v6

    mul-float v38, v38, v6

    add-float v37, v37, v38

    add-float v22, v22, v37

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 451
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 452
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAxisC:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    invoke-static/range {v37 .. v38}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v18

    .line 453
    .restart local v18    # "coordinateA":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    const/16 v38, 0x4

    invoke-interface/range {v37 .. v38}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    goto/16 :goto_121

    .line 464
    .end local v23    # "pA":Lorg/jbox2d/common/Vec2;
    .end local v25    # "pC":Lorg/jbox2d/common/Vec2;
    .end local v31    # "rA":Lorg/jbox2d/common/Vec2;
    .end local v33    # "rC":Lorg/jbox2d/common/Vec2;
    :cond_3eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v36

    .line 465
    .local v36, "u":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v34

    .line 466
    .local v34, "rD":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v32

    .line 467
    .local v32, "rB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v26

    .line 468
    .local v26, "pD":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v24

    .line 469
    .local v24, "pB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAxisD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 472
    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 473
    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v9

    .line 474
    .restart local v9    # "JwD":F
    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v7

    .line 475
    .restart local v7    # "JwB":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_ratio:F

    move/from16 v38, v0

    mul-float v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mD:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mB:F

    move/from16 v39, v0

    add-float v38, v38, v39

    mul-float v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iD:F

    move/from16 v38, v0

    mul-float v38, v38, v9

    mul-float v38, v38, v9

    add-float v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iB:F

    move/from16 v38, v0

    mul-float v38, v38, v7

    mul-float v38, v38, v7

    add-float v37, v37, v38

    add-float v22, v22, v37

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAnchorD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v37, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_lcD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 478
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 479
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_localAxisD:Lorg/jbox2d/common/Vec2;

    move-object/from16 v38, v0

    invoke-static/range {v37 .. v38}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v19

    .line 480
    .restart local v19    # "coordinateB":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    move-object/from16 v37, v0

    const/16 v38, 0x5

    invoke-interface/range {v37 .. v38}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    goto/16 :goto_164

    .line 518
    .end local v24    # "pB":Lorg/jbox2d/common/Vec2;
    .end local v26    # "pD":Lorg/jbox2d/common/Vec2;
    .end local v32    # "rB":Lorg/jbox2d/common/Vec2;
    .end local v34    # "rD":Lorg/jbox2d/common/Vec2;
    .end local v36    # "u":Lorg/jbox2d/common/Vec2;
    .restart local v3    # "C":F
    .restart local v20    # "impulse":F
    :cond_51a
    const/16 v37, 0x0

    goto/16 :goto_2ea
.end method

.method public solveVelocityConstraints(Lorg/jbox2d/dynamics/SolverData;)V
    .registers 18
    .param p1, "data"    # Lorg/jbox2d/dynamics/SolverData;

    .prologue
    .line 350
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexA:I

    aget-object v13, v13, v14

    iget-object v5, v13, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 351
    .local v5, "vA":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexA:I

    aget-object v13, v13, v14

    iget v9, v13, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 352
    .local v9, "wA":F
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexB:I

    aget-object v13, v13, v14

    iget-object v6, v13, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 353
    .local v6, "vB":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexB:I

    aget-object v13, v13, v14

    iget v10, v13, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 354
    .local v10, "wB":F
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexC:I

    aget-object v13, v13, v14

    iget-object v7, v13, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 355
    .local v7, "vC":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexC:I

    aget-object v13, v13, v14

    iget v11, v13, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 356
    .local v11, "wC":F
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexD:I

    aget-object v13, v13, v14

    iget-object v8, v13, Lorg/jbox2d/dynamics/contacts/Velocity;->v:Lorg/jbox2d/common/Vec2;

    .line 357
    .local v8, "vD":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexD:I

    aget-object v13, v13, v14

    iget v12, v13, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 359
    .local v12, "wD":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v13}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v3

    .line 360
    .local v3, "temp1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v13}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 361
    .local v4, "temp2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvAC:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v14

    invoke-virtual {v14, v7}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvBD:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-virtual {v15, v8}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v14

    add-float v1, v13, v14

    .line 363
    .local v1, "Cdot":F
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwA:F

    mul-float/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwC:F

    mul-float/2addr v14, v11

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwB:F

    mul-float/2addr v14, v10

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwD:F

    mul-float/2addr v15, v12

    sub-float/2addr v14, v15

    add-float/2addr v13, v14

    add-float/2addr v1, v13

    .line 364
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->pool:Lorg/jbox2d/pooling/IWorldPool;

    const/4 v14, 0x2

    invoke-interface {v13, v14}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 366
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mass:F

    neg-float v13, v13

    mul-float v2, v13, v1

    .line 367
    .local v2, "impulse":F
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    add-float/2addr v13, v2

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_impulse:F

    .line 369
    iget v13, v5, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mA:F

    mul-float/2addr v14, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvAC:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 370
    iget v13, v5, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mA:F

    mul-float/2addr v14, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvAC:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 371
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iA:F

    mul-float/2addr v13, v2

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwA:F

    mul-float/2addr v13, v14

    add-float/2addr v9, v13

    .line 373
    iget v13, v6, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mB:F

    mul-float/2addr v14, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvBD:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v6, Lorg/jbox2d/common/Vec2;->x:F

    .line 374
    iget v13, v6, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mB:F

    mul-float/2addr v14, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvBD:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v6, Lorg/jbox2d/common/Vec2;->y:F

    .line 375
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iB:F

    mul-float/2addr v13, v2

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwB:F

    mul-float/2addr v13, v14

    add-float/2addr v10, v13

    .line 377
    iget v13, v7, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mC:F

    mul-float/2addr v14, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvAC:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    iput v13, v7, Lorg/jbox2d/common/Vec2;->x:F

    .line 378
    iget v13, v7, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mC:F

    mul-float/2addr v14, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvAC:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    iput v13, v7, Lorg/jbox2d/common/Vec2;->y:F

    .line 379
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iC:F

    mul-float/2addr v13, v2

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwC:F

    mul-float/2addr v13, v14

    sub-float/2addr v11, v13

    .line 381
    iget v13, v8, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mD:F

    mul-float/2addr v14, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvBD:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    iput v13, v8, Lorg/jbox2d/common/Vec2;->x:F

    .line 382
    iget v13, v8, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_mD:F

    mul-float/2addr v14, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JvBD:Lorg/jbox2d/common/Vec2;

    iget v15, v15, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    iput v13, v8, Lorg/jbox2d/common/Vec2;->y:F

    .line 383
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_iD:F

    mul-float/2addr v13, v2

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_JwD:F

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    .line 387
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexA:I

    aget-object v13, v13, v14

    iput v9, v13, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 389
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexB:I

    aget-object v13, v13, v14

    iput v10, v13, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 391
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexC:I

    aget-object v13, v13, v14

    iput v11, v13, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 393
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/jbox2d/dynamics/SolverData;->velocities:[Lorg/jbox2d/dynamics/contacts/Velocity;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jbox2d/dynamics/joints/GearJoint;->m_indexD:I

    aget-object v13, v13, v14

    iput v12, v13, Lorg/jbox2d/dynamics/contacts/Velocity;->w:F

    .line 394
    return-void
.end method
