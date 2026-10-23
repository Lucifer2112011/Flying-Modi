###### Class com.idk.simple.PhysicsInterface (com.idk.simple.PhysicsInterface)
.class public Lcom/idk/simple/PhysicsInterface;
.super Lcom/idk/core/SceneInterface;
.source "PhysicsInterface.java"


# annotations
.annotation runtime Lcom/idk/core/Tag;
    value = "editable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;,
        Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    }
.end annotation


# instance fields
.field private collisionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/idk/simple/CollisionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final gravity:Lorg/jbox2d/common/Vec2;

.field private isEditMode:Z

.field private openGLDebugDraw:Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;

.field private projection:Lcom/idk/math/Matrix;

.field private final rigidbodyBodyHashMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/idk/simple/Rigidbody;",
            "Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;",
            ">;"
        }
    .end annotation
.end field

.field private final staticbodyBodyHashMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/idk/simple/Staticbody;",
            "Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;",
            ">;"
        }
    .end annotation
.end field

.field private view:Lcom/idk/math/Matrix;

.field private world:Lorg/jbox2d/dynamics/World;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/idk/core/SceneInterface;-><init>()V

    .line 47
    new-instance v0, Lorg/jbox2d/common/Vec2;

    const/4 v1, 0x0

    const v2, -0x3f633333    # -4.9f

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lcom/idk/simple/PhysicsInterface;->gravity:Lorg/jbox2d/common/Vec2;

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/idk/simple/PhysicsInterface;->rigidbodyBodyHashMap:Landroid/util/ArrayMap;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/idk/simple/PhysicsInterface;->staticbodyBodyHashMap:Landroid/util/ArrayMap;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idk/simple/PhysicsInterface;->collisionListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/idk/simple/PhysicsInterface;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/idk/simple/PhysicsInterface;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/idk/simple/PhysicsInterface;->collisionListeners:Ljava/util/List;

    return-object v0
.end method

.method public static to(Lorg/jbox2d/common/Vec2;)Lcom/idk/math/Vector2;
    .registers 4
    .param p0, "vec2"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 427
    new-instance v0, Lcom/idk/math/Vector2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-direct {v0, v1, v2}, Lcom/idk/math/Vector2;-><init>(FF)V

    return-object v0
.end method

.method private static to(Lcom/idk/math/Vector2;)Lorg/jbox2d/common/Vec2;
    .registers 4
    .param p0, "co"    # Lcom/idk/math/Vector2;

    .prologue
    .line 424
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lcom/idk/math/Vector2;->x:F

    iget v2, p0, Lcom/idk/math/Vector2;->y:F

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public addCollisionListener(Lcom/idk/simple/CollisionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/idk/simple/CollisionListener;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/idk/simple/PhysicsInterface;->collisionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public addForce(Lcom/idk/simple/Rigidbody;Lcom/idk/math/Vector2;)V
    .registers 6
    .param p1, "rigidbody"    # Lcom/idk/simple/Rigidbody;
    .param p2, "force"    # Lcom/idk/math/Vector2;

    .prologue
    .line 411
    iget-object v1, p0, Lcom/idk/simple/PhysicsInterface;->rigidbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;

    .line 412
    .local v0, "unitPhysic":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    if-eqz v0, :cond_13

    .line 413
    iget-object v1, v0, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    invoke-static {p2}, Lcom/idk/simple/PhysicsInterface;->to(Lcom/idk/math/Vector2;)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jbox2d/dynamics/Body;->applyForceToCenter(Lorg/jbox2d/common/Vec2;)V

    .line 415
    :cond_13
    return-void
.end method

.method public addRigidbody(Lcom/idk/simple/Rigidbody;)V
    .registers 12
    .param p1, "rigidbody"    # Lcom/idk/simple/Rigidbody;

    .prologue
    const v9, 0x3c23d70a    # 0.01f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 334
    iget-object v6, p0, Lcom/idk/simple/PhysicsInterface;->rigidbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 335
    new-instance v1, Lorg/jbox2d/dynamics/BodyDef;

    invoke-direct {v1}, Lorg/jbox2d/dynamics/BodyDef;-><init>()V

    .line 336
    .local v1, "def":Lorg/jbox2d/dynamics/BodyDef;
    sget-object v6, Lorg/jbox2d/dynamics/BodyType;->DYNAMIC:Lorg/jbox2d/dynamics/BodyType;

    iput-object v6, v1, Lorg/jbox2d/dynamics/BodyDef;->type:Lorg/jbox2d/dynamics/BodyType;

    .line 337
    iget-object v6, v1, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v7, v7}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 338
    iput v8, v1, Lorg/jbox2d/dynamics/BodyDef;->gravityScale:F

    .line 339
    iget-object v6, p0, Lcom/idk/simple/PhysicsInterface;->world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v6, v1}, Lorg/jbox2d/dynamics/World;->createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    .line 340
    .local v0, "body":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v0, p1}, Lorg/jbox2d/dynamics/Body;->setUserData(Ljava/lang/Object;)V

    .line 341
    new-instance v4, Lorg/jbox2d/collision/shapes/PolygonShape;

    invoke-direct {v4}, Lorg/jbox2d/collision/shapes/PolygonShape;-><init>()V

    .line 342
    .local v4, "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    iget-object v6, p1, Lcom/idk/simple/Rigidbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v6, v6, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v6, v6, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v6, v6, Lcom/idk/math/Vector2;->x:F

    mul-float/2addr v6, v9

    iget-object v7, p1, Lcom/idk/simple/Rigidbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v7, v7, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v7, v7, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v7, v7, Lcom/idk/math/Vector2;->y:F

    mul-float/2addr v7, v9

    invoke-virtual {v4, v6, v7}, Lorg/jbox2d/collision/shapes/PolygonShape;->setAsBox(FF)V

    .line 344
    invoke-virtual {v0, v4, v8}, Lorg/jbox2d/dynamics/Body;->createFixture(Lorg/jbox2d/collision/shapes/Shape;F)Lorg/jbox2d/dynamics/Fixture;

    move-result-object v2

    .line 345
    .local v2, "fx":Lorg/jbox2d/dynamics/Fixture;
    new-instance v3, Lorg/jbox2d/collision/shapes/MassData;

    invoke-direct {v3}, Lorg/jbox2d/collision/shapes/MassData;-><init>()V

    .line 346
    .local v3, "ms":Lorg/jbox2d/collision/shapes/MassData;
    iput v8, v3, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    .line 348
    invoke-virtual {v0, v3}, Lorg/jbox2d/dynamics/Body;->setMassData(Lorg/jbox2d/collision/shapes/MassData;)V

    .line 349
    new-instance v5, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;-><init>(Lcom/idk/simple/PhysicsInterface;Lcom/idk/simple/PhysicsInterface$1;)V

    .line 350
    .local v5, "unitPhysic":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    iput-object v0, v5, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    .line 351
    iput-object v2, v5, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->fixture:Lorg/jbox2d/dynamics/Fixture;

    .line 352
    iget-object v6, p0, Lcom/idk/simple/PhysicsInterface;->rigidbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/jbox2d/dynamics/Body;->setActive(Z)V

    .line 357
    .end local v0    # "body":Lorg/jbox2d/dynamics/Body;
    .end local v1    # "def":Lorg/jbox2d/dynamics/BodyDef;
    .end local v2    # "fx":Lorg/jbox2d/dynamics/Fixture;
    .end local v3    # "ms":Lorg/jbox2d/collision/shapes/MassData;
    .end local v4    # "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    .end local v5    # "unitPhysic":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    :goto_62
    return-void

    .line 355
    :cond_63
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Rigidbody Already Exist"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_62
.end method

.method public addStaticbody(Lcom/idk/simple/Staticbody;)V
    .registers 10
    .param p1, "staticbody"    # Lcom/idk/simple/Staticbody;

    .prologue
    const v7, 0x3c23d70a    # 0.01f

    const/4 v6, 0x0

    .line 368
    iget-object v5, p0, Lcom/idk/simple/PhysicsInterface;->staticbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 369
    new-instance v1, Lorg/jbox2d/dynamics/BodyDef;

    invoke-direct {v1}, Lorg/jbox2d/dynamics/BodyDef;-><init>()V

    .line 370
    .local v1, "def":Lorg/jbox2d/dynamics/BodyDef;
    sget-object v5, Lorg/jbox2d/dynamics/BodyType;->STATIC:Lorg/jbox2d/dynamics/BodyType;

    iput-object v5, v1, Lorg/jbox2d/dynamics/BodyDef;->type:Lorg/jbox2d/dynamics/BodyType;

    .line 371
    iget-object v5, v1, Lorg/jbox2d/dynamics/BodyDef;->position:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v5, v6, v6}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 372
    iget-object v5, p0, Lcom/idk/simple/PhysicsInterface;->world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v5, v1}, Lorg/jbox2d/dynamics/World;->createBody(Lorg/jbox2d/dynamics/BodyDef;)Lorg/jbox2d/dynamics/Body;

    move-result-object v0

    .line 373
    .local v0, "body":Lorg/jbox2d/dynamics/Body;
    invoke-virtual {v0, p1}, Lorg/jbox2d/dynamics/Body;->setUserData(Ljava/lang/Object;)V

    .line 374
    new-instance v3, Lorg/jbox2d/collision/shapes/PolygonShape;

    invoke-direct {v3}, Lorg/jbox2d/collision/shapes/PolygonShape;-><init>()V

    .line 375
    .local v3, "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    iget-object v5, p1, Lcom/idk/simple/Staticbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v5, v5, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v5, v5, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v5, v5, Lcom/idk/math/Vector2;->x:F

    mul-float/2addr v5, v7

    iget-object v6, p1, Lcom/idk/simple/Staticbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v6, v6, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v6, v6, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v6, v6, Lcom/idk/math/Vector2;->y:F

    mul-float/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Lorg/jbox2d/collision/shapes/PolygonShape;->setAsBox(FF)V

    .line 376
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v5}, Lorg/jbox2d/dynamics/Body;->createFixture(Lorg/jbox2d/collision/shapes/Shape;F)Lorg/jbox2d/dynamics/Fixture;

    move-result-object v2

    .line 377
    .local v2, "fx":Lorg/jbox2d/dynamics/Fixture;
    iget-boolean v5, p1, Lcom/idk/simple/Staticbody;->isGhost:Z

    iput-boolean v5, v2, Lorg/jbox2d/dynamics/Fixture;->m_isSensor:Z

    .line 378
    new-instance v4, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;-><init>(Lcom/idk/simple/PhysicsInterface;Lcom/idk/simple/PhysicsInterface$1;)V

    .line 379
    .local v4, "unitPhysic":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    iput-object v0, v4, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    .line 380
    iput-object v2, v4, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->fixture:Lorg/jbox2d/dynamics/Fixture;

    .line 381
    iget-object v5, p0, Lcom/idk/simple/PhysicsInterface;->staticbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/jbox2d/dynamics/Body;->setActive(Z)V

    .line 386
    .end local v0    # "body":Lorg/jbox2d/dynamics/Body;
    .end local v1    # "def":Lorg/jbox2d/dynamics/BodyDef;
    .end local v2    # "fx":Lorg/jbox2d/dynamics/Fixture;
    .end local v3    # "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    .end local v4    # "unitPhysic":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    :goto_5a
    return-void

    .line 384
    :cond_5b
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Static Body Already Exist"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5a
.end method

.method public castRay(Lcom/idk/simple/Raycast;)Ljava/util/Set;
    .registers 7
    .param p1, "raycast"    # Lcom/idk/simple/Raycast;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/idk/simple/Raycast;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/idk/simple/RaycastResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 467
    .local v0, "physicsbodies":Ljava/util/Set;, "Ljava/util/Set<Lcom/idk/simple/RaycastResult;>;"
    iget-object v1, p0, Lcom/idk/simple/PhysicsInterface;->world:Lorg/jbox2d/dynamics/World;

    new-instance v2, Lcom/idk/simple/PhysicsInterface$2;

    invoke-direct {v2, p0, v0}, Lcom/idk/simple/PhysicsInterface$2;-><init>(Lcom/idk/simple/PhysicsInterface;Ljava/util/Set;)V

    .line 473
    invoke-virtual {p1}, Lcom/idk/simple/Raycast;->getStart()Lcom/idk/math/Vector2;

    move-result-object v3

    invoke-static {v3}, Lcom/idk/simple/PhysicsInterface;->to(Lcom/idk/math/Vector2;)Lorg/jbox2d/common/Vec2;

    move-result-object v3

    invoke-virtual {p1}, Lcom/idk/simple/Raycast;->getEnd()Lcom/idk/math/Vector2;

    move-result-object v4

    invoke-static {v4}, Lcom/idk/simple/PhysicsInterface;->to(Lcom/idk/math/Vector2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 467
    invoke-virtual {v1, v2, v3, v4}, Lorg/jbox2d/dynamics/World;->raycast(Lorg/jbox2d/callbacks/RayCastCallback;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 474
    return-object v0
.end method

.method public clearForce(Lcom/idk/simple/Rigidbody;)V
    .registers 6
    .param p1, "rigidbody"    # Lcom/idk/simple/Rigidbody;

    .prologue
    const/4 v3, 0x0

    .line 430
    iget-object v1, p0, Lcom/idk/simple/PhysicsInterface;->rigidbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;

    .line 431
    .local v0, "unitPhysic":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    if-eqz v0, :cond_1a

    .line 432
    iget-object v1, v0, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v1, v3}, Lorg/jbox2d/dynamics/Body;->setAngularVelocity(F)V

    .line 433
    iget-object v1, v0, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    new-instance v2, Lorg/jbox2d/common/Vec2;

    invoke-direct {v2, v3, v3}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    invoke-virtual {v1, v2}, Lorg/jbox2d/dynamics/Body;->setLinearVelocity(Lorg/jbox2d/common/Vec2;)V

    .line 435
    :cond_1a
    return-void
.end method

.method public getCollisionList(Lcom/idk/simple/Rigidbody;)Ljava/util/List;
    .registers 6
    .param p1, "rigidbody"    # Lcom/idk/simple/Rigidbody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/idk/simple/Rigidbody;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/idk/simple/Physicsbody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v3, p0, Lcom/idk/simple/PhysicsInterface;->rigidbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;

    .line 453
    .local v2, "sup":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v1, "physicsbodies":Ljava/util/List;, "Ljava/util/List<Lcom/idk/simple/Physicsbody;>;"
    if-eqz v2, :cond_2d

    .line 455
    iget-object v3, v2, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getContactList()Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-result-object v0

    .line 456
    .local v0, "edge":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :goto_15
    if-eqz v0, :cond_2d

    .line 457
    iget-object v3, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/contacts/Contact;->isTouching()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 458
    iget-object v3, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getUserData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/idk/simple/Physicsbody;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_2a
    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    goto :goto_15

    .line 463
    .end local v0    # "edge":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :cond_2d
    return-object v1
.end method

.method public getCollisionList(Lcom/idk/simple/Staticbody;)Ljava/util/List;
    .registers 6
    .param p1, "staticbody"    # Lcom/idk/simple/Staticbody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/idk/simple/Staticbody;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/idk/simple/Physicsbody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    iget-object v3, p0, Lcom/idk/simple/PhysicsInterface;->staticbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;

    .line 478
    .local v2, "sup":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v1, "physicsbodies":Ljava/util/List;, "Ljava/util/List<Lcom/idk/simple/Physicsbody;>;"
    if-eqz v2, :cond_2d

    .line 480
    iget-object v3, v2, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getContactList()Lorg/jbox2d/dynamics/contacts/ContactEdge;

    move-result-object v0

    .line 481
    .local v0, "edge":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :goto_15
    if-eqz v0, :cond_2d

    .line 482
    iget-object v3, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->contact:Lorg/jbox2d/dynamics/contacts/Contact;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/contacts/Contact;->isTouching()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 483
    iget-object v3, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->other:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getUserData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/idk/simple/Physicsbody;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_2a
    iget-object v0, v0, Lorg/jbox2d/dynamics/contacts/ContactEdge;->next:Lorg/jbox2d/dynamics/contacts/ContactEdge;

    goto :goto_15

    .line 488
    .end local v0    # "edge":Lorg/jbox2d/dynamics/contacts/ContactEdge;
    :cond_2d
    return-object v1
.end method

.method public getLinearVelocity(Lcom/idk/simple/Rigidbody;)Lcom/idk/math/Vector2;
    .registers 4
    .param p1, "rigidbody"    # Lcom/idk/simple/Rigidbody;

    .prologue
    .line 417
    iget-object v1, p0, Lcom/idk/simple/PhysicsInterface;->rigidbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;

    .line 418
    .local v0, "unitPhysic":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    if-eqz v0, :cond_15

    .line 419
    iget-object v1, v0, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v1}, Lorg/jbox2d/dynamics/Body;->getLinearVelocity()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    invoke-static {v1}, Lcom/idk/simple/PhysicsInterface;->to(Lorg/jbox2d/common/Vec2;)Lcom/idk/math/Vector2;

    move-result-object v1

    .line 421
    :goto_14
    return-object v1

    :cond_15
    new-instance v1, Lcom/idk/math/Vector2;

    invoke-direct {v1}, Lcom/idk/math/Vector2;-><init>()V

    goto :goto_14
.end method

.method public onCreate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super {p0}, Lcom/idk/core/SceneInterface;->onCreate()V

    .line 57
    new-instance v0, Lorg/jbox2d/dynamics/World;

    iget-object v1, p0, Lcom/idk/simple/PhysicsInterface;->gravity:Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1}, Lorg/jbox2d/dynamics/World;-><init>(Lorg/jbox2d/common/Vec2;)V

    iput-object v0, p0, Lcom/idk/simple/PhysicsInterface;->world:Lorg/jbox2d/dynamics/World;

    .line 58
    new-instance v0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;

    invoke-direct {v0, p0, v2, v2}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;-><init>(Lcom/idk/simple/PhysicsInterface;Lorg/jbox2d/common/IViewportTransform;Lcom/idk/simple/PhysicsInterface$1;)V

    iput-object v0, p0, Lcom/idk/simple/PhysicsInterface;->openGLDebugDraw:Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;

    .line 59
    iget-object v0, p0, Lcom/idk/simple/PhysicsInterface;->world:Lorg/jbox2d/dynamics/World;

    iget-object v1, p0, Lcom/idk/simple/PhysicsInterface;->openGLDebugDraw:Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/World;->setDebugDraw(Lorg/jbox2d/callbacks/DebugDraw;)V

    .line 60
    iget-object v0, p0, Lcom/idk/simple/PhysicsInterface;->targetScene:Lcom/idk/core/Scene;

    iget-object v0, v0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    const-string v1, "edit_mode"

    invoke-interface {v0, v1}, Lcom/idk/core/EngineInterface;->hasKey(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/idk/simple/PhysicsInterface;->isEditMode:Z

    .line 61
    iget-boolean v0, p0, Lcom/idk/simple/PhysicsInterface;->isEditMode:Z

    if-eqz v0, :cond_47

    .line 62
    iget-object v0, p0, Lcom/idk/simple/PhysicsInterface;->targetScene:Lcom/idk/core/Scene;

    iget-object v0, v0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    const-string v1, "e_projection"

    invoke-interface {v0, v1}, Lcom/idk/core/EngineInterface;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/math/Matrix;

    iput-object v0, p0, Lcom/idk/simple/PhysicsInterface;->projection:Lcom/idk/math/Matrix;

    .line 63
    iget-object v0, p0, Lcom/idk/simple/PhysicsInterface;->targetScene:Lcom/idk/core/Scene;

    iget-object v0, v0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    const-string v1, "e_view"

    invoke-interface {v0, v1}, Lcom/idk/core/EngineInterface;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/math/Matrix;

    iput-object v0, p0, Lcom/idk/simple/PhysicsInterface;->view:Lcom/idk/math/Matrix;

    .line 65
    :cond_47
    iget-object v0, p0, Lcom/idk/simple/PhysicsInterface;->world:Lorg/jbox2d/dynamics/World;

    new-instance v1, Lcom/idk/simple/PhysicsInterface$1;

    invoke-direct {v1, p0}, Lcom/idk/simple/PhysicsInterface$1;-><init>(Lcom/idk/simple/PhysicsInterface;)V

    invoke-virtual {v0, v1}, Lorg/jbox2d/dynamics/World;->setContactListener(Lorg/jbox2d/callbacks/ContactListener;)V

    .line 87
    return-void
.end method

.method public onPostUpdate()V
    .registers 13

    .prologue
    .line 96
    invoke-super {p0}, Lcom/idk/core/SceneInterface;->onPreUpdate()V

    .line 97
    iget-object v6, p0, Lcom/idk/simple/PhysicsInterface;->rigidbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 98
    .local v0, "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/idk/simple/Rigidbody;Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/idk/simple/Rigidbody;

    iget-object v6, v6, Lcom/idk/simple/Rigidbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v5, v6, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    .line 99
    .local v5, "transform2D":Lcom/idk/math/Transform2D;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;

    iget-object v6, v6, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    new-instance v8, Lorg/jbox2d/common/Vec2;

    iget-object v9, v5, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v9, v9, Lcom/idk/math/Vector2;->x:F

    const v10, 0x3c23d70a    # 0.01f

    mul-float/2addr v9, v10

    iget-object v10, v5, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v10, v10, Lcom/idk/math/Vector2;->y:F

    const v11, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v11

    invoke-direct {v8, v9, v10}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iget v9, v5, Lcom/idk/math/Transform2D;->angle:F

    float-to-double v10, v9

    .line 100
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    double-to-float v9, v10

    .line 99
    invoke-virtual {v6, v8, v9}, Lorg/jbox2d/dynamics/Body;->setTransform(Lorg/jbox2d/common/Vec2;F)V

    goto :goto_d

    .line 102
    .end local v0    # "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/idk/simple/Rigidbody;Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;>;"
    .end local v5    # "transform2D":Lcom/idk/math/Transform2D;
    :cond_4c
    iget-object v6, p0, Lcom/idk/simple/PhysicsInterface;->staticbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_56
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 103
    .local v1, "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/idk/simple/Staticbody;Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/idk/simple/Staticbody;

    iget-object v6, v6, Lcom/idk/simple/Staticbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v5, v6, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    .line 104
    .restart local v5    # "transform2D":Lcom/idk/math/Transform2D;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;

    iget-object v6, v6, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    new-instance v8, Lorg/jbox2d/common/Vec2;

    iget-object v9, v5, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v9, v9, Lcom/idk/math/Vector2;->x:F

    const v10, 0x3c23d70a    # 0.01f

    mul-float/2addr v9, v10

    iget-object v10, v5, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v10, v10, Lcom/idk/math/Vector2;->y:F

    const v11, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v11

    invoke-direct {v8, v9, v10}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iget v9, v5, Lcom/idk/math/Transform2D;->angle:F

    float-to-double v10, v9

    .line 105
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    double-to-float v9, v10

    .line 104
    invoke-virtual {v6, v8, v9}, Lorg/jbox2d/dynamics/Body;->setTransform(Lorg/jbox2d/common/Vec2;F)V

    goto :goto_56

    .line 107
    .end local v1    # "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/idk/simple/Staticbody;Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;>;"
    .end local v5    # "transform2D":Lcom/idk/math/Transform2D;
    :cond_95
    iget-boolean v6, p0, Lcom/idk/simple/PhysicsInterface;->isEditMode:Z

    if-eqz v6, :cond_d7

    .line 108
    iget-object v6, p0, Lcom/idk/simple/PhysicsInterface;->openGLDebugDraw:Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;

    invoke-static {v6}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->access$200(Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;)V

    .line 109
    iget-object v6, p0, Lcom/idk/simple/PhysicsInterface;->openGLDebugDraw:Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;

    invoke-static {v6}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->access$300(Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/idk/simple/PhysicsInterface;->view:Lcom/idk/math/Matrix;

    iget-object v9, v9, Lcom/idk/math/Matrix;->val:[F

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 110
    iget-object v6, p0, Lcom/idk/simple/PhysicsInterface;->openGLDebugDraw:Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;

    invoke-static {v6}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->access$400(Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/idk/simple/PhysicsInterface;->projection:Lcom/idk/math/Matrix;

    iget-object v9, v9, Lcom/idk/math/Matrix;->val:[F

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 111
    iget-object v6, p0, Lcom/idk/simple/PhysicsInterface;->openGLDebugDraw:Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;

    invoke-static {v6}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->access$500(Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/idk/simple/PhysicsInterface;->openGLDebugDraw:Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;

    invoke-static {v9}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->access$600(Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;)Lcom/idk/math/Matrix;

    move-result-object v9

    iget-object v9, v9, Lcom/idk/math/Matrix;->val:[F

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 112
    iget-object v6, p0, Lcom/idk/simple/PhysicsInterface;->world:Lorg/jbox2d/dynamics/World;

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/World;->drawDebugData()V

    .line 114
    :cond_d7
    iget-boolean v6, p0, Lcom/idk/simple/PhysicsInterface;->isEditMode:Z

    if-nez v6, :cond_f2

    .line 115
    const v6, 0x3c23d70a    # 0.01f

    iget-object v7, p0, Lcom/idk/simple/PhysicsInterface;->targetScene:Lcom/idk/core/Scene;

    iget-object v7, v7, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    invoke-interface {v7}, Lcom/idk/core/EngineInterface;->getDeltaTime()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 116
    .local v2, "del":F
    iget-object v6, p0, Lcom/idk/simple/PhysicsInterface;->world:Lorg/jbox2d/dynamics/World;

    const/16 v7, 0x8

    const/4 v8, 0x3

    invoke-virtual {v6, v2, v7, v8}, Lorg/jbox2d/dynamics/World;->step(FII)V

    .line 118
    .end local v2    # "del":F
    :cond_f2
    iget-object v6, p0, Lcom/idk/simple/PhysicsInterface;->rigidbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_fc
    :goto_fc
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_146

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 119
    .restart local v0    # "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/idk/simple/Rigidbody;Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/idk/simple/Rigidbody;

    .line 120
    .local v3, "rigidbody":Lcom/idk/simple/Rigidbody;
    iget-object v6, v3, Lcom/idk/simple/Rigidbody;->targetObject:Lcom/idk/core/GameObject;

    iget-boolean v6, v6, Lcom/idk/core/GameObject;->active:Z

    if-eqz v6, :cond_fc

    .line 121
    iget-object v6, v3, Lcom/idk/simple/Rigidbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v5, v6, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    .line 122
    .restart local v5    # "transform2D":Lcom/idk/math/Transform2D;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;

    iget-object v6, v6, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v6}, Lorg/jbox2d/dynamics/Body;->getTransform()Lorg/jbox2d/common/Transform;

    move-result-object v4

    .line 123
    .local v4, "transform":Lorg/jbox2d/common/Transform;
    iget-object v6, v5, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget-object v8, v4, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->x:F

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    iget-object v9, v4, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->y:F

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    invoke-virtual {v6, v8, v9}, Lcom/idk/math/Vector2;->set(FF)V

    .line 124
    iget-object v6, v4, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-virtual {v6}, Lorg/jbox2d/common/Rot;->getAngle()F

    move-result v6

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v6, v8

    iput v6, v5, Lcom/idk/math/Transform2D;->angle:F

    goto :goto_fc

    .line 129
    .end local v0    # "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/idk/simple/Rigidbody;Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;>;"
    .end local v3    # "rigidbody":Lcom/idk/simple/Rigidbody;
    .end local v4    # "transform":Lorg/jbox2d/common/Transform;
    .end local v5    # "transform2D":Lcom/idk/math/Transform2D;
    :cond_146
    return-void
.end method

.method public removeCollisionListener(Lcom/idk/simple/CollisionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/idk/simple/CollisionListener;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/idk/simple/PhysicsInterface;->collisionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public removeRigidbody(Lcom/idk/simple/Rigidbody;)V
    .registers 5
    .param p1, "rigidbody"    # Lcom/idk/simple/Rigidbody;

    .prologue
    .line 360
    iget-object v1, p0, Lcom/idk/simple/PhysicsInterface;->rigidbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 361
    iget-object v1, p0, Lcom/idk/simple/PhysicsInterface;->rigidbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;

    .line 362
    .local v0, "unitPhysic":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    iget-object v1, p0, Lcom/idk/simple/PhysicsInterface;->world:Lorg/jbox2d/dynamics/World;

    iget-object v2, v0, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v1, v2}, Lorg/jbox2d/dynamics/World;->destroyBody(Lorg/jbox2d/dynamics/Body;)V

    .line 366
    .end local v0    # "unitPhysic":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    :goto_17
    return-void

    .line 364
    :cond_18
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Rigidbody Not Exist"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public removeStaticbody(Lcom/idk/simple/Staticbody;)V
    .registers 5
    .param p1, "staticbody"    # Lcom/idk/simple/Staticbody;

    .prologue
    .line 388
    iget-object v1, p0, Lcom/idk/simple/PhysicsInterface;->staticbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 389
    iget-object v1, p0, Lcom/idk/simple/PhysicsInterface;->staticbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;

    .line 390
    .local v0, "unitPhysic":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    iget-object v1, p0, Lcom/idk/simple/PhysicsInterface;->world:Lorg/jbox2d/dynamics/World;

    iget-object v2, v0, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v1, v2}, Lorg/jbox2d/dynamics/World;->destroyBody(Lorg/jbox2d/dynamics/Body;)V

    .line 394
    .end local v0    # "unitPhysic":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    :goto_17
    return-void

    .line 392
    :cond_18
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Staticbody Not Exist"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public updateRigidbodySize(Lcom/idk/simple/Rigidbody;)V
    .registers 9
    .param p1, "rigidbody"    # Lcom/idk/simple/Rigidbody;

    .prologue
    const v6, 0x3c23d70a    # 0.01f

    .line 396
    iget-object v4, p0, Lcom/idk/simple/PhysicsInterface;->rigidbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 397
    iget-object v4, p0, Lcom/idk/simple/PhysicsInterface;->rigidbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;

    .line 398
    .local v3, "unitPhysic":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    iget-object v4, v3, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    iget-object v5, v3, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->fixture:Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v4, v5}, Lorg/jbox2d/dynamics/Body;->destroyFixture(Lorg/jbox2d/dynamics/Fixture;)V

    .line 399
    new-instance v2, Lorg/jbox2d/collision/shapes/PolygonShape;

    invoke-direct {v2}, Lorg/jbox2d/collision/shapes/PolygonShape;-><init>()V

    .line 400
    .local v2, "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    iget-object v4, p1, Lcom/idk/simple/Rigidbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v4, v4, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v4, v4, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v4, v4, Lcom/idk/math/Vector2;->x:F

    mul-float/2addr v4, v6

    iget-object v5, p1, Lcom/idk/simple/Rigidbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v5, v5, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v5, v5, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v5, v5, Lcom/idk/math/Vector2;->y:F

    mul-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/jbox2d/collision/shapes/PolygonShape;->setAsBox(FF)V

    .line 401
    iget-object v4, v3, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v2, v5}, Lorg/jbox2d/dynamics/Body;->createFixture(Lorg/jbox2d/collision/shapes/Shape;F)Lorg/jbox2d/dynamics/Fixture;

    move-result-object v0

    .line 402
    .local v0, "fx":Lorg/jbox2d/dynamics/Fixture;
    new-instance v1, Lorg/jbox2d/collision/shapes/MassData;

    invoke-direct {v1}, Lorg/jbox2d/collision/shapes/MassData;-><init>()V

    .line 403
    .local v1, "massData":Lorg/jbox2d/collision/shapes/MassData;
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v1, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    .line 404
    iget-object v4, v3, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v4, v1}, Lorg/jbox2d/dynamics/Body;->setMassData(Lorg/jbox2d/collision/shapes/MassData;)V

    .line 405
    iput-object v0, v3, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->fixture:Lorg/jbox2d/dynamics/Fixture;

    .line 409
    .end local v0    # "fx":Lorg/jbox2d/dynamics/Fixture;
    .end local v1    # "massData":Lorg/jbox2d/collision/shapes/MassData;
    .end local v2    # "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    .end local v3    # "unitPhysic":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    :goto_4d
    return-void

    .line 407
    :cond_4e
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Rigidbody Not Exist"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4d
.end method

.method public updateStaticbodySize(Lcom/idk/simple/Staticbody;)V
    .registers 8
    .param p1, "staticbody"    # Lcom/idk/simple/Staticbody;

    .prologue
    const v5, 0x3c23d70a    # 0.01f

    .line 439
    iget-object v3, p0, Lcom/idk/simple/PhysicsInterface;->staticbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 440
    iget-object v3, p0, Lcom/idk/simple/PhysicsInterface;->staticbodyBodyHashMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;

    .line 441
    .local v2, "unitPhysic":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    iget-object v3, v2, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    iget-object v4, v2, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->fixture:Lorg/jbox2d/dynamics/Fixture;

    invoke-virtual {v3, v4}, Lorg/jbox2d/dynamics/Body;->destroyFixture(Lorg/jbox2d/dynamics/Fixture;)V

    .line 442
    new-instance v1, Lorg/jbox2d/collision/shapes/PolygonShape;

    invoke-direct {v1}, Lorg/jbox2d/collision/shapes/PolygonShape;-><init>()V

    .line 443
    .local v1, "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    iget-object v3, p1, Lcom/idk/simple/Staticbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v3, v3, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v3, v3, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v3, v3, Lcom/idk/math/Vector2;->x:F

    mul-float/2addr v3, v5

    iget-object v4, p1, Lcom/idk/simple/Staticbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v4, v4, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v4, v4, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v4, v4, Lcom/idk/math/Vector2;->y:F

    mul-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Lorg/jbox2d/collision/shapes/PolygonShape;->setAsBox(FF)V

    .line 444
    iget-object v3, v2, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->body:Lorg/jbox2d/dynamics/Body;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v1, v4}, Lorg/jbox2d/dynamics/Body;->createFixture(Lorg/jbox2d/collision/shapes/Shape;F)Lorg/jbox2d/dynamics/Fixture;

    move-result-object v0

    .line 445
    .local v0, "fx":Lorg/jbox2d/dynamics/Fixture;
    iget-boolean v3, p1, Lcom/idk/simple/Staticbody;->isGhost:Z

    iput-boolean v3, v0, Lorg/jbox2d/dynamics/Fixture;->m_isSensor:Z

    .line 446
    iput-object v0, v2, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->fixture:Lorg/jbox2d/dynamics/Fixture;

    .line 450
    .end local v0    # "fx":Lorg/jbox2d/dynamics/Fixture;
    .end local v1    # "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    .end local v2    # "unitPhysic":Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
    :goto_42
    return-void

    .line 448
    :cond_43
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Staticbody Not Exist"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_42
.end method

###### Class com.idk.simple.PhysicsInterface.AnonymousClass1 (com.idk.simple.PhysicsInterface$1)
.class Lcom/idk/simple/PhysicsInterface$1;
.super Ljava/lang/Object;
.source "PhysicsInterface.java"

# interfaces
.implements Lorg/jbox2d/callbacks/ContactListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/simple/PhysicsInterface;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/simple/PhysicsInterface;


# direct methods
.method constructor <init>(Lcom/idk/simple/PhysicsInterface;)V
    .registers 2
    .param p1, "this$0"    # Lcom/idk/simple/PhysicsInterface;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/idk/simple/PhysicsInterface$1;->this$0:Lcom/idk/simple/PhysicsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginContact(Lorg/jbox2d/dynamics/contacts/Contact;)V
    .registers 7
    .param p1, "contact"    # Lorg/jbox2d/dynamics/contacts/Contact;

    .prologue
    .line 68
    iget-object v3, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    iget-object v3, v3, Lorg/jbox2d/dynamics/Fixture;->m_body:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idk/simple/Physicsbody;

    .line 69
    .local v1, "physicsbody":Lcom/idk/simple/Physicsbody;
    iget-object v3, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    iget-object v3, v3, Lorg/jbox2d/dynamics/Fixture;->m_body:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getUserData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idk/simple/Physicsbody;

    .line 70
    .local v2, "physicsbody1":Lcom/idk/simple/Physicsbody;
    iget-object v3, p0, Lcom/idk/simple/PhysicsInterface$1;->this$0:Lcom/idk/simple/PhysicsInterface;

    invoke-static {v3}, Lcom/idk/simple/PhysicsInterface;->access$100(Lcom/idk/simple/PhysicsInterface;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/simple/CollisionListener;

    .line 71
    .local v0, "listener":Lcom/idk/simple/CollisionListener;
    invoke-interface {v0, v1, v2}, Lcom/idk/simple/CollisionListener;->onEnter(Lcom/idk/simple/Physicsbody;Lcom/idk/simple/Physicsbody;)V

    goto :goto_1e

    .line 73
    .end local v0    # "listener":Lcom/idk/simple/CollisionListener;
    :cond_2e
    return-void
.end method

.method public endContact(Lorg/jbox2d/dynamics/contacts/Contact;)V
    .registers 7
    .param p1, "contact"    # Lorg/jbox2d/dynamics/contacts/Contact;

    .prologue
    .line 76
    iget-object v3, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureA:Lorg/jbox2d/dynamics/Fixture;

    iget-object v3, v3, Lorg/jbox2d/dynamics/Fixture;->m_body:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idk/simple/Physicsbody;

    .line 77
    .local v1, "physicsbody":Lcom/idk/simple/Physicsbody;
    iget-object v3, p1, Lorg/jbox2d/dynamics/contacts/Contact;->m_fixtureB:Lorg/jbox2d/dynamics/Fixture;

    iget-object v3, v3, Lorg/jbox2d/dynamics/Fixture;->m_body:Lorg/jbox2d/dynamics/Body;

    invoke-virtual {v3}, Lorg/jbox2d/dynamics/Body;->getUserData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idk/simple/Physicsbody;

    .line 78
    .local v2, "physicsbody1":Lcom/idk/simple/Physicsbody;
    iget-object v3, p0, Lcom/idk/simple/PhysicsInterface$1;->this$0:Lcom/idk/simple/PhysicsInterface;

    invoke-static {v3}, Lcom/idk/simple/PhysicsInterface;->access$100(Lcom/idk/simple/PhysicsInterface;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/simple/CollisionListener;

    .line 79
    .local v0, "listener":Lcom/idk/simple/CollisionListener;
    invoke-interface {v0, v1, v2}, Lcom/idk/simple/CollisionListener;->onExit(Lcom/idk/simple/Physicsbody;Lcom/idk/simple/Physicsbody;)V

    goto :goto_1e

    .line 81
    .end local v0    # "listener":Lcom/idk/simple/CollisionListener;
    :cond_2e
    return-void
.end method

.method public postSolve(Lorg/jbox2d/dynamics/contacts/Contact;Lorg/jbox2d/callbacks/ContactImpulse;)V
    .registers 3
    .param p1, "contact"    # Lorg/jbox2d/dynamics/contacts/Contact;
    .param p2, "contactImpulse"    # Lorg/jbox2d/callbacks/ContactImpulse;

    .prologue
    .line 85
    return-void
.end method

.method public preSolve(Lorg/jbox2d/dynamics/contacts/Contact;Lorg/jbox2d/collision/Manifold;)V
    .registers 3
    .param p1, "contact"    # Lorg/jbox2d/dynamics/contacts/Contact;
    .param p2, "manifold"    # Lorg/jbox2d/collision/Manifold;

    .prologue
    .line 83
    return-void
.end method

###### Class com.idk.simple.PhysicsInterface.AnonymousClass2 (com.idk.simple.PhysicsInterface$2)
.class Lcom/idk/simple/PhysicsInterface$2;
.super Ljava/lang/Object;
.source "PhysicsInterface.java"

# interfaces
.implements Lorg/jbox2d/callbacks/RayCastCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/simple/PhysicsInterface;->castRay(Lcom/idk/simple/Raycast;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/simple/PhysicsInterface;

.field final synthetic val$physicsbodies:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/idk/simple/PhysicsInterface;Ljava/util/Set;)V
    .registers 3
    .param p1, "this$0"    # Lcom/idk/simple/PhysicsInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 467
    iput-object p1, p0, Lcom/idk/simple/PhysicsInterface$2;->this$0:Lcom/idk/simple/PhysicsInterface;

    iput-object p2, p0, Lcom/idk/simple/PhysicsInterface$2;->val$physicsbodies:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportFixture(Lorg/jbox2d/dynamics/Fixture;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;F)F
    .registers 11
    .param p1, "fixture"    # Lorg/jbox2d/dynamics/Fixture;
    .param p2, "vec2"    # Lorg/jbox2d/common/Vec2;
    .param p3, "vec21"    # Lorg/jbox2d/common/Vec2;
    .param p4, "v"    # F

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    .line 470
    iget-object v1, p0, Lcom/idk/simple/PhysicsInterface$2;->val$physicsbodies:Ljava/util/Set;

    new-instance v2, Lcom/idk/simple/RaycastResult;

    invoke-virtual {p1}, Lorg/jbox2d/dynamics/Fixture;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/simple/Physicsbody;

    invoke-static {p2}, Lcom/idk/simple/PhysicsInterface;->to(Lorg/jbox2d/common/Vec2;)Lcom/idk/math/Vector2;

    move-result-object v3

    new-instance v4, Lcom/idk/math/Vector2;

    invoke-direct {v4, v5, v5}, Lcom/idk/math/Vector2;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/idk/math/Vector2;->mul(Lcom/idk/math/Vector2;)Lcom/idk/math/Vector2;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/idk/simple/RaycastResult;-><init>(Lcom/idk/simple/Physicsbody;Lcom/idk/math/Vector2;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 471
    const/4 v0, 0x0

    return v0
.end method

###### Class com.idk.simple.PhysicsInterface.OpenGLDebugDraw (com.idk.simple.PhysicsInterface$OpenGLDebugDraw)
.class Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;
.super Lorg/jbox2d/callbacks/DebugDraw;
.source "PhysicsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idk/simple/PhysicsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenGLDebugDraw"
.end annotation


# static fields
.field private static final CIRCLE_SEGMENTS:I = 0x10

.field private static final FRAGMENT_SHADER_CODE:Ljava/lang/String; = "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n    gl_FragColor = uColor;\n}"

.field private static final VERTEX_SHADER_CODE:Ljava/lang/String; = "attribute vec2 aPosition;\nuniform mat4 projection;\nuniform mat4 view;\nuniform mat4 mod;\nvoid main() {\nvec4 pos = vec4(aPosition, 0.0, 1.0) * vec4(100.0,100.0,1.0,1.0);\ngl_Position = projection * view * mod * pos;\n}"


# instance fields
.field private colorHandle:I

.field private mod:Lcom/idk/math/Matrix;

.field private modHandle:I

.field private positionHandle:I

.field private projectionHandle:I

.field private shaderProgram:I

.field final synthetic this$0:Lcom/idk/simple/PhysicsInterface;

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private viewHandle:I


# direct methods
.method private constructor <init>(Lcom/idk/simple/PhysicsInterface;Lorg/jbox2d/common/IViewportTransform;)V
    .registers 4
    .param p2, "viewport"    # Lorg/jbox2d/common/IViewportTransform;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->this$0:Lcom/idk/simple/PhysicsInterface;

    .line 160
    invoke-direct {p0, p2}, Lorg/jbox2d/callbacks/DebugDraw;-><init>(Lorg/jbox2d/common/IViewportTransform;)V

    .line 141
    new-instance v0, Lcom/idk/math/Matrix;

    invoke-direct {v0}, Lcom/idk/math/Matrix;-><init>()V

    iput-object v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->mod:Lcom/idk/math/Matrix;

    .line 161
    invoke-direct {p0}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->initShaders()V

    .line 162
    return-void
.end method

.method synthetic constructor <init>(Lcom/idk/simple/PhysicsInterface;Lorg/jbox2d/common/IViewportTransform;Lcom/idk/simple/PhysicsInterface$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/idk/simple/PhysicsInterface;
    .param p2, "x1"    # Lorg/jbox2d/common/IViewportTransform;
    .param p3, "x2"    # Lcom/idk/simple/PhysicsInterface$1;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;-><init>(Lcom/idk/simple/PhysicsInterface;Lorg/jbox2d/common/IViewportTransform;)V

    return-void
.end method

.method static synthetic access$200(Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;)V
    .registers 1
    .param p0, "x0"    # Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->useProgram()V

    return-void
.end method

.method static synthetic access$300(Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;)I
    .registers 2
    .param p0, "x0"    # Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;

    .prologue
    .line 132
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->viewHandle:I

    return v0
.end method

.method static synthetic access$400(Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;)I
    .registers 2
    .param p0, "x0"    # Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;

    .prologue
    .line 132
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->projectionHandle:I

    return v0
.end method

.method static synthetic access$500(Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;)I
    .registers 2
    .param p0, "x0"    # Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;

    .prologue
    .line 132
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->modHandle:I

    return v0
.end method

.method static synthetic access$600(Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;)Lcom/idk/math/Matrix;
    .registers 2
    .param p0, "x0"    # Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->mod:Lcom/idk/math/Matrix;

    return-object v0
.end method

.method private initShaders()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 165
    iget-object v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->mod:Lcom/idk/math/Matrix;

    invoke-virtual {v3}, Lcom/idk/math/Matrix;->reset()V

    .line 166
    const v3, 0x8b31

    const-string v4, "attribute vec2 aPosition;\nuniform mat4 projection;\nuniform mat4 view;\nuniform mat4 mod;\nvoid main() {\nvec4 pos = vec4(aPosition, 0.0, 1.0) * vec4(100.0,100.0,1.0,1.0);\ngl_Position = projection * view * mod * pos;\n}"

    invoke-direct {p0, v3, v4}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 167
    .local v2, "vertexShader":I
    const v3, 0x8b30

    const-string v4, "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n    gl_FragColor = uColor;\n}"

    invoke-direct {p0, v3, v4}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 168
    .local v0, "fragmentShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    .line 169
    iget v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 170
    iget v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 171
    iget v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 172
    new-array v1, v5, [I

    .line 173
    .local v1, "linkStatus":[I
    iget v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    const v4, 0x8b82

    invoke-static {v3, v4, v1, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 174
    aget v3, v1, v6

    if-eq v3, v5, :cond_61

    .line 175
    const-string v3, "OpenGLDebugDraw"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not link program: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 177
    iput v6, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    .line 180
    :cond_61
    iget v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    const-string v4, "aPosition"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->positionHandle:I

    .line 181
    iget v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    const-string v4, "uColor"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->colorHandle:I

    .line 182
    iget v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    const-string v4, "view"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->viewHandle:I

    .line 183
    iget v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    const-string v4, "projection"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->projectionHandle:I

    .line 184
    iget v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    const-string v4, "mod"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->modHandle:I

    .line 185
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 186
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 187
    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .registers 8
    .param p1, "type"    # I
    .param p2, "shaderCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 190
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 191
    .local v1, "shader":I
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 192
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 193
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 194
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 195
    aget v2, v0, v3

    if-nez v2, :cond_42

    .line 196
    const-string v2, "OpenGLDebugDraw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 198
    const/4 v1, 0x0

    .line 200
    :cond_42
    return v1
.end method

.method private setupVertexBuffer([F)V
    .registers 4
    .param p1, "vertices"    # [F

    .prologue
    .line 312
    iget-object v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->vertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_9

    .line 313
    iget-object v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 315
    :cond_9
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 316
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 318
    iget-object v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 319
    iget-object v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 320
    return-void
.end method

.method private useProgram()V
    .registers 2

    .prologue
    .line 204
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    if-eqz v0, :cond_9

    .line 205
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 207
    :cond_9
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    .line 327
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    if-eqz v0, :cond_c

    .line 328
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 329
    const/4 v0, 0x0

    iput v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    .line 331
    :cond_c
    return-void
.end method

.method public drawCircle(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Color3f;)V
    .registers 13
    .param p1, "center"    # Lorg/jbox2d/common/Vec2;
    .param p2, "radius"    # F
    .param p3, "color"    # Lorg/jbox2d/common/Color3f;

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->useProgram()V

    .line 245
    const/16 v0, 0x20

    new-array v8, v0, [F

    .line 246
    .local v8, "vertices":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_8
    const/16 v0, 0x10

    if-ge v6, v0, :cond_38

    .line 247
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v2, v6

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v2

    double-to-float v7, v0

    .line 248
    .local v7, "theta":F
    mul-int/lit8 v0, v6, 0x2

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    float-to-double v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    aput v1, v8, v0

    .line 249
    mul-int/lit8 v0, v6, 0x2

    add-int/lit8 v0, v0, 0x1

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    float-to-double v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    aput v1, v8, v0

    .line 246
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 251
    .end local v7    # "theta":F
    :cond_38
    invoke-direct {p0, v8}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->setupVertexBuffer([F)V

    .line 252
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->positionHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 253
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 254
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->colorHandle:I

    iget v1, p3, Lorg/jbox2d/common/Color3f;->x:F

    iget v2, p3, Lorg/jbox2d/common/Color3f;->y:F

    iget v3, p3, Lorg/jbox2d/common/Color3f;->z:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 255
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 256
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 257
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 258
    return-void
.end method

.method public drawPoint(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Color3f;)V
    .registers 13
    .param p1, "point"    # Lorg/jbox2d/common/Vec2;
    .param p2, "radiusOnScreen"    # F
    .param p3, "color"    # Lorg/jbox2d/common/Color3f;

    .prologue
    const/4 v8, 0x4

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 211
    invoke-direct {p0}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->useProgram()V

    .line 212
    const/16 v0, 0x8

    new-array v6, v0, [F

    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v0, p2

    aput v0, v6, v3

    const/4 v0, 0x1

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v2, p2

    aput v2, v6, v0

    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v0, p2

    aput v0, v6, v1

    const/4 v0, 0x3

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v2, p2

    aput v2, v6, v0

    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v0, p2

    aput v0, v6, v8

    const/4 v0, 0x5

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v2, p2

    aput v2, v6, v0

    const/4 v0, 0x6

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v2, p2

    aput v2, v6, v0

    const/4 v0, 0x7

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v2, p2

    aput v2, v6, v0

    .line 218
    .local v6, "vertices":[F
    invoke-direct {p0, v6}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->setupVertexBuffer([F)V

    .line 219
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->positionHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->vertexBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 220
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 221
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->colorHandle:I

    iget v2, p3, Lorg/jbox2d/common/Color3f;->x:F

    iget v4, p3, Lorg/jbox2d/common/Color3f;->y:F

    iget v5, p3, Lorg/jbox2d/common/Color3f;->z:F

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v4, v5, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 222
    invoke-static {v1, v3, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 223
    return-void
.end method

.method public drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V
    .registers 13
    .param p1, "p1"    # Lorg/jbox2d/common/Vec2;
    .param p2, "p2"    # Lorg/jbox2d/common/Vec2;
    .param p3, "color"    # Lorg/jbox2d/common/Color3f;

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 269
    invoke-direct {p0}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->useProgram()V

    .line 270
    const/4 v0, 0x4

    new-array v6, v0, [F

    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    aput v0, v6, v3

    iget v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    aput v0, v6, v8

    iget v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    aput v0, v6, v1

    const/4 v0, 0x3

    iget v2, p2, Lorg/jbox2d/common/Vec2;->y:F

    aput v2, v6, v0

    .line 271
    .local v6, "vertices":[F
    invoke-direct {p0, v6}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->setupVertexBuffer([F)V

    .line 272
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->positionHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->vertexBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 273
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 274
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->colorHandle:I

    iget v2, p3, Lorg/jbox2d/common/Color3f;->x:F

    iget v4, p3, Lorg/jbox2d/common/Color3f;->y:F

    iget v5, p3, Lorg/jbox2d/common/Color3f;->z:F

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v4, v5, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 275
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 276
    invoke-static {v8, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 277
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 278
    return-void
.end method

.method public drawSolidCircle(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V
    .registers 9
    .param p1, "center"    # Lorg/jbox2d/common/Vec2;
    .param p2, "radius"    # F
    .param p3, "axis"    # Lorg/jbox2d/common/Vec2;
    .param p4, "color"    # Lorg/jbox2d/common/Color3f;

    .prologue
    .line 262
    invoke-virtual {p0, p1, p2, p4}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->drawCircle(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Color3f;)V

    .line 263
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 264
    .local v0, "end":Lorg/jbox2d/common/Vec2;
    invoke-virtual {p0, p1, v0, p4}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->drawSegment(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Color3f;)V

    .line 265
    return-void
.end method

.method public drawSolidPolygon([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/common/Color3f;)V
    .registers 13
    .param p1, "vertices"    # [Lorg/jbox2d/common/Vec2;
    .param p2, "vertexCount"    # I
    .param p3, "color"    # Lorg/jbox2d/common/Color3f;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 227
    invoke-direct {p0}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->useProgram()V

    .line 228
    mul-int/lit8 v0, p2, 0x2

    new-array v7, v0, [F

    .line 229
    .local v7, "vertexData":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a
    if-ge v6, p2, :cond_21

    .line 230
    mul-int/lit8 v0, v6, 0x2

    aget-object v2, p1, v6

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    aput v2, v7, v0

    .line 231
    mul-int/lit8 v0, v6, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-object v2, p1, v6

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    aput v2, v7, v0

    .line 229
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 233
    :cond_21
    invoke-direct {p0, v7}, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->setupVertexBuffer([F)V

    .line 234
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->positionHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->vertexBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 235
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 236
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->colorHandle:I

    iget v2, p3, Lorg/jbox2d/common/Color3f;->x:F

    iget v4, p3, Lorg/jbox2d/common/Color3f;->y:F

    iget v5, p3, Lorg/jbox2d/common/Color3f;->z:F

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v4, v5, v8}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 237
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 238
    invoke-static {v1, v3, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 239
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 240
    return-void
.end method

.method public drawString(FFLjava/lang/String;Lorg/jbox2d/common/Color3f;)V
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "color"    # Lorg/jbox2d/common/Color3f;

    .prologue
    .line 303
    const-string v0, "OpenGLDebugDraw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text at ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method public drawTransform(Lorg/jbox2d/common/Transform;)V
    .registers 2
    .param p1, "xf"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 299
    return-void
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public getShaderProgram()I
    .registers 2

    .prologue
    .line 323
    iget v0, p0, Lcom/idk/simple/PhysicsInterface$OpenGLDebugDraw;->shaderProgram:I

    return v0
.end method

###### Class com.idk.simple.PhysicsInterface.StructUnitPhysic (com.idk.simple.PhysicsInterface$StructUnitPhysic)
.class Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;
.super Ljava/lang/Object;
.source "PhysicsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idk/simple/PhysicsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StructUnitPhysic"
.end annotation


# instance fields
.field body:Lorg/jbox2d/dynamics/Body;

.field fixture:Lorg/jbox2d/dynamics/Fixture;

.field final synthetic this$0:Lcom/idk/simple/PhysicsInterface;


# direct methods
.method private constructor <init>(Lcom/idk/simple/PhysicsInterface;)V
    .registers 2

    .prologue
    .line 490
    iput-object p1, p0, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;->this$0:Lcom/idk/simple/PhysicsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/idk/simple/PhysicsInterface;Lcom/idk/simple/PhysicsInterface$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/idk/simple/PhysicsInterface;
    .param p2, "x1"    # Lcom/idk/simple/PhysicsInterface$1;

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/idk/simple/PhysicsInterface$StructUnitPhysic;-><init>(Lcom/idk/simple/PhysicsInterface;)V

    return-void
.end method
