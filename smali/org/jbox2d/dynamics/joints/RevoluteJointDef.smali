###### Class org.jbox2d.dynamics.joints.RevoluteJointDef (org.jbox2d.dynamics.joints.RevoluteJointDef)
.class public Lorg/jbox2d/dynamics/joints/RevoluteJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "RevoluteJointDef.java"


# instance fields
.field public enableLimit:Z

.field public enableMotor:Z

.field public localAnchorA:Lorg/jbox2d/common/Vec2;

.field public localAnchorB:Lorg/jbox2d/common/Vec2;

.field public lowerAngle:F

.field public maxMotorTorque:F

.field public motorSpeed:F

.field public referenceAngle:F

.field public upperAngle:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 116
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->REVOLUTE:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 117
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 118
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 119
    iput v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->referenceAngle:F

    .line 120
    iput v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->lowerAngle:F

    .line 121
    iput v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->upperAngle:F

    .line 122
    iput v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->maxMotorTorque:F

    .line 123
    iput v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->motorSpeed:F

    .line 124
    iput-boolean v2, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->enableLimit:Z

    .line 125
    iput-boolean v2, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->enableMotor:Z

    .line 126
    return-void
.end method


# virtual methods
.method public initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;)V
    .registers 6
    .param p1, "b1"    # Lorg/jbox2d/dynamics/Body;
    .param p2, "b2"    # Lorg/jbox2d/dynamics/Body;
    .param p3, "anchor"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 136
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    .line 137
    iput-object p2, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    .line 138
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p3, v1}, Lorg/jbox2d/dynamics/Body;->getLocalPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 139
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p3, v1}, Lorg/jbox2d/dynamics/Body;->getLocalPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 140
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->getAngle()F

    move-result v0

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getAngle()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/dynamics/joints/RevoluteJointDef;->referenceAngle:F

    .line 141
    return-void
.end method
