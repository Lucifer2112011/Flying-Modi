###### Class org.jbox2d.common.PlatformMathUtils (org.jbox2d.common.PlatformMathUtils)
.class Lorg/jbox2d/common/PlatformMathUtils;
.super Ljava/lang/Object;
.source "PlatformMathUtils.java"


# static fields
.field private static final INV_SHIFT23:F = 1.1920929E-7f

.field private static final SHIFT23:F = 8388608.0f


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fastPow(FF)F
    .registers 8
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    const/high16 v5, 0x42fe0000    # 127.0f

    const/4 v4, 0x0

    .line 36
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-float v0, v2

    .line 37
    .local v0, "x":F
    const/high16 v2, 0x34000000

    mul-float/2addr v0, v2

    .line 38
    sub-float/2addr v0, v5

    .line 39
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_3b

    float-to-int v2, v0

    :goto_11
    int-to-float v2, v2

    sub-float v1, v0, v2

    .line 40
    .local v1, "y":F
    mul-float v2, v1, v1

    sub-float v2, v1, v2

    const v3, 0x3eb17679    # 0.346607f

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    mul-float/2addr p1, v2

    .line 41
    cmpl-float v2, p1, v4

    if-ltz v2, :cond_3f

    float-to-int v2, p1

    :goto_23
    int-to-float v2, v2

    sub-float v1, p1, v2

    .line 42
    mul-float v2, v1, v1

    sub-float v2, v1, v2

    const v3, 0x3eadee78    # 0.33971f

    mul-float v1, v2, v3

    .line 43
    add-float v2, p1, v5

    sub-float/2addr v2, v1

    const/high16 v3, 0x4b000000    # 8388608.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2

    .line 39
    .end local v1    # "y":F
    :cond_3b
    float-to-int v2, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 41
    .restart local v1    # "y":F
    :cond_3f
    float-to-int v2, p1

    add-int/lit8 v2, v2, -0x1

    goto :goto_23
.end method
