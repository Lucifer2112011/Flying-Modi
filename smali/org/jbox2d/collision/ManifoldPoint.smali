###### Class org.jbox2d.collision.ManifoldPoint (org.jbox2d.collision.ManifoldPoint)
.class public Lorg/jbox2d/collision/ManifoldPoint;
.super Ljava/lang/Object;
.source "ManifoldPoint.java"


# instance fields
.field public final id:Lorg/jbox2d/collision/ContactID;

.field public final localPoint:Lorg/jbox2d/common/Vec2;

.field public normalImpulse:F

.field public tangentImpulse:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    iput v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 80
    new-instance v0, Lorg/jbox2d/collision/ContactID;

    invoke-direct {v0}, Lorg/jbox2d/collision/ContactID;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/ManifoldPoint;)V
    .registers 4
    .param p1, "cp"    # Lorg/jbox2d/collision/ManifoldPoint;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iget-object v0, p1, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    .line 89
    iget v0, p1, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    iput v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 90
    iget v0, p1, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    iput v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 91
    new-instance v0, Lorg/jbox2d/collision/ContactID;

    iget-object v1, p1, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    invoke-direct {v0, v1}, Lorg/jbox2d/collision/ContactID;-><init>(Lorg/jbox2d/collision/ContactID;)V

    iput-object v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 92
    return-void
.end method


# virtual methods
.method public set(Lorg/jbox2d/collision/ManifoldPoint;)V
    .registers 4
    .param p1, "cp"    # Lorg/jbox2d/collision/ManifoldPoint;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 100
    iget v0, p1, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    iput v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->normalImpulse:F

    .line 101
    iget v0, p1, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    iput v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->tangentImpulse:F

    .line 102
    iget-object v0, p0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    iget-object v1, p1, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    invoke-virtual {v0, v1}, Lorg/jbox2d/collision/ContactID;->set(Lorg/jbox2d/collision/ContactID;)V

    .line 103
    return-void
.end method
