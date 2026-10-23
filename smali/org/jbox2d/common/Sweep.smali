###### Class org.jbox2d.common.Sweep (org.jbox2d.common.Sweep)
.class public Lorg/jbox2d/common/Sweep;
.super Ljava/lang/Object;
.source "Sweep.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public a:F

.field public a0:F

.field public alpha0:F

.field public final c:Lorg/jbox2d/common/Vec2;

.field public final c0:Lorg/jbox2d/common/Vec2;

.field public final localCenter:Lorg/jbox2d/common/Vec2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lorg/jbox2d/common/Sweep;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/common/Sweep;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    .line 55
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    .line 56
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    .line 57
    return-void
.end method


# virtual methods
.method public final advance(F)V
    .registers 6
    .param p1, "alpha"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 118
    iget-object v0, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    sub-float v1, v3, p1

    iget-object v2, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->x:F

    .line 119
    iget-object v0, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    sub-float v1, v3, p1

    iget-object v2, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lorg/jbox2d/common/Vec2;->y:F

    .line 120
    sub-float v0, v3, p1

    iget v1, p0, Lorg/jbox2d/common/Sweep;->a0:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Sweep;->a:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/jbox2d/common/Sweep;->a0:F

    .line 121
    return-void
.end method

.method public final getTransform(Lorg/jbox2d/common/Transform;F)V
    .registers 9
    .param p1, "xf"    # Lorg/jbox2d/common/Transform;
    .param p2, "beta"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 81
    sget-boolean v1, Lorg/jbox2d/common/Sweep;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    if-nez p1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 92
    :cond_e
    iget-object v1, p1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    sub-float v2, v4, p2

    iget-object v3, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 93
    iget-object v1, p1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    sub-float v2, v4, p2

    iget-object v3, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 96
    iget-object v1, p1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    sub-float v2, v4, p2

    iget v3, p0, Lorg/jbox2d/common/Sweep;->a0:F

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/jbox2d/common/Sweep;->a:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 100
    iget-object v0, p1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    .line 101
    .local v0, "q":Lorg/jbox2d/common/Rot;
    iget-object v1, p1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    iget v3, v0, Lorg/jbox2d/common/Rot;->c:F

    iget-object v4, p0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v3, v4

    iget v4, v0, Lorg/jbox2d/common/Rot;->s:F

    iget-object v5, p0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->x:F

    .line 102
    iget-object v1, p1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    iget v3, v0, Lorg/jbox2d/common/Rot;->s:F

    iget-object v4, p0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v3, v4

    iget v4, v0, Lorg/jbox2d/common/Rot;->c:F

    iget-object v5, p0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget v5, v5, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Lorg/jbox2d/common/Vec2;->y:F

    .line 103
    return-void
.end method

.method public final normalize()V
    .registers 4

    .prologue
    const v2, 0x40c90fdb

    .line 60
    iget v1, p0, Lorg/jbox2d/common/Sweep;->a0:F

    div-float/2addr v1, v2

    invoke-static {v1}, Lorg/jbox2d/common/MathUtils;->floor(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v2, v1

    .line 61
    .local v0, "d":F
    iget v1, p0, Lorg/jbox2d/common/Sweep;->a0:F

    sub-float/2addr v1, v0

    iput v1, p0, Lorg/jbox2d/common/Sweep;->a0:F

    .line 62
    iget v1, p0, Lorg/jbox2d/common/Sweep;->a:F

    sub-float/2addr v1, v0

    iput v1, p0, Lorg/jbox2d/common/Sweep;->a:F

    .line 63
    return-void
.end method

.method public final set(Lorg/jbox2d/common/Sweep;)Lorg/jbox2d/common/Sweep;
    .registers 4
    .param p1, "argCloneFrom"    # Lorg/jbox2d/common/Sweep;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 67
    iget-object v0, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 68
    iget-object v0, p0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 69
    iget v0, p1, Lorg/jbox2d/common/Sweep;->a0:F

    iput v0, p0, Lorg/jbox2d/common/Sweep;->a0:F

    .line 70
    iget v0, p1, Lorg/jbox2d/common/Sweep;->a:F

    iput v0, p0, Lorg/jbox2d/common/Sweep;->a:F

    .line 71
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sweep:\nlocalCenter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Sweep;->localCenter:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "c0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Sweep;->c0:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", c: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Sweep;->c:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "a0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jbox2d/common/Sweep;->a0:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jbox2d/common/Sweep;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    return-object v0
.end method
