###### Class org.jbox2d.dynamics.joints.Jacobian (org.jbox2d.dynamics.joints.Jacobian)
.class public Lorg/jbox2d/dynamics/joints/Jacobian;
.super Ljava/lang/Object;
.source "Jacobian.java"


# instance fields
.field public angularA:F

.field public angularB:F

.field public final linearA:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/joints/Jacobian;->linearA:Lorg/jbox2d/common/Vec2;

    return-void
.end method
