###### Class org.jbox2d.common.MathUtils (org.jbox2d.common.MathUtils)
.class public Lorg/jbox2d/common/MathUtils;
.super Lorg/jbox2d/common/PlatformMathUtils;
.source "MathUtils.java"


# static fields
.field public static final DEG2RAD:F = 0.017453292f

.field public static final HALF_PI:F = 1.5707964f

.field public static final INV_PI:F = 0.31830987f

.field public static final PI:F = 3.1415927f

.field public static final QUARTER_PI:F = 0.7853982f

.field public static final RAD2DEG:F = 57.295776f

.field public static final THREE_HALVES_PI:F = 4.712389f

.field public static final TWOPI:F = 6.2831855f

.field public static final sinLUT:[F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 72
    sget v1, Lorg/jbox2d/common/Settings;->SINCOS_LUT_LENGTH:I

    new-array v1, v1, [F

    sput-object v1, Lorg/jbox2d/common/MathUtils;->sinLUT:[F

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    sget v1, Lorg/jbox2d/common/Settings;->SINCOS_LUT_LENGTH:I

    if-ge v0, v1, :cond_1d

    .line 76
    sget-object v1, Lorg/jbox2d/common/MathUtils;->sinLUT:[F

    int-to-float v2, v0

    const v3, 0x38e6afcd    # 1.1E-4f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 78
    :cond_1d
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/jbox2d/common/PlatformMathUtils;-><init>()V

    return-void
.end method

.method public static final abs(F)F
    .registers 2
    .param p0, "x"    # F

    .prologue
    .line 126
    sget-boolean v0, Lorg/jbox2d/common/Settings;->FAST_ABS:Z

    if-eqz v0, :cond_c

    .line 127
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_a

    .line 129
    .end local p0    # "x":F
    :goto_9
    return p0

    .line 127
    .restart local p0    # "x":F
    :cond_a
    neg-float p0, p0

    goto :goto_9

    .line 129
    :cond_c
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    goto :goto_9
.end method

.method public static final abs(I)I
    .registers 3
    .param p0, "x"    # I

    .prologue
    .line 134
    shr-int/lit8 v0, p0, 0x1f

    .line 135
    .local v0, "y":I
    xor-int v1, p0, v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public static final atan2(FF)F
    .registers 6
    .param p0, "y"    # F
    .param p1, "x"    # F

    .prologue
    .line 248
    sget-boolean v0, Lorg/jbox2d/common/Settings;->FAST_ATAN2:Z

    if-eqz v0, :cond_9

    .line 249
    invoke-static {p0, p1}, Lorg/jbox2d/common/MathUtils;->fastAtan2(FF)F

    move-result v0

    .line 251
    :goto_8
    return v0

    :cond_9
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/StrictMath;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_8
.end method

.method public static final ceil(F)I
    .registers 5
    .param p0, "x"    # F

    .prologue
    .line 151
    sget-boolean v1, Lorg/jbox2d/common/Settings;->FAST_CEIL:Z

    if-eqz v1, :cond_12

    .line 152
    float-to-int v0, p0

    .line 153
    .local v0, "y":I
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_11

    int-to-float v1, v0

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_11

    .line 154
    add-int/lit8 v0, v0, 0x1

    .line 158
    .end local v0    # "y":I
    :cond_11
    :goto_11
    return v0

    :cond_12
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_11
.end method

.method public static final ceilPowerOf2(I)I
    .registers 2
    .param p0, "x"    # I

    .prologue
    .line 177
    const/4 v0, 0x1

    .line 178
    .local v0, "pow2":I
    :goto_1
    if-ge v0, p0, :cond_6

    .line 179
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_6
    return v0
.end method

.method public static final clamp(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 209
    invoke-static {p0, p2}, Lorg/jbox2d/common/MathUtils;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Lorg/jbox2d/common/MathUtils;->max(FF)F

    move-result v0

    return v0
.end method

.method public static final clamp(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 6
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "low"    # Lorg/jbox2d/common/Vec2;
    .param p2, "high"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 213
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 214
    .local v0, "min":Lorg/jbox2d/common/Vec2;
    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p2, Lorg/jbox2d/common/Vec2;->x:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_36

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    :goto_f
    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 215
    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p2, Lorg/jbox2d/common/Vec2;->y:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_39

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    :goto_1b
    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 216
    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, v0, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3c

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    :goto_27
    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 217
    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, v0, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3f

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    :goto_33
    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 218
    return-object v0

    .line 214
    :cond_36
    iget v1, p2, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_f

    .line 215
    :cond_39
    iget v1, p2, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_1b

    .line 216
    :cond_3c
    iget v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_27

    .line 217
    :cond_3f
    iget v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_33
.end method

.method public static final clampToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 6
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "low"    # Lorg/jbox2d/common/Vec2;
    .param p2, "high"    # Lorg/jbox2d/common/Vec2;
    .param p3, "dest"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 222
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p2, Lorg/jbox2d/common/Vec2;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_31

    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    :goto_a
    iput v0, p3, Lorg/jbox2d/common/Vec2;->x:F

    .line 223
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v1, p2, Lorg/jbox2d/common/Vec2;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_34

    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    :goto_16
    iput v0, p3, Lorg/jbox2d/common/Vec2;->y:F

    .line 224
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p3, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_37

    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    :goto_22
    iput v0, p3, Lorg/jbox2d/common/Vec2;->x:F

    .line 225
    iget v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget v1, p3, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3a

    iget v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    :goto_2e
    iput v0, p3, Lorg/jbox2d/common/Vec2;->y:F

    .line 226
    return-void

    .line 222
    :cond_31
    iget v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_a

    .line 223
    :cond_34
    iget v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_16

    .line 224
    :cond_37
    iget v0, p3, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_22

    .line 225
    :cond_3a
    iget v0, p3, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_2e
.end method

.method public static final cos(F)F
    .registers 3
    .param p0, "x"    # F

    .prologue
    .line 118
    sget-boolean v0, Lorg/jbox2d/common/Settings;->SINCOS_LUT_ENABLED:Z

    if-eqz v0, :cond_d

    .line 119
    const v0, 0x3fc90fdb

    sub-float/2addr v0, p0

    invoke-static {v0}, Lorg/jbox2d/common/MathUtils;->sinLUT(F)F

    move-result v0

    .line 121
    :goto_c
    return v0

    :cond_d
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_c
.end method

.method public static final distance(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F
    .registers 3
    .param p0, "v1"    # Lorg/jbox2d/common/Vec2;
    .param p1, "v2"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 306
    invoke-static {p0, p1}, Lorg/jbox2d/common/MathUtils;->distanceSquared(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    invoke-static {v0}, Lorg/jbox2d/common/MathUtils;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public static final distanceSquared(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F
    .registers 6
    .param p0, "v1"    # Lorg/jbox2d/common/Vec2;
    .param p1, "v2"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 300
    iget v2, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->x:F

    sub-float v0, v2, v3

    .line 301
    .local v0, "dx":F
    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    sub-float v1, v2, v3

    .line 302
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public static final fastAtan2(FF)F
    .registers 9
    .param p0, "y"    # F
    .param p1, "x"    # F

    .prologue
    const v0, 0x3fc90fdb

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3e8f5c29    # 0.28f

    const v4, 0x40490fdb    # (float)Math.PI

    const/4 v2, 0x0

    .line 256
    cmpl-float v3, p1, v2

    if-nez v3, :cond_1f

    .line 257
    cmpl-float v3, p0, v2

    if-lez v3, :cond_15

    .line 273
    :cond_14
    :goto_14
    return v0

    .line 258
    :cond_15
    cmpl-float v3, p0, v2

    if-nez v3, :cond_1b

    move v0, v2

    goto :goto_14

    .line 259
    :cond_1b
    const v0, -0x4036f025

    goto :goto_14

    .line 262
    :cond_1f
    div-float v1, p0, p1

    .line 263
    .local v1, "z":F
    invoke-static {v1}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_3b

    .line 264
    mul-float v3, v5, v1

    mul-float/2addr v3, v1

    add-float/2addr v3, v6

    div-float v0, v1, v3

    .line 265
    .local v0, "atan":F
    cmpg-float v3, p1, v2

    if-gez v3, :cond_14

    .line 266
    cmpg-float v2, p0, v2

    if-gez v2, :cond_39

    sub-float/2addr v0, v4

    goto :goto_14

    .line 267
    :cond_39
    add-float/2addr v0, v4

    goto :goto_14

    .line 270
    .end local v0    # "atan":F
    :cond_3b
    mul-float v3, v1, v1

    add-float/2addr v3, v5

    div-float v3, v1, v3

    sub-float/2addr v0, v3

    .line 271
    .restart local v0    # "atan":F
    cmpg-float v2, p0, v2

    if-gez v2, :cond_14

    sub-float/2addr v0, v4

    goto :goto_14
.end method

.method public static final floor(F)I
    .registers 5
    .param p0, "x"    # F

    .prologue
    .line 139
    sget-boolean v1, Lorg/jbox2d/common/Settings;->FAST_FLOOR:Z

    if-eqz v1, :cond_12

    .line 140
    float-to-int v0, p0

    .line 141
    .local v0, "y":I
    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_11

    int-to-float v1, v0

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_11

    .line 142
    add-int/lit8 v0, v0, -0x1

    .line 146
    .end local v0    # "y":I
    :cond_11
    :goto_11
    return v0

    :cond_12
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_11
.end method

.method public static final isPowerOfTwo(I)Z
    .registers 2
    .param p0, "x"    # I

    .prologue
    .line 244
    if-lez p0, :cond_9

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static final map(FFFFF)F
    .registers 9
    .param p0, "val"    # F
    .param p1, "fromMin"    # F
    .param p2, "fromMax"    # F
    .param p3, "toMin"    # F
    .param p4, "toMax"    # F

    .prologue
    .line 202
    sub-float v2, p0, p1

    sub-float v3, p2, p1

    div-float v0, v2, v3

    .line 203
    .local v0, "mult":F
    sub-float v2, p4, p3

    mul-float/2addr v2, v0

    add-float v1, p3, v2

    .line 204
    .local v1, "res":F
    return v1
.end method

.method public static final max(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 185
    cmpl-float v0, p0, p1

    if-lez v0, :cond_5

    .end local p0    # "a":F
    :goto_4
    return p0

    .restart local p0    # "a":F
    :cond_5
    move p0, p1

    goto :goto_4
.end method

.method public static final max(II)I
    .registers 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 189
    if-le p0, p1, :cond_3

    .end local p0    # "a":I
    :goto_2
    return p0

    .restart local p0    # "a":I
    :cond_3
    move p0, p1

    goto :goto_2
.end method

.method public static final min(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 193
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .end local p0    # "a":F
    :goto_4
    return p0

    .restart local p0    # "a":F
    :cond_5
    move p0, p1

    goto :goto_4
.end method

.method public static final min(II)I
    .registers 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 197
    if-ge p0, p1, :cond_3

    .end local p0    # "a":I
    :goto_2
    return p0

    .restart local p0    # "a":I
    :cond_3
    move p0, p1

    goto :goto_2
.end method

.method public static final nextPowerOfTwo(I)I
    .registers 2
    .param p0, "x"    # I

    .prologue
    .line 235
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 236
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 237
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 238
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 239
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 240
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static final randomFloat(FF)F
    .registers 4
    .param p0, "argLow"    # F
    .param p1, "argHigh"    # F

    .prologue
    .line 288
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static final randomFloat(Ljava/util/Random;FF)F
    .registers 5
    .param p0, "r"    # Ljava/util/Random;
    .param p1, "argLow"    # F
    .param p2, "argHigh"    # F

    .prologue
    .line 292
    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p2, p1

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public static final reduceAngle(F)F
    .registers 4
    .param p0, "theta"    # F

    .prologue
    const v1, 0x40c90fdb

    const v2, 0x40490fdb    # (float)Math.PI

    .line 277
    rem-float/2addr p0, v1

    .line 278
    invoke-static {p0}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_10

    .line 279
    sub-float/2addr p0, v1

    .line 281
    :cond_10
    invoke-static {p0}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v0

    const v1, 0x3fc90fdb

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    .line 282
    sub-float p0, v2, p0

    .line 284
    :cond_1d
    return p0
.end method

.method public static final round(F)I
    .registers 2
    .param p0, "x"    # F

    .prologue
    .line 163
    sget-boolean v0, Lorg/jbox2d/common/Settings;->FAST_ROUND:Z

    if-eqz v0, :cond_c

    .line 164
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    invoke-static {v0}, Lorg/jbox2d/common/MathUtils;->floor(F)I

    move-result v0

    .line 166
    :goto_b
    return v0

    :cond_c
    invoke-static {p0}, Ljava/lang/StrictMath;->round(F)I

    move-result v0

    goto :goto_b
.end method

.method public static final sin(F)F
    .registers 3
    .param p0, "x"    # F

    .prologue
    .line 81
    sget-boolean v0, Lorg/jbox2d/common/Settings;->SINCOS_LUT_ENABLED:Z

    if-eqz v0, :cond_9

    .line 82
    invoke-static {p0}, Lorg/jbox2d/common/MathUtils;->sinLUT(F)F

    move-result v0

    .line 84
    :goto_8
    return v0

    :cond_9
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_8
.end method

.method public static final sinLUT(F)F
    .registers 6
    .param p0, "x"    # F

    .prologue
    const v4, 0x40c90fdb

    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x38e6afcd    # 1.1E-4f

    .line 89
    rem-float/2addr p0, v4

    .line 91
    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_f

    .line 92
    add-float/2addr p0, v4

    .line 95
    :cond_f
    sget-boolean v1, Lorg/jbox2d/common/Settings;->SINCOS_LUT_LERP:Z

    if-eqz v1, :cond_3e

    .line 97
    div-float/2addr p0, v2

    .line 99
    float-to-int v0, p0

    .line 101
    .local v0, "index":I
    if-eqz v0, :cond_19

    .line 102
    int-to-float v1, v0

    rem-float/2addr p0, v1

    .line 106
    :cond_19
    sget v1, Lorg/jbox2d/common/Settings;->SINCOS_LUT_LENGTH:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2e

    .line 107
    sub-float v1, v3, p0

    sget-object v2, Lorg/jbox2d/common/MathUtils;->sinLUT:[F

    aget v2, v2, v0

    mul-float/2addr v1, v2

    sget-object v2, Lorg/jbox2d/common/MathUtils;->sinLUT:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    .line 113
    .end local v0    # "index":I
    :goto_2d
    return v1

    .line 109
    .restart local v0    # "index":I
    :cond_2e
    sub-float v1, v3, p0

    sget-object v2, Lorg/jbox2d/common/MathUtils;->sinLUT:[F

    aget v2, v2, v0

    mul-float/2addr v1, v2

    sget-object v2, Lorg/jbox2d/common/MathUtils;->sinLUT:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    goto :goto_2d

    .line 113
    .end local v0    # "index":I
    :cond_3e
    sget-object v1, Lorg/jbox2d/common/MathUtils;->sinLUT:[F

    div-float v2, p0, v2

    invoke-static {v2}, Lorg/jbox2d/common/MathUtils;->round(F)I

    move-result v2

    sget v3, Lorg/jbox2d/common/Settings;->SINCOS_LUT_LENGTH:I

    rem-int/2addr v2, v3

    aget v1, v1, v2

    goto :goto_2d
.end method

.method public static final sqrt(F)F
    .registers 3
    .param p0, "x"    # F

    .prologue
    .line 296
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
