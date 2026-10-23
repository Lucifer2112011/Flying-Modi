###### Class org.jbox2d.common.Timer (org.jbox2d.common.Timer)
.class public Lorg/jbox2d/common/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# instance fields
.field private resetNanos:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0}, Lorg/jbox2d/common/Timer;->reset()V

    .line 37
    return-void
.end method


# virtual methods
.method public getMilliseconds()F
    .registers 5

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jbox2d/common/Timer;->resetNanos:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jbox2d/common/Timer;->resetNanos:J

    .line 41
    return-void
.end method
