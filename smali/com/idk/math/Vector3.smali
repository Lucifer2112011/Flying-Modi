###### Class com.idk.math.Vector3 (com.idk.math.Vector3)
.class public Lcom/idk/math/Vector3;
.super Ljava/lang/Object;
.source "Vector3.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(F)V
    .registers 2
    .param p1, "all"    # F

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0, p1, p1, p1}, Lcom/idk/math/Vector3;->set(FFF)V

    .line 14
    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4
    .param p1, "vx"    # F
    .param p2, "vy"    # F
    .param p3, "vz"    # F

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/idk/math/Vector3;->x:F

    .line 18
    iput p2, p0, Lcom/idk/math/Vector3;->y:F

    .line 19
    iput p3, p0, Lcom/idk/math/Vector3;->z:F

    .line 20
    return-void
.end method

.method public static BACKWARD()Lcom/idk/math/Vector3;
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/idk/math/Vector3;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v2, v2, v1}, Lcom/idk/math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static DOWN()Lcom/idk/math/Vector3;
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/idk/math/Vector3;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v2, v1, v2}, Lcom/idk/math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static FORWARD()Lcom/idk/math/Vector3;
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/idk/math/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Lcom/idk/math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static LEFT()Lcom/idk/math/Vector3;
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/idk/math/Vector3;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v2, v2}, Lcom/idk/math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static RIGHT()Lcom/idk/math/Vector3;
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/idk/math/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2}, Lcom/idk/math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static UP()Lcom/idk/math/Vector3;
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/idk/math/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v2}, Lcom/idk/math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static ZERO()Lcom/idk/math/Vector3;
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 49
    new-instance v0, Lcom/idk/math/Vector3;

    invoke-direct {v0, v1, v1, v1}, Lcom/idk/math/Vector3;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method public add(F)Lcom/idk/math/Vector3;
    .registers 3
    .param p1, "b"    # F

    .prologue
    .line 112
    iget v0, p0, Lcom/idk/math/Vector3;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/idk/math/Vector3;->x:F

    .line 113
    iget v0, p0, Lcom/idk/math/Vector3;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/idk/math/Vector3;->y:F

    .line 114
    iget v0, p0, Lcom/idk/math/Vector3;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/idk/math/Vector3;->z:F

    .line 115
    return-object p0
.end method

.method public add(Lcom/idk/math/Vector3;)Lcom/idk/math/Vector3;
    .registers 4
    .param p1, "b"    # Lcom/idk/math/Vector3;

    .prologue
    .line 77
    iget v0, p0, Lcom/idk/math/Vector3;->x:F

    iget v1, p1, Lcom/idk/math/Vector3;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector3;->x:F

    .line 78
    iget v0, p0, Lcom/idk/math/Vector3;->y:F

    iget v1, p1, Lcom/idk/math/Vector3;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector3;->y:F

    .line 79
    iget v0, p0, Lcom/idk/math/Vector3;->z:F

    iget v1, p1, Lcom/idk/math/Vector3;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector3;->z:F

    .line 80
    return-object p0
.end method

.method public copy()Lcom/idk/math/Vector3;
    .registers 5

    .prologue
    .line 165
    new-instance v0, Lcom/idk/math/Vector3;

    iget v1, p0, Lcom/idk/math/Vector3;->x:F

    iget v2, p0, Lcom/idk/math/Vector3;->y:F

    iget v3, p0, Lcom/idk/math/Vector3;->z:F

    invoke-direct {v0, v1, v2, v3}, Lcom/idk/math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public crossProduct(Lcom/idk/math/Vector3;)Lcom/idk/math/Vector3;
    .registers 8
    .param p1, "b"    # Lcom/idk/math/Vector3;

    .prologue
    .line 133
    new-instance v0, Lcom/idk/math/Vector3;

    iget v1, p0, Lcom/idk/math/Vector3;->y:F

    iget v2, p1, Lcom/idk/math/Vector3;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/idk/math/Vector3;->z:F

    iget v3, p1, Lcom/idk/math/Vector3;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/idk/math/Vector3;->z:F

    iget v3, p1, Lcom/idk/math/Vector3;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/idk/math/Vector3;->x:F

    iget v4, p1, Lcom/idk/math/Vector3;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/idk/math/Vector3;->x:F

    iget v4, p1, Lcom/idk/math/Vector3;->y:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/idk/math/Vector3;->y:F

    iget v5, p1, Lcom/idk/math/Vector3;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/idk/math/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public distance(Lcom/idk/math/Vector3;)F
    .registers 8
    .param p1, "next"    # Lcom/idk/math/Vector3;

    .prologue
    .line 35
    iget v3, p0, Lcom/idk/math/Vector3;->x:F

    iget v4, p1, Lcom/idk/math/Vector3;->x:F

    sub-float v0, v3, v4

    .line 36
    .local v0, "a":F
    iget v3, p0, Lcom/idk/math/Vector3;->y:F

    iget v4, p1, Lcom/idk/math/Vector3;->y:F

    sub-float v1, v3, v4

    .line 37
    .local v1, "b":F
    iget v3, p0, Lcom/idk/math/Vector3;->z:F

    iget v4, p1, Lcom/idk/math/Vector3;->z:F

    sub-float v2, v3, v4

    .line 38
    .local v2, "c":F
    mul-float/2addr v0, v0

    .line 39
    mul-float/2addr v1, v1

    .line 40
    mul-float/2addr v2, v2

    .line 41
    add-float v3, v0, v1

    add-float/2addr v3, v2

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method

.method public div(F)Lcom/idk/math/Vector3;
    .registers 3
    .param p1, "b"    # F

    .prologue
    .line 105
    iget v0, p0, Lcom/idk/math/Vector3;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/idk/math/Vector3;->x:F

    .line 106
    iget v0, p0, Lcom/idk/math/Vector3;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/idk/math/Vector3;->y:F

    .line 107
    iget v0, p0, Lcom/idk/math/Vector3;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/idk/math/Vector3;->z:F

    .line 108
    return-object p0
.end method

.method public div(Lcom/idk/math/Vector3;)Lcom/idk/math/Vector3;
    .registers 4
    .param p1, "b"    # Lcom/idk/math/Vector3;

    .prologue
    .line 126
    iget v0, p0, Lcom/idk/math/Vector3;->x:F

    iget v1, p1, Lcom/idk/math/Vector3;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector3;->x:F

    .line 127
    iget v0, p0, Lcom/idk/math/Vector3;->y:F

    iget v1, p1, Lcom/idk/math/Vector3;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector3;->y:F

    .line 128
    iget v0, p0, Lcom/idk/math/Vector3;->z:F

    iget v1, p1, Lcom/idk/math/Vector3;->z:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector3;->z:F

    .line 129
    return-object p0
.end method

.method public getDotProduct(Lcom/idk/math/Vector3;)F
    .registers 5
    .param p1, "b"    # Lcom/idk/math/Vector3;

    .prologue
    .line 45
    iget v0, p0, Lcom/idk/math/Vector3;->x:F

    iget v1, p1, Lcom/idk/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/idk/math/Vector3;->y:F

    iget v2, p1, Lcom/idk/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/idk/math/Vector3;->z:F

    iget v2, p1, Lcom/idk/math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getMagnitude()D
    .registers 4

    .prologue
    .line 151
    iget v0, p0, Lcom/idk/math/Vector3;->x:F

    iget v1, p0, Lcom/idk/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/idk/math/Vector3;->z:F

    iget v2, p0, Lcom/idk/math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/idk/math/Vector3;->y:F

    iget v2, p0, Lcom/idk/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSqrMagnitude()D
    .registers 4

    .prologue
    .line 147
    iget v0, p0, Lcom/idk/math/Vector3;->x:F

    iget v1, p0, Lcom/idk/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/idk/math/Vector3;->z:F

    iget v2, p0, Lcom/idk/math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/idk/math/Vector3;->y:F

    iget v2, p0, Lcom/idk/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public getValues()[F
    .registers 4

    .prologue
    .line 137
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/idk/math/Vector3;->x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/idk/math/Vector3;->y:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/idk/math/Vector3;->z:F

    aput v2, v0, v1

    return-object v0
.end method

.method public mul(F)Lcom/idk/math/Vector3;
    .registers 3
    .param p1, "b"    # F

    .prologue
    .line 98
    iget v0, p0, Lcom/idk/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/idk/math/Vector3;->x:F

    .line 99
    iget v0, p0, Lcom/idk/math/Vector3;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/idk/math/Vector3;->y:F

    .line 100
    iget v0, p0, Lcom/idk/math/Vector3;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/idk/math/Vector3;->z:F

    .line 101
    return-object p0
.end method

.method public mul(Lcom/idk/math/Vector3;)Lcom/idk/math/Vector3;
    .registers 4
    .param p1, "b"    # Lcom/idk/math/Vector3;

    .prologue
    .line 91
    iget v0, p0, Lcom/idk/math/Vector3;->x:F

    iget v1, p1, Lcom/idk/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector3;->x:F

    .line 92
    iget v0, p0, Lcom/idk/math/Vector3;->y:F

    iget v1, p1, Lcom/idk/math/Vector3;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector3;->y:F

    .line 93
    iget v0, p0, Lcom/idk/math/Vector3;->z:F

    iget v1, p1, Lcom/idk/math/Vector3;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector3;->z:F

    .line 94
    return-object p0
.end method

.method public normalized()Lcom/idk/math/Vector3;
    .registers 7

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/idk/math/Vector3;->getSqrMagnitude()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1e

    .line 156
    invoke-virtual {p0}, Lcom/idk/math/Vector3;->getMagnitude()D

    move-result-wide v2

    double-to-float v0, v2

    .line 157
    .local v0, "magnitude":F
    iget v1, p0, Lcom/idk/math/Vector3;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/idk/math/Vector3;->x:F

    .line 158
    iget v1, p0, Lcom/idk/math/Vector3;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/idk/math/Vector3;->y:F

    .line 159
    iget v1, p0, Lcom/idk/math/Vector3;->z:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/idk/math/Vector3;->z:F

    .line 161
    .end local v0    # "magnitude":F
    :cond_1e
    return-object p0
.end method

.method public set(FFF)V
    .registers 4
    .param p1, "vx"    # F
    .param p2, "vy"    # F
    .param p3, "vz"    # F

    .prologue
    .line 23
    iput p1, p0, Lcom/idk/math/Vector3;->x:F

    .line 24
    iput p2, p0, Lcom/idk/math/Vector3;->y:F

    .line 25
    iput p3, p0, Lcom/idk/math/Vector3;->z:F

    .line 26
    return-void
.end method

.method public set(Lcom/idk/math/Vector3;)V
    .registers 3
    .param p1, "v"    # Lcom/idk/math/Vector3;

    .prologue
    .line 29
    iget v0, p1, Lcom/idk/math/Vector3;->x:F

    iput v0, p0, Lcom/idk/math/Vector3;->x:F

    .line 30
    iget v0, p1, Lcom/idk/math/Vector3;->y:F

    iput v0, p0, Lcom/idk/math/Vector3;->y:F

    .line 31
    iget v0, p1, Lcom/idk/math/Vector3;->z:F

    iput v0, p0, Lcom/idk/math/Vector3;->z:F

    .line 32
    return-void
.end method

.method public setValue([FI)V
    .registers 4
    .param p1, "array"    # [F
    .param p2, "st"    # I

    .prologue
    .line 141
    aget v0, p1, p2

    iput v0, p0, Lcom/idk/math/Vector3;->x:F

    .line 142
    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/idk/math/Vector3;->y:F

    .line 143
    add-int/lit8 v0, p2, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/idk/math/Vector3;->z:F

    .line 144
    return-void
.end method

.method public sub(F)Lcom/idk/math/Vector3;
    .registers 3
    .param p1, "b"    # F

    .prologue
    .line 119
    iget v0, p0, Lcom/idk/math/Vector3;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/idk/math/Vector3;->x:F

    .line 120
    iget v0, p0, Lcom/idk/math/Vector3;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/idk/math/Vector3;->y:F

    .line 121
    iget v0, p0, Lcom/idk/math/Vector3;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/idk/math/Vector3;->z:F

    .line 122
    return-object p0
.end method

.method public sub(Lcom/idk/math/Vector3;)Lcom/idk/math/Vector3;
    .registers 4
    .param p1, "b"    # Lcom/idk/math/Vector3;

    .prologue
    .line 84
    iget v0, p0, Lcom/idk/math/Vector3;->x:F

    iget v1, p1, Lcom/idk/math/Vector3;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector3;->x:F

    .line 85
    iget v0, p0, Lcom/idk/math/Vector3;->y:F

    iget v1, p1, Lcom/idk/math/Vector3;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector3;->y:F

    .line 86
    iget v0, p0, Lcom/idk/math/Vector3;->z:F

    iget v1, p1, Lcom/idk/math/Vector3;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/idk/math/Vector3;->z:F

    .line 87
    return-object p0
.end method
