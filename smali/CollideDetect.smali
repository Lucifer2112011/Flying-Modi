###### Class defpackage.CollideDetect (CollideDetect)
.class public LCollideDetect;
.super Lcom/idk/core/ObjectModifier;
.source "CollideDetect.java"


# instance fields
.field private interfac:Lcom/idk/simple/PhysicsInterface;

.field public isCollide:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/idk/core/ObjectModifier;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 13
    iget-object v0, p0, LCollideDetect;->targetObject:Lcom/idk/core/GameObject;

    iget-object v0, v0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    const-class v1, Lcom/idk/simple/PhysicsInterface;

    invoke-virtual {v0, v1}, Lcom/idk/core/Scene;->getInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 14
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/simple/PhysicsInterface;

    iput-object v0, p0, LCollideDetect;->interfac:Lcom/idk/simple/PhysicsInterface;

    .line 16
    return-void
.end method

.method public onUpdate()V
    .registers 8

    .line 19
    new-instance v0, Lcom/idk/simple/Raycast;

    invoke-direct {v0}, Lcom/idk/simple/Raycast;-><init>()V

    .line 20
    iget-object v1, p0, LCollideDetect;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v1, v1, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/idk/simple/Raycast;->setStart(Lcom/idk/math/Vector2;)V

    .line 21
    new-instance v1, Lcom/idk/math/Vector2;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Lcom/idk/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/idk/simple/Raycast;->setEnd(Lcom/idk/math/Vector2;)V

    .line 23
    new-instance v1, Lcom/idk/simple/Raycast;

    invoke-direct {v1}, Lcom/idk/simple/Raycast;-><init>()V

    .line 24
    iget-object v4, p0, LCollideDetect;->targetObject:Lcom/idk/core/GameObject;

    iget-object v4, v4, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v4, v4, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    invoke-virtual {v1, v4}, Lcom/idk/simple/Raycast;->setStart(Lcom/idk/math/Vector2;)V

    .line 25
    new-instance v4, Lcom/idk/math/Vector2;

    invoke-direct {v4, v2, v3}, Lcom/idk/math/Vector2;-><init>(FF)V

    invoke-virtual {v1, v4}, Lcom/idk/simple/Raycast;->setEnd(Lcom/idk/math/Vector2;)V

    .line 27
    new-instance v4, Lcom/idk/simple/Raycast;

    invoke-direct {v4}, Lcom/idk/simple/Raycast;-><init>()V

    .line 28
    iget-object v5, p0, LCollideDetect;->targetObject:Lcom/idk/core/GameObject;

    iget-object v5, v5, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v5, v5, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/idk/simple/Raycast;->setStart(Lcom/idk/math/Vector2;)V

    .line 29
    new-instance v5, Lcom/idk/math/Vector2;

    invoke-direct {v5, v2, v3}, Lcom/idk/math/Vector2;-><init>(FF)V

    invoke-virtual {v4, v5}, Lcom/idk/simple/Raycast;->setEnd(Lcom/idk/math/Vector2;)V

    .line 31
    new-instance v5, Lcom/idk/simple/Raycast;

    invoke-direct {v5}, Lcom/idk/simple/Raycast;-><init>()V

    .line 32
    iget-object v6, p0, LCollideDetect;->targetObject:Lcom/idk/core/GameObject;

    iget-object v6, v6, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v6, v6, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    invoke-virtual {v5, v6}, Lcom/idk/simple/Raycast;->setStart(Lcom/idk/math/Vector2;)V

    .line 33
    new-instance v6, Lcom/idk/math/Vector2;

    invoke-direct {v6, v2, v3}, Lcom/idk/math/Vector2;-><init>(FF)V

    invoke-virtual {v5, v6}, Lcom/idk/simple/Raycast;->setEnd(Lcom/idk/math/Vector2;)V

    .line 35
    iget-object v2, p0, LCollideDetect;->interfac:Lcom/idk/simple/PhysicsInterface;

    invoke-virtual {v2, v0}, Lcom/idk/simple/PhysicsInterface;->castRay(Lcom/idk/simple/Raycast;)Ljava/util/Set;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_6a

    .line 37
    iput-boolean v2, p0, LCollideDetect;->isCollide:Z

    .line 40
    :cond_6a
    iget-object v0, p0, LCollideDetect;->interfac:Lcom/idk/simple/PhysicsInterface;

    invoke-virtual {v0, v1}, Lcom/idk/simple/PhysicsInterface;->castRay(Lcom/idk/simple/Raycast;)Ljava/util/Set;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_78

    .line 42
    iput-boolean v2, p0, LCollideDetect;->isCollide:Z

    .line 45
    :cond_78
    iget-object v0, p0, LCollideDetect;->interfac:Lcom/idk/simple/PhysicsInterface;

    invoke-virtual {v0, v4}, Lcom/idk/simple/PhysicsInterface;->castRay(Lcom/idk/simple/Raycast;)Ljava/util/Set;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_86

    .line 47
    iput-boolean v2, p0, LCollideDetect;->isCollide:Z

    .line 50
    :cond_86
    iget-object v0, p0, LCollideDetect;->interfac:Lcom/idk/simple/PhysicsInterface;

    invoke-virtual {v0, v5}, Lcom/idk/simple/PhysicsInterface;->castRay(Lcom/idk/simple/Raycast;)Ljava/util/Set;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_94

    .line 52
    iput-boolean v2, p0, LCollideDetect;->isCollide:Z

    .line 57
    :cond_94
    return-void
.end method
