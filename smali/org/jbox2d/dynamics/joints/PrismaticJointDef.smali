###### Class org.jbox2d.dynamics.joints.PrismaticJointDef (org.jbox2d.dynamics.joints.PrismaticJointDef)
.class public Lorg/jbox2d/dynamics/joints/PrismaticJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "PrismaticJointDef.java"


# instance fields
.field public enableLimit:Z

.field public enableMotor:Z

.field public final localAnchorA:Lorg/jbox2d/common/Vec2;

.field public final localAnchorB:Lorg/jbox2d/common/Vec2;

.field public final localAxisA:Lorg/jbox2d/common/Vec2;

.field public lowerTranslation:F

.field public maxMotorForce:F

.field public motorSpeed:F

.field public referenceAngle:F

.field public upperTranslation:F


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 94
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->PRISMATIC:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 95
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 96
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 97
    new-instance v0, Lorg/jbox2d/common/Vec2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAxisA:Lorg/jbox2d/common/Vec2;

    .line 98
    iput v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->referenceAngle:F

    .line 99
    iput-boolean v3, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->enableLimit:Z

    .line 100
    iput v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->lowerTranslation:F

    .line 101
    iput v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->upperTranslation:F

    .line 102
    iput-boolean v3, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->enableMotor:Z

    .line 103
    iput v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->maxMotorForce:F

    .line 104
    iput v2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->motorSpeed:F

    .line 105
    return-void
.end method


# virtual methods
.method public initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 7
    .param p1, "b1"    # Lorg/jbox2d/dynamics/Body;
    .param p2, "b2"    # Lorg/jbox2d/dynamics/Body;
    .param p3, "anchor"    # Lorg/jbox2d/common/Vec2;
    .param p4, "axis"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 113
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    .line 114
    iput-object p2, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    .line 115
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p3, v1}, Lorg/jbox2d/dynamics/Body;->getLocalPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 116
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p3, v1}, Lorg/jbox2d/dynamics/Body;->getLocalPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 117
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->localAxisA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p4, v1}, Lorg/jbox2d/dynamics/Body;->getLocalVectorToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 118
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->getAngle()F

    move-result v0

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getAngle()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/dynamics/joints/PrismaticJointDef;->referenceAngle:F

    .line 119
    return-void
.end method
