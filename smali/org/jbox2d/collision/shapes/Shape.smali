###### Class org.jbox2d.collision.shapes.Shape (org.jbox2d.collision.shapes.Shape)
.class public abstract Lorg/jbox2d/collision/shapes/Shape;
.super Ljava/lang/Object;
.source "Shape.java"


# instance fields
.field public m_radius:F

.field public final m_type:Lorg/jbox2d/collision/shapes/ShapeType;


# direct methods
.method public constructor <init>(Lorg/jbox2d/collision/shapes/ShapeType;)V
    .registers 2
    .param p1, "type"    # Lorg/jbox2d/collision/shapes/ShapeType;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/jbox2d/collision/shapes/Shape;->m_type:Lorg/jbox2d/collision/shapes/ShapeType;

    .line 44
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
    .line 37
    invoke-virtual {p0}, Lorg/jbox2d/collision/shapes/Shape;->clone()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone()Lorg/jbox2d/collision/shapes/Shape;
.end method

.method public abstract computeAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/Transform;I)V
.end method

.method public abstract computeMass(Lorg/jbox2d/collision/shapes/MassData;F)V
.end method

.method public abstract getChildCount()I
.end method

.method public getRadius()F
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lorg/jbox2d/collision/shapes/Shape;->m_radius:F

    return v0
.end method

.method public getType()Lorg/jbox2d/collision/shapes/ShapeType;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/Shape;->m_type:Lorg/jbox2d/collision/shapes/ShapeType;

    return-object v0
.end method

.method public abstract raycast(Lorg/jbox2d/collision/RayCastOutput;Lorg/jbox2d/collision/RayCastInput;Lorg/jbox2d/common/Transform;I)Z
.end method

.method public setRadius(F)V
    .registers 2
    .param p1, "radius"    # F

    .prologue
    .line 72
    iput p1, p0, Lorg/jbox2d/collision/shapes/Shape;->m_radius:F

    .line 73
    return-void
.end method

.method public abstract testPoint(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;)Z
.end method
