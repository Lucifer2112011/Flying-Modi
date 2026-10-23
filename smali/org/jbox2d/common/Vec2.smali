###### Class org.jbox2d.common.Vec2 (org.jbox2d.common.Vec2)
.class public Lorg/jbox2d/common/Vec2;
.super Ljava/lang/Object;
.source "Vec2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/common/Vec2;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0, v0}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 38
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 42
    iput p2, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "toCopy"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 46
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    invoke-direct {p0, v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 47
    return-void
.end method

.method public static final abs(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 4
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 191
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    invoke-static {v1}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v1

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-static {v2}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public static final absToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 3
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 195
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    invoke-static {v0}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v0

    iput v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    .line 196
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-static {v0}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v0

    iput v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    .line 197
    return-void
.end method

.method public static final cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F
    .registers 5
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "b"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 204
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static final cross(FLorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 5
    .param p0, "s"    # F
    .param p1, "a"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 224
    new-instance v0, Lorg/jbox2d/common/Vec2;

    neg-float v1, p0

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, p0

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public static final cross(Lorg/jbox2d/common/Vec2;F)Lorg/jbox2d/common/Vec2;
    .registers 6
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "s"    # F

    .prologue
    .line 208
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, p1

    neg-float v2, p1

    iget v3, p0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public static final crossToOut(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 6
    .param p0, "s"    # F
    .param p1, "a"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 228
    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v0, p0, v1

    .line 229
    .local v0, "tempY":F
    neg-float v1, p0

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    iput v1, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 230
    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 231
    return-void
.end method

.method public static final crossToOut(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;)V
    .registers 6
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "s"    # F
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 212
    neg-float v1, p1

    iget v2, p0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v0, v1, v2

    .line 213
    .local v0, "tempy":F
    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, p1

    iput v1, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 214
    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 215
    return-void
.end method

.method public static final crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p0, "s"    # F
    .param p1, "a"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 234
    sget-boolean v0, Lorg/jbox2d/common/Vec2;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p2, p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 235
    :cond_c
    neg-float v0, p0

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 236
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 237
    return-void
.end method

.method public static final crossToOutUnsafe(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "s"    # F
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 218
    sget-boolean v0, Lorg/jbox2d/common/Vec2;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p2, p0, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 219
    :cond_c
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v0, p1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 220
    neg-float v0, p1

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 221
    return-void
.end method

.method public static final dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F
    .registers 5
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "b"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 200
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static final max(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 6
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "b"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 249
    new-instance v2, Lorg/jbox2d/common/Vec2;

    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    :goto_c
    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1d

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    :goto_16
    invoke-direct {v2, v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v2

    :cond_1a
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_c

    :cond_1d
    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_16
.end method

.method public static final maxToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "b"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 258
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    :goto_a
    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 259
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    :goto_16
    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 260
    return-void

    .line 258
    :cond_19
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_a

    .line 259
    :cond_1c
    iget v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_16
.end method

.method public static final min(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 6
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "b"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 245
    new-instance v2, Lorg/jbox2d/common/Vec2;

    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    :goto_c
    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1d

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    :goto_16
    invoke-direct {v2, v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v2

    :cond_1a
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_c

    :cond_1d
    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_16
.end method

.method public static final minToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "b"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 253
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_19

    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    :goto_a
    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 254
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    :goto_16
    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 255
    return-void

    .line 253
    :cond_19
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_a

    .line 254
    :cond_1c
    iget v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_16
.end method

.method public static final negateToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 3
    .param p0, "a"    # Lorg/jbox2d/common/Vec2;
    .param p1, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 240
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    neg-float v0, v0

    iput v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    .line 241
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    neg-float v0, v0

    iput v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    .line 242
    return-void
.end method


# virtual methods
.method public final abs()Lorg/jbox2d/common/Vec2;
    .registers 4

    .prologue
    .line 167
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    invoke-static {v1}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v1

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-static {v2}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public final absLocal()V
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    invoke-static {v0}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v0

    iput v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 172
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-static {v0}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v0

    iput v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 173
    return-void
.end method

.method public final add(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 6
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 71
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public final addLocal(FF)Lorg/jbox2d/common/Vec2;
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 107
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 108
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 109
    return-object p0
.end method

.method public final addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 4
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 100
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 101
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 102
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
    invoke-virtual {p0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/jbox2d/common/Vec2;
    .registers 4

    .prologue
    .line 178
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    if-ne p0, p1, :cond_5

    .line 285
    :cond_4
    :goto_4
    return v1

    .line 280
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    .line 281
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

    .line 282
    check-cast v0, Lorg/jbox2d/common/Vec2;

    .line 283
    .local v0, "other":Lorg/jbox2d/common/Vec2;
    iget v3, p0, Lorg/jbox2d/common/Vec2;->x:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lorg/jbox2d/common/Vec2;->x:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_28

    move v1, v2

    goto :goto_4

    .line 284
    :cond_28
    iget v3, p0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 267
    const/16 v0, 0x1f

    .line 268
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 269
    .local v1, "result":I
    iget v2, p0, Lorg/jbox2d/common/Vec2;->x:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 270
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 271
    return v1
.end method

.method public final isValid()Z
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_22

    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_22

    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_22

    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public final length()F
    .registers 4

    .prologue
    .line 139
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Lorg/jbox2d/common/MathUtils;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public final lengthSquared()F
    .registers 4

    .prologue
    .line 144
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final mul(F)Lorg/jbox2d/common/Vec2;
    .registers 5
    .param p1, "a"    # F

    .prologue
    .line 83
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public final mulLocal(F)Lorg/jbox2d/common/Vec2;
    .registers 3
    .param p1, "a"    # F

    .prologue
    .line 121
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 122
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 123
    return-object p0
.end method

.method public final negate()Lorg/jbox2d/common/Vec2;
    .registers 4

    .prologue
    .line 88
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    neg-float v1, v1

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    neg-float v2, v2

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public final negateLocal()Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    neg-float v0, v0

    iput v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 94
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    neg-float v0, v0

    iput v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 95
    return-object p0
.end method

.method public final normalize()F
    .registers 4

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/jbox2d/common/Vec2;->length()F

    move-result v1

    .line 150
    .local v1, "length":F
    const/high16 v2, 0x34000000

    cmpg-float v2, v1, v2

    if-gez v2, :cond_c

    .line 151
    const/4 v1, 0x0

    .line 157
    .end local v1    # "length":F
    :goto_b
    return v1

    .line 154
    .restart local v1    # "length":F
    :cond_c
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v1

    .line 155
    .local v0, "invLength":F
    iget v2, p0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v0

    iput v2, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 156
    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v0

    iput v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_b
.end method

.method public final set(FF)Lorg/jbox2d/common/Vec2;
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 57
    iput p1, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 58
    iput p2, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 59
    return-object p0
.end method

.method public final set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 3
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 64
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    iput v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 65
    iget v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    iput v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 66
    return-object p0
.end method

.method public final setZero()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 52
    iput v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 53
    return-void
.end method

.method public final skew()Lorg/jbox2d/common/Vec2;
    .registers 4

    .prologue
    .line 128
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    neg-float v1, v1

    iget v2, p0, Lorg/jbox2d/common/Vec2;->x:F

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public final skew(Lorg/jbox2d/common/Vec2;)V
    .registers 3
    .param p1, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 133
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    neg-float v0, v0

    iput v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    .line 134
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iput v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    .line 135
    return-void
.end method

.method public final sub(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 6
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 78
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public final subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 4
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 114
    iget v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/common/Vec2;->x:F

    .line 115
    iget v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/common/Vec2;->y:F

    .line 116
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jbox2d/common/Vec2;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jbox2d/common/Vec2;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
