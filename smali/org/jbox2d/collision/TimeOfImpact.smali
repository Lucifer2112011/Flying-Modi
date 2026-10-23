###### Class org.jbox2d.collision.TimeOfImpact (org.jbox2d.collision.TimeOfImpact)
.class public Lorg/jbox2d/collision/TimeOfImpact;
.super Ljava/lang/Object;
.source "TimeOfImpact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;,
        Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;,
        Lorg/jbox2d/collision/TimeOfImpact$TOIInput;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final MAX_ITERATIONS:I = 0x3e8

.field public static toiCalls:I

.field public static toiIters:I

.field public static toiMaxIters:I

.field public static toiMaxRootIters:I

.field public static toiRootIters:I


# instance fields
.field private final cache:Lorg/jbox2d/collision/Distance$SimplexCache;

.field private final distanceInput:Lorg/jbox2d/collision/DistanceInput;

.field private final distanceOutput:Lorg/jbox2d/collision/DistanceOutput;

.field private final fcn:Lorg/jbox2d/collision/SeparationFunction;

.field private final indexes:[I

.field private final pool:Lorg/jbox2d/pooling/IWorldPool;

.field private final sweepA:Lorg/jbox2d/common/Sweep;

.field private final sweepB:Lorg/jbox2d/common/Sweep;

.field private final xfA:Lorg/jbox2d/common/Transform;

.field private final xfB:Lorg/jbox2d/common/Transform;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 42
    const-class v0, Lorg/jbox2d/collision/TimeOfImpact;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lorg/jbox2d/collision/TimeOfImpact;->$assertionsDisabled:Z

    .line 45
    sput v1, Lorg/jbox2d/collision/TimeOfImpact;->toiCalls:I

    .line 46
    sput v1, Lorg/jbox2d/collision/TimeOfImpact;->toiIters:I

    .line 47
    sput v1, Lorg/jbox2d/collision/TimeOfImpact;->toiMaxIters:I

    .line 48
    sput v1, Lorg/jbox2d/collision/TimeOfImpact;->toiRootIters:I

    .line 49
    sput v1, Lorg/jbox2d/collision/TimeOfImpact;->toiMaxRootIters:I

    return-void

    :cond_17
    move v0, v1

    .line 42
    goto :goto_a
.end method

.method public constructor <init>(Lorg/jbox2d/pooling/IWorldPool;)V
    .registers 3
    .param p1, "argPool"    # Lorg/jbox2d/pooling/IWorldPool;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lorg/jbox2d/collision/Distance$SimplexCache;

    invoke-direct {v0}, Lorg/jbox2d/collision/Distance$SimplexCache;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/TimeOfImpact;->cache:Lorg/jbox2d/collision/Distance$SimplexCache;

    .line 84
    new-instance v0, Lorg/jbox2d/collision/DistanceInput;

    invoke-direct {v0}, Lorg/jbox2d/collision/DistanceInput;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/TimeOfImpact;->distanceInput:Lorg/jbox2d/collision/DistanceInput;

    .line 85
    new-instance v0, Lorg/jbox2d/common/Transform;

    invoke-direct {v0}, Lorg/jbox2d/common/Transform;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/TimeOfImpact;->xfA:Lorg/jbox2d/common/Transform;

    .line 86
    new-instance v0, Lorg/jbox2d/common/Transform;

    invoke-direct {v0}, Lorg/jbox2d/common/Transform;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/TimeOfImpact;->xfB:Lorg/jbox2d/common/Transform;

    .line 87
    new-instance v0, Lorg/jbox2d/collision/DistanceOutput;

    invoke-direct {v0}, Lorg/jbox2d/collision/DistanceOutput;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/TimeOfImpact;->distanceOutput:Lorg/jbox2d/collision/DistanceOutput;

    .line 88
    new-instance v0, Lorg/jbox2d/collision/SeparationFunction;

    invoke-direct {v0}, Lorg/jbox2d/collision/SeparationFunction;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/TimeOfImpact;->fcn:Lorg/jbox2d/collision/SeparationFunction;

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jbox2d/collision/TimeOfImpact;->indexes:[I

    .line 90
    new-instance v0, Lorg/jbox2d/common/Sweep;

    invoke-direct {v0}, Lorg/jbox2d/common/Sweep;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/TimeOfImpact;->sweepA:Lorg/jbox2d/common/Sweep;

    .line 91
    new-instance v0, Lorg/jbox2d/common/Sweep;

    invoke-direct {v0}, Lorg/jbox2d/common/Sweep;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/TimeOfImpact;->sweepB:Lorg/jbox2d/common/Sweep;

    .line 97
    iput-object p1, p0, Lorg/jbox2d/collision/TimeOfImpact;->pool:Lorg/jbox2d/pooling/IWorldPool;

    .line 98
    return-void
.end method


# virtual methods
.method public final timeOfImpact(Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;Lorg/jbox2d/collision/TimeOfImpact$TOIInput;)V
    .registers 27
    .param p1, "output"    # Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;
    .param p2, "input"    # Lorg/jbox2d/collision/TimeOfImpact$TOIInput;

    .prologue
    .line 113
    sget v2, Lorg/jbox2d/collision/TimeOfImpact;->toiCalls:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/jbox2d/collision/TimeOfImpact;->toiCalls:I

    .line 115
    sget-object v2, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->UNKNOWN:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;->state:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    .line 116
    move-object/from16 v0, p2

    iget v2, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->tMax:F

    move-object/from16 v0, p1

    iput v2, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;->t:F

    .line 118
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    .line 119
    .local v4, "proxyA":Lorg/jbox2d/collision/Distance$DistanceProxy;
    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    .line 121
    .local v6, "proxyB":Lorg/jbox2d/collision/Distance$DistanceProxy;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->sweepA:Lorg/jbox2d/common/Sweep;

    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->sweepA:Lorg/jbox2d/common/Sweep;

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Sweep;->set(Lorg/jbox2d/common/Sweep;)Lorg/jbox2d/common/Sweep;

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->sweepB:Lorg/jbox2d/common/Sweep;

    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->sweepB:Lorg/jbox2d/common/Sweep;

    invoke-virtual {v2, v3}, Lorg/jbox2d/common/Sweep;->set(Lorg/jbox2d/common/Sweep;)Lorg/jbox2d/common/Sweep;

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->sweepA:Lorg/jbox2d/common/Sweep;

    invoke-virtual {v2}, Lorg/jbox2d/common/Sweep;->normalize()V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->sweepB:Lorg/jbox2d/common/Sweep;

    invoke-virtual {v2}, Lorg/jbox2d/common/Sweep;->normalize()V

    .line 129
    move-object/from16 v0, p2

    iget v0, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->tMax:F

    move/from16 v20, v0

    .line 131
    .local v20, "tMax":F
    iget v2, v4, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_radius:F

    iget v3, v6, Lorg/jbox2d/collision/Distance$DistanceProxy;->m_radius:F

    add-float v23, v2, v3

    .line 133
    .local v23, "totalRadius":F
    const v2, 0x3ba3d70a    # 0.005f

    const v3, 0x3c75c28f    # 0.015f

    sub-float v3, v23, v3

    invoke-static {v2, v3}, Lorg/jbox2d/common/MathUtils;->max(FF)F

    move-result v21

    .line 134
    .local v21, "target":F
    const v22, 0x3aa3d70a    # 0.00125f

    .line 136
    .local v22, "tolerance":F
    sget-boolean v2, Lorg/jbox2d/collision/TimeOfImpact;->$assertionsDisabled:Z

    if-nez v2, :cond_69

    cmpl-float v2, v21, v22

    if-gtz v2, :cond_69

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 138
    :cond_69
    const/4 v8, 0x0

    .line 139
    .local v8, "t1":F
    const/4 v12, 0x0

    .line 141
    .local v12, "iter":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->cache:Lorg/jbox2d/collision/Distance$SimplexCache;

    const/4 v3, 0x0

    iput v3, v2, Lorg/jbox2d/collision/Distance$SimplexCache;->count:I

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->distanceInput:Lorg/jbox2d/collision/DistanceInput;

    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    iput-object v3, v2, Lorg/jbox2d/collision/DistanceInput;->proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->distanceInput:Lorg/jbox2d/collision/DistanceInput;

    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    iput-object v3, v2, Lorg/jbox2d/collision/DistanceInput;->proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->distanceInput:Lorg/jbox2d/collision/DistanceInput;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/jbox2d/collision/DistanceInput;->useRadii:Z

    .line 149
    :cond_8d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->sweepA:Lorg/jbox2d/common/Sweep;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/TimeOfImpact;->xfA:Lorg/jbox2d/common/Transform;

    invoke-virtual {v2, v3, v8}, Lorg/jbox2d/common/Sweep;->getTransform(Lorg/jbox2d/common/Transform;F)V

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->sweepB:Lorg/jbox2d/common/Sweep;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/TimeOfImpact;->xfB:Lorg/jbox2d/common/Transform;

    invoke-virtual {v2, v3, v8}, Lorg/jbox2d/common/Sweep;->getTransform(Lorg/jbox2d/common/Transform;F)V

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->distanceInput:Lorg/jbox2d/collision/DistanceInput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/TimeOfImpact;->xfA:Lorg/jbox2d/common/Transform;

    iput-object v3, v2, Lorg/jbox2d/collision/DistanceInput;->transformA:Lorg/jbox2d/common/Transform;

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->distanceInput:Lorg/jbox2d/collision/DistanceInput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/TimeOfImpact;->xfB:Lorg/jbox2d/common/Transform;

    iput-object v3, v2, Lorg/jbox2d/collision/DistanceInput;->transformB:Lorg/jbox2d/common/Transform;

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->pool:Lorg/jbox2d/pooling/IWorldPool;

    invoke-interface {v2}, Lorg/jbox2d/pooling/IWorldPool;->getDistance()Lorg/jbox2d/collision/Distance;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/TimeOfImpact;->distanceOutput:Lorg/jbox2d/collision/DistanceOutput;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/collision/TimeOfImpact;->cache:Lorg/jbox2d/collision/Distance$SimplexCache;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/collision/TimeOfImpact;->distanceInput:Lorg/jbox2d/collision/DistanceInput;

    invoke-virtual {v2, v3, v5, v7}, Lorg/jbox2d/collision/Distance;->distance(Lorg/jbox2d/collision/DistanceOutput;Lorg/jbox2d/collision/Distance$SimplexCache;Lorg/jbox2d/collision/DistanceInput;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->distanceOutput:Lorg/jbox2d/collision/DistanceOutput;

    iget v2, v2, Lorg/jbox2d/collision/DistanceOutput;->distance:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_ed

    .line 168
    sget-object v2, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->OVERLAPPED:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;->state:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    .line 169
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;->t:F

    .line 304
    :cond_e4
    :goto_e4
    sget v2, Lorg/jbox2d/collision/TimeOfImpact;->toiMaxIters:I

    invoke-static {v2, v12}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v2

    sput v2, Lorg/jbox2d/collision/TimeOfImpact;->toiMaxIters:I

    .line 305
    return-void

    .line 173
    :cond_ed
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->distanceOutput:Lorg/jbox2d/collision/DistanceOutput;

    iget v2, v2, Lorg/jbox2d/collision/DistanceOutput;->distance:F

    add-float v3, v21, v22

    cmpg-float v2, v2, v3

    if-gez v2, :cond_104

    .line 176
    sget-object v2, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->TOUCHING:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;->state:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    .line 177
    move-object/from16 v0, p1

    iput v8, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;->t:F

    goto :goto_e4

    .line 182
    :cond_104
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->fcn:Lorg/jbox2d/collision/SeparationFunction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/TimeOfImpact;->cache:Lorg/jbox2d/collision/Distance$SimplexCache;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/collision/TimeOfImpact;->sweepA:Lorg/jbox2d/common/Sweep;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jbox2d/collision/TimeOfImpact;->sweepB:Lorg/jbox2d/common/Sweep;

    invoke-virtual/range {v2 .. v8}, Lorg/jbox2d/collision/SeparationFunction;->initialize(Lorg/jbox2d/collision/Distance$SimplexCache;Lorg/jbox2d/collision/Distance$DistanceProxy;Lorg/jbox2d/common/Sweep;Lorg/jbox2d/collision/Distance$DistanceProxy;Lorg/jbox2d/common/Sweep;F)F

    .line 187
    const/4 v11, 0x0

    .line 188
    .local v11, "done":Z
    move/from16 v19, v20

    .line 189
    .local v19, "t2":F
    const/4 v13, 0x0

    .line 193
    .local v13, "pushBackIter":I
    :cond_11b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->fcn:Lorg/jbox2d/collision/SeparationFunction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/TimeOfImpact;->indexes:[I

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Lorg/jbox2d/collision/SeparationFunction;->findMinSeparation([IF)F

    move-result v17

    .line 196
    .local v17, "s2":F
    add-float v2, v21, v22

    cmpl-float v2, v17, v2

    if-lez v2, :cond_155

    .line 199
    sget-object v2, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->SEPARATED:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;->state:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    .line 200
    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;->t:F

    .line 201
    const/4 v11, 0x1

    .line 286
    :goto_13c
    add-int/lit8 v12, v12, 0x1

    .line 287
    sget v2, Lorg/jbox2d/collision/TimeOfImpact;->toiIters:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/jbox2d/collision/TimeOfImpact;->toiIters:I

    .line 289
    if-nez v11, :cond_e4

    .line 294
    const/16 v2, 0x3e8

    if-ne v12, v2, :cond_8d

    .line 297
    sget-object v2, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->FAILED:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;->state:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    .line 298
    move-object/from16 v0, p1

    iput v8, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;->t:F

    goto :goto_e4

    .line 206
    :cond_155
    sub-float v2, v21, v22

    cmpl-float v2, v17, v2

    if-lez v2, :cond_15e

    .line 209
    move/from16 v8, v19

    .line 210
    goto :goto_13c

    .line 214
    :cond_15e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->fcn:Lorg/jbox2d/collision/SeparationFunction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/TimeOfImpact;->indexes:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/collision/TimeOfImpact;->indexes:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-virtual {v2, v3, v5, v8}, Lorg/jbox2d/collision/SeparationFunction;->evaluate(IIF)F

    move-result v16

    .line 219
    .local v16, "s1":F
    sub-float v2, v21, v22

    cmpg-float v2, v16, v2

    if-gez v2, :cond_186

    .line 221
    sget-object v2, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->FAILED:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;->state:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    .line 222
    move-object/from16 v0, p1

    iput v8, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;->t:F

    .line 223
    const/4 v11, 0x1

    .line 224
    goto :goto_13c

    .line 228
    :cond_186
    add-float v2, v21, v22

    cmpg-float v2, v16, v2

    if-gtz v2, :cond_198

    .line 231
    sget-object v2, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->TOUCHING:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;->state:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    .line 232
    move-object/from16 v0, p1

    iput v8, v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;->t:F

    .line 233
    const/4 v11, 0x1

    .line 234
    goto :goto_13c

    .line 238
    :cond_198
    const/4 v14, 0x0

    .line 239
    .local v14, "rootIterCount":I
    move v9, v8

    .local v9, "a1":F
    move/from16 v10, v19

    .line 243
    .local v10, "a2":F
    :cond_19c
    and-int/lit8 v2, v14, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1df

    .line 245
    sub-float v2, v21, v16

    sub-float v3, v10, v9

    mul-float/2addr v2, v3

    sub-float v3, v17, v16

    div-float/2addr v2, v3

    add-float v18, v9, v2

    .line 251
    .local v18, "t":F
    :goto_1ab
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jbox2d/collision/TimeOfImpact;->fcn:Lorg/jbox2d/collision/SeparationFunction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jbox2d/collision/TimeOfImpact;->indexes:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jbox2d/collision/TimeOfImpact;->indexes:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    move/from16 v0, v18

    invoke-virtual {v2, v3, v5, v0}, Lorg/jbox2d/collision/SeparationFunction;->evaluate(IIF)F

    move-result v15

    .line 253
    .local v15, "s":F
    sub-float v2, v15, v21

    invoke-static {v2}, Lorg/jbox2d/common/MathUtils;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v22

    if-gez v2, :cond_1e6

    .line 255
    move/from16 v19, v18

    .line 277
    :goto_1cf
    sget v2, Lorg/jbox2d/collision/TimeOfImpact;->toiMaxRootIters:I

    invoke-static {v2, v14}, Lorg/jbox2d/common/MathUtils;->max(II)I

    move-result v2

    sput v2, Lorg/jbox2d/collision/TimeOfImpact;->toiMaxRootIters:I

    .line 279
    add-int/lit8 v13, v13, 0x1

    .line 281
    const/16 v2, 0x8

    if-ne v13, v2, :cond_11b

    goto/16 :goto_13c

    .line 248
    .end local v15    # "s":F
    .end local v18    # "t":F
    :cond_1df
    const/high16 v2, 0x3f000000    # 0.5f

    add-float v3, v9, v10

    mul-float v18, v2, v3

    .restart local v18    # "t":F
    goto :goto_1ab

    .line 260
    .restart local v15    # "s":F
    :cond_1e6
    cmpl-float v2, v15, v21

    if-lez v2, :cond_1fb

    .line 261
    move/from16 v9, v18

    .line 262
    move/from16 v16, v15

    .line 268
    :goto_1ee
    add-int/lit8 v14, v14, 0x1

    .line 269
    sget v2, Lorg/jbox2d/collision/TimeOfImpact;->toiRootIters:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/jbox2d/collision/TimeOfImpact;->toiRootIters:I

    .line 272
    const/16 v2, 0x32

    if-ne v14, v2, :cond_19c

    goto :goto_1cf

    .line 264
    :cond_1fb
    move/from16 v10, v18

    .line 265
    move/from16 v17, v15

    goto :goto_1ee
.end method

###### Class org.jbox2d.collision.TimeOfImpact.TOIInput (org.jbox2d.collision.TimeOfImpact$TOIInput)
.class public Lorg/jbox2d/collision/TimeOfImpact$TOIInput;
.super Ljava/lang/Object;
.source "TimeOfImpact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/TimeOfImpact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TOIInput"
.end annotation


# instance fields
.field public final proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

.field public final proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

.field public final sweepA:Lorg/jbox2d/common/Sweep;

.field public final sweepB:Lorg/jbox2d/common/Sweep;

.field public tMax:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/jbox2d/collision/Distance$DistanceProxy;

    invoke-direct {v0}, Lorg/jbox2d/collision/Distance$DistanceProxy;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    .line 58
    new-instance v0, Lorg/jbox2d/collision/Distance$DistanceProxy;

    invoke-direct {v0}, Lorg/jbox2d/collision/Distance$DistanceProxy;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    .line 59
    new-instance v0, Lorg/jbox2d/common/Sweep;

    invoke-direct {v0}, Lorg/jbox2d/common/Sweep;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->sweepA:Lorg/jbox2d/common/Sweep;

    .line 60
    new-instance v0, Lorg/jbox2d/common/Sweep;

    invoke-direct {v0}, Lorg/jbox2d/common/Sweep;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/TimeOfImpact$TOIInput;->sweepB:Lorg/jbox2d/common/Sweep;

    return-void
.end method

###### Class org.jbox2d.collision.TimeOfImpact.TOIOutput (org.jbox2d.collision.TimeOfImpact$TOIOutput)
.class public Lorg/jbox2d/collision/TimeOfImpact$TOIOutput;
.super Ljava/lang/Object;
.source "TimeOfImpact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/TimeOfImpact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TOIOutput"
.end annotation


# instance fields
.field public state:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

.field public t:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class org.jbox2d.collision.TimeOfImpact.TOIOutputState (org.jbox2d.collision.TimeOfImpact$TOIOutputState)
.class public final enum Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;
.super Ljava/lang/Enum;
.source "TimeOfImpact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/TimeOfImpact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TOIOutputState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

.field public static final enum FAILED:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

.field public static final enum OVERLAPPED:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

.field public static final enum SEPARATED:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

.field public static final enum TOUCHING:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

.field public static final enum UNKNOWN:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->UNKNOWN:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    new-instance v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->FAILED:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    new-instance v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    const-string v1, "OVERLAPPED"

    invoke-direct {v0, v1, v4}, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->OVERLAPPED:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    new-instance v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    const-string v1, "TOUCHING"

    invoke-direct {v0, v1, v5}, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->TOUCHING:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    new-instance v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    const-string v1, "SEPARATED"

    invoke-direct {v0, v1, v6}, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->SEPARATED:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    .line 67
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    sget-object v1, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->UNKNOWN:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->FAILED:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->OVERLAPPED:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->TOUCHING:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->SEPARATED:Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    aput-object v1, v0, v6

    sput-object v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->$VALUES:[Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    return-object v0
.end method

.method public static values()[Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->$VALUES:[Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    invoke-virtual {v0}, [Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jbox2d/collision/TimeOfImpact$TOIOutputState;

    return-object v0
.end method
