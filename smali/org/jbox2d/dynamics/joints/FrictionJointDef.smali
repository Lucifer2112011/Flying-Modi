###### Class org.jbox2d.dynamics.joints.FrictionJointDef (org.jbox2d.dynamics.joints.FrictionJointDef)
.class public Lorg/jbox2d/dynamics/joints/FrictionJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "FrictionJointDef.java"


# instance fields
.field public final localAnchorA:Lorg/jbox2d/common/Vec2;

.field public final localAnchorB:Lorg/jbox2d/common/Vec2;

.field public maxForce:F

.field public maxTorque:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 60
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->FRICTION:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 61
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    .line 62
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    .line 63
    iput v1, p0, Lorg/jbox2d/dynamics/joints/FrictionJointDef;->maxForce:F

    .line 64
    iput v1, p0, Lorg/jbox2d/dynamics/joints/FrictionJointDef;->maxTorque:F

    .line 65
    return-void
.end method


# virtual methods
.method public initialize(Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/dynamics/Body;Lorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "bA"    # Lorg/jbox2d/dynamics/Body;
    .param p2, "bB"    # Lorg/jbox2d/dynamics/Body;
    .param p3, "anchor"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/jbox2d/dynamics/joints/FrictionJointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    .line 72
    iput-object p2, p0, Lorg/jbox2d/dynamics/joints/FrictionJointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    .line 73
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJointDef;->localAnchorA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p1, p3, v0}, Lorg/jbox2d/dynamics/Body;->getLocalPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 74
    iget-object v0, p0, Lorg/jbox2d/dynamics/joints/FrictionJointDef;->localAnchorB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, p3, v0}, Lorg/jbox2d/dynamics/Body;->getLocalPointToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 75
    return-void
.end method
