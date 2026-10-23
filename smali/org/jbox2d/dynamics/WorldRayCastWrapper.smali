###### Class org.jbox2d.dynamics.WorldRayCastWrapper (org.jbox2d.dynamics.WorldRayCastWrapper)
.class Lorg/jbox2d/dynamics/WorldRayCastWrapper;
.super Ljava/lang/Object;
.source "World.java"

# interfaces
.implements Lorg/jbox2d/callbacks/TreeRayCastCallback;


# instance fields
.field broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

.field callback:Lorg/jbox2d/callbacks/RayCastCallback;

.field private final output:Lorg/jbox2d/collision/RayCastOutput;

.field private final point:Lorg/jbox2d/common/Vec2;

.field private final temp:Lorg/jbox2d/common/Vec2;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1553
    new-instance v0, Lorg/jbox2d/collision/RayCastOutput;

    invoke-direct {v0}, Lorg/jbox2d/collision/RayCastOutput;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/WorldRayCastWrapper;->output:Lorg/jbox2d/collision/RayCastOutput;

    .line 1554
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/WorldRayCastWrapper;->temp:Lorg/jbox2d/common/Vec2;

    .line 1555
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/WorldRayCastWrapper;->point:Lorg/jbox2d/common/Vec2;

    return-void
.end method


# virtual methods
.method public raycastCallback(Lorg/jbox2d/collision/RayCastInput;I)F
    .registers 12
    .param p1, "input"    # Lorg/jbox2d/collision/RayCastInput;
    .param p2, "nodeId"    # I

    .prologue
    .line 1558
    iget-object v6, p0, Lorg/jbox2d/dynamics/WorldRayCastWrapper;->broadPhase:Lorg/jbox2d/collision/broadphase/BroadPhase;

    invoke-virtual {v6, p2}, Lorg/jbox2d/collision/broadphase/BroadPhase;->getUserData(I)Ljava/lang/Object;

    move-result-object v5

    .local v5, "userData":Ljava/lang/Object;
    move-object v4, v5

    .line 1559
    check-cast v4, Lorg/jbox2d/dynamics/FixtureProxy;

    .line 1560
    .local v4, "proxy":Lorg/jbox2d/dynamics/FixtureProxy;
    iget-object v0, v4, Lorg/jbox2d/dynamics/FixtureProxy;->fixture:Lorg/jbox2d/dynamics/Fixture;

    .line 1561
    .local v0, "fixture":Lorg/jbox2d/dynamics/Fixture;
    iget v3, v4, Lorg/jbox2d/dynamics/FixtureProxy;->childIndex:I

    .line 1562
    .local v3, "index":I
    iget-object v6, p0, Lorg/jbox2d/dynamics/WorldRayCastWrapper;->output:Lorg/jbox2d/collision/RayCastOutput;

    invoke-virtual {v0, v6, p1, v3}, Lorg/jbox2d/dynamics/Fixture;->raycast(Lorg/jbox2d/collision/RayCastOutput;Lorg/jbox2d/collision/RayCastInput;I)Z

    move-result v2

    .line 1564
    .local v2, "hit":Z
    if-eqz v2, :cond_45

    .line 1565
    iget-object v6, p0, Lorg/jbox2d/dynamics/WorldRayCastWrapper;->output:Lorg/jbox2d/collision/RayCastOutput;

    iget v1, v6, Lorg/jbox2d/collision/RayCastOutput;->fraction:F

    .line 1567
    .local v1, "fraction":F
    iget-object v6, p0, Lorg/jbox2d/dynamics/WorldRayCastWrapper;->temp:Lorg/jbox2d/common/Vec2;

    iget-object v7, p1, Lorg/jbox2d/collision/RayCastInput;->p2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 1568
    iget-object v6, p0, Lorg/jbox2d/dynamics/WorldRayCastWrapper;->point:Lorg/jbox2d/common/Vec2;

    iget-object v7, p1, Lorg/jbox2d/collision/RayCastInput;->p1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v1

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    iget-object v7, p0, Lorg/jbox2d/dynamics/WorldRayCastWrapper;->temp:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1569
    iget-object v6, p0, Lorg/jbox2d/dynamics/WorldRayCastWrapper;->callback:Lorg/jbox2d/callbacks/RayCastCallback;

    iget-object v7, p0, Lorg/jbox2d/dynamics/WorldRayCastWrapper;->point:Lorg/jbox2d/common/Vec2;

    iget-object v8, p0, Lorg/jbox2d/dynamics/WorldRayCastWrapper;->output:Lorg/jbox2d/collision/RayCastOutput;

    iget-object v8, v8, Lorg/jbox2d/collision/RayCastOutput;->normal:Lorg/jbox2d/common/Vec2;

    invoke-interface {v6, v0, v7, v8, v1}, Lorg/jbox2d/callbacks/RayCastCallback;->reportFixture(Lorg/jbox2d/dynamics/Fixture;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;F)F

    move-result v6

    .line 1572
    .end local v1    # "fraction":F
    :goto_44
    return v6

    :cond_45
    iget v6, p1, Lorg/jbox2d/collision/RayCastInput;->maxFraction:F

    goto :goto_44
.end method
