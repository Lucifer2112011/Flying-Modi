###### Class org.jbox2d.common.Mat22 (org.jbox2d.common.Mat22)
.class public Lorg/jbox2d/common/Mat22;
.super Ljava/lang/Object;
.source "Mat22.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field public final ex:Lorg/jbox2d/common/Vec2;

.field public final ey:Lorg/jbox2d/common/Vec2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lorg/jbox2d/common/Mat22;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/common/Mat22;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    .line 51
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    .line 52
    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 6
    .param p1, "exx"    # F
    .param p2, "col2x"    # F
    .param p3, "exy"    # F
    .param p4, "col2y"    # F

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, p1, p3}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    .line 75
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, p2, p4}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    iput-object v0, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "c1"    # Lorg/jbox2d/common/Vec2;
    .param p2, "c2"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    .line 62
    invoke-virtual {p2}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    .line 63
    return-void
.end method

.method public static final abs(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .registers 2
    .param p0, "R"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/jbox2d/common/Mat22;->abs()Lorg/jbox2d/common/Mat22;

    move-result-object v0

    return-object v0
.end method

.method public static absToOut(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;)V
    .registers 4
    .param p0, "R"    # Lorg/jbox2d/common/Mat22;
    .param p1, "out"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 230
    iget-object v0, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    invoke-static {v1}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v1

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 231
    iget-object v0, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    invoke-static {v1}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v1

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 232
    iget-object v0, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    invoke-static {v1}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v1

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 233
    iget-object v0, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    invoke-static {v1}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v1

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 234
    return-void
.end method

.method public static final createRotationalTransform(F)Lorg/jbox2d/common/Mat22;
    .registers 6
    .param p0, "angle"    # F

    .prologue
    .line 528
    new-instance v1, Lorg/jbox2d/common/Mat22;

    invoke-direct {v1}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 529
    .local v1, "mat":Lorg/jbox2d/common/Mat22;
    invoke-static {p0}, Lorg/jbox2d/common/MathUtils;->cos(F)F

    move-result v0

    .line 530
    .local v0, "c":F
    invoke-static {p0}, Lorg/jbox2d/common/MathUtils;->sin(F)F

    move-result v2

    .line 531
    .local v2, "s":F
    iget-object v3, v1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v0, v3, Lorg/jbox2d/common/Vec2;->x:F

    .line 532
    iget-object v3, v1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    neg-float v4, v2

    iput v4, v3, Lorg/jbox2d/common/Vec2;->x:F

    .line 533
    iget-object v3, v1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v2, v3, Lorg/jbox2d/common/Vec2;->y:F

    .line 534
    iget-object v3, v1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput v0, v3, Lorg/jbox2d/common/Vec2;->y:F

    .line 535
    return-object v1
.end method

.method public static final createRotationalTransform(FLorg/jbox2d/common/Mat22;)V
    .registers 6
    .param p0, "angle"    # F
    .param p1, "out"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 539
    invoke-static {p0}, Lorg/jbox2d/common/MathUtils;->cos(F)F

    move-result v0

    .line 540
    .local v0, "c":F
    invoke-static {p0}, Lorg/jbox2d/common/MathUtils;->sin(F)F

    move-result v1

    .line 541
    .local v1, "s":F
    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v0, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 542
    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    neg-float v3, v1

    iput v3, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 543
    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v1, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 544
    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput v0, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 545
    return-void
.end method

.method public static final createScaleTransform(F)Lorg/jbox2d/common/Mat22;
    .registers 3
    .param p0, "scale"    # F

    .prologue
    .line 548
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 549
    .local v0, "mat":Lorg/jbox2d/common/Mat22;
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput p0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 550
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput p0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 551
    return-object v0
.end method

.method public static final createScaleTransform(FLorg/jbox2d/common/Mat22;)V
    .registers 3
    .param p0, "scale"    # F
    .param p1, "out"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 555
    iget-object v0, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput p0, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 556
    iget-object v0, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput p0, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 557
    return-void
.end method

.method public static final mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .registers 7
    .param p0, "A"    # Lorg/jbox2d/common/Mat22;
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 453
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 454
    .local v0, "C":Lorg/jbox2d/common/Mat22;
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v4, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 455
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 456
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v4, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 457
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 458
    return-object v0
.end method

.method public static final mul(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 7
    .param p0, "R"    # Lorg/jbox2d/common/Mat22;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 436
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget v4, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public static final mulToOut(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;)V
    .registers 10
    .param p0, "A"    # Lorg/jbox2d/common/Mat22;
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;
    .param p2, "out"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 462
    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v6, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 463
    .local v2, "tempy1":F
    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v6, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float v0, v4, v5

    .line 464
    .local v0, "tempx1":F
    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v6, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 465
    .local v3, "tempy2":F
    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v6, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 466
    .local v1, "tempx2":F
    iget-object v4, p2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 467
    iget-object v4, p2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v2, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 468
    iget-object v4, p2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput v1, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 469
    iget-object v4, p2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput v3, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 470
    return-void
.end method

.method public static final mulToOut(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 7
    .param p0, "R"    # Lorg/jbox2d/common/Mat22;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 440
    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 441
    .local v0, "tempy":F
    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 442
    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 443
    return-void
.end method

.method public static final mulToOutUnsafe(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;)V
    .registers 7
    .param p0, "A"    # Lorg/jbox2d/common/Mat22;
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;
    .param p2, "out"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 473
    sget-boolean v0, Lorg/jbox2d/common/Mat22;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p2, p0, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 474
    :cond_c
    sget-boolean v0, Lorg/jbox2d/common/Mat22;->$assertionsDisabled:Z

    if-nez v0, :cond_18

    if-ne p2, p1, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 475
    :cond_18
    iget-object v0, p2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 476
    iget-object v0, p2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 477
    iget-object v0, p2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 478
    iget-object v0, p2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 479
    return-void
.end method

.method public static final mulToOutUnsafe(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 6
    .param p0, "R"    # Lorg/jbox2d/common/Mat22;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 446
    sget-boolean v0, Lorg/jbox2d/common/Mat22;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p1, p2, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 447
    :cond_c
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 448
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 449
    return-void
.end method

.method public static final mulTrans(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .registers 7
    .param p0, "A"    # Lorg/jbox2d/common/Mat22;
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 498
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 499
    .local v0, "C":Lorg/jbox2d/common/Mat22;
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 500
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 501
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 502
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 503
    return-object v0
.end method

.method public static final mulTrans(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 7
    .param p0, "R"    # Lorg/jbox2d/common/Mat22;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 482
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public static final mulTransToOut(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;)V
    .registers 10
    .param p0, "A"    # Lorg/jbox2d/common/Mat22;
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;
    .param p2, "out"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 507
    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v6, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float v0, v4, v5

    .line 508
    .local v0, "x1":F
    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v6, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 509
    .local v2, "y1":F
    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v6, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 510
    .local v1, "x2":F
    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v6, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 512
    .local v3, "y2":F
    iget-object v4, p2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 513
    iget-object v4, p2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v2, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 514
    iget-object v4, p2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput v1, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 515
    iget-object v4, p2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput v3, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 516
    return-void
.end method

.method public static final mulTransToOut(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 7
    .param p0, "R"    # Lorg/jbox2d/common/Mat22;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 486
    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 487
    .local v0, "outx":F
    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 488
    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 489
    return-void
.end method

.method public static final mulTransToOutUnsafe(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;)V
    .registers 7
    .param p0, "A"    # Lorg/jbox2d/common/Mat22;
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;
    .param p2, "out"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 519
    sget-boolean v0, Lorg/jbox2d/common/Mat22;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p0, p2, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 520
    :cond_c
    sget-boolean v0, Lorg/jbox2d/common/Mat22;->$assertionsDisabled:Z

    if-nez v0, :cond_18

    if-ne p1, p2, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 521
    :cond_18
    iget-object v0, p2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 522
    iget-object v0, p2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 523
    iget-object v0, p2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 524
    iget-object v0, p2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 525
    return-void
.end method

.method public static final mulTransToOutUnsafe(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 6
    .param p0, "R"    # Lorg/jbox2d/common/Mat22;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 492
    sget-boolean v0, Lorg/jbox2d/common/Mat22;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p2, p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 493
    :cond_c
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 494
    iget v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 495
    return-void
.end method


# virtual methods
.method public final abs()Lorg/jbox2d/common/Mat22;
    .registers 6

    .prologue
    .line 209
    new-instance v0, Lorg/jbox2d/common/Mat22;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    invoke-static {v1}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v1

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    invoke-static {v2}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v2

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    invoke-static {v3}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v3

    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    invoke-static {v4}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jbox2d/common/Mat22;-><init>(FFFF)V

    return-object v0
.end method

.method public final absLocal()V
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->absLocal()V

    .line 216
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->absLocal()V

    .line 217
    return-void
.end method

.method public final add(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .registers 6
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 384
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 385
    .local v0, "m":Lorg/jbox2d/common/Mat22;
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 386
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 387
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 388
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 389
    return-object v0
.end method

.method public final addLocal(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .registers 5
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 401
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 402
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 403
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 404
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 405
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
    invoke-virtual {p0}, Lorg/jbox2d/common/Mat22;->clone()Lorg/jbox2d/common/Mat22;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/jbox2d/common/Mat22;
    .registers 4

    .prologue
    .line 104
    new-instance v0, Lorg/jbox2d/common/Mat22;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Mat22;-><init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 570
    if-ne p0, p1, :cond_5

    .line 580
    :cond_4
    :goto_4
    return v1

    .line 571
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    .line 572
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

    .line 573
    check-cast v0, Lorg/jbox2d/common/Mat22;

    .line 574
    .local v0, "other":Lorg/jbox2d/common/Mat22;
    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    if-nez v3, :cond_22

    .line 575
    iget-object v3, v0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    if-eqz v3, :cond_2e

    move v1, v2

    goto :goto_4

    .line 576
    :cond_22
    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v4, v0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3, v4}, Lorg/jbox2d/common/Vec2;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    move v1, v2

    goto :goto_4

    .line 577
    :cond_2e
    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    if-nez v3, :cond_38

    .line 578
    iget-object v3, v0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    .line 579
    :cond_38
    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v4, v0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3, v4}, Lorg/jbox2d/common/Vec2;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public final getAngle()F
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    invoke-static {v0, v1}, Lorg/jbox2d/common/MathUtils;->atan2(FF)F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 561
    const/16 v0, 0x1f

    .line 562
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 563
    .local v1, "result":I
    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    if-nez v2, :cond_14

    move v2, v3

    :goto_9
    add-int/lit8 v1, v2, 0x1f

    .line 564
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    if-nez v4, :cond_1b

    :goto_11
    add-int v1, v2, v3

    .line 565
    return v1

    .line 563
    :cond_14
    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec2;->hashCode()I

    move-result v2

    goto :goto_9

    .line 564
    :cond_1b
    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3}, Lorg/jbox2d/common/Vec2;->hashCode()I

    move-result v3

    goto :goto_11
.end method

.method public final invert()Lorg/jbox2d/common/Mat22;
    .registers 9

    .prologue
    .line 164
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v6, Lorg/jbox2d/common/Vec2;->x:F

    .local v1, "a":F
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v6, Lorg/jbox2d/common/Vec2;->x:F

    .local v2, "b":F
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v6, Lorg/jbox2d/common/Vec2;->y:F

    .local v3, "c":F
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v4, v6, Lorg/jbox2d/common/Vec2;->y:F

    .line 165
    .local v4, "d":F
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 166
    .local v0, "B":Lorg/jbox2d/common/Mat22;
    mul-float v6, v1, v4

    mul-float v7, v2, v3

    sub-float v5, v6, v7

    .line 167
    .local v5, "det":F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_24

    .line 168
    const/high16 v6, 0x3f800000    # 1.0f

    div-float v5, v6, v5

    .line 170
    :cond_24
    iget-object v6, v0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    mul-float v7, v5, v4

    iput v7, v6, Lorg/jbox2d/common/Vec2;->x:F

    .line 171
    iget-object v6, v0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    neg-float v7, v5

    mul-float/2addr v7, v2

    iput v7, v6, Lorg/jbox2d/common/Vec2;->x:F

    .line 172
    iget-object v6, v0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    neg-float v7, v5

    mul-float/2addr v7, v3

    iput v7, v6, Lorg/jbox2d/common/Vec2;->y:F

    .line 173
    iget-object v6, v0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    mul-float v7, v5, v1

    iput v7, v6, Lorg/jbox2d/common/Vec2;->y:F

    .line 174
    return-object v0
.end method

.method public final invertLocal()Lorg/jbox2d/common/Mat22;
    .registers 8

    .prologue
    .line 178
    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    .local v0, "a":F
    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v5, Lorg/jbox2d/common/Vec2;->x:F

    .local v1, "b":F
    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v5, Lorg/jbox2d/common/Vec2;->y:F

    .local v2, "c":F
    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 179
    .local v3, "d":F
    mul-float v5, v0, v3

    mul-float v6, v1, v2

    sub-float v4, v5, v6

    .line 180
    .local v4, "det":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_1f

    .line 181
    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, v5, v4

    .line 183
    :cond_1f
    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    mul-float v6, v4, v3

    iput v6, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 184
    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    neg-float v6, v4

    mul-float/2addr v6, v1

    iput v6, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 185
    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    neg-float v6, v4

    mul-float/2addr v6, v2

    iput v6, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 186
    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    mul-float v6, v4, v0

    iput v6, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 187
    return-object p0
.end method

.method public final invertToOut(Lorg/jbox2d/common/Mat22;)V
    .registers 9
    .param p1, "out"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 191
    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    .local v0, "a":F
    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v5, Lorg/jbox2d/common/Vec2;->x:F

    .local v1, "b":F
    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v5, Lorg/jbox2d/common/Vec2;->y:F

    .local v2, "c":F
    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 192
    .local v3, "d":F
    mul-float v5, v0, v3

    mul-float v6, v1, v2

    sub-float v4, v5, v6

    .line 194
    .local v4, "det":F
    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, v5, v4

    .line 195
    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    mul-float v6, v4, v3

    iput v6, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 196
    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    neg-float v6, v4

    mul-float/2addr v6, v1

    iput v6, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 197
    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    neg-float v6, v4

    mul-float/2addr v6, v2

    iput v6, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 198
    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    mul-float v6, v4, v0

    iput v6, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 199
    return-void
.end method

.method public final mul(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .registers 7
    .param p1, "R"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 269
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 270
    .local v0, "C":Lorg/jbox2d/common/Mat22;
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v4, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 271
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 272
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v4, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 273
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 275
    return-object v0
.end method

.method public final mul(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 7
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 243
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget v4, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public final mulLocal(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .registers 2
    .param p1, "R"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 279
    invoke-virtual {p0, p1, p0}, Lorg/jbox2d/common/Mat22;->mulToOut(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;)V

    .line 280
    return-object p0
.end method

.method public final mulToOut(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;)V
    .registers 10
    .param p1, "R"    # Lorg/jbox2d/common/Mat22;
    .param p2, "out"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 284
    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v6, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 285
    .local v2, "tempy1":F
    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v6, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float v0, v4, v5

    .line 286
    .local v0, "tempx1":F
    iget-object v4, p2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 287
    iget-object v4, p2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v2, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 288
    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v6, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 289
    .local v3, "tempy2":F
    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v6, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 290
    .local v1, "tempx2":F
    iget-object v4, p2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput v1, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 291
    iget-object v4, p2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput v3, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 292
    return-void
.end method

.method public final mulToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 7
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 247
    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 248
    .local v0, "tempy":F
    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 249
    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 250
    return-void
.end method

.method public final mulToOutUnsafe(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;)V
    .registers 7
    .param p1, "R"    # Lorg/jbox2d/common/Mat22;
    .param p2, "out"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 295
    sget-boolean v0, Lorg/jbox2d/common/Mat22;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p2, p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 296
    :cond_c
    sget-boolean v0, Lorg/jbox2d/common/Mat22;->$assertionsDisabled:Z

    if-nez v0, :cond_18

    if-ne p2, p0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 297
    :cond_18
    iget-object v0, p2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 298
    iget-object v0, p2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 299
    iget-object v0, p2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 300
    iget-object v0, p2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 301
    return-void
.end method

.method public final mulToOutUnsafe(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 6
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 253
    sget-boolean v0, Lorg/jbox2d/common/Mat22;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p1, p2, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 254
    :cond_c
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 255
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 256
    return-void
.end method

.method public final mulTrans(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .registers 6
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 316
    new-instance v0, Lorg/jbox2d/common/Mat22;

    invoke-direct {v0}, Lorg/jbox2d/common/Mat22;-><init>()V

    .line 318
    .local v0, "C":Lorg/jbox2d/common/Mat22;
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    invoke-static {v2, v3}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v2

    iput v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 319
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    invoke-static {v2, v3}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v2

    iput v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 321
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    invoke-static {v2, v3}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v2

    iput v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 322
    iget-object v1, v0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    invoke-static {v2, v3}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v2

    iput v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 323
    return-object v0
.end method

.method public final mulTrans(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 7
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 363
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public final mulTransLocal(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .registers 2
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 327
    invoke-virtual {p0, p1, p0}, Lorg/jbox2d/common/Mat22;->mulTransToOut(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;)V

    .line 328
    return-object p0
.end method

.method public final mulTransToOut(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;)V
    .registers 10
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;
    .param p2, "out"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 336
    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v6, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float v0, v4, v5

    .line 337
    .local v0, "x1":F
    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v6, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 338
    .local v2, "y1":F
    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v6, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 339
    .local v1, "x2":F
    iget-object v4, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v5, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v6, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 340
    .local v3, "y2":F
    iget-object v4, p2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 341
    iget-object v4, p2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput v1, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 342
    iget-object v4, p2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v2, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 343
    iget-object v4, p2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput v3, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 344
    return-void
.end method

.method public final mulTransToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 7
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 371
    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 372
    .local v0, "tempx":F
    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 373
    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 374
    return-void
.end method

.method public final mulTransToOutUnsafe(Lorg/jbox2d/common/Mat22;Lorg/jbox2d/common/Mat22;)V
    .registers 7
    .param p1, "B"    # Lorg/jbox2d/common/Mat22;
    .param p2, "out"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 347
    sget-boolean v0, Lorg/jbox2d/common/Mat22;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p1, p2, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 348
    :cond_c
    sget-boolean v0, Lorg/jbox2d/common/Mat22;->$assertionsDisabled:Z

    if-nez v0, :cond_18

    if-ne p0, p2, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 349
    :cond_18
    iget-object v0, p2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 350
    iget-object v0, p2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 351
    iget-object v0, p2, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 352
    iget-object v0, p2, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 353
    return-void
.end method

.method public final set(FFFF)Lorg/jbox2d/common/Mat22;
    .registers 6
    .param p1, "exx"    # F
    .param p2, "col2x"    # F
    .param p3, "exy"    # F
    .param p4, "col2y"    # F

    .prologue
    .line 92
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput p1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 93
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput p3, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 94
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput p2, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 95
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput p4, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 96
    return-object p0
.end method

.method public final set(Lorg/jbox2d/common/Mat22;)Lorg/jbox2d/common/Mat22;
    .registers 4
    .param p1, "m"    # Lorg/jbox2d/common/Mat22;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 85
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 86
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 87
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 88
    return-object p0
.end method

.method public final set(F)V
    .registers 6
    .param p1, "angle"    # F

    .prologue
    .line 113
    invoke-static {p1}, Lorg/jbox2d/common/MathUtils;->cos(F)F

    move-result v0

    .local v0, "c":F
    invoke-static {p1}, Lorg/jbox2d/common/MathUtils;->sin(F)F

    move-result v1

    .line 114
    .local v1, "s":F
    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v0, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 115
    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    neg-float v3, v1

    iput v3, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 116
    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v1, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 117
    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput v0, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 118
    return-void
.end method

.method public final set(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "c1"    # Lorg/jbox2d/common/Vec2;
    .param p2, "c2"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 156
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 157
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, p2, Lorg/jbox2d/common/Vec2;->x:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 158
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v1, p1, Lorg/jbox2d/common/Vec2;->y:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 159
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, p2, Lorg/jbox2d/common/Vec2;->y:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 160
    return-void
.end method

.method public final setIdentity()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v2, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 125
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 126
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 127
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput v2, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 128
    return-void
.end method

.method public final setZero()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 135
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 136
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 137
    iget-object v0, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 138
    return-void
.end method

.method public final solve(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 11
    .param p1, "b"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 414
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    .local v0, "a11":F
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v6, Lorg/jbox2d/common/Vec2;->x:F

    .local v1, "a12":F
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v6, Lorg/jbox2d/common/Vec2;->y:F

    .local v2, "a21":F
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v6, Lorg/jbox2d/common/Vec2;->y:F

    .line 415
    .local v3, "a22":F
    mul-float v6, v0, v3

    mul-float v7, v1, v2

    sub-float v4, v6, v7

    .line 416
    .local v4, "det":F
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_1f

    .line 417
    const/high16 v6, 0x3f800000    # 1.0f

    div-float v4, v6, v4

    .line 419
    :cond_1f
    new-instance v5, Lorg/jbox2d/common/Vec2;

    iget v6, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v6, v3

    iget v7, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    mul-float/2addr v6, v4

    iget v7, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v7, v0

    iget v8, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v8, v2

    sub-float/2addr v7, v8

    mul-float/2addr v7, v4

    invoke-direct {v5, v6, v7}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    .line 420
    .local v5, "x":Lorg/jbox2d/common/Vec2;
    return-object v5
.end method

.method public final solveToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 11
    .param p1, "b"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 424
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    .local v0, "a11":F
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v1, v6, Lorg/jbox2d/common/Vec2;->x:F

    .local v1, "a12":F
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v6, Lorg/jbox2d/common/Vec2;->y:F

    .local v2, "a21":F
    iget-object v6, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v3, v6, Lorg/jbox2d/common/Vec2;->y:F

    .line 425
    .local v3, "a22":F
    mul-float v6, v0, v3

    mul-float v7, v1, v2

    sub-float v4, v6, v7

    .line 426
    .local v4, "det":F
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_1f

    .line 427
    const/high16 v6, 0x3f800000    # 1.0f

    div-float v4, v6, v4

    .line 429
    :cond_1f
    iget v6, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v6, v0

    iget v7, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v7, v2

    sub-float/2addr v6, v7

    mul-float v5, v4, v6

    .line 430
    .local v5, "tempy":F
    iget v6, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v6, v3

    iget v7, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    mul-float/2addr v6, v4

    iput v6, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 431
    iput v5, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 432
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 39
    const-string v0, ""

    .line 40
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ex:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Mat22;->ey:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    return-object v0
.end method
