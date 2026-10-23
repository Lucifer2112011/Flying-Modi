###### Class org.jbox2d.dynamics.FixtureProxy (org.jbox2d.dynamics.FixtureProxy)
.class public Lorg/jbox2d/dynamics/FixtureProxy;
.super Ljava/lang/Object;
.source "FixtureProxy.java"


# instance fields
.field final aabb:Lorg/jbox2d/collision/AABB;

.field childIndex:I

.field fixture:Lorg/jbox2d/dynamics/Fixture;

.field proxyId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/jbox2d/collision/AABB;

    invoke-direct {v0}, Lorg/jbox2d/collision/AABB;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/FixtureProxy;->aabb:Lorg/jbox2d/collision/AABB;

    return-void
.end method
