###### Class org.jbox2d.collision.broadphase.BroadPhase (org.jbox2d.collision.broadphase.BroadPhase)
.class public Lorg/jbox2d/collision/broadphase/BroadPhase;
.super Ljava/lang/Object;
.source "BroadPhase.java"

# interfaces
.implements Lorg/jbox2d/callbacks/TreeCallback;


# static fields
.field public static final NULL_PROXY:I = -0x1


# instance fields
.field private m_moveBuffer:[I

.field private m_moveCapacity:I

.field private m_moveCount:I

.field private m_pairBuffer:[Lorg/jbox2d/collision/broadphase/Pair;

.field private m_pairCapacity:I

.field private m_pairCount:I

.field private m_proxyCount:I

.field private m_queryProxyId:I

.field private final m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;


# direct methods
.method public constructor <init>(Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;)V
    .registers 7
    .param p1, "strategy"    # Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v3, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_proxyCount:I

    .line 64
    iput v4, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCapacity:I

    .line 65
    iput v3, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCount:I

    .line 66
    iget v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCapacity:I

    new-array v1, v1, [Lorg/jbox2d/collision/broadphase/Pair;

    iput-object v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairBuffer:[Lorg/jbox2d/collision/broadphase/Pair;

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCapacity:I

    if-ge v0, v1, :cond_23

    .line 68
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairBuffer:[Lorg/jbox2d/collision/broadphase/Pair;

    new-instance v2, Lorg/jbox2d/collision/broadphase/Pair;

    invoke-direct {v2}, Lorg/jbox2d/collision/broadphase/Pair;-><init>()V

    aput-object v2, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 71
    :cond_23
    iput v4, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveCapacity:I

    .line 72
    iput v3, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveCount:I

    .line 73
    iget v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveCapacity:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveBuffer:[I

    .line 75
    iput-object p1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    .line 76
    const/4 v1, -0x1

    iput v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_queryProxyId:I

    .line 77
    return-void
.end method


# virtual methods
.method protected final bufferMove(I)V
    .registers 6
    .param p1, "proxyId"    # I

    .prologue
    const/4 v3, 0x0

    .line 256
    iget v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveCount:I

    iget v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveCapacity:I

    if-ne v1, v2, :cond_1b

    .line 257
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveBuffer:[I

    .line 258
    .local v0, "old":[I
    iget v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveCapacity:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveCapacity:I

    .line 259
    iget v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveCapacity:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveBuffer:[I

    .line 260
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveBuffer:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    .end local v0    # "old":[I
    :cond_1b
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveBuffer:[I

    iget v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveCount:I

    aput p1, v1, v2

    .line 264
    iget v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveCount:I

    .line 265
    return-void
.end method

.method public final createProxy(Lorg/jbox2d/collision/AABB;Ljava/lang/Object;)I
    .registers 5
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;
    .param p2, "userData"    # Ljava/lang/Object;

    .prologue
    .line 87
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    invoke-interface {v1, p1, p2}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->createProxy(Lorg/jbox2d/collision/AABB;Ljava/lang/Object;)I

    move-result v0

    .line 88
    .local v0, "proxyId":I
    iget v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_proxyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_proxyCount:I

    .line 89
    invoke-virtual {p0, v0}, Lorg/jbox2d/collision/broadphase/BroadPhase;->bufferMove(I)V

    .line 90
    return v0
.end method

.method public final destroyProxy(I)V
    .registers 3
    .param p1, "proxyId"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lorg/jbox2d/collision/broadphase/BroadPhase;->unbufferMove(I)V

    .line 100
    iget v0, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_proxyCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_proxyCount:I

    .line 101
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    invoke-interface {v0, p1}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->destroyProxy(I)V

    .line 102
    return-void
.end method

.method public drawTree(Lorg/jbox2d/callbacks/DebugDraw;)V
    .registers 3
    .param p1, "argDraw"    # Lorg/jbox2d/callbacks/DebugDraw;

    .prologue
    .line 152
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    invoke-interface {v0, p1}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->drawTree(Lorg/jbox2d/callbacks/DebugDraw;)V

    .line 153
    return-void
.end method

.method public getFatAABB(I)Lorg/jbox2d/collision/AABB;
    .registers 3
    .param p1, "proxyId"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    invoke-interface {v0, p1}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->getFatAABB(I)Lorg/jbox2d/collision/AABB;

    move-result-object v0

    return-object v0
.end method

.method public final getProxyCount()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_proxyCount:I

    return v0
.end method

.method public getTreeBalance()I
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    invoke-interface {v0}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->getMaxBalance()I

    move-result v0

    return v0
.end method

.method public final getTreeHeight()I
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    invoke-interface {v0}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->computeHeight()I

    move-result v0

    return v0
.end method

.method public getTreeQuality()F
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    invoke-interface {v0}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->getAreaRatio()F

    move-result v0

    return v0
.end method

.method public getUserData(I)Ljava/lang/Object;
    .registers 3
    .param p1, "proxyId"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    invoke-interface {v0, p1}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->getUserData(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final moveProxy(ILorg/jbox2d/collision/AABB;Lorg/jbox2d/common/Vec2;)V
    .registers 6
    .param p1, "proxyId"    # I
    .param p2, "aabb"    # Lorg/jbox2d/collision/AABB;
    .param p3, "displacement"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 109
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    invoke-interface {v1, p1, p2, p3}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->moveProxy(ILorg/jbox2d/collision/AABB;Lorg/jbox2d/common/Vec2;)Z

    move-result v0

    .line 110
    .local v0, "buffer":Z
    if-eqz v0, :cond_b

    .line 111
    invoke-virtual {p0, p1}, Lorg/jbox2d/collision/broadphase/BroadPhase;->bufferMove(I)V

    .line 113
    :cond_b
    return-void
.end method

.method public final query(Lorg/jbox2d/callbacks/TreeCallback;Lorg/jbox2d/collision/AABB;)V
    .registers 4
    .param p1, "callback"    # Lorg/jbox2d/callbacks/TreeCallback;
    .param p2, "aabb"    # Lorg/jbox2d/collision/AABB;

    .prologue
    .line 222
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    invoke-interface {v0, p1, p2}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->query(Lorg/jbox2d/callbacks/TreeCallback;Lorg/jbox2d/collision/AABB;)V

    .line 223
    return-void
.end method

.method public final raycast(Lorg/jbox2d/callbacks/TreeRayCastCallback;Lorg/jbox2d/collision/RayCastInput;)V
    .registers 4
    .param p1, "callback"    # Lorg/jbox2d/callbacks/TreeRayCastCallback;
    .param p2, "input"    # Lorg/jbox2d/collision/RayCastInput;

    .prologue
    .line 235
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    invoke-interface {v0, p1, p2}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->raycast(Lorg/jbox2d/callbacks/TreeRayCastCallback;Lorg/jbox2d/collision/RayCastInput;)V

    .line 236
    return-void
.end method

.method public testOverlap(II)Z
    .registers 9
    .param p1, "proxyIdA"    # I
    .param p2, "proxyIdB"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 129
    iget-object v3, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    invoke-interface {v3, p1}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->getFatAABB(I)Lorg/jbox2d/collision/AABB;

    move-result-object v0

    .line 130
    .local v0, "a":Lorg/jbox2d/collision/AABB;
    iget-object v3, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    invoke-interface {v3, p2}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->getFatAABB(I)Lorg/jbox2d/collision/AABB;

    move-result-object v1

    .line 131
    .local v1, "b":Lorg/jbox2d/collision/AABB;
    iget-object v3, v1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v4, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_28

    iget-object v3, v1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v5

    if-lez v3, :cond_29

    .line 139
    :cond_28
    :goto_28
    return v2

    .line 135
    :cond_29
    iget-object v3, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v4, v1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_28

    iget-object v3, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, v1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_28

    .line 139
    const/4 v2, 0x1

    goto :goto_28
.end method

.method public touchProxy(I)V
    .registers 2
    .param p1, "proxyId"    # I

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lorg/jbox2d/collision/broadphase/BroadPhase;->bufferMove(I)V

    .line 117
    return-void
.end method

.method public final treeCallback(I)Z
    .registers 8
    .param p1, "proxyId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 281
    iget v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_queryProxyId:I

    if-ne p1, v2, :cond_7

    .line 308
    :goto_6
    return v5

    .line 287
    :cond_7
    iget v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCount:I

    iget v3, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCapacity:I

    if-ne v2, v3, :cond_32

    .line 288
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairBuffer:[Lorg/jbox2d/collision/broadphase/Pair;

    .line 289
    .local v1, "oldBuffer":[Lorg/jbox2d/collision/broadphase/Pair;
    iget v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCapacity:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCapacity:I

    .line 290
    iget v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCapacity:I

    new-array v2, v2, [Lorg/jbox2d/collision/broadphase/Pair;

    iput-object v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairBuffer:[Lorg/jbox2d/collision/broadphase/Pair;

    .line 291
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairBuffer:[Lorg/jbox2d/collision/broadphase/Pair;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    array-length v0, v1

    .local v0, "i":I
    :goto_22
    iget v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCapacity:I

    if-ge v0, v2, :cond_32

    .line 293
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairBuffer:[Lorg/jbox2d/collision/broadphase/Pair;

    new-instance v3, Lorg/jbox2d/collision/broadphase/Pair;

    invoke-direct {v3}, Lorg/jbox2d/collision/broadphase/Pair;-><init>()V

    aput-object v3, v2, v0

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 297
    .end local v0    # "i":I
    .end local v1    # "oldBuffer":[Lorg/jbox2d/collision/broadphase/Pair;
    :cond_32
    iget v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_queryProxyId:I

    if-ge p1, v2, :cond_4f

    .line 299
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairBuffer:[Lorg/jbox2d/collision/broadphase/Pair;

    iget v3, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCount:I

    aget-object v2, v2, v3

    iput p1, v2, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdA:I

    .line 300
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairBuffer:[Lorg/jbox2d/collision/broadphase/Pair;

    iget v3, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCount:I

    aget-object v2, v2, v3

    iget v3, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_queryProxyId:I

    iput v3, v2, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdB:I

    .line 307
    :goto_48
    iget v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCount:I

    goto :goto_6

    .line 303
    :cond_4f
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairBuffer:[Lorg/jbox2d/collision/broadphase/Pair;

    iget v3, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCount:I

    aget-object v2, v2, v3

    iget v3, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_queryProxyId:I

    iput v3, v2, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdA:I

    .line 304
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairBuffer:[Lorg/jbox2d/collision/broadphase/Pair;

    iget v3, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCount:I

    aget-object v2, v2, v3

    iput p1, v2, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdB:I

    goto :goto_48
.end method

.method protected final unbufferMove(I)V
    .registers 5
    .param p1, "proxyId"    # I

    .prologue
    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveCount:I

    if-ge v0, v1, :cond_13

    .line 269
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveBuffer:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_10

    .line 270
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveBuffer:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 268
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 273
    :cond_13
    return-void
.end method

.method public final updatePairs(Lorg/jbox2d/callbacks/PairCallback;)V
    .registers 11
    .param p1, "callback"    # Lorg/jbox2d/callbacks/PairCallback;

    .prologue
    const/4 v8, 0x0

    .line 163
    iput v8, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCount:I

    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget v6, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveCount:I

    if-ge v1, v6, :cond_24

    .line 167
    iget-object v6, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveBuffer:[I

    aget v6, v6, v1

    iput v6, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_queryProxyId:I

    .line 168
    iget v6, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_queryProxyId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_16

    .line 166
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 174
    :cond_16
    iget-object v6, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    iget v7, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_queryProxyId:I

    invoke-interface {v6, v7}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->getFatAABB(I)Lorg/jbox2d/collision/AABB;

    move-result-object v0

    .line 178
    .local v0, "fatAABB":Lorg/jbox2d/collision/AABB;
    iget-object v6, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    invoke-interface {v6, p0, v0}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->query(Lorg/jbox2d/callbacks/TreeCallback;Lorg/jbox2d/collision/AABB;)V

    goto :goto_13

    .line 183
    .end local v0    # "fatAABB":Lorg/jbox2d/collision/AABB;
    :cond_24
    iput v8, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_moveCount:I

    .line 186
    iget-object v6, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairBuffer:[Lorg/jbox2d/collision/broadphase/Pair;

    iget v7, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCount:I

    invoke-static {v6, v8, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 189
    const/4 v1, 0x0

    .line 190
    :cond_2e
    iget v6, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCount:I

    if-ge v1, v6, :cond_62

    .line 191
    iget-object v6, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairBuffer:[Lorg/jbox2d/collision/broadphase/Pair;

    aget-object v3, v6, v1

    .line 192
    .local v3, "primaryPair":Lorg/jbox2d/collision/broadphase/Pair;
    iget-object v6, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    iget v7, v3, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdA:I

    invoke-interface {v6, v7}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->getUserData(I)Ljava/lang/Object;

    move-result-object v4

    .line 193
    .local v4, "userDataA":Ljava/lang/Object;
    iget-object v6, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_tree:Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;

    iget v7, v3, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdB:I

    invoke-interface {v6, v7}, Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;->getUserData(I)Ljava/lang/Object;

    move-result-object v5

    .line 196
    .local v5, "userDataB":Ljava/lang/Object;
    invoke-interface {p1, v4, v5}, Lorg/jbox2d/callbacks/PairCallback;->addPair(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    .line 200
    :goto_4b
    iget v6, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairCount:I

    if-ge v1, v6, :cond_2e

    .line 201
    iget-object v6, p0, Lorg/jbox2d/collision/broadphase/BroadPhase;->m_pairBuffer:[Lorg/jbox2d/collision/broadphase/Pair;

    aget-object v2, v6, v1

    .line 202
    .local v2, "pair":Lorg/jbox2d/collision/broadphase/Pair;
    iget v6, v2, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdA:I

    iget v7, v3, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdA:I

    if-ne v6, v7, :cond_2e

    iget v6, v2, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdB:I

    iget v7, v3, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdB:I

    if-ne v6, v7, :cond_2e

    .line 206
    add-int/lit8 v1, v1, 0x1

    .line 207
    goto :goto_4b

    .line 212
    .end local v2    # "pair":Lorg/jbox2d/collision/broadphase/Pair;
    .end local v3    # "primaryPair":Lorg/jbox2d/collision/broadphase/Pair;
    .end local v4    # "userDataA":Ljava/lang/Object;
    .end local v5    # "userDataB":Ljava/lang/Object;
    :cond_62
    return-void
.end method
