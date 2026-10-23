###### Class org.jbox2d.dynamics.joints.JointEdge (org.jbox2d.dynamics.joints.JointEdge)
.class public Lorg/jbox2d/dynamics/joints/JointEdge;
.super Ljava/lang/Object;
.source "JointEdge.java"


# instance fields
.field public joint:Lorg/jbox2d/dynamics/joints/Joint;

.field public next:Lorg/jbox2d/dynamics/joints/JointEdge;

.field public other:Lorg/jbox2d/dynamics/Body;

.field public prev:Lorg/jbox2d/dynamics/joints/JointEdge;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/JointEdge;->other:Lorg/jbox2d/dynamics/Body;

    .line 46
    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/JointEdge;->joint:Lorg/jbox2d/dynamics/joints/Joint;

    .line 51
    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/JointEdge;->prev:Lorg/jbox2d/dynamics/joints/JointEdge;

    .line 56
    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/JointEdge;->next:Lorg/jbox2d/dynamics/joints/JointEdge;

    return-void
.end method
