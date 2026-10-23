###### Class org.jbox2d.dynamics.joints.GearJointDef (org.jbox2d.dynamics.joints.GearJointDef)
.class public Lorg/jbox2d/dynamics/joints/GearJointDef;
.super Lorg/jbox2d/dynamics/joints/JointDef;
.source "GearJointDef.java"


# instance fields
.field public joint1:Lorg/jbox2d/dynamics/joints/Joint;

.field public joint2:Lorg/jbox2d/dynamics/joints/Joint;

.field public ratio:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lorg/jbox2d/dynamics/joints/JointDef;-><init>()V

    .line 53
    sget-object v0, Lorg/jbox2d/dynamics/joints/JointType;->GEAR:Lorg/jbox2d/dynamics/joints/JointType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/GearJointDef;->type:Lorg/jbox2d/dynamics/joints/JointType;

    .line 54
    iput-object v1, p0, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint1:Lorg/jbox2d/dynamics/joints/Joint;

    .line 55
    iput-object v1, p0, Lorg/jbox2d/dynamics/joints/GearJointDef;->joint2:Lorg/jbox2d/dynamics/joints/Joint;

    .line 56
    return-void
.end method
