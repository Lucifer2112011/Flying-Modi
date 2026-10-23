###### Class com.idk.math.Matrix (com.idk.math.Matrix)
.class public Lcom/idk/math/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# instance fields
.field public final val:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/idk/math/Matrix;->val:[F

    .line 9
    invoke-virtual {p0}, Lcom/idk/math/Matrix;->reset()V

    .line 10
    return-void
.end method

.method public constructor <init>([F)V
    .registers 3
    .param p1, "data"    # [F

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/idk/math/Matrix;->val:[F

    .line 13
    invoke-virtual {p0, p1}, Lcom/idk/math/Matrix;->set([F)V

    .line 14
    return-void
.end method


# virtual methods
.method public inverse()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/idk/math/Matrix;->val:[F

    iget-object v1, p0, Lcom/idk/math/Matrix;->val:[F

    invoke-static {v0, v2, v1, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 52
    return-void
.end method

.method public multiply(Lcom/idk/math/Matrix;)V
    .registers 8
    .param p1, "mat2"    # Lcom/idk/math/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Lcom/idk/math/Matrix;->val:[F

    iget-object v2, p0, Lcom/idk/math/Matrix;->val:[F

    iget-object v4, p1, Lcom/idk/math/Matrix;->val:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 32
    return-void
.end method

.method public multiply(Lcom/idk/math/Vector4;)V
    .registers 8
    .param p1, "position"    # Lcom/idk/math/Vector4;

    .prologue
    const/4 v1, 0x0

    .line 58
    const/4 v2, 0x4

    new-array v0, v2, [F

    .line 59
    .local v0, "result":[F
    iget-object v2, p0, Lcom/idk/math/Matrix;->val:[F

    invoke-virtual {p1}, Lcom/idk/math/Vector4;->toArray()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 60
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/idk/math/Vector4;->set(FFFF)V

    .line 61
    return-void
.end method

.method public ortho(FFFFFF)V
    .registers 15
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "up"    # F
    .param p4, "down"    # F
    .param p5, "min"    # F
    .param p6, "max"    # F

    .prologue
    .line 67
    iget-object v0, p0, Lcom/idk/math/Matrix;->val:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 68
    return-void
.end method

.method public perspective(FFFF)V
    .registers 11
    .param p1, "fov"    # F
    .param p2, "aspect"    # F
    .param p3, "min"    # F
    .param p4, "max"    # F

    .prologue
    .line 63
    iget-object v0, p0, Lcom/idk/math/Matrix;->val:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 64
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/idk/math/Matrix;->val:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 72
    return-void
.end method

.method public rotate(FFFF)V
    .registers 11
    .param p1, "a"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 43
    iget-object v0, p0, Lcom/idk/math/Matrix;->val:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 44
    return-void
.end method

.method public scale(FFF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 39
    iget-object v0, p0, Lcom/idk/math/Matrix;->val:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 40
    return-void
.end method

.method public set([F)V
    .registers 6
    .param p1, "values"    # [F

    .prologue
    const/16 v3, 0x10

    .line 17
    array-length v1, p1

    if-ne v1, v3, :cond_11

    .line 18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v3, :cond_11

    .line 19
    iget-object v1, p0, Lcom/idk/math/Matrix;->val:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 22
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public setLookAt(Lcom/idk/math/Vector3;Lcom/idk/math/Vector3;Lcom/idk/math/Vector3;)V
    .registers 15
    .param p1, "position"    # Lcom/idk/math/Vector3;
    .param p2, "up"    # Lcom/idk/math/Vector3;
    .param p3, "forward"    # Lcom/idk/math/Vector3;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/idk/math/Matrix;->val:[F

    const/4 v1, 0x0

    iget v2, p3, Lcom/idk/math/Vector3;->x:F

    iget v3, p3, Lcom/idk/math/Vector3;->y:F

    iget v4, p3, Lcom/idk/math/Vector3;->z:F

    iget v5, p1, Lcom/idk/math/Vector3;->x:F

    iget v6, p1, Lcom/idk/math/Vector3;->y:F

    iget v7, p1, Lcom/idk/math/Vector3;->z:F

    iget v8, p2, Lcom/idk/math/Vector3;->x:F

    iget v9, p2, Lcom/idk/math/Vector3;->y:F

    iget v10, p2, Lcom/idk/math/Vector3;->z:F

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 28
    return-void
.end method

.method public setRotateEuler(FFF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 47
    iget-object v0, p0, Lcom/idk/math/Matrix;->val:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    .line 48
    return-void
.end method

.method public translate(FFF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 35
    iget-object v0, p0, Lcom/idk/math/Matrix;->val:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 36
    return-void
.end method

.method public transpose()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/idk/math/Matrix;->val:[F

    iget-object v1, p0, Lcom/idk/math/Matrix;->val:[F

    invoke-static {v0, v2, v1, v2}, Landroid/opengl/Matrix;->transposeM([FI[FI)V

    .line 56
    return-void
.end method
