###### Class com.idk.simple.OrthoCamera (com.idk.simple.OrthoCamera)
.class public Lcom/idk/simple/OrthoCamera;
.super Lcom/idk/core/ObjectModifier;
.source "OrthoCamera.java"

# interfaces
.implements Lcom/idk/core/StateListener;


# annotations
.annotation runtime Lcom/idk/core/Tag;
    value = "editable"
.end annotation


# instance fields
.field private bottom:F

.field private left:F

.field public offscreen:Z

.field public projection:Lcom/idk/math/Matrix;

.field public range:F

.field private right:F

.field private top:F

.field public viewMatrix:Lcom/idk/math/Matrix;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v1, -0x3d380000    # -100.0f

    .line 12
    invoke-direct {p0}, Lcom/idk/core/ObjectModifier;-><init>()V

    .line 14
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/idk/simple/OrthoCamera;->range:F

    .line 15
    iput v1, p0, Lcom/idk/simple/OrthoCamera;->left:F

    .line 16
    iput v2, p0, Lcom/idk/simple/OrthoCamera;->right:F

    .line 17
    iput v2, p0, Lcom/idk/simple/OrthoCamera;->top:F

    .line 18
    iput v1, p0, Lcom/idk/simple/OrthoCamera;->bottom:F

    .line 19
    new-instance v0, Lcom/idk/math/Matrix;

    invoke-direct {v0}, Lcom/idk/math/Matrix;-><init>()V

    iput-object v0, p0, Lcom/idk/simple/OrthoCamera;->projection:Lcom/idk/math/Matrix;

    .line 20
    new-instance v0, Lcom/idk/math/Matrix;

    invoke-direct {v0}, Lcom/idk/math/Matrix;-><init>()V

    iput-object v0, p0, Lcom/idk/simple/OrthoCamera;->viewMatrix:Lcom/idk/math/Matrix;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idk/simple/OrthoCamera;->offscreen:Z

    return-void
.end method


# virtual methods
.method public onDelete()V
    .registers 4

    .prologue
    .line 70
    iget-object v1, p0, Lcom/idk/simple/OrthoCamera;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    const-class v2, Lcom/idk/simple/GraphicInterface;

    invoke-virtual {v1, v2}, Lcom/idk/core/Scene;->getInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "gls":Ljava/util/List;, "Ljava/util/List<Lcom/idk/simple/GraphicInterface;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 72
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idk/simple/GraphicInterface;

    invoke-virtual {v1, p0}, Lcom/idk/simple/GraphicInterface;->removeCamera(Lcom/idk/simple/OrthoCamera;)V

    .line 74
    :cond_1a
    return-void
.end method

.method public onOrientationChange(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 60
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method

.method public onPreUpdate()V
    .registers 10

    .prologue
    .line 32
    iget-object v0, p0, Lcom/idk/simple/OrthoCamera;->targetObject:Lcom/idk/core/GameObject;

    iget-object v0, v0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v7, v0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    .line 33
    .local v7, "ins":Lcom/idk/core/EngineInterface;
    invoke-interface {v7}, Lcom/idk/core/EngineInterface;->getLastHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {v7}, Lcom/idk/core/EngineInterface;->getLastWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 34
    .local v8, "r":F
    iget v0, p0, Lcom/idk/simple/OrthoCamera;->range:F

    neg-float v0, v0

    iput v0, p0, Lcom/idk/simple/OrthoCamera;->left:F

    .line 35
    iget v0, p0, Lcom/idk/simple/OrthoCamera;->range:F

    iput v0, p0, Lcom/idk/simple/OrthoCamera;->right:F

    .line 36
    iget v0, p0, Lcom/idk/simple/OrthoCamera;->range:F

    mul-float/2addr v0, v8

    neg-float v0, v0

    iput v0, p0, Lcom/idk/simple/OrthoCamera;->top:F

    .line 37
    iget v0, p0, Lcom/idk/simple/OrthoCamera;->range:F

    mul-float/2addr v0, v8

    iput v0, p0, Lcom/idk/simple/OrthoCamera;->bottom:F

    .line 39
    iget-object v0, p0, Lcom/idk/simple/OrthoCamera;->viewMatrix:Lcom/idk/math/Matrix;

    invoke-virtual {v0}, Lcom/idk/math/Matrix;->reset()V

    .line 40
    iget-object v0, p0, Lcom/idk/simple/OrthoCamera;->viewMatrix:Lcom/idk/math/Matrix;

    iget-object v1, p0, Lcom/idk/simple/OrthoCamera;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v1, v1, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v1, v1, Lcom/idk/math/Vector2;->x:F

    iget-object v2, p0, Lcom/idk/simple/OrthoCamera;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v2, v2, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v2, v2, Lcom/idk/math/Vector2;->y:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/idk/math/Matrix;->translate(FFF)V

    .line 42
    iget-object v0, p0, Lcom/idk/simple/OrthoCamera;->viewMatrix:Lcom/idk/math/Matrix;

    invoke-virtual {v0}, Lcom/idk/math/Matrix;->inverse()V

    .line 43
    iget-object v0, p0, Lcom/idk/simple/OrthoCamera;->projection:Lcom/idk/math/Matrix;

    invoke-virtual {v0}, Lcom/idk/math/Matrix;->reset()V

    .line 44
    iget-object v0, p0, Lcom/idk/simple/OrthoCamera;->projection:Lcom/idk/math/Matrix;

    iget v1, p0, Lcom/idk/simple/OrthoCamera;->left:F

    iget v2, p0, Lcom/idk/simple/OrthoCamera;->right:F

    iget v3, p0, Lcom/idk/simple/OrthoCamera;->top:F

    iget v4, p0, Lcom/idk/simple/OrthoCamera;->bottom:F

    const/high16 v5, -0x3d380000    # -100.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual/range {v0 .. v6}, Lcom/idk/math/Matrix;->ortho(FFFFFF)V

    .line 45
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 55
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 24
    iget-object v1, p0, Lcom/idk/simple/OrthoCamera;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    const-class v2, Lcom/idk/simple/GraphicInterface;

    invoke-virtual {v1, v2}, Lcom/idk/core/Scene;->getInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 25
    .local v0, "gls":Ljava/util/List;, "Ljava/util/List<Lcom/idk/simple/GraphicInterface;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 26
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idk/simple/GraphicInterface;

    invoke-virtual {v1, p0}, Lcom/idk/simple/GraphicInterface;->registerCamera(Lcom/idk/simple/OrthoCamera;)V

    .line 28
    :cond_1a
    return-void
.end method

.method public onSurfaceChange(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 66
    return-void
.end method
