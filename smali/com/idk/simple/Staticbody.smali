###### Class com.idk.simple.Staticbody (com.idk.simple.Staticbody)
.class public Lcom/idk/simple/Staticbody;
.super Lcom/idk/simple/Physicsbody;
.source "Staticbody.java"


# annotations
.annotation runtime Lcom/idk/core/Tag;
    value = "editable"
.end annotation


# instance fields
.field public isGhost:Z

.field private lastSize:Lcom/idk/math/Vector2;

.field private physicsInterface:Lcom/idk/simple/PhysicsInterface;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/idk/simple/Physicsbody;-><init>()V

    .line 9
    new-instance v0, Lcom/idk/math/Vector2;

    invoke-direct {v0}, Lcom/idk/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/idk/simple/Staticbody;->lastSize:Lcom/idk/math/Vector2;

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idk/simple/Staticbody;->isGhost:Z

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 4

    .prologue
    .line 13
    invoke-super {p0}, Lcom/idk/simple/Physicsbody;->onCreate()V

    .line 14
    invoke-virtual {p0}, Lcom/idk/simple/Staticbody;->getAvailableInterface()Lcom/idk/simple/PhysicsInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/idk/simple/Staticbody;->physicsInterface:Lcom/idk/simple/PhysicsInterface;

    .line 15
    iget-object v0, p0, Lcom/idk/simple/Staticbody;->physicsInterface:Lcom/idk/simple/PhysicsInterface;

    if-nez v0, :cond_e

    .line 20
    :goto_d
    return-void

    .line 18
    :cond_e
    iget-object v0, p0, Lcom/idk/simple/Staticbody;->physicsInterface:Lcom/idk/simple/PhysicsInterface;

    invoke-virtual {v0, p0}, Lcom/idk/simple/PhysicsInterface;->addStaticbody(Lcom/idk/simple/Staticbody;)V

    .line 19
    iget-object v0, p0, Lcom/idk/simple/Staticbody;->lastSize:Lcom/idk/math/Vector2;

    iget-object v1, p0, Lcom/idk/simple/Staticbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v1, v1, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v1, v1, Lcom/idk/math/Vector2;->x:F

    iget-object v2, p0, Lcom/idk/simple/Staticbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v2, v2, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v2, v2, Lcom/idk/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/idk/math/Vector2;->set(FF)V

    goto :goto_d
.end method

.method public onDelete()V
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/idk/simple/Physicsbody;->onDelete()V

    .line 37
    iget-object v0, p0, Lcom/idk/simple/Staticbody;->physicsInterface:Lcom/idk/simple/PhysicsInterface;

    if-nez v0, :cond_8

    .line 41
    :goto_7
    return-void

    .line 40
    :cond_8
    iget-object v0, p0, Lcom/idk/simple/Staticbody;->physicsInterface:Lcom/idk/simple/PhysicsInterface;

    invoke-virtual {v0, p0}, Lcom/idk/simple/PhysicsInterface;->removeStaticbody(Lcom/idk/simple/Staticbody;)V

    goto :goto_7
.end method

.method public onPostUpdate()V
    .registers 4

    .prologue
    .line 23
    invoke-super {p0}, Lcom/idk/simple/Physicsbody;->onPostUpdate()V

    .line 24
    iget-object v0, p0, Lcom/idk/simple/Staticbody;->physicsInterface:Lcom/idk/simple/PhysicsInterface;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/idk/simple/Staticbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v0, v0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v0, v0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    const-string v1, "edit_mode"

    invoke-interface {v0, v1}, Lcom/idk/core/EngineInterface;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 31
    :cond_15
    :goto_15
    return-void

    .line 27
    :cond_16
    iget-object v0, p0, Lcom/idk/simple/Staticbody;->lastSize:Lcom/idk/math/Vector2;

    iget v0, v0, Lcom/idk/math/Vector2;->x:F

    iget-object v1, p0, Lcom/idk/simple/Staticbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v1, v1, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v1, v1, Lcom/idk/math/Vector2;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/idk/simple/Staticbody;->lastSize:Lcom/idk/math/Vector2;

    iget v0, v0, Lcom/idk/math/Vector2;->y:F

    iget-object v1, p0, Lcom/idk/simple/Staticbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v1, v1, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v1, v1, Lcom/idk/math/Vector2;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    .line 28
    :cond_36
    iget-object v0, p0, Lcom/idk/simple/Staticbody;->lastSize:Lcom/idk/math/Vector2;

    iget-object v1, p0, Lcom/idk/simple/Staticbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v1, v1, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v1, v1, Lcom/idk/math/Vector2;->x:F

    iget-object v2, p0, Lcom/idk/simple/Staticbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v2, v2, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v2, v2, Lcom/idk/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/idk/math/Vector2;->set(FF)V

    .line 29
    iget-object v0, p0, Lcom/idk/simple/Staticbody;->physicsInterface:Lcom/idk/simple/PhysicsInterface;

    invoke-virtual {v0, p0}, Lcom/idk/simple/PhysicsInterface;->updateStaticbodySize(Lcom/idk/simple/Staticbody;)V

    goto :goto_15
.end method
