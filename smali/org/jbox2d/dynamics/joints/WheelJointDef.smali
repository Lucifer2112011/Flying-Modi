###### Class org.jbox2d.dynamics.joints.WheelJointDef (org.jbox2d.dynamics.joints.WheelJointDef)
.class public Lorg/jbox2d/dynamics/joints/WheelJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "WheelJointDef.java"


# instance fields
.field public dampingRatio:F

.field public enableMotor:Z

.field public frequencyHz:F

.field public final localAnchorA:Lorg/jbox2d/common/Vec2;

.field public final localAnchorB:Lorg/jbox2d/common/Vec2;

.field public final localAxisA:Lorg/jbox2d/common/Vec2;

.field public maxMotorTorque:F

.field public motorSpeed:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 46
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 51
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 56
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJointDef;->localAxisA:Lorg/jbox2d/common/Vec2;

    .line 84
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->WHEEL:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 85
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJointDef;->localAxisA:Lorg/jbox2d/common/Vec2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/WheelJointDef;->enableMotor:Z

    .line 87
    iput v2, p0, Lorg/jbox2d/dynamics/joints/WheelJointDef;->maxMotorTorque:F

    .line 88
    iput v2, p0, Lorg/jbox2d/dynamics/joints/WheelJointDef;->motorSpeed:F

    .line 89
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
    .line 92
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/WheelJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    .line 93
    iput-object p2, p0, Lorg/jbox2d/dynamics/joints/WheelJointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    .line 94
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p1, p3, v0}, Lorg/jbox2d/dynamics/Body;->getLocalPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 95
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, p3, v0}, Lorg/jbox2d/dynamics/Body;->getLocalPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 96
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WheelJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/WheelJointDef;->localAxisA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p4, v1}, Lorg/jbox2d/dynamics/Body;->getLocalVectorToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 97
    return-void
.end method
