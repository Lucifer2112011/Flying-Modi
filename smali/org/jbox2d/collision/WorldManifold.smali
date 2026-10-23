###### Class org.jbox2d.collision.WorldManifold (org.jbox2d.collision.WorldManifold)
.class public Lorg/jbox2d/collision/WorldManifold;
.super Ljava/lang/Object;
.source "WorldManifold.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/collision/WorldManifold$1;
    }
.end annotation


# instance fields
.field public final normal:Lorg/jbox2d/common/Vec2;

.field public final points:[Lorg/jbox2d/common/Vec2;

.field private final pool3:Lorg/jbox2d/common/Vec2;

.field private final pool4:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/WorldManifold;->pool3:Lorg/jbox2d/common/Vec2;

    .line 57
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/WorldManifold;->pool4:Lorg/jbox2d/common/Vec2;

    .line 49
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    .line 50
    new-array v1, v3, [Lorg/jbox2d/common/Vec2;

    iput-object v1, p0, Lorg/jbox2d/collision/WorldManifold;->points:[Lorg/jbox2d/common/Vec2;

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    if-ge v0, v3, :cond_2c

    .line 52
    iget-object v1, p0, Lorg/jbox2d/collision/WorldManifold;->points:[Lorg/jbox2d/common/Vec2;

    new-instance v2, Lorg/jbox2d/common/Vec2;

    invoke-direct {v2}, Lorg/jbox2d/common/Vec2;-><init>()V

    aput-object v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 54
    :cond_2c
    return-void
.end method


# virtual methods
.method public final initialize(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/common/Transform;FLorg/jbox2d/common/Transform;F)V
    .registers 20
    .param p1, "manifold"    # Lorg/jbox2d/collision/Manifold;
    .param p2, "xfA"    # Lorg/jbox2d/common/Transform;
    .param p3, "radiusA"    # F
    .param p4, "xfB"    # Lorg/jbox2d/common/Transform;
    .param p5, "radiusB"    # F

    .prologue
    .line 61
    iget v11, p1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-nez v11, :cond_5

    .line 207
    :cond_4
    :goto_4
    return-void

    .line 65
    :cond_5
    sget-object v11, Lorg/jbox2d/collision/WorldManifold$1;->$SwitchMap$org$jbox2d$collision$Manifold$ManifoldType:[I

    iget-object v12, p1, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    invoke-virtual {v12}, Lorg/jbox2d/collision/Manifold$ManifoldType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_1aa

    goto :goto_4

    .line 82
    :pswitch_13
    iget-object v8, p0, Lorg/jbox2d/collision/WorldManifold;->pool3:Lorg/jbox2d/common/Vec2;

    .line 83
    .local v8, "pointA":Lorg/jbox2d/common/Vec2;
    iget-object v9, p0, Lorg/jbox2d/collision/WorldManifold;->pool4:Lorg/jbox2d/common/Vec2;

    .line 85
    .local v9, "pointB":Lorg/jbox2d/common/Vec2;
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v11, Lorg/jbox2d/common/Vec2;->x:F

    .line 86
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    const/4 v12, 0x0

    iput v12, v11, Lorg/jbox2d/common/Vec2;->y:F

    .line 95
    iget-object v11, p1, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p2

    invoke-static {v0, v11, v8}, Lorg/jbox2d/common/Transform;->mulToOut(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 96
    iget-object v11, p1, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p4

    invoke-static {v0, v11, v9}, Lorg/jbox2d/common/Transform;->mulToOut(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 98
    invoke-static {v8, v9}, Lorg/jbox2d/common/MathUtils;->distanceSquared(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v11

    const/high16 v12, 0x28800000

    cmpl-float v11, v11, v12

    if-lez v11, :cond_56

    .line 99
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v12, v9, Lorg/jbox2d/common/Vec2;->x:F

    iget v13, v8, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Vec2;->x:F

    .line 100
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v12, v9, Lorg/jbox2d/common/Vec2;->y:F

    iget v13, v8, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Vec2;->y:F

    .line 101
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v11}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 104
    :cond_56
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v11, v11, p3

    iget v12, v8, Lorg/jbox2d/common/Vec2;->x:F

    add-float v1, v11, v12

    .line 105
    .local v1, "cAx":F
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v11, v11, p3

    iget v12, v8, Lorg/jbox2d/common/Vec2;->y:F

    add-float v2, v11, v12

    .line 107
    .local v2, "cAy":F
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->x:F

    neg-float v11, v11

    mul-float v11, v11, p5

    iget v12, v9, Lorg/jbox2d/common/Vec2;->x:F

    add-float v3, v11, v12

    .line 108
    .local v3, "cBx":F
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->y:F

    neg-float v11, v11

    mul-float v11, v11, p5

    iget v12, v9, Lorg/jbox2d/common/Vec2;->y:F

    add-float v4, v11, v12

    .line 110
    .local v4, "cBy":F
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->points:[Lorg/jbox2d/common/Vec2;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    add-float v12, v1, v3

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Vec2;->x:F

    .line 111
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->points:[Lorg/jbox2d/common/Vec2;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    add-float v12, v2, v4

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_4

    .line 115
    .end local v1    # "cAx":F
    .end local v2    # "cAy":F
    .end local v3    # "cBx":F
    .end local v4    # "cBy":F
    .end local v8    # "pointA":Lorg/jbox2d/common/Vec2;
    .end local v9    # "pointB":Lorg/jbox2d/common/Vec2;
    :pswitch_9a
    iget-object v7, p0, Lorg/jbox2d/collision/WorldManifold;->pool3:Lorg/jbox2d/common/Vec2;

    .line 117
    .local v7, "planePoint":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p2

    iget-object v11, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v12, p1, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    iget-object v13, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v11, v12, v13}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 118
    iget-object v11, p1, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p2

    invoke-static {v0, v11, v7}, Lorg/jbox2d/common/Transform;->mulToOut(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 120
    iget-object v5, p0, Lorg/jbox2d/collision/WorldManifold;->pool4:Lorg/jbox2d/common/Vec2;

    .line 122
    .local v5, "clipPoint":Lorg/jbox2d/common/Vec2;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_b1
    iget v11, p1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-ge v6, v11, :cond_4

    .line 128
    iget-object v11, p1, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v11, v11, v6

    iget-object v11, v11, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p4

    invoke-static {v0, v11, v5}, Lorg/jbox2d/common/Transform;->mulToOut(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 136
    iget v11, v5, Lorg/jbox2d/common/Vec2;->x:F

    iget v12, v7, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v11, v12

    iget-object v12, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v12

    iget v12, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget v13, v7, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v12, v13

    iget-object v13, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v13, v13, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    sub-float v10, p3, v11

    .line 141
    .local v10, "scalar":F
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v10

    iget v12, v5, Lorg/jbox2d/common/Vec2;->x:F

    add-float v1, v11, v12

    .line 142
    .restart local v1    # "cAx":F
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v11, v10

    iget v12, v5, Lorg/jbox2d/common/Vec2;->y:F

    add-float v2, v11, v12

    .line 144
    .restart local v2    # "cAy":F
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->x:F

    neg-float v11, v11

    mul-float v11, v11, p5

    iget v12, v5, Lorg/jbox2d/common/Vec2;->x:F

    add-float v3, v11, v12

    .line 145
    .restart local v3    # "cBx":F
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->y:F

    neg-float v11, v11

    mul-float v11, v11, p5

    iget v12, v5, Lorg/jbox2d/common/Vec2;->y:F

    add-float v4, v11, v12

    .line 147
    .restart local v4    # "cBy":F
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->points:[Lorg/jbox2d/common/Vec2;

    aget-object v11, v11, v6

    add-float v12, v1, v3

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Vec2;->x:F

    .line 148
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->points:[Lorg/jbox2d/common/Vec2;

    aget-object v11, v11, v6

    add-float v12, v2, v4

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Vec2;->y:F

    .line 122
    add-int/lit8 v6, v6, 0x1

    goto :goto_b1

    .line 153
    .end local v1    # "cAx":F
    .end local v2    # "cAy":F
    .end local v3    # "cBx":F
    .end local v4    # "cBy":F
    .end local v5    # "clipPoint":Lorg/jbox2d/common/Vec2;
    .end local v6    # "i":I
    .end local v7    # "planePoint":Lorg/jbox2d/common/Vec2;
    .end local v10    # "scalar":F
    :pswitch_118
    iget-object v7, p0, Lorg/jbox2d/collision/WorldManifold;->pool3:Lorg/jbox2d/common/Vec2;

    .line 154
    .restart local v7    # "planePoint":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p4

    iget-object v11, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v12, p1, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    iget-object v13, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v11, v12, v13}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 155
    iget-object v11, p1, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p4

    invoke-static {v0, v11, v7}, Lorg/jbox2d/common/Transform;->mulToOut(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 164
    iget-object v5, p0, Lorg/jbox2d/collision/WorldManifold;->pool4:Lorg/jbox2d/common/Vec2;

    .line 166
    .restart local v5    # "clipPoint":Lorg/jbox2d/common/Vec2;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_12f
    iget v11, p1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-ge v6, v11, :cond_196

    .line 173
    iget-object v11, p1, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v11, v11, v6

    iget-object v11, v11, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p2

    invoke-static {v0, v11, v5}, Lorg/jbox2d/common/Transform;->mulToOut(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 188
    iget v11, v5, Lorg/jbox2d/common/Vec2;->x:F

    iget v12, v7, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v11, v12

    iget-object v12, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v12

    iget v12, v5, Lorg/jbox2d/common/Vec2;->y:F

    iget v13, v7, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v12, v13

    iget-object v13, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v13, v13, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    sub-float v10, p5, v11

    .line 193
    .restart local v10    # "scalar":F
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v10

    iget v12, v5, Lorg/jbox2d/common/Vec2;->x:F

    add-float v3, v11, v12

    .line 194
    .restart local v3    # "cBx":F
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v11, v10

    iget v12, v5, Lorg/jbox2d/common/Vec2;->y:F

    add-float v4, v11, v12

    .line 196
    .restart local v4    # "cBy":F
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->x:F

    neg-float v11, v11

    mul-float v11, v11, p3

    iget v12, v5, Lorg/jbox2d/common/Vec2;->x:F

    add-float v1, v11, v12

    .line 197
    .restart local v1    # "cAx":F
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v11, v11, Lorg/jbox2d/common/Vec2;->y:F

    neg-float v11, v11

    mul-float v11, v11, p3

    iget v12, v5, Lorg/jbox2d/common/Vec2;->y:F

    add-float v2, v11, v12

    .line 199
    .restart local v2    # "cAy":F
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->points:[Lorg/jbox2d/common/Vec2;

    aget-object v11, v11, v6

    add-float v12, v1, v3

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Vec2;->x:F

    .line 200
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->points:[Lorg/jbox2d/common/Vec2;

    aget-object v11, v11, v6

    add-float v12, v2, v4

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Vec2;->y:F

    .line 166
    add-int/lit8 v6, v6, 0x1

    goto :goto_12f

    .line 203
    .end local v1    # "cAx":F
    .end local v2    # "cAy":F
    .end local v3    # "cBx":F
    .end local v4    # "cBy":F
    .end local v10    # "scalar":F
    :cond_196
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget-object v12, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    neg-float v12, v12

    iput v12, v11, Lorg/jbox2d/common/Vec2;->x:F

    .line 204
    iget-object v11, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget-object v12, p0, Lorg/jbox2d/collision/WorldManifold;->normal:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->y:F

    neg-float v12, v12

    iput v12, v11, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_4

    .line 65
    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_13
        :pswitch_9a
        :pswitch_118
    .end packed-switch
.end method

###### Class org.jbox2d.collision.WorldManifold.AnonymousClass1 (org.jbox2d.collision.WorldManifold$1)
.class synthetic Lorg/jbox2d/collision/WorldManifold$1;
.super Ljava/lang/Object;
.source "WorldManifold.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/WorldManifold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jbox2d$collision$Manifold$ManifoldType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 65
    invoke-static {}, Lorg/jbox2d/collision/Manifold$ManifoldType;->values()[Lorg/jbox2d/collision/Manifold$ManifoldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jbox2d/collision/WorldManifold$1;->$SwitchMap$org$jbox2d$collision$Manifold$ManifoldType:[I

    :try_start_9
    sget-object v0, Lorg/jbox2d/collision/WorldManifold$1;->$SwitchMap$org$jbox2d$collision$Manifold$ManifoldType:[I

    sget-object v1, Lorg/jbox2d/collision/Manifold$ManifoldType;->CIRCLES:Lorg/jbox2d/collision/Manifold$ManifoldType;

    invoke-virtual {v1}, Lorg/jbox2d/collision/Manifold$ManifoldType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lorg/jbox2d/collision/WorldManifold$1;->$SwitchMap$org$jbox2d$collision$Manifold$ManifoldType:[I

    sget-object v1, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_A:Lorg/jbox2d/collision/Manifold$ManifoldType;

    invoke-virtual {v1}, Lorg/jbox2d/collision/Manifold$ManifoldType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lorg/jbox2d/collision/WorldManifold$1;->$SwitchMap$org$jbox2d$collision$Manifold$ManifoldType:[I

    sget-object v1, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_B:Lorg/jbox2d/collision/Manifold$ManifoldType;

    invoke-virtual {v1}, Lorg/jbox2d/collision/Manifold$ManifoldType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
