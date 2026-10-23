###### Class org.jbox2d.dynamics.joints.DistanceJointDef (org.jbox2d.dynamics.joints.DistanceJointDef)
.class public Lorg/jbox2d/dynamics/joints/DistanceJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "DistanceJointDef.java"


# instance fields
.field public dampingRatio:F

.field public frequencyHz:F

.field public length:F

.field public final localAnchorA:Lorg/jbox2d/common/Vec2;

.field public final localAnchorB:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 83
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->DISTANCE:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 84
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 85
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 86
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->length:F

    .line 87
    iput v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->frequencyHz:F

    .line 88
    iput v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->dampingRatio:F

    .line 89
    return-void
.end method


# virtual methods
.method public initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 8
    .param p1, "b1"    # Lorg/jbox2d/dynamics/Body;
    .param p2, "b2"    # Lorg/jbox2d/dynamics/Body;
    .param p3, "anchor1"    # Lorg/jbox2d/common/Vec2;
    .param p4, "anchor2"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 100
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    .line 101
    iput-object p2, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    .line 102
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v2, p3}, Lorg/jbox2d/dynamics/Body;->getLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 103
    iget-object v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v2, p4}, Lorg/jbox2d/dynamics/Body;->getLocalPoint(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 104
    invoke-virtual {p4, p3}, Lorg/jbox2d/common/Vec2;->sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    .line 105
    .local v0, "d":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v1

    iput v1, p0, Lorg/jbox2d/dynamics/joints/DistanceJointDef;->length:F

    .line 106
    return-void
.end method
