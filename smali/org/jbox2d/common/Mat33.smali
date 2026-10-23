###### Class org.jbox2d.common.Mat33 (org.jbox2d.common.Mat33)
.class public Lorg/jbox2d/common/Mat33;
.super Ljava/lang/Object;
.source "Mat33.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final IDENTITY:Lorg/jbox2d/common/Mat33;

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field public final ex:Lorg/jbox2d/common/Vec3;

.field public final ey:Lorg/jbox2d/common/Vec3;

.field public final ez:Lorg/jbox2d/common/Vec3;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 33
    const-class v0, Lorg/jbox2d/common/Mat33;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_c
    sput-boolean v0, Lorg/jbox2d/common/Mat33;->$assertionsDisabled:Z

    .line 36
    new-instance v0, Lorg/jbox2d/common/Mat33;

    new-instance v1, Lorg/jbox2d/common/Vec3;

    invoke-direct {v1, v5, v4, v4}, Lorg/jbox2d/common/Vec3;-><init>(FFF)V

    new-instance v2, Lorg/jbox2d/common/Vec3;

    invoke-direct {v2, v4, v5, v4}, Lorg/jbox2d/common/Vec3;-><init>(FFF)V

    new-instance v3, Lorg/jbox2d/common/Vec3;

    invoke-direct {v3, v4, v4, v5}, Lorg/jbox2d/common/Vec3;-><init>(FFF)V

    invoke-direct {v0, v1, v2, v3}, Lorg/jbox2d/common/Mat33;-><init>(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V

    sput-object v0, Lorg/jbox2d/common/Mat33;->IDENTITY:Lorg/jbox2d/common/Mat33;

    return-void

    .line 33
    :cond_25
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/jbox2d/common/Vec3;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec3;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    .line 43
    new-instance v0, Lorg/jbox2d/common/Vec3;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec3;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    .line 44
    new-instance v0, Lorg/jbox2d/common/Vec3;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec3;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V
    .registers 5
    .param p1, "argCol1"    # Lorg/jbox2d/common/Vec3;
    .param p2, "argCol2"    # Lorg/jbox2d/common/Vec3;
    .param p3, "argCol3"    # Lorg/jbox2d/common/Vec3;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/jbox2d/common/Vec3;->clone()Lorg/jbox2d/common/Vec3;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    .line 49
    invoke-virtual {p2}, Lorg/jbox2d/common/Vec3;->clone()Lorg/jbox2d/common/Vec3;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    .line 50
    invoke-virtual {p3}, Lorg/jbox2d/common/Vec3;->clone()Lorg/jbox2d/common/Vec3;

    move-result-object v0

    iput-object v0, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    .line 51
    return-void
.end method

.method public static final mul(Lorg/jbox2d/common/Mat33;Lorg/jbox2d/common/Vec3;)Lorg/jbox2d/common/Vec3;
    .registers 8
    .param p0, "A"    # Lorg/jbox2d/common/Mat33;
    .param p1, "v"    # Lorg/jbox2d/common/Vec3;

    .prologue
    .line 61
    new-instance v0, Lorg/jbox2d/common/Vec3;

    iget v1, p1, Lorg/jbox2d/common/Vec3;->x:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v2, v2, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec3;->y:F

    iget-object v3, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v3, v3, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec3;->z:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v2, v2, Lorg/jbox2d/common/Vec3;->x:F

    add-float/2addr v1, v2

    iget v2, p1, Lorg/jbox2d/common/Vec3;->x:F

    iget-object v3, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v3, v3, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v2, v3

    iget v3, p1, Lorg/jbox2d/common/Vec3;->y:F

    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v4, v4, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p1, Lorg/jbox2d/common/Vec3;->z:F

    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v4, v4, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p1, Lorg/jbox2d/common/Vec3;->x:F

    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v4, v4, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v3, v4

    iget v4, p1, Lorg/jbox2d/common/Vec3;->y:F

    iget-object v5, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v5, v5, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p1, Lorg/jbox2d/common/Vec3;->z:F

    iget-object v5, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v5, v5, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/jbox2d/common/Vec3;-><init>(FFF)V

    return-object v0
.end method

.method public static final mul22(Lorg/jbox2d/common/Mat33;Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 7
    .param p0, "A"    # Lorg/jbox2d/common/Mat33;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 66
    new-instance v0, Lorg/jbox2d/common/Vec2;

    iget-object v1, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v1, v1, Lorg/jbox2d/common/Vec3;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v2, v2, Lorg/jbox2d/common/Vec3;->x:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v2, v2, Lorg/jbox2d/common/Vec3;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v3, v3, Lorg/jbox2d/common/Vec3;->y:F

    iget v4, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/jbox2d/common/Vec2;-><init>(FF)V

    return-object v0
.end method

.method public static final mul22ToOut(Lorg/jbox2d/common/Mat33;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 7
    .param p0, "A"    # Lorg/jbox2d/common/Mat33;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 70
    iget-object v1, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v1, v1, Lorg/jbox2d/common/Vec3;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v2, v2, Lorg/jbox2d/common/Vec3;->x:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 71
    .local v0, "tempx":F
    iget-object v1, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v1, v1, Lorg/jbox2d/common/Vec3;->y:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v2, v2, Lorg/jbox2d/common/Vec3;->y:F

    iget v3, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 72
    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 73
    return-void
.end method

.method public static final mul22ToOutUnsafe(Lorg/jbox2d/common/Mat33;Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 6
    .param p0, "A"    # Lorg/jbox2d/common/Mat33;
    .param p1, "v"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 76
    sget-boolean v0, Lorg/jbox2d/common/Mat33;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p1, p2, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_c
    iget-object v0, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v0, v0, Lorg/jbox2d/common/Vec3;->y:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v1, v1, Lorg/jbox2d/common/Vec3;->y:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 78
    iget-object v0, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v0, v0, Lorg/jbox2d/common/Vec3;->x:F

    iget v1, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v1, v1, Lorg/jbox2d/common/Vec3;->x:F

    iget v2, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 79
    return-void
.end method

.method public static final mulToOut(Lorg/jbox2d/common/Mat33;Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V
    .registers 8
    .param p0, "A"    # Lorg/jbox2d/common/Mat33;
    .param p1, "v"    # Lorg/jbox2d/common/Vec3;
    .param p2, "out"    # Lorg/jbox2d/common/Vec3;

    .prologue
    .line 82
    iget v2, p1, Lorg/jbox2d/common/Vec3;->x:F

    iget-object v3, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v3, v3, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v2, v3

    iget v3, p1, Lorg/jbox2d/common/Vec3;->y:F

    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v4, v4, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p1, Lorg/jbox2d/common/Vec3;->z:F

    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v4, v4, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 83
    .local v0, "tempy":F
    iget v2, p1, Lorg/jbox2d/common/Vec3;->x:F

    iget-object v3, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v3, v3, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v2, v3

    iget v3, p1, Lorg/jbox2d/common/Vec3;->y:F

    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v4, v4, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p1, Lorg/jbox2d/common/Vec3;->z:F

    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v4, v4, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 84
    .local v1, "tempz":F
    iget v2, p1, Lorg/jbox2d/common/Vec3;->x:F

    iget-object v3, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v3, v3, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Lorg/jbox2d/common/Vec3;->y:F

    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v4, v4, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p1, Lorg/jbox2d/common/Vec3;->z:F

    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v4, v4, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p2, Lorg/jbox2d/common/Vec3;->x:F

    .line 85
    iput v0, p2, Lorg/jbox2d/common/Vec3;->y:F

    .line 86
    iput v1, p2, Lorg/jbox2d/common/Vec3;->z:F

    .line 87
    return-void
.end method

.method public static final mulToOutUnsafe(Lorg/jbox2d/common/Mat33;Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V
    .registers 6
    .param p0, "A"    # Lorg/jbox2d/common/Mat33;
    .param p1, "v"    # Lorg/jbox2d/common/Vec3;
    .param p2, "out"    # Lorg/jbox2d/common/Vec3;

    .prologue
    .line 90
    sget-boolean v0, Lorg/jbox2d/common/Mat33;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-ne p2, p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_c
    iget v0, p1, Lorg/jbox2d/common/Vec3;->x:F

    iget-object v1, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v1, v1, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/jbox2d/common/Vec3;->y:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v2, v2, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/jbox2d/common/Vec3;->z:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v2, v2, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec3;->x:F

    .line 92
    iget v0, p1, Lorg/jbox2d/common/Vec3;->x:F

    iget-object v1, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v1, v1, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/jbox2d/common/Vec3;->y:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v2, v2, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/jbox2d/common/Vec3;->z:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v2, v2, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec3;->y:F

    .line 93
    iget v0, p1, Lorg/jbox2d/common/Vec3;->x:F

    iget-object v1, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v1, v1, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/jbox2d/common/Vec3;->y:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v2, v2, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/jbox2d/common/Vec3;->z:F

    iget-object v2, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v2, v2, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/jbox2d/common/Vec3;->z:F

    .line 94
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    if-ne p0, p1, :cond_5

    .line 235
    :cond_4
    :goto_4
    return v1

    .line 223
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    .line 224
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 225
    check-cast v0, Lorg/jbox2d/common/Mat33;

    .line 226
    .local v0, "other":Lorg/jbox2d/common/Mat33;
    iget-object v3, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    if-nez v3, :cond_22

    .line 227
    iget-object v3, v0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    if-eqz v3, :cond_2e

    move v1, v2

    goto :goto_4

    .line 228
    :cond_22
    iget-object v3, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget-object v4, v0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    invoke-virtual {v3, v4}, Lorg/jbox2d/common/Vec3;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    move v1, v2

    goto :goto_4

    .line 229
    :cond_2e
    iget-object v3, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    if-nez v3, :cond_38

    .line 230
    iget-object v3, v0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    if-eqz v3, :cond_44

    move v1, v2

    goto :goto_4

    .line 231
    :cond_38
    iget-object v3, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget-object v4, v0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    invoke-virtual {v3, v4}, Lorg/jbox2d/common/Vec3;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    move v1, v2

    goto :goto_4

    .line 232
    :cond_44
    iget-object v3, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    if-nez v3, :cond_4e

    .line 233
    iget-object v3, v0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    .line 234
    :cond_4e
    iget-object v3, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget-object v4, v0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    invoke-virtual {v3, v4}, Lorg/jbox2d/common/Vec3;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getInverse22(Lorg/jbox2d/common/Mat33;)V
    .registers 10
    .param p1, "M"    # Lorg/jbox2d/common/Mat33;

    .prologue
    const/4 v7, 0x0

    .line 166
    iget-object v5, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v0, v5, Lorg/jbox2d/common/Vec3;->x:F

    .local v0, "a":F
    iget-object v5, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v1, v5, Lorg/jbox2d/common/Vec3;->x:F

    .local v1, "b":F
    iget-object v5, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v2, v5, Lorg/jbox2d/common/Vec3;->y:F

    .local v2, "c":F
    iget-object v5, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v3, v5, Lorg/jbox2d/common/Vec3;->y:F

    .line 167
    .local v3, "d":F
    mul-float v5, v0, v3

    mul-float v6, v1, v2

    sub-float v4, v5, v6

    .line 168
    .local v4, "det":F
    cmpl-float v5, v4, v7

    if-eqz v5, :cond_1f

    .line 169
    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, v5, v4

    .line 172
    :cond_1f
    iget-object v5, p1, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    mul-float v6, v4, v3

    iput v6, v5, Lorg/jbox2d/common/Vec3;->x:F

    .line 173
    iget-object v5, p1, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    neg-float v6, v4

    mul-float/2addr v6, v1

    iput v6, v5, Lorg/jbox2d/common/Vec3;->x:F

    .line 174
    iget-object v5, p1, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iput v7, v5, Lorg/jbox2d/common/Vec3;->z:F

    .line 175
    iget-object v5, p1, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    neg-float v6, v4

    mul-float/2addr v6, v2

    iput v6, v5, Lorg/jbox2d/common/Vec3;->y:F

    .line 176
    iget-object v5, p1, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    mul-float v6, v4, v0

    iput v6, v5, Lorg/jbox2d/common/Vec3;->y:F

    .line 177
    iget-object v5, p1, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iput v7, v5, Lorg/jbox2d/common/Vec3;->z:F

    .line 178
    iget-object v5, p1, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iput v7, v5, Lorg/jbox2d/common/Vec3;->x:F

    .line 179
    iget-object v5, p1, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iput v7, v5, Lorg/jbox2d/common/Vec3;->y:F

    .line 180
    iget-object v5, p1, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iput v7, v5, Lorg/jbox2d/common/Vec3;->z:F

    .line 181
    return-void
.end method

.method public getSymInverse33(Lorg/jbox2d/common/Mat33;)V
    .registers 15
    .param p1, "M"    # Lorg/jbox2d/common/Mat33;

    .prologue
    .line 185
    iget-object v10, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v10, v10, Lorg/jbox2d/common/Vec3;->y:F

    iget-object v11, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v11, v11, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v10, v11

    iget-object v11, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v11, v11, Lorg/jbox2d/common/Vec3;->z:F

    iget-object v12, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v12, v12, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v11, v12

    sub-float v6, v10, v11

    .line 186
    .local v6, "bx":F
    iget-object v10, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v10, v10, Lorg/jbox2d/common/Vec3;->z:F

    iget-object v11, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v11, v11, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v10, v11

    iget-object v11, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v11, v11, Lorg/jbox2d/common/Vec3;->x:F

    iget-object v12, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v12, v12, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v11, v12

    sub-float v7, v10, v11

    .line 187
    .local v7, "by":F
    iget-object v10, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v10, v10, Lorg/jbox2d/common/Vec3;->x:F

    iget-object v11, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v11, v11, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v10, v11

    iget-object v11, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v11, v11, Lorg/jbox2d/common/Vec3;->y:F

    iget-object v12, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v12, v12, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v11, v12

    sub-float v8, v10, v11

    .line 188
    .local v8, "bz":F
    iget-object v10, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v10, v10, Lorg/jbox2d/common/Vec3;->x:F

    mul-float/2addr v10, v6

    iget-object v11, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v11, v11, Lorg/jbox2d/common/Vec3;->y:F

    mul-float/2addr v11, v7

    add-float/2addr v10, v11

    iget-object v11, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v11, v11, Lorg/jbox2d/common/Vec3;->z:F

    mul-float/2addr v11, v8

    add-float v9, v10, v11

    .line 189
    .local v9, "det":F
    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_57

    .line 190
    const/high16 v10, 0x3f800000    # 1.0f

    div-float v9, v10, v9

    .line 193
    :cond_57
    iget-object v10, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v0, v10, Lorg/jbox2d/common/Vec3;->x:F

    .local v0, "a11":F
    iget-object v10, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v1, v10, Lorg/jbox2d/common/Vec3;->x:F

    .local v1, "a12":F
    iget-object v10, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v2, v10, Lorg/jbox2d/common/Vec3;->x:F

    .line 194
    .local v2, "a13":F
    iget-object v10, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v3, v10, Lorg/jbox2d/common/Vec3;->y:F

    .local v3, "a22":F
    iget-object v10, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v4, v10, Lorg/jbox2d/common/Vec3;->y:F

    .line 195
    .local v4, "a23":F
    iget-object v10, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget v5, v10, Lorg/jbox2d/common/Vec3;->z:F

    .line 197
    .local v5, "a33":F
    iget-object v10, p1, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    mul-float v11, v3, v5

    mul-float v12, v4, v4

    sub-float/2addr v11, v12

    mul-float/2addr v11, v9

    iput v11, v10, Lorg/jbox2d/common/Vec3;->x:F

    .line 198
    iget-object v10, p1, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    mul-float v11, v2, v4

    mul-float v12, v1, v5

    sub-float/2addr v11, v12

    mul-float/2addr v11, v9

    iput v11, v10, Lorg/jbox2d/common/Vec3;->y:F

    .line 199
    iget-object v10, p1, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    mul-float v11, v1, v4

    mul-float v12, v2, v3

    sub-float/2addr v11, v12

    mul-float/2addr v11, v9

    iput v11, v10, Lorg/jbox2d/common/Vec3;->z:F

    .line 201
    iget-object v10, p1, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget-object v11, p1, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v11, v11, Lorg/jbox2d/common/Vec3;->y:F

    iput v11, v10, Lorg/jbox2d/common/Vec3;->x:F

    .line 202
    iget-object v10, p1, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    mul-float v11, v0, v5

    mul-float v12, v2, v2

    sub-float/2addr v11, v12

    mul-float/2addr v11, v9

    iput v11, v10, Lorg/jbox2d/common/Vec3;->y:F

    .line 203
    iget-object v10, p1, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    mul-float v11, v2, v1

    mul-float v12, v0, v4

    sub-float/2addr v11, v12

    mul-float/2addr v11, v9

    iput v11, v10, Lorg/jbox2d/common/Vec3;->z:F

    .line 205
    iget-object v10, p1, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget-object v11, p1, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v11, v11, Lorg/jbox2d/common/Vec3;->z:F

    iput v11, v10, Lorg/jbox2d/common/Vec3;->x:F

    .line 206
    iget-object v10, p1, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    iget-object v11, p1, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v11, v11, Lorg/jbox2d/common/Vec3;->z:F

    iput v11, v10, Lorg/jbox2d/common/Vec3;->y:F

    .line 207
    iget-object v10, p1, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    mul-float v11, v0, v3

    mul-float v12, v1, v1

    sub-float/2addr v11, v12

    mul-float/2addr v11, v9

    iput v11, v10, Lorg/jbox2d/common/Vec3;->z:F

    .line 208
    return-void
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 212
    const/16 v0, 0x1f

    .line 213
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 214
    .local v1, "result":I
    iget-object v2, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    if-nez v2, :cond_1d

    move v2, v3

    :goto_9
    add-int/lit8 v1, v2, 0x1f

    .line 215
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    if-nez v2, :cond_24

    move v2, v3

    :goto_12
    add-int v1, v4, v2

    .line 216
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    if-nez v4, :cond_2b

    :goto_1a
    add-int v1, v2, v3

    .line 217
    return v1

    .line 214
    :cond_1d
    iget-object v2, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec3;->hashCode()I

    move-result v2

    goto :goto_9

    .line 215
    :cond_24
    iget-object v2, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    invoke-virtual {v2}, Lorg/jbox2d/common/Vec3;->hashCode()I

    move-result v2

    goto :goto_12

    .line 216
    :cond_2b
    iget-object v3, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    invoke-virtual {v3}, Lorg/jbox2d/common/Vec3;->hashCode()I

    move-result v3

    goto :goto_1a
.end method

.method public setZero()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec3;->setZero()V

    .line 55
    iget-object v0, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec3;->setZero()V

    .line 56
    iget-object v0, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    invoke-virtual {v0}, Lorg/jbox2d/common/Vec3;->setZero()V

    .line 57
    return-void
.end method

.method public final solve22(Lorg/jbox2d/common/Vec2;)Lorg/jbox2d/common/Vec2;
    .registers 3
    .param p1, "b"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 104
    new-instance v0, Lorg/jbox2d/common/Vec2;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec2;-><init>()V

    .line 105
    .local v0, "x":Lorg/jbox2d/common/Vec2;
    invoke-virtual {p0, p1, v0}, Lorg/jbox2d/common/Mat33;->solve22ToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V

    .line 106
    return-object v0
.end method

.method public final solve22ToOut(Lorg/jbox2d/common/Vec2;Lorg/jbox2d/common/Vec2;)V
    .registers 10
    .param p1, "b"    # Lorg/jbox2d/common/Vec2;
    .param p2, "out"    # Lorg/jbox2d/common/Vec2;

    .prologue
    .line 117
    iget-object v5, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v0, v5, Lorg/jbox2d/common/Vec3;->x:F

    .local v0, "a11":F
    iget-object v5, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v1, v5, Lorg/jbox2d/common/Vec3;->x:F

    .local v1, "a12":F
    iget-object v5, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    iget v2, v5, Lorg/jbox2d/common/Vec3;->y:F

    .local v2, "a21":F
    iget-object v5, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget v3, v5, Lorg/jbox2d/common/Vec3;->y:F

    .line 118
    .local v3, "a22":F
    mul-float v5, v0, v3

    mul-float v6, v1, v2

    sub-float v4, v5, v6

    .line 119
    .local v4, "det":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_1f

    .line 120
    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, v5, v4

    .line 122
    :cond_1f
    iget v5, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v5, v3

    iget v6, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    mul-float/2addr v5, v4

    iput v5, p2, Lorg/jbox2d/common/Vec2;->x:F

    .line 123
    iget v5, p1, Lorg/jbox2d/common/Vec2;->y:F

    mul-float/2addr v5, v0

    iget v6, p1, Lorg/jbox2d/common/Vec2;->x:F

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    mul-float/2addr v5, v4

    iput v5, p2, Lorg/jbox2d/common/Vec2;->y:F

    .line 124
    return-void
.end method

.method public final solve33(Lorg/jbox2d/common/Vec3;)Lorg/jbox2d/common/Vec3;
    .registers 3
    .param p1, "b"    # Lorg/jbox2d/common/Vec3;

    .prologue
    .line 135
    new-instance v0, Lorg/jbox2d/common/Vec3;

    invoke-direct {v0}, Lorg/jbox2d/common/Vec3;-><init>()V

    .line 136
    .local v0, "x":Lorg/jbox2d/common/Vec3;
    invoke-virtual {p0, p1, v0}, Lorg/jbox2d/common/Mat33;->solve33ToOut(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V

    .line 137
    return-object v0
.end method

.method public final solve33ToOut(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V
    .registers 9
    .param p1, "b"    # Lorg/jbox2d/common/Vec3;
    .param p2, "out"    # Lorg/jbox2d/common/Vec3;

    .prologue
    .line 148
    sget-boolean v4, Lorg/jbox2d/common/Mat33;->$assertionsDisabled:Z

    if-nez v4, :cond_c

    if-ne p1, p2, :cond_c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 149
    :cond_c
    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget-object v5, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    invoke-static {v4, v5, p2}, Lorg/jbox2d/common/Vec3;->crossToOutUnsafe(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V

    .line 150
    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    invoke-static {v4, p2}, Lorg/jbox2d/common/Vec3;->dot(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)F

    move-result v0

    .line 151
    .local v0, "det":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_22

    .line 152
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v0, v4, v0

    .line 154
    :cond_22
    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    iget-object v5, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    invoke-static {v4, v5, p2}, Lorg/jbox2d/common/Vec3;->crossToOutUnsafe(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V

    .line 155
    invoke-static {p1, p2}, Lorg/jbox2d/common/Vec3;->dot(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)F

    move-result v4

    mul-float v1, v0, v4

    .line 156
    .local v1, "x":F
    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ez:Lorg/jbox2d/common/Vec3;

    invoke-static {p1, v4, p2}, Lorg/jbox2d/common/Vec3;->crossToOutUnsafe(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V

    .line 157
    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    invoke-static {v4, p2}, Lorg/jbox2d/common/Vec3;->dot(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)F

    move-result v4

    mul-float v2, v0, v4

    .line 158
    .local v2, "y":F
    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ey:Lorg/jbox2d/common/Vec3;

    invoke-static {v4, p1, p2}, Lorg/jbox2d/common/Vec3;->crossToOutUnsafe(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)V

    .line 159
    iget-object v4, p0, Lorg/jbox2d/common/Mat33;->ex:Lorg/jbox2d/common/Vec3;

    invoke-static {v4, p2}, Lorg/jbox2d/common/Vec3;->dot(Lorg/jbox2d/common/Vec3;Lorg/jbox2d/common/Vec3;)F

    move-result v4

    mul-float v3, v0, v4

    .line 160
    .local v3, "z":F
    iput v1, p2, Lorg/jbox2d/common/Vec3;->x:F

    .line 161
    iput v2, p2, Lorg/jbox2d/common/Vec3;->y:F

    .line 162
    iput v3, p2, Lorg/jbox2d/common/Vec3;->z:F

    .line 163
    return-void
.end method
