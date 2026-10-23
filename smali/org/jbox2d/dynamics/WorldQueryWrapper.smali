###### Class org.jbox2d.dynamics.WorldQueryWrapper (org.jbox2d.dynamics.WorldQueryWrapper)
.class Lorg/jbox2d/dynamics/WorldQueryWrapper;
.super Ljava/lang/Object;
.source "World.java"

# interfaces
.implements Lorg/jbox2d/callbacks/TreeCallback;


# instance fields
.field broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

.field callback:Lorg/jbox2d/callbacks/QueryCallback;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public treeCallback(I)Z
    .registers 5
    .param p1, "nodeId"    # I

    .prologue
    .line 1541
    iget-object v1, p0, Lorg/jbox2d/dynamics/WorldQueryWrapper;->broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    invoke-virtual {v1, p1}, Lorg/jbox2d/collision/broadphase/BroadPhase;->getUserData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/dynamics/FixtureProxy;

    .line 1542
    .local v0, "proxy":Lorg/jbox2d/dynamics/FixtureProxy;
    iget-object v1, p0, Lorg/jbox2d/dynamics/WorldQueryWrapper;->callback:Lorg/jbox2d/callbacks/QueryCallback;

    iget-object v2, v0, Lorg/jbox2d/dynamics/FixtureProxy;->fixture:Lorg/jbox2d/dynamics/Fixture;

    invoke-interface {v1, v2}, Lorg/jbox2d/callbacks/QueryCallback;->reportFixture(Lorg/jbox2d/dynamics/Fixture;)Z

    move-result v1

    return v1
.end method
