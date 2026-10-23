###### Class org.jbox2d.collision.SeparationFunction (org.jbox2d.collision.SeparationFunction)
.class Lorg/jbox2d/collision/SeparationFunction;
.super Ljava/lang/Object;
.source "TimeOfImpact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jbox2d/collision/SeparationFunction$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final axisA:Lorg/jbox2d/common/Vec2;

.field private final axisB:Lorg/jbox2d/common/Vec2;

.field private final localPointA:Lorg/jbox2d/common/Vec2;

.field private final localPointA1:Lorg/jbox2d/common/Vec2;

.field private final localPointA2:Lorg/jbox2d/common/Vec2;

.field private final localPointB:Lorg/jbox2d/common/Vec2;

.field private final localPointB1:Lorg/jbox2d/common/Vec2;

.field private final localPointB2:Lorg/jbox2d/common/Vec2;

.field public final m_axis:Lorg/jbox2d/common/Vec2;

.field public final m_localPoint:Lorg/jbox2d/common/Vec2;

.field public m_proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

.field public m_proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

.field public m_sweepA:Lorg/jbox2d/common/Sweep;

.field public m_sweepB:Lorg/jbox2d/common/Sweep;

.field public m_type:Lorg/jbox2d/collision/Type;

.field private final normal:Lorg/jbox2d/common/Vec2;

.field private final pointA:Lorg/jbox2d/common/Vec2;

.field private final pointB:Lorg/jbox2d/common/Vec2;

.field private final temp:Lorg/jbox2d/common/Vec2;

.field private final xfa:Lorg/jbox2d/common/Transform;

.field private final xfb:Lorg/jbox2d/common/Transform;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 314
    const-class v0, Lorg/jbox2d/collision/SeparationFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/collision/SeparationFunction;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/SeparationFunction;->m_localPoint:Lorg/jbox2d/common/Vec2;

    .line 320
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    .line 325
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA:Lorg/jbox2d/common/Vec2;

    .line 326
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB:Lorg/jbox2d/common/Vec2;

    .line 327
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    .line 328
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    .line 329
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA1:Lorg/jbox2d/common/Vec2;

    .line 330
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA2:Lorg/jbox2d/common/Vec2;

    .line 331
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    .line 332
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB1:Lorg/jbox2d/common/Vec2;

    .line 333
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB2:Lorg/jbox2d/common/Vec2;

    .line 334
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/SeparationFunction;->temp:Lorg/jbox2d/common/Vec2;

    .line 335
    new-instance v0, Lorg/jbox2d/common/Transform;

    invoke-direct {v0}, Lorg/jbox2d/common/Transform;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    .line 336
    new-instance v0, Lorg/jbox2d/common/Transform;

    invoke-direct {v0}, Lorg/jbox2d/common/Transform;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    .line 426
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/SeparationFunction;->axisA:Lorg/jbox2d/common/Vec2;

    .line 427
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/SeparationFunction;->axisB:Lorg/jbox2d/common/Vec2;

    return-void
.end method


# virtual methods
.method public evaluate(IIF)F
    .registers 8
    .param p1, "indexA"    # I
    .param p2, "indexB"    # I
    .param p3, "t"    # F

    .prologue
    .line 494
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->m_sweepA:Lorg/jbox2d/common/Sweep;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    invoke-virtual {v1, v2, p3}, Lorg/jbox2d/common/Sweep;->getTransform(Lorg/jbox2d/common/Transform;F)V

    .line 495
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->m_sweepB:Lorg/jbox2d/common/Sweep;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    invoke-virtual {v1, v2, p3}, Lorg/jbox2d/common/Sweep;->getTransform(Lorg/jbox2d/common/Transform;F)V

    .line 497
    sget-object v1, Lorg/jbox2d/collision/SeparationFunction$1;->$SwitchMap$org$jbox2d$collision$Type:[I

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_type:Lorg/jbox2d/collision/Type;

    invoke-virtual {v2}, Lorg/jbox2d/collision/Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_116

    .line 540
    sget-boolean v1, Lorg/jbox2d/collision/SeparationFunction;->$assertionsDisabled:Z

    if-nez v1, :cond_112

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 499
    :pswitch_25
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    iget-object v1, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->axisA:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 500
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    iget-object v1, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->axisB:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 501
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 503
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    invoke-virtual {v2, p1}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 504
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    invoke-virtual {v2, p2}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 506
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 507
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 509
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    .line 541
    :goto_7a
    return v0

    .line 514
    :pswitch_7b
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    iget-object v1, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 515
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_localPoint:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 517
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    iget-object v1, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->axisB:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 518
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 520
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    invoke-virtual {v2, p2}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 521
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 522
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    .line 523
    .local v0, "separation":F
    goto :goto_7a

    .line 527
    .end local v0    # "separation":F
    :pswitch_c6
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    iget-object v1, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 528
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_localPoint:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 530
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    iget-object v1, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->axisA:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 531
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 533
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    invoke-virtual {v2, p1}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 534
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 536
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    .line 537
    .restart local v0    # "separation":F
    goto/16 :goto_7a

    .line 541
    .end local v0    # "separation":F
    :cond_112
    const/4 v0, 0x0

    goto/16 :goto_7a

    .line 497
    nop

    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_25
        :pswitch_7b
        :pswitch_c6
    .end packed-switch
.end method

.method public findMinSeparation([IF)F
    .registers 10
    .param p1, "indexes"    # [I
    .param p2, "t"    # F

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 432
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->m_sweepA:Lorg/jbox2d/common/Sweep;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    invoke-virtual {v1, v2, p2}, Lorg/jbox2d/common/Sweep;->getTransform(Lorg/jbox2d/common/Transform;F)V

    .line 433
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->m_sweepB:Lorg/jbox2d/common/Sweep;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    invoke-virtual {v1, v2, p2}, Lorg/jbox2d/common/Sweep;->getTransform(Lorg/jbox2d/common/Transform;F)V

    .line 435
    sget-object v1, Lorg/jbox2d/collision/SeparationFunction$1;->$SwitchMap$org$jbox2d$collision$Type:[I

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_type:Lorg/jbox2d/collision/Type;

    invoke-virtual {v2}, Lorg/jbox2d/collision/Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_150

    .line 486
    sget-boolean v1, Lorg/jbox2d/collision/SeparationFunction;->$assertionsDisabled:Z

    if-nez v1, :cond_149

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 437
    :pswitch_28
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    iget-object v1, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->axisA:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 438
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    iget-object v1, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->axisB:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 439
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 441
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->axisA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getSupport(Lorg/jbox2d/common/Vec2;)I

    move-result v1

    aput v1, p1, v4

    .line 442
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->axisB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getSupport(Lorg/jbox2d/common/Vec2;)I

    move-result v1

    aput v1, p1, v5

    .line 444
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 445
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    aget v3, p1, v5

    invoke-virtual {v2, v3}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 447
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 448
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 450
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    .line 489
    :goto_95
    return v0

    .line 454
    :pswitch_96
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    iget-object v1, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 455
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_localPoint:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 457
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    iget-object v1, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->axisB:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 458
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 460
    aput v6, p1, v4

    .line 461
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->axisB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getSupport(Lorg/jbox2d/common/Vec2;)I

    move-result v1

    aput v1, p1, v5

    .line 463
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    aget v3, p1, v5

    invoke-virtual {v2, v3}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 464
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 466
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    .line 467
    .local v0, "separation":F
    goto :goto_95

    .line 470
    .end local v0    # "separation":F
    :pswitch_ef
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    iget-object v1, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 471
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_localPoint:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 473
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    iget-object v1, v1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    move-result-object v2

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->axisA:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 474
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 476
    aput v6, p1, v5

    .line 477
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->axisA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getSupport(Lorg/jbox2d/common/Vec2;)I

    move-result v1

    aput v1, p1, v4

    .line 479
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 480
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA:Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 482
    iget-object v1, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v0

    .line 483
    .restart local v0    # "separation":F
    goto/16 :goto_95

    .line 487
    .end local v0    # "separation":F
    :cond_149
    aput v6, p1, v4

    .line 488
    aput v6, p1, v5

    .line 489
    const/4 v0, 0x0

    goto/16 :goto_95

    .line 435
    :pswitch_data_150
    .packed-switch 0x1
        :pswitch_28
        :pswitch_96
        :pswitch_ef
    .end packed-switch
.end method

.method public initialize(Lorg/jbox2d/collision/Distance$SimplexCache;Lorg/jbox2d/collision/Distance$DistanceProxy;Lorg/jbox2d/common/Sweep;Lorg/jbox2d/collision/Distance$DistanceProxy;Lorg/jbox2d/common/Sweep;F)F
    .registers 15
    .param p1, "cache"    # Lorg/jbox2d/collision/Distance$SimplexCache;
    .param p2, "proxyA"    # Lorg/jbox2d/collision/Distance$DistanceProxy;
    .param p3, "sweepA"    # Lorg/jbox2d/common/Sweep;
    .param p4, "proxyB"    # Lorg/jbox2d/collision/Distance$DistanceProxy;
    .param p5, "sweepB"    # Lorg/jbox2d/common/Sweep;
    .param p6, "t1"    # F

    .prologue
    .line 342
    iput-object p2, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    .line 343
    iput-object p4, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    .line 344
    iget v0, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->count:I

    .line 345
    .local v0, "count":I
    sget-boolean v4, Lorg/jbox2d/collision/SeparationFunction;->$assertionsDisabled:Z

    if-nez v4, :cond_15

    if-lez v0, :cond_f

    const/4 v4, 0x3

    if-lt v0, v4, :cond_15

    :cond_f
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 347
    :cond_15
    iput-object p3, p0, Lorg/jbox2d/collision/SeparationFunction;->m_sweepA:Lorg/jbox2d/common/Sweep;

    .line 348
    iput-object p5, p0, Lorg/jbox2d/collision/SeparationFunction;->m_sweepB:Lorg/jbox2d/common/Sweep;

    .line 350
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->m_sweepA:Lorg/jbox2d/common/Sweep;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    invoke-virtual {v4, v5, p6}, Lorg/jbox2d/common/Sweep;->getTransform(Lorg/jbox2d/common/Transform;F)V

    .line 351
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->m_sweepB:Lorg/jbox2d/common/Sweep;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    invoke-virtual {v4, v5, p6}, Lorg/jbox2d/common/Sweep;->getTransform(Lorg/jbox2d/common/Transform;F)V

    .line 357
    const/4 v4, 0x1

    if-ne v0, v4, :cond_76

    .line 358
    sget-object v4, Lorg/jbox2d/collision/Type;->POINTS:Lorg/jbox2d/collision/Type;

    iput-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->m_type:Lorg/jbox2d/collision/Type;

    .line 364
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    iget-object v6, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->indexA:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 365
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    iget-object v6, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->indexB:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 366
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA:Lorg/jbox2d/common/Vec2;

    iget-object v6, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5, v6}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 367
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB:Lorg/jbox2d/common/Vec2;

    iget-object v6, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5, v6}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 368
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 369
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4}, Lorg/jbox2d/common/Vec2;->normalize()F

    move-result v1

    .local v1, "s":F
    move v2, v1

    .end local v1    # "s":F
    .local v2, "s":F
    move v3, v1

    .line 422
    .end local v2    # "s":F
    .local v3, "s":F
    :goto_75
    return v3

    .line 371
    .end local v3    # "s":F
    :cond_76
    iget-object v4, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->indexA:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->indexA:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    if-ne v4, v5, :cond_123

    .line 373
    sget-object v4, Lorg/jbox2d/collision/Type;->FACE_B:Lorg/jbox2d/collision/Type;

    iput-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->m_type:Lorg/jbox2d/collision/Type;

    .line 375
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB1:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    iget-object v6, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->indexB:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 376
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB2:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    iget-object v6, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->indexB:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 378
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->temp:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 379
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->temp:Lorg/jbox2d/common/Vec2;

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5, v6}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;)V

    .line 380
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 382
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    iget-object v4, v4, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    iget-object v6, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5, v6}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 384
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->m_localPoint:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 385
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->m_localPoint:Lorg/jbox2d/common/Vec2;

    iget-object v6, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5, v6}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 387
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA:Lorg/jbox2d/common/Vec2;

    iget-object v5, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->indexA:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {p2, v5}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 388
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA:Lorg/jbox2d/common/Vec2;

    iget-object v6, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5, v6}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 390
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->temp:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 391
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->temp:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v1

    .line 392
    .restart local v1    # "s":F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gez v4, :cond_11f

    .line 393
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 394
    neg-float v1, v1

    :cond_11f
    move v2, v1

    .end local v1    # "s":F
    .restart local v2    # "s":F
    move v3, v1

    .line 396
    .end local v2    # "s":F
    .restart local v3    # "s":F
    goto/16 :goto_75

    .line 399
    .end local v3    # "s":F
    :cond_123
    sget-object v4, Lorg/jbox2d/collision/Type;->FACE_A:Lorg/jbox2d/collision/Type;

    iput-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->m_type:Lorg/jbox2d/collision/Type;

    .line 401
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA1:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    iget-object v6, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->indexA:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 402
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA2:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyA:Lorg/jbox2d/collision/Distance$DistanceProxy;

    iget-object v6, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->indexA:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 404
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->temp:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 405
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->temp:Lorg/jbox2d/common/Vec2;

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5, v6}, Lorg/jbox2d/common/Vec2;->crossToOutUnsafe(Lorg/jbox2d/common/Vec2;FLorg/jbox2d/common/Vec2;)V

    .line 406
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4}, Lorg/jbox2d/common/Vec2;->normalize()F

    .line 408
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    iget-object v4, v4, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    iget-object v6, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5, v6}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 410
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->m_localPoint:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA1:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointA2:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->mulLocal(F)Lorg/jbox2d/common/Vec2;

    .line 411
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->xfa:Lorg/jbox2d/common/Transform;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->m_localPoint:Lorg/jbox2d/common/Vec2;

    iget-object v6, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5, v6}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 413
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->m_proxyB:Lorg/jbox2d/collision/Distance$DistanceProxy;

    iget-object v6, p1, Lorg/jbox2d/collision/Distance$SimplexCache;->indexB:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/jbox2d/collision/Distance$DistanceProxy;->getVertex(I)Lorg/jbox2d/common/Vec2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 414
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->xfb:Lorg/jbox2d/common/Transform;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->localPointB:Lorg/jbox2d/common/Vec2;

    iget-object v6, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5, v6}, Lorg/jbox2d/common/Transform;->mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 416
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->temp:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->pointB:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v4

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->pointA:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4, v5}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 417
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->temp:Lorg/jbox2d/common/Vec2;

    iget-object v5, p0, Lorg/jbox2d/collision/SeparationFunction;->normal:Lorg/jbox2d/common/Vec2;

    invoke-static {v4, v5}, Lorg/jbox2d/common/Vec2;->dot(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)F

    move-result v1

    .line 418
    .restart local v1    # "s":F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1c2

    .line 419
    iget-object v4, p0, Lorg/jbox2d/collision/SeparationFunction;->m_axis:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v4}, Lorg/jbox2d/common/Vec2;->negateLocal()Lorg/jbox2d/common/Vec2;

    .line 420
    neg-float v1, v1

    :cond_1c2
    move v2, v1

    .end local v1    # "s":F
    .restart local v2    # "s":F
    move v3, v1

    .line 422
    .end local v2    # "s":F
    .restart local v3    # "s":F
    goto/16 :goto_75
.end method

###### Class org.jbox2d.collision.SeparationFunction.AnonymousClass1 (org.jbox2d.collision.SeparationFunction$1)
.class synthetic Lorg/jbox2d/collision/SeparationFunction$1;
.super Ljava/lang/Object;
.source "TimeOfImpact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jbox2d/collision/SeparationFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jbox2d$collision$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 435
    invoke-static {}, Lorg/jbox2d/collision/Type;->values()[Lorg/jbox2d/collision/Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jbox2d/collision/SeparationFunction$1;->$SwitchMap$org$jbox2d$collision$Type:[I

    :try_start_9
    sget-object v0, Lorg/jbox2d/collision/SeparationFunction$1;->$SwitchMap$org$jbox2d$collision$Type:[I

    sget-object v1, Lorg/jbox2d/collision/Type;->POINTS:Lorg/jbox2d/collision/Type;

    invoke-virtual {v1}, Lorg/jbox2d/collision/Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lorg/jbox2d/collision/SeparationFunction$1;->$SwitchMap$org$jbox2d$collision$Type:[I

    sget-object v1, Lorg/jbox2d/collision/Type;->FACE_A:Lorg/jbox2d/collision/Type;

    invoke-virtual {v1}, Lorg/jbox2d/collision/Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lorg/jbox2d/collision/SeparationFunction$1;->$SwitchMap$org$jbox2d$collision$Type:[I

    sget-object v1, Lorg/jbox2d/collision/Type;->FACE_B:Lorg/jbox2d/collision/Type;

    invoke-virtual {v1}, Lorg/jbox2d/collision/Type;->ordinal()I

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
