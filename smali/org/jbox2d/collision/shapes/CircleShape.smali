###### Class org.jbox2d.collision.shapes.CircleShape (org.jbox2d.collision.shapes.CircleShape)
.class public Lorg/jbox2d/collision/shapes/CircleShape;
.super Lorg/jbox2d/collision/shapes/Shape;
.source "CircleShape.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final m_p:Lorg/jbox2d/common/Vec2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lorg/jbox2d/collision/shapes/CircleShape;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/collision/shapes/CircleShape;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    sget-object v0, Lorg/jbox2d/collision/shapes/ShapeType;->CIRCLE:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-direct {p0, v0}, Lorg/jbox2d/collision/shapes/Shape;-><init>(Lorg/jbox2d/collision/shapes/ShapeType;)V

    .line 45
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    .line 47
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
    .line 39
    invoke-virtual {p0}, Lorg/jbox2d/collision/shapes/CircleShape;->clone()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/jbox2d/collision/shapes/Shape;
    .registers 4

    .prologue
    .line 50
    new-instance v0, Lorg/jbox2d/collision/shapes/CircleShape;

    invoke-direct {v0}, Lorg/jbox2d/collision/shapes/CircleShape;-><init>()V

    .line 51
    .local v0, "shape":Lorg/jbox2d/collision/shapes/CircleShape;
    iget-object v1, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iput v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 52
    iget-object v1, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iput v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 53
    iget v1, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    iput v1, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    .line 54
    return-object v0
.end method

.method public final computeAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/Transform;I)V
    .registers 11
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;
    .param p2, "transform"    # Lorg/jbox2d/common/Transform;
    .param p3, "childIndex"    # I

    .prologue
    .line 171
    iget-object v3, p2, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    .line 172
    .local v3, "tq":Lorg/jbox2d/common/Rot;
    iget-object v2, p2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    .line 173
    .local v2, "tp":Lorg/jbox2d/common/Vec2;
    iget v4, v3, Lorg/jbox2d/common/Rot;->c:F

    iget-object v5, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget v5, v3, Lorg/jbox2d/common/Rot;->s:F

    iget-object v6, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, v2, Lorg/jbox2d/common/Vec2;->x:F

    add-float v0, v4, v5

    .line 174
    .local v0, "px":F
    iget v4, v3, Lorg/jbox2d/common/Rot;->s:F

    iget-object v5, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget v5, v3, Lorg/jbox2d/common/Rot;->c:F

    iget-object v6, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v2, Lorg/jbox2d/common/Vec2;->y:F

    add-float v1, v4, v5

    .line 176
    .local v1, "py":F
    iget-object v4, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v5, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    sub-float v5, v0, v5

    iput v5, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 177
    iget-object v4, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v5, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    sub-float v5, v1, v5

    iput v5, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 178
    iget-object v4, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v5, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    add-float/2addr v5, v0

    iput v5, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 179
    iget-object v4, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v5, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    add-float/2addr v5, v1

    iput v5, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 180
    return-void
.end method

.method public final computeMass(Lorg/jbox2d/collision/shapes/MassData;F)V
    .registers 8
    .param p1, "massData"    # Lorg/jbox2d/collision/shapes/MassData;
    .param p2, "density"    # F

    .prologue
    .line 184
    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, p2

    iget v1, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    mul-float/2addr v0, v1

    iput v0, p1, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    .line 185
    iget-object v0, p1, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 186
    iget-object v0, p1, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 190
    iget v0, p1, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    const/high16 v1, 0x3f000000    # 0.5f

    iget v2, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p1, Lorg/jbox2d/collision/shapes/MassData;->I:F

    .line 191
    return-void
.end method

.method public final getChildCount()I
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public final getSupport(Lorg/jbox2d/common/Vec2;)I
    .registers 3
    .param p1, "d"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public final getSupportVertex(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 3
    .param p1, "d"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public final getVertex(I)Lorg/jbox2d/common/Vec2;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 97
    sget-boolean v0, Lorg/jbox2d/collision/shapes/CircleShape;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-eqz p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :cond_c
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    return-object v0
.end method

.method public final getVertexCount()I
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public final raycast(Lorg/jbox2d/collision/RayCastOutput;Lorg/jbox2d/collision/RayCastInput;Lorg/jbox2d/common/Transform;I)Z
    .registers 25
    .param p1, "output"    # Lorg/jbox2d/collision/RayCastOutput;
    .param p2, "input"    # Lorg/jbox2d/collision/RayCastInput;
    .param p3, "transform"    # Lorg/jbox2d/common/Transform;
    .param p4, "childIndex"    # I

    .prologue
    .line 124
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/jbox2d/collision/RayCastInput;->p1:Lorg/jbox2d/common/Vec2;

    .line 125
    .local v5, "inputp1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/jbox2d/collision/RayCastInput;->p2:Lorg/jbox2d/common/Vec2;

    .line 126
    .local v6, "inputp2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v16, v0

    .line 127
    .local v16, "tq":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p3

    iget-object v15, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    .line 131
    .local v15, "tp":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    iget v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    add-float v7, v17, v18

    .line 132
    .local v7, "positionx":F
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    iget v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    add-float v8, v17, v18

    .line 134
    .local v8, "positiony":F
    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v17, v0

    sub-float v13, v17, v7

    .line 135
    .local v13, "sx":F
    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    sub-float v14, v17, v8

    .line 137
    .local v14, "sy":F
    mul-float v17, v13, v13

    mul-float v18, v14, v14

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    sub-float v3, v17, v18

    .line 140
    .local v3, "b":F
    iget v0, v6, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v17, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    sub-float v10, v17, v18

    .line 141
    .local v10, "rx":F
    iget v0, v6, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    iget v0, v5, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v18, v0

    sub-float v11, v17, v18

    .line 144
    .local v11, "ry":F
    mul-float v17, v13, v10

    mul-float v18, v14, v11

    add-float v4, v17, v18

    .line 145
    .local v4, "c":F
    mul-float v17, v10, v10

    mul-float v18, v11, v11

    add-float v9, v17, v18

    .line 146
    .local v9, "rr":F
    mul-float v17, v4, v4

    mul-float v18, v9, v3

    sub-float v12, v17, v18

    .line 149
    .local v12, "sigma":F
    const/16 v17, 0x0

    cmpg-float v17, v12, v17

    if-ltz v17, :cond_c6

    const/high16 v17, 0x34000000

    cmpg-float v17, v9, v17

    if-gez v17, :cond_c9

    .line 150
    :cond_c6
    const/16 v17, 0x0

    .line 166
    :goto_c8
    return v17

    .line 154
    :cond_c9
    invoke-static {v12}, Lorg/jbox2d/common/MathUtils;->sqrt(F)F

    move-result v17

    add-float v17, v17, v4

    move/from16 v0, v17

    neg-float v2, v0

    .line 157
    .local v2, "a":F
    const/16 v17, 0x0

    cmpg-float v17, v17, v2

    if-gtz v17, :cond_115

    move-object/from16 v0, p2

    iget v0, v0, Lorg/jbox2d/collision/RayCastInput;->maxFraction:F

    move/from16 v17, v0

    mul-float v17, v17, v9

    cmpg-float v17, v2, v17

    if-gtz v17, :cond_115

    .line 158
    div-float/2addr v2, v9

    .line 159
    move-object/from16 v0, p1

    iput v2, v0, Lorg/jbox2d/collision/RayCastOutput;->fraction:F

    .line 160
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastOutput;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    mul-float v18, v10, v2

    add-float v18, v18, v13

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 161
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastOutput;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    mul-float v18, v11, v2

    add-float v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 162
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastOutput;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 163
    const/16 v17, 0x1

    goto :goto_c8

    .line 166
    :cond_115
    const/16 v17, 0x0

    goto :goto_c8
.end method

.method public final testPoint(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;)Z
    .registers 10
    .param p1, "transform"    # Lorg/jbox2d/common/Transform;
    .param p2, "p"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 108
    iget-object v2, p1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    .line 109
    .local v2, "q":Lorg/jbox2d/common/Rot;
    iget-object v3, p1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    .line 110
    .local v3, "tp":Lorg/jbox2d/common/Vec2;
    iget v4, v2, Lorg/jbox2d/common/Rot;->c:F

    iget-object v5, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget v5, v2, Lorg/jbox2d/common/Rot;->s:F

    iget-object v6, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, v3, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v4, v5

    iget v5, p2, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v4, v5

    neg-float v0, v4

    .line 111
    .local v0, "centerx":F
    iget v4, v2, Lorg/jbox2d/common/Rot;->s:F

    iget-object v5, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v4, v5

    iget v5, v2, Lorg/jbox2d/common/Rot;->c:F

    iget-object v6, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v3, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v4, v5

    iget v5, p2, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v4, v5

    neg-float v1, v4

    .line 113
    .local v1, "centery":F
    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    iget v5, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    iget v6, p0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_40

    const/4 v4, 0x1

    :goto_3f
    return v4

    :cond_40
    const/4 v4, 0x0

    goto :goto_3f
.end method
