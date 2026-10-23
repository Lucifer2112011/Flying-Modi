###### Class org.jbox2d.dynamics.joints.WeldJointDef (org.jbox2d.dynamics.joints.WeldJointDef)
.class public Lorg/jbox2d/dynamics/joints/WeldJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "WeldJointDef.java"


# instance fields
.field public dampingRatio:F

.field public frequencyHz:F

.field public final localAnchorA:Lorg/jbox2d/common/Vec2;

.field public final localAnchorB:Lorg/jbox2d/common/Vec2;

.field public referenceAngle:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 65
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->WELD:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 66
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 67
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/dynamics/joints/WeldJointDef;->referenceAngle:F

    .line 69
    return-void
.end method


# virtual methods
.method public initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;)V
    .registers 6
    .param p1, "bA"    # Lorg/jbox2d/dynamics/Body;
    .param p2, "bB"    # Lorg/jbox2d/dynamics/Body;
    .param p3, "anchor"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/WeldJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    .line 80
    iput-object p2, p0, Lorg/jbox2d/dynamics/joints/WeldJointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    .line 81
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/WeldJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p3, v1}, Lorg/jbox2d/dynamics/Body;->getLocalPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 82
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/WeldJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p3, v1}, Lorg/jbox2d/dynamics/Body;->getLocalPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 83
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/WeldJointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v0}, Lorg/jbox2d/dynamics/Body;->getAngle()F

    move-result v0

    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/WeldJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getAngle()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/dynamics/joints/WeldJointDef;->referenceAngle:F

    .line 84
    return-void
.end method
