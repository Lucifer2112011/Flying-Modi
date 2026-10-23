###### Class org.jbox2d.collision.shapes.PolygonShape (org.jbox2d.collision.shapes.PolygonShape)
.class public Lorg/jbox2d/collision/shapes/PolygonShape;
.super Lorg/jbox2d/collision/shapes/Shape;
.source "PolygonShape.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final m_debug:Z


# instance fields
.field public final m_centroid:Lorg/jbox2d/common/Vec2;

.field public m_count:I

.field public final m_normals:[Lorg/jbox2d/common/Vec2;

.field public final m_vertices:[Lorg/jbox2d/common/Vec2;

.field private final pool1:Lorg/jbox2d/common/Vec2;

.field private final pool2:Lorg/jbox2d/common/Vec2;

.field private final pool3:Lorg/jbox2d/common/Vec2;

.field private final pool4:Lorg/jbox2d/common/Vec2;

.field private poolt1:Lorg/jbox2d/common/Transform;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lorg/jbox2d/collision/shapes/PolygonShape;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/collision/shapes/PolygonShape;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 75
    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->POLYGON:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-direct {p0, v1}, Lorg/jbox2d/collision/shapes/Shape;-><init>(Lorg/jbox2d/collision/shapes/ShapeType;)V

    .line 48
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    .line 68
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->pool1:Lorg/jbox2d/common/Vec2;

    .line 69
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->pool2:Lorg/jbox2d/common/Vec2;

    .line 70
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->pool3:Lorg/jbox2d/common/Vec2;

    .line 71
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->pool4:Lorg/jbox2d/common/Vec2;

    .line 72
    new-instance v1, Lorg/jbox2d/common/Transform;

    invoke-direct {v1}, Lorg/jbox2d/common/Transform;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->poolt1:Lorg/jbox2d/common/Transform;

    .line 77
    const/4 v1, 0x0

    iput v1, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    .line 78
    new-array v1, v3, [Lorg/jbox2d/common/Vec2;

    iput-object v1, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    iget-object v1, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    array-length v1, v1

    if-ge v0, v1, :cond_4a

    .line 80
    iget-object v1, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    new-instance v2, Lorg/jbox2d/common/Vec2;

    invoke-direct {v2}, Lorg/jbox2d/common/Vec2;-><init>()V

    aput-object v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 82
    :cond_4a
    new-array v1, v3, [Lorg/jbox2d/common/Vec2;

    iput-object v1, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    .line 83
    const/4 v0, 0x0

    :goto_4f
    iget-object v1, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    array-length v1, v1

    if-ge v0, v1, :cond_60

    .line 84
    iget-object v1, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    new-instance v2, Lorg/jbox2d/common/Vec2;

    invoke-direct {v2}, Lorg/jbox2d/common/Vec2;-><init>()V

    aput-object v2, v1, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 86
    :cond_60
    const v1, 0x3c23d70a    # 0.01f

    invoke-virtual {p0, v1}, Lorg/jbox2d/collision/shapes/PolygonShape;->setRadius(F)V

    .line 87
    iget-object v1, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 88
    return-void
.end method


# virtual methods
.method public centroid(Lorg/jbox2d/common/Transform;)Lorg/jbox2d/common/Vec2;
    .registers 3
    .param p1, "xf"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 596
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    invoke-static {p1, v0}, Lorg/jbox2d/common/Transform;->mul(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    return-object v0
.end method

.method public centroidToOut(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 4
    .param p1, "xf"    # Lorg/jbox2d/common/Transform;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 601
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    invoke-static {p1, v0, p2}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 602
    return-object p2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/jbox2d/collision/shapes/PolygonShape;->clone()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/jbox2d/collision/shapes/Shape;
    .registers 5

    .prologue
    .line 91
    new-instance v1, Lorg/jbox2d/collision/shapes/PolygonShape;

    invoke-direct {v1}, Lorg/jbox2d/collision/shapes/PolygonShape;-><init>()V

    .line 92
    .local v1, "shape":Lorg/jbox2d/collision/shapes/PolygonShape;
    iget-object v2, v1, Lorg/jbox2d/collision/shapes/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v2, v1, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    array-length v2, v2

    if-ge v0, v2, :cond_2b

    .line 94
    iget-object v2, v1, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 95
    iget-object v2, v1, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 97
    :cond_2b
    invoke-virtual {p0}, Lorg/jbox2d/collision/shapes/PolygonShape;->getRadius()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jbox2d/collision/shapes/PolygonShape;->setRadius(F)V

    .line 98
    iget v2, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    iput v2, v1, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    .line 99
    return-object v1
.end method

.method public final computeAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/Transform;I)V
    .registers 16
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;
    .param p2, "xf"    # Lorg/jbox2d/common/Transform;
    .param p3, "childIndex"    # I

    .prologue
    .line 306
    iget-object v1, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    .line 307
    .local v1, "lower":Lorg/jbox2d/common/Vec2;
    iget-object v2, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    .line 308
    .local v2, "upper":Lorg/jbox2d/common/Vec2;
    iget-object v9, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    const/4 v10, 0x0

    aget-object v3, v9, v10

    .line 309
    .local v3, "v1":Lorg/jbox2d/common/Vec2;
    iget-object v8, p2, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    .line 310
    .local v8, "xfq":Lorg/jbox2d/common/Rot;
    iget-object v7, p2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    .line 312
    .local v7, "xfp":Lorg/jbox2d/common/Vec2;
    iget v9, v8, Lorg/jbox2d/common/Rot;->c:F

    iget v10, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v9, v10

    iget v10, v8, Lorg/jbox2d/common/Rot;->s:F

    iget v11, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget v10, v7, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v9, v10

    iput v9, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 313
    iget v9, v8, Lorg/jbox2d/common/Rot;->s:F

    iget v10, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v9, v10

    iget v10, v8, Lorg/jbox2d/common/Rot;->c:F

    iget v11, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, v7, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v9, v10

    iput v9, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 314
    iget v9, v1, Lorg/jbox2d/common/Vec2;->x:F

    iput v9, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 315
    iget v9, v1, Lorg/jbox2d/common/Vec2;->y:F

    iput v9, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 317
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_36
    iget v9, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    if-ge v0, v9, :cond_8b

    .line 318
    iget-object v9, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v4, v9, v0

    .line 320
    .local v4, "v2":Lorg/jbox2d/common/Vec2;
    iget v9, v8, Lorg/jbox2d/common/Rot;->c:F

    iget v10, v4, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v9, v10

    iget v10, v8, Lorg/jbox2d/common/Rot;->s:F

    iget v11, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget v10, v7, Lorg/jbox2d/common/Vec2;->x:F

    add-float v5, v9, v10

    .line 321
    .local v5, "vx":F
    iget v9, v8, Lorg/jbox2d/common/Rot;->s:F

    iget v10, v4, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v9, v10

    iget v10, v8, Lorg/jbox2d/common/Rot;->c:F

    iget v11, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, v7, Lorg/jbox2d/common/Vec2;->y:F

    add-float v6, v9, v10

    .line 322
    .local v6, "vy":F
    iget v9, v1, Lorg/jbox2d/common/Vec2;->x:F

    cmpg-float v9, v9, v5

    if-gez v9, :cond_87

    iget v9, v1, Lorg/jbox2d/common/Vec2;->x:F

    :goto_64
    iput v9, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 323
    iget v9, v1, Lorg/jbox2d/common/Vec2;->y:F

    cmpg-float v9, v9, v6

    if-gez v9, :cond_89

    iget v9, v1, Lorg/jbox2d/common/Vec2;->y:F

    :goto_6e
    iput v9, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 324
    iget v9, v2, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v9, v9, v5

    if-lez v9, :cond_78

    iget v5, v2, Lorg/jbox2d/common/Vec2;->x:F

    .end local v5    # "vx":F
    :cond_78
    iput v5, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 325
    iget v9, v2, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v9, v9, v6

    if-lez v9, :cond_82

    iget v6, v2, Lorg/jbox2d/common/Vec2;->y:F

    .end local v6    # "vy":F
    :cond_82
    iput v6, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .restart local v5    # "vx":F
    .restart local v6    # "vy":F
    :cond_87
    move v9, v5

    .line 322
    goto :goto_64

    :cond_89
    move v9, v6

    .line 323
    goto :goto_6e

    .line 328
    .end local v4    # "v2":Lorg/jbox2d/common/Vec2;
    .end local v5    # "vx":F
    .end local v6    # "vy":F
    :cond_8b
    iget v9, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget v10, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_radius:F

    sub-float/2addr v9, v10

    iput v9, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 329
    iget v9, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget v10, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_radius:F

    sub-float/2addr v9, v10

    iput v9, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 330
    iget v9, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget v10, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_radius:F

    add-float/2addr v9, v10

    iput v9, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 331
    iget v9, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget v10, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_radius:F

    add-float/2addr v9, v10

    iput v9, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 332
    return-void
.end method

.method public final computeCentroidToOut([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/common/Vec2;)V
    .registers 18
    .param p1, "vs"    # [Lorg/jbox2d/common/Vec2;
    .param p2, "count"    # I
    .param p3, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 432
    sget-boolean v12, Lorg/jbox2d/collision/shapes/PolygonShape;->$assertionsDisabled:Z

    if-nez v12, :cond_f

    const/4 v12, 0x3

    move/from16 v0, p2

    if-ge v0, v12, :cond_f

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 434
    :cond_f
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 435
    const/4 v2, 0x0

    .line 439
    .local v2, "area":F
    iget-object v10, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->pool1:Lorg/jbox2d/common/Vec2;

    .line 440
    .local v10, "pRef":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v10}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 442
    iget-object v3, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->pool2:Lorg/jbox2d/common/Vec2;

    .line 443
    .local v3, "e1":Lorg/jbox2d/common/Vec2;
    iget-object v4, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->pool3:Lorg/jbox2d/common/Vec2;

    .line 445
    .local v4, "e2":Lorg/jbox2d/common/Vec2;
    const v6, 0x3eaaaaab

    .line 447
    .local v6, "inv3":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24
    move/from16 v0, p2

    if-ge v5, v0, :cond_6b

    .line 449
    move-object v7, v10

    .line 450
    .local v7, "p1":Lorg/jbox2d/common/Vec2;
    aget-object v8, p1, v5

    .line 451
    .local v8, "p2":Lorg/jbox2d/common/Vec2;
    add-int/lit8 v12, v5, 0x1

    move/from16 v0, p2

    if-ge v12, v0, :cond_67

    add-int/lit8 v12, v5, 0x1

    aget-object v9, p1, v12

    .line 453
    .local v9, "p3":Lorg/jbox2d/common/Vec2;
    :goto_35
    invoke-virtual {v3, v8}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    invoke-virtual {v12, v7}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 454
    invoke-virtual {v4, v9}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    invoke-virtual {v12, v7}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 456
    invoke-static {v3, v4}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v1

    .line 458
    .local v1, "D":F
    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v11, v12, v1

    .line 459
    .local v11, "triangleArea":F
    add-float/2addr v2, v11

    .line 462
    invoke-virtual {v3, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    invoke-virtual {v12, v8}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    invoke-virtual {v12, v9}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v12

    const v13, 0x3eaaaaab

    mul-float/2addr v13, v11

    invoke-virtual {v12, v13}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 463
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 447
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 451
    .end local v1    # "D":F
    .end local v9    # "p3":Lorg/jbox2d/common/Vec2;
    .end local v11    # "triangleArea":F
    :cond_67
    const/4 v12, 0x0

    aget-object v9, p1, v12

    goto :goto_35

    .line 467
    .end local v7    # "p1":Lorg/jbox2d/common/Vec2;
    .end local v8    # "p2":Lorg/jbox2d/common/Vec2;
    :cond_6b
    sget-boolean v12, Lorg/jbox2d/collision/shapes/PolygonShape;->$assertionsDisabled:Z

    if-nez v12, :cond_7b

    const/high16 v12, 0x34000000

    cmpl-float v12, v2, v12

    if-gtz v12, :cond_7b

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 468
    :cond_7b
    const/high16 v12, 0x3f800000    # 1.0f

    div-float/2addr v12, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 469
    return-void
.end method

.method public computeMass(Lorg/jbox2d/collision/shapes/MassData;F)V
    .registers 25
    .param p1, "massData"    # Lorg/jbox2d/collision/shapes/MassData;
    .param p2, "density"    # F

    .prologue
    .line 496
    sget-boolean v18, Lorg/jbox2d/collision/shapes/PolygonShape;->$assertionsDisabled:Z

    if-nez v18, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_18

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 498
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->pool1:Lorg/jbox2d/common/Vec2;

    .line 499
    .local v5, "center":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v5}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 500
    const/4 v4, 0x0

    .line 501
    .local v4, "area":F
    const/4 v3, 0x0

    .line 505
    .local v3, "I":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->pool2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    .line 506
    .local v16, "s":Lorg/jbox2d/common/Vec2;
    invoke-virtual/range {v16 .. v16}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 508
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_47

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    aget-object v18, v18, v12

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 508
    add-int/lit8 v12, v12, 0x1

    goto :goto_2b

    .line 511
    :cond_47
    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 513
    const v15, 0x3eaaaaab

    .line 515
    .local v15, "k_inv3":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->pool3:Lorg/jbox2d/common/Vec2;

    .line 516
    .local v6, "e1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->pool4:Lorg/jbox2d/common/Vec2;

    .line 518
    .local v7, "e2":Lorg/jbox2d/common/Vec2;
    const/4 v12, 0x0

    :goto_69
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_127

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    aget-object v18, v18, v12

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 521
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v19

    add-int/lit8 v18, v12, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_11c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    add-int/lit8 v20, v12, 0x1

    aget-object v18, v18, v20

    :goto_aa
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 523
    invoke-static {v6, v7}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v2

    .line 525
    .local v2, "D":F
    const/high16 v18, 0x3f000000    # 0.5f

    mul-float v17, v18, v2

    .line 526
    .local v17, "triangleArea":F
    add-float v4, v4, v17

    .line 529
    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    const v19, 0x3eaaaaab

    mul-float v19, v19, v17

    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v21, v0

    add-float v20, v20, v21

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 530
    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    const v19, 0x3eaaaaab

    mul-float v19, v19, v17

    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    add-float v20, v20, v21

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 532
    iget v8, v6, Lorg/jbox2d/common/Vec2;->x:F

    .local v8, "ex1":F
    iget v10, v6, Lorg/jbox2d/common/Vec2;->y:F

    .line 533
    .local v10, "ey1":F
    iget v9, v7, Lorg/jbox2d/common/Vec2;->x:F

    .local v9, "ex2":F
    iget v11, v7, Lorg/jbox2d/common/Vec2;->y:F

    .line 535
    .local v11, "ey2":F
    mul-float v18, v8, v8

    mul-float v19, v9, v8

    add-float v18, v18, v19

    mul-float v19, v9, v9

    add-float v13, v18, v19

    .line 536
    .local v13, "intx2":F
    mul-float v18, v10, v10

    mul-float v19, v11, v10

    add-float v18, v18, v19

    mul-float v19, v11, v11

    add-float v14, v18, v19

    .line 538
    .local v14, "inty2":F
    const v18, 0x3daaaaab

    mul-float v18, v18, v2

    add-float v19, v13, v14

    mul-float v18, v18, v19

    add-float v3, v3, v18

    .line 518
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_69

    .line 521
    .end local v2    # "D":F
    .end local v8    # "ex1":F
    .end local v9    # "ex2":F
    .end local v10    # "ey1":F
    .end local v11    # "ey2":F
    .end local v13    # "intx2":F
    .end local v14    # "inty2":F
    .end local v17    # "triangleArea":F
    :cond_11c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    aget-object v18, v18, v20

    goto :goto_aa

    .line 542
    :cond_127
    mul-float v18, p2, v4

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    .line 545
    sget-boolean v18, Lorg/jbox2d/collision/shapes/PolygonShape;->$assertionsDisabled:Z

    if-nez v18, :cond_13f

    const/high16 v18, 0x34000000

    cmpl-float v18, v4, v18

    if-gtz v18, :cond_13f

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 546
    :cond_13f
    const/high16 v18, 0x3f800000    # 1.0f

    div-float v18, v18, v4

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 547
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 550
    mul-float v18, v3, p2

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/shapes/MassData;->I:F

    .line 553
    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/collision/shapes/MassData;->I:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v20

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/shapes/MassData;->I:F

    .line 554
    return-void
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public getNormals()[Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 591
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public final getVertex(I)Lorg/jbox2d/common/Vec2;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 350
    sget-boolean v0, Lorg/jbox2d/collision/shapes/PolygonShape;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    if-ltz p1, :cond_a

    iget v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    if-lt p1, v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 351
    :cond_10
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getVertexCount()I
    .registers 2

    .prologue
    .line 340
    iget v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    return v0
.end method

.method public getVertices()[Lorg/jbox2d/common/Vec2;
    .registers 2

    .prologue
    .line 586
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public final raycast(Lorg/jbox2d/collision/RayCastOutput;Lorg/jbox2d/collision/RayCastInput;Lorg/jbox2d/common/Transform;I)Z
    .registers 30
    .param p1, "output"    # Lorg/jbox2d/collision/RayCastOutput;
    .param p2, "input"    # Lorg/jbox2d/collision/RayCastInput;
    .param p3, "xf"    # Lorg/jbox2d/common/Transform;
    .param p4, "childIndex"    # I

    .prologue
    .line 357
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v21, v0

    .line 358
    .local v21, "xfq":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    .line 362
    .local v20, "xfp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastInput;->p1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    sub-float v14, v22, v23

    .line 363
    .local v14, "tempx":F
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastInput;->p1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    sub-float v16, v22, v23

    .line 364
    .local v16, "tempy":F
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v22, v0

    mul-float v22, v22, v14

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v23, v0

    mul-float v23, v23, v16

    add-float v10, v22, v23

    .line 365
    .local v10, "p1x":F
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v14

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v23, v0

    mul-float v23, v23, v16

    add-float v11, v22, v23

    .line 367
    .local v11, "p1y":F
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastInput;->p2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    sub-float v14, v22, v23

    .line 368
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastInput;->p2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    sub-float v16, v22, v23

    .line 369
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v22, v0

    mul-float v22, v22, v14

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v23, v0

    mul-float v23, v23, v16

    add-float v12, v22, v23

    .line 370
    .local v12, "p2x":F
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v14

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v23, v0

    mul-float v23, v23, v16

    add-float v13, v22, v23

    .line 372
    .local v13, "p2y":F
    sub-float v2, v12, v10

    .line 373
    .local v2, "dx":F
    sub-float v3, v13, v11

    .line 375
    .local v3, "dy":F
    const/4 v6, 0x0

    .local v6, "lower":F
    move-object/from16 v0, p2

    iget v0, v0, Lorg/jbox2d/collision/RayCastInput;->maxFraction:F

    move/from16 v18, v0

    .line 377
    .local v18, "upper":F
    const/4 v5, -0x1

    .line 379
    .local v5, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_bb
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v4, v0, :cond_138

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    aget-object v7, v22, v4

    .line 381
    .local v7, "normal":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    aget-object v19, v22, v4

    .line 385
    .local v19, "vertex":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    sub-float v15, v22, v10

    .line 386
    .local v15, "tempxn":F
    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    sub-float v17, v22, v11

    .line 387
    .local v17, "tempyn":F
    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v22, v22, v15

    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    mul-float v23, v23, v17

    add-float v8, v22, v23

    .line 388
    .local v8, "numerator":F
    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v22, v0

    mul-float v22, v22, v2

    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v23, v0

    mul-float v23, v23, v3

    add-float v1, v22, v23

    .line 390
    .local v1, "denominator":F
    const/16 v22, 0x0

    cmpl-float v22, v1, v22

    if-nez v22, :cond_110

    .line 391
    const/16 v22, 0x0

    cmpg-float v22, v8, v22

    if-gez v22, :cond_11f

    .line 392
    const/16 v22, 0x0

    .line 428
    .end local v1    # "denominator":F
    .end local v7    # "normal":Lorg/jbox2d/common/Vec2;
    .end local v8    # "numerator":F
    .end local v15    # "tempxn":F
    .end local v17    # "tempyn":F
    .end local v19    # "vertex":Lorg/jbox2d/common/Vec2;
    :goto_10f
    return v22

    .line 400
    .restart local v1    # "denominator":F
    .restart local v7    # "normal":Lorg/jbox2d/common/Vec2;
    .restart local v8    # "numerator":F
    .restart local v15    # "tempxn":F
    .restart local v17    # "tempyn":F
    .restart local v19    # "vertex":Lorg/jbox2d/common/Vec2;
    :cond_110
    const/16 v22, 0x0

    cmpg-float v22, v1, v22

    if-gez v22, :cond_126

    mul-float v22, v6, v1

    cmpg-float v22, v8, v22

    if-gez v22, :cond_126

    .line 403
    div-float v6, v8, v1

    .line 404
    move v5, v4

    .line 412
    :cond_11f
    :goto_11f
    cmpg-float v22, v18, v6

    if-gez v22, :cond_135

    .line 413
    const/16 v22, 0x0

    goto :goto_10f

    .line 405
    :cond_126
    const/16 v22, 0x0

    cmpl-float v22, v1, v22

    if-lez v22, :cond_11f

    mul-float v22, v18, v1

    cmpg-float v22, v8, v22

    if-gez v22, :cond_11f

    .line 408
    div-float v18, v8, v1

    goto :goto_11f

    .line 379
    :cond_135
    add-int/lit8 v4, v4, 0x1

    goto :goto_bb

    .line 417
    .end local v1    # "denominator":F
    .end local v7    # "normal":Lorg/jbox2d/common/Vec2;
    .end local v8    # "numerator":F
    .end local v15    # "tempxn":F
    .end local v17    # "tempyn":F
    .end local v19    # "vertex":Lorg/jbox2d/common/Vec2;
    :cond_138
    sget-boolean v22, Lorg/jbox2d/collision/shapes/PolygonShape;->$assertionsDisabled:Z

    if-nez v22, :cond_152

    const/16 v22, 0x0

    cmpg-float v22, v22, v6

    if-gtz v22, :cond_14c

    move-object/from16 v0, p2

    iget v0, v0, Lorg/jbox2d/collision/RayCastInput;->maxFraction:F

    move/from16 v22, v0

    cmpg-float v22, v6, v22

    if-lez v22, :cond_152

    :cond_14c
    new-instance v22, Ljava/lang/AssertionError;

    invoke-direct/range {v22 .. v22}, Ljava/lang/AssertionError;-><init>()V

    throw v22

    .line 419
    :cond_152
    if-ltz v5, :cond_1a4

    .line 420
    move-object/from16 v0, p1

    iput v6, v0, Lorg/jbox2d/collision/RayCastOutput;->fraction:F

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    aget-object v7, v22, v5

    .line 423
    .restart local v7    # "normal":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/jbox2d/collision/RayCastOutput;->normal:Lorg/jbox2d/common/Vec2;

    .line 424
    .local v9, "out":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v22, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v23, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v0, v22

    iput v0, v9, Lorg/jbox2d/common/Vec2;->x:F

    .line 425
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v22, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v23, v0

    iget v0, v7, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    iput v0, v9, Lorg/jbox2d/common/Vec2;->y:F

    .line 426
    const/16 v22, 0x1

    goto/16 :goto_10f

    .line 428
    .end local v7    # "normal":Lorg/jbox2d/common/Vec2;
    .end local v9    # "out":Lorg/jbox2d/common/Vec2;
    :cond_1a4
    const/16 v22, 0x0

    goto/16 :goto_10f
.end method

.method public final set([Lorg/jbox2d/common/Vec2;I)V
    .registers 4
    .param p1, "vertices"    # [Lorg/jbox2d/common/Vec2;
    .param p2, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/jbox2d/collision/shapes/PolygonShape;->set([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/pooling/arrays/Vec2Array;Lorg/jbox2d/pooling/arrays/IntArray;)V

    .line 112
    return-void
.end method

.method public final set([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/pooling/arrays/Vec2Array;Lorg/jbox2d/pooling/arrays/IntArray;)V
    .registers 29
    .param p1, "verts"    # [Lorg/jbox2d/common/Vec2;
    .param p2, "num"    # I
    .param p3, "vecPool"    # Lorg/jbox2d/pooling/arrays/Vec2Array;
    .param p4, "intPool"    # Lorg/jbox2d/pooling/arrays/IntArray;

    .prologue
    .line 124
    sget-boolean v21, Lorg/jbox2d/collision/shapes/PolygonShape;->$assertionsDisabled:Z

    if-nez v21, :cond_1a

    const/16 v21, 0x3

    move/from16 v0, v21

    move/from16 v1, p2

    if-gt v0, v1, :cond_14

    const/16 v21, 0x8

    move/from16 v0, p2

    move/from16 v1, v21

    if-le v0, v1, :cond_1a

    :cond_14
    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 125
    :cond_1a
    const/16 v21, 0x3

    move/from16 v0, p2

    move/from16 v1, v21

    if-ge v0, v1, :cond_30

    .line 126
    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/shapes/PolygonShape;->setAsBox(FF)V

    .line 215
    :goto_2f
    return-void

    .line 130
    :cond_30
    const/16 v21, 0x8

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/jbox2d/common/MathUtils;->min(II)I

    move-result v15

    .line 133
    .local v15, "n":I
    if-eqz p3, :cond_4c

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/jbox2d/pooling/arrays/Vec2Array;->get(I)[Lorg/jbox2d/common/Vec2;

    move-result-object v16

    .line 134
    .local v16, "ps":[Lorg/jbox2d/common/Vec2;
    :goto_42
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_43
    if-ge v7, v15, :cond_51

    .line 135
    aget-object v21, p1, v7

    aput-object v21, v16, v7

    .line 134
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 133
    .end local v7    # "i":I
    .end local v16    # "ps":[Lorg/jbox2d/common/Vec2;
    :cond_4c
    new-array v0, v15, [Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    goto :goto_42

    .line 142
    .restart local v7    # "i":I
    .restart local v16    # "ps":[Lorg/jbox2d/common/Vec2;
    :cond_51
    const/4 v8, 0x0

    .line 143
    .local v8, "i0":I
    const/16 v21, 0x0

    aget-object v21, v16, v21

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v20, v0

    .line 144
    .local v20, "x0":F
    const/4 v7, 0x1

    :goto_5d
    move/from16 v0, p2

    if-ge v7, v0, :cond_8b

    .line 145
    aget-object v21, v16, v7

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    .line 146
    .local v19, "x":F
    cmpl-float v21, v19, v20

    if-gtz v21, :cond_85

    cmpl-float v21, v19, v20

    if-nez v21, :cond_88

    aget-object v21, v16, v7

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v21, v0

    aget-object v22, v16, v8

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_88

    .line 147
    :cond_85
    move v8, v7

    .line 148
    move/from16 v20, v19

    .line 144
    :cond_88
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    .line 152
    .end local v19    # "x":F
    :cond_8b
    if-eqz p4, :cond_a5

    const/16 v21, 0x8

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jbox2d/pooling/arrays/IntArray;->get(I)[I

    move-result-object v6

    .line 156
    .local v6, "hull":[I
    :goto_97
    const/4 v14, 0x0

    .line 157
    .local v14, "m":I
    move v12, v8

    .line 160
    .local v12, "ih":I
    :cond_99
    aput v12, v6, v14

    .line 162
    const/4 v11, 0x0

    .line 163
    .local v11, "ie":I
    const/4 v13, 0x1

    .local v13, "j":I
    :goto_9d
    if-ge v13, v15, :cond_f3

    .line 164
    if-ne v11, v12, :cond_ac

    .line 165
    move v11, v13

    .line 163
    :cond_a2
    :goto_a2
    add-int/lit8 v13, v13, 0x1

    goto :goto_9d

    .line 152
    .end local v6    # "hull":[I
    .end local v11    # "ie":I
    .end local v12    # "ih":I
    .end local v13    # "j":I
    .end local v14    # "m":I
    :cond_a5
    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v6, v0, [I

    goto :goto_97

    .line 169
    .restart local v6    # "hull":[I
    .restart local v11    # "ie":I
    .restart local v12    # "ih":I
    .restart local v13    # "j":I
    .restart local v14    # "m":I
    :cond_ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->pool1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    aget-object v22, v16, v11

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    aget v22, v6, v14

    aget-object v22, v16, v22

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v17

    .line 170
    .local v17, "r":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->pool2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    aget-object v22, v16, v13

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    aget v22, v6, v14

    aget-object v22, v16, v22

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    .line 171
    .local v18, "v":Lorg/jbox2d/common/Vec2;
    invoke-static/range {v17 .. v18}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v4

    .line 172
    .local v4, "c":F
    const/16 v21, 0x0

    cmpg-float v21, v4, v21

    if-gez v21, :cond_df

    .line 173
    move v11, v13

    .line 177
    :cond_df
    const/16 v21, 0x0

    cmpl-float v21, v4, v21

    if-nez v21, :cond_a2

    invoke-virtual/range {v18 .. v18}, Lorg/jbox2d/common/Vec2;->lengthSquared()F

    move-result v21

    invoke-virtual/range {v17 .. v17}, Lorg/jbox2d/common/Vec2;->lengthSquared()F

    move-result v22

    cmpl-float v21, v21, v22

    if-lez v21, :cond_a2

    .line 178
    move v11, v13

    goto :goto_a2

    .line 182
    .end local v4    # "c":F
    .end local v17    # "r":Lorg/jbox2d/common/Vec2;
    .end local v18    # "v":Lorg/jbox2d/common/Vec2;
    :cond_f3
    add-int/lit8 v14, v14, 0x1

    .line 183
    move v12, v11

    .line 185
    if-ne v11, v8, :cond_99

    .line 190
    move-object/from16 v0, p0

    iput v14, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    .line 193
    const/4 v7, 0x0

    :goto_fd
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_130

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    if-nez v21, :cond_11e

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    new-instance v22, Lorg/jbox2d/common/Vec2;

    invoke-direct/range {v22 .. v22}, Lorg/jbox2d/common/Vec2;-><init>()V

    aput-object v22, v21, v7

    .line 197
    :cond_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    aget v22, v6, v7

    aget-object v22, v16, v22

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 193
    add-int/lit8 v7, v7, 0x1

    goto :goto_fd

    .line 200
    :cond_130
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->pool1:Lorg/jbox2d/common/Vec2;

    .line 203
    .local v5, "edge":Lorg/jbox2d/common/Vec2;
    const/4 v7, 0x0

    :goto_135
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_19e

    .line 204
    move v9, v7

    .line 205
    .local v9, "i1":I
    add-int/lit8 v21, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_17d

    add-int/lit8 v10, v7, 0x1

    .line 206
    .local v10, "i2":I
    :goto_150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    aget-object v21, v21, v10

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    invoke-virtual/range {v21 .. v22}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 208
    sget-boolean v21, Lorg/jbox2d/collision/shapes/PolygonShape;->$assertionsDisabled:Z

    if-nez v21, :cond_17f

    invoke-virtual {v5}, Lorg/jbox2d/common/Vec2;->lengthSquared()F

    move-result v21

    const/high16 v22, 0x28800000

    cmpl-float v21, v21, v22

    if-gtz v21, :cond_17f

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 205
    .end local v10    # "i2":I
    :cond_17d
    const/4 v10, 0x0

    goto :goto_150

    .line 209
    .restart local v10    # "i2":I
    :cond_17f
    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    aget-object v22, v22, v7

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v5, v0, v1}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    invoke-virtual/range {v21 .. v21}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 203
    add-int/lit8 v7, v7, 0x1

    goto :goto_135

    .line 214
    .end local v9    # "i1":I
    .end local v10    # "i2":I
    :cond_19e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/jbox2d/collision/shapes/PolygonShape;->computeCentroidToOut([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/common/Vec2;)V

    goto/16 :goto_2f
.end method

.method public final setAsBox(FF)V
    .registers 11
    .param p1, "hx"    # F
    .param p2, "hy"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 224
    const/4 v0, 0x4

    iput v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    .line 225
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v0, v0, v6

    neg-float v1, p1

    neg-float v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 226
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v0, v0, v7

    neg-float v1, p2

    invoke-virtual {v0, p1, v1}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 227
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 228
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    neg-float v1, p1

    invoke-virtual {v0, v1, p2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 229
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3, v4}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 230
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    aget-object v0, v0, v7

    invoke-virtual {v0, v5, v3}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 231
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v3, v5}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 232
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v4, v3}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 233
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 234
    return-void
.end method

.method public final setAsBox(FFLorg/jbox2d/common/Vec2;F)V
    .registers 15
    .param p1, "hx"    # F
    .param p2, "hy"    # F
    .param p3, "center"    # Lorg/jbox2d/common/Vec2;
    .param p4, "angle"    # F

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    .line 245
    const/4 v2, 0x4

    iput v2, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    .line 246
    iget-object v2, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v2, v2, v8

    neg-float v3, p1

    neg-float v4, p2

    invoke-virtual {v2, v3, v4}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 247
    iget-object v2, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v2, v2, v9

    neg-float v3, p2

    invoke-virtual {v2, p1, v3}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 248
    iget-object v2, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1, p2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 249
    iget-object v2, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    neg-float v3, p1

    invoke-virtual {v2, v3, p2}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 250
    iget-object v2, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5, v6}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 251
    iget-object v2, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    aget-object v2, v2, v9

    invoke-virtual {v2, v7, v5}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 252
    iget-object v2, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, v5, v7}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 253
    iget-object v2, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2, v6, v5}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 254
    iget-object v2, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, p3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 256
    iget-object v1, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->poolt1:Lorg/jbox2d/common/Transform;

    .line 257
    .local v1, "xf":Lorg/jbox2d/common/Transform;
    iget-object v2, v1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, p3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 258
    iget-object v2, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-virtual {v2, p4}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5c
    iget v2, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    if-ge v0, v2, :cond_7b

    .line 262
    iget-object v2, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v3, v3, v0

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Transform;->mulToOut(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 263
    iget-object v2, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v3, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    aget-object v4, v4, v0

    invoke-static {v2, v3, v4}, Lorg/jbox2d/common/Rot;->mulToOut(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 265
    :cond_7b
    return-void
.end method

.method public final testPoint(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;)Z
    .registers 14
    .param p1, "xf"    # Lorg/jbox2d/common/Transform;
    .param p2, "p"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 274
    iget-object v8, p1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    .line 276
    .local v8, "xfq":Lorg/jbox2d/common/Rot;
    iget v9, p2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v10, p1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->x:F

    sub-float v5, v9, v10

    .line 277
    .local v5, "tempx":F
    iget v9, p2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v10, p1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->y:F

    sub-float v6, v9, v10

    .line 278
    .local v6, "tempy":F
    iget v9, v8, Lorg/jbox2d/common/Rot;->c:F

    mul-float/2addr v9, v5

    iget v10, v8, Lorg/jbox2d/common/Rot;->s:F

    mul-float/2addr v10, v6

    add-float v3, v9, v10

    .line 279
    .local v3, "pLocalx":F
    iget v9, v8, Lorg/jbox2d/common/Rot;->s:F

    neg-float v9, v9

    mul-float/2addr v9, v5

    iget v10, v8, Lorg/jbox2d/common/Rot;->c:F

    mul-float/2addr v10, v6

    add-float v4, v9, v10

    .line 290
    .local v4, "pLocaly":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    iget v9, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    if-ge v1, v9, :cond_4a

    .line 291
    iget-object v9, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v7, v9, v1

    .line 292
    .local v7, "vertex":Lorg/jbox2d/common/Vec2;
    iget-object v9, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    aget-object v2, v9, v1

    .line 293
    .local v2, "normal":Lorg/jbox2d/common/Vec2;
    iget v9, v7, Lorg/jbox2d/common/Vec2;->x:F

    sub-float v5, v3, v9

    .line 294
    iget v9, v7, Lorg/jbox2d/common/Vec2;->y:F

    sub-float v6, v4, v9

    .line 295
    iget v9, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v9, v5

    iget v10, v2, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v10, v6

    add-float v0, v9, v10

    .line 296
    .local v0, "dot":F
    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-lez v9, :cond_47

    .line 297
    const/4 v9, 0x0

    .line 301
    .end local v0    # "dot":F
    .end local v2    # "normal":Lorg/jbox2d/common/Vec2;
    .end local v7    # "vertex":Lorg/jbox2d/common/Vec2;
    :goto_46
    return v9

    .line 290
    .restart local v0    # "dot":F
    .restart local v2    # "normal":Lorg/jbox2d/common/Vec2;
    .restart local v7    # "vertex":Lorg/jbox2d/common/Vec2;
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 301
    .end local v0    # "dot":F
    .end local v2    # "normal":Lorg/jbox2d/common/Vec2;
    .end local v7    # "vertex":Lorg/jbox2d/common/Vec2;
    :cond_4a
    const/4 v9, 0x1

    goto :goto_46
.end method

.method public validate()Z
    .registers 12

    .prologue
    const/4 v8, 0x0

    .line 562
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget v9, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    if-ge v2, v9, :cond_4a

    .line 563
    move v3, v2

    .line 564
    .local v3, "i1":I
    iget v9, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_2d

    add-int/lit8 v4, v3, 0x1

    .line 565
    .local v4, "i2":I
    :goto_f
    iget-object v9, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v6, v9, v3

    .line 566
    .local v6, "p":Lorg/jbox2d/common/Vec2;
    iget-object v9, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->pool1:Lorg/jbox2d/common/Vec2;

    iget-object v10, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    .line 568
    .local v1, "e":Lorg/jbox2d/common/Vec2;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_22
    iget v9, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    if-ge v5, v9, :cond_47

    .line 569
    if-eq v5, v3, :cond_2a

    if-ne v5, v4, :cond_2f

    .line 568
    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .end local v1    # "e":Lorg/jbox2d/common/Vec2;
    .end local v4    # "i2":I
    .end local v5    # "j":I
    .end local v6    # "p":Lorg/jbox2d/common/Vec2;
    :cond_2d
    move v4, v8

    .line 564
    goto :goto_f

    .line 573
    .restart local v1    # "e":Lorg/jbox2d/common/Vec2;
    .restart local v4    # "i2":I
    .restart local v5    # "j":I
    .restart local v6    # "p":Lorg/jbox2d/common/Vec2;
    :cond_2f
    iget-object v9, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->pool2:Lorg/jbox2d/common/Vec2;

    iget-object v10, p0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v10, v10, v5

    invoke-virtual {v9, v10}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v7

    .line 574
    .local v7, "v":Lorg/jbox2d/common/Vec2;
    invoke-static {v1, v7}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    .line 575
    .local v0, "c":F
    const/4 v9, 0x0

    cmpg-float v9, v0, v9

    if-gez v9, :cond_2a

    .line 581
    .end local v0    # "c":F
    .end local v1    # "e":Lorg/jbox2d/common/Vec2;
    .end local v3    # "i1":I
    .end local v4    # "i2":I
    .end local v5    # "j":I
    .end local v6    # "p":Lorg/jbox2d/common/Vec2;
    .end local v7    # "v":Lorg/jbox2d/common/Vec2;
    :goto_46
    return v8

    .line 562
    .restart local v1    # "e":Lorg/jbox2d/common/Vec2;
    .restart local v3    # "i1":I
    .restart local v4    # "i2":I
    .restart local v5    # "j":I
    .restart local v6    # "p":Lorg/jbox2d/common/Vec2;
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 581
    .end local v1    # "e":Lorg/jbox2d/common/Vec2;
    .end local v3    # "i1":I
    .end local v4    # "i2":I
    .end local v5    # "j":I
    .end local v6    # "p":Lorg/jbox2d/common/Vec2;
    :cond_4a
    const/4 v8, 0x1

    goto :goto_46
.end method
