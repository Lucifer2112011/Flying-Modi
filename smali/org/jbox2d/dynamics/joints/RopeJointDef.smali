###### Class org.jbox2d.dynamics.joints.RopeJointDef (org.jbox2d.dynamics.joints.RopeJointDef)
.class public Lorg/jbox2d/dynamics/joints/RopeJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "RopeJointDef.java"


# instance fields
.field public final localAnchorA:Lorg/jbox2d/common/Vec2;

.field public final localAnchorB:Lorg/jbox2d/common/Vec2;

.field public maxLength:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 16
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 21
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 30
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->ROPE:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 31
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 32
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/RopeJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 33
    return-void
.end method
