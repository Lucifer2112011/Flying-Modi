###### Class org.jbox2d.dynamics.joints.JointDef (org.jbox2d.dynamics.joints.JointDef)
.class public Lorg/jbox2d/dynamics/joints/JointDef;
.super Ljava/lang/Object;
.source "JointDef.java"


# instance fields
.field public bodyA:Lorg/jbox2d/dynamics/Body;

.field public bodyB:Lorg/jbox2d/dynamics/Body;

.field public collideConnected:Z

.field public type:Lorg/jbox2d/dynamics/joints/JointType;

.field public userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->UNKNOWN:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/JointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 36
    iput-object v1, p0, Lorg/jbox2d/dynamics/joints/JointDef;->userData:Ljava/lang/Object;

    .line 37
    iput-object v1, p0, Lorg/jbox2d/dynamics/joints/JointDef;->bodyA:Lorg/jbox2d/dynamics/Body;

    .line 38
    iput-object v1, p0, Lorg/jbox2d/dynamics/joints/JointDef;->bodyB:Lorg/jbox2d/dynamics/Body;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/joints/JointDef;->collideConnected:Z

    .line 40
    return-void
.end method
