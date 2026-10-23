###### Class org.jbox2d.common.RaycastResult (org.jbox2d.common.RaycastResult)
.class public Lorg/jbox2d/common/RaycastResult;
.super Ljava/lang/Object;
.source "RaycastResult.java"


# instance fields
.field public lambda:F

.field public final normal:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/common/RaycastResult;->lambda:F

    .line 30
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/RaycastResult;->normal:Lorg/jbox2d/common/Vec2;

    return-void
.end method


# virtual methods
.method public set(Lorg/jbox2d/common/RaycastResult;)Lorg/jbox2d/common/RaycastResult;
    .registers 4
    .param p1, "argOther"    # Lorg/jbox2d/common/RaycastResult;

    .prologue
    .line 33
    iget v0, p1, Lorg/jbox2d/common/RaycastResult;->lambda:F

    iput v0, p0, Lorg/jbox2d/common/RaycastResult;->lambda:F

    .line 34
    iget-object v0, p0, Lorg/jbox2d/common/RaycastResult;->normal:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/RaycastResult;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 35
    return-object p0
.end method
