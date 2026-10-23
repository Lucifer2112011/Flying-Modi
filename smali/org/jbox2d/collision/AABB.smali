###### Class org.jbox2d.collision.AABB (org.jbox2d.collision.AABB)
.class public Lorg/jbox2d/collision/AABB;
.super Ljava/lang/Object;
.source "AABB.java"


# instance fields
.field public final lowerBound:Lorg/jbox2d/common/Vec2;

.field public final upperBound:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    .line 44
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/collision/AABB;)V
    .registers 4
    .param p1, "copy"    # Lorg/jbox2d/collision/AABB;

    .prologue
    .line 53
    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    invoke-direct {p0, v0, v1}, Lorg/jbox2d/collision/AABB;-><init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "lowerVertex"    # Lorg/jbox2d/common/Vec2;
    .param p2, "upperVertex"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    .line 64
    invoke-virtual {p2}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    .line 65
    return-void
.end method

.method public static final testOverlap(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)Z
    .registers 6
    .param p0, "a"    # Lorg/jbox2d/collision/AABB;
    .param p1, "b"    # Lorg/jbox2d/collision/AABB;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 310
    iget-object v1, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_1c

    iget-object v1, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v2, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1d

    .line 318
    :cond_1c
    :goto_1c
    return v0

    .line 314
    :cond_1d
    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_1c

    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v2, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_1c

    .line 318
    const/4 v0, 0x1

    goto :goto_1c
.end method


# virtual methods
.method public final combine(Lorg/jbox2d/collision/AABB;)V
    .registers 5
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;

    .prologue
    .line 165
    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v0, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_51

    iget-object v0, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    :goto_12
    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 166
    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v0, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v2, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_56

    iget-object v0, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    :goto_26
    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 167
    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget-object v0, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5b

    iget-object v0, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    :goto_3a
    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 168
    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget-object v0, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v2, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_60

    iget-object v0, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    :goto_4e
    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 169
    return-void

    .line 165
    :cond_51
    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_12

    .line 166
    :cond_56
    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_26

    .line 167
    :cond_5b
    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_3a

    .line 168
    :cond_60
    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_4e
.end method

.method public final combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V
    .registers 6
    .param p1, "aabb1"    # Lorg/jbox2d/collision/AABB;
    .param p2, "aab"    # Lorg/jbox2d/collision/AABB;

    .prologue
    .line 144
    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p2, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_51

    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    :goto_12
    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 145
    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v2, p2, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_56

    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    :goto_26
    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 146
    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p2, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5b

    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    :goto_3a
    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 147
    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v2, p2, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_60

    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    :goto_4e
    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 148
    return-void

    .line 144
    :cond_51
    iget-object v0, p2, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_12

    .line 145
    :cond_56
    iget-object v0, p2, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_26

    .line 146
    :cond_5b
    iget-object v0, p2, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_3a

    .line 147
    :cond_60
    iget-object v0, p2, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_4e
.end method

.method public final contains(Lorg/jbox2d/collision/AABB;)Z
    .registers 4
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v1, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_32

    iget-object v0, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v1, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_32

    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_32

    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_32

    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public final getCenter()Lorg/jbox2d/common/Vec2;
    .registers 3

    .prologue
    .line 100
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(Lorg/jbox2d/common/Vec2;)V

    .line 101
    .local v0, "center":Lorg/jbox2d/common/Vec2;
    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 102
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 103
    return-object v0
.end method

.method public final getCenterToOut(Lorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 107
    iget-object v0, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    .line 108
    iget-object v0, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    .line 109
    return-void
.end method

.method public final getExtents()Lorg/jbox2d/common/Vec2;
    .registers 3

    .prologue
    .line 117
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    invoke-direct {v0, v1}, Lorg/jbox2d/common/Vec2;-><init>(Lorg/jbox2d/common/Vec2;)V

    .line 118
    .local v0, "center":Lorg/jbox2d/common/Vec2;
    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 119
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 120
    return-object v0
.end method

.method public final getExtentsToOut(Lorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 124
    iget-object v0, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p1, Lorg/jbox2d/common/Vec2;->x:F

    .line 125
    iget-object v0, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p1, Lorg/jbox2d/common/Vec2;->y:F

    .line 126
    return-void
.end method

.method public final getPerimeter()F
    .registers 4

    .prologue
    .line 156
    const/high16 v0, 0x40000000    # 2.0f

    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getVertices([Lorg/jbox2d/common/Vec2;)V
    .registers 7
    .param p1, "argRay"    # [Lorg/jbox2d/common/Vec2;

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    .line 129
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 130
    aget-object v0, p1, v2

    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 131
    aget-object v0, p1, v2

    iget v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 132
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 133
    aget-object v0, p1, v4

    iget-object v1, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 134
    aget-object v0, p1, v4

    iget v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v2, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 135
    return-void
.end method

.method public final isValid()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 83
    iget-object v3, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v4, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    sub-float v0, v3, v4

    .line 84
    .local v0, "dx":F
    cmpg-float v3, v0, v5

    if-gez v3, :cond_11

    .line 91
    :cond_10
    :goto_10
    return v2

    .line 87
    :cond_11
    iget-object v3, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    sub-float v1, v3, v4

    .line 88
    .local v1, "dy":F
    cmpg-float v3, v1, v5

    if-ltz v3, :cond_10

    .line 91
    iget-object v3, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3}, Lorg/jbox2d/common/Vec2;->isValid()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3}, Lorg/jbox2d/common/Vec2;->isValid()Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v2, 0x1

    goto :goto_10
.end method

.method public final raycast(Lorg/jbox2d/collision/RayCastOutput;Lorg/jbox2d/collision/RayCastInput;)Z
    .registers 5
    .param p1, "output"    # Lorg/jbox2d/collision/RayCastOutput;
    .param p2, "input"    # Lorg/jbox2d/collision/RayCastInput;

    .prologue
    const/4 v1, 0x4

    .line 196
    new-instance v0, Lorg/jbox2d/pooling/normal/DefaultWorldPool;

    invoke-direct {v0, v1, v1}, Lorg/jbox2d/pooling/normal/DefaultWorldPool;-><init>(II)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/jbox2d/collision/AABB;->raycast(Lorg/jbox2d/collision/RayCastOutput;Lorg/jbox2d/collision/RayCastInput;Lorg/jbox2d/pooling/IWorldPool;)Z

    move-result v0

    return v0
.end method

.method public final raycast(Lorg/jbox2d/collision/RayCastOutput;Lorg/jbox2d/collision/RayCastInput;Lorg/jbox2d/pooling/IWorldPool;)Z
    .registers 18
    .param p1, "output"    # Lorg/jbox2d/collision/RayCastOutput;
    .param p2, "input"    # Lorg/jbox2d/collision/RayCastInput;
    .param p3, "argPool"    # Lorg/jbox2d/pooling/IWorldPool;

    .prologue
    .line 207
    const v11, -0x800001

    .line 208
    .local v11, "tmin":F
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    .line 210
    .local v10, "tmax":F
    invoke-interface/range {p3 .. p3}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 211
    .local v5, "p":Lorg/jbox2d/common/Vec2;
    invoke-interface/range {p3 .. p3}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    .line 212
    .local v2, "d":Lorg/jbox2d/common/Vec2;
    invoke-interface/range {p3 .. p3}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 213
    .local v1, "absD":Lorg/jbox2d/common/Vec2;
    invoke-interface/range {p3 .. p3}, Lorg/jbox2d/pooling/IWorldPool;->popVec2()Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 215
    .local v4, "normal":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/jbox2d/collision/RayCastInput;->p1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v5, v12}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 216
    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/jbox2d/collision/RayCastInput;->p2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v12}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/jbox2d/collision/RayCastInput;->p1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 217
    invoke-static {v2, v1}, Lorg/jbox2d/common/Vec2;->absToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 220
    iget v12, v1, Lorg/jbox2d/common/Vec2;->x:F

    const/high16 v13, 0x34000000

    cmpg-float v12, v12, v13

    if-gez v12, :cond_53

    .line 222
    iget v12, v5, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v13, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v13, v13, Lorg/jbox2d/common/Vec2;->x:F

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_4b

    iget-object v12, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    iget v13, v5, Lorg/jbox2d/common/Vec2;->x:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_90

    .line 223
    :cond_4b
    const/4 v12, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 224
    const/4 v12, 0x0

    .line 306
    :goto_52
    return v12

    .line 227
    :cond_53
    const/high16 v12, 0x3f800000    # 1.0f

    iget v13, v2, Lorg/jbox2d/common/Vec2;->x:F

    div-float v3, v12, v13

    .line 228
    .local v3, "inv_d":F
    iget-object v12, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    iget v13, v5, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v12, v13

    mul-float v7, v12, v3

    .line 229
    .local v7, "t1":F
    iget-object v12, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    iget v13, v5, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v12, v13

    mul-float v8, v12, v3

    .line 232
    .local v8, "t2":F
    const/high16 v6, -0x40800000    # -1.0f

    .line 234
    .local v6, "s":F
    cmpl-float v12, v7, v8

    if-lez v12, :cond_76

    .line 235
    move v9, v7

    .line 236
    .local v9, "temp":F
    move v7, v8

    .line 237
    move v8, v9

    .line 238
    const/high16 v6, 0x3f800000    # 1.0f

    .line 242
    .end local v9    # "temp":F
    :cond_76
    cmpl-float v12, v7, v11

    if-lez v12, :cond_80

    .line 243
    invoke-virtual {v4}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 244
    iput v6, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 245
    move v11, v7

    .line 249
    :cond_80
    invoke-static {v10, v8}, Lorg/jbox2d/common/MathUtils;->min(FF)F

    move-result v10

    .line 251
    cmpl-float v12, v11, v10

    if-lez v12, :cond_90

    .line 252
    const/4 v12, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 253
    const/4 v12, 0x0

    goto :goto_52

    .line 257
    .end local v3    # "inv_d":F
    .end local v6    # "s":F
    .end local v7    # "t1":F
    .end local v8    # "t2":F
    :cond_90
    iget v12, v1, Lorg/jbox2d/common/Vec2;->y:F

    const/high16 v13, 0x34000000

    cmpg-float v12, v12, v13

    if-gez v12, :cond_b4

    .line 259
    iget v12, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v13, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v13, v13, Lorg/jbox2d/common/Vec2;->y:F

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_ac

    iget-object v12, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->y:F

    iget v13, v5, Lorg/jbox2d/common/Vec2;->y:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_f2

    .line 260
    :cond_ac
    const/4 v12, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 261
    const/4 v12, 0x0

    goto :goto_52

    .line 264
    :cond_b4
    const/high16 v12, 0x3f800000    # 1.0f

    iget v13, v2, Lorg/jbox2d/common/Vec2;->y:F

    div-float v3, v12, v13

    .line 265
    .restart local v3    # "inv_d":F
    iget-object v12, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->y:F

    iget v13, v5, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v12, v13

    mul-float v7, v12, v3

    .line 266
    .restart local v7    # "t1":F
    iget-object v12, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->y:F

    iget v13, v5, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v12, v13

    mul-float v8, v12, v3

    .line 269
    .restart local v8    # "t2":F
    const/high16 v6, -0x40800000    # -1.0f

    .line 271
    .restart local v6    # "s":F
    cmpl-float v12, v7, v8

    if-lez v12, :cond_d7

    .line 272
    move v9, v7

    .line 273
    .restart local v9    # "temp":F
    move v7, v8

    .line 274
    move v8, v9

    .line 275
    const/high16 v6, 0x3f800000    # 1.0f

    .line 279
    .end local v9    # "temp":F
    :cond_d7
    cmpl-float v12, v7, v11

    if-lez v12, :cond_e1

    .line 280
    invoke-virtual {v4}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 281
    iput v6, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 282
    move v11, v7

    .line 286
    :cond_e1
    invoke-static {v10, v8}, Lorg/jbox2d/common/MathUtils;->min(FF)F

    move-result v10

    .line 288
    cmpl-float v12, v11, v10

    if-lez v12, :cond_f2

    .line 289
    const/4 v12, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 290
    const/4 v12, 0x0

    goto/16 :goto_52

    .line 296
    .end local v3    # "inv_d":F
    .end local v6    # "s":F
    .end local v7    # "t1":F
    .end local v8    # "t2":F
    :cond_f2
    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-ltz v12, :cond_ff

    move-object/from16 v0, p2

    iget v12, v0, Lorg/jbox2d/collision/RayCastInput;->maxFraction:F

    cmpg-float v12, v12, v11

    if-gez v12, :cond_108

    .line 297
    :cond_ff
    const/4 v12, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 298
    const/4 v12, 0x0

    goto/16 :goto_52

    .line 302
    :cond_108
    iput v11, p1, Lorg/jbox2d/collision/RayCastOutput;->fraction:F

    .line 303
    iget-object v12, p1, Lorg/jbox2d/collision/RayCastOutput;->normal:Lorg/jbox2d/common/Vec2;

    iget v13, v4, Lorg/jbox2d/common/Vec2;->x:F

    iput v13, v12, Lorg/jbox2d/common/Vec2;->x:F

    .line 304
    iget-object v12, p1, Lorg/jbox2d/collision/RayCastOutput;->normal:Lorg/jbox2d/common/Vec2;

    iget v13, v4, Lorg/jbox2d/common/Vec2;->y:F

    iput v13, v12, Lorg/jbox2d/common/Vec2;->y:F

    .line 305
    const/4 v12, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/jbox2d/pooling/IWorldPool;->pushVec2(I)V

    .line 306
    const/4 v12, 0x1

    goto/16 :goto_52
.end method

.method public final set(Lorg/jbox2d/collision/AABB;)V
    .registers 6
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;

    .prologue
    .line 73
    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    .line 74
    .local v0, "v":Lorg/jbox2d/common/Vec2;
    iget-object v2, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v3, v0, Lorg/jbox2d/common/Vec2;->x:F

    iput v3, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 75
    iget-object v2, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v3, v0, Lorg/jbox2d/common/Vec2;->y:F

    iput v3, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 76
    iget-object v1, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    .line 77
    .local v1, "v1":Lorg/jbox2d/common/Vec2;
    iget-object v2, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v3, v1, Lorg/jbox2d/common/Vec2;->x:F

    iput v3, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 78
    iget-object v2, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v3, v1, Lorg/jbox2d/common/Vec2;->y:F

    iput v3, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 79
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AABB["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " . "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method
