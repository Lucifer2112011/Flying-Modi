###### Class org.jbox2d.common.Rot (org.jbox2d.common.Rot)
.class public Lorg/jbox2d/common/Rot;
.super Ljava/lang/Object;
.source "Rot.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public c:F

.field public s:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lorg/jbox2d/common/Rot;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/common/Rot;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0}, Lorg/jbox2d/common/Rot;->setIdentity()Lorg/jbox2d/common/Rot;

    .line 40
    return-void
.end method

.method public constructor <init>(F)V
    .registers 2
    .param p1, "angle"    # F

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 44
    return-void
.end method

.method public static final mul(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;)V
    .registers 7
    .param p0, "q"    # Lorg/jbox2d/common/Rot;
    .param p1, "r"    # Lorg/jbox2d/common/Rot;
    .param p2, "out"    # Lorg/jbox2d/common/Rot;

    .prologue
    .line 98
    iget v1, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v2, p1, Lorg/jbox2d/common/Rot;->c:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Rot;->s:F

    iget v3, p1, Lorg/jbox2d/common/Rot;->s:F

    mul-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 99
    .local v0, "tempc":F
    iget v1, p0, Lorg/jbox2d/common/Rot;->s:F

    iget v2, p1, Lorg/jbox2d/common/Rot;->c:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v3, p1, Lorg/jbox2d/common/Rot;->s:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p2, Lorg/jbox2d/common/Rot;->s:F

    .line 100
    iput v0, p2, Lorg/jbox2d/common/Rot;->c:F

    .line 101
    return-void
.end method

.method public static final mulToOut(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 7
    .param p0, "q"    # Lorg/jbox2d/common/Rot;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 130
    iget v1, p0, Lorg/jbox2d/common/Rot;->s:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 131
    .local v0, "tempy":F
    iget v1, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Rot;->s:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 132
    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 133
    return-void
.end method

.method public static final mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 6
    .param p0, "q"    # Lorg/jbox2d/common/Rot;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 136
    iget v0, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Rot;->s:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 137
    iget v0, p0, Lorg/jbox2d/common/Rot;->s:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 138
    return-void
.end method

.method public static final mulTrans(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;)V
    .registers 7
    .param p0, "q"    # Lorg/jbox2d/common/Rot;
    .param p1, "r"    # Lorg/jbox2d/common/Rot;
    .param p2, "out"    # Lorg/jbox2d/common/Rot;

    .prologue
    .line 115
    iget v1, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v2, p1, Lorg/jbox2d/common/Rot;->c:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Rot;->s:F

    iget v3, p1, Lorg/jbox2d/common/Rot;->s:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 116
    .local v0, "tempc":F
    iget v1, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v2, p1, Lorg/jbox2d/common/Rot;->s:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Rot;->s:F

    iget v3, p1, Lorg/jbox2d/common/Rot;->c:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p2, Lorg/jbox2d/common/Rot;->s:F

    .line 117
    iput v0, p2, Lorg/jbox2d/common/Rot;->c:F

    .line 118
    return-void
.end method

.method public static final mulTrans(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 7
    .param p0, "q"    # Lorg/jbox2d/common/Rot;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 141
    iget v1, p0, Lorg/jbox2d/common/Rot;->s:F

    neg-float v1, v1

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 142
    .local v0, "tempy":F
    iget v1, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/jbox2d/common/Rot;->s:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 143
    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 144
    return-void
.end method

.method public static final mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;)V
    .registers 6
    .param p0, "q"    # Lorg/jbox2d/common/Rot;
    .param p1, "r"    # Lorg/jbox2d/common/Rot;
    .param p2, "out"    # Lorg/jbox2d/common/Rot;

    .prologue
    .line 125
    iget v0, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v1, p1, Lorg/jbox2d/common/Rot;->s:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Rot;->s:F

    iget v2, p1, Lorg/jbox2d/common/Rot;->c:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Rot;->s:F

    .line 126
    iget v0, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v1, p1, Lorg/jbox2d/common/Rot;->c:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Rot;->s:F

    iget v2, p1, Lorg/jbox2d/common/Rot;->s:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Rot;->c:F

    .line 127
    return-void
.end method

.method public static final mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 6
    .param p0, "q"    # Lorg/jbox2d/common/Rot;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 147
    iget v0, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Rot;->s:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 148
    iget v0, p0, Lorg/jbox2d/common/Rot;->s:F

    neg-float v0, v0

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 149
    return-void
.end method

.method public static final mulUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;)V
    .registers 6
    .param p0, "q"    # Lorg/jbox2d/common/Rot;
    .param p1, "r"    # Lorg/jbox2d/common/Rot;
    .param p2, "out"    # Lorg/jbox2d/common/Rot;

    .prologue
    .line 104
    sget-boolean v0, Lorg/jbox2d/common/Rot;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p1, p2, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_c
    sget-boolean v0, Lorg/jbox2d/common/Rot;->$assertionsDisabled:Z

    if-nez v0, :cond_18

    if-ne p0, p2, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 110
    :cond_18
    iget v0, p0, Lorg/jbox2d/common/Rot;->s:F

    iget v1, p1, Lorg/jbox2d/common/Rot;->c:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v2, p1, Lorg/jbox2d/common/Rot;->s:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Rot;->s:F

    .line 111
    iget v0, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v1, p1, Lorg/jbox2d/common/Rot;->c:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/jbox2d/common/Rot;->s:F

    iget v2, p1, Lorg/jbox2d/common/Rot;->s:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Rot;->c:F

    .line 112
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
    .line 33
    invoke-virtual {p0}, Lorg/jbox2d/common/Rot;->clone()Lorg/jbox2d/common/Rot;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jbox2d/common/Rot;
    .registers 3

    .prologue
    .line 91
    new-instance v0, Lorg/jbox2d/common/Rot;

    invoke-direct {v0}, Lorg/jbox2d/common/Rot;-><init>()V

    .line 92
    .local v0, "copy":Lorg/jbox2d/common/Rot;
    iget v1, p0, Lorg/jbox2d/common/Rot;->s:F

    iput v1, v0, Lorg/jbox2d/common/Rot;->s:F

    .line 93
    iget v1, p0, Lorg/jbox2d/common/Rot;->c:F

    iput v1, v0, Lorg/jbox2d/common/Rot;->c:F

    .line 94
    return-object v0
.end method

.method public getAngle()F
    .registers 3

    .prologue
    .line 78
    iget v0, p0, Lorg/jbox2d/common/Rot;->s:F

    iget v1, p0, Lorg/jbox2d/common/Rot;->c:F

    invoke-static {v0, v1}, Lorg/jbox2d/common/MathUtils;->atan2(FF)F

    move-result v0

    return v0
.end method

.method public getCos()F
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lorg/jbox2d/common/Rot;->c:F

    return v0
.end method

.method public getSin()F
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lorg/jbox2d/common/Rot;->s:F

    return v0
.end method

.method public getXAxis(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "xAxis"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 82
    iget v0, p0, Lorg/jbox2d/common/Rot;->c:F

    iget v1, p0, Lorg/jbox2d/common/Rot;->s:F

    invoke-virtual {p1, v0, v1}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 83
    return-void
.end method

.method public getYAxis(Lorg/jbox2d/common/Vec2;)V
    .registers 4
    .param p1, "yAxis"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 86
    iget v0, p0, Lorg/jbox2d/common/Rot;->s:F

    neg-float v0, v0

    iget v1, p0, Lorg/jbox2d/common/Rot;->c:F

    invoke-virtual {p1, v0, v1}, Lorg/jbox2d/common/Vec2;->set(FF)Lorg/jbox2d/common/Vec2;

    .line 87
    return-void
.end method

.method public set(F)Lorg/jbox2d/common/Rot;
    .registers 3
    .param p1, "angle"    # F

    .prologue
    .line 60
    invoke-static {p1}, Lorg/jbox2d/common/MathUtils;->sin(F)F

    move-result v0

    iput v0, p0, Lorg/jbox2d/common/Rot;->s:F

    .line 61
    invoke-static {p1}, Lorg/jbox2d/common/MathUtils;->cos(F)F

    move-result v0

    iput v0, p0, Lorg/jbox2d/common/Rot;->c:F

    .line 62
    return-object p0
.end method

.method public set(Lorg/jbox2d/common/Rot;)Lorg/jbox2d/common/Rot;
    .registers 3
    .param p1, "other"    # Lorg/jbox2d/common/Rot;

    .prologue
    .line 66
    iget v0, p1, Lorg/jbox2d/common/Rot;->s:F

    iput v0, p0, Lorg/jbox2d/common/Rot;->s:F

    .line 67
    iget v0, p1, Lorg/jbox2d/common/Rot;->c:F

    iput v0, p0, Lorg/jbox2d/common/Rot;->c:F

    .line 68
    return-object p0
.end method

.method public setIdentity()Lorg/jbox2d/common/Rot;
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/common/Rot;->s:F

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/jbox2d/common/Rot;->c:F

    .line 74
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rot(s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jbox2d/common/Rot;->s:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jbox2d/common/Rot;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
