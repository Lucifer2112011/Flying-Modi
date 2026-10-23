###### Class org.jbox2d.collision.DistanceOutput (org.jbox2d.collision.DistanceOutput)
.class public Lorg/jbox2d/collision/DistanceOutput;
.super Ljava/lang/Object;
.source "DistanceOutput.java"


# instance fields
.field public distance:F

.field public iterations:I

.field public final pointA:Lorg/jbox2d/common/Vec2;

.field public final pointB:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/DistanceOutput;->pointA:Lorg/jbox2d/common/Vec2;

    .line 37
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/DistanceOutput;->pointB:Lorg/jbox2d/common/Vec2;

    return-void
.end method
