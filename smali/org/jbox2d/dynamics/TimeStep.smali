###### Class org.jbox2d.dynamics.TimeStep (org.jbox2d.dynamics.TimeStep)
.class public Lorg/jbox2d/dynamics/TimeStep;
.super Ljava/lang/Object;
.source "TimeStep.java"


# instance fields
.field public dt:F

.field public dtRatio:F

.field public inv_dt:F

.field public positionIterations:I

.field public velocityIterations:I

.field public warmStarting:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
