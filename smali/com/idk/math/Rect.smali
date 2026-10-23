###### Class com.idk.math.Rect (com.idk.math.Rect)
.class public Lcom/idk/math/Rect;
.super Ljava/lang/Object;
.source "Rect.java"


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v0, p0, Lcom/idk/math/Rect;->top:F

    .line 5
    iput v0, p0, Lcom/idk/math/Rect;->bottom:F

    .line 6
    iput v0, p0, Lcom/idk/math/Rect;->left:F

    .line 7
    iput v0, p0, Lcom/idk/math/Rect;->right:F

    .line 15
    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 6
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "top"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v0, p0, Lcom/idk/math/Rect;->top:F

    .line 5
    iput v0, p0, Lcom/idk/math/Rect;->bottom:F

    .line 6
    iput v0, p0, Lcom/idk/math/Rect;->left:F

    .line 7
    iput v0, p0, Lcom/idk/math/Rect;->right:F

    .line 10
    iput p2, p0, Lcom/idk/math/Rect;->right:F

    .line 11
    iput p1, p0, Lcom/idk/math/Rect;->left:F

    .line 12
    iput p3, p0, Lcom/idk/math/Rect;->top:F

    .line 13
    iput p4, p0, Lcom/idk/math/Rect;->bottom:F

    .line 14
    return-void
.end method


# virtual methods
.method public copy()Lcom/idk/math/Rect;
    .registers 6

    .prologue
    .line 29
    new-instance v0, Lcom/idk/math/Rect;

    iget v1, p0, Lcom/idk/math/Rect;->left:F

    iget v2, p0, Lcom/idk/math/Rect;->right:F

    iget v3, p0, Lcom/idk/math/Rect;->top:F

    iget v4, p0, Lcom/idk/math/Rect;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/idk/math/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public getCenter()Lcom/idk/math/Vector2;
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()Lcom/idk/math/Vector2;
    .registers 6

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 32
    new-instance v0, Lcom/idk/math/Vector2;

    iget v1, p0, Lcom/idk/math/Rect;->left:F

    iget v2, p0, Lcom/idk/math/Rect;->right:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/idk/math/Rect;->top:F

    iget v3, p0, Lcom/idk/math/Rect;->bottom:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Lcom/idk/math/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public getSize()Lcom/idk/math/Vector2;
    .registers 6

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 35
    new-instance v0, Lcom/idk/math/Vector2;

    iget v1, p0, Lcom/idk/math/Rect;->right:F

    iget v2, p0, Lcom/idk/math/Rect;->left:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/idk/math/Rect;->top:F

    iget v3, p0, Lcom/idk/math/Rect;->bottom:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Lcom/idk/math/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public isInside(Lcom/idk/math/Vector2;)Z
    .registers 4
    .param p1, "vector2"    # Lcom/idk/math/Vector2;

    .prologue
    .line 18
    iget v0, p1, Lcom/idk/math/Vector2;->x:F

    iget v1, p0, Lcom/idk/math/Rect;->left:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_22

    iget v0, p1, Lcom/idk/math/Vector2;->x:F

    iget v1, p0, Lcom/idk/math/Rect;->right:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_22

    .line 19
    iget v0, p1, Lcom/idk/math/Vector2;->y:F

    iget v1, p0, Lcom/idk/math/Rect;->bottom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_22

    iget v0, p1, Lcom/idk/math/Vector2;->y:F

    iget v1, p0, Lcom/idk/math/Rect;->top:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_22

    .line 20
    const/4 v0, 0x1

    .line 23
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method
