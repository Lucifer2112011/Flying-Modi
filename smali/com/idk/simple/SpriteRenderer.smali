###### Class com.idk.simple.SpriteRenderer (com.idk.simple.SpriteRenderer)
.class public Lcom/idk/simple/SpriteRenderer;
.super Lcom/idk/core/ObjectModifier;
.source "SpriteRenderer.java"


# annotations
.annotation runtime Lcom/idk/core/Tag;
    value = "editable"
.end annotation


# instance fields
.field public color:Lcom/idk/math/Color;

.field private last:Ljava/lang/String;

.field private src:Ljava/lang/String;
    .annotation runtime Lcom/idk/parser/ForceEditor;
    .end annotation

    .annotation runtime Lcom/idk/parser/Save;
    .end annotation
.end field

.field public texture:Lcom/idk/gl/Texture;
    .annotation runtime Lcom/idk/parser/Ignore;
    .end annotation

    .annotation runtime Lcom/idk/parser/IngoreEditor;
    .end annotation
.end field

.field public uv_offst:Lcom/idk/math/Vector2;

.field public uv_scale:Lcom/idk/math/Vector2;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/idk/core/ObjectModifier;-><init>()V

    .line 20
    invoke-static {}, Lcom/idk/math/Color;->WHITE()Lcom/idk/math/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/idk/simple/SpriteRenderer;->color:Lcom/idk/math/Color;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/idk/simple/SpriteRenderer;->src:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/idk/simple/SpriteRenderer;->last:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/idk/math/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/idk/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/idk/simple/SpriteRenderer;->uv_offst:Lcom/idk/math/Vector2;

    .line 29
    new-instance v0, Lcom/idk/math/Vector2;

    invoke-direct {v0, v2, v2}, Lcom/idk/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/idk/simple/SpriteRenderer;->uv_scale:Lcom/idk/math/Vector2;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-super {p0}, Lcom/idk/core/ObjectModifier;->onCreate()V

    .line 35
    iget-object v2, p0, Lcom/idk/simple/SpriteRenderer;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    const-class v3, Lcom/idk/simple/GraphicInterface;

    invoke-virtual {v2, v3}, Lcom/idk/core/Scene;->getInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 36
    .local v1, "gls":Ljava/util/List;, "Ljava/util/List<Lcom/idk/simple/GraphicInterface;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 37
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idk/simple/GraphicInterface;

    invoke-virtual {v2, p0}, Lcom/idk/simple/GraphicInterface;->addSprite(Lcom/idk/simple/SpriteRenderer;)V

    .line 39
    :cond_1d
    iget-object v2, p0, Lcom/idk/simple/SpriteRenderer;->last:Ljava/lang/String;

    iget-object v3, p0, Lcom/idk/simple/SpriteRenderer;->src:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 40
    iget-object v2, p0, Lcom/idk/simple/SpriteRenderer;->src:Ljava/lang/String;

    iput-object v2, p0, Lcom/idk/simple/SpriteRenderer;->last:Ljava/lang/String;

    .line 41
    iget-object v2, p0, Lcom/idk/simple/SpriteRenderer;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v2, v2, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    iget-object v3, p0, Lcom/idk/simple/SpriteRenderer;->src:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/idk/core/EngineInterface;->getAssetFile(Ljava/lang/String;)Lcom/idk/core/AssetFile;

    move-result-object v0

    .line 42
    .local v0, "file":Lcom/idk/core/AssetFile;
    if-nez v0, :cond_41

    .line 43
    const-string v2, "Null File"

    iget-object v3, p0, Lcom/idk/simple/SpriteRenderer;->src:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v0    # "file":Lcom/idk/core/AssetFile;
    :cond_40
    :goto_40
    return-void

    .line 46
    .restart local v0    # "file":Lcom/idk/core/AssetFile;
    :cond_41
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_40

    .line 47
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idk/simple/GraphicInterface;

    iget-object v3, p0, Lcom/idk/simple/SpriteRenderer;->src:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/idk/simple/GraphicInterface;->loadFromCache(Ljava/lang/String;)Lcom/idk/gl/Texture;

    move-result-object v2

    iput-object v2, p0, Lcom/idk/simple/SpriteRenderer;->texture:Lcom/idk/gl/Texture;

    goto :goto_40
.end method

.method public onDelete()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-object v1, p0, Lcom/idk/simple/SpriteRenderer;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    const-class v2, Lcom/idk/simple/GraphicInterface;

    invoke-virtual {v1, v2}, Lcom/idk/core/Scene;->getInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, "gls":Ljava/util/List;, "Ljava/util/List<Lcom/idk/simple/GraphicInterface;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 61
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idk/simple/GraphicInterface;

    invoke-virtual {v1, p0}, Lcom/idk/simple/GraphicInterface;->removeSprite(Lcom/idk/simple/SpriteRenderer;)V

    .line 62
    iget-object v1, p0, Lcom/idk/simple/SpriteRenderer;->texture:Lcom/idk/gl/Texture;

    if-eqz v1, :cond_29

    .line 63
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idk/simple/GraphicInterface;

    iget-object v2, p0, Lcom/idk/simple/SpriteRenderer;->texture:Lcom/idk/gl/Texture;

    invoke-virtual {v1, v2}, Lcom/idk/simple/GraphicInterface;->removeFromCache(Lcom/idk/gl/Texture;)V

    .line 66
    :cond_29
    return-void
.end method

.method public onPreUpdate()V
    .registers 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/idk/core/ObjectModifier;->onPreUpdate()V

    .line 55
    return-void
.end method

.method public onUpdate()V
    .registers 5

    .prologue
    .line 72
    iget-object v2, p0, Lcom/idk/simple/SpriteRenderer;->last:Ljava/lang/String;

    iget-object v3, p0, Lcom/idk/simple/SpriteRenderer;->src:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 73
    iget-object v2, p0, Lcom/idk/simple/SpriteRenderer;->src:Ljava/lang/String;

    iput-object v2, p0, Lcom/idk/simple/SpriteRenderer;->last:Ljava/lang/String;

    .line 74
    iget-object v2, p0, Lcom/idk/simple/SpriteRenderer;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v2, v2, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    iget-object v3, p0, Lcom/idk/simple/SpriteRenderer;->src:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/idk/core/EngineInterface;->getAssetFile(Ljava/lang/String;)Lcom/idk/core/AssetFile;

    move-result-object v0

    .line 75
    .local v0, "file":Lcom/idk/core/AssetFile;
    if-nez v0, :cond_24

    .line 76
    const-string v2, "Null File"

    iget-object v3, p0, Lcom/idk/simple/SpriteRenderer;->src:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v0    # "file":Lcom/idk/core/AssetFile;
    :cond_23
    :goto_23
    return-void

    .line 79
    .restart local v0    # "file":Lcom/idk/core/AssetFile;
    :cond_24
    iget-object v2, p0, Lcom/idk/simple/SpriteRenderer;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    const-class v3, Lcom/idk/simple/GraphicInterface;

    invoke-virtual {v2, v3}, Lcom/idk/core/Scene;->getInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 80
    .local v1, "gls":Ljava/util/List;, "Ljava/util/List<Lcom/idk/simple/GraphicInterface;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 81
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idk/simple/GraphicInterface;

    iget-object v3, p0, Lcom/idk/simple/SpriteRenderer;->src:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/idk/simple/GraphicInterface;->loadFromCache(Ljava/lang/String;)Lcom/idk/gl/Texture;

    move-result-object v2

    iput-object v2, p0, Lcom/idk/simple/SpriteRenderer;->texture:Lcom/idk/gl/Texture;

    goto :goto_23
.end method
