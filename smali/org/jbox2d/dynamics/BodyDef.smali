###### Class org.jbox2d.dynamics.BodyDef (org.jbox2d.dynamics.BodyDef)
.class public Lorg/jbox2d/dynamics/BodyDef;
.super Ljava/lang/Object;
.source "BodyDef.java"


# instance fields
.field public active:Z

.field public allowSleep:Z

.field public angle:F

.field public angularDamping:F

.field public angularVelocity:F

.field public awake:Z

.field public bullet:Z

.field public fixedRotation:Z

.field public gravityScale:F

.field public linearDamping:F

.field public linearVelocity:Lorg/jbox2d/common/Vec2;

.field public position:Lorg/jbox2d/common/Vec2;

.field public type:Lorg/jbox2d/dynamics/BodyType;

.field public userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jbox2d/dynamics/BodyDef;->userData:Ljava/lang/Object;

    .line 121
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    .line 122
    iput v1, p0, Lorg/jbox2d/dynamics/BodyDef;->angle:F

    .line 123
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/dynamics/BodyDef;->linearVelocity:Lorg/jbox2d/common/Vec2;

    .line 124
    iput v1, p0, Lorg/jbox2d/dynamics/BodyDef;->angularVelocity:F

    .line 125
    iput v1, p0, Lorg/jbox2d/dynamics/BodyDef;->linearDamping:F

    .line 126
    iput v1, p0, Lorg/jbox2d/dynamics/BodyDef;->angularDamping:F

    .line 127
    iput-boolean v2, p0, Lorg/jbox2d/dynamics/BodyDef;->allowSleep:Z

    .line 128
    iput-boolean v2, p0, Lorg/jbox2d/dynamics/BodyDef;->awake:Z

    .line 129
    iput-boolean v3, p0, Lorg/jbox2d/dynamics/BodyDef;->fixedRotation:Z

    .line 130
    iput-boolean v3, p0, Lorg/jbox2d/dynamics/BodyDef;->bullet:Z

    .line 131
    sget-object v0, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    iput-object v0, p0, Lorg/jbox2d/dynamics/BodyDef;->type:Lorg/jbox2d/dynamics/BodyType;

    .line 132
    iput-boolean v2, p0, Lorg/jbox2d/dynamics/BodyDef;->active:Z

    .line 133
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/jbox2d/dynamics/BodyDef;->gravityScale:F

    .line 134
    return-void
.end method
