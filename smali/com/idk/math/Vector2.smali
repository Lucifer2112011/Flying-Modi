###### Class com.idk.math.Vector2 (com.idk.math.Vector2)
.class public Lcom/idk/math/Vector2;
.super Ljava/lang/Object;
.source "Vector2.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v0, p0, Lcom/idk/math/Vector2;->x:F

    .line 6
    iput v0, p0, Lcom/idk/math/Vector2;->y:F

    .line 10
    return-void
.end method

.method public constructor <init>(F)V
    .registers 3
    .param p1, "all"    # F

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v0, p0, Lcom/idk/math/Vector2;->x:F

    .line 6
    iput v0, p0, Lcom/idk/math/Vector2;->y:F

    .line 12
    invoke-virtual {p0, p1, p1}, Lcom/idk/math/Vector2;->set(FF)V

    .line 13
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 4
    .param p1, "vx"    # F
    .param p2, "vy"    # F

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v0, p0, Lcom/idk/math/Vector2;->x:F

    .line 6
    iput v0, p0, Lcom/idk/math/Vector2;->y:F

    .line 16
    iput p1, p0, Lcom/idk/math/Vector2;->x:F

    .line 17
    iput p2, p0, Lcom/idk/math/Vector2;->y:F

    .line 18
    return-void
.end method

.method public static DOWN()Lcom/idk/math/Vector2;
    .registers 3

    .prologue
    .line 55
    new-instance v0, Lcom/idk/math/Vector2;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v2}, Lcom/idk/math/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public static LEFT()Lcom/idk/math/Vector2;
    .registers 3

    .prologue
    .line 46
    new-instance v0, Lcom/idk/math/Vector2;

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idk/math/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public static RIGHT()Lcom/idk/math/Vector2;
    .registers 3

    .prologue
    .line 49
    new-instance v0, Lcom/idk/math/Vector2;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idk/math/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public static UP()Lcom/idk/math/Vector2;
    .registers 3

    .prologue
    .line 52
    new-instance v0, Lcom/idk/math/Vector2;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/idk/math/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public static ZERO()Lcom/idk/math/Vector2;
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 42
    new-instance v0, Lcom/idk/math/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/idk/math/Vector2;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/idk/math/Vector2;)Lcom/idk/math/Vector2;
    .registers 4
    .param p1, "b"    # Lcom/idk/math/Vector2;

    .prologue
    .line 59
    iget v0, p0, Lcom/idk/math/Vector2;->x:F

    iget v1, p1, Lcom/idk/math/Vector2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector2;->x:F

    .line 60
    iget v0, p0, Lcom/idk/math/Vector2;->y:F

    iget v1, p1, Lcom/idk/math/Vector2;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector2;->y:F

    .line 61
    return-object p0
.end method

.method public distance(Lcom/idk/math/Vector2;)F
    .registers 6
    .param p1, "next"    # Lcom/idk/math/Vector2;

    .prologue
    .line 24
    iget v2, p0, Lcom/idk/math/Vector2;->x:F

    iget v3, p1, Lcom/idk/math/Vector2;->x:F

    sub-float v0, v2, v3

    .line 25
    .local v0, "a":F
    iget v2, p0, Lcom/idk/math/Vector2;->y:F

    iget v3, p1, Lcom/idk/math/Vector2;->y:F

    sub-float v1, v2, v3

    .line 26
    .local v1, "b":F
    mul-float/2addr v0, v0

    .line 27
    mul-float/2addr v1, v1

    .line 28
    add-float v2, v0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public div(Lcom/idk/math/Vector2;)Lcom/idk/math/Vector2;
    .registers 4
    .param p1, "b"    # Lcom/idk/math/Vector2;

    .prologue
    .line 75
    iget v0, p0, Lcom/idk/math/Vector2;->x:F

    iget v1, p1, Lcom/idk/math/Vector2;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector2;->x:F

    .line 76
    iget v0, p0, Lcom/idk/math/Vector2;->y:F

    iget v1, p1, Lcom/idk/math/Vector2;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector2;->y:F

    .line 77
    return-object p0
.end method

.method public getLength()F
    .registers 5

    .prologue
    .line 31
    iget v0, p0, Lcom/idk/math/Vector2;->x:F

    .line 32
    .local v0, "a":F
    iget v1, p0, Lcom/idk/math/Vector2;->y:F

    .line 33
    .local v1, "b":F
    mul-float/2addr v0, v0

    .line 34
    mul-float/2addr v1, v1

    .line 35
    add-float v2, v0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public mul(Lcom/idk/math/Vector2;)Lcom/idk/math/Vector2;
    .registers 4
    .param p1, "b"    # Lcom/idk/math/Vector2;

    .prologue
    .line 70
    iget v0, p0, Lcom/idk/math/Vector2;->x:F

    iget v1, p1, Lcom/idk/math/Vector2;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector2;->x:F

    .line 71
    iget v0, p0, Lcom/idk/math/Vector2;->y:F

    iget v1, p1, Lcom/idk/math/Vector2;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector2;->y:F

    .line 72
    return-object p0
.end method

.method public normalize()Lcom/idk/math/Vector2;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public set(FF)V
    .registers 3
    .param p1, "vx"    # F
    .param p2, "vy"    # F

    .prologue
    .line 20
    iput p1, p0, Lcom/idk/math/Vector2;->x:F

    .line 21
    iput p2, p0, Lcom/idk/math/Vector2;->y:F

    .line 22
    return-void
.end method

.method public sub(Lcom/idk/math/Vector2;)Lcom/idk/math/Vector2;
    .registers 4
    .param p1, "b"    # Lcom/idk/math/Vector2;

    .prologue
    .line 65
    iget v0, p0, Lcom/idk/math/Vector2;->x:F

    iget v1, p1, Lcom/idk/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector2;->x:F

    .line 66
    iget v0, p0, Lcom/idk/math/Vector2;->y:F

    iget v1, p1, Lcom/idk/math/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector2;->y:F

    .line 67
    return-object p0
.end method

.method public toArray()[F
    .registers 4

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/idk/math/Vector2;->x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/idk/math/Vector2;->y:F

    aput v2, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/idk/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/idk/math/Vector2;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
