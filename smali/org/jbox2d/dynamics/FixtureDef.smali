###### Class org.jbox2d.dynamics.FixtureDef (org.jbox2d.dynamics.FixtureDef)
.class public Lorg/jbox2d/dynamics/FixtureDef;
.super Ljava/lang/Object;
.source "FixtureDef.java"


# instance fields
.field public density:F

.field public filter:Lorg/jbox2d/dynamics/Filter;

.field public friction:F

.field public isSensor:Z

.field public restitution:F

.field public shape:Lorg/jbox2d/collision/shapes/Shape;

.field public userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lorg/jbox2d/dynamics/FixtureDef;->shape:Lorg/jbox2d/collision/shapes/Shape;

    .line 74
    iput-object v0, p0, Lorg/jbox2d/dynamics/FixtureDef;->shape:Lorg/jbox2d/collision/shapes/Shape;

    .line 75
    iput-object v0, p0, Lorg/jbox2d/dynamics/FixtureDef;->userData:Ljava/lang/Object;

    .line 76
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lorg/jbox2d/dynamics/FixtureDef;->friction:F

    .line 77
    iput v1, p0, Lorg/jbox2d/dynamics/FixtureDef;->restitution:F

    .line 78
    iput v1, p0, Lorg/jbox2d/dynamics/FixtureDef;->density:F

    .line 79
    new-instance v0, Lorg/jbox2d/dynamics/Filter;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/Filter;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/FixtureDef;->filter:Lorg/jbox2d/dynamics/Filter;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jbox2d/dynamics/FixtureDef;->isSensor:Z

    .line 81
    return-void
.end method
