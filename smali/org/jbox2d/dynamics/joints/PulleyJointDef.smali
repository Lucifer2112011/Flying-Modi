###### Class org.jbox2d.dynamics.joints.PulleyJointDef (org.jbox2d.dynamics.joints.PulleyJointDef)
.class public Lorg/jbox2d/dynamics/joints/PulleyJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "PulleyJointDef.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public groundAnchorA:Lorg/jbox2d/common/Vec2;

.field public groundAnchorB:Lorg/jbox2d/common/Vec2;

.field public lengthA:F

.field public lengthB:F

.field public localAnchorA:Lorg/jbox2d/common/Vec2;

.field public localAnchorB:Lorg/jbox2d/common/Vec2;

.field public ratio:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 76
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 77
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->PULLEY:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 78
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v3, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->groundAnchorA:Lorg/jbox2d/common/Vec2;

    .line 79
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->groundAnchorB:Lorg/jbox2d/common/Vec2;

    .line 80
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v3, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 81
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 82
    iput v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->lengthA:F

    .line 83
    iput v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->lengthB:F

    .line 84
    iput v1, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->ratio:F

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->collideConnected:Z

    .line 86
    return-void
.end method


# virtual methods
.method public initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;F)V
    .registers 12
    .param p1, "b1"    # Lorg/jbox2d/dynamics/Body;
    .param p2, "b2"    # Lorg/jbox2d/dynamics/Body;
    .param p3, "ga1"    # Lorg/jbox2d/common/Vec2;
    .param p4, "ga2"    # Lorg/jbox2d/common/Vec2;
    .param p5, "anchor1"    # Lorg/jbox2d/common/Vec2;
    .param p6, "anchor2"    # Lorg/jbox2d/common/Vec2;
    .param p7, "r"    # F

    .prologue
    .line 92
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    .line 93
    iput-object p2, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    .line 94
    iput-object p3, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->groundAnchorA:Lorg/jbox2d/common/Vec2;

    .line 95
    iput-object p4, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->groundAnchorB:Lorg/jbox2d/common/Vec2;

    .line 96
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v2, p5}, Lorg/jbox2d/dynamics/Body;->getLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    iput-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 97
    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v2, p6}, Lorg/jbox2d/dynamics/Body;->getLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    iput-object v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 98
    invoke-virtual {p5, p3}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 99
    .local v0, "d1":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v2

    iput v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->lengthA:F

    .line 100
    invoke-virtual {p6, p4}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 101
    .local v1, "d2":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v2

    iput v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->lengthB:F

    .line 102
    iput p7, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->ratio:F

    .line 103
    sget-boolean v2, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->$assertionsDisabled:Z

    if-nez v2, :cond_40

    iget v2, p0, Lorg/jbox2d/dynamics/joints/PulleyJointDef;->ratio:F

    const/high16 v3, 0x34000000

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_40

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 104
    :cond_40
    return-void
.end method
