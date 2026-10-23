###### Class org.jbox2d.common.Vec3 (org.jbox2d.common.Vec3)
.class public Lorg/jbox2d/common/Vec3;
.super Ljava/lang/Object;
.source "Vec3.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lorg/jbox2d/common/Vec3;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/common/Vec3;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/common/Vec3;->z:F

    iput v0, p0, Lorg/jbox2d/common/Vec3;->y:F

    iput v0, p0, Lorg/jbox2d/common/Vec3;->x:F

    .line 38
    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4
    .param p1, "argX"    # F
    .param p2, "argY"    # F
    .param p3, "argZ"    # F

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lorg/jbox2d/common/Vec3;->x:F

    .line 42
    iput p2, p0, Lorg/jbox2d/common/Vec3;->y:F

    .line 43
    iput p3, p0, Lorg/jbox2d/common/Vec3;->z:F

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/common/Vec3;)V
    .registers 3
    .param p1, "argCopy"    # Lorg/jbox2d/common/Vec3;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget v0, p1, Lorg/jbox2d/common/Vec3;->x:F

    iput v0, p0, Lorg/jbox2d/common/Vec3;->x:F

    .line 48
    iget v0, p1, Lorg/jbox2d/common/Vec3;->y:F

    iput v0, p0, Lorg/jbox2d/common/Vec3;->y:F

    .line 49
    iget v0, p1, Lorg/jbox2d/common/Vec3;->z:F

    iput v0, p0, Lorg/jbox2d/common/Vec3;->z:F

    .line 50
    return-void
.end method

.method public static final cross(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)Lorg/jbox2d/common/Vec3;
    .registers 8
    .param p0, "a"    # Lorg/jbox2d/common/Vec3;
    .param p1, "b"    # Lorg/jbox2d/common/Vec3;

    .prologue
    .line 151
    new-instance v0, Lorg/jbox2d/common/Vec3;

    iget v1, p0, Lorg/jbox2d/common/Vec3;->y:F

    iget v2, p1, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Vec3;->z:F

    iget v3, p1, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Vec3;->z:F

    iget v3, p1, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/jbox2d/common/Vec3;->x:F

    iget v4, p1, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/jbox2d/common/Vec3;->x:F

    iget v4, p1, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v3, v4

    iget v4, p0, Lorg/jbox2d/common/Vec3;->y:F

    iget v5, p1, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/jbox2d/common/Vec3;-><init>(FFF)V

    return-object v0
.end method

.method public static final crossToOut(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V
    .registers 8
    .param p0, "a"    # Lorg/jbox2d/common/Vec3;
    .param p1, "b"    # Lorg/jbox2d/common/Vec3;
    .param p2, "out"    # Lorg/jbox2d/common/Vec3;

    .prologue
    .line 155
    iget v2, p0, Lorg/jbox2d/common/Vec3;->z:F

    iget v3, p1, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/jbox2d/common/Vec3;->x:F

    iget v4, p1, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 156
    .local v0, "tempy":F
    iget v2, p0, Lorg/jbox2d/common/Vec3;->x:F

    iget v3, p1, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/jbox2d/common/Vec3;->y:F

    iget v4, p1, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 157
    .local v1, "tempz":F
    iget v2, p0, Lorg/jbox2d/common/Vec3;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/jbox2d/common/Vec3;->z:F

    iget v4, p1, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p2, Lorg/jbox2d/common/Vec3;->x:F

    .line 158
    iput v0, p2, Lorg/jbox2d/common/Vec3;->y:F

    .line 159
    iput v1, p2, Lorg/jbox2d/common/Vec3;->z:F

    .line 160
    return-void
.end method

.method public static final crossToOutUnsafe(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V
    .registers 6
    .param p0, "a"    # Lorg/jbox2d/common/Vec3;
    .param p1, "b"    # Lorg/jbox2d/common/Vec3;
    .param p2, "out"    # Lorg/jbox2d/common/Vec3;

    .prologue
    .line 163
    sget-boolean v0, Lorg/jbox2d/common/Vec3;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p2, p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 164
    :cond_c
    sget-boolean v0, Lorg/jbox2d/common/Vec3;->$assertionsDisabled:Z

    if-nez v0, :cond_18

    if-ne p2, p0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 165
    :cond_18
    iget v0, p0, Lorg/jbox2d/common/Vec3;->y:F

    iget v1, p1, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Vec3;->z:F

    iget v2, p1, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec3;->x:F

    .line 166
    iget v0, p0, Lorg/jbox2d/common/Vec3;->z:F

    iget v1, p1, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Vec3;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec3;->y:F

    .line 167
    iget v0, p0, Lorg/jbox2d/common/Vec3;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Vec3;->y:F

    iget v2, p1, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec3;->z:F

    .line 168
    return-void
.end method

.method public static final dot(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)F
    .registers 5
    .param p0, "a"    # Lorg/jbox2d/common/Vec3;
    .param p1, "b"    # Lorg/jbox2d/common/Vec3;

    .prologue
    .line 147
    iget v0, p0, Lorg/jbox2d/common/Vec3;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Vec3;->y:F

    iget v2, p1, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Vec3;->z:F

    iget v2, p1, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public add(Lorg/jbox2d/common/Vec3;)Lorg/jbox2d/common/Vec3;
    .registers 7
    .param p1, "argVec"    # Lorg/jbox2d/common/Vec3;

    .prologue
    .line 74
    new-instance v0, Lorg/jbox2d/common/Vec3;

    iget v1, p0, Lorg/jbox2d/common/Vec3;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec3;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Vec3;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec3;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lorg/jbox2d/common/Vec3;->z:F

    iget v4, p1, Lorg/jbox2d/common/Vec3;->z:F

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/jbox2d/common/Vec3;-><init>(FFF)V

    return-object v0
.end method

.method public addLocal(Lorg/jbox2d/common/Vec3;)Lorg/jbox2d/common/Vec3;
    .registers 4
    .param p1, "argVec"    # Lorg/jbox2d/common/Vec3;

    .prologue
    .line 67
    iget v0, p0, Lorg/jbox2d/common/Vec3;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec3;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/common/Vec3;->x:F

    .line 68
    iget v0, p0, Lorg/jbox2d/common/Vec3;->y:F

    iget v1, p1, Lorg/jbox2d/common/Vec3;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/common/Vec3;->y:F

    .line 69
    iget v0, p0, Lorg/jbox2d/common/Vec3;->z:F

    iget v1, p1, Lorg/jbox2d/common/Vec3;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/common/Vec3;->z:F

    .line 70
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/jbox2d/common/Vec3;->clone()Lorg/jbox2d/common/Vec3;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jbox2d/common/Vec3;
    .registers 2

    .prologue
    .line 117
    new-instance v0, Lorg/jbox2d/common/Vec3;

    invoke-direct {v0, p0}, Lorg/jbox2d/common/Vec3;-><init>(Lorg/jbox2d/common/Vec3;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    if-ne p0, p1, :cond_5

    .line 143
    :cond_4
    :goto_4
    return v1

    .line 137
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    .line 138
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 139
    check-cast v0, Lorg/jbox2d/common/Vec3;

    .line 140
    .local v0, "other":Lorg/jbox2d/common/Vec3;
    iget v3, p0, Lorg/jbox2d/common/Vec3;->x:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lorg/jbox2d/common/Vec3;->x:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_28

    move v1, v2

    goto :goto_4

    .line 141
    :cond_28
    iget v3, p0, Lorg/jbox2d/common/Vec3;->y:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lorg/jbox2d/common/Vec3;->y:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_38

    move v1, v2

    goto :goto_4

    .line 142
    :cond_38
    iget v3, p0, Lorg/jbox2d/common/Vec3;->z:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lorg/jbox2d/common/Vec3;->z:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 126
    const/16 v0, 0x1f

    .line 127
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 128
    .local v1, "result":I
    iget v2, p0, Lorg/jbox2d/common/Vec3;->x:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 129
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/jbox2d/common/Vec3;->y:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 130
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/jbox2d/common/Vec3;->z:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 131
    return v1
.end method

.method public mul(F)Lorg/jbox2d/common/Vec3;
    .registers 6
    .param p1, "argScalar"    # F

    .prologue
    .line 96
    new-instance v0, Lorg/jbox2d/common/Vec3;

    iget v1, p0, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/jbox2d/common/Vec3;-><init>(FFF)V

    return-object v0
.end method

.method public mulLocal(F)Lorg/jbox2d/common/Vec3;
    .registers 3
    .param p1, "argScalar"    # F

    .prologue
    .line 89
    iget v0, p0, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/jbox2d/common/Vec3;->x:F

    .line 90
    iget v0, p0, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/jbox2d/common/Vec3;->y:F

    .line 91
    iget v0, p0, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/jbox2d/common/Vec3;->z:F

    .line 92
    return-object p0
.end method

.method public negate()Lorg/jbox2d/common/Vec3;
    .registers 5

    .prologue
    .line 100
    new-instance v0, Lorg/jbox2d/common/Vec3;

    iget v1, p0, Lorg/jbox2d/common/Vec3;->x:F

    neg-float v1, v1

    iget v2, p0, Lorg/jbox2d/common/Vec3;->y:F

    neg-float v2, v2

    iget v3, p0, Lorg/jbox2d/common/Vec3;->z:F

    neg-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jbox2d/common/Vec3;-><init>(FFF)V

    return-object v0
.end method

.method public negateLocal()Lorg/jbox2d/common/Vec3;
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lorg/jbox2d/common/Vec3;->x:F

    neg-float v0, v0

    iput v0, p0, Lorg/jbox2d/common/Vec3;->x:F

    .line 105
    iget v0, p0, Lorg/jbox2d/common/Vec3;->y:F

    neg-float v0, v0

    iput v0, p0, Lorg/jbox2d/common/Vec3;->y:F

    .line 106
    iget v0, p0, Lorg/jbox2d/common/Vec3;->z:F

    neg-float v0, v0

    iput v0, p0, Lorg/jbox2d/common/Vec3;->z:F

    .line 107
    return-object p0
.end method

.method public set(FFF)Lorg/jbox2d/common/Vec3;
    .registers 4
    .param p1, "argX"    # F
    .param p2, "argY"    # F
    .param p3, "argZ"    # F

    .prologue
    .line 60
    iput p1, p0, Lorg/jbox2d/common/Vec3;->x:F

    .line 61
    iput p2, p0, Lorg/jbox2d/common/Vec3;->y:F

    .line 62
    iput p3, p0, Lorg/jbox2d/common/Vec3;->z:F

    .line 63
    return-object p0
.end method

.method public set(Lorg/jbox2d/common/Vec3;)Lorg/jbox2d/common/Vec3;
    .registers 3
    .param p1, "argVec"    # Lorg/jbox2d/common/Vec3;

    .prologue
    .line 53
    iget v0, p1, Lorg/jbox2d/common/Vec3;->x:F

    iput v0, p0, Lorg/jbox2d/common/Vec3;->x:F

    .line 54
    iget v0, p1, Lorg/jbox2d/common/Vec3;->y:F

    iput v0, p0, Lorg/jbox2d/common/Vec3;->y:F

    .line 55
    iget v0, p1, Lorg/jbox2d/common/Vec3;->z:F

    iput v0, p0, Lorg/jbox2d/common/Vec3;->z:F

    .line 56
    return-object p0
.end method

.method public setZero()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lorg/jbox2d/common/Vec3;->x:F

    .line 112
    iput v0, p0, Lorg/jbox2d/common/Vec3;->y:F

    .line 113
    iput v0, p0, Lorg/jbox2d/common/Vec3;->z:F

    .line 114
    return-void
.end method

.method public sub(Lorg/jbox2d/common/Vec3;)Lorg/jbox2d/common/Vec3;
    .registers 7
    .param p1, "argVec"    # Lorg/jbox2d/common/Vec3;

    .prologue
    .line 85
    new-instance v0, Lorg/jbox2d/common/Vec3;

    iget v1, p0, Lorg/jbox2d/common/Vec3;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec3;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Vec3;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec3;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/jbox2d/common/Vec3;->z:F

    iget v4, p1, Lorg/jbox2d/common/Vec3;->z:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/jbox2d/common/Vec3;-><init>(FFF)V

    return-object v0
.end method

.method public subLocal(Lorg/jbox2d/common/Vec3;)Lorg/jbox2d/common/Vec3;
    .registers 4
    .param p1, "argVec"    # Lorg/jbox2d/common/Vec3;

    .prologue
    .line 78
    iget v0, p0, Lorg/jbox2d/common/Vec3;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec3;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/common/Vec3;->x:F

    .line 79
    iget v0, p0, Lorg/jbox2d/common/Vec3;->y:F

    iget v1, p1, Lorg/jbox2d/common/Vec3;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/common/Vec3;->y:F

    .line 80
    iget v0, p0, Lorg/jbox2d/common/Vec3;->z:F

    iget v1, p1, Lorg/jbox2d/common/Vec3;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/common/Vec3;->z:F

    .line 81
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jbox2d/common/Vec3;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jbox2d/common/Vec3;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jbox2d/common/Vec3;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
