###### Class org.jbox2d.collision.shapes.EdgeShape (org.jbox2d.collision.shapes.EdgeShape)
.class public Lorg/jbox2d/collision/shapes/EdgeShape;
.super Lorg/jbox2d/collision/shapes/Shape;
.source "EdgeShape.java"


# instance fields
.field public m_hasVertex0:Z

.field public m_hasVertex3:Z

.field public final m_vertex0:Lorg/jbox2d/common/Vec2;

.field public final m_vertex1:Lorg/jbox2d/common/Vec2;

.field public final m_vertex2:Lorg/jbox2d/common/Vec2;

.field public final m_vertex3:Lorg/jbox2d/common/Vec2;

.field private final normal:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 63
    sget-object v0, Lorg/jbox2d/collision/shapes/ShapeType;->EDGE:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-direct {p0, v0}, Lorg/jbox2d/collision/shapes/Shape;-><init>(Lorg/jbox2d/collision/shapes/ShapeType;)V

    .line 45
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    .line 49
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    .line 54
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex0:Lorg/jbox2d/common/Vec2;

    .line 58
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex3:Lorg/jbox2d/common/Vec2;

    .line 59
    iput-boolean v1, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_hasVertex0:Z

    iput-boolean v1, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_hasVertex3:Z

    .line 84
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->normal:Lorg/jbox2d/common/Vec2;

    .line 64
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_radius:F

    .line 65
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/jbox2d/collision/shapes/EdgeShape;->clone()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jbox2d/collision/shapes/Shape;
    .registers 4

    .prologue
    .line 201
    new-instance v0, Lorg/jbox2d/collision/shapes/EdgeShape;

    invoke-direct {v0}, Lorg/jbox2d/collision/shapes/EdgeShape;-><init>()V

    .line 202
    .local v0, "edge":Lorg/jbox2d/collision/shapes/EdgeShape;
    iget v1, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_radius:F

    iput v1, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_radius:F

    .line 203
    iget-boolean v1, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_hasVertex0:Z

    iput-boolean v1, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_hasVertex0:Z

    .line 204
    iget-boolean v1, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_hasVertex3:Z

    iput-boolean v1, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_hasVertex3:Z

    .line 205
    iget-object v1, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex0:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex0:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 206
    iget-object v1, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 207
    iget-object v1, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 208
    iget-object v1, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex3:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex3:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 209
    return-object v0
.end method

.method public computeAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/Transform;I)V
    .registers 14
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;
    .param p2, "xf"    # Lorg/jbox2d/common/Transform;
    .param p3, "childIndex"    # I

    .prologue
    .line 172
    iget-object v0, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    .line 173
    .local v0, "lowerBound":Lorg/jbox2d/common/Vec2;
    iget-object v1, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    .line 174
    .local v1, "upperBound":Lorg/jbox2d/common/Vec2;
    iget-object v6, p2, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    .line 176
    .local v6, "xfq":Lorg/jbox2d/common/Rot;
    iget v7, v6, Lorg/jbox2d/common/Rot;->c:F

    iget-object v8, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v7, v8

    iget v8, v6, Lorg/jbox2d/common/Rot;->s:F

    iget-object v9, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget-object v8, p2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->x:F

    add-float v2, v7, v8

    .line 177
    .local v2, "v1x":F
    iget v7, v6, Lorg/jbox2d/common/Rot;->s:F

    iget-object v8, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v7, v8

    iget v8, v6, Lorg/jbox2d/common/Rot;->c:F

    iget-object v9, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->y:F

    add-float v3, v7, v8

    .line 178
    .local v3, "v1y":F
    iget v7, v6, Lorg/jbox2d/common/Rot;->c:F

    iget-object v8, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v7, v8

    iget v8, v6, Lorg/jbox2d/common/Rot;->s:F

    iget-object v9, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget-object v8, p2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->x:F

    add-float v4, v7, v8

    .line 179
    .local v4, "v2x":F
    iget v7, v6, Lorg/jbox2d/common/Rot;->s:F

    iget-object v8, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v7, v8

    iget v8, v6, Lorg/jbox2d/common/Rot;->c:F

    iget-object v9, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->y:F

    add-float v5, v7, v8

    .line 181
    .local v5, "v2y":F
    cmpg-float v7, v2, v4

    if-gez v7, :cond_91

    move v7, v2

    :goto_5f
    iput v7, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 182
    cmpg-float v7, v3, v5

    if-gez v7, :cond_93

    move v7, v3

    :goto_66
    iput v7, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 183
    cmpl-float v7, v2, v4

    if-lez v7, :cond_95

    .end local v2    # "v1x":F
    :goto_6c
    iput v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 184
    cmpl-float v7, v3, v5

    if-lez v7, :cond_97

    .end local v3    # "v1y":F
    :goto_72
    iput v3, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 186
    iget v7, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget v8, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_radius:F

    sub-float/2addr v7, v8

    iput v7, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 187
    iget v7, v0, Lorg/jbox2d/common/Vec2;->y:F

    iget v8, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_radius:F

    sub-float/2addr v7, v8

    iput v7, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 188
    iget v7, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget v8, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_radius:F

    add-float/2addr v7, v8

    iput v7, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 189
    iget v7, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget v8, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_radius:F

    add-float/2addr v7, v8

    iput v7, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 190
    return-void

    .restart local v2    # "v1x":F
    .restart local v3    # "v1y":F
    :cond_91
    move v7, v4

    .line 181
    goto :goto_5f

    :cond_93
    move v7, v5

    .line 182
    goto :goto_66

    :cond_95
    move v2, v4

    .line 183
    goto :goto_6c

    .end local v2    # "v1x":F
    :cond_97
    move v3, v5

    .line 184
    goto :goto_72
.end method

.method public computeMass(Lorg/jbox2d/collision/shapes/MassData;F)V
    .registers 6
    .param p1, "massData"    # Lorg/jbox2d/collision/shapes/MassData;
    .param p2, "density"    # F

    .prologue
    const/4 v2, 0x0

    .line 194
    iput v2, p1, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    .line 195
    iget-object v0, p1, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 196
    iput v2, p1, Lorg/jbox2d/collision/shapes/MassData;->I:F

    .line 197
    return-void
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public raycast(Lorg/jbox2d/collision/RayCastOutput;Lorg/jbox2d/collision/RayCastInput;Lorg/jbox2d/common/Transform;I)Z
    .registers 33
    .param p1, "output"    # Lorg/jbox2d/collision/RayCastOutput;
    .param p2, "input"    # Lorg/jbox2d/collision/RayCastInput;
    .param p3, "xf"    # Lorg/jbox2d/common/Transform;
    .param p4, "childIndex"    # I

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    .line 91
    .local v21, "v1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    .line 92
    .local v22, "v2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v24, v0

    .line 93
    .local v24, "xfq":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    .line 98
    .local v23, "xfp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastInput;->p1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    sub-float v19, v25, v26

    .line 99
    .local v19, "tempx":F
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastInput;->p1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    sub-float v20, v25, v26

    .line 100
    .local v20, "tempy":F
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v25, v0

    mul-float v25, v25, v19

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v26, v0

    mul-float v26, v26, v20

    add-float v8, v25, v26

    .line 101
    .local v8, "p1x":F
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v19

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v26, v0

    mul-float v26, v26, v20

    add-float v9, v25, v26

    .line 103
    .local v9, "p1y":F
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastInput;->p2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    sub-float v19, v25, v26

    .line 104
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastInput;->p2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    sub-float v20, v25, v26

    .line 105
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v25, v0

    mul-float v25, v25, v19

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v26, v0

    mul-float v26, v26, v20

    add-float v10, v25, v26

    .line 106
    .local v10, "p2x":F
    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v19

    move-object/from16 v0, v24

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v26, v0

    mul-float v26, v26, v20

    add-float v11, v25, v26

    .line 108
    .local v11, "p2y":F
    sub-float v3, v10, v8

    .line 109
    .local v3, "dx":F
    sub-float v4, v11, v9

    .line 113
    .local v4, "dy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v5, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 117
    .local v5, "normalx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v6, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 122
    .local v6, "normaly":F
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    sub-float v19, v25, v8

    .line 123
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    sub-float v20, v25, v9

    .line 124
    mul-float v25, v5, v19

    mul-float v26, v6, v20

    add-float v7, v25, v26

    .line 125
    .local v7, "numerator":F
    mul-float v25, v5, v3

    mul-float v26, v6, v4

    add-float v2, v25, v26

    .line 127
    .local v2, "denominator":F
    const/16 v25, 0x0

    cmpl-float v25, v2, v25

    if-nez v25, :cond_134

    .line 128
    const/16 v25, 0x0

    .line 167
    :goto_133
    return v25

    .line 131
    :cond_134
    div-float v18, v7, v2

    .line 132
    .local v18, "t":F
    const/16 v25, 0x0

    cmpg-float v25, v18, v25

    if-ltz v25, :cond_142

    const/high16 v25, 0x3f800000    # 1.0f

    cmpg-float v25, v25, v18

    if-gez v25, :cond_145

    .line 133
    :cond_142
    const/16 v25, 0x0

    goto :goto_133

    .line 137
    :cond_145
    mul-float v25, v18, v3

    add-float v12, v8, v25

    .line 138
    .local v12, "qx":F
    mul-float v25, v18, v4

    add-float v13, v9, v25

    .line 143
    .local v13, "qy":F
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    sub-float v15, v25, v26

    .line 144
    .local v15, "rx":F
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    sub-float v16, v25, v26

    .line 145
    .local v16, "ry":F
    mul-float v25, v15, v15

    mul-float v26, v16, v16

    add-float v14, v25, v26

    .line 146
    .local v14, "rr":F
    const/16 v25, 0x0

    cmpl-float v25, v14, v25

    if-nez v25, :cond_178

    .line 147
    const/16 v25, 0x0

    goto :goto_133

    .line 149
    :cond_178
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v25, v0

    sub-float v19, v12, v25

    .line 150
    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v25, v0

    sub-float v20, v13, v25

    .line 152
    mul-float v25, v19, v15

    mul-float v26, v20, v16

    add-float v25, v25, v26

    div-float v17, v25, v14

    .line 153
    .local v17, "s":F
    const/16 v25, 0x0

    cmpg-float v25, v17, v25

    if-ltz v25, :cond_19c

    const/high16 v25, 0x3f800000    # 1.0f

    cmpg-float v25, v25, v17

    if-gez v25, :cond_19f

    .line 154
    :cond_19c
    const/16 v25, 0x0

    goto :goto_133

    .line 157
    :cond_19f
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/RayCastOutput;->fraction:F

    .line 158
    const/16 v25, 0x0

    cmpl-float v25, v7, v25

    if-lez v25, :cond_1cd

    .line 160
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastOutput;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    neg-float v0, v5

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 161
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastOutput;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    neg-float v0, v6

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 167
    :goto_1c9
    const/16 v25, 0x1

    goto/16 :goto_133

    .line 164
    :cond_1cd
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastOutput;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iput v5, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 165
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastOutput;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iput v6, v0, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_1c9
.end method

.method public set(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "v1"    # Lorg/jbox2d/common/Vec2;
    .param p2, "v2"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 74
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_hasVertex3:Z

    iput-boolean v0, p0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_hasVertex0:Z

    .line 76
    return-void
.end method

.method public testPoint(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;)Z
    .registers 4
    .param p1, "xf"    # Lorg/jbox2d/common/Transform;
    .param p2, "p"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method
