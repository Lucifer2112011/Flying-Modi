###### Class org.jbox2d.collision.Collision (org.jbox2d.collision.Collision)
.class public Lorg/jbox2d/collision/Collision;
.super Ljava/lang/Object;
.source "Collision.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/collision/Collision$1;,
        Lorg/jbox2d/collision/Collision$EPCollider;,
        Lorg/jbox2d/collision/Collision$ReferenceFace;,
        Lorg/jbox2d/collision/Collision$TempPolygon;,
        Lorg/jbox2d/collision/Collision$EPAxis;,
        Lorg/jbox2d/collision/Collision$PointState;,
        Lorg/jbox2d/collision/Collision$ClipVertex;,
        Lorg/jbox2d/collision/Collision$EdgeResults;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NULL_FEATURE:I = 0x7fffffff

.field private static d:Lorg/jbox2d/common/Vec2;


# instance fields
.field private final P:Lorg/jbox2d/common/Vec2;

.field private final Q:Lorg/jbox2d/common/Vec2;

.field private final cache:Lorg/jbox2d/collision/Distance$SimplexCache;

.field private final cf:Lorg/jbox2d/collision/ContactID;

.field private final clipPoints1:[Lorg/jbox2d/collision/Collision$ClipVertex;

.field private final clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

.field private final collider:Lorg/jbox2d/collision/Collision$EPCollider;

.field private final e:Lorg/jbox2d/common/Vec2;

.field private final e1:Lorg/jbox2d/common/Vec2;

.field private final incidentEdge:[Lorg/jbox2d/collision/Collision$ClipVertex;

.field private final input:Lorg/jbox2d/collision/DistanceInput;

.field private final localNormal:Lorg/jbox2d/common/Vec2;

.field private final localTangent:Lorg/jbox2d/common/Vec2;

.field private final n:Lorg/jbox2d/common/Vec2;

.field private final output:Lorg/jbox2d/collision/DistanceOutput;

.field private final planePoint:Lorg/jbox2d/common/Vec2;

.field private final pool:Lorg/jbox2d/pooling/IWorldPool;

.field private final results1:Lorg/jbox2d/collision/Collision$EdgeResults;

.field private final results2:Lorg/jbox2d/collision/Collision$EdgeResults;

.field private final tangent:Lorg/jbox2d/common/Vec2;

.field private final temp:Lorg/jbox2d/common/Vec2;

.field private final v11:Lorg/jbox2d/common/Vec2;

.field private final v12:Lorg/jbox2d/common/Vec2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-class v0, Lorg/jbox2d/collision/Collision;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/collision/Collision;->$assertionsDisabled:Z

    .line 191
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    sput-object v0, Lorg/jbox2d/collision/Collision;->d:Lorg/jbox2d/common/Vec2;

    return-void

    .line 46
    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lorg/jbox2d/pooling/IWorldPool;)V
    .registers 7
    .param p1, "argPool"    # Lorg/jbox2d/pooling/IWorldPool;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/jbox2d/collision/DistanceInput;

    invoke-direct {v0}, Lorg/jbox2d/collision/DistanceInput;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->input:Lorg/jbox2d/collision/DistanceInput;

    .line 62
    new-instance v0, Lorg/jbox2d/collision/Distance$SimplexCache;

    invoke-direct {v0}, Lorg/jbox2d/collision/Distance$SimplexCache;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->cache:Lorg/jbox2d/collision/Distance$SimplexCache;

    .line 63
    new-instance v0, Lorg/jbox2d/collision/DistanceOutput;

    invoke-direct {v0}, Lorg/jbox2d/collision/DistanceOutput;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->output:Lorg/jbox2d/collision/DistanceOutput;

    .line 506
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->temp:Lorg/jbox2d/common/Vec2;

    .line 676
    new-instance v0, Lorg/jbox2d/collision/Collision$EdgeResults;

    invoke-direct {v0, v4}, Lorg/jbox2d/collision/Collision$EdgeResults;-><init>(Lorg/jbox2d/collision/Collision$1;)V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->results1:Lorg/jbox2d/collision/Collision$EdgeResults;

    .line 677
    new-instance v0, Lorg/jbox2d/collision/Collision$EdgeResults;

    invoke-direct {v0, v4}, Lorg/jbox2d/collision/Collision$EdgeResults;-><init>(Lorg/jbox2d/collision/Collision$1;)V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->results2:Lorg/jbox2d/collision/Collision$EdgeResults;

    .line 678
    new-array v0, v1, [Lorg/jbox2d/collision/Collision$ClipVertex;

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->incidentEdge:[Lorg/jbox2d/collision/Collision$ClipVertex;

    .line 679
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->localTangent:Lorg/jbox2d/common/Vec2;

    .line 680
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->localNormal:Lorg/jbox2d/common/Vec2;

    .line 681
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->planePoint:Lorg/jbox2d/common/Vec2;

    .line 682
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->tangent:Lorg/jbox2d/common/Vec2;

    .line 683
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->v11:Lorg/jbox2d/common/Vec2;

    .line 684
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->v12:Lorg/jbox2d/common/Vec2;

    .line 685
    new-array v0, v1, [Lorg/jbox2d/collision/Collision$ClipVertex;

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->clipPoints1:[Lorg/jbox2d/collision/Collision$ClipVertex;

    .line 686
    new-array v0, v1, [Lorg/jbox2d/collision/Collision$ClipVertex;

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    .line 843
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->Q:Lorg/jbox2d/common/Vec2;

    .line 844
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->e:Lorg/jbox2d/common/Vec2;

    .line 845
    new-instance v0, Lorg/jbox2d/collision/ContactID;

    invoke-direct {v0}, Lorg/jbox2d/collision/ContactID;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->cf:Lorg/jbox2d/collision/ContactID;

    .line 846
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->e1:Lorg/jbox2d/common/Vec2;

    .line 847
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->P:Lorg/jbox2d/common/Vec2;

    .line 848
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->n:Lorg/jbox2d/common/Vec2;

    .line 976
    new-instance v0, Lorg/jbox2d/collision/Collision$EPCollider;

    invoke-direct {v0}, Lorg/jbox2d/collision/Collision$EPCollider;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision;->collider:Lorg/jbox2d/collision/Collision$EPCollider;

    .line 52
    iget-object v0, p0, Lorg/jbox2d/collision/Collision;->incidentEdge:[Lorg/jbox2d/collision/Collision$ClipVertex;

    new-instance v1, Lorg/jbox2d/collision/Collision$ClipVertex;

    invoke-direct {v1}, Lorg/jbox2d/collision/Collision$ClipVertex;-><init>()V

    aput-object v1, v0, v2

    .line 53
    iget-object v0, p0, Lorg/jbox2d/collision/Collision;->incidentEdge:[Lorg/jbox2d/collision/Collision$ClipVertex;

    new-instance v1, Lorg/jbox2d/collision/Collision$ClipVertex;

    invoke-direct {v1}, Lorg/jbox2d/collision/Collision$ClipVertex;-><init>()V

    aput-object v1, v0, v3

    .line 54
    iget-object v0, p0, Lorg/jbox2d/collision/Collision;->clipPoints1:[Lorg/jbox2d/collision/Collision$ClipVertex;

    new-instance v1, Lorg/jbox2d/collision/Collision$ClipVertex;

    invoke-direct {v1}, Lorg/jbox2d/collision/Collision$ClipVertex;-><init>()V

    aput-object v1, v0, v2

    .line 55
    iget-object v0, p0, Lorg/jbox2d/collision/Collision;->clipPoints1:[Lorg/jbox2d/collision/Collision$ClipVertex;

    new-instance v1, Lorg/jbox2d/collision/Collision$ClipVertex;

    invoke-direct {v1}, Lorg/jbox2d/collision/Collision$ClipVertex;-><init>()V

    aput-object v1, v0, v3

    .line 56
    iget-object v0, p0, Lorg/jbox2d/collision/Collision;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    new-instance v1, Lorg/jbox2d/collision/Collision$ClipVertex;

    invoke-direct {v1}, Lorg/jbox2d/collision/Collision$ClipVertex;-><init>()V

    aput-object v1, v0, v2

    .line 57
    iget-object v0, p0, Lorg/jbox2d/collision/Collision;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    new-instance v1, Lorg/jbox2d/collision/Collision$ClipVertex;

    invoke-direct {v1}, Lorg/jbox2d/collision/Collision$ClipVertex;-><init>()V

    aput-object v1, v0, v3

    .line 58
    iput-object p1, p0, Lorg/jbox2d/collision/Collision;->pool:Lorg/jbox2d/pooling/IWorldPool;

    .line 59
    return-void
.end method

.method public static final clipSegmentToLine([Lorg/jbox2d/collision/Collision$ClipVertex;[Lorg/jbox2d/collision/Collision$ClipVertex;Lorg/jbox2d/common/Vec2;FI)I
    .registers 20
    .param p0, "vOut"    # [Lorg/jbox2d/collision/Collision$ClipVertex;
    .param p1, "vIn"    # [Lorg/jbox2d/collision/Collision$ClipVertex;
    .param p2, "normal"    # Lorg/jbox2d/common/Vec2;
    .param p3, "offset"    # F
    .param p4, "vertexIndexA"    # I

    .prologue
    .line 149
    const/4 v4, 0x0

    .line 150
    .local v4, "numOut":I
    const/4 v11, 0x0

    aget-object v6, p1, v11

    .line 151
    .local v6, "vIn0":Lorg/jbox2d/collision/Collision$ClipVertex;
    const/4 v11, 0x1

    aget-object v8, p1, v11

    .line 152
    .local v8, "vIn1":Lorg/jbox2d/collision/Collision$ClipVertex;
    iget-object v7, v6, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    .line 153
    .local v7, "vIn0v":Lorg/jbox2d/common/Vec2;
    iget-object v9, v8, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    .line 156
    .local v9, "vIn1v":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v11

    sub-float v1, v11, p3

    .line 157
    .local v1, "distance0":F
    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v11

    sub-float v2, v11, p3

    .line 160
    .local v2, "distance1":F
    const/4 v11, 0x0

    cmpg-float v11, v1, v11

    if-gtz v11, :cond_84

    .line 161
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "numOut":I
    .local v5, "numOut":I
    aget-object v11, p0, v4

    invoke-virtual {v11, v6}, Lorg/jbox2d/collision/Collision$ClipVertex;->set(Lorg/jbox2d/collision/Collision$ClipVertex;)V

    .line 163
    :goto_27
    const/4 v11, 0x0

    cmpg-float v11, v2, v11

    if-gtz v11, :cond_82

    .line 164
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "numOut":I
    .restart local v4    # "numOut":I
    aget-object v11, p0, v5

    invoke-virtual {v11, v8}, Lorg/jbox2d/collision/Collision$ClipVertex;->set(Lorg/jbox2d/collision/Collision$ClipVertex;)V

    .line 168
    :goto_33
    mul-float v11, v1, v2

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_81

    .line 170
    sub-float v11, v1, v2

    div-float v3, v1, v11

    .line 172
    .local v3, "interp":F
    aget-object v10, p0, v4

    .line 174
    .local v10, "vOutNO":Lorg/jbox2d/collision/Collision$ClipVertex;
    iget-object v11, v10, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    iget v12, v7, Lorg/jbox2d/common/Vec2;->x:F

    iget v13, v9, Lorg/jbox2d/common/Vec2;->x:F

    iget v14, v7, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v13, v14

    mul-float/2addr v13, v3

    add-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Vec2;->x:F

    .line 175
    iget-object v11, v10, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    iget v12, v7, Lorg/jbox2d/common/Vec2;->y:F

    iget v13, v9, Lorg/jbox2d/common/Vec2;->y:F

    iget v14, v7, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v13, v14

    mul-float/2addr v13, v3

    add-float/2addr v12, v13

    iput v12, v11, Lorg/jbox2d/common/Vec2;->y:F

    .line 178
    iget-object v11, v10, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move/from16 v0, p4

    int-to-byte v12, v0

    iput-byte v12, v11, Lorg/jbox2d/collision/ContactID;->indexA:B

    .line 179
    iget-object v11, v10, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    iget-object v12, v6, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    iget-byte v12, v12, Lorg/jbox2d/collision/ContactID;->indexB:B

    iput-byte v12, v11, Lorg/jbox2d/collision/ContactID;->indexB:B

    .line 180
    iget-object v11, v10, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    sget-object v12, Lorg/jbox2d/collision/ContactID$Type;->VERTEX:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual {v12}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v12

    int-to-byte v12, v12

    iput-byte v12, v11, Lorg/jbox2d/collision/ContactID;->typeA:B

    .line 181
    iget-object v11, v10, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    sget-object v12, Lorg/jbox2d/collision/ContactID$Type;->FACE:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual {v12}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v12

    int-to-byte v12, v12

    iput-byte v12, v11, Lorg/jbox2d/collision/ContactID;->typeB:B

    .line 182
    add-int/lit8 v4, v4, 0x1

    .line 185
    .end local v3    # "interp":F
    .end local v10    # "vOutNO":Lorg/jbox2d/collision/Collision$ClipVertex;
    :cond_81
    return v4

    .end local v4    # "numOut":I
    .restart local v5    # "numOut":I
    :cond_82
    move v4, v5

    .end local v5    # "numOut":I
    .restart local v4    # "numOut":I
    goto :goto_33

    :cond_84
    move v5, v4

    .end local v4    # "numOut":I
    .restart local v5    # "numOut":I
    goto :goto_27
.end method

.method public static final getPointStates([Lorg/jbox2d/collision/Collision$PointState;[Lorg/jbox2d/collision/Collision$PointState;Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/collision/Manifold;)V
    .registers 8
    .param p0, "state1"    # [Lorg/jbox2d/collision/Collision$PointState;
    .param p1, "state2"    # [Lorg/jbox2d/collision/Collision$PointState;
    .param p2, "manifold1"    # Lorg/jbox2d/collision/Manifold;
    .param p3, "manifold2"    # Lorg/jbox2d/collision/Manifold;

    .prologue
    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_f

    .line 103
    sget-object v3, Lorg/jbox2d/collision/Collision$PointState;->NULL_STATE:Lorg/jbox2d/collision/Collision$PointState;

    aput-object v3, p0, v0

    .line 104
    sget-object v3, Lorg/jbox2d/collision/Collision$PointState;->NULL_STATE:Lorg/jbox2d/collision/Collision$PointState;

    aput-object v3, p1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget v3, p2, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-ge v0, v3, :cond_39

    .line 109
    iget-object v3, p2, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v3, v3, v0

    iget-object v1, v3, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 111
    .local v1, "id":Lorg/jbox2d/collision/ContactID;
    sget-object v3, Lorg/jbox2d/collision/Collision$PointState;->REMOVE_STATE:Lorg/jbox2d/collision/Collision$PointState;

    aput-object v3, p0, v0

    .line 113
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1f
    iget v3, p3, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-ge v2, v3, :cond_33

    .line 114
    iget-object v3, p3, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    invoke-virtual {v3, v1}, Lorg/jbox2d/collision/ContactID;->isEqual(Lorg/jbox2d/collision/ContactID;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 115
    sget-object v3, Lorg/jbox2d/collision/Collision$PointState;->PERSIST_STATE:Lorg/jbox2d/collision/Collision$PointState;

    aput-object v3, p0, v0

    .line 108
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 113
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 122
    .end local v1    # "id":Lorg/jbox2d/collision/ContactID;
    .end local v2    # "j":I
    :cond_39
    const/4 v0, 0x0

    :goto_3a
    iget v3, p3, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-ge v0, v3, :cond_63

    .line 123
    iget-object v3, p3, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v3, v3, v0

    iget-object v1, v3, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    .line 125
    .restart local v1    # "id":Lorg/jbox2d/collision/ContactID;
    sget-object v3, Lorg/jbox2d/collision/Collision$PointState;->ADD_STATE:Lorg/jbox2d/collision/Collision$PointState;

    aput-object v3, p1, v0

    .line 127
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_49
    iget v3, p2, Lorg/jbox2d/collision/Manifold;->pointCount:I

    if-ge v2, v3, :cond_5d

    .line 128
    iget-object v3, p2, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    invoke-virtual {v3, v1}, Lorg/jbox2d/collision/ContactID;->isEqual(Lorg/jbox2d/collision/ContactID;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 129
    sget-object v3, Lorg/jbox2d/collision/Collision$PointState;->PERSIST_STATE:Lorg/jbox2d/collision/Collision$PointState;

    aput-object v3, p1, v0

    .line 122
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 127
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 134
    .end local v1    # "id":Lorg/jbox2d/collision/ContactID;
    .end local v2    # "j":I
    :cond_63
    return-void
.end method


# virtual methods
.method public final collideCircles(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/collision/shapes/CircleShape;Lorg/jbox2d/common/Transform;Lorg/jbox2d/collision/shapes/CircleShape;Lorg/jbox2d/common/Transform;)V
    .registers 20
    .param p1, "manifold"    # Lorg/jbox2d/collision/Manifold;
    .param p2, "circle1"    # Lorg/jbox2d/collision/shapes/CircleShape;
    .param p3, "xfA"    # Lorg/jbox2d/common/Transform;
    .param p4, "circle2"    # Lorg/jbox2d/collision/shapes/CircleShape;
    .param p5, "xfB"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 204
    const/4 v11, 0x0

    iput v11, p1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 212
    move-object/from16 v0, p2

    iget-object v1, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    .line 213
    .local v1, "circle1p":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p4

    iget-object v2, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    .line 214
    .local v2, "circle2p":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p3

    iget-object v11, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v11, v11, Lorg/jbox2d/common/Rot;->c:F

    iget v12, v1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v12

    move-object/from16 v0, p3

    iget-object v12, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v12, v12, Lorg/jbox2d/common/Rot;->s:F

    iget v13, v1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    move-object/from16 v0, p3

    iget-object v12, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    add-float v6, v11, v12

    .line 215
    .local v6, "pAx":F
    move-object/from16 v0, p3

    iget-object v11, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v11, v11, Lorg/jbox2d/common/Rot;->s:F

    iget v12, v1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v12

    move-object/from16 v0, p3

    iget-object v12, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v12, v12, Lorg/jbox2d/common/Rot;->c:F

    iget v13, v1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object/from16 v0, p3

    iget-object v12, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->y:F

    add-float v7, v11, v12

    .line 216
    .local v7, "pAy":F
    move-object/from16 v0, p5

    iget-object v11, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v11, v11, Lorg/jbox2d/common/Rot;->c:F

    iget v12, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v12

    move-object/from16 v0, p5

    iget-object v12, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v12, v12, Lorg/jbox2d/common/Rot;->s:F

    iget v13, v2, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    move-object/from16 v0, p5

    iget-object v12, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->x:F

    add-float v8, v11, v12

    .line 217
    .local v8, "pBx":F
    move-object/from16 v0, p5

    iget-object v11, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v11, v11, Lorg/jbox2d/common/Rot;->s:F

    iget v12, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v11, v12

    move-object/from16 v0, p5

    iget-object v12, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v12, v12, Lorg/jbox2d/common/Rot;->c:F

    iget v13, v2, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iget-object v12, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v12, v12, Lorg/jbox2d/common/Vec2;->y:F

    add-float v9, v11, v12

    .line 218
    .local v9, "pBy":F
    sub-float v4, v8, v6

    .line 219
    .local v4, "dx":F
    sub-float v5, v9, v7

    .line 220
    .local v5, "dy":F
    mul-float v11, v4, v4

    mul-float v12, v5, v5

    add-float v3, v11, v12

    .line 223
    .local v3, "distSqr":F
    move-object/from16 v0, p2

    iget v11, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    move-object/from16 v0, p4

    iget v12, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    add-float v10, v11, v12

    .line 224
    .local v10, "radius":F
    mul-float v11, v10, v10

    cmpl-float v11, v3, v11

    if-lez v11, :cond_92

    .line 235
    :goto_91
    return-void

    .line 228
    :cond_92
    sget-object v11, Lorg/jbox2d/collision/Manifold$ManifoldType;->CIRCLES:Lorg/jbox2d/collision/Manifold$ManifoldType;

    iput-object v11, p1, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    .line 229
    iget-object v11, p1, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v11, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 230
    iget-object v11, p1, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v11}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 231
    const/4 v11, 0x1

    iput v11, p1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 233
    iget-object v11, p1, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v11, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 234
    iget-object v11, p1, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    invoke-virtual {v11}, Lorg/jbox2d/collision/ContactID;->zero()V

    goto :goto_91
.end method

.method public collideEdgeAndCircle(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/collision/shapes/EdgeShape;Lorg/jbox2d/common/Transform;Lorg/jbox2d/collision/shapes/CircleShape;Lorg/jbox2d/common/Transform;)V
    .registers 27
    .param p1, "manifold"    # Lorg/jbox2d/collision/Manifold;
    .param p2, "edgeA"    # Lorg/jbox2d/collision/shapes/EdgeShape;
    .param p3, "xfA"    # Lorg/jbox2d/common/Transform;
    .param p4, "circleB"    # Lorg/jbox2d/collision/shapes/CircleShape;
    .param p5, "xfB"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 854
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 859
    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->Q:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Transform;->mulTransToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 862
    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    .line 863
    .local v3, "A":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    .line 864
    .local v6, "B":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->e:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->e:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->Q:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v14

    .line 868
    .local v14, "u":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->e:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->Q:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v16

    .line 870
    .local v16, "v":F
    move-object/from16 v0, p2

    iget v0, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_radius:F

    move/from16 v18, v0

    move-object/from16 v0, p4

    iget v0, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    move/from16 v19, v0

    add-float v13, v18, v19

    .line 873
    .local v13, "radius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->cf:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexB:B

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->cf:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v18, v0

    sget-object v19, Lorg/jbox2d/collision/ContactID$Type;->VERTEX:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeB:B

    .line 877
    const/16 v18, 0x0

    cmpg-float v18, v16, v18

    if-gtz v18, :cond_1a6

    .line 878
    move-object v9, v3

    .line 879
    .local v9, "P":Lorg/jbox2d/common/Vec2;
    sget-object v18, Lorg/jbox2d/collision/Collision;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->Q:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 880
    sget-object v18, Lorg/jbox2d/collision/Collision;->d:Lorg/jbox2d/common/Vec2;

    sget-object v19, Lorg/jbox2d/collision/Collision;->d:Lorg/jbox2d/common/Vec2;

    invoke-static/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v10

    .line 881
    .local v10, "dd":F
    mul-float v18, v13, v13

    cmpl-float v18, v10, v18

    if-lez v18, :cond_e5

    .line 974
    .end local v9    # "P":Lorg/jbox2d/common/Vec2;
    :cond_e4
    :goto_e4
    return-void

    .line 886
    .restart local v9    # "P":Lorg/jbox2d/common/Vec2;
    :cond_e5
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_hasVertex0:Z

    move/from16 v18, v0

    if-eqz v18, :cond_129

    .line 887
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex0:Lorg/jbox2d/common/Vec2;

    .line 888
    .local v4, "A1":Lorg/jbox2d/common/Vec2;
    move-object v7, v3

    .line 889
    .local v7, "B1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->e1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->e1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->Q:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v15

    .line 893
    .local v15, "u1":F
    const/16 v18, 0x0

    cmpl-float v18, v15, v18

    if-gtz v18, :cond_e4

    .line 898
    .end local v4    # "A1":Lorg/jbox2d/common/Vec2;
    .end local v7    # "B1":Lorg/jbox2d/common/Vec2;
    .end local v15    # "u1":F
    :cond_129
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->cf:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexA:B

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->cf:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v18, v0

    sget-object v19, Lorg/jbox2d/collision/ContactID$Type;->VERTEX:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeA:B

    .line 900
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 901
    sget-object v18, Lorg/jbox2d/collision/Manifold$ManifoldType;->CIRCLES:Lorg/jbox2d/collision/Manifold$ManifoldType;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    .line 902
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 903
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 905
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->cf:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/collision/ContactID;->set(Lorg/jbox2d/collision/ContactID;)V

    .line 906
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    goto/16 :goto_e4

    .line 911
    .end local v9    # "P":Lorg/jbox2d/common/Vec2;
    .end local v10    # "dd":F
    :cond_1a6
    const/16 v18, 0x0

    cmpg-float v18, v14, v18

    if-gtz v18, :cond_285

    .line 912
    move-object v9, v6

    .line 913
    .restart local v9    # "P":Lorg/jbox2d/common/Vec2;
    sget-object v18, Lorg/jbox2d/collision/Collision;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->Q:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 914
    sget-object v18, Lorg/jbox2d/collision/Collision;->d:Lorg/jbox2d/common/Vec2;

    sget-object v19, Lorg/jbox2d/collision/Collision;->d:Lorg/jbox2d/common/Vec2;

    invoke-static/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v10

    .line 915
    .restart local v10    # "dd":F
    mul-float v18, v13, v13

    cmpl-float v18, v10, v18

    if-gtz v18, :cond_e4

    .line 920
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_hasVertex3:Z

    move/from16 v18, v0

    if-eqz v18, :cond_208

    .line 921
    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex3:Lorg/jbox2d/common/Vec2;

    .line 922
    .local v8, "B2":Lorg/jbox2d/common/Vec2;
    move-object v5, v6

    .line 923
    .local v5, "A2":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jbox2d/collision/Collision;->e1:Lorg/jbox2d/common/Vec2;

    .line 924
    .local v12, "e2":Lorg/jbox2d/common/Vec2;
    invoke-virtual {v12, v8}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->Q:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v17

    .line 928
    .local v17, "v2":F
    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-gtz v18, :cond_e4

    .line 933
    .end local v5    # "A2":Lorg/jbox2d/common/Vec2;
    .end local v8    # "B2":Lorg/jbox2d/common/Vec2;
    .end local v12    # "e2":Lorg/jbox2d/common/Vec2;
    .end local v17    # "v2":F
    :cond_208
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->cf:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexA:B

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->cf:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v18, v0

    sget-object v19, Lorg/jbox2d/collision/ContactID$Type;->VERTEX:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeA:B

    .line 935
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 936
    sget-object v18, Lorg/jbox2d/collision/Manifold$ManifoldType;->CIRCLES:Lorg/jbox2d/collision/Manifold$ManifoldType;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    .line 937
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 938
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 940
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->cf:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/collision/ContactID;->set(Lorg/jbox2d/collision/ContactID;)V

    .line 941
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    goto/16 :goto_e4

    .line 946
    .end local v9    # "P":Lorg/jbox2d/common/Vec2;
    .end local v10    # "dd":F
    :cond_285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->e:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->e:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v11

    .line 947
    .local v11, "den":F
    sget-boolean v18, Lorg/jbox2d/collision/Collision;->$assertionsDisabled:Z

    if-nez v18, :cond_2a5

    const/16 v18, 0x0

    cmpl-float v18, v11, v18

    if-gtz v18, :cond_2a5

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 950
    :cond_2a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->P:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->P:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    div-float v19, v19, v11

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 952
    sget-object v18, Lorg/jbox2d/collision/Collision;->d:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->Q:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->P:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 953
    sget-object v18, Lorg/jbox2d/collision/Collision;->d:Lorg/jbox2d/common/Vec2;

    sget-object v19, Lorg/jbox2d/collision/Collision;->d:Lorg/jbox2d/common/Vec2;

    invoke-static/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v10

    .line 954
    .restart local v10    # "dd":F
    mul-float v18, v13, v13

    cmpl-float v18, v10, v18

    if-gtz v18, :cond_e4

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->n:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->e:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->n:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->e:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->n:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->Q:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v18

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_384

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->n:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->n:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->n:Lorg/jbox2d/common/Vec2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v20, v0

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 963
    :cond_384
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->n:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->cf:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexA:B

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->cf:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v18, v0

    sget-object v19, Lorg/jbox2d/collision/ContactID$Type;->FACE:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeA:B

    .line 967
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 968
    sget-object v18, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_A:Lorg/jbox2d/collision/Manifold$ManifoldType;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    .line 969
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->n:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 970
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 972
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->cf:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/collision/ContactID;->set(Lorg/jbox2d/collision/ContactID;)V

    .line 973
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    goto/16 :goto_e4
.end method

.method public collideEdgeAndPolygon(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/collision/shapes/EdgeShape;Lorg/jbox2d/common/Transform;Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;)V
    .registers 12
    .param p1, "manifold"    # Lorg/jbox2d/collision/Manifold;
    .param p2, "edgeA"    # Lorg/jbox2d/collision/shapes/EdgeShape;
    .param p3, "xfA"    # Lorg/jbox2d/common/Transform;
    .param p4, "polygonB"    # Lorg/jbox2d/collision/shapes/PolygonShape;
    .param p5, "xfB"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 980
    iget-object v0, p0, Lorg/jbox2d/collision/Collision;->collider:Lorg/jbox2d/collision/Collision$EPCollider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jbox2d/collision/Collision$EPCollider;->collide(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/collision/shapes/EdgeShape;Lorg/jbox2d/common/Transform;Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;)V

    .line 981
    return-void
.end method

.method public final collidePolygonAndCircle(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;Lorg/jbox2d/collision/shapes/CircleShape;Lorg/jbox2d/common/Transform;)V
    .registers 53
    .param p1, "manifold"    # Lorg/jbox2d/collision/Manifold;
    .param p2, "polygon"    # Lorg/jbox2d/collision/shapes/PolygonShape;
    .param p3, "xfA"    # Lorg/jbox2d/common/Transform;
    .param p4, "circle"    # Lorg/jbox2d/collision/shapes/CircleShape;
    .param p5, "xfB"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 250
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 260
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    .line 261
    .local v4, "circlep":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p5

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v43, v0

    .line 262
    .local v43, "xfBq":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v42, v0

    .line 263
    .local v42, "xfAq":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, v43

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v44, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v45, v0

    mul-float v44, v44, v45

    move-object/from16 v0, v43

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v45, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v46, v0

    mul-float v45, v45, v46

    sub-float v44, v44, v45

    move-object/from16 v0, p5

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v45, v0

    add-float v5, v44, v45

    .line 264
    .local v5, "cx":F
    move-object/from16 v0, v43

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v44, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v45, v0

    mul-float v44, v44, v45

    move-object/from16 v0, v43

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v45, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v46, v0

    mul-float v45, v45, v46

    add-float v44, v44, v45

    move-object/from16 v0, p5

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v45, v0

    add-float v6, v44, v45

    .line 265
    .local v6, "cy":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v44, v0

    sub-float v16, v5, v44

    .line 266
    .local v16, "px":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v44, v0

    sub-float v17, v6, v44

    .line 267
    .local v17, "py":F
    move-object/from16 v0, v42

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v44, v0

    mul-float v44, v44, v16

    move-object/from16 v0, v42

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v45, v0

    mul-float v45, v45, v17

    add-float v2, v44, v45

    .line 268
    .local v2, "cLocalx":F
    move-object/from16 v0, v42

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v44, v0

    move/from16 v0, v44

    neg-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v16

    move-object/from16 v0, v42

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v45, v0

    mul-float v45, v45, v17

    add-float v3, v44, v45

    .line 272
    .local v3, "cLocaly":F
    const/4 v14, 0x0

    .line 273
    .local v14, "normalIndex":I
    const v20, -0x800001

    .line 274
    .local v20, "separation":F
    move-object/from16 v0, p2

    iget v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_radius:F

    move/from16 v44, v0

    move-object/from16 v0, p4

    iget v0, v0, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    move/from16 v45, v0

    add-float v18, v44, v45

    .line 275
    .local v18, "radius":F
    move-object/from16 v0, p2

    iget v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    move/from16 v40, v0

    .line 277
    .local v40, "vertexCount":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v41, v0

    .line 278
    .local v41, "vertices":[Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p2

    iget-object v15, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    .line 280
    .local v15, "normals":[Lorg/jbox2d/common/Vec2;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_d0
    move/from16 v0, v40

    if-ge v11, v0, :cond_10b

    .line 285
    aget-object v39, v41, v11

    .line 286
    .local v39, "vertex":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v44, v0

    sub-float v29, v2, v44

    .line 287
    .local v29, "tempx":F
    move-object/from16 v0, v39

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v44, v0

    sub-float v30, v3, v44

    .line 288
    .local v30, "tempy":F
    aget-object v44, v15, v11

    move-object/from16 v0, v44

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v44, v0

    mul-float v44, v44, v29

    aget-object v45, v15, v11

    move-object/from16 v0, v45

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v45, v0

    mul-float v45, v45, v30

    add-float v19, v44, v45

    .line 291
    .local v19, "s":F
    cmpl-float v44, v19, v18

    if-lez v44, :cond_101

    .line 426
    .end local v19    # "s":F
    .end local v29    # "tempx":F
    .end local v30    # "tempy":F
    .end local v39    # "vertex":Lorg/jbox2d/common/Vec2;
    :cond_100
    :goto_100
    return-void

    .line 296
    .restart local v19    # "s":F
    .restart local v29    # "tempx":F
    .restart local v30    # "tempy":F
    .restart local v39    # "vertex":Lorg/jbox2d/common/Vec2;
    :cond_101
    cmpl-float v44, v19, v20

    if-lez v44, :cond_108

    .line 297
    move/from16 v20, v19

    .line 298
    move v14, v11

    .line 280
    :cond_108
    add-int/lit8 v11, v11, 0x1

    goto :goto_d0

    .line 303
    .end local v19    # "s":F
    .end local v29    # "tempx":F
    .end local v30    # "tempy":F
    .end local v39    # "vertex":Lorg/jbox2d/common/Vec2;
    :cond_10b
    move/from16 v37, v14

    .line 304
    .local v37, "vertIndex1":I
    add-int/lit8 v44, v37, 0x1

    move/from16 v0, v44

    move/from16 v1, v40

    if-ge v0, v1, :cond_1be

    add-int/lit8 v38, v37, 0x1

    .line 305
    .local v38, "vertIndex2":I
    :goto_117
    aget-object v35, v41, v37

    .line 306
    .local v35, "v1":Lorg/jbox2d/common/Vec2;
    aget-object v36, v41, v38

    .line 309
    .local v36, "v2":Lorg/jbox2d/common/Vec2;
    const/high16 v44, 0x34000000

    cmpg-float v44, v20, v44

    if-gez v44, :cond_1c2

    .line 310
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 311
    sget-object v44, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_A:Lorg/jbox2d/collision/Manifold$ManifoldType;

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    .line 318
    aget-object v13, v15, v14

    .line 319
    .local v13, "normal":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    iget v0, v13, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v45, v0

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 320
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    iget v0, v13, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v45, v0

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 321
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v45, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v46, v0

    add-float v45, v45, v46

    const/high16 v46, 0x3f000000    # 0.5f

    mul-float v45, v45, v46

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 322
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v45, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v46, v0

    add-float v45, v45, v46

    const/high16 v46, 0x3f000000    # 0.5f

    mul-float v45, v45, v46

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 323
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget-object v12, v44, v45

    .line 324
    .local v12, "mpoint":Lorg/jbox2d/collision/ManifoldPoint;
    iget-object v0, v12, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v45, v0

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 325
    iget-object v0, v12, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    iget v0, v4, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v45, v0

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 326
    iget-object v0, v12, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/jbox2d/collision/ContactID;->zero()V

    goto/16 :goto_100

    .line 304
    .end local v12    # "mpoint":Lorg/jbox2d/collision/ManifoldPoint;
    .end local v13    # "normal":Lorg/jbox2d/common/Vec2;
    .end local v35    # "v1":Lorg/jbox2d/common/Vec2;
    .end local v36    # "v2":Lorg/jbox2d/common/Vec2;
    .end local v38    # "vertIndex2":I
    :cond_1be
    const/16 v38, 0x0

    goto/16 :goto_117

    .line 341
    .restart local v35    # "v1":Lorg/jbox2d/common/Vec2;
    .restart local v36    # "v2":Lorg/jbox2d/common/Vec2;
    .restart local v38    # "vertIndex2":I
    :cond_1c2
    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v44, v0

    sub-float v27, v2, v44

    .line 342
    .local v27, "tempX":F
    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v44, v0

    sub-float v28, v3, v44

    .line 343
    .local v28, "tempY":F
    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v44, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v45, v0

    sub-float v21, v44, v45

    .line 344
    .local v21, "temp2X":F
    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v44, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v45, v0

    sub-float v22, v44, v45

    .line 345
    .local v22, "temp2Y":F
    mul-float v44, v27, v21

    mul-float v45, v28, v22

    add-float v33, v44, v45

    .line 347
    .local v33, "u1":F
    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v44, v0

    sub-float v23, v2, v44

    .line 348
    .local v23, "temp3X":F
    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v44, v0

    sub-float v24, v3, v44

    .line 349
    .local v24, "temp3Y":F
    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v44, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v45, v0

    sub-float v25, v44, v45

    .line 350
    .local v25, "temp4X":F
    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v44, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v45, v0

    sub-float v26, v44, v45

    .line 351
    .local v26, "temp4Y":F
    mul-float v44, v23, v25

    mul-float v45, v24, v26

    add-float v34, v44, v45

    .line 354
    .local v34, "u2":F
    const/16 v44, 0x0

    cmpg-float v44, v33, v44

    if-gtz v44, :cond_2c0

    .line 356
    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v44, v0

    sub-float v7, v2, v44

    .line 357
    .local v7, "dx":F
    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v44, v0

    sub-float v8, v3, v44

    .line 358
    .local v8, "dy":F
    mul-float v44, v7, v7

    mul-float v45, v8, v8

    add-float v44, v44, v45

    mul-float v45, v18, v18

    cmpl-float v44, v44, v45

    if-gtz v44, :cond_100

    .line 362
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 363
    sget-object v44, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_A:Lorg/jbox2d/collision/Manifold$ManifoldType;

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    .line 367
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v45, v0

    sub-float v45, v2, v45

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 368
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v45, v0

    sub-float v45, v3, v45

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 370
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 371
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 372
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget-object v44, v44, v45

    move-object/from16 v0, v44

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 373
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget-object v44, v44, v45

    move-object/from16 v0, v44

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/jbox2d/collision/ContactID;->zero()V

    goto/16 :goto_100

    .line 374
    .end local v7    # "dx":F
    .end local v8    # "dy":F
    :cond_2c0
    const/16 v44, 0x0

    cmpg-float v44, v34, v44

    if-gtz v44, :cond_35a

    .line 376
    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v44, v0

    sub-float v7, v2, v44

    .line 377
    .restart local v7    # "dx":F
    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v44, v0

    sub-float v8, v3, v44

    .line 378
    .restart local v8    # "dy":F
    mul-float v44, v7, v7

    mul-float v45, v8, v8

    add-float v44, v44, v45

    mul-float v45, v18, v18

    cmpl-float v44, v44, v45

    if-gtz v44, :cond_100

    .line 382
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 383
    sget-object v44, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_A:Lorg/jbox2d/collision/Manifold$ManifoldType;

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    .line 387
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v45, v0

    sub-float v45, v2, v45

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 388
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v45, v0

    sub-float v45, v3, v45

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 390
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 391
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 392
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget-object v44, v44, v45

    move-object/from16 v0, v44

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 393
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget-object v44, v44, v45

    move-object/from16 v0, v44

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/jbox2d/collision/ContactID;->zero()V

    goto/16 :goto_100

    .line 406
    .end local v7    # "dx":F
    .end local v8    # "dy":F
    :cond_35a
    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v44, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v45, v0

    add-float v44, v44, v45

    const/high16 v45, 0x3f000000    # 0.5f

    mul-float v9, v44, v45

    .line 407
    .local v9, "fcx":F
    move-object/from16 v0, v35

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v44, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v45, v0

    add-float v44, v44, v45

    const/high16 v45, 0x3f000000    # 0.5f

    mul-float v10, v44, v45

    .line 409
    .local v10, "fcy":F
    sub-float v31, v2, v9

    .line 410
    .local v31, "tx":F
    sub-float v32, v3, v10

    .line 411
    .local v32, "ty":F
    aget-object v13, v15, v37

    .line 412
    .restart local v13    # "normal":Lorg/jbox2d/common/Vec2;
    iget v0, v13, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v44, v0

    mul-float v44, v44, v31

    iget v0, v13, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v45, v0

    mul-float v45, v45, v32

    add-float v20, v44, v45

    .line 413
    cmpl-float v44, v20, v18

    if-gtz v44, :cond_100

    .line 418
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 419
    sget-object v44, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_A:Lorg/jbox2d/collision/Manifold$ManifoldType;

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    .line 420
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    aget-object v45, v15, v37

    invoke-virtual/range {v44 .. v45}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 421
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iput v9, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 422
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iput v10, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 423
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget-object v44, v44, v45

    move-object/from16 v0, v44

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 424
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget-object v44, v44, v45

    move-object/from16 v0, v44

    iget-object v0, v0, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/jbox2d/collision/ContactID;->zero()V

    goto/16 :goto_100
.end method

.method public final collidePolygons(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;)V
    .registers 39
    .param p1, "manifold"    # Lorg/jbox2d/collision/Manifold;
    .param p2, "polyA"    # Lorg/jbox2d/collision/shapes/PolygonShape;
    .param p3, "xfA"    # Lorg/jbox2d/common/Transform;
    .param p4, "polyB"    # Lorg/jbox2d/collision/shapes/PolygonShape;
    .param p5, "xfB"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 707
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 708
    move-object/from16 v0, p2

    iget v2, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_radius:F

    move-object/from16 v0, p4

    iget v3, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_radius:F

    add-float v28, v2, v3

    .line 710
    .local v28, "totalRadius":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->results1:Lorg/jbox2d/collision/Collision$EdgeResults;

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/jbox2d/collision/Collision;->findMaxSeparation(Lorg/jbox2d/collision/Collision$EdgeResults;Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->results1:Lorg/jbox2d/collision/Collision$EdgeResults;

    iget v2, v2, Lorg/jbox2d/collision/Collision$EdgeResults;->separation:F

    cmpl-float v2, v2, v28

    if-lez v2, :cond_2b

    .line 841
    :cond_2a
    :goto_2a
    return-void

    .line 715
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->results2:Lorg/jbox2d/collision/Collision$EdgeResults;

    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lorg/jbox2d/collision/Collision;->findMaxSeparation(Lorg/jbox2d/collision/Collision$EdgeResults;Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->results2:Lorg/jbox2d/collision/Collision$EdgeResults;

    iget v2, v2, Lorg/jbox2d/collision/Collision$EdgeResults;->separation:F

    cmpl-float v2, v2, v28

    if-gtz v2, :cond_2a

    .line 725
    const v17, 0x3f7ae148    # 0.98f

    .line 726
    .local v17, "k_relativeTol":F
    const v16, 0x3a83126f    # 0.001f

    .line 728
    .local v16, "k_absoluteTol":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->results2:Lorg/jbox2d/collision/Collision$EdgeResults;

    iget v2, v2, Lorg/jbox2d/collision/Collision$EdgeResults;->separation:F

    const v3, 0x3f7ae148    # 0.98f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->results1:Lorg/jbox2d/collision/Collision$EdgeResults;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/collision/Collision$EdgeResults;->separation:F

    move/from16 v31, v0

    mul-float v3, v3, v31

    const v31, 0x3a83126f    # 0.001f

    add-float v3, v3, v31

    cmpl-float v2, v2, v3

    if-lez v2, :cond_317

    .line 729
    move-object/from16 v4, p4

    .line 730
    .local v4, "poly1":Lorg/jbox2d/collision/shapes/PolygonShape;
    move-object/from16 v7, p2

    .line 731
    .local v7, "poly2":Lorg/jbox2d/collision/shapes/PolygonShape;
    move-object/from16 v5, p5

    .line 732
    .local v5, "xf1":Lorg/jbox2d/common/Transform;
    move-object/from16 v8, p3

    .line 733
    .local v8, "xf2":Lorg/jbox2d/common/Transform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->results2:Lorg/jbox2d/collision/Collision$EdgeResults;

    iget v6, v2, Lorg/jbox2d/collision/Collision$EdgeResults;->edgeIndex:I

    .line 734
    .local v6, "edge1":I
    sget-object v2, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_B:Lorg/jbox2d/collision/Manifold$ManifoldType;

    move-object/from16 v0, p1

    iput-object v2, v0, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    .line 735
    const/4 v11, 0x1

    .line 745
    .local v11, "flip":Z
    :goto_81
    iget-object v0, v5, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v30, v0

    .line 747
    .local v30, "xf1q":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->incidentEdge:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/jbox2d/collision/Collision;->findIncidentEdge([Lorg/jbox2d/collision/Collision$ClipVertex;Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;ILorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;)V

    .line 749
    iget v9, v4, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    .line 750
    .local v9, "count1":I
    iget-object v0, v4, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v29, v0

    .line 752
    .local v29, "vertices1":[Lorg/jbox2d/common/Vec2;
    move v14, v6

    .line 753
    .local v14, "iv1":I
    add-int/lit8 v2, v6, 0x1

    if-ge v2, v9, :cond_32e

    add-int/lit8 v15, v6, 0x1

    .line 754
    .local v15, "iv2":I
    :goto_9b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->v11:Lorg/jbox2d/common/Vec2;

    aget-object v3, v29, v14

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->v12:Lorg/jbox2d/common/Vec2;

    aget-object v3, v29, v15

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->localTangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->v12:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->v11:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    sub-float v3, v3, v31

    iput v3, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->localTangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->v12:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->v11:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    sub-float v3, v3, v31

    iput v3, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->localTangent:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->localNormal:Lorg/jbox2d/common/Vec2;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->localTangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    mul-float v3, v3, v31

    iput v3, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->localNormal:Lorg/jbox2d/common/Vec2;

    const/high16 v3, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->localTangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    mul-float v3, v3, v31

    iput v3, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->planePoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->v11:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->v12:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    add-float v3, v3, v31

    const/high16 v31, 0x3f000000    # 0.5f

    mul-float v3, v3, v31

    iput v3, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->planePoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->v11:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->v12:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    add-float v3, v3, v31

    const/high16 v31, 0x3f000000    # 0.5f

    mul-float v3, v3, v31

    iput v3, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->tangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, v30

    iget v3, v0, Lorg/jbox2d/common/Rot;->c:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->localTangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    mul-float v3, v3, v31

    move-object/from16 v0, v30

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->localTangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    mul-float v31, v31, v32

    sub-float v3, v3, v31

    iput v3, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->tangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, v30

    iget v3, v0, Lorg/jbox2d/common/Rot;->s:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->localTangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v31, v0

    mul-float v3, v3, v31

    move-object/from16 v0, v30

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->localTangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v32, v0

    mul-float v31, v31, v32

    add-float v3, v3, v31

    iput v3, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 773
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->tangent:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v18, v2, v3

    .line 774
    .local v18, "normalx":F
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->tangent:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v19, v2, v3

    .line 777
    .local v19, "normaly":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->v11:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->v11:Lorg/jbox2d/common/Vec2;

    invoke-static {v5, v2, v3}, Lorg/jbox2d/common/Transform;->mulToOut(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->v12:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->v12:Lorg/jbox2d/common/Vec2;

    invoke-static {v5, v2, v3}, Lorg/jbox2d/common/Transform;->mulToOut(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->v11:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v2, v2, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->v11:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v3, v3, v19

    add-float v12, v2, v3

    .line 789
    .local v12, "frontOffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->tangent:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->v11:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->tangent:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->v11:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    mul-float v3, v3, v31

    add-float/2addr v2, v3

    neg-float v2, v2

    add-float v26, v2, v28

    .line 790
    .local v26, "sideOffset1":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->tangent:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->v12:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->tangent:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->v12:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v31, v0

    mul-float v3, v3, v31

    add-float/2addr v2, v3

    add-float v27, v2, v28

    .line 799
    .local v27, "sideOffset2":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->tangent:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->clipPoints1:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->incidentEdge:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->tangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-static {v2, v3, v0, v1, v14}, Lorg/jbox2d/collision/Collision;->clipSegmentToLine([Lorg/jbox2d/collision/Collision$ClipVertex;[Lorg/jbox2d/collision/Collision$ClipVertex;Lorg/jbox2d/common/Vec2;FI)I

    move-result v20

    .line 801
    .local v20, "np":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->tangent:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 803
    const/4 v2, 0x2

    move/from16 v0, v20

    if-lt v0, v2, :cond_2a

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->clipPoints1:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision;->tangent:Lorg/jbox2d/common/Vec2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-static {v2, v3, v0, v1, v15}, Lorg/jbox2d/collision/Collision;->clipSegmentToLine([Lorg/jbox2d/collision/Collision$ClipVertex;[Lorg/jbox2d/collision/Collision$ClipVertex;Lorg/jbox2d/common/Vec2;FI)I

    move-result v20

    .line 810
    const/4 v2, 0x2

    move/from16 v0, v20

    if-lt v0, v2, :cond_2a

    .line 815
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->localNormal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 816
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->planePoint:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 818
    const/16 v22, 0x0

    .line 819
    .local v22, "pointCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_28e
    const/4 v2, 0x2

    if-ge v13, v2, :cond_331

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    aget-object v2, v2, v13

    iget-object v2, v2, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v2, v2, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    aget-object v3, v3, v13

    iget-object v3, v3, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v3, v3, v19

    add-float/2addr v2, v3

    sub-float v25, v2, v12

    .line 823
    .local v25, "separation":F
    cmpg-float v2, v25, v28

    if-gtz v2, :cond_313

    .line 824
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    aget-object v10, v2, v22

    .line 826
    .local v10, "cp":Lorg/jbox2d/collision/ManifoldPoint;
    iget-object v0, v10, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v21, v0

    .line 827
    .local v21, "out":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    aget-object v2, v2, v13

    iget-object v2, v2, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, v8, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    sub-float v23, v2, v3

    .line 828
    .local v23, "px":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    aget-object v2, v2, v13

    iget-object v2, v2, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, v8, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    sub-float v24, v2, v3

    .line 829
    .local v24, "py":F
    iget-object v2, v8, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v2, v2, Lorg/jbox2d/common/Rot;->c:F

    mul-float v2, v2, v23

    iget-object v3, v8, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v3, v3, Lorg/jbox2d/common/Rot;->s:F

    mul-float v3, v3, v24

    add-float/2addr v2, v3

    move-object/from16 v0, v21

    iput v2, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 830
    iget-object v2, v8, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v2, v2, Lorg/jbox2d/common/Rot;->s:F

    neg-float v2, v2

    mul-float v2, v2, v23

    iget-object v3, v8, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v3, v3, Lorg/jbox2d/common/Rot;->c:F

    mul-float v3, v3, v24

    add-float/2addr v2, v3

    move-object/from16 v0, v21

    iput v2, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 831
    iget-object v2, v10, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/Collision;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    aget-object v3, v3, v13

    iget-object v3, v3, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    invoke-virtual {v2, v3}, Lorg/jbox2d/collision/ContactID;->set(Lorg/jbox2d/collision/ContactID;)V

    .line 832
    if-eqz v11, :cond_311

    .line 834
    iget-object v2, v10, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    invoke-virtual {v2}, Lorg/jbox2d/collision/ContactID;->flip()V

    .line 836
    :cond_311
    add-int/lit8 v22, v22, 0x1

    .line 819
    .end local v10    # "cp":Lorg/jbox2d/collision/ManifoldPoint;
    .end local v21    # "out":Lorg/jbox2d/common/Vec2;
    .end local v23    # "px":F
    .end local v24    # "py":F
    :cond_313
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_28e

    .line 737
    .end local v4    # "poly1":Lorg/jbox2d/collision/shapes/PolygonShape;
    .end local v5    # "xf1":Lorg/jbox2d/common/Transform;
    .end local v6    # "edge1":I
    .end local v7    # "poly2":Lorg/jbox2d/collision/shapes/PolygonShape;
    .end local v8    # "xf2":Lorg/jbox2d/common/Transform;
    .end local v9    # "count1":I
    .end local v11    # "flip":Z
    .end local v12    # "frontOffset":F
    .end local v13    # "i":I
    .end local v14    # "iv1":I
    .end local v15    # "iv2":I
    .end local v18    # "normalx":F
    .end local v19    # "normaly":F
    .end local v20    # "np":I
    .end local v22    # "pointCount":I
    .end local v25    # "separation":F
    .end local v26    # "sideOffset1":F
    .end local v27    # "sideOffset2":F
    .end local v29    # "vertices1":[Lorg/jbox2d/common/Vec2;
    .end local v30    # "xf1q":Lorg/jbox2d/common/Rot;
    :cond_317
    move-object/from16 v4, p2

    .line 738
    .restart local v4    # "poly1":Lorg/jbox2d/collision/shapes/PolygonShape;
    move-object/from16 v7, p4

    .line 739
    .restart local v7    # "poly2":Lorg/jbox2d/collision/shapes/PolygonShape;
    move-object/from16 v5, p3

    .line 740
    .restart local v5    # "xf1":Lorg/jbox2d/common/Transform;
    move-object/from16 v8, p5

    .line 741
    .restart local v8    # "xf2":Lorg/jbox2d/common/Transform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Collision;->results1:Lorg/jbox2d/collision/Collision$EdgeResults;

    iget v6, v2, Lorg/jbox2d/collision/Collision$EdgeResults;->edgeIndex:I

    .line 742
    .restart local v6    # "edge1":I
    sget-object v2, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_A:Lorg/jbox2d/collision/Manifold$ManifoldType;

    move-object/from16 v0, p1

    iput-object v2, v0, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    .line 743
    const/4 v11, 0x0

    .restart local v11    # "flip":Z
    goto/16 :goto_81

    .line 753
    .restart local v9    # "count1":I
    .restart local v14    # "iv1":I
    .restart local v29    # "vertices1":[Lorg/jbox2d/common/Vec2;
    .restart local v30    # "xf1q":Lorg/jbox2d/common/Rot;
    :cond_32e
    const/4 v15, 0x0

    goto/16 :goto_9b

    .line 840
    .restart local v12    # "frontOffset":F
    .restart local v13    # "i":I
    .restart local v15    # "iv2":I
    .restart local v18    # "normalx":F
    .restart local v19    # "normaly":F
    .restart local v20    # "np":I
    .restart local v22    # "pointCount":I
    .restart local v26    # "sideOffset1":F
    .restart local v27    # "sideOffset2":F
    :cond_331
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    goto/16 :goto_2a
.end method

.method public final edgeSeparation(Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;ILorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;)F
    .registers 36
    .param p1, "poly1"    # Lorg/jbox2d/collision/shapes/PolygonShape;
    .param p2, "xf1"    # Lorg/jbox2d/common/Transform;
    .param p3, "edge1"    # I
    .param p4, "poly2"    # Lorg/jbox2d/collision/shapes/PolygonShape;
    .param p5, "xf2"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 440
    move-object/from16 v0, p1

    iget v2, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    .line 441
    .local v2, "count1":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    .line 442
    .local v23, "vertices1":[Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    .line 444
    .local v12, "normals1":[Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p4

    iget v3, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    .line 445
    .local v3, "count2":I
    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    .line 447
    .local v24, "vertices2":[Lorg/jbox2d/common/Vec2;
    sget-boolean v27, Lorg/jbox2d/collision/Collision;->$assertionsDisabled:Z

    if-nez v27, :cond_28

    if-ltz p3, :cond_22

    move/from16 v0, p3

    if-lt v0, v2, :cond_28

    :cond_22
    new-instance v27, Ljava/lang/AssertionError;

    invoke-direct/range {v27 .. v27}, Ljava/lang/AssertionError;-><init>()V

    throw v27

    .line 459
    :cond_28
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v25, v0

    .line 460
    .local v25, "xf1q":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p5

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v26, v0

    .line 461
    .local v26, "xf2q":Lorg/jbox2d/common/Rot;
    move-object/from16 v13, v25

    .line 462
    .local v13, "q":Lorg/jbox2d/common/Rot;
    aget-object v16, v12, p3

    .line 463
    .local v16, "v":Lorg/jbox2d/common/Vec2;
    iget v0, v13, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    iget v0, v13, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v28, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    sub-float v8, v27, v28

    .line 464
    .local v8, "normal1Worldx":F
    iget v0, v13, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    iget v0, v13, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v28, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v9, v27, v28

    .line 465
    .local v9, "normal1Worldy":F
    move-object/from16 v14, v26

    .line 466
    .local v14, "q1":Lorg/jbox2d/common/Rot;
    iget v0, v14, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v27, v0

    mul-float v27, v27, v8

    iget v0, v14, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v28, v0

    mul-float v28, v28, v9

    add-float v10, v27, v28

    .line 467
    .local v10, "normal1x":F
    iget v0, v14, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v27, v0

    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v8

    iget v0, v14, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v28, v0

    mul-float v28, v28, v9

    add-float v11, v27, v28

    .line 471
    .local v11, "normal1y":F
    const/4 v6, 0x0

    .line 472
    .local v6, "index":I
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 474
    .local v7, "minDot":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_94
    if-ge v5, v3, :cond_af

    .line 475
    aget-object v1, v24, v5

    .line 476
    .local v1, "a":Lorg/jbox2d/common/Vec2;
    iget v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    mul-float v27, v27, v10

    iget v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    mul-float v28, v28, v11

    add-float v4, v27, v28

    .line 477
    .local v4, "dot":F
    cmpg-float v27, v4, v7

    if-gez v27, :cond_ac

    .line 478
    move v7, v4

    .line 479
    move v6, v5

    .line 474
    :cond_ac
    add-int/lit8 v5, v5, 0x1

    goto :goto_94

    .line 493
    .end local v1    # "a":Lorg/jbox2d/common/Vec2;
    .end local v4    # "dot":F
    :cond_af
    aget-object v21, v23, p3

    .line 494
    .local v21, "v3":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v27, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    add-float v17, v27, v28

    .line 495
    .local v17, "v1x":F
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v27, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    add-float v18, v27, v28

    .line 496
    .local v18, "v1y":F
    aget-object v22, v24, v6

    .line 497
    .local v22, "v4":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v27, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    move-object/from16 v0, p5

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    add-float v27, v27, v28

    sub-float v19, v27, v17

    .line 498
    .local v19, "v2x":F
    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v27, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move-object/from16 v0, p5

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    add-float v27, v27, v28

    sub-float v20, v27, v18

    .line 500
    .local v20, "v2y":F
    mul-float v27, v19, v8

    mul-float v28, v20, v9

    add-float v15, v27, v28

    .line 501
    .local v15, "separation":F
    return v15
.end method

.method public final findIncidentEdge([Lorg/jbox2d/collision/Collision$ClipVertex;Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;ILorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;)V
    .registers 37
    .param p1, "c"    # [Lorg/jbox2d/collision/Collision$ClipVertex;
    .param p2, "poly1"    # Lorg/jbox2d/collision/shapes/PolygonShape;
    .param p3, "xf1"    # Lorg/jbox2d/common/Transform;
    .param p4, "edge1"    # I
    .param p5, "poly2"    # Lorg/jbox2d/collision/shapes/PolygonShape;
    .param p6, "xf2"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 611
    move-object/from16 v0, p2

    iget v5, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    .line 612
    .local v5, "count1":I
    move-object/from16 v0, p2

    iget-object v15, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    .line 614
    .local v15, "normals1":[Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p5

    iget v6, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    .line 615
    .local v6, "count2":I
    move-object/from16 v0, p5

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v24, v0

    .line 616
    .local v24, "vertices2":[Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p5

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v16, v0

    .line 618
    .local v16, "normals2":[Lorg/jbox2d/common/Vec2;
    sget-boolean v27, Lorg/jbox2d/collision/Collision;->$assertionsDisabled:Z

    if-nez v27, :cond_28

    if-ltz p4, :cond_22

    move/from16 v0, p4

    if-lt v0, v5, :cond_28

    :cond_22
    new-instance v27, Ljava/lang/AssertionError;

    invoke-direct/range {v27 .. v27}, Ljava/lang/AssertionError;-><init>()V

    throw v27

    .line 620
    :cond_28
    const/16 v27, 0x0

    aget-object v3, p1, v27

    .line 621
    .local v3, "c0":Lorg/jbox2d/collision/Collision$ClipVertex;
    const/16 v27, 0x1

    aget-object v4, p1, v27

    .line 622
    .local v4, "c1":Lorg/jbox2d/collision/Collision$ClipVertex;
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v25, v0

    .line 623
    .local v25, "xf1q":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v26, v0

    .line 631
    .local v26, "xf2q":Lorg/jbox2d/common/Rot;
    aget-object v21, v15, p4

    .line 632
    .local v21, "v":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v27, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    sub-float v19, v27, v28

    .line 633
    .local v19, "tempx":F
    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v27, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v20, v27, v28

    .line 634
    .local v20, "tempy":F
    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v27, v0

    mul-float v27, v27, v19

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v28, v0

    mul-float v28, v28, v20

    add-float v13, v27, v28

    .line 635
    .local v13, "normal1x":F
    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v27, v0

    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v19

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v28, v0

    mul-float v28, v28, v20

    add-float v14, v27, v28

    .line 640
    .local v14, "normal1y":F
    const/4 v11, 0x0

    .line 641
    .local v11, "index":I
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    .line 642
    .local v12, "minDot":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_a8
    if-ge v8, v6, :cond_c3

    .line 643
    aget-object v2, v16, v8

    .line 644
    .local v2, "b":Lorg/jbox2d/common/Vec2;
    iget v0, v2, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    mul-float v27, v27, v13

    iget v0, v2, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    mul-float v28, v28, v14

    add-float v7, v27, v28

    .line 645
    .local v7, "dot":F
    cmpg-float v27, v7, v12

    if-gez v27, :cond_c0

    .line 646
    move v12, v7

    .line 647
    move v11, v8

    .line 642
    :cond_c0
    add-int/lit8 v8, v8, 0x1

    goto :goto_a8

    .line 652
    .end local v2    # "b":Lorg/jbox2d/common/Vec2;
    .end local v7    # "dot":F
    :cond_c3
    move v9, v11

    .line 653
    .local v9, "i1":I
    add-int/lit8 v27, v9, 0x1

    move/from16 v0, v27

    if-ge v0, v6, :cond_22d

    add-int/lit8 v10, v9, 0x1

    .line 656
    .local v10, "i2":I
    :goto_cc
    aget-object v22, v24, v9

    .line 657
    .local v22, "v1":Lorg/jbox2d/common/Vec2;
    iget-object v0, v3, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    .line 658
    .local v17, "out":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v27, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    add-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 659
    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v27, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    add-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 660
    iget-object v0, v3, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v27, v0

    move/from16 v0, p4

    int-to-byte v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexA:B

    .line 661
    iget-object v0, v3, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v27, v0

    int-to-byte v0, v9

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexB:B

    .line 662
    iget-object v0, v3, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v27, v0

    sget-object v28, Lorg/jbox2d/collision/ContactID$Type;->FACE:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual/range {v28 .. v28}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v28

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeA:B

    .line 663
    iget-object v0, v3, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v27, v0

    sget-object v28, Lorg/jbox2d/collision/ContactID$Type;->VERTEX:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual/range {v28 .. v28}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v28

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeB:B

    .line 666
    aget-object v23, v24, v10

    .line 667
    .local v23, "v2":Lorg/jbox2d/common/Vec2;
    iget-object v0, v4, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v18, v0

    .line 668
    .local v18, "out1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v27, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v28, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    add-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 669
    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    move/from16 v27, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    move/from16 v28, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    add-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 670
    iget-object v0, v4, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v27, v0

    move/from16 v0, p4

    int-to-byte v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexA:B

    .line 671
    iget-object v0, v4, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v27, v0

    int-to-byte v0, v10

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexB:B

    .line 672
    iget-object v0, v4, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v27, v0

    sget-object v28, Lorg/jbox2d/collision/ContactID$Type;->FACE:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual/range {v28 .. v28}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v28

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeA:B

    .line 673
    iget-object v0, v4, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v27, v0

    sget-object v28, Lorg/jbox2d/collision/ContactID$Type;->VERTEX:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual/range {v28 .. v28}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v28

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeB:B

    .line 674
    return-void

    .line 653
    .end local v10    # "i2":I
    .end local v17    # "out":Lorg/jbox2d/common/Vec2;
    .end local v18    # "out1":Lorg/jbox2d/common/Vec2;
    .end local v22    # "v1":Lorg/jbox2d/common/Vec2;
    .end local v23    # "v2":Lorg/jbox2d/common/Vec2;
    :cond_22d
    const/4 v10, 0x0

    goto/16 :goto_cc
.end method

.method public final findMaxSeparation(Lorg/jbox2d/collision/Collision$EdgeResults;Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;)V
    .registers 42
    .param p1, "results"    # Lorg/jbox2d/collision/Collision$EdgeResults;
    .param p2, "poly1"    # Lorg/jbox2d/collision/shapes/PolygonShape;
    .param p3, "xf1"    # Lorg/jbox2d/common/Transform;
    .param p4, "poly2"    # Lorg/jbox2d/collision/shapes/PolygonShape;
    .param p5, "xf2"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 520
    move-object/from16 v0, p2

    iget v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    move/from16 v18, v0

    .line 521
    .local v18, "count1":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    .line 523
    .local v28, "normals1":[Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    move-object/from16 v29, v0

    .line 524
    .local v29, "poly1centroid":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    move-object/from16 v30, v0

    .line 525
    .local v30, "poly2centroid":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p5

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v35, v0

    .line 526
    .local v35, "xf2q":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v34, v0

    .line 535
    .local v34, "xf1q":Lorg/jbox2d/common/Rot;
    move-object/from16 v0, v35

    iget v2, v0, Lorg/jbox2d/common/Rot;->c:F

    move-object/from16 v0, v30

    iget v3, v0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    move-object/from16 v0, v35

    iget v3, v0, Lorg/jbox2d/common/Rot;->s:F

    move-object/from16 v0, v30

    iget v4, v0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p5

    iget-object v3, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    add-float v22, v2, v3

    .line 536
    .local v22, "dx":F
    move-object/from16 v0, v35

    iget v2, v0, Lorg/jbox2d/common/Rot;->s:F

    move-object/from16 v0, v30

    iget v3, v0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    move-object/from16 v0, v35

    iget v3, v0, Lorg/jbox2d/common/Rot;->c:F

    move-object/from16 v0, v30

    iget v4, v0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p5

    iget-object v3, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    add-float v23, v2, v3

    .line 537
    .local v23, "dy":F
    move-object/from16 v0, v34

    iget v2, v0, Lorg/jbox2d/common/Rot;->c:F

    move-object/from16 v0, v29

    iget v3, v0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    move-object/from16 v0, v34

    iget v3, v0, Lorg/jbox2d/common/Rot;->s:F

    move-object/from16 v0, v29

    iget v4, v0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v2, v3

    sub-float v22, v22, v2

    .line 538
    move-object/from16 v0, v34

    iget v2, v0, Lorg/jbox2d/common/Rot;->s:F

    move-object/from16 v0, v29

    iget v3, v0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    move-object/from16 v0, v34

    iget v3, v0, Lorg/jbox2d/common/Rot;->c:F

    move-object/from16 v0, v29

    iget v4, v0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v2, v3

    sub-float v23, v23, v2

    .line 540
    move-object/from16 v0, v34

    iget v2, v0, Lorg/jbox2d/common/Rot;->c:F

    mul-float v2, v2, v22

    move-object/from16 v0, v34

    iget v3, v0, Lorg/jbox2d/common/Rot;->s:F

    mul-float v3, v3, v23

    add-float v19, v2, v3

    .line 541
    .local v19, "dLocal1x":F
    move-object/from16 v0, v34

    iget v2, v0, Lorg/jbox2d/common/Rot;->s:F

    neg-float v2, v2

    mul-float v2, v2, v22

    move-object/from16 v0, v34

    iget v3, v0, Lorg/jbox2d/common/Rot;->c:F

    mul-float v3, v3, v23

    add-float v20, v2, v3

    .line 545
    .local v20, "dLocal1y":F
    const/4 v5, 0x0

    .line 547
    .local v5, "edge":I
    const v26, -0x800001

    .line 548
    .local v26, "maxDot":F
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_b5
    move/from16 v0, v24

    move/from16 v1, v18

    if-ge v0, v1, :cond_d6

    .line 549
    aget-object v27, v28, v24

    .line 550
    .local v27, "normal":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, v27

    iget v2, v0, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v2, v2, v19

    move-object/from16 v0, v27

    iget v3, v0, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v3, v3, v20

    add-float v21, v2, v3

    .line 551
    .local v21, "dot":F
    cmpl-float v2, v21, v26

    if-lez v2, :cond_d3

    .line 552
    move/from16 v26, v21

    .line 553
    move/from16 v5, v24

    .line 548
    :cond_d3
    add-int/lit8 v24, v24, 0x1

    goto :goto_b5

    .end local v21    # "dot":F
    .end local v27    # "normal":Lorg/jbox2d/common/Vec2;
    :cond_d6
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 558
    invoke-virtual/range {v2 .. v7}, Lorg/jbox2d/collision/Collision;->edgeSeparation(Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;ILorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;)F

    move-result v31

    .line 561
    .local v31, "s":F
    add-int/lit8 v2, v5, -0x1

    if-ltz v2, :cond_13e

    add-int/lit8 v9, v5, -0x1

    .local v9, "prevEdge":I
    :goto_ea
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 562
    invoke-virtual/range {v6 .. v11}, Lorg/jbox2d/collision/Collision;->edgeSeparation(Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;ILorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;)F

    move-result v33

    .line 565
    .local v33, "sPrev":F
    add-int/lit8 v2, v5, 0x1

    move/from16 v0, v18

    if-ge v2, v0, :cond_141

    add-int/lit8 v13, v5, 0x1

    .local v13, "nextEdge":I
    :goto_100
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    .line 566
    invoke-virtual/range {v10 .. v15}, Lorg/jbox2d/collision/Collision;->edgeSeparation(Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;ILorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;)F

    move-result v32

    .line 572
    .local v32, "sNext":F
    cmpl-float v2, v33, v31

    if-lez v2, :cond_143

    cmpl-float v2, v33, v32

    if-lez v2, :cond_143

    .line 573
    const/16 v25, -0x1

    .line 574
    .local v25, "increment":I
    move/from16 v16, v9

    .line 575
    .local v16, "bestEdge":I
    move/from16 v17, v33

    .line 588
    .local v17, "bestSeparation":F
    :goto_11c
    const/4 v2, -0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_15c

    .line 589
    add-int/lit8 v2, v16, -0x1

    if-ltz v2, :cond_159

    add-int/lit8 v5, v16, -0x1

    :goto_127
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 594
    invoke-virtual/range {v2 .. v7}, Lorg/jbox2d/collision/Collision;->edgeSeparation(Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;ILorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;)F

    move-result v31

    .line 596
    cmpl-float v2, v31, v17

    if-lez v2, :cond_167

    .line 597
    move/from16 v16, v5

    .line 598
    move/from16 v17, v31

    goto :goto_11c

    .line 561
    .end local v9    # "prevEdge":I
    .end local v13    # "nextEdge":I
    .end local v16    # "bestEdge":I
    .end local v17    # "bestSeparation":F
    .end local v25    # "increment":I
    .end local v32    # "sNext":F
    .end local v33    # "sPrev":F
    :cond_13e
    add-int/lit8 v9, v18, -0x1

    goto :goto_ea

    .line 565
    .restart local v9    # "prevEdge":I
    .restart local v33    # "sPrev":F
    :cond_141
    const/4 v13, 0x0

    goto :goto_100

    .line 576
    .restart local v13    # "nextEdge":I
    .restart local v32    # "sNext":F
    :cond_143
    cmpl-float v2, v32, v31

    if-lez v2, :cond_14e

    .line 577
    const/16 v25, 0x1

    .line 578
    .restart local v25    # "increment":I
    move/from16 v16, v13

    .line 579
    .restart local v16    # "bestEdge":I
    move/from16 v17, v32

    .restart local v17    # "bestSeparation":F
    goto :goto_11c

    .line 581
    .end local v16    # "bestEdge":I
    .end local v17    # "bestSeparation":F
    .end local v25    # "increment":I
    :cond_14e
    move-object/from16 v0, p1

    iput v5, v0, Lorg/jbox2d/collision/Collision$EdgeResults;->edgeIndex:I

    .line 582
    move/from16 v0, v31

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/Collision$EdgeResults;->separation:F

    .line 606
    :goto_158
    return-void

    .line 589
    .restart local v16    # "bestEdge":I
    .restart local v17    # "bestSeparation":F
    .restart local v25    # "increment":I
    :cond_159
    add-int/lit8 v5, v18, -0x1

    goto :goto_127

    .line 591
    :cond_15c
    add-int/lit8 v2, v16, 0x1

    move/from16 v0, v18

    if-ge v2, v0, :cond_165

    add-int/lit8 v5, v16, 0x1

    :goto_164
    goto :goto_127

    :cond_165
    const/4 v5, 0x0

    goto :goto_164

    .line 604
    :cond_167
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/Collision$EdgeResults;->edgeIndex:I

    .line 605
    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/Collision$EdgeResults;->separation:F

    goto :goto_158
.end method

.method public final testOverlap(Lorg/jbox2d/collision/shapes/Shape;ILorg/jbox2d/collision/shapes/Shape;ILorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;)Z
    .registers 13
    .param p1, "shapeA"    # Lorg/jbox2d/collision/shapes/Shape;
    .param p2, "indexA"    # I
    .param p3, "shapeB"    # Lorg/jbox2d/collision/shapes/Shape;
    .param p4, "indexB"    # I
    .param p5, "xfA"    # Lorg/jbox2d/common/Transform;
    .param p6, "xfB"    # Lorg/jbox2d/common/Transform;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    iget-object v2, p0, Lorg/jbox2d/collision/Collision;->input:Lorg/jbox2d/collision/DistanceInput;

    iget-object v2, v2, Lorg/jbox2d/collision/DistanceInput;->proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    invoke-virtual {v2, p1, p2}, Lorg/jbox2d/collision/Distance$DistanceProxy;->set(Lorg/jbox2d/collision/shapes/Shape;I)V

    .line 77
    iget-object v2, p0, Lorg/jbox2d/collision/Collision;->input:Lorg/jbox2d/collision/DistanceInput;

    iget-object v2, v2, Lorg/jbox2d/collision/DistanceInput;->proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    invoke-virtual {v2, p3, p4}, Lorg/jbox2d/collision/Distance$DistanceProxy;->set(Lorg/jbox2d/collision/shapes/Shape;I)V

    .line 78
    iget-object v2, p0, Lorg/jbox2d/collision/Collision;->input:Lorg/jbox2d/collision/DistanceInput;

    iget-object v2, v2, Lorg/jbox2d/collision/DistanceInput;->transformA:Lorg/jbox2d/common/Transform;

    invoke-virtual {v2, p5}, Lorg/jbox2d/common/Transform;->set(Lorg/jbox2d/common/Transform;)Lorg/jbox2d/common/Transform;

    .line 79
    iget-object v2, p0, Lorg/jbox2d/collision/Collision;->input:Lorg/jbox2d/collision/DistanceInput;

    iget-object v2, v2, Lorg/jbox2d/collision/DistanceInput;->transformB:Lorg/jbox2d/common/Transform;

    invoke-virtual {v2, p6}, Lorg/jbox2d/common/Transform;->set(Lorg/jbox2d/common/Transform;)Lorg/jbox2d/common/Transform;

    .line 80
    iget-object v2, p0, Lorg/jbox2d/collision/Collision;->input:Lorg/jbox2d/collision/DistanceInput;

    iput-boolean v0, v2, Lorg/jbox2d/collision/DistanceInput;->useRadii:Z

    .line 82
    iget-object v2, p0, Lorg/jbox2d/collision/Collision;->cache:Lorg/jbox2d/collision/Distance$SimplexCache;

    iput v1, v2, Lorg/jbox2d/collision/Distance$SimplexCache;->count:I

    .line 84
    iget-object v2, p0, Lorg/jbox2d/collision/Collision;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v2}, Lorg/jbox2d/pooling/IWorldPool;->getDistance()Lorg/jbox2d/collision/Distance;

    move-result-object v2

    iget-object v3, p0, Lorg/jbox2d/collision/Collision;->output:Lorg/jbox2d/collision/DistanceOutput;

    iget-object v4, p0, Lorg/jbox2d/collision/Collision;->cache:Lorg/jbox2d/collision/Distance$SimplexCache;

    iget-object v5, p0, Lorg/jbox2d/collision/Collision;->input:Lorg/jbox2d/collision/DistanceInput;

    invoke-virtual {v2, v3, v4, v5}, Lorg/jbox2d/collision/Distance;->distance(Lorg/jbox2d/collision/DistanceOutput;Lorg/jbox2d/collision/Distance$SimplexCache;Lorg/jbox2d/collision/DistanceInput;)V

    .line 86
    iget-object v2, p0, Lorg/jbox2d/collision/Collision;->output:Lorg/jbox2d/collision/DistanceOutput;

    iget v2, v2, Lorg/jbox2d/collision/DistanceOutput;->distance:F

    const/high16 v3, 0x35a00000

    cmpg-float v2, v2, v3

    if-gez v2, :cond_40

    :goto_3f
    return v0

    :cond_40
    move v0, v1

    goto :goto_3f
.end method

###### Class org.jbox2d.collision.Collision.AnonymousClass1 (org.jbox2d.collision.Collision$1)
.class synthetic Lorg/jbox2d/collision/Collision$1;
.super Ljava/lang/Object;
.source "Collision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/Collision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class org.jbox2d.collision.Collision.ClipVertex (org.jbox2d.collision.Collision$ClipVertex)
.class public Lorg/jbox2d/collision/Collision$ClipVertex;
.super Ljava/lang/Object;
.source "Collision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/Collision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClipVertex"
.end annotation


# instance fields
.field public final id:Lorg/jbox2d/collision/ContactID;

.field public final v:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    .line 1002
    new-instance v0, Lorg/jbox2d/collision/ContactID;

    invoke-direct {v0}, Lorg/jbox2d/collision/ContactID;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    .line 1003
    return-void
.end method


# virtual methods
.method public set(Lorg/jbox2d/collision/Collision$ClipVertex;)V
    .registers 6
    .param p1, "cv"    # Lorg/jbox2d/collision/Collision$ClipVertex;

    .prologue
    .line 1006
    iget-object v1, p1, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    .line 1007
    .local v1, "v1":Lorg/jbox2d/common/Vec2;
    iget-object v2, p0, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    iget v3, v1, Lorg/jbox2d/common/Vec2;->x:F

    iput v3, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 1008
    iget-object v2, p0, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    iget v3, v1, Lorg/jbox2d/common/Vec2;->y:F

    iput v3, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 1009
    iget-object v0, p1, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    .line 1010
    .local v0, "c":Lorg/jbox2d/collision/ContactID;
    iget-object v2, p0, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    iget-byte v3, v0, Lorg/jbox2d/collision/ContactID;->indexA:B

    iput-byte v3, v2, Lorg/jbox2d/collision/ContactID;->indexA:B

    .line 1011
    iget-object v2, p0, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    iget-byte v3, v0, Lorg/jbox2d/collision/ContactID;->indexB:B

    iput-byte v3, v2, Lorg/jbox2d/collision/ContactID;->indexB:B

    .line 1012
    iget-object v2, p0, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    iget-byte v3, v0, Lorg/jbox2d/collision/ContactID;->typeA:B

    iput-byte v3, v2, Lorg/jbox2d/collision/ContactID;->typeA:B

    .line 1013
    iget-object v2, p0, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    iget-byte v3, v0, Lorg/jbox2d/collision/ContactID;->typeB:B

    iput-byte v3, v2, Lorg/jbox2d/collision/ContactID;->typeB:B

    .line 1014
    return-void
.end method

###### Class org.jbox2d.collision.Collision.EPAxis (org.jbox2d.collision.Collision$EPAxis)
.class Lorg/jbox2d/collision/Collision$EPAxis;
.super Ljava/lang/Object;
.source "Collision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/Collision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EPAxis"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/collision/Collision$EPAxis$Type;
    }
.end annotation


# instance fields
.field index:I

.field separation:F

.field type:Lorg/jbox2d/collision/Collision$EPAxis$Type;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    return-void
.end method

###### Class org.jbox2d.collision.Collision.EPAxis.Type (org.jbox2d.collision.Collision$EPAxis$Type)
.class final enum Lorg/jbox2d/collision/Collision$EPAxis$Type;
.super Ljava/lang/Enum;
.source "Collision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/Collision$EPAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jbox2d/collision/Collision$EPAxis$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jbox2d/collision/Collision$EPAxis$Type;

.field public static final enum EDGE_A:Lorg/jbox2d/collision/Collision$EPAxis$Type;

.field public static final enum EDGE_B:Lorg/jbox2d/collision/Collision$EPAxis$Type;

.field public static final enum UNKNOWN:Lorg/jbox2d/collision/Collision$EPAxis$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1046
    new-instance v0, Lorg/jbox2d/collision/Collision$EPAxis$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/collision/Collision$EPAxis$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/Collision$EPAxis$Type;->UNKNOWN:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    new-instance v0, Lorg/jbox2d/collision/Collision$EPAxis$Type;

    const-string v1, "EDGE_A"

    invoke-direct {v0, v1, v3}, Lorg/jbox2d/collision/Collision$EPAxis$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/Collision$EPAxis$Type;->EDGE_A:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    new-instance v0, Lorg/jbox2d/collision/Collision$EPAxis$Type;

    const-string v1, "EDGE_B"

    invoke-direct {v0, v1, v4}, Lorg/jbox2d/collision/Collision$EPAxis$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/Collision$EPAxis$Type;->EDGE_B:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    .line 1045
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jbox2d/collision/Collision$EPAxis$Type;

    sget-object v1, Lorg/jbox2d/collision/Collision$EPAxis$Type;->UNKNOWN:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jbox2d/collision/Collision$EPAxis$Type;->EDGE_A:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jbox2d/collision/Collision$EPAxis$Type;->EDGE_B:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jbox2d/collision/Collision$EPAxis$Type;->$VALUES:[Lorg/jbox2d/collision/Collision$EPAxis$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1045
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jbox2d/collision/Collision$EPAxis$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1045
    const-class v0, Lorg/jbox2d/collision/Collision$EPAxis$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/collision/Collision$EPAxis$Type;

    return-object v0
.end method

.method public static values()[Lorg/jbox2d/collision/Collision$EPAxis$Type;
    .registers 1

    .prologue
    .line 1045
    sget-object v0, Lorg/jbox2d/collision/Collision$EPAxis$Type;->$VALUES:[Lorg/jbox2d/collision/Collision$EPAxis$Type;

    invoke-virtual {v0}, [Lorg/jbox2d/collision/Collision$EPAxis$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jbox2d/collision/Collision$EPAxis$Type;

    return-object v0
.end method

###### Class org.jbox2d.collision.Collision.EPCollider (org.jbox2d.collision.Collision$EPCollider)
.class Lorg/jbox2d/collision/Collision$EPCollider;
.super Ljava/lang/Object;
.source "Collision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/Collision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EPCollider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/collision/Collision$EPCollider$VertexType;
    }
.end annotation


# instance fields
.field private final clipPoints1:[Lorg/jbox2d/collision/Collision$ClipVertex;

.field private final clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

.field private final edge0:Lorg/jbox2d/common/Vec2;

.field private final edge1:Lorg/jbox2d/common/Vec2;

.field private final edge2:Lorg/jbox2d/common/Vec2;

.field private final edgeAxis:Lorg/jbox2d/collision/Collision$EPAxis;

.field private final ie:[Lorg/jbox2d/collision/Collision$ClipVertex;

.field final m_centroidB:Lorg/jbox2d/common/Vec2;

.field m_front:Z

.field final m_lowerLimit:Lorg/jbox2d/common/Vec2;

.field final m_normal:Lorg/jbox2d/common/Vec2;

.field final m_normal0:Lorg/jbox2d/common/Vec2;

.field final m_normal1:Lorg/jbox2d/common/Vec2;

.field final m_normal2:Lorg/jbox2d/common/Vec2;

.field final m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

.field m_radius:F

.field m_type1:Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

.field m_type2:Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

.field final m_upperLimit:Lorg/jbox2d/common/Vec2;

.field m_v0:Lorg/jbox2d/common/Vec2;

.field m_v1:Lorg/jbox2d/common/Vec2;

.field m_v2:Lorg/jbox2d/common/Vec2;

.field m_v3:Lorg/jbox2d/common/Vec2;

.field final m_xf:Lorg/jbox2d/common/Transform;

.field private final n:Lorg/jbox2d/common/Vec2;

.field private final perp:Lorg/jbox2d/common/Vec2;

.field private final polygonAxis:Lorg/jbox2d/collision/Collision$EPAxis;

.field private final rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

.field private final temp:Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1094
    new-instance v1, Lorg/jbox2d/collision/Collision$TempPolygon;

    invoke-direct {v1}, Lorg/jbox2d/collision/Collision$TempPolygon;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    .line 1096
    new-instance v1, Lorg/jbox2d/common/Transform;

    invoke-direct {v1}, Lorg/jbox2d/common/Transform;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_xf:Lorg/jbox2d/common/Transform;

    .line 1097
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_centroidB:Lorg/jbox2d/common/Vec2;

    .line 1098
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v0:Lorg/jbox2d/common/Vec2;

    .line 1099
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v1:Lorg/jbox2d/common/Vec2;

    .line 1100
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v2:Lorg/jbox2d/common/Vec2;

    .line 1101
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v3:Lorg/jbox2d/common/Vec2;

    .line 1102
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal0:Lorg/jbox2d/common/Vec2;

    .line 1103
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    .line 1104
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal2:Lorg/jbox2d/common/Vec2;

    .line 1105
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    .line 1109
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    .line 1110
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    .line 1122
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->edge1:Lorg/jbox2d/common/Vec2;

    .line 1123
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->temp:Lorg/jbox2d/common/Vec2;

    .line 1124
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->edge0:Lorg/jbox2d/common/Vec2;

    .line 1125
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->edge2:Lorg/jbox2d/common/Vec2;

    .line 1126
    new-array v1, v3, [Lorg/jbox2d/collision/Collision$ClipVertex;

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->ie:[Lorg/jbox2d/collision/Collision$ClipVertex;

    .line 1127
    new-array v1, v3, [Lorg/jbox2d/collision/Collision$ClipVertex;

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->clipPoints1:[Lorg/jbox2d/collision/Collision$ClipVertex;

    .line 1128
    new-array v1, v3, [Lorg/jbox2d/collision/Collision$ClipVertex;

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    .line 1129
    new-instance v1, Lorg/jbox2d/collision/Collision$ReferenceFace;

    invoke-direct {v1}, Lorg/jbox2d/collision/Collision$ReferenceFace;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    .line 1130
    new-instance v1, Lorg/jbox2d/collision/Collision$EPAxis;

    invoke-direct {v1}, Lorg/jbox2d/collision/Collision$EPAxis;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->edgeAxis:Lorg/jbox2d/collision/Collision$EPAxis;

    .line 1131
    new-instance v1, Lorg/jbox2d/collision/Collision$EPAxis;

    invoke-direct {v1}, Lorg/jbox2d/collision/Collision$EPAxis;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->polygonAxis:Lorg/jbox2d/collision/Collision$EPAxis;

    .line 1519
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->perp:Lorg/jbox2d/common/Vec2;

    .line 1520
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->n:Lorg/jbox2d/common/Vec2;

    .line 1115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_ab
    if-ge v0, v3, :cond_cb

    .line 1116
    iget-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->ie:[Lorg/jbox2d/collision/Collision$ClipVertex;

    new-instance v2, Lorg/jbox2d/collision/Collision$ClipVertex;

    invoke-direct {v2}, Lorg/jbox2d/collision/Collision$ClipVertex;-><init>()V

    aput-object v2, v1, v0

    .line 1117
    iget-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->clipPoints1:[Lorg/jbox2d/collision/Collision$ClipVertex;

    new-instance v2, Lorg/jbox2d/collision/Collision$ClipVertex;

    invoke-direct {v2}, Lorg/jbox2d/collision/Collision$ClipVertex;-><init>()V

    aput-object v2, v1, v0

    .line 1118
    iget-object v1, p0, Lorg/jbox2d/collision/Collision$EPCollider;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    new-instance v2, Lorg/jbox2d/collision/Collision$ClipVertex;

    invoke-direct {v2}, Lorg/jbox2d/collision/Collision$ClipVertex;-><init>()V

    aput-object v2, v1, v0

    .line 1115
    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    .line 1120
    :cond_cb
    return-void
.end method


# virtual methods
.method public collide(Lorg/jbox2d/collision/Manifold;Lorg/jbox2d/collision/shapes/EdgeShape;Lorg/jbox2d/common/Transform;Lorg/jbox2d/collision/shapes/PolygonShape;Lorg/jbox2d/common/Transform;)V
    .registers 36
    .param p1, "manifold"    # Lorg/jbox2d/collision/Manifold;
    .param p2, "edgeA"    # Lorg/jbox2d/collision/shapes/EdgeShape;
    .param p3, "xfA"    # Lorg/jbox2d/common/Transform;
    .param p4, "polygonB"    # Lorg/jbox2d/collision/shapes/PolygonShape;
    .param p5, "xfB"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_xf:Lorg/jbox2d/common/Transform;

    move-object/from16 v25, v0

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Transform;->mulTransToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_xf:Lorg/jbox2d/common/Transform;

    move-object/from16 v25, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_centroid:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_centroidB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 1139
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/collision/Collision$EPCollider;->m_v0:Lorg/jbox2d/common/Vec2;

    .line 1140
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/collision/Collision$EPCollider;->m_v1:Lorg/jbox2d/common/Vec2;

    .line 1141
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/collision/Collision$EPCollider;->m_v2:Lorg/jbox2d/common/Vec2;

    .line 1142
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex3:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/collision/Collision$EPCollider;->m_v3:Lorg/jbox2d/common/Vec2;

    .line 1144
    move-object/from16 v0, p2

    iget-boolean v8, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_hasVertex0:Z

    .line 1145
    .local v8, "hasVertex0":Z
    move-object/from16 v0, p2

    iget-boolean v9, v0, Lorg/jbox2d/collision/shapes/EdgeShape;->m_hasVertex3:Z

    .line 1147
    .local v9, "hasVertex3":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edge1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edge1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edge1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edge1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_centroidB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v19

    .line 1151
    .local v19, "offset1":F
    const/16 v18, 0x0

    .local v18, "offset0":F
    const/16 v20, 0x0

    .line 1152
    .local v20, "offset2":F
    const/4 v5, 0x0

    .local v5, "convex1":Z
    const/4 v6, 0x0

    .line 1155
    .local v6, "convex2":Z
    if-eqz v8, :cond_153

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edge0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edge0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edge0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edge0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edge0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edge1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v25

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_2f6

    const/4 v5, 0x1

    .line 1160
    :goto_12f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_centroidB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v18

    .line 1164
    :cond_153
    if-eqz v9, :cond_1d8

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edge2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v3:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edge2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edge2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edge2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edge1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edge2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v25

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_2f9

    const/4 v6, 0x1

    .line 1169
    :goto_1b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_centroidB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v20

    .line 1173
    :cond_1d8
    if-eqz v8, :cond_7ec

    if-eqz v9, :cond_7ec

    .line 1174
    if-eqz v5, :cond_3b0

    if-eqz v6, :cond_3b0

    .line 1175
    const/16 v25, 0x0

    cmpl-float v25, v18, v25

    if-gez v25, :cond_1f2

    const/16 v25, 0x0

    cmpl-float v25, v19, v25

    if-gez v25, :cond_1f2

    const/16 v25, 0x0

    cmpl-float v25, v20, v25

    if-ltz v25, :cond_2fc

    :cond_1f2
    const/16 v25, 0x1

    :goto_1f4
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    .line 1176
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    move/from16 v25, v0

    if-eqz v25, :cond_300

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1335
    :goto_292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    move-object/from16 v25, v0

    move-object/from16 v0, p4

    iget v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/collision/Collision$TempPolygon;->count:I

    .line 1336
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2a5
    move-object/from16 v0, p4

    iget v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_ed8

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_xf:Lorg/jbox2d/common/Transform;

    move-object/from16 v25, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$TempPolygon;->vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    aget-object v27, v27, v10

    invoke-static/range {v25 .. v27}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_xf:Lorg/jbox2d/common/Transform;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v25, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$TempPolygon;->normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    aget-object v27, v27, v10

    invoke-static/range {v25 .. v27}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 1336
    add-int/lit8 v10, v10, 0x1

    goto :goto_2a5

    .line 1159
    .end local v10    # "i":I
    :cond_2f6
    const/4 v5, 0x0

    goto/16 :goto_12f

    .line 1168
    :cond_2f9
    const/4 v6, 0x0

    goto/16 :goto_1b4

    .line 1175
    :cond_2fc
    const/16 v25, 0x0

    goto/16 :goto_1f4

    .line 1184
    :cond_300
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1191
    :cond_3b0
    if-eqz v5, :cond_51a

    .line 1192
    const/16 v25, 0x0

    cmpl-float v25, v18, v25

    if-gez v25, :cond_3c4

    const/16 v25, 0x0

    cmpl-float v25, v19, v25

    if-ltz v25, :cond_466

    const/16 v25, 0x0

    cmpl-float v25, v20, v25

    if-ltz v25, :cond_466

    :cond_3c4
    const/16 v25, 0x1

    :goto_3c6
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    .line 1193
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    move/from16 v25, v0

    if-eqz v25, :cond_46a

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1192
    :cond_466
    const/16 v25, 0x0

    goto/16 :goto_3c6

    .line 1201
    :cond_46a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1208
    :cond_51a
    if-eqz v6, :cond_684

    .line 1209
    const/16 v25, 0x0

    cmpl-float v25, v20, v25

    if-gez v25, :cond_52e

    const/16 v25, 0x0

    cmpl-float v25, v18, v25

    if-ltz v25, :cond_5d0

    const/16 v25, 0x0

    cmpl-float v25, v19, v25

    if-ltz v25, :cond_5d0

    :cond_52e
    const/16 v25, 0x1

    :goto_530
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    .line 1210
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5d4

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1209
    :cond_5d0
    const/16 v25, 0x0

    goto/16 :goto_530

    .line 1218
    :cond_5d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1226
    :cond_684
    const/16 v25, 0x0

    cmpl-float v25, v18, v25

    if-ltz v25, :cond_738

    const/16 v25, 0x0

    cmpl-float v25, v19, v25

    if-ltz v25, :cond_738

    const/16 v25, 0x0

    cmpl-float v25, v20, v25

    if-ltz v25, :cond_738

    const/16 v25, 0x1

    :goto_698
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    .line 1227
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    move/from16 v25, v0

    if-eqz v25, :cond_73c

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1226
    :cond_738
    const/16 v25, 0x0

    goto/16 :goto_698

    .line 1235
    :cond_73c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1243
    :cond_7ec
    if-eqz v8, :cond_ab4

    .line 1244
    if-eqz v5, :cond_952

    .line 1245
    const/16 v25, 0x0

    cmpl-float v25, v18, v25

    if-gez v25, :cond_7fc

    const/16 v25, 0x0

    cmpl-float v25, v19, v25

    if-ltz v25, :cond_8a8

    :cond_7fc
    const/16 v25, 0x1

    :goto_7fe
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    .line 1246
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8ac

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1245
    :cond_8a8
    const/16 v25, 0x0

    goto/16 :goto_7fe

    .line 1254
    :cond_8ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1262
    :cond_952
    const/16 v25, 0x0

    cmpl-float v25, v18, v25

    if-ltz v25, :cond_a0a

    const/16 v25, 0x0

    cmpl-float v25, v19, v25

    if-ltz v25, :cond_a0a

    const/16 v25, 0x1

    :goto_960
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    .line 1263
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    move/from16 v25, v0

    if-eqz v25, :cond_a0e

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1262
    :cond_a0a
    const/16 v25, 0x0

    goto/16 :goto_960

    .line 1271
    :cond_a0e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal0:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1279
    :cond_ab4
    if-eqz v9, :cond_d7c

    .line 1280
    if-eqz v6, :cond_c1a

    .line 1281
    const/16 v25, 0x0

    cmpl-float v25, v19, v25

    if-gez v25, :cond_ac4

    const/16 v25, 0x0

    cmpl-float v25, v20, v25

    if-ltz v25, :cond_b70

    :cond_ac4
    const/16 v25, 0x1

    :goto_ac6
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    .line 1282
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b74

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1281
    :cond_b70
    const/16 v25, 0x0

    goto/16 :goto_ac6

    .line 1290
    :cond_b74
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1298
    :cond_c1a
    const/16 v25, 0x0

    cmpl-float v25, v19, v25

    if-ltz v25, :cond_cd2

    const/16 v25, 0x0

    cmpl-float v25, v20, v25

    if-ltz v25, :cond_cd2

    const/16 v25, 0x1

    :goto_c28
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    .line 1299
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    move/from16 v25, v0

    if-eqz v25, :cond_cd6

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1298
    :cond_cd2
    const/16 v25, 0x0

    goto/16 :goto_c28

    .line 1307
    :cond_cd6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1316
    :cond_d7c
    const/16 v25, 0x0

    cmpl-float v25, v19, v25

    if-ltz v25, :cond_e38

    const/16 v25, 0x1

    :goto_d84
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    .line 1317
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    move/from16 v25, v0

    if-eqz v25, :cond_e3c

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1316
    :cond_e38
    const/16 v25, 0x0

    goto/16 :goto_d84

    .line 1325
    :cond_e3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_292

    .line 1341
    .restart local v10    # "i":I
    :cond_ed8
    const v25, 0x3ca3d70a    # 0.02f

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/collision/Collision$EPCollider;->m_radius:F

    .line 1343
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edgeAxis:Lorg/jbox2d/collision/Collision$EPAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jbox2d/collision/Collision$EPCollider;->computeEdgeSeparation(Lorg/jbox2d/collision/Collision$EPAxis;)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edgeAxis:Lorg/jbox2d/collision/Collision$EPAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPAxis;->type:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/collision/Collision$EPAxis$Type;->UNKNOWN:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_f0b

    .line 1498
    :cond_f0a
    :goto_f0a
    return-void

    .line 1352
    :cond_f0b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edgeAxis:Lorg/jbox2d/collision/Collision$EPAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/collision/Collision$EPAxis;->separation:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_radius:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_f0a

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->polygonAxis:Lorg/jbox2d/collision/Collision$EPAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jbox2d/collision/Collision$EPCollider;->computePolygonSeparation(Lorg/jbox2d/collision/Collision$EPAxis;)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->polygonAxis:Lorg/jbox2d/collision/Collision$EPAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPAxis;->type:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/collision/Collision$EPAxis$Type;->UNKNOWN:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_f58

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->polygonAxis:Lorg/jbox2d/collision/Collision$EPAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/collision/Collision$EPAxis;->separation:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_radius:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_f0a

    .line 1362
    :cond_f58
    const v16, 0x3f7ae148    # 0.98f

    .line 1363
    .local v16, "k_relativeTol":F
    const v15, 0x3a83126f    # 0.001f

    .line 1366
    .local v15, "k_absoluteTol":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->polygonAxis:Lorg/jbox2d/collision/Collision$EPAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPAxis;->type:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/collision/Collision$EPAxis$Type;->UNKNOWN:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_ff0

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edgeAxis:Lorg/jbox2d/collision/Collision$EPAxis;

    move-object/from16 v22, v0

    .line 1374
    .local v22, "primaryAxis":Lorg/jbox2d/collision/Collision$EPAxis;
    :goto_f78
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->ie:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v13, v25, v26

    .line 1375
    .local v13, "ie0":Lorg/jbox2d/collision/Collision$ClipVertex;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->ie:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v14, v25, v26

    .line 1377
    .local v14, "ie1":Lorg/jbox2d/collision/Collision$ClipVertex;
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPAxis;->type:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/collision/Collision$EPAxis$Type;->EDGE_A:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_13a2

    .line 1378
    sget-object v25, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_A:Lorg/jbox2d/collision/Manifold$ManifoldType;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    .line 1381
    const/4 v3, 0x0

    .line 1382
    .local v3, "bestIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$TempPolygon;->normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-static/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v4

    .line 1383
    .local v4, "bestValue":F
    const/4 v10, 0x1

    :goto_fbe
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/collision/Collision$TempPolygon;->count:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_1026

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$TempPolygon;->normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    invoke-static/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v24

    .line 1385
    .local v24, "value":F
    cmpg-float v25, v24, v4

    if-gez v25, :cond_fed

    .line 1386
    move/from16 v4, v24

    .line 1387
    move v3, v10

    .line 1383
    :cond_fed
    add-int/lit8 v10, v10, 0x1

    goto :goto_fbe

    .line 1368
    .end local v3    # "bestIndex":I
    .end local v4    # "bestValue":F
    .end local v13    # "ie0":Lorg/jbox2d/collision/Collision$ClipVertex;
    .end local v14    # "ie1":Lorg/jbox2d/collision/Collision$ClipVertex;
    .end local v22    # "primaryAxis":Lorg/jbox2d/collision/Collision$EPAxis;
    .end local v24    # "value":F
    :cond_ff0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->polygonAxis:Lorg/jbox2d/collision/Collision$EPAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/collision/Collision$EPAxis;->separation:F

    move/from16 v25, v0

    const v26, 0x3f7ae148    # 0.98f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edgeAxis:Lorg/jbox2d/collision/Collision$EPAxis;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/collision/Collision$EPAxis;->separation:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    const v27, 0x3a83126f    # 0.001f

    add-float v26, v26, v27

    cmpl-float v25, v25, v26

    if-lez v25, :cond_101e

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->polygonAxis:Lorg/jbox2d/collision/Collision$EPAxis;

    move-object/from16 v22, v0

    .restart local v22    # "primaryAxis":Lorg/jbox2d/collision/Collision$EPAxis;
    goto/16 :goto_f78

    .line 1371
    .end local v22    # "primaryAxis":Lorg/jbox2d/collision/Collision$EPAxis;
    :cond_101e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->edgeAxis:Lorg/jbox2d/collision/Collision$EPAxis;

    move-object/from16 v22, v0

    .restart local v22    # "primaryAxis":Lorg/jbox2d/collision/Collision$EPAxis;
    goto/16 :goto_f78

    .line 1391
    .restart local v3    # "bestIndex":I
    .restart local v4    # "bestValue":F
    .restart local v13    # "ie0":Lorg/jbox2d/collision/Collision$ClipVertex;
    .restart local v14    # "ie1":Lorg/jbox2d/collision/Collision$ClipVertex;
    :cond_1026
    move v11, v3

    .line 1392
    .local v11, "i1":I
    add-int/lit8 v25, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/collision/Collision$TempPolygon;->count:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_133e

    add-int/lit8 v12, v11, 0x1

    .line 1394
    .local v12, "i2":I
    :goto_103d
    iget-object v0, v13, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$TempPolygon;->vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    aget-object v26, v26, v11

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1395
    iget-object v0, v13, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexA:B

    .line 1396
    iget-object v0, v13, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    int-to-byte v0, v11

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexB:B

    .line 1397
    iget-object v0, v13, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/collision/ContactID$Type;->FACE:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual/range {v26 .. v26}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v26

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeA:B

    .line 1398
    iget-object v0, v13, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/collision/ContactID$Type;->VERTEX:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual/range {v26 .. v26}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v26

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeB:B

    .line 1400
    iget-object v0, v14, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$TempPolygon;->vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1401
    iget-object v0, v14, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexA:B

    .line 1402
    iget-object v0, v14, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    int-to-byte v0, v12

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexB:B

    .line 1403
    iget-object v0, v14, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/collision/ContactID$Type;->FACE:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual/range {v26 .. v26}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v26

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeA:B

    .line 1404
    iget-object v0, v14, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/collision/ContactID$Type;->VERTEX:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual/range {v26 .. v26}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v26

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeB:B

    .line 1406
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1341

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/collision/Collision$ReferenceFace;->i1:I

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/collision/Collision$ReferenceFace;->i2:I

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->v2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1441
    .end local v3    # "bestIndex":I
    .end local v4    # "bestValue":F
    .end local v11    # "i1":I
    .end local v12    # "i2":I
    :goto_1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->sideNormal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->sideNormal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->sideNormal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->sideNormal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/collision/Collision$ReferenceFace;->sideOffset1:F

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->sideNormal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->v2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/collision/Collision$ReferenceFace;->sideOffset2:F

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->clipPoints1:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->ie:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->sideNormal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->sideOffset1:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->i1:I

    move/from16 v29, v0

    invoke-static/range {v25 .. v29}, Lorg/jbox2d/collision/Collision;->clipSegmentToLine([Lorg/jbox2d/collision/Collision$ClipVertex;[Lorg/jbox2d/collision/Collision$ClipVertex;Lorg/jbox2d/common/Vec2;FI)I

    move-result v17

    .line 1452
    .local v17, "np":I
    const/16 v25, 0x2

    move/from16 v0, v17

    move/from16 v1, v25

    if-lt v0, v1, :cond_f0a

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->clipPoints1:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->sideNormal2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->sideOffset2:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->i2:I

    move/from16 v29, v0

    invoke-static/range {v25 .. v29}, Lorg/jbox2d/collision/Collision;->clipSegmentToLine([Lorg/jbox2d/collision/Collision$ClipVertex;[Lorg/jbox2d/collision/Collision$ClipVertex;Lorg/jbox2d/common/Vec2;FI)I

    move-result v17

    .line 1459
    const/16 v25, 0x2

    move/from16 v0, v17

    move/from16 v1, v25

    if-lt v0, v1, :cond_f0a

    .line 1464
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPAxis;->type:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/collision/Collision$EPAxis$Type;->EDGE_A:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1527

    .line 1465
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1466
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1472
    :goto_12a7
    const/16 v21, 0x0

    .line 1473
    .local v21, "pointCount":I
    const/4 v10, 0x0

    :goto_12aa
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ge v10, v0, :cond_15f2

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v27, v0

    aget-object v27, v27, v10

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v23

    .line 1478
    .local v23, "separation":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_radius:F

    move/from16 v25, v0

    cmpg-float v25, v23, v25

    if-gtz v25, :cond_133a

    .line 1479
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->points:[Lorg/jbox2d/collision/ManifoldPoint;

    move-object/from16 v25, v0

    aget-object v7, v25, v21

    .line 1481
    .local v7, "cp":Lorg/jbox2d/collision/ManifoldPoint;
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPAxis;->type:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/collision/Collision$EPAxis$Type;->EDGE_A:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1563

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_xf:Lorg/jbox2d/common/Transform;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    iget-object v0, v7, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lorg/jbox2d/common/Transform;->mulTransToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 1484
    iget-object v0, v7, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/collision/ContactID;->set(Lorg/jbox2d/collision/ContactID;)V

    .line 1493
    :goto_1338
    add-int/lit8 v21, v21, 0x1

    .line 1473
    .end local v7    # "cp":Lorg/jbox2d/collision/ManifoldPoint;
    :cond_133a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_12aa

    .line 1392
    .end local v17    # "np":I
    .end local v21    # "pointCount":I
    .end local v23    # "separation":F
    .restart local v3    # "bestIndex":I
    .restart local v4    # "bestValue":F
    .restart local v11    # "i1":I
    :cond_133e
    const/4 v12, 0x0

    goto/16 :goto_103d

    .line 1413
    .restart local v12    # "i2":I
    :cond_1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/collision/Collision$ReferenceFace;->i1:I

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/collision/Collision$ReferenceFace;->i2:I

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->v2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    goto/16 :goto_1150

    .line 1420
    .end local v3    # "bestIndex":I
    .end local v4    # "bestValue":F
    .end local v11    # "i1":I
    .end local v12    # "i2":I
    :cond_13a2
    sget-object v25, Lorg/jbox2d/collision/Manifold$ManifoldType;->FACE_B:Lorg/jbox2d/collision/Manifold$ManifoldType;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jbox2d/collision/Manifold;->type:Lorg/jbox2d/collision/Manifold$ManifoldType;

    .line 1422
    iget-object v0, v13, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1423
    iget-object v0, v13, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexA:B

    .line 1424
    iget-object v0, v13, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/collision/Collision$EPAxis;->index:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexB:B

    .line 1425
    iget-object v0, v13, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/collision/ContactID$Type;->VERTEX:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual/range {v26 .. v26}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v26

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeA:B

    .line 1426
    iget-object v0, v13, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/collision/ContactID$Type;->FACE:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual/range {v26 .. v26}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v26

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeB:B

    .line 1428
    iget-object v0, v14, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1429
    iget-object v0, v14, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexA:B

    .line 1430
    iget-object v0, v14, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/collision/Collision$EPAxis;->index:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexB:B

    .line 1431
    iget-object v0, v14, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/collision/ContactID$Type;->VERTEX:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual/range {v26 .. v26}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v26

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeA:B

    .line 1432
    iget-object v0, v14, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    sget-object v26, Lorg/jbox2d/collision/ContactID$Type;->FACE:Lorg/jbox2d/collision/ContactID$Type;

    invoke-virtual/range {v26 .. v26}, Lorg/jbox2d/collision/ContactID$Type;->ordinal()I

    move-result v26

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeB:B

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jbox2d/collision/Collision$EPAxis;->index:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/jbox2d/collision/Collision$ReferenceFace;->i1:I

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->i1:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/collision/Collision$TempPolygon;->count:I

    move/from16 v27, v0

    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_1523

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->i1:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    :goto_14a0
    move/from16 v0, v25

    move-object/from16 v1, v26

    iput v0, v1, Lorg/jbox2d/collision/Collision$ReferenceFace;->i2:I

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->v1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$TempPolygon;->vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->i1:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->v2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$TempPolygon;->vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->i2:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$TempPolygon;->normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->i1:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    goto/16 :goto_1150

    .line 1435
    :cond_1523
    const/16 v25, 0x0

    goto/16 :goto_14a0

    .line 1468
    .restart local v17    # "np":I
    :cond_1527
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localNormal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_normals:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->i1:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1469
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/Manifold;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->rf:Lorg/jbox2d/collision/Collision$ReferenceFace;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/collision/Collision$ReferenceFace;->i1:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    goto/16 :goto_12a7

    .line 1486
    .restart local v7    # "cp":Lorg/jbox2d/collision/ManifoldPoint;
    .restart local v21    # "pointCount":I
    .restart local v23    # "separation":F
    :cond_1563
    iget-object v0, v7, Lorg/jbox2d/collision/ManifoldPoint;->localPoint:Lorg/jbox2d/common/Vec2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ClipVertex;->v:Lorg/jbox2d/common/Vec2;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 1487
    iget-object v0, v7, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-byte v0, v0, Lorg/jbox2d/collision/ContactID;->typeB:B

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeA:B

    .line 1488
    iget-object v0, v7, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-byte v0, v0, Lorg/jbox2d/collision/ContactID;->typeA:B

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->typeB:B

    .line 1489
    iget-object v0, v7, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-byte v0, v0, Lorg/jbox2d/collision/ContactID;->indexB:B

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexA:B

    .line 1490
    iget-object v0, v7, Lorg/jbox2d/collision/ManifoldPoint;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$EPCollider;->clipPoints2:[Lorg/jbox2d/collision/Collision$ClipVertex;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jbox2d/collision/Collision$ClipVertex;->id:Lorg/jbox2d/collision/ContactID;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-byte v0, v0, Lorg/jbox2d/collision/ContactID;->indexA:B

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lorg/jbox2d/collision/ContactID;->indexB:B

    goto/16 :goto_1338

    .line 1497
    .end local v7    # "cp":Lorg/jbox2d/collision/ManifoldPoint;
    .end local v23    # "separation":F
    :cond_15f2
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/Manifold;->pointCount:I

    goto/16 :goto_f0a
.end method

.method public computeEdgeSeparation(Lorg/jbox2d/collision/Collision$EPAxis;)V
    .registers 11
    .param p1, "axis"    # Lorg/jbox2d/collision/Collision$EPAxis;

    .prologue
    .line 1502
    sget-object v7, Lorg/jbox2d/collision/Collision$EPAxis$Type;->EDGE_A:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    iput-object v7, p1, Lorg/jbox2d/collision/Collision$EPAxis;->type:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    .line 1503
    iget-boolean v7, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_front:Z

    if-eqz v7, :cond_46

    const/4 v7, 0x0

    :goto_9
    iput v7, p1, Lorg/jbox2d/collision/Collision$EPAxis;->index:I

    .line 1504
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    iput v7, p1, Lorg/jbox2d/collision/Collision$EPAxis;->separation:F

    .line 1505
    iget-object v7, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    iget v1, v7, Lorg/jbox2d/common/Vec2;->x:F

    .line 1506
    .local v1, "nx":F
    iget-object v7, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    iget v2, v7, Lorg/jbox2d/common/Vec2;->y:F

    .line 1508
    .local v2, "ny":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget-object v7, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    iget v7, v7, Lorg/jbox2d/collision/Collision$TempPolygon;->count:I

    if-ge v0, v7, :cond_48

    .line 1509
    iget-object v7, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    iget-object v7, v7, Lorg/jbox2d/collision/Collision$TempPolygon;->vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v6, v7, v0

    .line 1510
    .local v6, "v":Lorg/jbox2d/common/Vec2;
    iget v7, v6, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v8, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v1:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->x:F

    sub-float v4, v7, v8

    .line 1511
    .local v4, "tempx":F
    iget v7, v6, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v8, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v1:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->y:F

    sub-float v5, v7, v8

    .line 1512
    .local v5, "tempy":F
    mul-float v7, v1, v4

    mul-float v8, v2, v5

    add-float v3, v7, v8

    .line 1513
    .local v3, "s":F
    iget v7, p1, Lorg/jbox2d/collision/Collision$EPAxis;->separation:F

    cmpg-float v7, v3, v7

    if-gez v7, :cond_43

    .line 1514
    iput v3, p1, Lorg/jbox2d/collision/Collision$EPAxis;->separation:F

    .line 1508
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1503
    .end local v0    # "i":I
    .end local v1    # "nx":F
    .end local v2    # "ny":F
    .end local v3    # "s":F
    .end local v4    # "tempx":F
    .end local v5    # "tempy":F
    .end local v6    # "v":Lorg/jbox2d/common/Vec2;
    :cond_46
    const/4 v7, 0x1

    goto :goto_9

    .line 1517
    .restart local v0    # "i":I
    .restart local v1    # "nx":F
    .restart local v2    # "ny":F
    :cond_48
    return-void
.end method

.method public computePolygonSeparation(Lorg/jbox2d/collision/Collision$EPAxis;)V
    .registers 14
    .param p1, "axis"    # Lorg/jbox2d/collision/Collision$EPAxis;

    .prologue
    const v11, -0x42f105ca

    .line 1523
    sget-object v8, Lorg/jbox2d/collision/Collision$EPAxis$Type;->UNKNOWN:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    iput-object v8, p1, Lorg/jbox2d/collision/Collision$EPAxis;->type:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    .line 1524
    const/4 v8, -0x1

    iput v8, p1, Lorg/jbox2d/collision/Collision$EPAxis;->index:I

    .line 1525
    const v8, -0x800001

    iput v8, p1, Lorg/jbox2d/collision/Collision$EPAxis;->separation:F

    .line 1527
    iget-object v8, p0, Lorg/jbox2d/collision/Collision$EPCollider;->perp:Lorg/jbox2d/common/Vec2;

    iget-object v9, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->y:F

    neg-float v9, v9

    iput v9, v8, Lorg/jbox2d/common/Vec2;->x:F

    .line 1528
    iget-object v8, p0, Lorg/jbox2d/collision/Collision$EPCollider;->perp:Lorg/jbox2d/common/Vec2;

    iget-object v9, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->x:F

    iput v9, v8, Lorg/jbox2d/common/Vec2;->y:F

    .line 1530
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    iget-object v8, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    iget v8, v8, Lorg/jbox2d/collision/Collision$TempPolygon;->count:I

    if-ge v0, v8, :cond_8b

    .line 1531
    iget-object v8, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    iget-object v8, v8, Lorg/jbox2d/collision/Collision$TempPolygon;->normals:[Lorg/jbox2d/common/Vec2;

    aget-object v1, v8, v0

    .line 1532
    .local v1, "normalB":Lorg/jbox2d/common/Vec2;
    iget-object v8, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_polygonB:Lorg/jbox2d/collision/Collision$TempPolygon;

    iget-object v8, v8, Lorg/jbox2d/collision/Collision$TempPolygon;->vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v7, v8, v0

    .line 1533
    .local v7, "vB":Lorg/jbox2d/common/Vec2;
    iget-object v8, p0, Lorg/jbox2d/collision/Collision$EPCollider;->n:Lorg/jbox2d/common/Vec2;

    iget v9, v1, Lorg/jbox2d/common/Vec2;->x:F

    neg-float v9, v9

    iput v9, v8, Lorg/jbox2d/common/Vec2;->x:F

    .line 1534
    iget-object v8, p0, Lorg/jbox2d/collision/Collision$EPCollider;->n:Lorg/jbox2d/common/Vec2;

    iget v9, v1, Lorg/jbox2d/common/Vec2;->y:F

    neg-float v9, v9

    iput v9, v8, Lorg/jbox2d/common/Vec2;->y:F

    .line 1538
    iget v8, v7, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v9, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v1:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->x:F

    sub-float v5, v8, v9

    .line 1539
    .local v5, "tempx":F
    iget v8, v7, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v9, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v1:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->y:F

    sub-float v6, v8, v9

    .line 1540
    .local v6, "tempy":F
    iget-object v8, p0, Lorg/jbox2d/collision/Collision$EPCollider;->n:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v8, v5

    iget-object v9, p0, Lorg/jbox2d/collision/Collision$EPCollider;->n:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v9, v6

    add-float v3, v8, v9

    .line 1541
    .local v3, "s1":F
    iget v8, v7, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v9, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v2:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->x:F

    sub-float v5, v8, v9

    .line 1542
    iget v8, v7, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v9, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_v2:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->y:F

    sub-float v6, v8, v9

    .line 1543
    iget-object v8, p0, Lorg/jbox2d/collision/Collision$EPCollider;->n:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v8, v5

    iget-object v9, p0, Lorg/jbox2d/collision/Collision$EPCollider;->n:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v9, v6

    add-float v4, v8, v9

    .line 1544
    .local v4, "s2":F
    invoke-static {v3, v4}, Lorg/jbox2d/common/MathUtils;->min(FF)F

    move-result v2

    .line 1546
    .local v2, "s":F
    iget v8, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_radius:F

    cmpl-float v8, v2, v8

    if-lez v8, :cond_8c

    .line 1548
    sget-object v8, Lorg/jbox2d/collision/Collision$EPAxis$Type;->EDGE_B:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    iput-object v8, p1, Lorg/jbox2d/collision/Collision$EPAxis;->type:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    .line 1549
    iput v0, p1, Lorg/jbox2d/collision/Collision$EPAxis;->index:I

    .line 1550
    iput v2, p1, Lorg/jbox2d/collision/Collision$EPAxis;->separation:F

    .line 1571
    .end local v1    # "normalB":Lorg/jbox2d/common/Vec2;
    .end local v2    # "s":F
    .end local v3    # "s1":F
    .end local v4    # "s2":F
    .end local v5    # "tempx":F
    .end local v6    # "tempy":F
    .end local v7    # "vB":Lorg/jbox2d/common/Vec2;
    :cond_8b
    return-void

    .line 1555
    .restart local v1    # "normalB":Lorg/jbox2d/common/Vec2;
    .restart local v2    # "s":F
    .restart local v3    # "s1":F
    .restart local v4    # "s2":F
    .restart local v5    # "tempx":F
    .restart local v6    # "tempy":F
    .restart local v7    # "vB":Lorg/jbox2d/common/Vec2;
    :cond_8c
    iget-object v8, p0, Lorg/jbox2d/collision/Collision$EPCollider;->n:Lorg/jbox2d/common/Vec2;

    iget v8, v8, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v9, p0, Lorg/jbox2d/collision/Collision$EPCollider;->perp:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lorg/jbox2d/collision/Collision$EPCollider;->n:Lorg/jbox2d/common/Vec2;

    iget v9, v9, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v10, p0, Lorg/jbox2d/collision/Collision$EPCollider;->perp:Lorg/jbox2d/common/Vec2;

    iget v10, v10, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_c0

    .line 1556
    iget-object v8, p0, Lorg/jbox2d/collision/Collision$EPCollider;->temp:Lorg/jbox2d/common/Vec2;

    iget-object v9, p0, Lorg/jbox2d/collision/Collision$EPCollider;->n:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v8, v9}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    iget-object v9, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_upperLimit:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v8, v9}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    iget-object v9, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v8, v9}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v8

    cmpg-float v8, v8, v11

    if-gez v8, :cond_d8

    .line 1530
    :cond_bc
    :goto_bc
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_21

    .line 1560
    :cond_c0
    iget-object v8, p0, Lorg/jbox2d/collision/Collision$EPCollider;->temp:Lorg/jbox2d/common/Vec2;

    iget-object v9, p0, Lorg/jbox2d/collision/Collision$EPCollider;->n:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v8, v9}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    iget-object v9, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_lowerLimit:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v8, v9}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v8

    iget-object v9, p0, Lorg/jbox2d/collision/Collision$EPCollider;->m_normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v8, v9}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v8

    cmpg-float v8, v8, v11

    if-ltz v8, :cond_bc

    .line 1565
    :cond_d8
    iget v8, p1, Lorg/jbox2d/collision/Collision$EPAxis;->separation:F

    cmpl-float v8, v2, v8

    if-lez v8, :cond_bc

    .line 1566
    sget-object v8, Lorg/jbox2d/collision/Collision$EPAxis$Type;->EDGE_B:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    iput-object v8, p1, Lorg/jbox2d/collision/Collision$EPAxis;->type:Lorg/jbox2d/collision/Collision$EPAxis$Type;

    .line 1567
    iput v0, p1, Lorg/jbox2d/collision/Collision$EPAxis;->index:I

    .line 1568
    iput v2, p1, Lorg/jbox2d/collision/Collision$EPAxis;->separation:F

    goto :goto_bc
.end method

###### Class org.jbox2d.collision.Collision.EPCollider.VertexType (org.jbox2d.collision.Collision$EPCollider$VertexType)
.class final enum Lorg/jbox2d/collision/Collision$EPCollider$VertexType;
.super Ljava/lang/Enum;
.source "Collision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/Collision$EPCollider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VertexType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jbox2d/collision/Collision$EPCollider$VertexType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

.field public static final enum CONCAVE:Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

.field public static final enum CONVEX:Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

.field public static final enum ISOLATED:Lorg/jbox2d/collision/Collision$EPCollider$VertexType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1091
    new-instance v0, Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

    const-string v1, "ISOLATED"

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/collision/Collision$EPCollider$VertexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/Collision$EPCollider$VertexType;->ISOLATED:Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

    new-instance v0, Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

    const-string v1, "CONCAVE"

    invoke-direct {v0, v1, v3}, Lorg/jbox2d/collision/Collision$EPCollider$VertexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/Collision$EPCollider$VertexType;->CONCAVE:Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

    new-instance v0, Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

    const-string v1, "CONVEX"

    invoke-direct {v0, v1, v4}, Lorg/jbox2d/collision/Collision$EPCollider$VertexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/Collision$EPCollider$VertexType;->CONVEX:Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

    .line 1090
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

    sget-object v1, Lorg/jbox2d/collision/Collision$EPCollider$VertexType;->ISOLATED:Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jbox2d/collision/Collision$EPCollider$VertexType;->CONCAVE:Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jbox2d/collision/Collision$EPCollider$VertexType;->CONVEX:Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jbox2d/collision/Collision$EPCollider$VertexType;->$VALUES:[Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1090
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jbox2d/collision/Collision$EPCollider$VertexType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1090
    const-class v0, Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

    return-object v0
.end method

.method public static values()[Lorg/jbox2d/collision/Collision$EPCollider$VertexType;
    .registers 1

    .prologue
    .line 1090
    sget-object v0, Lorg/jbox2d/collision/Collision$EPCollider$VertexType;->$VALUES:[Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

    invoke-virtual {v0}, [Lorg/jbox2d/collision/Collision$EPCollider$VertexType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jbox2d/collision/Collision$EPCollider$VertexType;

    return-object v0
.end method

###### Class org.jbox2d.collision.Collision.EdgeResults (org.jbox2d.collision.Collision$EdgeResults)
.class Lorg/jbox2d/collision/Collision$EdgeResults;
.super Ljava/lang/Object;
.source "Collision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/Collision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EdgeResults"
.end annotation


# instance fields
.field public edgeIndex:I

.field public separation:F


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jbox2d/collision/Collision$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/jbox2d/collision/Collision$1;

    .prologue
    .line 988
    invoke-direct {p0}, Lorg/jbox2d/collision/Collision$EdgeResults;-><init>()V

    return-void
.end method

###### Class org.jbox2d.collision.Collision.PointState (org.jbox2d.collision.Collision$PointState)
.class public final enum Lorg/jbox2d/collision/Collision$PointState;
.super Ljava/lang/Enum;
.source "Collision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/Collision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PointState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jbox2d/collision/Collision$PointState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jbox2d/collision/Collision$PointState;

.field public static final enum ADD_STATE:Lorg/jbox2d/collision/Collision$PointState;

.field public static final enum NULL_STATE:Lorg/jbox2d/collision/Collision$PointState;

.field public static final enum PERSIST_STATE:Lorg/jbox2d/collision/Collision$PointState;

.field public static final enum REMOVE_STATE:Lorg/jbox2d/collision/Collision$PointState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1026
    new-instance v0, Lorg/jbox2d/collision/Collision$PointState;

    const-string v1, "NULL_STATE"

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/collision/Collision$PointState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/Collision$PointState;->NULL_STATE:Lorg/jbox2d/collision/Collision$PointState;

    .line 1030
    new-instance v0, Lorg/jbox2d/collision/Collision$PointState;

    const-string v1, "ADD_STATE"

    invoke-direct {v0, v1, v3}, Lorg/jbox2d/collision/Collision$PointState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/Collision$PointState;->ADD_STATE:Lorg/jbox2d/collision/Collision$PointState;

    .line 1034
    new-instance v0, Lorg/jbox2d/collision/Collision$PointState;

    const-string v1, "PERSIST_STATE"

    invoke-direct {v0, v1, v4}, Lorg/jbox2d/collision/Collision$PointState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/Collision$PointState;->PERSIST_STATE:Lorg/jbox2d/collision/Collision$PointState;

    .line 1038
    new-instance v0, Lorg/jbox2d/collision/Collision$PointState;

    const-string v1, "REMOVE_STATE"

    invoke-direct {v0, v1, v5}, Lorg/jbox2d/collision/Collision$PointState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/Collision$PointState;->REMOVE_STATE:Lorg/jbox2d/collision/Collision$PointState;

    .line 1022
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jbox2d/collision/Collision$PointState;

    sget-object v1, Lorg/jbox2d/collision/Collision$PointState;->NULL_STATE:Lorg/jbox2d/collision/Collision$PointState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jbox2d/collision/Collision$PointState;->ADD_STATE:Lorg/jbox2d/collision/Collision$PointState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jbox2d/collision/Collision$PointState;->PERSIST_STATE:Lorg/jbox2d/collision/Collision$PointState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jbox2d/collision/Collision$PointState;->REMOVE_STATE:Lorg/jbox2d/collision/Collision$PointState;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jbox2d/collision/Collision$PointState;->$VALUES:[Lorg/jbox2d/collision/Collision$PointState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1022
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jbox2d/collision/Collision$PointState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1022
    const-class v0, Lorg/jbox2d/collision/Collision$PointState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/collision/Collision$PointState;

    return-object v0
.end method

.method public static values()[Lorg/jbox2d/collision/Collision$PointState;
    .registers 1

    .prologue
    .line 1022
    sget-object v0, Lorg/jbox2d/collision/Collision$PointState;->$VALUES:[Lorg/jbox2d/collision/Collision$PointState;

    invoke-virtual {v0}, [Lorg/jbox2d/collision/Collision$PointState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jbox2d/collision/Collision$PointState;

    return-object v0
.end method

###### Class org.jbox2d.collision.Collision.ReferenceFace (org.jbox2d.collision.Collision$ReferenceFace)
.class Lorg/jbox2d/collision/Collision$ReferenceFace;
.super Ljava/lang/Object;
.source "Collision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/Collision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceFace"
.end annotation


# instance fields
.field i1:I

.field i2:I

.field final normal:Lorg/jbox2d/common/Vec2;

.field final sideNormal1:Lorg/jbox2d/common/Vec2;

.field final sideNormal2:Lorg/jbox2d/common/Vec2;

.field sideOffset1:F

.field sideOffset2:F

.field final v1:Lorg/jbox2d/common/Vec2;

.field final v2:Lorg/jbox2d/common/Vec2;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1075
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision$ReferenceFace;->v1:Lorg/jbox2d/common/Vec2;

    .line 1076
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision$ReferenceFace;->v2:Lorg/jbox2d/common/Vec2;

    .line 1077
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision$ReferenceFace;->normal:Lorg/jbox2d/common/Vec2;

    .line 1079
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision$ReferenceFace;->sideNormal1:Lorg/jbox2d/common/Vec2;

    .line 1082
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Collision$ReferenceFace;->sideNormal2:Lorg/jbox2d/common/Vec2;

    return-void
.end method

###### Class org.jbox2d.collision.Collision.TempPolygon (org.jbox2d.collision.Collision$TempPolygon)
.class Lorg/jbox2d/collision/Collision$TempPolygon;
.super Ljava/lang/Object;
.source "Collision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/Collision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TempPolygon"
.end annotation


# instance fields
.field count:I

.field final normals:[Lorg/jbox2d/common/Vec2;

.field final vertices:[Lorg/jbox2d/common/Vec2;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    new-array v1, v2, [Lorg/jbox2d/common/Vec2;

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$TempPolygon;->vertices:[Lorg/jbox2d/common/Vec2;

    .line 1059
    new-array v1, v2, [Lorg/jbox2d/common/Vec2;

    iput-object v1, p0, Lorg/jbox2d/collision/Collision$TempPolygon;->normals:[Lorg/jbox2d/common/Vec2;

    .line 1063
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v1, p0, Lorg/jbox2d/collision/Collision$TempPolygon;->vertices:[Lorg/jbox2d/common/Vec2;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 1064
    iget-object v1, p0, Lorg/jbox2d/collision/Collision$TempPolygon;->vertices:[Lorg/jbox2d/common/Vec2;

    new-instance v2, Lorg/jbox2d/common/Vec2;

    invoke-direct {v2}, Lorg/jbox2d/common/Vec2;-><init>()V

    aput-object v2, v1, v0

    .line 1065
    iget-object v1, p0, Lorg/jbox2d/collision/Collision$TempPolygon;->normals:[Lorg/jbox2d/common/Vec2;

    new-instance v2, Lorg/jbox2d/common/Vec2;

    invoke-direct {v2}, Lorg/jbox2d/common/Vec2;-><init>()V

    aput-object v2, v1, v0

    .line 1063
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1067
    :cond_28
    return-void
.end method
