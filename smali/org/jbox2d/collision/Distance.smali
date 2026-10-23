###### Class org.jbox2d.collision.Distance (org.jbox2d.collision.Distance)
.class public Lorg/jbox2d/collision/Distance;
.super Ljava/lang/Object;
.source "Distance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/collision/Distance$1;,
        Lorg/jbox2d/collision/Distance$DistanceProxy;,
        Lorg/jbox2d/collision/Distance$Simplex;,
        Lorg/jbox2d/collision/Distance$SimplexCache;,
        Lorg/jbox2d/collision/Distance$SimplexVertex;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static GJK_CALLS:I

.field public static GJK_ITERS:I

.field public static GJK_MAX_ITERS:I


# instance fields
.field private closestPoint:Lorg/jbox2d/common/Vec2;

.field private d:Lorg/jbox2d/common/Vec2;

.field private normal:Lorg/jbox2d/common/Vec2;

.field private saveA:[I

.field private saveB:[I

.field private simplex:Lorg/jbox2d/collision/Distance$Simplex;

.field private temp:Lorg/jbox2d/common/Vec2;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const-class v0, Lorg/jbox2d/collision/Distance;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lorg/jbox2d/collision/Distance;->$assertionsDisabled:Z

    .line 46
    sput v1, Lorg/jbox2d/collision/Distance;->GJK_CALLS:I

    .line 47
    sput v1, Lorg/jbox2d/collision/Distance;->GJK_ITERS:I

    .line 48
    const/16 v0, 0x14

    sput v0, Lorg/jbox2d/collision/Distance;->GJK_MAX_ITERS:I

    return-void

    :cond_15
    move v0, v1

    .line 44
    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    new-instance v0, Lorg/jbox2d/collision/Distance$Simplex;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jbox2d/collision/Distance$Simplex;-><init>(Lorg/jbox2d/collision/Distance;Lorg/jbox2d/collision/Distance$1;)V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance;->simplex:Lorg/jbox2d/collision/Distance$Simplex;

    .line 602
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/jbox2d/collision/Distance;->saveA:[I

    .line 603
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/jbox2d/collision/Distance;->saveB:[I

    .line 604
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance;->closestPoint:Lorg/jbox2d/common/Vec2;

    .line 605
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance;->d:Lorg/jbox2d/common/Vec2;

    .line 606
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance;->temp:Lorg/jbox2d/common/Vec2;

    .line 607
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance;->normal:Lorg/jbox2d/common/Vec2;

    return-void
.end method


# virtual methods
.method public final distance(Lorg/jbox2d/collision/DistanceOutput;Lorg/jbox2d/collision/Distance$SimplexCache;Lorg/jbox2d/collision/DistanceInput;)V
    .registers 22
    .param p1, "output"    # Lorg/jbox2d/collision/DistanceOutput;
    .param p2, "cache"    # Lorg/jbox2d/collision/Distance$SimplexCache;
    .param p3, "input"    # Lorg/jbox2d/collision/DistanceInput;

    .prologue
    .line 620
    sget v1, Lorg/jbox2d/collision/Distance;->GJK_CALLS:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/jbox2d/collision/Distance;->GJK_CALLS:I

    .line 622
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/jbox2d/collision/DistanceInput;->proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    .line 623
    .local v3, "proxyA":Lorg/jbox2d/collision/Distance$DistanceProxy;
    move-object/from16 v0, p3

    iget-object v5, v0, Lorg/jbox2d/collision/DistanceInput;->proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    .line 625
    .local v5, "proxyB":Lorg/jbox2d/collision/Distance$DistanceProxy;
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/jbox2d/collision/DistanceInput;->transformA:Lorg/jbox2d/common/Transform;

    .line 626
    .local v4, "transformA":Lorg/jbox2d/common/Transform;
    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/jbox2d/collision/DistanceInput;->transformB:Lorg/jbox2d/common/Transform;

    .line 629
    .local v6, "transformB":Lorg/jbox2d/common/Transform;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->simplex:Lorg/jbox2d/collision/Distance$Simplex;

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Lorg/jbox2d/collision/Distance$Simplex;->readCache(Lorg/jbox2d/collision/Distance$SimplexCache;Lorg/jbox2d/collision/Distance$DistanceProxy;Lorg/jbox2d/common/Transform;Lorg/jbox2d/collision/Distance$DistanceProxy;Lorg/jbox2d/common/Transform;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->simplex:Lorg/jbox2d/collision/Distance$Simplex;

    iget-object v0, v1, Lorg/jbox2d/collision/Distance$Simplex;->vertices:[Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v16, v0

    .line 637
    .local v16, "vertices":[Lorg/jbox2d/collision/Distance$SimplexVertex;
    const/4 v14, 0x0

    .line 639
    .local v14, "saveCount":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->simplex:Lorg/jbox2d/collision/Distance$Simplex;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Distance;->closestPoint:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/collision/Distance$Simplex;->getClosestPoint(Lorg/jbox2d/common/Vec2;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->closestPoint:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->lengthSquared()F

    move-result v7

    .line 641
    .local v7, "distanceSqr1":F
    move v8, v7

    .line 644
    .local v8, "distanceSqr2":F
    const/4 v11, 0x0

    .line 645
    .local v11, "iter":I
    :goto_3d
    sget v1, Lorg/jbox2d/collision/Distance;->GJK_MAX_ITERS:I

    if-ge v11, v1, :cond_84

    .line 648
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->simplex:Lorg/jbox2d/collision/Distance$Simplex;

    iget v14, v1, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    .line 649
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_48
    if-ge v10, v14, :cond_61

    .line 650
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->saveA:[I

    aget-object v2, v16, v10

    iget v2, v2, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexA:I

    aput v2, v1, v10

    .line 651
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->saveB:[I

    aget-object v2, v16, v10

    iget v2, v2, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexB:I

    aput v2, v1, v10

    .line 649
    add-int/lit8 v10, v10, 0x1

    goto :goto_48

    .line 654
    :cond_61
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->simplex:Lorg/jbox2d/collision/Distance$Simplex;

    iget v1, v1, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    packed-switch v1, :pswitch_data_22c

    .line 664
    sget-boolean v1, Lorg/jbox2d/collision/Distance;->$assertionsDisabled:Z

    if-nez v1, :cond_7b

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 658
    :pswitch_74
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->simplex:Lorg/jbox2d/collision/Distance$Simplex;

    invoke-virtual {v1}, Lorg/jbox2d/collision/Distance$Simplex;->solve2()V

    .line 668
    :cond_7b
    :goto_7b
    :pswitch_7b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->simplex:Lorg/jbox2d/collision/Distance$Simplex;

    iget v1, v1, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_13d

    .line 737
    .end local v10    # "i":I
    :cond_84
    sget v1, Lorg/jbox2d/collision/Distance;->GJK_MAX_ITERS:I

    invoke-static {v1, v11}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v1

    sput v1, Lorg/jbox2d/collision/Distance;->GJK_MAX_ITERS:I

    .line 740
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->simplex:Lorg/jbox2d/collision/Distance$Simplex;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/jbox2d/collision/DistanceOutput;->pointA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jbox2d/collision/DistanceOutput;->pointB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Lorg/jbox2d/collision/Distance$Simplex;->getWitnessPoints(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 741
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/jbox2d/collision/DistanceOutput;->pointA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/jbox2d/collision/DistanceOutput;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2}, Lorg/jbox2d/common/MathUtils;->distance(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v1

    move-object/from16 v0, p1

    iput v1, v0, Lorg/jbox2d/collision/DistanceOutput;->distance:F

    .line 742
    move-object/from16 v0, p1

    iput v11, v0, Lorg/jbox2d/collision/DistanceOutput;->iterations:I

    .line 745
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->simplex:Lorg/jbox2d/collision/Distance$Simplex;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lorg/jbox2d/collision/Distance$Simplex;->writeCache(Lorg/jbox2d/collision/Distance$SimplexCache;)V

    .line 748
    move-object/from16 v0, p3

    iget-boolean v1, v0, Lorg/jbox2d/collision/DistanceInput;->useRadii:Z

    if-eqz v1, :cond_133

    .line 749
    iget v12, v3, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_radius:F

    .line 750
    .local v12, "rA":F
    iget v13, v5, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_radius:F

    .line 752
    .local v13, "rB":F
    move-object/from16 v0, p1

    iget v1, v0, Lorg/jbox2d/collision/DistanceOutput;->distance:F

    add-float v2, v12, v13

    cmpl-float v1, v1, v2

    if-lez v1, :cond_209

    move-object/from16 v0, p1

    iget v1, v0, Lorg/jbox2d/collision/DistanceOutput;->distance:F

    const/high16 v2, 0x34000000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_209

    .line 755
    move-object/from16 v0, p1

    iget v1, v0, Lorg/jbox2d/collision/DistanceOutput;->distance:F

    add-float v2, v12, v13

    sub-float/2addr v1, v2

    move-object/from16 v0, p1

    iput v1, v0, Lorg/jbox2d/collision/DistanceOutput;->distance:F

    .line 756
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->normal:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/jbox2d/collision/DistanceOutput;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/jbox2d/collision/DistanceOutput;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 757
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 758
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Distance;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 759
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/jbox2d/collision/DistanceOutput;->pointA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Distance;->temp:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 760
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Distance;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    invoke-virtual {v1, v13}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 761
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/jbox2d/collision/DistanceOutput;->pointB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Distance;->temp:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 771
    .end local v12    # "rA":F
    .end local v13    # "rB":F
    :cond_133
    :goto_133
    return-void

    .line 661
    .restart local v10    # "i":I
    :pswitch_134
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->simplex:Lorg/jbox2d/collision/Distance$Simplex;

    invoke-virtual {v1}, Lorg/jbox2d/collision/Distance$Simplex;->solve3()V

    goto/16 :goto_7b

    .line 673
    :cond_13d
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->simplex:Lorg/jbox2d/collision/Distance$Simplex;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Distance;->closestPoint:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/collision/Distance$Simplex;->getClosestPoint(Lorg/jbox2d/common/Vec2;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->closestPoint:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->lengthSquared()F

    move-result v8

    .line 677
    cmpl-float v1, v8, v7

    if-ltz v1, :cond_154

    .line 680
    :cond_154
    move v7, v8

    .line 683
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->simplex:Lorg/jbox2d/collision/Distance$Simplex;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Distance;->d:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/collision/Distance$Simplex;->getSearchDirection(Lorg/jbox2d/common/Vec2;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->d:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->lengthSquared()F

    move-result v1

    const/high16 v2, 0x28800000

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_84

    .line 704
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->simplex:Lorg/jbox2d/collision/Distance$Simplex;

    iget v1, v1, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    aget-object v15, v16, v1

    .line 706
    .local v15, "vertex":Lorg/jbox2d/collision/Distance$SimplexVertex;
    iget-object v1, v4, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Distance;->d:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v1, v2, v0}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->temp:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v3, v1}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getSupport(Lorg/jbox2d/common/Vec2;)I

    move-result v1

    iput v1, v15, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexA:I

    .line 708
    iget v1, v15, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexA:I

    invoke-virtual {v3, v1}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, v15, Lorg/jbox2d/collision/Distance$SimplexVertex;->wA:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v1, v2}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 710
    iget-object v1, v6, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Distance;->d:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance;->temp:Lorg/jbox2d/common/Vec2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v1, v2, v0}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->temp:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v5, v1}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getSupport(Lorg/jbox2d/common/Vec2;)I

    move-result v1

    iput v1, v15, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexB:I

    .line 712
    iget v1, v15, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexB:I

    invoke-virtual {v5, v1}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, v15, Lorg/jbox2d/collision/Distance$SimplexVertex;->wB:Lorg/jbox2d/common/Vec2;

    invoke-static {v6, v1, v2}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 713
    iget-object v1, v15, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    iget-object v2, v15, Lorg/jbox2d/collision/Distance$SimplexVertex;->wB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, v15, Lorg/jbox2d/collision/Distance$SimplexVertex;->wA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 716
    add-int/lit8 v11, v11, 0x1

    .line 717
    sget v1, Lorg/jbox2d/collision/Distance;->GJK_ITERS:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/jbox2d/collision/Distance;->GJK_ITERS:I

    .line 720
    const/4 v9, 0x0

    .line 721
    .local v9, "duplicate":Z
    const/4 v10, 0x0

    :goto_1e1
    if-ge v10, v14, :cond_1f8

    .line 722
    iget v1, v15, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexA:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Distance;->saveA:[I

    aget v2, v2, v10

    if-ne v1, v2, :cond_206

    iget v1, v15, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexB:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/Distance;->saveB:[I

    aget v2, v2, v10

    if-ne v1, v2, :cond_206

    .line 723
    const/4 v9, 0x1

    .line 729
    :cond_1f8
    if-nez v9, :cond_84

    .line 734
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jbox2d/collision/Distance;->simplex:Lorg/jbox2d/collision/Distance$Simplex;

    iget v2, v1, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    goto/16 :goto_3d

    .line 721
    :cond_206
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e1

    .line 766
    .end local v9    # "duplicate":Z
    .end local v10    # "i":I
    .end local v15    # "vertex":Lorg/jbox2d/collision/Distance$SimplexVertex;
    .restart local v12    # "rA":F
    .restart local v13    # "rB":F
    :cond_209
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/jbox2d/collision/DistanceOutput;->pointA:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/jbox2d/collision/DistanceOutput;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 767
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/jbox2d/collision/DistanceOutput;->pointB:Lorg/jbox2d/common/Vec2;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/jbox2d/collision/DistanceOutput;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 768
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Lorg/jbox2d/collision/DistanceOutput;->distance:F

    goto/16 :goto_133

    .line 654
    :pswitch_data_22c
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_74
        :pswitch_134
    .end packed-switch
.end method

###### Class org.jbox2d.collision.Distance.AnonymousClass1 (org.jbox2d.collision.Distance$1)
.class synthetic Lorg/jbox2d/collision/Distance$1;
.super Ljava/lang/Object;
.source "Distance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/Distance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jbox2d$collision$shapes$ShapeType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 496
    invoke-static {}, Lorg/jbox2d/collision/shapes/ShapeType;->values()[Lorg/jbox2d/collision/shapes/ShapeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jbox2d/collision/Distance$1;->$SwitchMap$org$jbox2d$collision$shapes$ShapeType:[I

    :try_start_9
    sget-object v0, Lorg/jbox2d/collision/Distance$1;->$SwitchMap$org$jbox2d$collision$shapes$ShapeType:[I

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->CIRCLE:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-virtual {v1}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c

    :goto_14
    :try_start_14
    sget-object v0, Lorg/jbox2d/collision/Distance$1;->$SwitchMap$org$jbox2d$collision$shapes$ShapeType:[I

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->POLYGON:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-virtual {v1}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3a

    :goto_1f
    :try_start_1f
    sget-object v0, Lorg/jbox2d/collision/Distance$1;->$SwitchMap$org$jbox2d$collision$shapes$ShapeType:[I

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->CHAIN:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-virtual {v1}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2a
    sget-object v0, Lorg/jbox2d/collision/Distance$1;->$SwitchMap$org$jbox2d$collision$shapes$ShapeType:[I

    sget-object v1, Lorg/jbox2d/collision/shapes/ShapeType;->EDGE:Lorg/jbox2d/collision/shapes/ShapeType;

    invoke-virtual {v1}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35

    :catch_38
    move-exception v0

    goto :goto_2a

    :catch_3a
    move-exception v0

    goto :goto_1f

    :catch_3c
    move-exception v0

    goto :goto_14
.end method

###### Class org.jbox2d.collision.Distance.DistanceProxy (org.jbox2d.collision.Distance$DistanceProxy)
.class public Lorg/jbox2d/collision/Distance$DistanceProxy;
.super Ljava/lang/Object;
.source "Distance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/Distance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DistanceProxy"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final m_buffer:[Lorg/jbox2d/common/Vec2;

.field public m_count:I

.field public m_radius:F

.field public final m_vertices:[Lorg/jbox2d/common/Vec2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 475
    const-class v0, Lorg/jbox2d/collision/Distance;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/collision/Distance$DistanceProxy;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    const/16 v1, 0x8

    new-array v1, v1, [Lorg/jbox2d/common/Vec2;

    iput-object v1, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_vertices:[Lorg/jbox2d/common/Vec2;

    .line 483
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_vertices:[Lorg/jbox2d/common/Vec2;

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    .line 484
    iget-object v1, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_vertices:[Lorg/jbox2d/common/Vec2;

    new-instance v2, Lorg/jbox2d/common/Vec2;

    invoke-direct {v2}, Lorg/jbox2d/common/Vec2;-><init>()V

    aput-object v2, v1, v0

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 486
    :cond_1b
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jbox2d/common/Vec2;

    iput-object v1, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_buffer:[Lorg/jbox2d/common/Vec2;

    .line 487
    const/4 v1, 0x0

    iput v1, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_count:I

    .line 488
    const/4 v1, 0x0

    iput v1, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_radius:F

    .line 489
    return-void
.end method


# virtual methods
.method public final getSupport(Lorg/jbox2d/common/Vec2;)I
    .registers 8
    .param p1, "d"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "bestIndex":I
    iget-object v4, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_vertices:[Lorg/jbox2d/common/Vec2;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4, p1}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v1

    .line 549
    .local v1, "bestValue":F
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_b
    iget v4, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_count:I

    if-ge v2, v4, :cond_20

    .line 550
    iget-object v4, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v4, v4, v2

    invoke-static {v4, p1}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v3

    .line 551
    .local v3, "value":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1d

    .line 552
    move v0, v2

    .line 553
    move v1, v3

    .line 549
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 557
    .end local v3    # "value":F
    :cond_20
    return v0
.end method

.method public final getSupportVertex(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 8
    .param p1, "d"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "bestIndex":I
    iget-object v4, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_vertices:[Lorg/jbox2d/common/Vec2;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4, p1}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v1

    .line 569
    .local v1, "bestValue":F
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_b
    iget v4, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_count:I

    if-ge v2, v4, :cond_20

    .line 570
    iget-object v4, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v4, v4, v2

    invoke-static {v4, p1}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v3

    .line 571
    .local v3, "value":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1d

    .line 572
    move v0, v2

    .line 573
    move v1, v3

    .line 569
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 577
    .end local v3    # "value":F
    :cond_20
    iget-object v4, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v4, v4, v0

    return-object v4
.end method

.method public final getVertex(I)Lorg/jbox2d/common/Vec2;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 596
    sget-boolean v0, Lorg/jbox2d/collision/Distance$DistanceProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    if-ltz p1, :cond_a

    iget v0, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_count:I

    if-lt p1, v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 597
    :cond_10
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getVertexCount()I
    .registers 2

    .prologue
    .line 586
    iget v0, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_count:I

    return v0
.end method

.method public final set(Lorg/jbox2d/collision/shapes/Shape;I)V
    .registers 14
    .param p1, "shape"    # Lorg/jbox2d/collision/shapes/Shape;
    .param p2, "index"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 496
    sget-object v5, Lorg/jbox2d/collision/Distance$1;->$SwitchMap$org$jbox2d$collision$shapes$ShapeType:[I

    invoke-virtual {p1}, Lorg/jbox2d/collision/shapes/Shape;->getType()Lorg/jbox2d/collision/shapes/ShapeType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jbox2d/collision/shapes/ShapeType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_bc

    .line 536
    sget-boolean v5, Lorg/jbox2d/collision/Distance$DistanceProxy;->$assertionsDisabled:Z

    if-nez v5, :cond_2e

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :pswitch_1c
    move-object v1, p1

    .line 498
    check-cast v1, Lorg/jbox2d/collision/shapes/CircleShape;

    .line 499
    .local v1, "circle":Lorg/jbox2d/collision/shapes/CircleShape;
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v5, v5, v8

    iget-object v6, v1, Lorg/jbox2d/collision/shapes/CircleShape;->m_p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v5, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 500
    iput v9, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_count:I

    .line 501
    iget v5, v1, Lorg/jbox2d/collision/shapes/CircleShape;->m_radius:F

    iput v5, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_radius:F

    .line 538
    .end local v1    # "circle":Lorg/jbox2d/collision/shapes/CircleShape;
    :cond_2e
    :goto_2e
    return-void

    :pswitch_2f
    move-object v4, p1

    .line 505
    check-cast v4, Lorg/jbox2d/collision/shapes/PolygonShape;

    .line 506
    .local v4, "poly":Lorg/jbox2d/collision/shapes/PolygonShape;
    iget v5, v4, Lorg/jbox2d/collision/shapes/PolygonShape;->m_count:I

    iput v5, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_count:I

    .line 507
    iget v5, v4, Lorg/jbox2d/collision/shapes/PolygonShape;->m_radius:F

    iput v5, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_radius:F

    .line 508
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3b
    iget v5, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_count:I

    if-ge v3, v5, :cond_2e

    .line 509
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v5, v5, v3

    iget-object v6, v4, Lorg/jbox2d/collision/shapes/PolygonShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 508
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .end local v3    # "i":I
    .end local v4    # "poly":Lorg/jbox2d/collision/shapes/PolygonShape;
    :pswitch_4d
    move-object v0, p1

    .line 513
    check-cast v0, Lorg/jbox2d/collision/shapes/ChainShape;

    .line 514
    .local v0, "chain":Lorg/jbox2d/collision/shapes/ChainShape;
    sget-boolean v5, Lorg/jbox2d/collision/Distance$DistanceProxy;->$assertionsDisabled:Z

    if-nez v5, :cond_60

    if-ltz p2, :cond_5a

    iget v5, v0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    if-lt p2, v5, :cond_60

    :cond_5a
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 516
    :cond_60
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_buffer:[Lorg/jbox2d/common/Vec2;

    iget-object v6, v0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v6, v6, p2

    aput-object v6, v5, v8

    .line 517
    add-int/lit8 v5, p2, 0x1

    iget v6, v0, Lorg/jbox2d/collision/shapes/ChainShape;->m_count:I

    if-ge v5, v6, :cond_95

    .line 518
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_buffer:[Lorg/jbox2d/common/Vec2;

    iget-object v6, v0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    add-int/lit8 v7, p2, 0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v9

    .line 523
    :goto_78
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v5, v5, v8

    iget-object v6, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_buffer:[Lorg/jbox2d/common/Vec2;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 524
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v5, v5, v9

    iget-object v6, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_buffer:[Lorg/jbox2d/common/Vec2;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 525
    iput v10, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_count:I

    .line 526
    iget v5, v0, Lorg/jbox2d/collision/shapes/ChainShape;->m_radius:F

    iput v5, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_radius:F

    goto :goto_2e

    .line 520
    :cond_95
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_buffer:[Lorg/jbox2d/common/Vec2;

    iget-object v6, v0, Lorg/jbox2d/collision/shapes/ChainShape;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v6, v6, v8

    aput-object v6, v5, v9

    goto :goto_78

    .end local v0    # "chain":Lorg/jbox2d/collision/shapes/ChainShape;
    :pswitch_9e
    move-object v2, p1

    .line 529
    check-cast v2, Lorg/jbox2d/collision/shapes/EdgeShape;

    .line 530
    .local v2, "edge":Lorg/jbox2d/collision/shapes/EdgeShape;
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v5, v5, v8

    iget-object v6, v2, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v5, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 531
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_vertices:[Lorg/jbox2d/common/Vec2;

    aget-object v5, v5, v9

    iget-object v6, v2, Lorg/jbox2d/collision/shapes/EdgeShape;->m_vertex2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v5, v6}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 532
    iput v10, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_count:I

    .line 533
    iget v5, v2, Lorg/jbox2d/collision/shapes/EdgeShape;->m_radius:F

    iput v5, p0, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_radius:F

    goto/16 :goto_2e

    .line 496
    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_2f
        :pswitch_4d
        :pswitch_9e
    .end packed-switch
.end method

###### Class org.jbox2d.collision.Distance.Simplex (org.jbox2d.collision.Distance$Simplex)
.class Lorg/jbox2d/collision/Distance$Simplex;
.super Ljava/lang/Object;
.source "Distance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/Distance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Simplex"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final case2:Lorg/jbox2d/common/Vec2;

.field private final case22:Lorg/jbox2d/common/Vec2;

.field private final case3:Lorg/jbox2d/common/Vec2;

.field private final case33:Lorg/jbox2d/common/Vec2;

.field private final e12:Lorg/jbox2d/common/Vec2;

.field private final e13:Lorg/jbox2d/common/Vec2;

.field private final e23:Lorg/jbox2d/common/Vec2;

.field public m_count:I

.field public final m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

.field public final m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

.field public final m_v3:Lorg/jbox2d/collision/Distance$SimplexVertex;

.field final synthetic this$0:Lorg/jbox2d/collision/Distance;

.field public final vertices:[Lorg/jbox2d/collision/Distance$SimplexVertex;

.field private final w1:Lorg/jbox2d/common/Vec2;

.field private final w2:Lorg/jbox2d/common/Vec2;

.field private final w3:Lorg/jbox2d/common/Vec2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 104
    const-class v0, Lorg/jbox2d/collision/Distance;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/collision/Distance$Simplex;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lorg/jbox2d/collision/Distance;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 104
    iput-object p1, p0, Lorg/jbox2d/collision/Distance$Simplex;->this$0:Lorg/jbox2d/collision/Distance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->this$0:Lorg/jbox2d/collision/Distance;

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/collision/Distance$SimplexVertex;-><init>(Lorg/jbox2d/collision/Distance;Lorg/jbox2d/collision/Distance$1;)V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    .line 106
    new-instance v0, Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->this$0:Lorg/jbox2d/collision/Distance;

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/collision/Distance$SimplexVertex;-><init>(Lorg/jbox2d/collision/Distance;Lorg/jbox2d/collision/Distance$1;)V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    .line 107
    new-instance v0, Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->this$0:Lorg/jbox2d/collision/Distance;

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/collision/Distance$SimplexVertex;-><init>(Lorg/jbox2d/collision/Distance;Lorg/jbox2d/collision/Distance$1;)V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v3:Lorg/jbox2d/collision/Distance$SimplexVertex;

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jbox2d/collision/Distance$SimplexVertex;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v3:Lorg/jbox2d/collision/Distance$SimplexVertex;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->vertices:[Lorg/jbox2d/collision/Distance$SimplexVertex;

    .line 165
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->e12:Lorg/jbox2d/common/Vec2;

    .line 195
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->case2:Lorg/jbox2d/common/Vec2;

    .line 196
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->case22:Lorg/jbox2d/common/Vec2;

    .line 228
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->case3:Lorg/jbox2d/common/Vec2;

    .line 229
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->case33:Lorg/jbox2d/common/Vec2;

    .line 352
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->e13:Lorg/jbox2d/common/Vec2;

    .line 353
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->e23:Lorg/jbox2d/common/Vec2;

    .line 354
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->w1:Lorg/jbox2d/common/Vec2;

    .line 355
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->w2:Lorg/jbox2d/common/Vec2;

    .line 356
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->w3:Lorg/jbox2d/common/Vec2;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jbox2d/collision/Distance;Lorg/jbox2d/collision/Distance$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/jbox2d/collision/Distance;
    .param p2, "x1"    # Lorg/jbox2d/collision/Distance$1;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lorg/jbox2d/collision/Distance$Simplex;-><init>(Lorg/jbox2d/collision/Distance;)V

    return-void
.end method


# virtual methods
.method public getClosestPoint(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 204
    iget v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    packed-switch v0, :pswitch_data_5c

    .line 221
    sget-boolean v0, Lorg/jbox2d/collision/Distance$Simplex;->$assertionsDisabled:Z

    if-nez v0, :cond_57

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :pswitch_f
    sget-boolean v0, Lorg/jbox2d/collision/Distance$Simplex;->$assertionsDisabled:Z

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 207
    :cond_19
    invoke-virtual {p1}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 223
    :goto_1c
    return-void

    .line 210
    :pswitch_1d
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p1, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    goto :goto_1c

    .line 213
    :pswitch_25
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->case22:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 214
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->case2:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->case22:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 215
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->case2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p1, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    goto :goto_1c

    .line 218
    :pswitch_53
    invoke-virtual {p1}, Lorg/jbox2d/common/Vec2;->setZero()V

    goto :goto_1c

    .line 222
    :cond_57
    invoke-virtual {p1}, Lorg/jbox2d/common/Vec2;->setZero()V

    goto :goto_1c

    .line 204
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_1d
        :pswitch_25
        :pswitch_53
    .end packed-switch
.end method

.method public getMetric()F
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 270
    iget v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    packed-switch v1, :pswitch_data_52

    .line 288
    sget-boolean v1, Lorg/jbox2d/collision/Distance$Simplex;->$assertionsDisabled:Z

    if-nez v1, :cond_26

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 272
    :pswitch_10
    sget-boolean v1, Lorg/jbox2d/collision/Distance$Simplex;->$assertionsDisabled:Z

    if-nez v1, :cond_26

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 279
    :pswitch_1a
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    invoke-static {v0, v1}, Lorg/jbox2d/common/MathUtils;->distance(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    .line 289
    :cond_26
    :goto_26
    :pswitch_26
    return v0

    .line 282
    :pswitch_27
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->case3:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 283
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->case33:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v3:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 285
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->case3:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->case33:Lorg/jbox2d/common/Vec2;

    invoke-static {v0, v1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    goto :goto_26

    .line 270
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_10
        :pswitch_26
        :pswitch_1a
        :pswitch_27
    .end packed-switch
.end method

.method public final getSearchDirection(Lorg/jbox2d/common/Vec2;)V
    .registers 6
    .param p1, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 168
    iget v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    packed-switch v1, :pswitch_data_54

    .line 188
    sget-boolean v1, Lorg/jbox2d/collision/Distance$Simplex;->$assertionsDisabled:Z

    if-nez v1, :cond_50

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 170
    :pswitch_11
    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p1, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 190
    :goto_1c
    return-void

    .line 173
    :pswitch_1d
    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->e12:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v2, v2, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v2, v2, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 175
    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p1, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 176
    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->e12:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, p1}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    .line 178
    .local v0, "sgn":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4a

    .line 180
    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->e12:Lorg/jbox2d/common/Vec2;

    invoke-static {v3, v1, p1}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(FLorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    goto :goto_1c

    .line 184
    :cond_4a
    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->e12:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v3, p1}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;)V

    goto :goto_1c

    .line 189
    .end local v0    # "sgn":F
    :cond_50
    invoke-virtual {p1}, Lorg/jbox2d/common/Vec2;->setZero()V

    goto :goto_1c

    .line 168
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1d
    .end packed-switch
.end method

.method public getWitnessPoints(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 5
    .param p1, "pA"    # Lorg/jbox2d/common/Vec2;
    .param p2, "pB"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 232
    iget v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    packed-switch v0, :pswitch_data_b6

    .line 263
    sget-boolean v0, Lorg/jbox2d/collision/Distance$Simplex;->$assertionsDisabled:Z

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 234
    :pswitch_f
    sget-boolean v0, Lorg/jbox2d/collision/Distance$Simplex;->$assertionsDisabled:Z

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 238
    :pswitch_19
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$SimplexVertex;->wA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p1, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 239
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$SimplexVertex;->wB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 266
    :cond_27
    :goto_27
    return-void

    .line 243
    :pswitch_28
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->case2:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->wA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 244
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$SimplexVertex;->wA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p1, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->case2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 247
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->case2:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->wB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 248
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$SimplexVertex;->wB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p2, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->case2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    goto :goto_27

    .line 253
    :pswitch_75
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$SimplexVertex;->wA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p1, v0}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 254
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->case3:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->wA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 255
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->case33:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v3:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->wA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v3:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget v1, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 256
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$Simplex;->case3:Lorg/jbox2d/common/Vec2;

    invoke-virtual {p1, v0}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->case33:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 257
    invoke-virtual {p2, p1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    goto/16 :goto_27

    .line 232
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_f
        :pswitch_19
        :pswitch_28
        :pswitch_75
    .end packed-switch
.end method

.method public readCache(Lorg/jbox2d/collision/Distance$SimplexCache;Lorg/jbox2d/collision/Distance$DistanceProxy;Lorg/jbox2d/common/Transform;Lorg/jbox2d/collision/Distance$DistanceProxy;Lorg/jbox2d/common/Transform;)V
    .registers 16
    .param p1, "cache"    # Lorg/jbox2d/collision/Distance$SimplexCache;
    .param p2, "proxyA"    # Lorg/jbox2d/collision/Distance$DistanceProxy;
    .param p3, "transformA"    # Lorg/jbox2d/common/Transform;
    .param p4, "proxyB"    # Lorg/jbox2d/collision/Distance$DistanceProxy;
    .param p5, "transformB"    # Lorg/jbox2d/common/Transform;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 113
    sget-boolean v6, Lorg/jbox2d/collision/Distance$Simplex;->$assertionsDisabled:Z

    if-nez v6, :cond_11

    iget v6, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->count:I

    const/4 v7, 0x3

    if-le v6, v7, :cond_11

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 116
    :cond_11
    iget v6, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->count:I

    iput v6, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    iget v6, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    if-ge v0, v6, :cond_53

    .line 119
    iget-object v6, p0, Lorg/jbox2d/collision/Distance$Simplex;->vertices:[Lorg/jbox2d/collision/Distance$SimplexVertex;

    aget-object v3, v6, v0

    .line 120
    .local v3, "v":Lorg/jbox2d/collision/Distance$SimplexVertex;
    iget-object v6, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->indexA:[I

    aget v6, v6, v0

    iput v6, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexA:I

    .line 121
    iget-object v6, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->indexB:[I

    aget v6, v6, v0

    iput v6, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexB:I

    .line 122
    iget v6, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexA:I

    invoke-virtual {p2, v6}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 123
    .local v4, "wALocal":Lorg/jbox2d/common/Vec2;
    iget v6, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexB:I

    invoke-virtual {p4, v6}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 124
    .local v5, "wBLocal":Lorg/jbox2d/common/Vec2;
    iget-object v6, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->wA:Lorg/jbox2d/common/Vec2;

    invoke-static {p3, v4, v6}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 125
    iget-object v6, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->wB:Lorg/jbox2d/common/Vec2;

    invoke-static {p5, v5, v6}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 126
    iget-object v6, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    iget-object v7, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->wB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    iget-object v7, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->wA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 127
    const/4 v6, 0x0

    iput v6, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 132
    .end local v3    # "v":Lorg/jbox2d/collision/Distance$SimplexVertex;
    .end local v4    # "wALocal":Lorg/jbox2d/common/Vec2;
    .end local v5    # "wBLocal":Lorg/jbox2d/common/Vec2;
    :cond_53
    iget v6, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    if-le v6, v9, :cond_73

    .line 133
    iget v1, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->metric:F

    .line 134
    .local v1, "metric1":F
    invoke-virtual {p0}, Lorg/jbox2d/collision/Distance$Simplex;->getMetric()F

    move-result v2

    .line 135
    .local v2, "metric2":F
    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v1

    cmpg-float v6, v2, v6

    if-ltz v6, :cond_71

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v1

    cmpg-float v6, v6, v2

    if-ltz v6, :cond_71

    const/high16 v6, 0x34000000

    cmpg-float v6, v2, v6

    if-gez v6, :cond_73

    .line 137
    :cond_71
    iput v8, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    .line 142
    .end local v1    # "metric1":F
    .end local v2    # "metric2":F
    :cond_73
    iget v6, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    if-nez v6, :cond_a0

    .line 143
    iget-object v6, p0, Lorg/jbox2d/collision/Distance$Simplex;->vertices:[Lorg/jbox2d/collision/Distance$SimplexVertex;

    aget-object v3, v6, v8

    .line 144
    .restart local v3    # "v":Lorg/jbox2d/collision/Distance$SimplexVertex;
    iput v8, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexA:I

    .line 145
    iput v8, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexB:I

    .line 146
    invoke-virtual {p2, v8}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    .line 147
    .restart local v4    # "wALocal":Lorg/jbox2d/common/Vec2;
    invoke-virtual {p4, v8}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    .line 148
    .restart local v5    # "wBLocal":Lorg/jbox2d/common/Vec2;
    iget-object v6, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->wA:Lorg/jbox2d/common/Vec2;

    invoke-static {p3, v4, v6}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 149
    iget-object v6, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->wB:Lorg/jbox2d/common/Vec2;

    invoke-static {p5, v5, v6}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 150
    iget-object v6, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    iget-object v7, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->wB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v6

    iget-object v7, v3, Lorg/jbox2d/collision/Distance$SimplexVertex;->wA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v6, v7}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 151
    iput v9, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    .line 153
    .end local v3    # "v":Lorg/jbox2d/collision/Distance$SimplexVertex;
    .end local v4    # "wALocal":Lorg/jbox2d/common/Vec2;
    .end local v5    # "wBLocal":Lorg/jbox2d/common/Vec2;
    :cond_a0
    return-void
.end method

.method public solve2()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 321
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v3, v5, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    .line 322
    .local v3, "w1":Lorg/jbox2d/common/Vec2;
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v4, v5, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    .line 323
    .local v4, "w2":Lorg/jbox2d/common/Vec2;
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$Simplex;->e12:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v5, v4}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 326
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$Simplex;->e12:Lorg/jbox2d/common/Vec2;

    invoke-static {v3, v5}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v5

    neg-float v1, v5

    .line 327
    .local v1, "d12_2":F
    cmpg-float v5, v1, v7

    if-gtz v5, :cond_27

    .line 329
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iput v6, v5, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 330
    iput v8, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    .line 349
    :goto_26
    return-void

    .line 335
    :cond_27
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$Simplex;->e12:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    .line 336
    .local v0, "d12_1":F
    cmpg-float v5, v0, v7

    if-gtz v5, :cond_3f

    .line 338
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iput v6, v5, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 339
    iput v8, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    .line 340
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    iget-object v6, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    invoke-virtual {v5, v6}, Lorg/jbox2d/collision/Distance$SimplexVertex;->set(Lorg/jbox2d/collision/Distance$SimplexVertex;)V

    goto :goto_26

    .line 345
    :cond_3f
    add-float v5, v0, v1

    div-float v2, v6, v5

    .line 346
    .local v2, "inv_d12":F
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    mul-float v6, v0, v2

    iput v6, v5, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 347
    iget-object v5, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    mul-float v6, v1, v2

    iput v6, v5, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 348
    const/4 v5, 0x2

    iput v5, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    goto :goto_26
.end method

.method public solve3()V
    .registers 25

    .prologue
    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w3:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v3:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->e12:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->e12:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v16

    .line 377
    .local v16, "w1e12":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->e12:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v18

    .line 378
    .local v18, "w2e12":F
    move/from16 v5, v18

    .line 379
    .local v5, "d12_1":F
    move/from16 v0, v16

    neg-float v6, v0

    .line 385
    .local v6, "d12_2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->e13:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w3:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->e13:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v17

    .line 387
    .local v17, "w1e13":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w3:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->e13:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v20

    .line 388
    .local v20, "w3e13":F
    move/from16 v7, v20

    .line 389
    .local v7, "d13_1":F
    move/from16 v0, v17

    neg-float v8, v0

    .line 395
    .local v8, "d13_2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->e23:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w3:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->e23:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v19

    .line 397
    .local v19, "w2e23":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w3:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->e23:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v21

    .line 398
    .local v21, "w3e23":F
    move/from16 v9, v21

    .line 399
    .local v9, "d23_1":F
    move/from16 v0, v19

    neg-float v10, v0

    .line 402
    .local v10, "d23_2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->e12:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->e13:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v15

    .line 404
    .local v15, "n123":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w3:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v22

    mul-float v2, v15, v22

    .line 405
    .local v2, "d123_1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w3:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v22

    mul-float v3, v15, v22

    .line 406
    .local v3, "d123_2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w1:Lorg/jbox2d/common/Vec2;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->w2:Lorg/jbox2d/common/Vec2;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lorg/jbox2d/common/Vec2;->cross(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v22

    mul-float v4, v15, v22

    .line 409
    .local v4, "d123_3":F
    const/16 v22, 0x0

    cmpg-float v22, v6, v22

    if-gtz v22, :cond_162

    const/16 v22, 0x0

    cmpg-float v22, v8, v22

    if-gtz v22, :cond_162

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 411
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    .line 466
    :goto_161
    return-void

    .line 416
    :cond_162
    const/16 v22, 0x0

    cmpl-float v22, v5, v22

    if-lez v22, :cond_19f

    const/16 v22, 0x0

    cmpl-float v22, v6, v22

    if-lez v22, :cond_19f

    const/16 v22, 0x0

    cmpg-float v22, v4, v22

    if-gtz v22, :cond_19f

    .line 417
    const/high16 v22, 0x3f800000    # 1.0f

    add-float v23, v5, v6

    div-float v11, v22, v23

    .line 418
    .local v11, "inv_d12":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v22, v0

    mul-float v23, v5, v11

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v22, v0

    mul-float v23, v6, v11

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 420
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    goto :goto_161

    .line 425
    .end local v11    # "inv_d12":F
    :cond_19f
    const/16 v22, 0x0

    cmpl-float v22, v7, v22

    if-lez v22, :cond_1ec

    const/16 v22, 0x0

    cmpl-float v22, v8, v22

    if-lez v22, :cond_1ec

    const/16 v22, 0x0

    cmpg-float v22, v3, v22

    if-gtz v22, :cond_1ec

    .line 426
    const/high16 v22, 0x3f800000    # 1.0f

    add-float v23, v7, v8

    div-float v13, v22, v23

    .line 427
    .local v13, "inv_d13":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v22, v0

    mul-float v23, v7, v13

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v3:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v22, v0

    mul-float v23, v8, v13

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 429
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v3:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/collision/Distance$SimplexVertex;->set(Lorg/jbox2d/collision/Distance$SimplexVertex;)V

    goto/16 :goto_161

    .line 435
    .end local v13    # "inv_d13":F
    :cond_1ec
    const/16 v22, 0x0

    cmpg-float v22, v5, v22

    if-gtz v22, :cond_21f

    const/16 v22, 0x0

    cmpg-float v22, v10, v22

    if-gtz v22, :cond_21f

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 437
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/collision/Distance$SimplexVertex;->set(Lorg/jbox2d/collision/Distance$SimplexVertex;)V

    goto/16 :goto_161

    .line 443
    :cond_21f
    const/16 v22, 0x0

    cmpg-float v22, v7, v22

    if-gtz v22, :cond_252

    const/16 v22, 0x0

    cmpg-float v22, v9, v22

    if-gtz v22, :cond_252

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v3:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 445
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v3:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/collision/Distance$SimplexVertex;->set(Lorg/jbox2d/collision/Distance$SimplexVertex;)V

    goto/16 :goto_161

    .line 451
    :cond_252
    const/16 v22, 0x0

    cmpl-float v22, v9, v22

    if-lez v22, :cond_29f

    const/16 v22, 0x0

    cmpl-float v22, v10, v22

    if-lez v22, :cond_29f

    const/16 v22, 0x0

    cmpg-float v22, v2, v22

    if-gtz v22, :cond_29f

    .line 452
    const/high16 v22, 0x3f800000    # 1.0f

    add-float v23, v9, v10

    div-float v14, v22, v23

    .line 453
    .local v14, "inv_d23":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v22, v0

    mul-float v23, v9, v14

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v3:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v22, v0

    mul-float v23, v10, v14

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 455
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v3:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/jbox2d/collision/Distance$SimplexVertex;->set(Lorg/jbox2d/collision/Distance$SimplexVertex;)V

    goto/16 :goto_161

    .line 461
    .end local v14    # "inv_d23":F
    :cond_29f
    const/high16 v22, 0x3f800000    # 1.0f

    add-float v23, v2, v3

    add-float v23, v23, v4

    div-float v12, v22, v23

    .line 462
    .local v12, "inv_d123":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v1:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v22, v0

    mul-float v23, v2, v12

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v2:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v22, v0

    mul-float v23, v3, v12

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jbox2d/collision/Distance$Simplex;->m_v3:Lorg/jbox2d/collision/Distance$SimplexVertex;

    move-object/from16 v22, v0

    mul-float v23, v4, v12

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 465
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    goto/16 :goto_161
.end method

.method public writeCache(Lorg/jbox2d/collision/Distance$SimplexCache;)V
    .registers 5
    .param p1, "cache"    # Lorg/jbox2d/collision/Distance$SimplexCache;

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/jbox2d/collision/Distance$Simplex;->getMetric()F

    move-result v1

    iput v1, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->metric:F

    .line 157
    iget v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    iput v1, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->count:I

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget v1, p0, Lorg/jbox2d/collision/Distance$Simplex;->m_count:I

    if-ge v0, v1, :cond_26

    .line 160
    iget-object v1, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->indexA:[I

    iget-object v2, p0, Lorg/jbox2d/collision/Distance$Simplex;->vertices:[Lorg/jbox2d/collision/Distance$SimplexVertex;

    aget-object v2, v2, v0

    iget v2, v2, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexA:I

    aput v2, v1, v0

    .line 161
    iget-object v1, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->indexB:[I

    iget-object v2, p0, Lorg/jbox2d/collision/Distance$Simplex;->vertices:[Lorg/jbox2d/collision/Distance$SimplexVertex;

    aget-object v2, v2, v0

    iget v2, v2, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexB:I

    aput v2, v1, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 163
    :cond_26
    return-void
.end method

###### Class org.jbox2d.collision.Distance.SimplexCache (org.jbox2d.collision.Distance$SimplexCache)
.class public Lorg/jbox2d/collision/Distance$SimplexCache;
.super Ljava/lang/Object;
.source "Distance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/Distance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplexCache"
.end annotation


# instance fields
.field public count:I

.field public final indexA:[I

.field public final indexB:[I

.field public metric:F


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, 0x7fffffff

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-array v0, v5, [I

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$SimplexCache;->indexA:[I

    .line 83
    new-array v0, v5, [I

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$SimplexCache;->indexB:[I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/collision/Distance$SimplexCache;->metric:F

    .line 87
    iput v2, p0, Lorg/jbox2d/collision/Distance$SimplexCache;->count:I

    .line 88
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$SimplexCache;->indexA:[I

    aput v1, v0, v2

    .line 89
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$SimplexCache;->indexA:[I

    aput v1, v0, v3

    .line 90
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$SimplexCache;->indexA:[I

    aput v1, v0, v4

    .line 91
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$SimplexCache;->indexB:[I

    aput v1, v0, v2

    .line 92
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$SimplexCache;->indexB:[I

    aput v1, v0, v3

    .line 93
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$SimplexCache;->indexB:[I

    aput v1, v0, v4

    .line 94
    return-void
.end method


# virtual methods
.method public set(Lorg/jbox2d/collision/Distance$SimplexCache;)V
    .registers 6
    .param p1, "sc"    # Lorg/jbox2d/collision/Distance$SimplexCache;

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-object v0, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->indexA:[I

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$SimplexCache;->indexA:[I

    iget-object v2, p0, Lorg/jbox2d/collision/Distance$SimplexCache;->indexA:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget-object v0, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->indexB:[I

    iget-object v1, p0, Lorg/jbox2d/collision/Distance$SimplexCache;->indexB:[I

    iget-object v2, p0, Lorg/jbox2d/collision/Distance$SimplexCache;->indexB:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget v0, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->metric:F

    iput v0, p0, Lorg/jbox2d/collision/Distance$SimplexCache;->metric:F

    .line 100
    iget v0, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->count:I

    iput v0, p0, Lorg/jbox2d/collision/Distance$SimplexCache;->count:I

    .line 101
    return-void
.end method

###### Class org.jbox2d.collision.Distance.SimplexVertex (org.jbox2d.collision.Distance$SimplexVertex)
.class Lorg/jbox2d/collision/Distance$SimplexVertex;
.super Ljava/lang/Object;
.source "Distance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/Distance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimplexVertex"
.end annotation


# instance fields
.field public a:F

.field public indexA:I

.field public indexB:I

.field final synthetic this$0:Lorg/jbox2d/collision/Distance;

.field public final w:Lorg/jbox2d/common/Vec2;

.field public final wA:Lorg/jbox2d/common/Vec2;

.field public final wB:Lorg/jbox2d/common/Vec2;


# direct methods
.method private constructor <init>(Lorg/jbox2d/collision/Distance;)V
    .registers 3

    .prologue
    .line 53
    iput-object p1, p0, Lorg/jbox2d/collision/Distance$SimplexVertex;->this$0:Lorg/jbox2d/collision/Distance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$SimplexVertex;->wA:Lorg/jbox2d/common/Vec2;

    .line 55
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$SimplexVertex;->wB:Lorg/jbox2d/common/Vec2;

    .line 56
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jbox2d/collision/Distance;Lorg/jbox2d/collision/Distance$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/jbox2d/collision/Distance;
    .param p2, "x1"    # Lorg/jbox2d/collision/Distance$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/jbox2d/collision/Distance$SimplexVertex;-><init>(Lorg/jbox2d/collision/Distance;)V

    return-void
.end method


# virtual methods
.method public set(Lorg/jbox2d/collision/Distance$SimplexVertex;)V
    .registers 4
    .param p1, "sv"    # Lorg/jbox2d/collision/Distance$SimplexVertex;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$SimplexVertex;->wA:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/collision/Distance$SimplexVertex;->wA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 63
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$SimplexVertex;->wB:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/collision/Distance$SimplexVertex;->wB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 64
    iget-object v0, p0, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/collision/Distance$SimplexVertex;->w:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 65
    iget v0, p1, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    iput v0, p0, Lorg/jbox2d/collision/Distance$SimplexVertex;->a:F

    .line 66
    iget v0, p1, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexA:I

    iput v0, p0, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexA:I

    .line 67
    iget v0, p1, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexB:I

    iput v0, p0, Lorg/jbox2d/collision/Distance$SimplexVertex;->indexB:I

    .line 68
    return-void
.end method
