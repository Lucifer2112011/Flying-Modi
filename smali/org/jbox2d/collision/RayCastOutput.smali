###### Class org.jbox2d.collision.RayCastOutput (org.jbox2d.collision.RayCastOutput)
.class public Lorg/jbox2d/collision/RayCastOutput;
.super Ljava/lang/Object;
.source "RayCastOutput.java"


# instance fields
.field public fraction:F

.field public final normal:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/RayCastOutput;->normal:Lorg/jbox2d/common/Vec2;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/collision/RayCastOutput;->fraction:F

    .line 40
    return-void
.end method


# virtual methods
.method public set(Lorg/jbox2d/collision/RayCastOutput;)V
    .registers 4
    .param p1, "rco"    # Lorg/jbox2d/collision/RayCastOutput;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/jbox2d/collision/RayCastOutput;->normal:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/collision/RayCastOutput;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 44
    iget v0, p1, Lorg/jbox2d/collision/RayCastOutput;->fraction:F

    iput v0, p0, Lorg/jbox2d/collision/RayCastOutput;->fraction:F

    .line 45
    return-void
.end method
