###### Class org.jbox2d.common.Transform (org.jbox2d.common.Transform)
.class public Lorg/jbox2d/common/Transform;
.super Ljava/lang/Object;
.source "Transform.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static pool:Lorg/jbox2d/common/Vec2; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final p:Lorg/jbox2d/common/Vec2;

.field public final q:Lorg/jbox2d/common/Rot;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lorg/jbox2d/common/Transform;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/common/Transform;->$assertionsDisabled:Z

    .line 146
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    sput-object v0, Lorg/jbox2d/common/Transform;->pool:Lorg/jbox2d/common/Vec2;

    return-void

    .line 34
    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    .line 46
    new-instance v0, Lorg/jbox2d/common/Rot;

    invoke-direct {v0}, Lorg/jbox2d/common/Rot;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/common/Transform;)V
    .registers 3
    .param p1, "xf"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    .line 52
    iget-object v0, p1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-virtual {v0}, Lorg/jbox2d/common/Rot;->clone()Lorg/jbox2d/common/Rot;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Rot;)V
    .registers 4
    .param p1, "_position"    # Lorg/jbox2d/common/Vec2;
    .param p2, "_R"    # Lorg/jbox2d/common/Rot;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Lorg/jbox2d/common/Vec2;->clone()Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    .line 58
    invoke-virtual {p2}, Lorg/jbox2d/common/Rot;->clone()Lorg/jbox2d/common/Rot;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    .line 59
    return-void
.end method

.method public static final mul(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;)Lorg/jbox2d/common/Transform;
    .registers 6
    .param p0, "A"    # Lorg/jbox2d/common/Transform;
    .param p1, "B"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 124
    new-instance v0, Lorg/jbox2d/common/Transform;

    invoke-direct {v0}, Lorg/jbox2d/common/Transform;-><init>()V

    .line 125
    .local v0, "C":Lorg/jbox2d/common/Transform;
    iget-object v1, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v3, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Rot;->mulUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;)V

    .line 126
    iget-object v1, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget-object v3, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 127
    iget-object v1, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget-object v2, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 128
    return-object v0
.end method

.method public static final mul(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 7
    .param p0, "T"    # Lorg/jbox2d/common/Transform;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 86
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v1, v1, Lorg/jbox2d/common/Rot;->c:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v2, v2, Lorg/jbox2d/common/Rot;->s:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v2, v2, Lorg/jbox2d/common/Rot;->s:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v3, v3, Lorg/jbox2d/common/Rot;->c:F

    iget v4, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public static final mulToOut(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;)V
    .registers 6
    .param p0, "A"    # Lorg/jbox2d/common/Transform;
    .param p1, "B"    # Lorg/jbox2d/common/Transform;
    .param p2, "out"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 132
    sget-boolean v0, Lorg/jbox2d/common/Transform;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p2, p0, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 133
    :cond_c
    iget-object v0, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v1, p1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p2, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mul(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;)V

    .line 134
    iget-object v0, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v1, p1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget-object v2, p2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOut(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 135
    iget-object v0, p2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 136
    return-void
.end method

.method public static final mulToOut(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 7
    .param p0, "T"    # Lorg/jbox2d/common/Transform;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 90
    iget-object v1, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v1, v1, Lorg/jbox2d/common/Rot;->s:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v2, v2, Lorg/jbox2d/common/Rot;->c:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->y:F

    add-float v0, v1, v2

    .line 91
    .local v0, "tempy":F
    iget-object v1, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v1, v1, Lorg/jbox2d/common/Rot;->c:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v2, v2, Lorg/jbox2d/common/Rot;->s:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v2, v2, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v1, v2

    iput v1, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 92
    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 93
    return-void
.end method

.method public static final mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;)V
    .registers 6
    .param p0, "A"    # Lorg/jbox2d/common/Transform;
    .param p1, "B"    # Lorg/jbox2d/common/Transform;
    .param p2, "out"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 139
    sget-boolean v0, Lorg/jbox2d/common/Transform;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p2, p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :cond_c
    sget-boolean v0, Lorg/jbox2d/common/Transform;->$assertionsDisabled:Z

    if-nez v0, :cond_18

    if-ne p2, p0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 141
    :cond_18
    iget-object v0, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v1, p1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p2, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;)V

    .line 142
    iget-object v0, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v1, p1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget-object v2, p2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulToOutUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 143
    iget-object v0, p2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->addLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 144
    return-void
.end method

.method public static final mulToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 6
    .param p0, "T"    # Lorg/jbox2d/common/Transform;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 96
    sget-boolean v0, Lorg/jbox2d/common/Transform;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p1, p2, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_c
    iget-object v0, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v0, v0, Lorg/jbox2d/common/Rot;->c:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v1, v1, Lorg/jbox2d/common/Rot;->s:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->x:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 98
    iget-object v0, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v0, v0, Lorg/jbox2d/common/Rot;->s:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v1, v1, Lorg/jbox2d/common/Rot;->c:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v1, v1, Lorg/jbox2d/common/Vec2;->y:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 99
    return-void
.end method

.method public static final mulTrans(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;)Lorg/jbox2d/common/Transform;
    .registers 6
    .param p0, "A"    # Lorg/jbox2d/common/Transform;
    .param p1, "B"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 149
    new-instance v0, Lorg/jbox2d/common/Transform;

    invoke-direct {v0}, Lorg/jbox2d/common/Transform;-><init>()V

    .line 150
    .local v0, "C":Lorg/jbox2d/common/Transform;
    iget-object v1, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v3, v0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;)V

    .line 151
    sget-object v1, Lorg/jbox2d/common/Transform;->pool:Lorg/jbox2d/common/Vec2;

    iget-object v2, p1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 152
    iget-object v1, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    sget-object v2, Lorg/jbox2d/common/Transform;->pool:Lorg/jbox2d/common/Vec2;

    iget-object v3, v0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-static {v1, v2, v3}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 153
    return-object v0
.end method

.method public static final mulTrans(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 8
    .param p0, "T"    # Lorg/jbox2d/common/Transform;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 102
    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    sub-float v0, v2, v3

    .line 103
    .local v0, "px":F
    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    sub-float v1, v2, v3

    .line 104
    .local v1, "py":F
    new-instance v2, Lorg/jbox2d/common/Vec2;

    iget-object v3, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v3, v3, Lorg/jbox2d/common/Rot;->c:F

    mul-float/2addr v3, v0

    iget-object v4, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v4, v4, Lorg/jbox2d/common/Rot;->s:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v4, v4, Lorg/jbox2d/common/Rot;->s:F

    neg-float v4, v4

    mul-float/2addr v4, v0

    iget-object v5, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v5, v5, Lorg/jbox2d/common/Rot;->c:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v2
.end method

.method public static final mulTransToOut(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;)V
    .registers 6
    .param p0, "A"    # Lorg/jbox2d/common/Transform;
    .param p1, "B"    # Lorg/jbox2d/common/Transform;
    .param p2, "out"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 157
    sget-boolean v0, Lorg/jbox2d/common/Transform;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p2, p0, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 158
    :cond_c
    iget-object v0, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v1, p1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p2, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulTrans(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;)V

    .line 159
    sget-object v0, Lorg/jbox2d/common/Transform;->pool:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 160
    iget-object v0, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    sget-object v1, Lorg/jbox2d/common/Transform;->pool:Lorg/jbox2d/common/Vec2;

    iget-object v2, p2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulTrans(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 161
    return-void
.end method

.method public static final mulTransToOut(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 8
    .param p0, "T"    # Lorg/jbox2d/common/Transform;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 108
    iget v3, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v4, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->x:F

    sub-float v0, v3, v4

    .line 109
    .local v0, "px":F
    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v4, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v4, v4, Lorg/jbox2d/common/Vec2;->y:F

    sub-float v1, v3, v4

    .line 110
    .local v1, "py":F
    iget-object v3, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v3, v3, Lorg/jbox2d/common/Rot;->s:F

    neg-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v4, v4, Lorg/jbox2d/common/Rot;->c:F

    mul-float/2addr v4, v1

    add-float v2, v3, v4

    .line 111
    .local v2, "tempy":F
    iget-object v3, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v3, v3, Lorg/jbox2d/common/Rot;->c:F

    mul-float/2addr v3, v0

    iget-object v4, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v4, v4, Lorg/jbox2d/common/Rot;->s:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 112
    iput v2, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 113
    return-void
.end method

.method public static final mulTransToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Transform;)V
    .registers 6
    .param p0, "A"    # Lorg/jbox2d/common/Transform;
    .param p1, "B"    # Lorg/jbox2d/common/Transform;
    .param p2, "out"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 165
    sget-boolean v0, Lorg/jbox2d/common/Transform;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p2, p0, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 166
    :cond_c
    sget-boolean v0, Lorg/jbox2d/common/Transform;->$assertionsDisabled:Z

    if-nez v0, :cond_18

    if-ne p2, p1, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 167
    :cond_18
    iget-object v0, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v1, p1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v2, p2, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Rot;)V

    .line 168
    sget-object v0, Lorg/jbox2d/common/Transform;->pool:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    move-result-object v0

    iget-object v1, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->subLocal(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 169
    iget-object v0, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    sget-object v1, Lorg/jbox2d/common/Transform;->pool:Lorg/jbox2d/common/Vec2;

    iget-object v2, p2, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-static {v0, v1, v2}, Lorg/jbox2d/common/Rot;->mulTransUnsafe(Lorg/jbox2d/common/Rot;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 170
    return-void
.end method

.method public static final mulTransToOutUnsafe(Lorg/jbox2d/common/Transform;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 7
    .param p0, "T"    # Lorg/jbox2d/common/Transform;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 116
    sget-boolean v2, Lorg/jbox2d/common/Transform;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-ne p1, p2, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 117
    :cond_c
    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    iget-object v3, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->x:F

    sub-float v0, v2, v3

    .line 118
    .local v0, "px":F
    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    iget-object v3, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget v3, v3, Lorg/jbox2d/common/Vec2;->y:F

    sub-float v1, v2, v3

    .line 119
    .local v1, "py":F
    iget-object v2, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v2, v2, Lorg/jbox2d/common/Rot;->c:F

    mul-float/2addr v2, v0

    iget-object v3, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v3, v3, Lorg/jbox2d/common/Rot;->s:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 120
    iget-object v2, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v2, v2, Lorg/jbox2d/common/Rot;->s:F

    neg-float v2, v2

    mul-float/2addr v2, v0

    iget-object v3, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget v3, v3, Lorg/jbox2d/common/Rot;->c:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 121
    return-void
.end method


# virtual methods
.method public final set(Lorg/jbox2d/common/Transform;)Lorg/jbox2d/common/Transform;
    .registers 4
    .param p1, "xf"    # Lorg/jbox2d/common/Transform;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    iget-object v1, p1, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 64
    iget-object v0, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    iget-object v1, p1, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-virtual {v0, v1}, Lorg/jbox2d/common/Rot;->set(Lorg/jbox2d/common/Rot;)Lorg/jbox2d/common/Rot;

    .line 65
    return-object p0
.end method

.method public final set(Lorg/jbox2d/common/Vec2;F)V
    .registers 4
    .param p1, "p"    # Lorg/jbox2d/common/Vec2;
    .param p2, "angle"    # F

    .prologue
    .line 75
    iget-object v0, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0, p1}, Lorg/jbox2d/common/Vec2;->set(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;

    .line 76
    iget-object v0, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-virtual {v0, p2}, Lorg/jbox2d/common/Rot;->set(F)Lorg/jbox2d/common/Rot;

    .line 77
    return-void
.end method

.method public final setIdentity()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec2;->setZero()V

    .line 82
    iget-object v0, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-virtual {v0}, Lorg/jbox2d/common/Rot;->setIdentity()Lorg/jbox2d/common/Rot;

    .line 83
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 174
    const-string v0, "XForm:\n"

    .line 175
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Transform;->p:Lorg/jbox2d/common/Vec2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "R: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jbox2d/common/Transform;->q:Lorg/jbox2d/common/Rot;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    return-object v0
.end method
