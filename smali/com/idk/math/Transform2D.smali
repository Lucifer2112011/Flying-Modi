###### Class com.idk.math.Transform2D (com.idk.math.Transform2D)
.class public Lcom/idk/math/Transform2D;
.super Ljava/lang/Object;
.source "Transform2D.java"


# instance fields
.field public angle:F

.field public depth:F

.field private matrix:Lcom/idk/math/Matrix;

.field private matrix1:Lcom/idk/math/Matrix;

.field public position:Lcom/idk/math/Vector2;

.field public scale:Lcom/idk/math/Vector2;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, 0x41200000    # 10.0f

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/idk/math/Vector2;

    invoke-direct {v0}, Lcom/idk/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/idk/math/Transform2D;->angle:F

    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/idk/math/Transform2D;->depth:F

    .line 7
    new-instance v0, Lcom/idk/math/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/idk/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    .line 8
    new-instance v0, Lcom/idk/math/Matrix;

    invoke-direct {v0}, Lcom/idk/math/Matrix;-><init>()V

    iput-object v0, p0, Lcom/idk/math/Transform2D;->matrix:Lcom/idk/math/Matrix;

    .line 9
    new-instance v0, Lcom/idk/math/Matrix;

    invoke-direct {v0}, Lcom/idk/math/Matrix;-><init>()V

    iput-object v0, p0, Lcom/idk/math/Transform2D;->matrix1:Lcom/idk/math/Matrix;

    .line 12
    return-void
.end method


# virtual methods
.method public getMatrixArray()[F
    .registers 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 14
    iget-object v0, p0, Lcom/idk/math/Transform2D;->matrix:Lcom/idk/math/Matrix;

    invoke-virtual {v0}, Lcom/idk/math/Matrix;->reset()V

    .line 15
    iget-object v0, p0, Lcom/idk/math/Transform2D;->matrix1:Lcom/idk/math/Matrix;

    invoke-virtual {v0}, Lcom/idk/math/Matrix;->reset()V

    .line 16
    iget-object v0, p0, Lcom/idk/math/Transform2D;->matrix1:Lcom/idk/math/Matrix;

    iget v1, p0, Lcom/idk/math/Transform2D;->angle:F

    invoke-virtual {v0, v1, v2, v2, v4}, Lcom/idk/math/Matrix;->rotate(FFFF)V

    .line 17
    iget-object v0, p0, Lcom/idk/math/Transform2D;->matrix:Lcom/idk/math/Matrix;

    iget-object v1, p0, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v1, v1, Lcom/idk/math/Vector2;->x:F

    iget-object v2, p0, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v2, v2, Lcom/idk/math/Vector2;->y:F

    iget v3, p0, Lcom/idk/math/Transform2D;->depth:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/idk/math/Matrix;->translate(FFF)V

    .line 18
    iget-object v0, p0, Lcom/idk/math/Transform2D;->matrix:Lcom/idk/math/Matrix;

    iget-object v1, p0, Lcom/idk/math/Transform2D;->matrix1:Lcom/idk/math/Matrix;

    invoke-virtual {v0, v1}, Lcom/idk/math/Matrix;->multiply(Lcom/idk/math/Matrix;)V

    .line 19
    iget-object v0, p0, Lcom/idk/math/Transform2D;->matrix:Lcom/idk/math/Matrix;

    iget-object v1, p0, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v1, v1, Lcom/idk/math/Vector2;->x:F

    iget-object v2, p0, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    iget v2, v2, Lcom/idk/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v4}, Lcom/idk/math/Matrix;->scale(FFF)V

    .line 20
    iget-object v0, p0, Lcom/idk/math/Transform2D;->matrix:Lcom/idk/math/Matrix;

    iget-object v0, v0, Lcom/idk/math/Matrix;->val:[F

    return-object v0
.end method
