###### Class org.jbox2d.common.Color3f (org.jbox2d.common.Color3f)
.class public Lorg/jbox2d/common/Color3f;
.super Ljava/lang/Object;
.source "Color3f.java"


# static fields
.field public static final BLACK:Lorg/jbox2d/common/Color3f;

.field public static final BLUE:Lorg/jbox2d/common/Color3f;

.field public static final GREEN:Lorg/jbox2d/common/Color3f;

.field public static final RED:Lorg/jbox2d/common/Color3f;

.field public static final WHITE:Lorg/jbox2d/common/Color3f;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 57
    new-instance v0, Lorg/jbox2d/common/Color3f;

    invoke-direct {v0, v2, v2, v2}, Lorg/jbox2d/common/Color3f;-><init>(FFF)V

    sput-object v0, Lorg/jbox2d/common/Color3f;->WHITE:Lorg/jbox2d/common/Color3f;

    .line 58
    new-instance v0, Lorg/jbox2d/common/Color3f;

    invoke-direct {v0, v1, v1, v1}, Lorg/jbox2d/common/Color3f;-><init>(FFF)V

    sput-object v0, Lorg/jbox2d/common/Color3f;->BLACK:Lorg/jbox2d/common/Color3f;

    .line 59
    new-instance v0, Lorg/jbox2d/common/Color3f;

    invoke-direct {v0, v1, v1, v2}, Lorg/jbox2d/common/Color3f;-><init>(FFF)V

    sput-object v0, Lorg/jbox2d/common/Color3f;->BLUE:Lorg/jbox2d/common/Color3f;

    .line 60
    new-instance v0, Lorg/jbox2d/common/Color3f;

    invoke-direct {v0, v1, v2, v1}, Lorg/jbox2d/common/Color3f;-><init>(FFF)V

    sput-object v0, Lorg/jbox2d/common/Color3f;->GREEN:Lorg/jbox2d/common/Color3f;

    .line 61
    new-instance v0, Lorg/jbox2d/common/Color3f;

    invoke-direct {v0, v2, v1, v1}, Lorg/jbox2d/common/Color3f;-><init>(FFF)V

    sput-object v0, Lorg/jbox2d/common/Color3f;->RED:Lorg/jbox2d/common/Color3f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/common/Color3f;->z:F

    iput v0, p0, Lorg/jbox2d/common/Color3f;->y:F

    iput v0, p0, Lorg/jbox2d/common/Color3f;->x:F

    .line 70
    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lorg/jbox2d/common/Color3f;->x:F

    .line 73
    iput p2, p0, Lorg/jbox2d/common/Color3f;->y:F

    .line 74
    iput p3, p0, Lorg/jbox2d/common/Color3f;->z:F

    .line 75
    return-void
.end method


# virtual methods
.method public set(FFF)V
    .registers 4
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .prologue
    .line 78
    iput p1, p0, Lorg/jbox2d/common/Color3f;->x:F

    .line 79
    iput p2, p0, Lorg/jbox2d/common/Color3f;->y:F

    .line 80
    iput p3, p0, Lorg/jbox2d/common/Color3f;->z:F

    .line 81
    return-void
.end method

.method public set(Lorg/jbox2d/common/Color3f;)V
    .registers 3
    .param p1, "argColor"    # Lorg/jbox2d/common/Color3f;

    .prologue
    .line 84
    iget v0, p1, Lorg/jbox2d/common/Color3f;->x:F

    iput v0, p0, Lorg/jbox2d/common/Color3f;->x:F

    .line 85
    iget v0, p1, Lorg/jbox2d/common/Color3f;->y:F

    iput v0, p0, Lorg/jbox2d/common/Color3f;->y:F

    .line 86
    iget v0, p1, Lorg/jbox2d/common/Color3f;->z:F

    iput v0, p0, Lorg/jbox2d/common/Color3f;->z:F

    .line 87
    return-void
.end method
