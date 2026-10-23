###### Class org.jbox2d.collision.DistanceInput (org.jbox2d.collision.DistanceInput)
.class public Lorg/jbox2d/collision/DistanceInput;
.super Ljava/lang/Object;
.source "DistanceInput.java"


# instance fields
.field public proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

.field public proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

.field public transformA:Lorg/jbox2d/common/Transform;

.field public transformB:Lorg/jbox2d/common/Transform;

.field public useRadii:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/jbox2d/collision/Distance$DistanceProxy;

    invoke-direct {v0}, Lorg/jbox2d/collision/Distance$DistanceProxy;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/DistanceInput;->proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    .line 37
    new-instance v0, Lorg/jbox2d/collision/Distance$DistanceProxy;

    invoke-direct {v0}, Lorg/jbox2d/collision/Distance$DistanceProxy;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/DistanceInput;->proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    .line 38
    new-instance v0, Lorg/jbox2d/common/Transform;

    invoke-direct {v0}, Lorg/jbox2d/common/Transform;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/DistanceInput;->transformA:Lorg/jbox2d/common/Transform;

    .line 39
    new-instance v0, Lorg/jbox2d/common/Transform;

    invoke-direct {v0}, Lorg/jbox2d/common/Transform;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/DistanceInput;->transformB:Lorg/jbox2d/common/Transform;

    return-void
.end method
