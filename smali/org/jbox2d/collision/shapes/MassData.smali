###### Class org.jbox2d.collision.shapes.MassData (org.jbox2d.collision.shapes.MassData)
.class public Lorg/jbox2d/collision/shapes/MassData;
.super Ljava/lang/Object;
.source "MassData.java"


# instance fields
.field public I:F

.field public final center:Lorg/jbox2d/common/Vec2;

.field public mass:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/collision/shapes/MassData;->I:F

    iput v0, p0, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    .line 67
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/shapes/MassData;)V
    .registers 3
    .param p1, "md"    # Lorg/jbox2d/collision/shapes/MassData;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iget v0, p1, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    iput v0, p0, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    .line 78
    iget v0, p1, Lorg/jbox2d/collision/shapes/MassData;->I:F

    iput v0, p0, Lorg/jbox2d/collision/shapes/MassData;->I:F

    .line 79
    iget-object v0, p1, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    .line 80
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/jbox2d/collision/shapes/MassData;->clone()Lorg/jbox2d/collision/shapes/MassData;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jbox2d/collision/shapes/MassData;
    .registers 2

    .prologue
    .line 90
    new-instance v0, Lorg/jbox2d/collision/shapes/MassData;

    invoke-direct {v0, p0}, Lorg/jbox2d/collision/shapes/MassData;-><init>(Lorg/jbox2d/collision/shapes/MassData;)V

    return-object v0
.end method

.method public set(Lorg/jbox2d/collision/shapes/MassData;)V
    .registers 4
    .param p1, "md"    # Lorg/jbox2d/collision/shapes/MassData;

    .prologue
    .line 83
    iget v0, p1, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    iput v0, p0, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    .line 84
    iget v0, p1, Lorg/jbox2d/collision/shapes/MassData;->I:F

    iput v0, p0, Lorg/jbox2d/collision/shapes/MassData;->I:F

    .line 85
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 86
    return-void
.end method
