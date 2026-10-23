###### Class com.idk.simple.Physicsbody (com.idk.simple.Physicsbody)
.class public Lcom/idk/simple/Physicsbody;
.super Lcom/idk/core/ObjectModifier;
.source "Physicsbody.java"


# instance fields
.field private physicsInterface:Lcom/idk/simple/PhysicsInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/idk/core/ObjectModifier;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableInterface()Lcom/idk/simple/PhysicsInterface;
    .registers 4

    .prologue
    .line 10
    iget-object v1, p0, Lcom/idk/simple/Physicsbody;->physicsInterface:Lcom/idk/simple/PhysicsInterface;

    if-nez v1, :cond_1d

    .line 11
    iget-object v1, p0, Lcom/idk/simple/Physicsbody;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    const-class v2, Lcom/idk/simple/PhysicsInterface;

    invoke-virtual {v1, v2}, Lcom/idk/core/Scene;->getInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 12
    .local v0, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/idk/simple/PhysicsInterface;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 13
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idk/simple/PhysicsInterface;

    iput-object v1, p0, Lcom/idk/simple/Physicsbody;->physicsInterface:Lcom/idk/simple/PhysicsInterface;

    .line 16
    .end local v0    # "ls":Ljava/util/List;, "Ljava/util/List<Lcom/idk/simple/PhysicsInterface;>;"
    :cond_1d
    iget-object v1, p0, Lcom/idk/simple/Physicsbody;->physicsInterface:Lcom/idk/simple/PhysicsInterface;

    return-object v1
.end method

.method public getCollisionList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/idk/simple/Physicsbody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/idk/simple/Physicsbody;->getAvailableInterface()Lcom/idk/simple/PhysicsInterface;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/idk/simple/Rigidbody;

    if-ne v0, v1, :cond_17

    .line 23
    iget-object v0, p0, Lcom/idk/simple/Physicsbody;->physicsInterface:Lcom/idk/simple/PhysicsInterface;

    check-cast p0, Lcom/idk/simple/Rigidbody;

    .end local p0    # "this":Lcom/idk/simple/Physicsbody;
    invoke-virtual {v0, p0}, Lcom/idk/simple/PhysicsInterface;->getCollisionList(Lcom/idk/simple/Rigidbody;)Ljava/util/List;

    move-result-object v0

    .line 29
    .restart local p0    # "this":Lcom/idk/simple/Physicsbody;
    :goto_16
    return-object v0

    .line 25
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/idk/simple/Staticbody;

    if-ne v0, v1, :cond_28

    .line 26
    iget-object v0, p0, Lcom/idk/simple/Physicsbody;->physicsInterface:Lcom/idk/simple/PhysicsInterface;

    check-cast p0, Lcom/idk/simple/Staticbody;

    .end local p0    # "this":Lcom/idk/simple/Physicsbody;
    invoke-virtual {v0, p0}, Lcom/idk/simple/PhysicsInterface;->getCollisionList(Lcom/idk/simple/Staticbody;)Ljava/util/List;

    move-result-object v0

    goto :goto_16

    .line 29
    .restart local p0    # "this":Lcom/idk/simple/Physicsbody;
    :cond_28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_16
.end method
