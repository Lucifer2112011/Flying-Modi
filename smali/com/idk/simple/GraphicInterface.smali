###### Class com.idk.simple.GraphicInterface (com.idk.simple.GraphicInterface)
.class public Lcom/idk/simple/GraphicInterface;
.super Lcom/idk/core/SceneInterface;
.source "GraphicInterface.java"

# interfaces
.implements Lcom/idk/core/StateListener;
.implements Lcom/idk/core/TouchListener;


# annotations
.annotation runtime Lcom/idk/core/Tag;
    value = "editable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idk/simple/GraphicInterface$TextureCacheUnit;
    }
.end annotation


# instance fields
.field private final cameras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/idk/simple/OrthoCamera;",
            ">;"
        }
    .end annotation
.end field

.field private final imageUIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/idk/simple/UI;",
            ">;"
        }
    .end annotation
.end field

.field private indice:Lcom/idk/gl/VertexBufferObject;

.field private isEditMode:Z

.field private position:Lcom/idk/gl/VertexBufferObject;

.field private projection:Lcom/idk/math/Matrix;

.field private renderObject:Z

.field private renderUI:Z

.field private final spriteRendererList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/idk/simple/SpriteRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

.field private stage:Lcom/idk/math/Matrix;

.field private texcoordObject:Lcom/idk/gl/VertexBufferObject;

.field private textureArrayMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/idk/simple/GraphicInterface$TextureCacheUnit;",
            ">;"
        }
    .end annotation
.end field

.field private uiMatrix:Lcom/idk/math/Matrix;

.field private uiShaderProgram:Lcom/idk/simple/UIShaderProgram;

.field private ui_position:Lcom/idk/gl/VertexBufferObject;

.field private view:Lcom/idk/math/Matrix;

.field private white:Lcom/idk/gl/Texture;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-direct {p0}, Lcom/idk/core/SceneInterface;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idk/simple/GraphicInterface;->spriteRendererList:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idk/simple/GraphicInterface;->cameras:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idk/simple/GraphicInterface;->imageUIS:Ljava/util/List;

    .line 35
    iput-boolean v1, p0, Lcom/idk/simple/GraphicInterface;->renderUI:Z

    .line 36
    iput-boolean v1, p0, Lcom/idk/simple/GraphicInterface;->renderObject:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idk/simple/GraphicInterface;->isEditMode:Z

    .line 42
    new-instance v0, Lcom/idk/math/Matrix;

    invoke-direct {v0}, Lcom/idk/math/Matrix;-><init>()V

    iput-object v0, p0, Lcom/idk/simple/GraphicInterface;->uiMatrix:Lcom/idk/math/Matrix;

    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/idk/simple/GraphicInterface;->textureArrayMap:Landroid/util/ArrayMap;

    return-void
.end method

.method private cull(Lcom/idk/math/Matrix;Lcom/idk/math/Matrix;[F)Z
    .registers 14
    .param p1, "projectM"    # Lcom/idk/math/Matrix;
    .param p2, "viewM"    # Lcom/idk/math/Matrix;
    .param p3, "model"    # [F

    .prologue
    const/4 v5, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 104
    new-instance v0, Lcom/idk/math/Matrix;

    invoke-direct {v0, p3}, Lcom/idk/math/Matrix;-><init>([F)V

    .line 105
    .local v0, "modelM":Lcom/idk/math/Matrix;
    new-instance v1, Lcom/idk/math/Vector4;

    invoke-direct {v1, v9, v8, v8, v8}, Lcom/idk/math/Vector4;-><init>(FFFF)V

    .line 106
    .local v1, "v1":Lcom/idk/math/Vector4;
    new-instance v2, Lcom/idk/math/Vector4;

    invoke-direct {v2, v9, v9, v8, v8}, Lcom/idk/math/Vector4;-><init>(FFFF)V

    .line 108
    .local v2, "v2":Lcom/idk/math/Vector4;
    new-instance v3, Lcom/idk/math/Vector4;

    invoke-direct {v3, v8, v9, v8, v8}, Lcom/idk/math/Vector4;-><init>(FFFF)V

    .line 109
    .local v3, "v3":Lcom/idk/math/Vector4;
    new-instance v4, Lcom/idk/math/Vector4;

    invoke-direct {v4, v8, v8, v8, v8}, Lcom/idk/math/Vector4;-><init>(FFFF)V

    .line 111
    .local v4, "v4":Lcom/idk/math/Vector4;
    invoke-virtual {v0, v1}, Lcom/idk/math/Matrix;->multiply(Lcom/idk/math/Vector4;)V

    .line 112
    invoke-virtual {v0, v2}, Lcom/idk/math/Matrix;->multiply(Lcom/idk/math/Vector4;)V

    .line 113
    invoke-virtual {v0, v3}, Lcom/idk/math/Matrix;->multiply(Lcom/idk/math/Vector4;)V

    .line 114
    invoke-virtual {v0, v4}, Lcom/idk/math/Matrix;->multiply(Lcom/idk/math/Vector4;)V

    .line 116
    invoke-virtual {p2, v1}, Lcom/idk/math/Matrix;->multiply(Lcom/idk/math/Vector4;)V

    .line 117
    invoke-virtual {p2, v2}, Lcom/idk/math/Matrix;->multiply(Lcom/idk/math/Vector4;)V

    .line 118
    invoke-virtual {p2, v3}, Lcom/idk/math/Matrix;->multiply(Lcom/idk/math/Vector4;)V

    .line 119
    invoke-virtual {p2, v4}, Lcom/idk/math/Matrix;->multiply(Lcom/idk/math/Vector4;)V

    .line 121
    invoke-virtual {p1, v1}, Lcom/idk/math/Matrix;->multiply(Lcom/idk/math/Vector4;)V

    .line 122
    invoke-virtual {p1, v2}, Lcom/idk/math/Matrix;->multiply(Lcom/idk/math/Vector4;)V

    .line 123
    invoke-virtual {p1, v3}, Lcom/idk/math/Matrix;->multiply(Lcom/idk/math/Vector4;)V

    .line 124
    invoke-virtual {p1, v4}, Lcom/idk/math/Matrix;->multiply(Lcom/idk/math/Vector4;)V

    .line 125
    iget v6, v1, Lcom/idk/math/Vector4;->x:F

    iget v7, v1, Lcom/idk/math/Vector4;->w:F

    div-float/2addr v6, v7

    iput v6, v1, Lcom/idk/math/Vector4;->x:F

    .line 126
    iget v6, v2, Lcom/idk/math/Vector4;->x:F

    iget v7, v2, Lcom/idk/math/Vector4;->w:F

    div-float/2addr v6, v7

    iput v6, v2, Lcom/idk/math/Vector4;->x:F

    .line 127
    iget v6, v3, Lcom/idk/math/Vector4;->x:F

    iget v7, v3, Lcom/idk/math/Vector4;->w:F

    div-float/2addr v6, v7

    iput v6, v3, Lcom/idk/math/Vector4;->x:F

    .line 128
    iget v6, v4, Lcom/idk/math/Vector4;->x:F

    iget v7, v4, Lcom/idk/math/Vector4;->w:F

    div-float/2addr v6, v7

    iput v6, v4, Lcom/idk/math/Vector4;->x:F

    .line 130
    iget v6, v1, Lcom/idk/math/Vector4;->x:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_77

    iget v6, v2, Lcom/idk/math/Vector4;->x:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_77

    iget v6, v3, Lcom/idk/math/Vector4;->x:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_77

    iget v6, v4, Lcom/idk/math/Vector4;->x:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_77

    .line 142
    :cond_76
    :goto_76
    return v5

    .line 133
    :cond_77
    iget v6, v1, Lcom/idk/math/Vector4;->x:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_8f

    iget v6, v2, Lcom/idk/math/Vector4;->x:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_8f

    iget v6, v3, Lcom/idk/math/Vector4;->x:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_8f

    iget v6, v4, Lcom/idk/math/Vector4;->x:F

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_76

    .line 136
    :cond_8f
    iget v6, v1, Lcom/idk/math/Vector4;->y:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_a7

    iget v6, v2, Lcom/idk/math/Vector4;->y:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_a7

    iget v6, v3, Lcom/idk/math/Vector4;->y:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_a7

    iget v6, v4, Lcom/idk/math/Vector4;->y:F

    cmpg-float v6, v6, v9

    if-ltz v6, :cond_76

    .line 139
    :cond_a7
    iget v6, v1, Lcom/idk/math/Vector4;->y:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_bf

    iget v6, v2, Lcom/idk/math/Vector4;->y:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_bf

    iget v6, v3, Lcom/idk/math/Vector4;->y:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_bf

    iget v6, v4, Lcom/idk/math/Vector4;->y:F

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_76

    .line 142
    :cond_bf
    const/4 v5, 0x1

    goto :goto_76
.end method


# virtual methods
.method public addSprite(Lcom/idk/simple/SpriteRenderer;)V
    .registers 3
    .param p1, "renderer"    # Lcom/idk/simple/SpriteRenderer;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->spriteRendererList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public addUI(Lcom/idk/simple/UI;)V
    .registers 3
    .param p1, "ui"    # Lcom/idk/simple/UI;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->imageUIS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method public loadFromCache(Ljava/lang/String;)Lcom/idk/gl/Texture;
    .registers 7
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 317
    iget-object v4, p0, Lcom/idk/simple/GraphicInterface;->textureArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 318
    iget-object v3, p0, Lcom/idk/simple/GraphicInterface;->textureArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;

    .line 319
    .local v1, "tcu":Lcom/idk/simple/GraphicInterface$TextureCacheUnit;
    iget v3, v1, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;->use:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;->use:I

    .line 320
    iget-object v2, v1, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;->texture:Lcom/idk/gl/Texture;

    .line 332
    .end local v1    # "tcu":Lcom/idk/simple/GraphicInterface$TextureCacheUnit;
    :goto_19
    return-object v2

    .line 322
    :cond_1a
    iget-object v4, p0, Lcom/idk/simple/GraphicInterface;->targetScene:Lcom/idk/core/Scene;

    iget-object v4, v4, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    invoke-interface {v4, p1}, Lcom/idk/core/EngineInterface;->getAssetFile(Ljava/lang/String;)Lcom/idk/core/AssetFile;

    move-result-object v0

    .line 323
    .local v0, "afile":Lcom/idk/core/AssetFile;
    if-eqz v0, :cond_40

    .line 324
    new-instance v2, Lcom/idk/gl/Texture;

    invoke-interface {v0}, Lcom/idk/core/AssetFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/idk/gl/Texture;-><init>(Ljava/io/InputStream;)V

    .line 325
    .local v2, "texture":Lcom/idk/gl/Texture;
    new-instance v1, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;

    invoke-direct {v1, p0, v3}, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;-><init>(Lcom/idk/simple/GraphicInterface;Lcom/idk/simple/GraphicInterface$1;)V

    .line 326
    .restart local v1    # "tcu":Lcom/idk/simple/GraphicInterface$TextureCacheUnit;
    iput-object v2, v1, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;->texture:Lcom/idk/gl/Texture;

    .line 327
    iget v3, v1, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;->use:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;->use:I

    .line 328
    iget-object v3, p0, Lcom/idk/simple/GraphicInterface;->textureArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .end local v1    # "tcu":Lcom/idk/simple/GraphicInterface$TextureCacheUnit;
    .end local v2    # "texture":Lcom/idk/gl/Texture;
    :cond_40
    move-object v2, v3

    .line 332
    goto :goto_19
.end method

.method public onCreate()V
    .registers 7

    .prologue
    const/16 v5, 0xc

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 47
    invoke-super {p0}, Lcom/idk/core/SceneInterface;->onCreate()V

    .line 48
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "onCreate Begin"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/idk/math/Matrix;

    invoke-direct {v1}, Lcom/idk/math/Matrix;-><init>()V

    iput-object v1, p0, Lcom/idk/simple/GraphicInterface;->stage:Lcom/idk/math/Matrix;

    .line 50
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->stage:Lcom/idk/math/Matrix;

    invoke-virtual {v1}, Lcom/idk/math/Matrix;->reset()V

    .line 51
    new-instance v1, Lcom/idk/simple/SpriteShaderProgram;

    invoke-direct {v1}, Lcom/idk/simple/SpriteShaderProgram;-><init>()V

    iput-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    .line 52
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    invoke-virtual {v1}, Lcom/idk/simple/SpriteShaderProgram;->compile()V

    .line 53
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    invoke-virtual {v1}, Lcom/idk/simple/SpriteShaderProgram;->printError()V

    .line 54
    new-instance v1, Lcom/idk/gl/Texture;

    invoke-direct {v1, v4, v4, v4}, Lcom/idk/gl/Texture;-><init>(FFF)V

    iput-object v1, p0, Lcom/idk/simple/GraphicInterface;->white:Lcom/idk/gl/Texture;

    .line 56
    new-instance v1, Lcom/idk/simple/UIShaderProgram;

    invoke-direct {v1}, Lcom/idk/simple/UIShaderProgram;-><init>()V

    iput-object v1, p0, Lcom/idk/simple/GraphicInterface;->uiShaderProgram:Lcom/idk/simple/UIShaderProgram;

    .line 57
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->uiShaderProgram:Lcom/idk/simple/UIShaderProgram;

    invoke-virtual {v1}, Lcom/idk/simple/UIShaderProgram;->compile()V

    .line 58
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->uiShaderProgram:Lcom/idk/simple/UIShaderProgram;

    invoke-virtual {v1}, Lcom/idk/simple/UIShaderProgram;->printError()V

    .line 60
    invoke-static {v3}, Lcom/idk/gl/VertexBufferObject;->createVertexBuffer(Z)Lcom/idk/gl/VertexBufferObject;

    move-result-object v1

    iput-object v1, p0, Lcom/idk/simple/GraphicInterface;->position:Lcom/idk/gl/VertexBufferObject;

    .line 61
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->position:Lcom/idk/gl/VertexBufferObject;

    new-array v2, v5, [F

    fill-array-data v2, :array_e2

    invoke-virtual {v1, v2}, Lcom/idk/gl/VertexBufferObject;->setData([F)V

    .line 67
    invoke-static {v3}, Lcom/idk/gl/VertexBufferObject;->createVertexBuffer(Z)Lcom/idk/gl/VertexBufferObject;

    move-result-object v1

    iput-object v1, p0, Lcom/idk/simple/GraphicInterface;->ui_position:Lcom/idk/gl/VertexBufferObject;

    .line 68
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->ui_position:Lcom/idk/gl/VertexBufferObject;

    new-array v2, v5, [F

    fill-array-data v2, :array_fe

    invoke-virtual {v1, v2}, Lcom/idk/gl/VertexBufferObject;->setData([F)V

    .line 73
    invoke-static {v3}, Lcom/idk/gl/VertexBufferObject;->createVertexBuffer(Z)Lcom/idk/gl/VertexBufferObject;

    move-result-object v1

    iput-object v1, p0, Lcom/idk/simple/GraphicInterface;->texcoordObject:Lcom/idk/gl/VertexBufferObject;

    .line 74
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->texcoordObject:Lcom/idk/gl/VertexBufferObject;

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_11a

    invoke-virtual {v1, v2}, Lcom/idk/gl/VertexBufferObject;->setData([F)V

    .line 75
    invoke-static {v3}, Lcom/idk/gl/VertexBufferObject;->createIndexBuffer(Z)Lcom/idk/gl/VertexBufferObject;

    move-result-object v1

    iput-object v1, p0, Lcom/idk/simple/GraphicInterface;->indice:Lcom/idk/gl/VertexBufferObject;

    .line 76
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->indice:Lcom/idk/gl/VertexBufferObject;

    const/4 v2, 0x6

    new-array v2, v2, [S

    fill-array-data v2, :array_12e

    invoke-virtual {v1, v2}, Lcom/idk/gl/VertexBufferObject;->setData([S)V

    .line 77
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    invoke-virtual {v1}, Lcom/idk/simple/SpriteShaderProgram;->getAttributeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_91
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "str":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_91

    .line 80
    .end local v0    # "str":Ljava/lang/String;
    :cond_a3
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->targetScene:Lcom/idk/core/Scene;

    iget-object v1, v1, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    invoke-interface {v1}, Lcom/idk/core/EngineInterface;->getTouchManager()Lcom/idk/core/TouchManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/idk/core/TouchManager;->addTouchListener(Lcom/idk/core/TouchListener;)V

    .line 81
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->targetScene:Lcom/idk/core/Scene;

    iget-object v1, v1, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    const-string v2, "edit_mode"

    invoke-interface {v1, v2}, Lcom/idk/core/EngineInterface;->hasKey(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/idk/simple/GraphicInterface;->isEditMode:Z

    .line 82
    iget-boolean v1, p0, Lcom/idk/simple/GraphicInterface;->isEditMode:Z

    if-eqz v1, :cond_da

    .line 83
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->targetScene:Lcom/idk/core/Scene;

    iget-object v1, v1, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    const-string v2, "e_projection"

    invoke-interface {v1, v2}, Lcom/idk/core/EngineInterface;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idk/math/Matrix;

    iput-object v1, p0, Lcom/idk/simple/GraphicInterface;->projection:Lcom/idk/math/Matrix;

    .line 84
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->targetScene:Lcom/idk/core/Scene;

    iget-object v1, v1, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    const-string v2, "e_view"

    invoke-interface {v1, v2}, Lcom/idk/core/EngineInterface;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idk/math/Matrix;

    iput-object v1, p0, Lcom/idk/simple/GraphicInterface;->view:Lcom/idk/math/Matrix;

    .line 86
    :cond_da
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Graphic OnCreate"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    return-void

    .line 61
    :array_e2
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 68
    :array_fe
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 74
    :array_11a
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 76
    :array_12e
    .array-data 2
        0x0s
        0x2s
        0x3s
        0x0s
        0x1s
        0x2s
    .end array-data
.end method

.method public onDelete()V
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    invoke-virtual {v0}, Lcom/idk/simple/SpriteShaderProgram;->close()V

    .line 262
    return-void
.end method

.method public onDown(Lcom/idk/core/TouchData;)V
    .registers 2
    .param p1, "event"    # Lcom/idk/core/TouchData;

    .prologue
    .line 305
    return-void
.end method

.method public onDrag(Lcom/idk/core/TouchData;)V
    .registers 2
    .param p1, "event"    # Lcom/idk/core/TouchData;

    .prologue
    .line 315
    return-void
.end method

.method public onOrientationChange(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 295
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 285
    return-void
.end method

.method public onPreUpdate()V
    .registers 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/idk/core/SceneInterface;->onPreUpdate()V

    .line 101
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 290
    return-void
.end method

.method public onSurfaceChange(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 300
    return-void
.end method

.method public onUp(Lcom/idk/core/TouchData;)V
    .registers 2
    .param p1, "event"    # Lcom/idk/core/TouchData;

    .prologue
    .line 310
    return-void
.end method

.method public onUpdate()V
    .registers 14

    .prologue
    .line 147
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->targetScene:Lcom/idk/core/Scene;

    iget-object v2, v2, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    invoke-interface {v2}, Lcom/idk/core/EngineInterface;->getLastWidth()I

    move-result v2

    iget-object v3, p0, Lcom/idk/simple/GraphicInterface;->targetScene:Lcom/idk/core/Scene;

    iget-object v3, v3, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    .line 148
    invoke-interface {v3}, Lcom/idk/core/EngineInterface;->getLastHeight()I

    move-result v3

    .line 147
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES30;->glViewport(IIII)V

    .line 149
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->spriteRendererList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ee

    .line 150
    iget-boolean v0, p0, Lcom/idk/simple/GraphicInterface;->renderObject:Z

    if-eqz v0, :cond_ee

    .line 151
    iget-boolean v0, p0, Lcom/idk/simple/GraphicInterface;->isEditMode:Z

    if-eqz v0, :cond_19d

    .line 152
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    invoke-virtual {v0}, Lcom/idk/simple/SpriteShaderProgram;->bind()V

    .line 153
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v1, "projectionMatrix"

    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->projection:Lcom/idk/math/Matrix;

    iget-object v2, v2, Lcom/idk/math/Matrix;->val:[F

    invoke-virtual {v0, v1, v2}, Lcom/idk/simple/SpriteShaderProgram;->setMatrix(Ljava/lang/String;[F)V

    .line 155
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v1, "viewMatrix"

    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->view:Lcom/idk/math/Matrix;

    iget-object v2, v2, Lcom/idk/math/Matrix;->val:[F

    invoke-virtual {v0, v1, v2}, Lcom/idk/simple/SpriteShaderProgram;->setMatrix(Ljava/lang/String;[F)V

    .line 157
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v1, "position"

    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->position:Lcom/idk/gl/VertexBufferObject;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/idk/simple/SpriteShaderProgram;->setAttributeBuffer(Ljava/lang/String;Lcom/idk/gl/VertexBufferObject;I)V

    .line 158
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v1, "a_uv"

    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->texcoordObject:Lcom/idk/gl/VertexBufferObject;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/idk/simple/SpriteShaderProgram;->setAttributeBuffer(Ljava/lang/String;Lcom/idk/gl/VertexBufferObject;I)V

    .line 159
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v1, "uv_change"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/idk/simple/SpriteShaderProgram;->setInt(Ljava/lang/String;I)V

    .line 160
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->spriteRendererList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_62
    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/idk/simple/SpriteRenderer;

    .line 161
    .local v11, "sp":Lcom/idk/simple/SpriteRenderer;
    iget-object v1, v11, Lcom/idk/simple/SpriteRenderer;->targetObject:Lcom/idk/core/GameObject;

    iget-boolean v1, v1, Lcom/idk/core/GameObject;->active:Z

    if-eqz v1, :cond_62

    .line 164
    iget-boolean v1, v11, Lcom/idk/simple/SpriteRenderer;->active:Z

    if-eqz v1, :cond_62

    .line 167
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->projection:Lcom/idk/math/Matrix;

    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->view:Lcom/idk/math/Matrix;

    iget-object v3, v11, Lcom/idk/simple/SpriteRenderer;->targetObject:Lcom/idk/core/GameObject;

    iget-object v3, v3, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    invoke-virtual {v3}, Lcom/idk/math/Transform2D;->getMatrixArray()[F

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/idk/simple/GraphicInterface;->cull(Lcom/idk/math/Matrix;Lcom/idk/math/Matrix;[F)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 171
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v2, "modelMatrix"

    iget-object v3, v11, Lcom/idk/simple/SpriteRenderer;->targetObject:Lcom/idk/core/GameObject;

    iget-object v3, v3, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    invoke-virtual {v3}, Lcom/idk/math/Transform2D;->getMatrixArray()[F

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/idk/simple/SpriteShaderProgram;->setMatrix(Ljava/lang/String;[F)V

    .line 172
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v2, "color"

    iget-object v3, v11, Lcom/idk/simple/SpriteRenderer;->color:Lcom/idk/math/Color;

    invoke-virtual {v3}, Lcom/idk/math/Color;->toArray()[F

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/idk/simple/SpriteShaderProgram;->setVector4(Ljava/lang/String;[F)V

    .line 173
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v2, "uv_change"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/idk/simple/SpriteShaderProgram;->setInt(Ljava/lang/String;I)V

    .line 174
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v2, "offset"

    iget-object v3, v11, Lcom/idk/simple/SpriteRenderer;->uv_offst:Lcom/idk/math/Vector2;

    invoke-virtual {v3}, Lcom/idk/math/Vector2;->toArray()[F

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/idk/simple/SpriteShaderProgram;->setVector2(Ljava/lang/String;[F)V

    .line 175
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v2, "scale"

    iget-object v3, v11, Lcom/idk/simple/SpriteRenderer;->uv_scale:Lcom/idk/math/Vector2;

    invoke-virtual {v3}, Lcom/idk/math/Vector2;->toArray()[F

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/idk/simple/SpriteShaderProgram;->setVector2(Ljava/lang/String;[F)V

    .line 176
    iget-object v1, v11, Lcom/idk/simple/SpriteRenderer;->texture:Lcom/idk/gl/Texture;

    if-eqz v1, :cond_e2

    .line 177
    iget-object v1, v11, Lcom/idk/simple/SpriteRenderer;->texture:Lcom/idk/gl/Texture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/idk/gl/Texture;->active(I)V

    .line 181
    :goto_d2
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v2, "tex"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/idk/simple/SpriteShaderProgram;->setInt(Ljava/lang/String;I)V

    .line 182
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->indice:Lcom/idk/gl/VertexBufferObject;

    invoke-virtual {v1, v2}, Lcom/idk/simple/SpriteShaderProgram;->draw(Lcom/idk/gl/VertexBufferObject;)V

    goto :goto_62

    .line 179
    :cond_e2
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->white:Lcom/idk/gl/Texture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/idk/gl/Texture;->active(I)V

    goto :goto_d2

    .line 185
    .end local v11    # "sp":Lcom/idk/simple/SpriteRenderer;
    :cond_e9
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    invoke-virtual {v0}, Lcom/idk/simple/SpriteShaderProgram;->unbind()V

    .line 229
    :cond_ee
    const/16 v0, 0x100

    invoke-static {v0}, Landroid/opengl/GLES30;->glClear(I)V

    .line 230
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->stage:Lcom/idk/math/Matrix;

    invoke-virtual {v0}, Lcom/idk/math/Matrix;->reset()V

    .line 231
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->stage:Lcom/idk/math/Matrix;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->targetScene:Lcom/idk/core/Scene;

    iget-object v2, v2, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    invoke-interface {v2}, Lcom/idk/core/EngineInterface;->getLastWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/idk/simple/GraphicInterface;->targetScene:Lcom/idk/core/Scene;

    iget-object v4, v4, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    .line 232
    invoke-interface {v4}, Lcom/idk/core/EngineInterface;->getLastHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x3d380000    # -100.0f

    const/high16 v6, 0x42c80000    # 100.0f

    .line 231
    invoke-virtual/range {v0 .. v6}, Lcom/idk/math/Matrix;->ortho(FFFFFF)V

    .line 234
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->uiShaderProgram:Lcom/idk/simple/UIShaderProgram;

    invoke-virtual {v0}, Lcom/idk/simple/UIShaderProgram;->bind()V

    .line 235
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->uiShaderProgram:Lcom/idk/simple/UIShaderProgram;

    const-string v1, "projection"

    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->stage:Lcom/idk/math/Matrix;

    iget-object v2, v2, Lcom/idk/math/Matrix;->val:[F

    invoke-virtual {v0, v1, v2}, Lcom/idk/simple/UIShaderProgram;->setMatrix(Ljava/lang/String;[F)V

    .line 236
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->uiShaderProgram:Lcom/idk/simple/UIShaderProgram;

    const-string v1, "a_pos"

    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->ui_position:Lcom/idk/gl/VertexBufferObject;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/idk/simple/UIShaderProgram;->setAttributeBuffer(Ljava/lang/String;Lcom/idk/gl/VertexBufferObject;I)V

    .line 237
    iget-boolean v0, p0, Lcom/idk/simple/GraphicInterface;->renderUI:Z

    if-eqz v0, :cond_27a

    .line 238
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->imageUIS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_139
    :goto_139
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/idk/simple/UI;

    .line 239
    .local v12, "ui":Lcom/idk/simple/UI;
    iget-object v1, v12, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-boolean v1, v1, Lcom/idk/core/GameObject;->active:Z

    if-eqz v1, :cond_139

    .line 242
    iget-boolean v1, v12, Lcom/idk/simple/UI;->active:Z

    if-eqz v1, :cond_139

    .line 245
    invoke-virtual {v12}, Lcom/idk/simple/UI;->calculateScreenSpace()V

    .line 246
    invoke-virtual {v12}, Lcom/idk/simple/UI;->getGlobalRect()Lcom/idk/math/Rect;

    move-result-object v9

    .line 247
    .local v9, "rect":Lcom/idk/math/Rect;
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->uiMatrix:Lcom/idk/math/Matrix;

    invoke-virtual {v1}, Lcom/idk/math/Matrix;->reset()V

    .line 248
    invoke-virtual {v9}, Lcom/idk/math/Rect;->getSize()Lcom/idk/math/Vector2;

    move-result-object v10

    .line 249
    .local v10, "size":Lcom/idk/math/Vector2;
    invoke-virtual {v9}, Lcom/idk/math/Rect;->getPosition()Lcom/idk/math/Vector2;

    move-result-object v8

    .line 250
    .local v8, "pos":Lcom/idk/math/Vector2;
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->uiMatrix:Lcom/idk/math/Matrix;

    iget v2, v8, Lcom/idk/math/Vector2;->x:F

    iget v3, v8, Lcom/idk/math/Vector2;->y:F

    iget-object v4, v12, Lcom/idk/simple/UI;->targetObject:Lcom/idk/core/GameObject;

    iget-object v4, v4, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget v4, v4, Lcom/idk/math/Transform2D;->depth:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/idk/math/Matrix;->translate(FFF)V

    .line 251
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->uiMatrix:Lcom/idk/math/Matrix;

    iget v2, v10, Lcom/idk/math/Vector2;->x:F

    iget v3, v10, Lcom/idk/math/Vector2;->y:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v4}, Lcom/idk/math/Matrix;->scale(FFF)V

    .line 252
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->uiShaderProgram:Lcom/idk/simple/UIShaderProgram;

    const-string v2, "color"

    iget-object v3, v12, Lcom/idk/simple/UI;->color:Lcom/idk/math/Color;

    invoke-virtual {v3}, Lcom/idk/math/Color;->toArray()[F

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/idk/simple/UIShaderProgram;->setVector4(Ljava/lang/String;[F)V

    .line 253
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->uiShaderProgram:Lcom/idk/simple/UIShaderProgram;

    const-string v2, "model"

    iget-object v3, p0, Lcom/idk/simple/GraphicInterface;->uiMatrix:Lcom/idk/math/Matrix;

    iget-object v3, v3, Lcom/idk/math/Matrix;->val:[F

    invoke-virtual {v1, v2, v3}, Lcom/idk/simple/UIShaderProgram;->setMatrix(Ljava/lang/String;[F)V

    .line 254
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->uiShaderProgram:Lcom/idk/simple/UIShaderProgram;

    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->indice:Lcom/idk/gl/VertexBufferObject;

    invoke-virtual {v1, v2}, Lcom/idk/simple/UIShaderProgram;->draw(Lcom/idk/gl/VertexBufferObject;)V

    goto :goto_139

    .line 187
    .end local v8    # "pos":Lcom/idk/math/Vector2;
    .end local v9    # "rect":Lcom/idk/math/Rect;
    .end local v10    # "size":Lcom/idk/math/Vector2;
    .end local v12    # "ui":Lcom/idk/simple/UI;
    :cond_19d
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->cameras:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a3
    :goto_1a3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ee

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/idk/simple/OrthoCamera;

    .line 188
    .local v7, "camera":Lcom/idk/simple/OrthoCamera;
    iget-boolean v1, v7, Lcom/idk/simple/OrthoCamera;->active:Z

    if-eqz v1, :cond_1a3

    .line 191
    iget-boolean v1, v7, Lcom/idk/simple/OrthoCamera;->offscreen:Z

    if-nez v1, :cond_1a3

    .line 193
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    invoke-virtual {v1}, Lcom/idk/simple/SpriteShaderProgram;->bind()V

    .line 194
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v2, "projectionMatrix"

    iget-object v3, v7, Lcom/idk/simple/OrthoCamera;->projection:Lcom/idk/math/Matrix;

    iget-object v3, v3, Lcom/idk/math/Matrix;->val:[F

    invoke-virtual {v1, v2, v3}, Lcom/idk/simple/SpriteShaderProgram;->setMatrix(Ljava/lang/String;[F)V

    .line 195
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v2, "viewMatrix"

    iget-object v3, v7, Lcom/idk/simple/OrthoCamera;->viewMatrix:Lcom/idk/math/Matrix;

    iget-object v3, v3, Lcom/idk/math/Matrix;->val:[F

    invoke-virtual {v1, v2, v3}, Lcom/idk/simple/SpriteShaderProgram;->setMatrix(Ljava/lang/String;[F)V

    .line 196
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v2, "position"

    iget-object v3, p0, Lcom/idk/simple/GraphicInterface;->position:Lcom/idk/gl/VertexBufferObject;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lcom/idk/simple/SpriteShaderProgram;->setAttributeBuffer(Ljava/lang/String;Lcom/idk/gl/VertexBufferObject;I)V

    .line 197
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v2, "a_uv"

    iget-object v3, p0, Lcom/idk/simple/GraphicInterface;->texcoordObject:Lcom/idk/gl/VertexBufferObject;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/idk/simple/SpriteShaderProgram;->setAttributeBuffer(Ljava/lang/String;Lcom/idk/gl/VertexBufferObject;I)V

    .line 198
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteRendererList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1ec
    :goto_1ec
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_273

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/idk/simple/SpriteRenderer;

    .line 199
    .restart local v11    # "sp":Lcom/idk/simple/SpriteRenderer;
    iget-object v2, v11, Lcom/idk/simple/SpriteRenderer;->targetObject:Lcom/idk/core/GameObject;

    iget-boolean v2, v2, Lcom/idk/core/GameObject;->active:Z

    if-eqz v2, :cond_1ec

    .line 202
    iget-boolean v2, v11, Lcom/idk/simple/SpriteRenderer;->active:Z

    if-eqz v2, :cond_1ec

    .line 205
    iget-object v2, v7, Lcom/idk/simple/OrthoCamera;->projection:Lcom/idk/math/Matrix;

    iget-object v3, v7, Lcom/idk/simple/OrthoCamera;->projection:Lcom/idk/math/Matrix;

    iget-object v4, v11, Lcom/idk/simple/SpriteRenderer;->targetObject:Lcom/idk/core/GameObject;

    iget-object v4, v4, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    invoke-virtual {v4}, Lcom/idk/math/Transform2D;->getMatrixArray()[F

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/idk/simple/GraphicInterface;->cull(Lcom/idk/math/Matrix;Lcom/idk/math/Matrix;[F)Z

    move-result v2

    if-eqz v2, :cond_1ec

    .line 209
    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v3, "modelMatrix"

    iget-object v4, v11, Lcom/idk/simple/SpriteRenderer;->targetObject:Lcom/idk/core/GameObject;

    iget-object v4, v4, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    invoke-virtual {v4}, Lcom/idk/math/Transform2D;->getMatrixArray()[F

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/idk/simple/SpriteShaderProgram;->setMatrix(Ljava/lang/String;[F)V

    .line 210
    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v3, "color"

    iget-object v4, v11, Lcom/idk/simple/SpriteRenderer;->color:Lcom/idk/math/Color;

    invoke-virtual {v4}, Lcom/idk/math/Color;->toArray()[F

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/idk/simple/SpriteShaderProgram;->setVector4(Ljava/lang/String;[F)V

    .line 211
    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v3, "uv_change"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/idk/simple/SpriteShaderProgram;->setInt(Ljava/lang/String;I)V

    .line 212
    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v3, "offset"

    iget-object v4, v11, Lcom/idk/simple/SpriteRenderer;->uv_offst:Lcom/idk/math/Vector2;

    invoke-virtual {v4}, Lcom/idk/math/Vector2;->toArray()[F

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/idk/simple/SpriteShaderProgram;->setVector2(Ljava/lang/String;[F)V

    .line 213
    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v3, "scale"

    iget-object v4, v11, Lcom/idk/simple/SpriteRenderer;->uv_scale:Lcom/idk/math/Vector2;

    invoke-virtual {v4}, Lcom/idk/math/Vector2;->toArray()[F

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/idk/simple/SpriteShaderProgram;->setVector2(Ljava/lang/String;[F)V

    .line 214
    iget-object v2, v11, Lcom/idk/simple/SpriteRenderer;->texture:Lcom/idk/gl/Texture;

    if-eqz v2, :cond_26c

    .line 215
    iget-object v2, v11, Lcom/idk/simple/SpriteRenderer;->texture:Lcom/idk/gl/Texture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/idk/gl/Texture;->active(I)V

    .line 219
    :goto_25c
    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    const-string v3, "tex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/idk/simple/SpriteShaderProgram;->setInt(Ljava/lang/String;I)V

    .line 220
    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    iget-object v3, p0, Lcom/idk/simple/GraphicInterface;->indice:Lcom/idk/gl/VertexBufferObject;

    invoke-virtual {v2, v3}, Lcom/idk/simple/SpriteShaderProgram;->draw(Lcom/idk/gl/VertexBufferObject;)V

    goto :goto_1ec

    .line 217
    :cond_26c
    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->white:Lcom/idk/gl/Texture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/idk/gl/Texture;->active(I)V

    goto :goto_25c

    .line 222
    .end local v11    # "sp":Lcom/idk/simple/SpriteRenderer;
    :cond_273
    iget-object v1, p0, Lcom/idk/simple/GraphicInterface;->spriteShaderProgram:Lcom/idk/simple/SpriteShaderProgram;

    invoke-virtual {v1}, Lcom/idk/simple/SpriteShaderProgram;->unbind()V

    goto/16 :goto_1a3

    .line 257
    .end local v7    # "camera":Lcom/idk/simple/OrthoCamera;
    :cond_27a
    return-void
.end method

.method public registerCamera(Lcom/idk/simple/OrthoCamera;)V
    .registers 3
    .param p1, "camera"    # Lcom/idk/simple/OrthoCamera;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->cameras:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method public removeCamera(Lcom/idk/simple/OrthoCamera;)V
    .registers 3
    .param p1, "camera"    # Lcom/idk/simple/OrthoCamera;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->cameras:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method public removeFromCache(Lcom/idk/gl/Texture;)V
    .registers 5
    .param p1, "texture"    # Lcom/idk/gl/Texture;

    .prologue
    .line 335
    if-nez p1, :cond_3

    .line 349
    :cond_2
    :goto_2
    return-void

    .line 338
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->textureArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2b

    .line 339
    iget-object v2, p0, Lcom/idk/simple/GraphicInterface;->textureArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;

    .line 340
    .local v1, "tcu":Lcom/idk/simple/GraphicInterface$TextureCacheUnit;
    iget-object v2, v1, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;->texture:Lcom/idk/gl/Texture;

    if-ne v2, p1, :cond_28

    .line 341
    iget v2, v1, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;->use:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;->use:I

    .line 342
    iget v2, v1, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;->use:I

    if-gtz v2, :cond_2

    .line 343
    iget-object v2, v1, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;->texture:Lcom/idk/gl/Texture;

    invoke-virtual {v2}, Lcom/idk/gl/Texture;->delete()V

    goto :goto_2

    .line 338
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 348
    .end local v1    # "tcu":Lcom/idk/simple/GraphicInterface$TextureCacheUnit;
    :cond_2b
    invoke-virtual {p1}, Lcom/idk/gl/Texture;->delete()V

    goto :goto_2
.end method

.method public removeSprite(Lcom/idk/simple/SpriteRenderer;)V
    .registers 3
    .param p1, "renderer"    # Lcom/idk/simple/SpriteRenderer;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->spriteRendererList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method public removeUI(Lcom/idk/simple/UI;)V
    .registers 3
    .param p1, "ui"    # Lcom/idk/simple/UI;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/idk/simple/GraphicInterface;->imageUIS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method public setRenderObject(Z)V
    .registers 2
    .param p1, "renderObject"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/idk/simple/GraphicInterface;->renderObject:Z

    .line 92
    return-void
.end method

.method public setRenderUI(Z)V
    .registers 2
    .param p1, "renderUI"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/idk/simple/GraphicInterface;->renderUI:Z

    .line 96
    return-void
.end method

###### Class com.idk.simple.GraphicInterface.AnonymousClass1 (com.idk.simple.GraphicInterface$1)
.class synthetic Lcom/idk/simple/GraphicInterface$1;
.super Ljava/lang/Object;
.source "GraphicInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idk/simple/GraphicInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.idk.simple.GraphicInterface.TextureCacheUnit (com.idk.simple.GraphicInterface$TextureCacheUnit)
.class Lcom/idk/simple/GraphicInterface$TextureCacheUnit;
.super Ljava/lang/Object;
.source "GraphicInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idk/simple/GraphicInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextureCacheUnit"
.end annotation


# instance fields
.field texture:Lcom/idk/gl/Texture;

.field final synthetic this$0:Lcom/idk/simple/GraphicInterface;

.field use:I


# direct methods
.method private constructor <init>(Lcom/idk/simple/GraphicInterface;)V
    .registers 2

    .prologue
    .line 350
    iput-object p1, p0, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;->this$0:Lcom/idk/simple/GraphicInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/idk/simple/GraphicInterface;Lcom/idk/simple/GraphicInterface$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/idk/simple/GraphicInterface;
    .param p2, "x1"    # Lcom/idk/simple/GraphicInterface$1;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/idk/simple/GraphicInterface$TextureCacheUnit;-><init>(Lcom/idk/simple/GraphicInterface;)V

    return-void
.end method
