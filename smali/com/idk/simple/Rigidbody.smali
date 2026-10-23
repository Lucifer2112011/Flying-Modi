###### Class com.idk.simple.Rigidbody (com.idk.simple.Rigidbody)
.class public Lcom/idk/simple/Rigidbody;
.super Lcom/idk/simple/Physicsbody;
.source "Rigidbody.java"


# annotations
.annotation runtime Lcom/idk/core/Tag;
    value = "editable"
.end annotation


# instance fields
.field private calculatePhysics:Z
    .annotation runtime Lcom/idk/parser/ForceEditor;
    .end annotation
.end field

.field private lastSize:Lcom/idk/math/Vector2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/idk/simple/Physicsbody;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idk/simple/Rigidbody;->calculatePhysics:Z

    .line 12
    new-instance v0, Lcom/idk/math/Vector2;

    invoke-direct {v0}, Lcom/idk/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/idk/simple/Rigidbody;->lastSize:Lcom/idk/math/Vector2;

    return-void
.end method


# virtual methods
.method public applyForce(Lcom/idk/math/Vector2;)V
    .registers 3
    .param p1, "vector2"    # Lcom/idk/math/Vector2;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/idk/simple/Rigidbody;->getAvailableInterface()Lcom/idk/simple/PhysicsInterface;

    move-result-object v0

    .line 49
    .local v0, "physicsInterface":Lcom/idk/simple/PhysicsInterface;
    if-eqz v0, :cond_9

    .line 50
    invoke-virtual {v0, p0, p1}, Lcom/idk/simple/PhysicsInterface;->addForce(Lcom/idk/simple/Rigidbody;Lcom/idk/math/Vector2;)V

    .line 52
    :cond_9
    return-void
.end method

.method public getLinearVelocity()Lcom/idk/math/Vector2;
    .registers 3

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/idk/simple/Rigidbody;->getAvailableInterface()Lcom/idk/simple/PhysicsInterface;

    move-result-object v0

    .line 55
    .local v0, "physicsInterface":Lcom/idk/simple/PhysicsInterface;
    if-eqz v0, :cond_b

    .line 56
    invoke-virtual {v0, p0}, Lcom/idk/simple/PhysicsInterface;->getLinearVelocity(Lcom/idk/simple/Rigidbody;)Lcom/idk/math/Vector2;

    move-result-object v1

    .line 58
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 15
    invoke-super {p0}, Lcom/idk/simple/Physicsbody;->onCreate()V

    .line 16
    invoke-virtual {p0}, Lcom/idk/simple/Rigidbody;->getAvailableInterface()Lcom/idk/simple/PhysicsInterface;

    move-result-object v0

    .line 17
    .local v0, "physicsInterface":Lcom/idk/simple/PhysicsInterface;
    if-eqz v0, :cond_c

    .line 18
    invoke-virtual {v0, p0}, Lcom/idk/simple/PhysicsInterface;->addRigidbody(Lcom/idk/simple/Rigidbody;)V

    .line 20
    :cond_c
    return-void
.end method

.method public onDelete()V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/idk/simple/Physicsbody;->onDelete()V

    .line 42
    invoke-virtual {p0}, Lcom/idk/simple/Rigidbody;->getAvailableInterface()Lcom/idk/simple/PhysicsInterface;

    move-result-object v0

    .line 43
    .local v0, "physicsInterface":Lcom/idk/simple/PhysicsInterface;
    if-eqz v0, :cond_c

    .line 44
    invoke-virtual {v0, p0}, Lcom/idk/simple/PhysicsInterface;->removeRigidbody(Lcom/idk/simple/Rigidbody;)V

    .line 46
    :cond_c
    return-void
.end method

.method public onPostUpdate()V
    .registers 4

    .prologue
    .line 29
    invoke-super {p0}, Lcom/idk/simple/Physicsbody;->onPostUpdate()V

    .line 30
    invoke-virtual {p0}, Lcom/idk/simple/Rigidbody;->getAvailableInterface()Lcom/idk/simple/PhysicsInterface;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/idk/simple/Rigidbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v0, v0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v0, v0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    const-string v1, "edit_mode"

    invoke-interface {v0, v1}, Lcom/idk/core/EngineInterface;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 37
    :cond_17
    :goto_17
    return-void

    .line 33
    :cond_18
    iget-object v0, p0, Lcom/idk/simple/Rigidbody;->lastSize:Lcom/idk/math/Vector2;

    iget v0, v0, Lcom/idk/math/Vector2;->x:F

    iget-object v1, p0, Lcom/idk/simple/Rigidbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v1, v1, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v1, v1, Lcom/idk/math/Vector2;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/idk/simple/Rigidbody;->lastSize:Lcom/idk/math/Vector2;

    iget v0, v0, Lcom/idk/math/Vector2;->y:F

    iget-object v1, p0, Lcom/idk/simple/Rigidbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v1, v1, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v1, v1, Lcom/idk/math/Vector2;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17

    .line 34
    :cond_38
    iget-object v0, p0, Lcom/idk/simple/Rigidbody;->lastSize:Lcom/idk/math/Vector2;

    iget-object v1, p0, Lcom/idk/simple/Rigidbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v1, v1, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v1, v1, Lcom/idk/math/Vector2;->x:F

    iget-object v2, p0, Lcom/idk/simple/Rigidbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v2, v2, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v2, v2, Lcom/idk/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/idk/math/Vector2;->set(FF)V

    .line 35
    invoke-virtual {p0}, Lcom/idk/simple/Rigidbody;->getAvailableInterface()Lcom/idk/simple/PhysicsInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/idk/simple/PhysicsInterface;->updateRigidbodySize(Lcom/idk/simple/Rigidbody;)V

    goto :goto_17
.end method

.method public onPreUpdate()V
    .registers 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/idk/simple/Physicsbody;->onPreUpdate()V

    .line 25
    return-void
.end method
