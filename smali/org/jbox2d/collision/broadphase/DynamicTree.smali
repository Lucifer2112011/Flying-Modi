###### Class org.jbox2d.collision.broadphase.DynamicTree (org.jbox2d.collision.broadphase.DynamicTree)
.class public Lorg/jbox2d/collision/broadphase/DynamicTree;
.super Ljava/lang/Object;
.source "DynamicTree.java"

# interfaces
.implements Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final MAX_STACK_SIZE:I = 0x40

.field public static final NULL_NODE:I = -0x1


# instance fields
.field private final aabb:Lorg/jbox2d/collision/AABB;

.field private final color:Lorg/jbox2d/common/Color3f;

.field private final combinedAABB:Lorg/jbox2d/collision/AABB;

.field private final drawVecs:[Lorg/jbox2d/common/Vec2;

.field private m_freeList:I

.field private m_insertionCount:I

.field private m_nodeCapacity:I

.field private m_nodeCount:I

.field private m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

.field private m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

.field private final nodeStack:Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;

.field private final r:Lorg/jbox2d/common/Vec2;

.field private final subInput:Lorg/jbox2d/collision/RayCastInput;

.field private final textVec:Lorg/jbox2d/common/Vec2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lorg/jbox2d/collision/broadphase/DynamicTree;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/jbox2d/common/Vec2;

    iput-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->drawVecs:[Lorg/jbox2d/common/Vec2;

    .line 58
    new-instance v1, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;

    const/16 v3, 0xa

    invoke-direct {v1, p0, v3}, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;-><init>(Lorg/jbox2d/collision/broadphase/DynamicTree;I)V

    iput-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->nodeStack:Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;

    .line 187
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->r:Lorg/jbox2d/common/Vec2;

    .line 188
    new-instance v1, Lorg/jbox2d/collision/AABB;

    invoke-direct {v1}, Lorg/jbox2d/collision/AABB;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->aabb:Lorg/jbox2d/collision/AABB;

    .line 189
    new-instance v1, Lorg/jbox2d/collision/RayCastInput;

    invoke-direct {v1}, Lorg/jbox2d/collision/RayCastInput;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->subInput:Lorg/jbox2d/collision/RayCastInput;

    .line 500
    new-instance v1, Lorg/jbox2d/collision/AABB;

    invoke-direct {v1}, Lorg/jbox2d/collision/AABB;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->combinedAABB:Lorg/jbox2d/collision/AABB;

    .line 862
    new-instance v1, Lorg/jbox2d/common/Color3f;

    invoke-direct {v1}, Lorg/jbox2d/common/Color3f;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->color:Lorg/jbox2d/common/Color3f;

    .line 863
    new-instance v1, Lorg/jbox2d/common/Vec2;

    invoke-direct {v1}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->textVec:Lorg/jbox2d/common/Vec2;

    .line 61
    iput-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 62
    iput v5, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCount:I

    .line 63
    iput v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    .line 64
    new-array v1, v4, [Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iput-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 67
    iget v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_4d
    if-ltz v0, :cond_76

    .line 68
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    new-instance v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    invoke-direct {v3, v0}, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;-><init>(I)V

    aput-object v3, v1, v0

    .line 69
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    aget-object v3, v1, v0

    iget v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_6f

    move-object v1, v2

    :goto_63
    iput-object v1, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 70
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    aget-object v1, v1, v0

    const/4 v3, -0x1

    iput v3, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    .line 67
    add-int/lit8 v0, v0, -0x1

    goto :goto_4d

    .line 69
    :cond_6f
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    add-int/lit8 v4, v0, 0x1

    aget-object v1, v1, v4

    goto :goto_63

    .line 72
    :cond_76
    iput v5, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_freeList:I

    .line 74
    iput v5, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_insertionCount:I

    .line 76
    const/4 v0, 0x0

    :goto_7b
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->drawVecs:[Lorg/jbox2d/common/Vec2;

    array-length v1, v1

    if-ge v0, v1, :cond_8c

    .line 77
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->drawVecs:[Lorg/jbox2d/common/Vec2;

    new-instance v2, Lorg/jbox2d/common/Vec2;

    invoke-direct {v2}, Lorg/jbox2d/common/Vec2;-><init>()V

    aput-object v2, v1, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    .line 79
    :cond_8c
    return-void
.end method

.method private final allocateNode()Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 454
    iget v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_freeList:I

    if-ne v4, v6, :cond_5d

    .line 455
    sget-boolean v4, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v4, :cond_17

    iget v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCount:I

    iget v7, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    if-eq v4, v7, :cond_17

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 457
    :cond_17
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 458
    .local v2, "old":[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    .line 459
    iget v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    new-array v4, v4, [Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iput-object v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 460
    iget-object v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    array-length v7, v2

    invoke-static {v2, v9, v4, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    iget v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_2f
    iget v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCount:I

    if-lt v0, v4, :cond_59

    .line 464
    iget-object v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    new-instance v7, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    invoke-direct {v7, v0}, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;-><init>(I)V

    aput-object v7, v4, v0

    .line 465
    iget-object v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    aget-object v7, v4, v0

    iget v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_52

    move-object v4, v5

    :goto_47
    iput-object v4, v7, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 466
    iget-object v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    aget-object v4, v4, v0

    iput v6, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    .line 463
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 465
    :cond_52
    iget-object v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    add-int/lit8 v8, v0, 0x1

    aget-object v4, v4, v8

    goto :goto_47

    .line 468
    :cond_59
    iget v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCount:I

    iput v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_freeList:I

    .line 470
    .end local v0    # "i":I
    .end local v2    # "old":[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_5d
    iget v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_freeList:I

    .line 471
    .local v1, "nodeId":I
    iget-object v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    aget-object v3, v4, v1

    .line 472
    .local v3, "treeNode":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget-object v4, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-eqz v4, :cond_7e

    iget-object v4, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iget v4, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    :goto_6b
    iput v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_freeList:I

    .line 474
    iput-object v5, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 475
    iput-object v5, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 476
    iput-object v5, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 477
    iput v9, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    .line 478
    iput-object v5, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->userData:Ljava/lang/Object;

    .line 479
    iget v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCount:I

    .line 480
    return-object v3

    :cond_7e
    move v4, v6

    .line 472
    goto :goto_6b
.end method

.method private balance(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .registers 20
    .param p1, "iA"    # Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .prologue
    .line 667
    sget-boolean v15, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v15, :cond_c

    if-nez p1, :cond_c

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 669
    :cond_c
    move-object/from16 v1, p1

    .line 670
    .local v1, "A":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    invoke-virtual {v1}, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->isLeaf()Z

    move-result v15

    if-nez v15, :cond_1c

    iget v15, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_1d

    .line 786
    .end local p1    # "iA":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_1c
    :goto_1c
    return-object p1

    .line 674
    .restart local p1    # "iA":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_1d
    iget-object v9, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 675
    .local v9, "iB":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget-object v10, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 676
    .local v10, "iC":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    sget-boolean v15, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v15, :cond_3b

    iget v15, v9, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    if-ltz v15, :cond_35

    iget v15, v9, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_3b

    :cond_35
    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 677
    :cond_3b
    sget-boolean v15, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v15, :cond_55

    iget v15, v10, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    if-ltz v15, :cond_4f

    iget v15, v10, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_55

    :cond_4f
    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 679
    :cond_55
    move-object v2, v9

    .line 680
    .local v2, "B":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    move-object v3, v10

    .line 682
    .local v3, "C":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget v15, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    iget v0, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v16, v0

    sub-int v8, v15, v16

    .line 685
    .local v8, "balance":I
    const/4 v15, 0x1

    if-le v8, v15, :cond_175

    .line 686
    iget-object v13, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 687
    .local v13, "iF":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget-object v14, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 688
    .local v14, "iG":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    move-object v6, v13

    .line 689
    .local v6, "F":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    move-object v7, v14

    .line 690
    .local v7, "G":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    sget-boolean v15, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v15, :cond_74

    if-nez v6, :cond_74

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 691
    :cond_74
    sget-boolean v15, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v15, :cond_80

    if-nez v7, :cond_80

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 692
    :cond_80
    sget-boolean v15, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v15, :cond_9a

    iget v15, v13, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    if-ltz v15, :cond_94

    iget v15, v13, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_9a

    :cond_94
    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 693
    :cond_9a
    sget-boolean v15, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v15, :cond_b4

    iget v15, v14, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    if-ltz v15, :cond_ae

    iget v15, v14, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_b4

    :cond_ae
    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 696
    :cond_b4
    move-object/from16 v0, p1

    iput-object v0, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 697
    iget-object v15, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iput-object v15, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 698
    iput-object v10, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 701
    iget-object v15, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-eqz v15, :cond_131

    .line 702
    iget-object v15, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iget-object v15, v15, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v0, p1

    if-ne v15, v0, :cond_11a

    .line 703
    iget-object v15, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iput-object v10, v15, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 713
    :goto_ce
    iget v15, v6, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    iget v0, v7, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_136

    .line 714
    iput-object v13, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 715
    iput-object v14, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 716
    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 717
    iget-object v15, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v0, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v16, v0

    iget-object v0, v7, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 718
    iget-object v15, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v0, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v16, v0

    iget-object v0, v6, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 720
    iget v15, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    iget v0, v7, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    iput v15, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    .line 721
    iget v15, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    iget v0, v6, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    iput v15, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    :goto_116
    move-object/from16 p1, v10

    .line 733
    goto/16 :goto_1c

    .line 705
    :cond_11a
    sget-boolean v15, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v15, :cond_12c

    iget-object v15, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iget-object v15, v15, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v0, p1

    if-eq v15, v0, :cond_12c

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 706
    :cond_12c
    iget-object v15, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iput-object v10, v15, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    goto :goto_ce

    .line 709
    :cond_131
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    goto :goto_ce

    .line 723
    :cond_136
    iput-object v14, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 724
    iput-object v13, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 725
    move-object/from16 v0, p1

    iput-object v0, v6, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 726
    iget-object v15, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v0, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v16, v0

    iget-object v0, v6, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 727
    iget-object v15, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v0, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v16, v0

    iget-object v0, v7, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 729
    iget v15, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    iget v0, v6, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    iput v15, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    .line 730
    iget v15, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    iget v0, v7, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    iput v15, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    goto :goto_116

    .line 737
    .end local v6    # "F":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v7    # "G":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v13    # "iF":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v14    # "iG":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_175
    const/4 v15, -0x1

    if-ge v8, v15, :cond_1c

    .line 738
    iget-object v11, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 739
    .local v11, "iD":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget-object v12, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 740
    .local v12, "iE":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    move-object v4, v11

    .line 741
    .local v4, "D":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    move-object v5, v12

    .line 742
    .local v5, "E":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    sget-boolean v15, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v15, :cond_198

    iget v15, v11, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    if-ltz v15, :cond_192

    iget v15, v11, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_198

    :cond_192
    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 743
    :cond_198
    sget-boolean v15, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v15, :cond_1b2

    iget v15, v12, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    if-ltz v15, :cond_1ac

    iget v15, v12, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_1b2

    :cond_1ac
    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 746
    :cond_1b2
    move-object/from16 v0, p1

    iput-object v0, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 747
    iget-object v15, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iput-object v15, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 748
    iput-object v9, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 751
    iget-object v15, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-eqz v15, :cond_22f

    .line 752
    iget-object v15, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iget-object v15, v15, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v0, p1

    if-ne v15, v0, :cond_218

    .line 753
    iget-object v15, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iput-object v9, v15, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 763
    :goto_1cc
    iget v15, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    iget v0, v5, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_234

    .line 764
    iput-object v11, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 765
    iput-object v12, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 766
    move-object/from16 v0, p1

    iput-object v0, v5, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 767
    iget-object v15, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v0, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v16, v0

    iget-object v0, v5, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 768
    iget-object v15, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v0, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v16, v0

    iget-object v0, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 770
    iget v15, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    iget v0, v5, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    iput v15, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    .line 771
    iget v15, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    iget v0, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    iput v15, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    :goto_214
    move-object/from16 p1, v9

    .line 783
    goto/16 :goto_1c

    .line 755
    :cond_218
    sget-boolean v15, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v15, :cond_22a

    iget-object v15, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iget-object v15, v15, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v0, p1

    if-eq v15, v0, :cond_22a

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 756
    :cond_22a
    iget-object v15, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iput-object v9, v15, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    goto :goto_1cc

    .line 759
    :cond_22f
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    goto :goto_1cc

    .line 773
    :cond_234
    iput-object v12, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 774
    iput-object v11, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 775
    move-object/from16 v0, p1

    iput-object v0, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 776
    iget-object v15, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v0, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v16, v0

    iget-object v0, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 777
    iget-object v15, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v0, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v16, v0

    iget-object v0, v5, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 779
    iget v15, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    iget v0, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    iput v15, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    .line 780
    iget v15, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    iget v0, v5, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    iput v15, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    goto :goto_214
.end method

.method private final computeHeight(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)I
    .registers 6
    .param p1, "node"    # Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .prologue
    .line 303
    sget-boolean v2, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v2, :cond_14

    iget v2, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    if-ltz v2, :cond_e

    iget v2, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    iget v3, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    if-lt v2, v3, :cond_14

    :cond_e
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 305
    :cond_14
    invoke-virtual {p1}, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->isLeaf()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 306
    const/4 v2, 0x0

    .line 310
    :goto_1b
    return v2

    .line 308
    :cond_1c
    iget-object v2, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    invoke-direct {p0, v2}, Lorg/jbox2d/collision/broadphase/DynamicTree;->computeHeight(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)I

    move-result v0

    .line 309
    .local v0, "height1":I
    iget-object v2, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    invoke-direct {p0, v2}, Lorg/jbox2d/collision/broadphase/DynamicTree;->computeHeight(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)I

    move-result v1

    .line 310
    .local v1, "height2":I
    invoke-static {v0, v1}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b
.end method

.method private final freeNode(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V
    .registers 5
    .param p1, "node"    # Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .prologue
    const/4 v2, -0x1

    .line 487
    sget-boolean v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 488
    :cond_d
    sget-boolean v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v0, :cond_1b

    iget v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCount:I

    if-gtz v0, :cond_1b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 489
    :cond_1b
    iget v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_freeList:I

    if-eq v0, v2, :cond_34

    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iget v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_freeList:I

    aget-object v0, v0, v1

    :goto_25
    iput-object v0, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 490
    iput v2, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    .line 491
    iget v0, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    iput v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_freeList:I

    .line 492
    iget v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCount:I

    .line 493
    return-void

    .line 489
    :cond_34
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private final insertLeaf(I)V
    .registers 24
    .param p1, "leaf_index"    # I

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_insertionCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_insertionCount:I

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v19, v0

    aget-object v11, v19, p1

    .line 506
    .local v11, "leaf":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v19, v0

    if-nez v19, :cond_31

    .line 507
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 615
    :cond_30
    return-void

    .line 513
    :cond_31
    iget-object v12, v11, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    .line 514
    .local v12, "leafAABB":Lorg/jbox2d/collision/AABB;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 515
    .local v9, "index":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :goto_37
    iget-object v0, v9, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v19, v0

    if-eqz v19, :cond_bd

    .line 516
    move-object v15, v9

    .line 517
    .local v15, "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget-object v3, v15, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 518
    .local v3, "child1":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget-object v4, v15, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 520
    .local v4, "child2":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget-object v0, v15, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/collision/AABB;->getPerimeter()F

    move-result v2

    .line 522
    .local v2, "area":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->combinedAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v19, v0

    iget-object v0, v15, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->combinedAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/collision/AABB;->getPerimeter()F

    move-result v5

    .line 526
    .local v5, "combinedArea":F
    const/high16 v19, 0x40000000    # 2.0f

    mul-float v6, v19, v5

    .line 529
    .local v6, "cost":F
    const/high16 v19, 0x40000000    # 2.0f

    sub-float v20, v5, v2

    mul-float v10, v19, v20

    .line 533
    .local v10, "inheritanceCost":F
    invoke-virtual {v3}, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->isLeaf()Z

    move-result v19

    if-eqz v19, :cond_136

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->combinedAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v19, v0

    iget-object v0, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->combinedAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/collision/AABB;->getPerimeter()F

    move-result v19

    add-float v7, v19, v10

    .line 545
    .local v7, "cost1":F
    :goto_92
    invoke-virtual {v4}, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->isLeaf()Z

    move-result v19

    if-eqz v19, :cond_15f

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->combinedAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v19, v0

    iget-object v0, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->combinedAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/collision/AABB;->getPerimeter()F

    move-result v19

    add-float v8, v19, v10

    .line 556
    .local v8, "cost2":F
    :goto_b5
    cmpg-float v19, v6, v7

    if-gez v19, :cond_188

    cmpg-float v19, v6, v8

    if-gez v19, :cond_188

    .line 568
    .end local v2    # "area":F
    .end local v3    # "child1":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v4    # "child2":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v5    # "combinedArea":F
    .end local v6    # "cost":F
    .end local v7    # "cost1":F
    .end local v8    # "cost2":F
    .end local v10    # "inheritanceCost":F
    .end local v15    # "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_bd
    move-object/from16 v18, v9

    .line 569
    .local v18, "sibling":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v17, v0

    .line 570
    .local v17, "oldParent":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    invoke-direct/range {p0 .. p0}, Lorg/jbox2d/collision/broadphase/DynamicTree;->allocateNode()Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-result-object v14

    .line 571
    .local v14, "newParent":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    move-object/from16 v0, v17

    iput-object v0, v14, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 572
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->userData:Ljava/lang/Object;

    .line 573
    iget-object v0, v14, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 574
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v14, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    .line 576
    if-eqz v17, :cond_198

    .line 578
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_192

    .line 579
    move-object/from16 v0, v17

    iput-object v14, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 584
    :goto_110
    move-object/from16 v0, v18

    iput-object v0, v14, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 585
    iput-object v11, v14, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 586
    move-object/from16 v0, v18

    iput-object v14, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 587
    iput-object v14, v11, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 598
    :goto_11c
    iget-object v9, v11, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 599
    :goto_11e
    if-eqz v9, :cond_30

    .line 600
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/jbox2d/collision/broadphase/DynamicTree;->balance(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-result-object v9

    .line 602
    iget-object v3, v9, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 603
    .restart local v3    # "child1":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget-object v4, v9, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 605
    .restart local v4    # "child2":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    sget-boolean v19, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v19, :cond_1aa

    if-nez v3, :cond_1aa

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 537
    .end local v14    # "newParent":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v17    # "oldParent":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v18    # "sibling":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .restart local v2    # "area":F
    .restart local v5    # "combinedArea":F
    .restart local v6    # "cost":F
    .restart local v10    # "inheritanceCost":F
    .restart local v15    # "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->combinedAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v19, v0

    iget-object v0, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 538
    iget-object v0, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/collision/AABB;->getPerimeter()F

    move-result v16

    .line 539
    .local v16, "oldArea":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->combinedAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/collision/AABB;->getPerimeter()F

    move-result v13

    .line 540
    .local v13, "newArea":F
    sub-float v19, v13, v16

    add-float v7, v19, v10

    .restart local v7    # "cost1":F
    goto/16 :goto_92

    .line 549
    .end local v13    # "newArea":F
    .end local v16    # "oldArea":F
    :cond_15f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->combinedAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v19, v0

    iget-object v0, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 550
    iget-object v0, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/collision/AABB;->getPerimeter()F

    move-result v16

    .line 551
    .restart local v16    # "oldArea":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->combinedAABB:Lorg/jbox2d/collision/AABB;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jbox2d/collision/AABB;->getPerimeter()F

    move-result v13

    .line 552
    .restart local v13    # "newArea":F
    sub-float v19, v13, v16

    add-float v8, v19, v10

    .restart local v8    # "cost2":F
    goto/16 :goto_b5

    .line 561
    .end local v13    # "newArea":F
    .end local v16    # "oldArea":F
    :cond_188
    cmpg-float v19, v7, v8

    if-gez v19, :cond_18f

    .line 562
    move-object v9, v3

    goto/16 :goto_37

    .line 564
    :cond_18f
    move-object v9, v4

    goto/16 :goto_37

    .line 581
    .end local v2    # "area":F
    .end local v3    # "child1":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v4    # "child2":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v5    # "combinedArea":F
    .end local v6    # "cost":F
    .end local v7    # "cost1":F
    .end local v8    # "cost2":F
    .end local v10    # "inheritanceCost":F
    .end local v15    # "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .restart local v14    # "newParent":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .restart local v17    # "oldParent":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .restart local v18    # "sibling":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_192
    move-object/from16 v0, v17

    iput-object v14, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    goto/16 :goto_110

    .line 590
    :cond_198
    move-object/from16 v0, v18

    iput-object v0, v14, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 591
    iput-object v11, v14, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 592
    move-object/from16 v0, v18

    iput-object v14, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 593
    iput-object v14, v11, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 594
    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    goto/16 :goto_11c

    .line 606
    .restart local v3    # "child1":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .restart local v4    # "child2":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_1aa
    sget-boolean v19, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v19, :cond_1b6

    if-nez v4, :cond_1b6

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 608
    :cond_1b6
    iget v0, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v19, v0

    iget v0, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v9, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    .line 609
    iget-object v0, v9, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v19, v0

    iget-object v0, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v20, v0

    iget-object v0, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 611
    iget-object v9, v9, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 612
    goto/16 :goto_11e
.end method

.method private final removeLeaf(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V
    .registers 11
    .param p1, "leaf"    # Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .prologue
    const/4 v7, 0x0

    .line 618
    iget-object v6, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-ne p1, v6, :cond_8

    .line 619
    iput-object v7, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 662
    :cond_7
    :goto_7
    return-void

    .line 623
    :cond_8
    iget-object v4, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 624
    .local v4, "parent":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget-object v2, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 626
    .local v2, "grandParent":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget-object v6, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-ne v6, p1, :cond_42

    .line 627
    iget-object v5, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 632
    .local v5, "sibling":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :goto_12
    if-eqz v2, :cond_48

    .line 634
    iget-object v6, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-ne v6, v4, :cond_45

    .line 635
    iput-object v5, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 639
    :goto_1a
    iput-object v2, v5, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 640
    invoke-direct {p0, v4}, Lorg/jbox2d/collision/broadphase/DynamicTree;->freeNode(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    .line 643
    move-object v3, v2

    .line 644
    .local v3, "index":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :goto_20
    if-eqz v3, :cond_7

    .line 645
    invoke-direct {p0, v3}, Lorg/jbox2d/collision/broadphase/DynamicTree;->balance(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-result-object v3

    .line 647
    iget-object v0, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 648
    .local v0, "child1":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget-object v1, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 650
    .local v1, "child2":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget-object v6, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v7, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v8, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    invoke-virtual {v6, v7, v8}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 651
    iget v6, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    iget v7, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    invoke-static {v6, v7}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    .line 653
    iget-object v3, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 654
    goto :goto_20

    .line 629
    .end local v0    # "child1":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v1    # "child2":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v3    # "index":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v5    # "sibling":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_42
    iget-object v5, v4, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .restart local v5    # "sibling":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    goto :goto_12

    .line 637
    :cond_45
    iput-object v5, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    goto :goto_1a

    .line 656
    :cond_48
    iput-object v5, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 657
    iput-object v7, v5, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 658
    invoke-direct {p0, v4}, Lorg/jbox2d/collision/broadphase/DynamicTree;->freeNode(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    goto :goto_7
.end method

.method private validateMetrics(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V
    .registers 10
    .param p1, "node"    # Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .prologue
    .line 820
    if-nez p1, :cond_3

    .line 851
    :cond_2
    :goto_2
    return-void

    .line 824
    :cond_3
    iget-object v1, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 825
    .local v1, "child1":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget-object v2, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 827
    .local v2, "child2":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    invoke-virtual {p1}, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->isLeaf()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 828
    sget-boolean v6, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v6, :cond_19

    if-eqz v1, :cond_19

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 829
    :cond_19
    sget-boolean v6, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v6, :cond_25

    if-eqz v2, :cond_25

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 830
    :cond_25
    sget-boolean v6, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    iget v6, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 834
    :cond_33
    sget-boolean v6, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v6, :cond_49

    if-eqz v1, :cond_43

    iget v6, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    if-ltz v6, :cond_43

    iget v6, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    iget v7, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    if-lt v6, v7, :cond_49

    :cond_43
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 835
    :cond_49
    sget-boolean v6, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v6, :cond_5f

    if-eqz v2, :cond_59

    iget v6, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    if-ltz v6, :cond_59

    iget v6, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    iget v7, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    if-lt v6, v7, :cond_5f

    :cond_59
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 837
    :cond_5f
    iget v4, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    .line 838
    .local v4, "height1":I
    iget v5, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    .line 840
    .local v5, "height2":I
    invoke-static {v4, v5}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 841
    .local v3, "height":I
    sget-boolean v6, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v6, :cond_77

    iget v6, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    if-eq v6, v3, :cond_77

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 843
    :cond_77
    new-instance v0, Lorg/jbox2d/collision/AABB;

    invoke-direct {v0}, Lorg/jbox2d/collision/AABB;-><init>()V

    .line 844
    .local v0, "aabb":Lorg/jbox2d/collision/AABB;
    iget-object v6, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v7, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    invoke-virtual {v0, v6, v7}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 846
    sget-boolean v6, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v6, :cond_99

    iget-object v6, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v7, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v7, v7, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_99

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 847
    :cond_99
    sget-boolean v6, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v6, :cond_af

    iget-object v6, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget-object v7, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v7, v7, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_af

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 849
    :cond_af
    invoke-direct {p0, v1}, Lorg/jbox2d/collision/broadphase/DynamicTree;->validateMetrics(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    .line 850
    invoke-direct {p0, v2}, Lorg/jbox2d/collision/broadphase/DynamicTree;->validateMetrics(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    goto/16 :goto_2
.end method

.method private validateStructure(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V
    .registers 6
    .param p1, "node"    # Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .prologue
    .line 790
    if-nez p1, :cond_3

    .line 817
    :cond_2
    :goto_2
    return-void

    .line 793
    :cond_3
    sget-boolean v2, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v2, :cond_15

    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iget v3, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    aget-object v2, v2, v3

    if-eq p1, v2, :cond_15

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 795
    :cond_15
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-ne p1, v2, :cond_27

    .line 796
    sget-boolean v2, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v2, :cond_27

    iget-object v2, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-eqz v2, :cond_27

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 799
    :cond_27
    iget-object v0, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 800
    .local v0, "child1":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget-object v1, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 802
    .local v1, "child2":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    invoke-virtual {p1}, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->isLeaf()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 803
    sget-boolean v2, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v2, :cond_3d

    if-eqz v0, :cond_3d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 804
    :cond_3d
    sget-boolean v2, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v2, :cond_49

    if-eqz v1, :cond_49

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 805
    :cond_49
    sget-boolean v2, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget v2, p1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 809
    :cond_57
    sget-boolean v2, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v2, :cond_6d

    if-eqz v0, :cond_67

    iget v2, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    if-ltz v2, :cond_67

    iget v2, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    iget v3, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    if-lt v2, v3, :cond_6d

    :cond_67
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 810
    :cond_6d
    sget-boolean v2, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v2, :cond_83

    if-eqz v1, :cond_7d

    iget v2, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    if-ltz v2, :cond_7d

    iget v2, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    iget v3, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    if-lt v2, v3, :cond_83

    :cond_7d
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 812
    :cond_83
    sget-boolean v2, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v2, :cond_91

    iget-object v2, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-eq v2, p1, :cond_91

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 813
    :cond_91
    sget-boolean v2, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v2, :cond_9f

    iget-object v2, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-eq v2, p1, :cond_9f

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 815
    :cond_9f
    invoke-direct {p0, v0}, Lorg/jbox2d/collision/broadphase/DynamicTree;->validateStructure(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    .line 816
    invoke-direct {p0, v1}, Lorg/jbox2d/collision/broadphase/DynamicTree;->validateStructure(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public final computeHeight()I
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    invoke-direct {p0, v0}, Lorg/jbox2d/collision/broadphase/DynamicTree;->computeHeight(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)I

    move-result v0

    return v0
.end method

.method public final createProxy(Lorg/jbox2d/collision/AABB;Ljava/lang/Object;)I
    .registers 9
    .param p1, "aabb"    # Lorg/jbox2d/collision/AABB;
    .param p2, "userData"    # Ljava/lang/Object;

    .prologue
    const v5, 0x3dcccccd    # 0.1f

    .line 83
    invoke-direct {p0}, Lorg/jbox2d/collision/broadphase/DynamicTree;->allocateNode()Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-result-object v0

    .line 84
    .local v0, "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget v2, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    .line 86
    .local v2, "proxyId":I
    iget-object v1, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    .line 87
    .local v1, "nodeAABB":Lorg/jbox2d/collision/AABB;
    iget-object v3, v1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v4, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v4, v5

    iput v4, v3, Lorg/jbox2d/common/Vec2;->x:F

    .line 88
    iget-object v3, v1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget-object v4, p1, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v4, v5

    iput v4, v3, Lorg/jbox2d/common/Vec2;->y:F

    .line 89
    iget-object v3, v1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget-object v4, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v4, v5

    iput v4, v3, Lorg/jbox2d/common/Vec2;->x:F

    .line 90
    iget-object v3, v1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget-object v4, p1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v4, v5

    iput v4, v3, Lorg/jbox2d/common/Vec2;->y:F

    .line 91
    iput-object p2, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->userData:Ljava/lang/Object;

    .line 93
    invoke-direct {p0, v2}, Lorg/jbox2d/collision/broadphase/DynamicTree;->insertLeaf(I)V

    .line 95
    return v2
.end method

.method public final destroyProxy(I)V
    .registers 4
    .param p1, "proxyId"    # I

    .prologue
    .line 100
    sget-boolean v1, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    if-ltz p1, :cond_a

    iget v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    if-lt p1, v1, :cond_10

    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 101
    :cond_10
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    aget-object v0, v1, p1

    .line 102
    .local v0, "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    sget-boolean v1, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v1, :cond_24

    invoke-virtual {v0}, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_24

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 104
    :cond_24
    invoke-direct {p0, v0}, Lorg/jbox2d/collision/broadphase/DynamicTree;->removeLeaf(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    .line 105
    invoke-direct {p0, v0}, Lorg/jbox2d/collision/broadphase/DynamicTree;->freeNode(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    .line 106
    return-void
.end method

.method public drawTree(Lorg/jbox2d/callbacks/DebugDraw;)V
    .registers 5
    .param p1, "argDraw"    # Lorg/jbox2d/callbacks/DebugDraw;

    .prologue
    .line 855
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-nez v1, :cond_5

    .line 860
    :goto_4
    return-void

    .line 858
    :cond_5
    invoke-virtual {p0}, Lorg/jbox2d/collision/broadphase/DynamicTree;->computeHeight()I

    move-result v0

    .line 859
    .local v0, "height":I
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/jbox2d/collision/broadphase/DynamicTree;->drawTree(Lorg/jbox2d/callbacks/DebugDraw;Lorg/jbox2d/collision/broadphase/DynamicTreeNode;II)V

    goto :goto_4
.end method

.method public drawTree(Lorg/jbox2d/callbacks/DebugDraw;Lorg/jbox2d/collision/broadphase/DynamicTreeNode;II)V
    .registers 10
    .param p1, "argDraw"    # Lorg/jbox2d/callbacks/DebugDraw;
    .param p2, "node"    # Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .param p3, "spot"    # I
    .param p4, "height"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 866
    iget-object v0, p2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->drawVecs:[Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/collision/AABB;->getVertices([Lorg/jbox2d/common/Vec2;)V

    .line 868
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->color:Lorg/jbox2d/common/Color3f;

    sub-int v1, p4, p3

    int-to-float v1, v1

    mul-float/2addr v1, v4

    int-to-float v2, p4

    div-float/2addr v1, v2

    sub-int v2, p4, p3

    int-to-float v2, v2

    mul-float/2addr v2, v4

    int-to-float v3, p4

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lorg/jbox2d/common/Color3f;->set(FFF)V

    .line 869
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->drawVecs:[Lorg/jbox2d/common/Vec2;

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->color:Lorg/jbox2d/common/Color3f;

    invoke-virtual {p1, v0, v1, v2}, Lorg/jbox2d/callbacks/DebugDraw;->drawPolygon([Lorg/jbox2d/common/Vec2;ILorg/jbox2d/common/Color3f;)V

    .line 871
    invoke-virtual {p1}, Lorg/jbox2d/callbacks/DebugDraw;->getViewportTranform()Lorg/jbox2d/common/IViewportTransform;

    move-result-object v0

    iget-object v1, p2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    iget-object v1, v1, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->textVec:Lorg/jbox2d/common/Vec2;

    invoke-interface {v0, v1, v2}, Lorg/jbox2d/common/IViewportTransform;->getWorldToScreen(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 872
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->textVec:Lorg/jbox2d/common/Vec2;

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->textVec:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->color:Lorg/jbox2d/common/Color3f;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/jbox2d/callbacks/DebugDraw;->drawString(FFLjava/lang/String;Lorg/jbox2d/common/Color3f;)V

    .line 874
    iget-object v0, p2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-eqz v0, :cond_6c

    .line 875
    iget-object v0, p2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, p1, v0, v1, p4}, Lorg/jbox2d/collision/broadphase/DynamicTree;->drawTree(Lorg/jbox2d/callbacks/DebugDraw;Lorg/jbox2d/collision/broadphase/DynamicTreeNode;II)V

    .line 877
    :cond_6c
    iget-object v0, p2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-eqz v0, :cond_77

    .line 878
    iget-object v0, p2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, p1, v0, v1, p4}, Lorg/jbox2d/collision/broadphase/DynamicTree;->drawTree(Lorg/jbox2d/callbacks/DebugDraw;Lorg/jbox2d/collision/broadphase/DynamicTreeNode;II)V

    .line 880
    :cond_77
    return-void
.end method

.method public getAreaRatio()F
    .registers 7

    .prologue
    .line 364
    iget-object v5, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-nez v5, :cond_6

    .line 365
    const/4 v5, 0x0

    .line 382
    :goto_5
    return v5

    .line 368
    :cond_6
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 369
    .local v2, "root":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget-object v5, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    invoke-virtual {v5}, Lorg/jbox2d/collision/AABB;->getPerimeter()F

    move-result v3

    .line 371
    .local v3, "rootArea":F
    const/4 v4, 0x0

    .line 372
    .local v4, "totalArea":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget v5, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    if-ge v0, v5, :cond_27

    .line 373
    iget-object v5, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    aget-object v1, v5, v0

    .line 374
    .local v1, "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget v5, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    if-gez v5, :cond_1f

    .line 372
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 379
    :cond_1f
    iget-object v5, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    invoke-virtual {v5}, Lorg/jbox2d/collision/AABB;->getPerimeter()F

    move-result v5

    add-float/2addr v4, v5

    goto :goto_1c

    .line 382
    .end local v1    # "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_27
    div-float v5, v4, v3

    goto :goto_5
.end method

.method public final getFatAABB(I)Lorg/jbox2d/collision/AABB;
    .registers 3
    .param p1, "proxyId"    # I

    .prologue
    .line 158
    sget-boolean v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    if-ltz p1, :cond_a

    iget v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    if-lt p1, v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 159
    :cond_10
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-nez v0, :cond_6

    .line 337
    const/4 v0, 0x0

    .line 339
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iget v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    goto :goto_5
.end method

.method public getInsertionCount()I
    .registers 2

    .prologue
    .line 497
    iget v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_insertionCount:I

    return v0
.end method

.method public getMaxBalance()I
    .registers 9

    .prologue
    .line 344
    const/4 v4, 0x0

    .line 345
    .local v4, "maxBalance":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget v6, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    if-ge v3, v6, :cond_34

    .line 346
    iget-object v6, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    aget-object v5, v6, v3

    .line 347
    .local v5, "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget v6, v5, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    const/4 v7, 0x1

    if-gt v6, v7, :cond_12

    .line 345
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 351
    :cond_12
    sget-boolean v6, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v6, :cond_22

    invoke-virtual {v5}, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->isLeaf()Z

    move-result v6

    if-eqz v6, :cond_22

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 353
    :cond_22
    iget-object v1, v5, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 354
    .local v1, "child1":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget-object v2, v5, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 355
    .local v2, "child2":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget v6, v2, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    iget v7, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Lorg/jbox2d/common/MathUtils;->abs(I)I

    move-result v0

    .line 356
    .local v0, "balance":I
    invoke-static {v4, v0}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v4

    goto :goto_f

    .line 359
    .end local v0    # "balance":I
    .end local v1    # "child1":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v2    # "child2":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v5    # "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_34
    return v4
.end method

.method public final getUserData(I)Ljava/lang/Object;
    .registers 3
    .param p1, "proxyId"    # I

    .prologue
    .line 152
    sget-boolean v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    if-ltz p1, :cond_a

    iget v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    if-lt p1, v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 153
    :cond_10
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public final moveProxy(ILorg/jbox2d/collision/AABB;Lorg/jbox2d/common/Vec2;)Z
    .registers 15
    .param p1, "proxyId"    # I
    .param p2, "aabb"    # Lorg/jbox2d/collision/AABB;
    .param p3, "displacement"    # Lorg/jbox2d/common/Vec2;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const v8, 0x3dcccccd    # 0.1f

    .line 110
    sget-boolean v6, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v6, :cond_16

    if-ltz p1, :cond_10

    iget v6, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    if-lt p1, v6, :cond_16

    :cond_10
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 111
    :cond_16
    iget-object v6, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    aget-object v3, v6, p1

    .line 112
    .local v3, "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    sget-boolean v6, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v6, :cond_2a

    invoke-virtual {v3}, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->isLeaf()Z

    move-result v6

    if-nez v6, :cond_2a

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 114
    :cond_2a
    iget-object v4, v3, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    .line 116
    .local v4, "nodeAABB":Lorg/jbox2d/collision/AABB;
    iget-object v6, v4, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v7, p2, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v7, v7, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5e

    iget-object v6, v4, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v7, p2, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v7, v7, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5e

    iget-object v6, p2, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v7, v4, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v7, v7, Lorg/jbox2d/common/Vec2;->x:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5e

    iget-object v6, p2, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v7, v4, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v7, v7, Lorg/jbox2d/common/Vec2;->y:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5e

    .line 118
    const/4 v6, 0x0

    .line 147
    :goto_5d
    return v6

    .line 121
    :cond_5e
    invoke-direct {p0, v3}, Lorg/jbox2d/collision/broadphase/DynamicTree;->removeLeaf(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    .line 124
    iget-object v2, v4, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    .line 125
    .local v2, "lowerBound":Lorg/jbox2d/common/Vec2;
    iget-object v5, v4, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    .line 126
    .local v5, "upperBound":Lorg/jbox2d/common/Vec2;
    iget-object v6, p2, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->x:F

    sub-float/2addr v6, v8

    iput v6, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 127
    iget-object v6, p2, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    sub-float/2addr v6, v8

    iput v6, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 128
    iget-object v6, p2, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v6, v8

    iput v6, v5, Lorg/jbox2d/common/Vec2;->x:F

    .line 129
    iget-object v6, p2, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    iget v6, v6, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v6, v8

    iput v6, v5, Lorg/jbox2d/common/Vec2;->y:F

    .line 132
    iget v6, p3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float v0, v6, v10

    .line 133
    .local v0, "dx":F
    iget v6, p3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float v1, v6, v10

    .line 134
    .local v1, "dy":F
    cmpg-float v6, v0, v9

    if-gez v6, :cond_a0

    .line 135
    iget v6, v2, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v6, v0

    iput v6, v2, Lorg/jbox2d/common/Vec2;->x:F

    .line 140
    :goto_92
    cmpg-float v6, v1, v9

    if-gez v6, :cond_a6

    .line 141
    iget v6, v2, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v6, v1

    iput v6, v2, Lorg/jbox2d/common/Vec2;->y:F

    .line 146
    :goto_9b
    invoke-direct {p0, p1}, Lorg/jbox2d/collision/broadphase/DynamicTree;->insertLeaf(I)V

    .line 147
    const/4 v6, 0x1

    goto :goto_5d

    .line 137
    :cond_a0
    iget v6, v5, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v6, v0

    iput v6, v5, Lorg/jbox2d/common/Vec2;->x:F

    goto :goto_92

    .line 143
    :cond_a6
    iget v6, v5, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v6, v1

    iput v6, v5, Lorg/jbox2d/common/Vec2;->y:F

    goto :goto_9b
.end method

.method public final query(Lorg/jbox2d/callbacks/TreeCallback;Lorg/jbox2d/collision/AABB;)V
    .registers 7
    .param p1, "callback"    # Lorg/jbox2d/callbacks/TreeCallback;
    .param p2, "aabb"    # Lorg/jbox2d/collision/AABB;

    .prologue
    .line 164
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->nodeStack:Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;

    invoke-virtual {v2}, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->reset()V

    .line 165
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->nodeStack:Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;

    iget-object v3, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    invoke-virtual {v2, v3}, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->push(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    .line 167
    :cond_c
    :goto_c
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->nodeStack:Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;

    invoke-virtual {v2}, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->getCount()I

    move-result v2

    if-lez v2, :cond_30

    .line 168
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->nodeStack:Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;

    invoke-virtual {v2}, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->pop()Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-result-object v0

    .line 169
    .local v0, "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    if-eqz v0, :cond_c

    .line 173
    iget-object v2, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    invoke-static {v2, p2}, Lorg/jbox2d/collision/AABB;->testOverlap(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 174
    iget-object v2, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-nez v2, :cond_31

    .line 175
    iget v2, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    invoke-interface {p1, v2}, Lorg/jbox2d/callbacks/TreeCallback;->treeCallback(I)Z

    move-result v1

    .line 176
    .local v1, "proceed":Z
    if-nez v1, :cond_c

    .line 185
    .end local v0    # "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v1    # "proceed":Z
    :cond_30
    return-void

    .line 180
    .restart local v0    # "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_31
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->nodeStack:Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;

    iget-object v3, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    invoke-virtual {v2, v3}, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->push(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    .line 181
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->nodeStack:Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;

    iget-object v3, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    invoke-virtual {v2, v3}, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->push(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    goto :goto_c
.end method

.method public raycast(Lorg/jbox2d/callbacks/TreeRayCastCallback;Lorg/jbox2d/collision/RayCastInput;)V
    .registers 33
    .param p1, "callback"    # Lorg/jbox2d/callbacks/TreeRayCastCallback;
    .param p2, "input"    # Lorg/jbox2d/collision/RayCastInput;

    .prologue
    .line 193
    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/jbox2d/collision/RayCastInput;->p1:Lorg/jbox2d/common/Vec2;

    .line 194
    .local v12, "p1":Lorg/jbox2d/common/Vec2;
    move-object/from16 v0, p2

    iget-object v15, v0, Lorg/jbox2d/collision/RayCastInput;->p2:Lorg/jbox2d/common/Vec2;

    .line 195
    .local v15, "p2":Lorg/jbox2d/common/Vec2;
    iget v13, v12, Lorg/jbox2d/common/Vec2;->x:F

    .local v13, "p1x":F
    iget v0, v15, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v16, v0

    .local v16, "p2x":F
    iget v14, v12, Lorg/jbox2d/common/Vec2;->y:F

    .local v14, "p1y":F
    iget v0, v15, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v17, v0

    .line 202
    .local v17, "p2y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->r:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    sub-float v28, v16, v13

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->r:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    sub-float v28, v17, v14

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 204
    sget-boolean v27, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v27, :cond_76

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->r:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->r:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->r:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->r:Lorg/jbox2d/common/Vec2;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-gtz v27, :cond_76

    new-instance v27, Ljava/lang/AssertionError;

    invoke-direct/range {v27 .. v27}, Ljava/lang/AssertionError;-><init>()V

    throw v27

    .line 205
    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->r:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->r:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v18, v0

    .line 207
    .local v18, "rx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->r:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v19, v0

    .line 210
    .local v19, "ry":F
    const/high16 v27, -0x40800000    # -1.0f

    mul-float v25, v27, v19

    .line 211
    .local v25, "vx":F
    const/high16 v27, 0x3f800000    # 1.0f

    mul-float v26, v27, v18

    .line 212
    .local v26, "vy":F
    invoke-static/range {v25 .. v25}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v3

    .line 213
    .local v3, "absVx":F
    invoke-static/range {v26 .. v26}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v4

    .line 218
    .local v4, "absVy":F
    move-object/from16 v0, p2

    iget v9, v0, Lorg/jbox2d/collision/RayCastInput;->maxFraction:F

    .line 221
    .local v9, "maxFraction":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v20, v0

    .line 227
    .local v20, "segAABB":Lorg/jbox2d/collision/AABB;
    sub-float v27, v16, v13

    mul-float v27, v27, v9

    add-float v22, v27, v13

    .line 228
    .local v22, "tempx":F
    sub-float v27, v17, v14

    mul-float v27, v27, v9

    add-float v23, v27, v14

    .line 229
    .local v23, "tempy":F
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    cmpg-float v27, v13, v22

    if-gez v27, :cond_232

    move/from16 v27, v13

    :goto_c9
    move/from16 v0, v27

    move-object/from16 v1, v28

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 230
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    cmpg-float v27, v14, v23

    if-gez v27, :cond_236

    move/from16 v27, v14

    :goto_db
    move/from16 v0, v27

    move-object/from16 v1, v28

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 231
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    cmpl-float v27, v13, v22

    if-lez v27, :cond_23a

    move/from16 v27, v13

    :goto_ed
    move/from16 v0, v27

    move-object/from16 v1, v28

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 232
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    cmpl-float v27, v14, v23

    if-lez v27, :cond_23e

    move/from16 v27, v14

    :goto_ff
    move/from16 v0, v27

    move-object/from16 v1, v28

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->nodeStack:Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->reset()V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->nodeStack:Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->push(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    .line 237
    :cond_11d
    :goto_11d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->nodeStack:Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->getCount()I

    move-result v27

    if-lez v27, :cond_231

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->nodeStack:Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->pop()Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-result-object v10

    .line 239
    .local v10, "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    if-eqz v10, :cond_11d

    .line 243
    iget-object v11, v10, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    .line 244
    .local v11, "nodeAABB":Lorg/jbox2d/collision/AABB;
    move-object/from16 v0, v20

    invoke-static {v11, v0}, Lorg/jbox2d/collision/AABB;->testOverlap(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)Z

    move-result v27

    if-eqz v27, :cond_11d

    .line 252
    iget-object v0, v11, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    iget-object v0, v11, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    add-float v27, v27, v28

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v5, v27, v28

    .line 253
    .local v5, "cx":F
    iget-object v0, v11, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    iget-object v0, v11, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    add-float v27, v27, v28

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v6, v27, v28

    .line 254
    .local v6, "cy":F
    iget-object v0, v11, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v27, v0

    iget-object v0, v11, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->x:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v7, v27, v28

    .line 255
    .local v7, "hx":F
    iget-object v0, v11, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v27, v0

    iget-object v0, v11, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/jbox2d/common/Vec2;->y:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v8, v27, v28

    .line 256
    .local v8, "hy":F
    sub-float v22, v13, v5

    .line 257
    sub-float v23, v14, v6

    .line 258
    mul-float v27, v25, v22

    mul-float v28, v26, v23

    add-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v27

    mul-float v28, v3, v7

    mul-float v29, v4, v8

    add-float v28, v28, v29

    sub-float v21, v27, v28

    .line 259
    .local v21, "separation":F
    const/16 v27, 0x0

    cmpl-float v27, v21, v27

    if-gtz v27, :cond_11d

    .line 263
    invoke-virtual {v10}, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->isLeaf()Z

    move-result v27

    if-eqz v27, :cond_2ac

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->subInput:Lorg/jbox2d/collision/RayCastInput;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastInput;->p1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput v13, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->subInput:Lorg/jbox2d/collision/RayCastInput;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastInput;->p1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput v14, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->subInput:Lorg/jbox2d/collision/RayCastInput;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastInput;->p2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move/from16 v0, v16

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->subInput:Lorg/jbox2d/collision/RayCastInput;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/jbox2d/collision/RayCastInput;->p2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v27, v0

    move/from16 v0, v17

    move-object/from16 v1, v27

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->subInput:Lorg/jbox2d/collision/RayCastInput;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput v9, v0, Lorg/jbox2d/collision/RayCastInput;->maxFraction:F

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->subInput:Lorg/jbox2d/collision/RayCastInput;

    move-object/from16 v27, v0

    iget v0, v10, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/jbox2d/callbacks/TreeRayCastCallback;->raycastCallback(Lorg/jbox2d/collision/RayCastInput;I)F

    move-result v24

    .line 272
    .local v24, "value":F
    const/16 v27, 0x0

    cmpl-float v27, v24, v27

    if-nez v27, :cond_242

    .line 295
    .end local v5    # "cx":F
    .end local v6    # "cy":F
    .end local v7    # "hx":F
    .end local v8    # "hy":F
    .end local v10    # "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v11    # "nodeAABB":Lorg/jbox2d/collision/AABB;
    .end local v21    # "separation":F
    .end local v24    # "value":F
    :cond_231
    return-void

    :cond_232
    move/from16 v27, v22

    .line 229
    goto/16 :goto_c9

    :cond_236
    move/from16 v27, v23

    .line 230
    goto/16 :goto_db

    :cond_23a
    move/from16 v27, v22

    .line 231
    goto/16 :goto_ed

    :cond_23e
    move/from16 v27, v23

    .line 232
    goto/16 :goto_ff

    .line 277
    .restart local v5    # "cx":F
    .restart local v6    # "cy":F
    .restart local v7    # "hx":F
    .restart local v8    # "hy":F
    .restart local v10    # "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .restart local v11    # "nodeAABB":Lorg/jbox2d/collision/AABB;
    .restart local v21    # "separation":F
    .restart local v24    # "value":F
    :cond_242
    const/16 v27, 0x0

    cmpl-float v27, v24, v27

    if-lez v27, :cond_11d

    .line 279
    move/from16 v9, v24

    .line 283
    sub-float v27, v16, v13

    mul-float v27, v27, v9

    add-float v22, v27, v13

    .line 284
    sub-float v27, v17, v14

    mul-float v27, v27, v9

    add-float v23, v27, v14

    .line 285
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    cmpg-float v27, v13, v22

    if-gez v27, :cond_2a0

    move/from16 v27, v13

    :goto_262
    move/from16 v0, v27

    move-object/from16 v1, v28

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 286
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->lowerBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    cmpg-float v27, v14, v23

    if-gez v27, :cond_2a3

    move/from16 v27, v14

    :goto_274
    move/from16 v0, v27

    move-object/from16 v1, v28

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 287
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    cmpl-float v27, v13, v22

    if-lez v27, :cond_2a6

    move/from16 v27, v13

    :goto_286
    move/from16 v0, v27

    move-object/from16 v1, v28

    iput v0, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 288
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jbox2d/collision/AABB;->upperBound:Lorg/jbox2d/common/Vec2;

    move-object/from16 v28, v0

    cmpl-float v27, v14, v23

    if-lez v27, :cond_2a9

    move/from16 v27, v14

    :goto_298
    move/from16 v0, v27

    move-object/from16 v1, v28

    iput v0, v1, Lorg/jbox2d/common/Vec2;->y:F

    goto/16 :goto_11d

    :cond_2a0
    move/from16 v27, v22

    .line 285
    goto :goto_262

    :cond_2a3
    move/from16 v27, v23

    .line 286
    goto :goto_274

    :cond_2a6
    move/from16 v27, v22

    .line 287
    goto :goto_286

    :cond_2a9
    move/from16 v27, v23

    .line 288
    goto :goto_298

    .line 291
    .end local v24    # "value":F
    :cond_2ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->nodeStack:Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;

    move-object/from16 v27, v0

    iget-object v0, v10, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->push(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->nodeStack:Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;

    move-object/from16 v27, v0

    iget-object v0, v10, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->push(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    goto/16 :goto_11d
.end method

.method public rebuildBottomUp()V
    .registers 23

    .prologue
    .line 389
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 390
    .local v17, "nodes":[I
    const/4 v8, 0x0

    .line 393
    .local v8, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_4e

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    move-object/from16 v0, v19

    iget v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v19, v0

    if-gez v19, :cond_2b

    .line 393
    :goto_28
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 399
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v19, v0

    aget-object v16, v19, v9

    .line 400
    .local v16, "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    invoke-virtual/range {v16 .. v16}, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->isLeaf()Z

    move-result v19

    if-eqz v19, :cond_46

    .line 401
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 402
    aput v9, v17, v8

    .line 403
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    .line 405
    :cond_46
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/jbox2d/collision/broadphase/DynamicTree;->freeNode(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    goto :goto_28

    .line 409
    .end local v16    # "node":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_4e
    new-instance v4, Lorg/jbox2d/collision/AABB;

    invoke-direct {v4}, Lorg/jbox2d/collision/AABB;-><init>()V

    .line 410
    .local v4, "b":Lorg/jbox2d/collision/AABB;
    :goto_53
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_fc

    .line 411
    const v15, 0x7f7fffff    # Float.MAX_VALUE

    .line 412
    .local v15, "minCost":F
    const/4 v10, -0x1

    .local v10, "iMin":I
    const/4 v14, -0x1

    .line 413
    .local v14, "jMin":I
    const/4 v9, 0x0

    :goto_5f
    if-ge v9, v8, :cond_95

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v19, v0

    aget v20, v17, v9

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    .line 416
    .local v2, "aabbi":Lorg/jbox2d/collision/AABB;
    add-int/lit8 v13, v9, 0x1

    .local v13, "j":I
    :goto_71
    if-ge v13, v8, :cond_92

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v19, v0

    aget v20, v17, v13

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    .line 418
    .local v3, "aabbj":Lorg/jbox2d/collision/AABB;
    invoke-virtual {v4, v2, v3}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 419
    invoke-virtual {v4}, Lorg/jbox2d/collision/AABB;->getPerimeter()F

    move-result v7

    .line 420
    .local v7, "cost":F
    cmpg-float v19, v7, v15

    if-gez v19, :cond_8f

    .line 421
    move v10, v9

    .line 422
    move v14, v13

    .line 423
    move v15, v7

    .line 416
    :cond_8f
    add-int/lit8 v13, v13, 0x1

    goto :goto_71

    .line 413
    .end local v3    # "aabbj":Lorg/jbox2d/collision/AABB;
    .end local v7    # "cost":F
    :cond_92
    add-int/lit8 v9, v9, 0x1

    goto :goto_5f

    .line 428
    .end local v2    # "aabbi":Lorg/jbox2d/collision/AABB;
    .end local v13    # "j":I
    :cond_95
    aget v11, v17, v10

    .line 429
    .local v11, "index1":I
    aget v12, v17, v14

    .line 430
    .local v12, "index2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v19, v0

    aget-object v5, v19, v11

    .line 431
    .local v5, "child1":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v19, v0

    aget-object v6, v19, v12

    .line 433
    .local v6, "child2":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    invoke-direct/range {p0 .. p0}, Lorg/jbox2d/collision/broadphase/DynamicTree;->allocateNode()Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-result-object v18

    .line 434
    .local v18, "parent":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    move-object/from16 v0, v18

    iput-object v5, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 435
    move-object/from16 v0, v18

    iput-object v6, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 436
    iget v0, v5, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v19, v0

    iget v0, v6, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->height:I

    .line 437
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v19, v0

    iget-object v0, v5, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v20, v0

    iget-object v0, v6, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lorg/jbox2d/collision/AABB;->combine(Lorg/jbox2d/collision/AABB;Lorg/jbox2d/collision/AABB;)V

    .line 438
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 440
    move-object/from16 v0, v18

    iput-object v0, v5, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 441
    move-object/from16 v0, v18

    iput-object v0, v6, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 443
    add-int/lit8 v19, v8, -0x1

    aget v19, v17, v19

    aput v19, v17, v14

    .line 444
    move-object/from16 v0, v18

    iget v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    move/from16 v19, v0

    aput v19, v17, v10

    .line 445
    add-int/lit8 v8, v8, -0x1

    .line 446
    goto/16 :goto_53

    .line 448
    .end local v5    # "child1":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v6    # "child2":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .end local v10    # "iMin":I
    .end local v11    # "index1":I
    .end local v12    # "index2":I
    .end local v14    # "jMin":I
    .end local v15    # "minCost":F
    .end local v18    # "parent":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v20, v17, v20

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 450
    invoke-virtual/range {p0 .. p0}, Lorg/jbox2d/collision/broadphase/DynamicTree;->validate()V

    .line 451
    return-void
.end method

.method public validate()V
    .registers 5

    .prologue
    .line 317
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    invoke-direct {p0, v2}, Lorg/jbox2d/collision/broadphase/DynamicTree;->validateStructure(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    .line 318
    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_root:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    invoke-direct {p0, v2}, Lorg/jbox2d/collision/broadphase/DynamicTree;->validateMetrics(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "freeCount":I
    iget v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_freeList:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2c

    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iget v3, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_freeList:I

    aget-object v1, v2, v3

    .line 322
    .local v1, "freeNode":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :goto_16
    if-eqz v1, :cond_45

    .line 323
    sget-boolean v2, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v2, :cond_2e

    iget v2, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    if-ltz v2, :cond_26

    iget v2, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    iget v3, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    if-lt v2, v3, :cond_2e

    :cond_26
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 321
    .end local v1    # "freeNode":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_2c
    const/4 v1, 0x0

    goto :goto_16

    .line 324
    .restart local v1    # "freeNode":Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_2e
    sget-boolean v2, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v2, :cond_40

    iget-object v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodes:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iget v3, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    aget-object v2, v2, v3

    if-eq v1, v2, :cond_40

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 325
    :cond_40
    iget-object v1, v1, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 329
    :cond_45
    sget-boolean v2, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v2, :cond_59

    invoke-virtual {p0}, Lorg/jbox2d/collision/broadphase/DynamicTree;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lorg/jbox2d/collision/broadphase/DynamicTree;->computeHeight()I

    move-result v3

    if-eq v2, v3, :cond_59

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 331
    :cond_59
    sget-boolean v2, Lorg/jbox2d/collision/broadphase/DynamicTree;->$assertionsDisabled:Z

    if-nez v2, :cond_6a

    iget v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCount:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/jbox2d/collision/broadphase/DynamicTree;->m_nodeCapacity:I

    if-eq v2, v3, :cond_6a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 332
    :cond_6a
    return-void
.end method

###### Class org.jbox2d.collision.broadphase.DynamicTree.TreeNodeStack (org.jbox2d.collision.broadphase.DynamicTree$TreeNodeStack)
.class public Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;
.super Ljava/lang/Object;
.source "DynamicTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/broadphase/DynamicTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TreeNodeStack"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private position:I

.field private size:I

.field private stack:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

.field final synthetic this$0:Lorg/jbox2d/collision/broadphase/DynamicTree;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 882
    const-class v0, Lorg/jbox2d/collision/broadphase/DynamicTree;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lorg/jbox2d/collision/broadphase/DynamicTree;I)V
    .registers 4
    .param p2, "initialSize"    # I

    .prologue
    .line 887
    iput-object p1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->this$0:Lorg/jbox2d/collision/broadphase/DynamicTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    new-array v0, p2, [Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iput-object v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->stack:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 889
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->position:I

    .line 890
    iput p2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->size:I

    .line 891
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 913
    iget v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->position:I

    return v0
.end method

.method public pop()Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    .registers 3

    .prologue
    .line 898
    sget-boolean v0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    iget v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->position:I

    if-gtz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 899
    :cond_e
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->stack:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iget v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->position:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->position:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public push(Lorg/jbox2d/collision/broadphase/DynamicTreeNode;)V
    .registers 6
    .param p1, "i"    # Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .prologue
    const/4 v3, 0x0

    .line 903
    iget v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->position:I

    iget v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->size:I

    if-ne v1, v2, :cond_1c

    .line 904
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->stack:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 905
    .local v0, "old":[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    iget v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iput-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->stack:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    .line 906
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->stack:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    array-length v1, v1

    iput v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->size:I

    .line 907
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->stack:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 909
    .end local v0    # "old":[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
    :cond_1c
    iget-object v1, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->stack:[Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    iget v2, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->position:I

    aput-object p1, v1, v2

    .line 910
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 894
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTree$TreeNodeStack;->position:I

    .line 895
    return-void
.end method
