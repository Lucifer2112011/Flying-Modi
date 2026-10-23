###### Class org.jbox2d.dynamics.joints.MouseJointDef (org.jbox2d.dynamics.joints.MouseJointDef)
.class public Lorg/jbox2d/dynamics/joints/MouseJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "MouseJointDef.java"


# instance fields
.field public dampingRatio:F

.field public frequencyHz:F

.field public maxForce:F

.field public final target:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 37
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJointDef;->target:Lorg/jbox2d/common/Vec2;

    .line 56
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->MOUSE:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 57
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/MouseJointDef;->target:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1, v1}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 58
    iput v1, p0, Lorg/jbox2d/dynamics/joints/MouseJointDef;->maxForce:F

    .line 59
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lorg/jbox2d/dynamics/joints/MouseJointDef;->frequencyHz:F

    .line 60
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lorg/jbox2d/dynamics/joints/MouseJointDef;->dampingRatio:F

    .line 61
    return-void
.end method
