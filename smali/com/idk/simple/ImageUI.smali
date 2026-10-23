###### Class com.idk.simple.ImageUI (com.idk.simple.ImageUI)
.class public Lcom/idk/simple/ImageUI;
.super Lcom/idk/simple/UI;
.source "ImageUI.java"


# annotations
.annotation runtime Lcom/idk/core/Tag;
    value = "editable"
.end annotation


# instance fields
.field private last:Ljava/lang/String;

.field private src:Ljava/lang/String;
    .annotation runtime Lcom/idk/parser/ForceEditor;
    .end annotation

    .annotation runtime Lcom/idk/parser/Save;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/idk/simple/UI;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/idk/simple/ImageUI;->src:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/idk/simple/ImageUI;->last:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDelete()V
    .registers 4

    .prologue
    .line 40
    invoke-super {p0}, Lcom/idk/simple/UI;->onDelete()V

    .line 41
    iget-object v1, p0, Lcom/idk/simple/ImageUI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    const-class v2, Lcom/idk/simple/GraphicInterface;

    invoke-virtual {v1, v2}, Lcom/idk/core/Scene;->getInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, "gls":Ljava/util/List;, "Ljava/util/List<Lcom/idk/simple/GraphicInterface;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 43
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idk/simple/GraphicInterface;

    invoke-virtual {v1, p0}, Lcom/idk/simple/GraphicInterface;->removeUI(Lcom/idk/simple/UI;)V

    .line 45
    :cond_1d
    return-void
.end method

.method public onPreUpdate()V
    .registers 5

    .prologue
    .line 28
    iget-object v2, p0, Lcom/idk/simple/ImageUI;->src:Ljava/lang/String;

    iget-object v3, p0, Lcom/idk/simple/ImageUI;->last:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 37
    :cond_a
    :goto_a
    return-void

    .line 31
    :cond_b
    iget-object v2, p0, Lcom/idk/simple/ImageUI;->last:Ljava/lang/String;

    iput-object v2, p0, Lcom/idk/simple/ImageUI;->src:Ljava/lang/String;

    .line 32
    iget-object v2, p0, Lcom/idk/simple/ImageUI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v2, v2, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    iget-object v3, p0, Lcom/idk/simple/ImageUI;->src:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/idk/core/EngineInterface;->getAssetFile(Ljava/lang/String;)Lcom/idk/core/AssetFile;

    move-result-object v0

    .line 33
    .local v0, "file":Lcom/idk/core/AssetFile;
    if-eqz v0, :cond_a

    .line 34
    iget-object v2, p0, Lcom/idk/simple/ImageUI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    const-class v3, Lcom/idk/simple/GraphicInterface;

    invoke-virtual {v2, v3}, Lcom/idk/core/Scene;->getInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 35
    .local v1, "gls":Ljava/util/List;, "Ljava/util/List<Lcom/idk/simple/GraphicInterface;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idk/simple/GraphicInterface;

    iget-object v3, p0, Lcom/idk/simple/ImageUI;->src:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/idk/simple/GraphicInterface;->loadFromCache(Ljava/lang/String;)Lcom/idk/gl/Texture;

    move-result-object v2

    iput-object v2, p0, Lcom/idk/simple/ImageUI;->texture:Lcom/idk/gl/Texture;

    goto :goto_a
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 20
    iget-object v1, p0, Lcom/idk/simple/ImageUI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    const-class v2, Lcom/idk/simple/GraphicInterface;

    invoke-virtual {v1, v2}, Lcom/idk/core/Scene;->getInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 21
    .local v0, "gls":Ljava/util/List;, "Ljava/util/List<Lcom/idk/simple/GraphicInterface;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 22
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idk/simple/GraphicInterface;

    invoke-virtual {v1, p0}, Lcom/idk/simple/GraphicInterface;->addUI(Lcom/idk/simple/UI;)V

    .line 24
    :cond_1a
    return-void
.end method
