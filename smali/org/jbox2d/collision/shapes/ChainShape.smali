###### Class org.jbox2d.collision.shapes.ChainShape (org.jbox2d.collision.shapes.ChainShape)
.class public Lorg/jbox2d/collision/shapes/ChainShape;
.super Lorg/jbox2d/collision/shapes/Shape;
.source "ChainShape.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public m_count:I

.field public m_hasNextVertex:Z

.field public m_hasPrevVertex:Z

.field public final m_nextVertex:Lorg/jbox2d/common/Vec2;

.field public final m_prevVertex:Lorg/jbox2d/common/Vec2;

.field public m_vertices:[Lorg/jbox2d/common/Vec2;

.field private final pool0:Lorg/jbox2d/collision/shapes/EdgeShape;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lorg/jbox2d/collision/shapes/ChainShape;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/collision/shapes/ChainShape;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 54
    sget-object v0, Lorg/jbox2d/collision/shapes/ShapeType;->CHAIN:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-direct {p0, v0}, Lorg/jbox2d/collision/shapes/Shape;-><init>(Lorg/jbox2d/collision/shapes/ShapeType;)V

    .line 48
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_prevVertex:Lorg/jbox2d/common/Vec2;

    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_nextVertex:Lorg/jbox2d/common/Vec2;

    .line 49
    iput-boolean v1, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_hasPrevVertex:Z

    iput-boolean v1, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_hasNextVertex:Z

    .line 51
    new-instance v0, Lorg/jbox2d/collision/shapes/EdgeShape;

    invoke-direct {v0}, Lorg/jbox2d/collision/shapes/EdgeShape;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/shapes/ChainShape;->pool0:Lorg/jbox2d/collision/shapes/EdgeShape;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    .line 56
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_radius:F

    .line 57
    iput v1, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    .line 58
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
    .line 44
    invoke-virtual {p0}, Lorg/jbox2d/collision/shapes/ChainShape;->clone()Lorg/jbox2d/collision/shapes/Shape;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jbox2d/collision/shapes/Shape;
    .registers 4

    .prologue
    .line 164
    new-instance v0, Lorg/jbox2d/collision/shapes/ChainShape;

    invoke-direct {v0}, Lorg/jbox2d/collision/shapes/ChainShape;-><init>()V

    .line 165
    .local v0, "clone":Lorg/jbox2d/collision/shapes/ChainShape;
    iget-object v1, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    iget v2, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    invoke-virtual {v0, v1, v2}, Lorg/jbox2d/collision/shapes/ChainShape;->createChain([Lorg/jbox2d/common/Vec2;I)V

    .line 166
    iget-object v1, v0, Lorg/jbox2d/collision/shapes/ChainShape;->m_prevVertex:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_prevVertex:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 167
    iget-object v1, v0, Lorg/jbox2d/collision/shapes/ChainShape;->m_nextVertex:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_nextVertex:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 168
    iget-boolean v1, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_hasPrevVertex:Z

    iput-boolean v1, v0, Lorg/jbox2d/collision/shapes/ChainShape;->m_hasPrevVertex:Z

    .line 169
    iget-boolean v1, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_hasNextVertex:Z

    iput-boolean v1, v0, Lorg/jbox2d/collision/shapes/ChainShape;->m_hasNextVertex:Z

    .line 170
    return-object v0
.end method

.method public computeAABB(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/common/Transform;I)V
    .registers 20
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;
    .param p2, "xf"    # Lorg/jbox2d/common/Transform;
    .param p3, "childIndex"    # I

    .prologue
    .line 130
    sget-boolean v13, Lorg/jbox2d/collision/shapes/ChainShape;->$assertionsDisabled:Z

    if-nez v13, :cond_12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    move/from16 v0, p3

    if-lt v0, v13, :cond_12

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 131
    :cond_12
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    .line 132
    .local v3, "lower":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    .line 134
    .local v4, "upper":Lorg/jbox2d/common/Vec2;
    move/from16 v1, p3

    .line 135
    .local v1, "i1":I
    add-int/lit8 v2, p3, 0x1

    .line 136
    .local v2, "i2":I
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    if-ne v2, v13, :cond_25

    .line 137
    const/4 v2, 0x0

    .line 140
    :cond_25
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v9, v13, v1

    .line 141
    .local v9, "vi1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v10, v13, v2

    .line 142
    .local v10, "vi2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    .line 143
    .local v12, "xfq":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p2

    iget-object v11, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    .line 144
    .local v11, "xfp":Lorg/jbox2d/common/Vec2;
    iget v13, v12, Lorg/jbox2d/common/Rot;->c:F

    iget v14, v9, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v13, v14

    iget v14, v12, Lorg/jbox2d/common/Rot;->s:F

    iget v15, v9, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    iget v14, v11, Lorg/jbox2d/common/Vec2;->x:F

    add-float v5, v13, v14

    .line 145
    .local v5, "v1x":F
    iget v13, v12, Lorg/jbox2d/common/Rot;->s:F

    iget v14, v9, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v13, v14

    iget v14, v12, Lorg/jbox2d/common/Rot;->c:F

    iget v15, v9, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iget v14, v11, Lorg/jbox2d/common/Vec2;->y:F

    add-float v6, v13, v14

    .line 146
    .local v6, "v1y":F
    iget v13, v12, Lorg/jbox2d/common/Rot;->c:F

    iget v14, v10, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v13, v14

    iget v14, v12, Lorg/jbox2d/common/Rot;->s:F

    iget v15, v10, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    iget v14, v11, Lorg/jbox2d/common/Vec2;->x:F

    add-float v7, v13, v14

    .line 147
    .local v7, "v2x":F
    iget v13, v12, Lorg/jbox2d/common/Rot;->s:F

    iget v14, v10, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v13, v14

    iget v14, v12, Lorg/jbox2d/common/Rot;->c:F

    iget v15, v10, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iget v14, v11, Lorg/jbox2d/common/Vec2;->y:F

    add-float v8, v13, v14

    .line 149
    .local v8, "v2y":F
    cmpg-float v13, v5, v7

    if-gez v13, :cond_90

    move v13, v5

    :goto_7a
    iput v13, v3, Lorg/jbox2d/common/Vec2;->x:F

    .line 150
    cmpg-float v13, v6, v8

    if-gez v13, :cond_92

    move v13, v6

    :goto_81
    iput v13, v3, Lorg/jbox2d/common/Vec2;->y:F

    .line 151
    cmpl-float v13, v5, v7

    if-lez v13, :cond_94

    .end local v5    # "v1x":F
    :goto_87
    iput v5, v4, Lorg/jbox2d/common/Vec2;->x:F

    .line 152
    cmpl-float v13, v6, v8

    if-lez v13, :cond_96

    .end local v6    # "v1y":F
    :goto_8d
    iput v6, v4, Lorg/jbox2d/common/Vec2;->y:F

    .line 153
    return-void

    .restart local v5    # "v1x":F
    .restart local v6    # "v1y":F
    :cond_90
    move v13, v7

    .line 149
    goto :goto_7a

    :cond_92
    move v13, v8

    .line 150
    goto :goto_81

    :cond_94
    move v5, v7

    .line 151
    goto :goto_87

    .end local v5    # "v1x":F
    :cond_96
    move v6, v8

    .line 152
    goto :goto_8d
.end method

.method public computeMass(Lorg/jbox2d/collision/shapes/MassData;F)V
    .registers 5
    .param p1, "massData"    # Lorg/jbox2d/collision/shapes/MassData;
    .param p2, "density"    # F

    .prologue
    const/4 v1, 0x0

    .line 157
    iput v1, p1, Lorg/jbox2d/collision/shapes/MassData;->mass:F

    .line 158
    iget-object v0, p1, Lorg/jbox2d/collision/shapes/MassData;->center:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 159
    iput v1, p1, Lorg/jbox2d/collision/shapes/MassData;->I:F

    .line 160
    return-void
.end method

.method public createChain([Lorg/jbox2d/common/Vec2;I)V
    .registers 10
    .param p1, "vertices"    # [Lorg/jbox2d/common/Vec2;
    .param p2, "count"    # I

    .prologue
    const/4 v6, 0x0

    .line 209
    sget-boolean v3, Lorg/jbox2d/collision/shapes/ChainShape;->$assertionsDisabled:Z

    if-nez v3, :cond_13

    iget-object v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    if-nez v3, :cond_d

    iget v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    if-eqz v3, :cond_13

    :cond_d
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 210
    :cond_13
    sget-boolean v3, Lorg/jbox2d/collision/shapes/ChainShape;->$assertionsDisabled:Z

    if-nez v3, :cond_20

    const/4 v3, 0x2

    if-ge p2, v3, :cond_20

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 211
    :cond_20
    iput p2, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    .line 212
    iget v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    new-array v3, v3, [Lorg/jbox2d/common/Vec2;

    iput-object v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    .line 213
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_29
    iget v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    if-ge v0, v3, :cond_49

    .line 214
    add-int/lit8 v3, v0, -0x1

    aget-object v1, p1, v3

    .line 215
    .local v1, "v1":Lorg/jbox2d/common/Vec2;
    aget-object v2, p1, v0

    .line 217
    .local v2, "v2":Lorg/jbox2d/common/Vec2;
    invoke-static {v1, v2}, Lorg/jbox2d/common/MathUtils;->distanceSquared(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v3

    const v4, 0x37d1b717    # 2.5E-5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_46

    .line 218
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Vertices of chain shape are too close together"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 213
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 221
    .end local v1    # "v1":Lorg/jbox2d/common/Vec2;
    .end local v2    # "v2":Lorg/jbox2d/common/Vec2;
    :cond_49
    const/4 v0, 0x0

    :goto_4a
    iget v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    if-ge v0, v3, :cond_5c

    .line 222
    iget-object v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    new-instance v4, Lorg/jbox2d/common/Vec2;

    aget-object v5, p1, v0

    invoke-direct {v4, v5}, Lorg/jbox2d/common/Vec2;-><init>(Lorg/jbox2d/common/Vec2;)V

    aput-object v4, v3, v0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 224
    :cond_5c
    iput-boolean v6, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_hasPrevVertex:Z

    .line 225
    iput-boolean v6, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_hasNextVertex:Z

    .line 226
    return-void
.end method

.method public createLoop([Lorg/jbox2d/common/Vec2;I)V
    .registers 11
    .param p1, "vertices"    # [Lorg/jbox2d/common/Vec2;
    .param p2, "count"    # I

    .prologue
    const/4 v7, 0x1

    .line 180
    sget-boolean v3, Lorg/jbox2d/collision/shapes/ChainShape;->$assertionsDisabled:Z

    if-nez v3, :cond_13

    iget-object v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    if-nez v3, :cond_d

    iget v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    if-eqz v3, :cond_13

    :cond_d
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 181
    :cond_13
    sget-boolean v3, Lorg/jbox2d/collision/shapes/ChainShape;->$assertionsDisabled:Z

    if-nez v3, :cond_20

    const/4 v3, 0x3

    if-ge p2, v3, :cond_20

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 182
    :cond_20
    add-int/lit8 v3, p2, 0x1

    iput v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    .line 183
    iget v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    new-array v3, v3, [Lorg/jbox2d/common/Vec2;

    iput-object v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    .line 184
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2b
    if-ge v0, p2, :cond_49

    .line 185
    add-int/lit8 v3, v0, -0x1

    aget-object v1, p1, v3

    .line 186
    .local v1, "v1":Lorg/jbox2d/common/Vec2;
    aget-object v2, p1, v0

    .line 188
    .local v2, "v2":Lorg/jbox2d/common/Vec2;
    invoke-static {v1, v2}, Lorg/jbox2d/common/MathUtils;->distanceSquared(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v3

    const v4, 0x37d1b717    # 2.5E-5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_46

    .line 189
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Vertices of chain shape are too close together"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 184
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 192
    .end local v1    # "v1":Lorg/jbox2d/common/Vec2;
    .end local v2    # "v2":Lorg/jbox2d/common/Vec2;
    :cond_49
    const/4 v0, 0x0

    :goto_4a
    if-ge v0, p2, :cond_5a

    .line 193
    iget-object v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    new-instance v4, Lorg/jbox2d/common/Vec2;

    aget-object v5, p1, v0

    invoke-direct {v4, v5}, Lorg/jbox2d/common/Vec2;-><init>(Lorg/jbox2d/common/Vec2;)V

    aput-object v4, v3, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 195
    :cond_5a
    iget-object v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    new-instance v4, Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Lorg/jbox2d/common/Vec2;-><init>(Lorg/jbox2d/common/Vec2;)V

    aput-object v4, v3, p2

    .line 196
    iget-object v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_prevVertex:Lorg/jbox2d/common/Vec2;

    iget-object v4, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    iget v5, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    add-int/lit8 v5, v5, -0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 197
    iget-object v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_nextVertex:Lorg/jbox2d/common/Vec2;

    iget-object v4, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 198
    iput-boolean v7, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_hasPrevVertex:Z

    .line 199
    iput-boolean v7, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_hasNextVertex:Z

    .line 200
    return-void
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getChildEdge(Lorg/jbox2d/collision/shapes/EdgeShape;I)V
    .registers 9
    .param p1, "edge"    # Lorg/jbox2d/collision/shapes/EdgeShape;
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x1

    .line 69
    sget-boolean v3, Lorg/jbox2d/collision/shapes/ChainShape;->$assertionsDisabled:Z

    if-nez v3, :cond_13

    if-ltz p2, :cond_d

    iget v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    add-int/lit8 v3, v3, -0x1

    if-lt p2, v3, :cond_13

    :cond_d
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 70
    :cond_13
    iget v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_radius:F

    iput v3, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_radius:F

    .line 72
    iget-object v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    add-int/lit8 v4, p2, 0x0

    aget-object v1, v3, v4

    .line 73
    .local v1, "v0":Lorg/jbox2d/common/Vec2;
    iget-object v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    add-int/lit8 v4, p2, 0x1

    aget-object v2, v3, v4

    .line 74
    .local v2, "v1":Lorg/jbox2d/common/Vec2;
    iget-object v3, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    iget v4, v1, Lorg/jbox2d/common/Vec2;->x:F

    iput v4, v3, Lorg/jbox2d/common/Vec2;->x:F

    .line 75
    iget-object v3, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    iget v4, v1, Lorg/jbox2d/common/Vec2;->y:F

    iput v4, v3, Lorg/jbox2d/common/Vec2;->y:F

    .line 76
    iget-object v3, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    iget v4, v2, Lorg/jbox2d/common/Vec2;->x:F

    iput v4, v3, Lorg/jbox2d/common/Vec2;->x:F

    .line 77
    iget-object v3, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    iget v4, v2, Lorg/jbox2d/common/Vec2;->y:F

    iput v4, v3, Lorg/jbox2d/common/Vec2;->y:F

    .line 79
    if-lez p2, :cond_6c

    .line 80
    iget-object v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    add-int/lit8 v4, p2, -0x1

    aget-object v0, v3, v4

    .line 81
    .local v0, "v":Lorg/jbox2d/common/Vec2;
    iget-object v3, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex0:Lorg/jbox2d/common/Vec2;

    iget v4, v0, Lorg/jbox2d/common/Vec2;->x:F

    iput v4, v3, Lorg/jbox2d/common/Vec2;->x:F

    .line 82
    iget-object v3, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex0:Lorg/jbox2d/common/Vec2;

    iget v4, v0, Lorg/jbox2d/common/Vec2;->y:F

    iput v4, v3, Lorg/jbox2d/common/Vec2;->y:F

    .line 83
    iput-boolean v5, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_hasVertex0:Z

    .line 90
    .end local v0    # "v":Lorg/jbox2d/common/Vec2;
    :goto_51
    iget v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    add-int/lit8 v3, v3, -0x2

    if-ge p2, v3, :cond_81

    .line 91
    iget-object v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    add-int/lit8 v4, p2, 0x2

    aget-object v0, v3, v4

    .line 92
    .restart local v0    # "v":Lorg/jbox2d/common/Vec2;
    iget-object v3, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex3:Lorg/jbox2d/common/Vec2;

    iget v4, v0, Lorg/jbox2d/common/Vec2;->x:F

    iput v4, v3, Lorg/jbox2d/common/Vec2;->x:F

    .line 93
    iget-object v3, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex3:Lorg/jbox2d/common/Vec2;

    iget v4, v0, Lorg/jbox2d/common/Vec2;->y:F

    iput v4, v3, Lorg/jbox2d/common/Vec2;->y:F

    .line 94
    iput-boolean v5, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_hasVertex3:Z

    .line 100
    .end local v0    # "v":Lorg/jbox2d/common/Vec2;
    :goto_6b
    return-void

    .line 85
    :cond_6c
    iget-object v3, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex0:Lorg/jbox2d/common/Vec2;

    iget-object v4, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_prevVertex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iput v4, v3, Lorg/jbox2d/common/Vec2;->x:F

    .line 86
    iget-object v3, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex0:Lorg/jbox2d/common/Vec2;

    iget-object v4, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_prevVertex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    iput v4, v3, Lorg/jbox2d/common/Vec2;->y:F

    .line 87
    iget-boolean v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_hasPrevVertex:Z

    iput-boolean v3, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_hasVertex0:Z

    goto :goto_51

    .line 96
    :cond_81
    iget-object v3, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex3:Lorg/jbox2d/common/Vec2;

    iget-object v4, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_nextVertex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    iput v4, v3, Lorg/jbox2d/common/Vec2;->x:F

    .line 97
    iget-object v3, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex3:Lorg/jbox2d/common/Vec2;

    iget-object v4, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_nextVertex:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    iput v4, v3, Lorg/jbox2d/common/Vec2;->y:F

    .line 98
    iget-boolean v3, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_hasNextVertex:Z

    iput-boolean v3, p1, Lorg/jbox2d/collision/shapes/EdgeShape;->m_hasVertex3:Z

    goto :goto_6b
.end method

.method public raycast(Lorg/jbox2d/collision/RayCastOutput;Lorg/jbox2d/collision/RayCastInput;Lorg/jbox2d/common/Transform;I)Z
    .registers 12
    .param p1, "output"    # Lorg/jbox2d/collision/RayCastOutput;
    .param p2, "input"    # Lorg/jbox2d/collision/RayCastInput;
    .param p3, "xf"    # Lorg/jbox2d/common/Transform;
    .param p4, "childIndex"    # I

    .prologue
    .line 109
    sget-boolean v5, Lorg/jbox2d/collision/shapes/ChainShape;->$assertionsDisabled:Z

    if-nez v5, :cond_e

    iget v5, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    if-lt p4, v5, :cond_e

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 111
    :cond_e
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/ChainShape;->pool0:Lorg/jbox2d/collision/shapes/EdgeShape;

    .line 113
    .local v0, "edgeShape":Lorg/jbox2d/collision/shapes/EdgeShape;
    move v1, p4

    .line 114
    .local v1, "i1":I
    add-int/lit8 v2, p4, 0x1

    .line 115
    .local v2, "i2":I
    iget v5, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    if-ne v2, v5, :cond_18

    .line 116
    const/4 v2, 0x0

    .line 118
    :cond_18
    iget-object v5, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v3, v5, v1

    .line 119
    .local v3, "v":Lorg/jbox2d/common/Vec2;
    iget-object v5, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    iget v6, v3, Lorg/jbox2d/common/Vec2;->x:F

    iput v6, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 120
    iget-object v5, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    iget v6, v3, Lorg/jbox2d/common/Vec2;->y:F

    iput v6, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 121
    iget-object v5, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v4, v5, v2

    .line 122
    .local v4, "v1":Lorg/jbox2d/common/Vec2;
    iget-object v5, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    iget v6, v4, Lorg/jbox2d/common/Vec2;->x:F

    iput v6, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 123
    iget-object v5, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    iget v6, v4, Lorg/jbox2d/common/Vec2;->y:F

    iput v6, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 125
    const/4 v5, 0x0

    invoke-virtual {v0, p1, p2, p3, v5}, Lorg/jbox2d/collision/shapes/EdgeShape;->raycast(Lorg/jbox2d/collision/RayCastOutput;Lorg/jbox2d/collision/RayCastInput;Lorg/jbox2d/common/Transform;I)Z

    move-result v5

    return v5
.end method

.method public setNextVertex(Lorg/jbox2d/common/Vec2;)V
    .registers 3
    .param p1, "nextVertex"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 244
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_nextVertex:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_hasNextVertex:Z

    .line 246
    return-void
.end method

.method public setPrevVertex(Lorg/jbox2d/common/Vec2;)V
    .registers 3
    .param p1, "prevVertex"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 234
    iget-object v0, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_prevVertex:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jbox2d/collision/shapes/ChainShape;->m_hasPrevVertex:Z

    .line 236
    return-void
.end method

.method public testPoint(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;)Z
    .registers 4
    .param p1, "xf"    # Lorg/jbox2d/common/Transform;
    .param p2, "p"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method
