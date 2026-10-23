###### Class org.jbox2d.collision.RayCastInput (org.jbox2d.collision.RayCastInput)
.class public Lorg/jbox2d/collision/RayCastInput;
.super Ljava/lang/Object;
.source "RayCastInput.java"


# instance fields
.field public maxFraction:F

.field public final p1:Lorg/jbox2d/common/Vec2;

.field public final p2:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/RayCastInput;->p1:Lorg/jbox2d/common/Vec2;

    .line 38
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/RayCastInput;->p2:Lorg/jbox2d/common/Vec2;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/collision/RayCastInput;->maxFraction:F

    .line 40
    return-void
.end method


# virtual methods
.method public set(Lorg/jbox2d/collision/RayCastInput;)V
    .registers 4
    .param p1, "rci"    # Lorg/jbox2d/collision/RayCastInput;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/jbox2d/collision/RayCastInput;->p1:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/collision/RayCastInput;->p1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 44
    iget-object v0, p0, Lorg/jbox2d/collision/RayCastInput;->p2:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/collision/RayCastInput;->p2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 45
    iget v0, p1, Lorg/jbox2d/collision/RayCastInput;->maxFraction:F

    iput v0, p0, Lorg/jbox2d/collision/RayCastInput;->maxFraction:F

    .line 46
    return-void
.end method
