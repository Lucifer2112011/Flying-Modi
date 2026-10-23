###### Class com.idk.core.Scene (com.idk.core.Scene)
.class public final Lcom/idk/core/Scene;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public active:Z

.field private interfaces:Ljava/util/List;
    .annotation runtime Lcom/idk/parser/Save;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/idk/core/SceneInterface;",
            ">;"
        }
    .end annotation
.end field

.field private objects:Ljava/util/List;
    .annotation runtime Lcom/idk/parser/Save;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/idk/core/GameObject;",
            ">;"
        }
    .end annotation
.end field

.field public targetInstance:Lcom/idk/core/EngineInterface;
    .annotation runtime Lcom/idk/parser/Ignore;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idk/core/Scene;->objects:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idk/core/Scene;->interfaces:Ljava/util/List;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/idk/core/Scene;->active:Z

    return-void
.end method

.method static synthetic access$000(Lcom/idk/core/Scene;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/idk/core/Scene;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/idk/core/Scene;->objects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/idk/core/Scene;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/idk/core/Scene;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/idk/core/Scene;->interfaces:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getInterfaceArray()[Lcom/idk/core/SceneInterface;
    .registers 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/idk/core/Scene;->interfaces:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/idk/core/SceneInterface;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idk/core/SceneInterface;

    return-object v0
.end method

.method public getInterfaces(Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/idk/core/SceneInterface;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v1, "output":Ljava/util/List;, "Ljava/util/List<Lcom/idk/core/SceneInterface;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v3, p0, Lcom/idk/core/Scene;->interfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 28
    iget-object v3, p0, Lcom/idk/core/Scene;->interfaces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idk/core/SceneInterface;

    .line 29
    .local v2, "sceneInterface":Lcom/idk/core/SceneInterface;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_1f

    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 33
    .end local v2    # "sceneInterface":Lcom/idk/core/SceneInterface;
    :cond_22
    return-object v1
.end method

.method public getObjectArray()[Lcom/idk/core/GameObject;
    .registers 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/idk/core/Scene;->objects:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/idk/core/GameObject;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idk/core/GameObject;

    return-object v0
.end method

.method public getObjectAt(I)Lcom/idk/core/GameObject;
    .registers 3
    .param p1, "idx"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/idk/core/Scene;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/core/GameObject;

    return-object v0
.end method

.method public getObjectCount()I
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/idk/core/Scene;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public insertInterface(Lcom/idk/core/SceneInterface;)V
    .registers 4
    .param p1, "object"    # Lcom/idk/core/SceneInterface;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/idk/core/Scene;->interfaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 70
    iget-object v0, p0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    if-eqz v0, :cond_17

    .line 71
    iget-object v0, p0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    new-instance v1, Lcom/idk/core/Scene$2;

    invoke-direct {v1, p0, p1}, Lcom/idk/core/Scene$2;-><init>(Lcom/idk/core/Scene;Lcom/idk/core/SceneInterface;)V

    invoke-interface {v0, v1}, Lcom/idk/core/EngineInterface;->addFrameEndTask(Ljava/lang/Runnable;)V

    .line 88
    :cond_16
    :goto_16
    return-void

    .line 85
    :cond_17
    iget-object v0, p0, Lcom/idk/core/Scene;->interfaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method public insertObject(Lcom/idk/core/GameObject;)V
    .registers 4
    .param p1, "object"    # Lcom/idk/core/GameObject;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/idk/core/Scene;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 43
    iget-object v0, p0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    if-eqz v0, :cond_17

    .line 44
    iget-object v0, p0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    new-instance v1, Lcom/idk/core/Scene$1;

    invoke-direct {v1, p0, p1}, Lcom/idk/core/Scene$1;-><init>(Lcom/idk/core/Scene;Lcom/idk/core/GameObject;)V

    invoke-interface {v0, v1}, Lcom/idk/core/EngineInterface;->addFrameEndTask(Ljava/lang/Runnable;)V

    .line 66
    :cond_16
    :goto_16
    return-void

    .line 63
    :cond_17
    iget-object v0, p0, Lcom/idk/core/Scene;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method public removeAllInterface()V
    .registers 1

    .prologue
    .line 146
    return-void
.end method

.method public removeAllObject()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    if-eqz v0, :cond_f

    .line 129
    iget-object v0, p0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    new-instance v1, Lcom/idk/core/Scene$5;

    invoke-direct {v1, p0}, Lcom/idk/core/Scene$5;-><init>(Lcom/idk/core/Scene;)V

    invoke-interface {v0, v1}, Lcom/idk/core/EngineInterface;->addFrameEndTask(Ljava/lang/Runnable;)V

    .line 143
    :goto_e
    return-void

    .line 141
    :cond_f
    iget-object v0, p0, Lcom/idk/core/Scene;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_e
.end method

.method public removeInterface(Lcom/idk/core/SceneInterface;)V
    .registers 4
    .param p1, "object"    # Lcom/idk/core/SceneInterface;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/idk/core/Scene;->interfaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 125
    :goto_8
    return-void

    .line 114
    :cond_9
    iget-object v0, p0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    if-eqz v0, :cond_18

    .line 115
    iget-object v0, p0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    new-instance v1, Lcom/idk/core/Scene$4;

    invoke-direct {v1, p0, p1}, Lcom/idk/core/Scene$4;-><init>(Lcom/idk/core/Scene;Lcom/idk/core/SceneInterface;)V

    invoke-interface {v0, v1}, Lcom/idk/core/EngineInterface;->addFrameEndTask(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 123
    :cond_18
    iget-object v0, p0, Lcom/idk/core/Scene;->interfaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public removeObject(Lcom/idk/core/GameObject;)V
    .registers 4
    .param p1, "object"    # Lcom/idk/core/GameObject;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/idk/core/Scene;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 108
    :goto_8
    return-void

    .line 94
    :cond_9
    iget-object v0, p0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    if-eqz v0, :cond_18

    .line 95
    iget-object v0, p0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    new-instance v1, Lcom/idk/core/Scene$3;

    invoke-direct {v1, p0, p1}, Lcom/idk/core/Scene$3;-><init>(Lcom/idk/core/Scene;Lcom/idk/core/GameObject;)V

    invoke-interface {v0, v1}, Lcom/idk/core/EngineInterface;->addFrameEndTask(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 106
    :cond_18
    iget-object v0, p0, Lcom/idk/core/Scene;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_8
.end method

###### Class com.idk.core.Scene.AnonymousClass1 (com.idk.core.Scene$1)
.class Lcom/idk/core/Scene$1;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/core/Scene;->insertObject(Lcom/idk/core/GameObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/Scene;

.field final synthetic val$object:Lcom/idk/core/GameObject;


# direct methods
.method constructor <init>(Lcom/idk/core/Scene;Lcom/idk/core/GameObject;)V
    .registers 3
    .param p1, "this$0"    # Lcom/idk/core/Scene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/idk/core/Scene$1;->this$0:Lcom/idk/core/Scene;

    iput-object p2, p0, Lcom/idk/core/Scene$1;->val$object:Lcom/idk/core/GameObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 47
    iget-object v3, p0, Lcom/idk/core/Scene$1;->this$0:Lcom/idk/core/Scene;

    invoke-static {v3}, Lcom/idk/core/Scene;->access$000(Lcom/idk/core/Scene;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/idk/core/Scene$1;->val$object:Lcom/idk/core/GameObject;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v3, p0, Lcom/idk/core/Scene$1;->val$object:Lcom/idk/core/GameObject;

    iget-object v4, p0, Lcom/idk/core/Scene$1;->this$0:Lcom/idk/core/Scene;

    iput-object v4, v3, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    .line 49
    iget-object v3, p0, Lcom/idk/core/Scene$1;->val$object:Lcom/idk/core/GameObject;

    invoke-virtual {v3}, Lcom/idk/core/GameObject;->getModifierArray()[Lcom/idk/core/ObjectModifier;

    move-result-object v0

    .line 50
    .local v0, "array":[Lcom/idk/core/ObjectModifier;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    array-length v3, v0

    if-ge v2, v3, :cond_2a

    .line 52
    :try_start_1b
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/idk/core/ObjectModifier;->onCreate()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_23

    .line 50
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 53
    :catch_23
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_20

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    array-length v3, v0

    if-ge v2, v3, :cond_3d

    .line 57
    :try_start_2e
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/idk/core/ObjectModifier;->onStart()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_36

    .line 55
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 58
    :catch_36
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_33

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3d
    return-void
.end method

###### Class com.idk.core.Scene.AnonymousClass2 (com.idk.core.Scene$2)
.class Lcom/idk/core/Scene$2;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/core/Scene;->insertInterface(Lcom/idk/core/SceneInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/Scene;

.field final synthetic val$object:Lcom/idk/core/SceneInterface;


# direct methods
.method constructor <init>(Lcom/idk/core/Scene;Lcom/idk/core/SceneInterface;)V
    .registers 3
    .param p1, "this$0"    # Lcom/idk/core/Scene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lcom/idk/core/Scene$2;->this$0:Lcom/idk/core/Scene;

    iput-object p2, p0, Lcom/idk/core/Scene$2;->val$object:Lcom/idk/core/SceneInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 74
    iget-object v1, p0, Lcom/idk/core/Scene$2;->val$object:Lcom/idk/core/SceneInterface;

    iget-object v2, p0, Lcom/idk/core/Scene$2;->this$0:Lcom/idk/core/Scene;

    iput-object v2, v1, Lcom/idk/core/SceneInterface;->targetScene:Lcom/idk/core/Scene;

    .line 75
    iget-object v1, p0, Lcom/idk/core/Scene$2;->this$0:Lcom/idk/core/Scene;

    invoke-static {v1}, Lcom/idk/core/Scene;->access$100(Lcom/idk/core/Scene;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/idk/core/Scene$2;->val$object:Lcom/idk/core/SceneInterface;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :try_start_11
    iget-object v1, p0, Lcom/idk/core/Scene$2;->val$object:Lcom/idk/core/SceneInterface;

    invoke-virtual {v1}, Lcom/idk/core/SceneInterface;->onCreate()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_1c

    .line 80
    :goto_16
    :try_start_16
    iget-object v1, p0, Lcom/idk/core/Scene$2;->val$object:Lcom/idk/core/SceneInterface;

    invoke-virtual {v1}, Lcom/idk/core/SceneInterface;->onStart()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_23

    .line 82
    :goto_1b
    return-void

    .line 78
    :catch_1c
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_16

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_23
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1b
.end method

###### Class com.idk.core.Scene.AnonymousClass3 (com.idk.core.Scene$3)
.class Lcom/idk/core/Scene$3;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/core/Scene;->removeObject(Lcom/idk/core/GameObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/Scene;

.field final synthetic val$object:Lcom/idk/core/GameObject;


# direct methods
.method constructor <init>(Lcom/idk/core/Scene;Lcom/idk/core/GameObject;)V
    .registers 3
    .param p1, "this$0"    # Lcom/idk/core/Scene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Lcom/idk/core/Scene$3;->this$0:Lcom/idk/core/Scene;

    iput-object p2, p0, Lcom/idk/core/Scene$3;->val$object:Lcom/idk/core/GameObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 98
    iget-object v2, p0, Lcom/idk/core/Scene$3;->val$object:Lcom/idk/core/GameObject;

    invoke-virtual {v2}, Lcom/idk/core/GameObject;->getModifierArray()[Lcom/idk/core/ObjectModifier;

    move-result-object v0

    .line 99
    .local v0, "array":[Lcom/idk/core/ObjectModifier;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_12

    .line 100
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/idk/core/ObjectModifier;->onDelete()V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 102
    :cond_12
    iget-object v2, p0, Lcom/idk/core/Scene$3;->this$0:Lcom/idk/core/Scene;

    invoke-static {v2}, Lcom/idk/core/Scene;->access$000(Lcom/idk/core/Scene;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/idk/core/Scene$3;->val$object:Lcom/idk/core/GameObject;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

###### Class com.idk.core.Scene.AnonymousClass4 (com.idk.core.Scene$4)
.class Lcom/idk/core/Scene$4;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/core/Scene;->removeInterface(Lcom/idk/core/SceneInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/Scene;

.field final synthetic val$object:Lcom/idk/core/SceneInterface;


# direct methods
.method constructor <init>(Lcom/idk/core/Scene;Lcom/idk/core/SceneInterface;)V
    .registers 3
    .param p1, "this$0"    # Lcom/idk/core/Scene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lcom/idk/core/Scene$4;->this$0:Lcom/idk/core/Scene;

    iput-object p2, p0, Lcom/idk/core/Scene$4;->val$object:Lcom/idk/core/SceneInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/idk/core/Scene$4;->val$object:Lcom/idk/core/SceneInterface;

    invoke-virtual {v0}, Lcom/idk/core/SceneInterface;->onDelete()V

    .line 119
    iget-object v0, p0, Lcom/idk/core/Scene$4;->this$0:Lcom/idk/core/Scene;

    invoke-static {v0}, Lcom/idk/core/Scene;->access$100(Lcom/idk/core/Scene;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/idk/core/Scene$4;->val$object:Lcom/idk/core/SceneInterface;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

###### Class com.idk.core.Scene.AnonymousClass5 (com.idk.core.Scene$5)
.class Lcom/idk/core/Scene$5;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/core/Scene;->removeAllObject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/Scene;


# direct methods
.method constructor <init>(Lcom/idk/core/Scene;)V
    .registers 2
    .param p1, "this$0"    # Lcom/idk/core/Scene;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/idk/core/Scene$5;->this$0:Lcom/idk/core/Scene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 132
    iget-object v3, p0, Lcom/idk/core/Scene$5;->this$0:Lcom/idk/core/Scene;

    invoke-static {v3}, Lcom/idk/core/Scene;->access$000(Lcom/idk/core/Scene;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idk/core/GameObject;

    .line 133
    .local v2, "object":Lcom/idk/core/GameObject;
    invoke-virtual {v2}, Lcom/idk/core/GameObject;->getModifierArray()[Lcom/idk/core/ObjectModifier;

    move-result-object v0

    .line 134
    .local v0, "array":[Lcom/idk/core/ObjectModifier;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    array-length v4, v0

    if-ge v1, v4, :cond_a

    .line 135
    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/idk/core/ObjectModifier;->onDelete()V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 138
    .end local v0    # "array":[Lcom/idk/core/ObjectModifier;
    .end local v1    # "i":I
    .end local v2    # "object":Lcom/idk/core/GameObject;
    :cond_26
    return-void
.end method
