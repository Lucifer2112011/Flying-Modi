###### Class com.idk.core.GameObject (com.idk.core.GameObject)
.class public final Lcom/idk/core/GameObject;
.super Ljava/lang/Object;
.source "GameObject.java"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public active:Z

.field public name:Ljava/lang/String;

.field private objectModifiers:Ljava/util/List;
    .annotation runtime Lcom/idk/parser/Save;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/idk/core/ObjectModifier;",
            ">;"
        }
    .end annotation
.end field

.field public targetScene:Lcom/idk/core/Scene;
    .annotation runtime Lcom/idk/parser/Ignore;
    .end annotation
.end field

.field public transform:Lcom/idk/math/Transform2D;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/idk/core/GameObject;->active:Z

    .line 14
    const-string v0, "Default"

    iput-object v0, p0, Lcom/idk/core/GameObject;->name:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idk/core/GameObject;->objectModifiers:Ljava/util/List;

    .line 19
    new-instance v0, Lcom/idk/math/Transform2D;

    invoke-direct {v0}, Lcom/idk/math/Transform2D;-><init>()V

    iput-object v0, p0, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/idk/core/GameObject;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/idk/core/GameObject;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/idk/core/GameObject;->objectModifiers:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addModifier(Lcom/idk/core/ObjectModifier;)V
    .registers 4
    .param p1, "att"    # Lcom/idk/core/ObjectModifier;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/idk/core/GameObject;->objectModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 43
    iput-object p0, p1, Lcom/idk/core/ObjectModifier;->targetObject:Lcom/idk/core/GameObject;

    .line 44
    iget-object v0, p0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v0, v0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    if-eqz v0, :cond_21

    .line 45
    iget-object v0, p0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v0, v0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    new-instance v1, Lcom/idk/core/GameObject$2;

    invoke-direct {v1, p0, p1}, Lcom/idk/core/GameObject$2;-><init>(Lcom/idk/core/GameObject;Lcom/idk/core/ObjectModifier;)V

    invoke-interface {v0, v1}, Lcom/idk/core/EngineInterface;->addFrameEndTask(Ljava/lang/Runnable;)V

    .line 57
    :cond_20
    :goto_20
    return-void

    .line 54
    :cond_21
    iget-object v0, p0, Lcom/idk/core/GameObject;->objectModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20
.end method

.method public clearAllModifier()V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v0, v0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    if-eqz v0, :cond_17

    .line 60
    iget-object v0, p0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v0, v0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    new-instance v1, Lcom/idk/core/GameObject$3;

    invoke-direct {v1, p0}, Lcom/idk/core/GameObject$3;-><init>(Lcom/idk/core/GameObject;)V

    invoke-interface {v0, v1}, Lcom/idk/core/EngineInterface;->addFrameEndTask(Ljava/lang/Runnable;)V

    .line 73
    :goto_16
    return-void

    .line 71
    :cond_17
    iget-object v0, p0, Lcom/idk/core/GameObject;->objectModifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_16
.end method

.method public delete()V
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    if-nez v0, :cond_5

    .line 114
    :goto_4
    return-void

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    invoke-virtual {v0, p0}, Lcom/idk/core/Scene;->removeObject(Lcom/idk/core/GameObject;)V

    goto :goto_4
.end method

.method public getAttachmentCount()I
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/idk/core/GameObject;->objectModifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getModifierArray()[Lcom/idk/core/ObjectModifier;
    .registers 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/idk/core/GameObject;->objectModifiers:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/idk/core/ObjectModifier;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idk/core/ObjectModifier;

    return-object v0
.end method

.method public getModifierAssignable(Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/idk/core/ObjectModifier;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v2, "t":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v3, p0, Lcom/idk/core/GameObject;->objectModifiers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_26

    .line 95
    iget-object v3, p0, Lcom/idk/core/GameObject;->objectModifiers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/core/ObjectModifier;

    .line 96
    .local v0, "at":Lcom/idk/core/ObjectModifier;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 97
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 100
    .end local v0    # "at":Lcom/idk/core/ObjectModifier;
    :cond_26
    return-object v2
.end method

.method public getModifierAt(I)Lcom/idk/core/ObjectModifier;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/idk/core/GameObject;->objectModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/core/ObjectModifier;

    return-object v0
.end method

.method public getModifierInstanceOf(Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/idk/core/ObjectModifier;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, "t":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v3, p0, Lcom/idk/core/GameObject;->objectModifiers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_22

    .line 84
    iget-object v3, p0, Lcom/idk/core/GameObject;->objectModifiers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/core/ObjectModifier;

    .line 85
    .local v0, "at":Lcom/idk/core/ObjectModifier;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne p1, v3, :cond_1f

    .line 86
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 89
    .end local v0    # "at":Lcom/idk/core/ObjectModifier;
    :cond_22
    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/idk/core/GameObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public removeModifier(Lcom/idk/core/ObjectModifier;)V
    .registers 4
    .param p1, "att"    # Lcom/idk/core/ObjectModifier;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/idk/core/GameObject;->objectModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 28
    iget-object v0, p0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v0, v0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    if-eqz v0, :cond_1f

    .line 29
    iget-object v0, p0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v0, v0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    new-instance v1, Lcom/idk/core/GameObject$1;

    invoke-direct {v1, p0, p1}, Lcom/idk/core/GameObject$1;-><init>(Lcom/idk/core/GameObject;Lcom/idk/core/ObjectModifier;)V

    invoke-interface {v0, v1}, Lcom/idk/core/EngineInterface;->addFrameEndTask(Ljava/lang/Runnable;)V

    .line 40
    :cond_1e
    :goto_1e
    return-void

    .line 37
    :cond_1f
    iget-object v0, p0, Lcom/idk/core/GameObject;->objectModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1e
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/idk/core/GameObject;->name:Ljava/lang/String;

    .line 105
    return-void
.end method

###### Class com.idk.core.GameObject.AnonymousClass1 (com.idk.core.GameObject$1)
.class Lcom/idk/core/GameObject$1;
.super Ljava/lang/Object;
.source "GameObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/core/GameObject;->removeModifier(Lcom/idk/core/ObjectModifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/GameObject;

.field final synthetic val$att:Lcom/idk/core/ObjectModifier;


# direct methods
.method constructor <init>(Lcom/idk/core/GameObject;Lcom/idk/core/ObjectModifier;)V
    .registers 3
    .param p1, "this$0"    # Lcom/idk/core/GameObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    iput-object p1, p0, Lcom/idk/core/GameObject$1;->this$0:Lcom/idk/core/GameObject;

    iput-object p2, p0, Lcom/idk/core/GameObject$1;->val$att:Lcom/idk/core/ObjectModifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/idk/core/GameObject$1;->val$att:Lcom/idk/core/ObjectModifier;

    invoke-virtual {v0}, Lcom/idk/core/ObjectModifier;->onDelete()V

    .line 33
    iget-object v0, p0, Lcom/idk/core/GameObject$1;->this$0:Lcom/idk/core/GameObject;

    invoke-static {v0}, Lcom/idk/core/GameObject;->access$000(Lcom/idk/core/GameObject;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/idk/core/GameObject$1;->val$att:Lcom/idk/core/ObjectModifier;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

###### Class com.idk.core.GameObject.AnonymousClass2 (com.idk.core.GameObject$2)
.class Lcom/idk/core/GameObject$2;
.super Ljava/lang/Object;
.source "GameObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/core/GameObject;->addModifier(Lcom/idk/core/ObjectModifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/GameObject;

.field final synthetic val$att:Lcom/idk/core/ObjectModifier;


# direct methods
.method constructor <init>(Lcom/idk/core/GameObject;Lcom/idk/core/ObjectModifier;)V
    .registers 3
    .param p1, "this$0"    # Lcom/idk/core/GameObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/idk/core/GameObject$2;->this$0:Lcom/idk/core/GameObject;

    iput-object p2, p0, Lcom/idk/core/GameObject$2;->val$att:Lcom/idk/core/ObjectModifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/idk/core/GameObject$2;->this$0:Lcom/idk/core/GameObject;

    invoke-static {v0}, Lcom/idk/core/GameObject;->access$000(Lcom/idk/core/GameObject;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/idk/core/GameObject$2;->val$att:Lcom/idk/core/ObjectModifier;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/idk/core/GameObject$2;->val$att:Lcom/idk/core/ObjectModifier;

    invoke-virtual {v0}, Lcom/idk/core/ObjectModifier;->onCreate()V

    .line 50
    iget-object v0, p0, Lcom/idk/core/GameObject$2;->val$att:Lcom/idk/core/ObjectModifier;

    invoke-virtual {v0}, Lcom/idk/core/ObjectModifier;->onStart()V

    .line 51
    return-void
.end method

###### Class com.idk.core.GameObject.AnonymousClass3 (com.idk.core.GameObject$3)
.class Lcom/idk/core/GameObject$3;
.super Ljava/lang/Object;
.source "GameObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/core/GameObject;->clearAllModifier()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/GameObject;


# direct methods
.method constructor <init>(Lcom/idk/core/GameObject;)V
    .registers 2
    .param p1, "this$0"    # Lcom/idk/core/GameObject;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/idk/core/GameObject$3;->this$0:Lcom/idk/core/GameObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 63
    iget-object v1, p0, Lcom/idk/core/GameObject$3;->this$0:Lcom/idk/core/GameObject;

    invoke-static {v1}, Lcom/idk/core/GameObject;->access$000(Lcom/idk/core/GameObject;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/core/ObjectModifier;

    .line 64
    .local v0, "objectModifier":Lcom/idk/core/ObjectModifier;
    invoke-virtual {v0}, Lcom/idk/core/ObjectModifier;->onDelete()V

    goto :goto_a

    .line 66
    .end local v0    # "objectModifier":Lcom/idk/core/ObjectModifier;
    :cond_1a
    iget-object v1, p0, Lcom/idk/core/GameObject$3;->this$0:Lcom/idk/core/GameObject;

    invoke-static {v1}, Lcom/idk/core/GameObject;->access$000(Lcom/idk/core/GameObject;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 67
    return-void
.end method
