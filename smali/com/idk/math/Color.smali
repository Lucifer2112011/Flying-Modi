###### Class com.idk.math.Color (com.idk.math.Color)
.class public Lcom/idk/math/Color;
.super Ljava/lang/Object;
.source "Color.java"


# instance fields
.field public a:F

.field public b:F

.field public g:F

.field public r:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v0, p0, Lcom/idk/math/Color;->r:F

    .line 5
    iput v0, p0, Lcom/idk/math/Color;->b:F

    .line 6
    iput v0, p0, Lcom/idk/math/Color;->g:F

    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/idk/math/Color;->a:F

    .line 10
    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 5
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v0, p0, Lcom/idk/math/Color;->r:F

    .line 5
    iput v0, p0, Lcom/idk/math/Color;->b:F

    .line 6
    iput v0, p0, Lcom/idk/math/Color;->g:F

    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/idk/math/Color;->a:F

    .line 13
    iput p1, p0, Lcom/idk/math/Color;->r:F

    .line 14
    iput p2, p0, Lcom/idk/math/Color;->g:F

    .line 15
    iput p3, p0, Lcom/idk/math/Color;->b:F

    .line 16
    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v0, p0, Lcom/idk/math/Color;->r:F

    .line 5
    iput v0, p0, Lcom/idk/math/Color;->b:F

    .line 6
    iput v0, p0, Lcom/idk/math/Color;->g:F

    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/idk/math/Color;->a:F

    .line 18
    iput p1, p0, Lcom/idk/math/Color;->r:F

    .line 19
    iput p2, p0, Lcom/idk/math/Color;->g:F

    .line 20
    iput p3, p0, Lcom/idk/math/Color;->b:F

    .line 21
    iput p4, p0, Lcom/idk/math/Color;->a:F

    .line 22
    return-void
.end method

.method public static BLACK()Lcom/idk/math/Color;
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/idk/math/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static BLUE()Lcom/idk/math/Color;
    .registers 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 30
    new-instance v0, Lcom/idk/math/Color;

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static BROWN()Lcom/idk/math/Color;
    .registers 5

    .prologue
    .line 43
    new-instance v0, Lcom/idk/math/Color;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static CYAN()Lcom/idk/math/Color;
    .registers 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 32
    new-instance v0, Lcom/idk/math/Color;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static DARK_BLUE()Lcom/idk/math/Color;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/idk/math/Color;

    const v1, 0x3f0ccccd    # 0.55f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static DARK_CYAN()Lcom/idk/math/Color;
    .registers 4

    .prologue
    const v3, 0x3f0ccccd    # 0.55f

    .line 60
    new-instance v0, Lcom/idk/math/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static DARK_GRAY()Lcom/idk/math/Color;
    .registers 3

    .prologue
    const/high16 v2, 0x3e800000    # 0.25f

    .line 38
    new-instance v0, Lcom/idk/math/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static DARK_GREEN()Lcom/idk/math/Color;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 58
    new-instance v0, Lcom/idk/math/Color;

    const v1, 0x3ec7ae14    # 0.39f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static DARK_MAGENTA()Lcom/idk/math/Color;
    .registers 4

    .prologue
    const v3, 0x3f0ccccd    # 0.55f

    .line 61
    new-instance v0, Lcom/idk/math/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static DARK_RED()Lcom/idk/math/Color;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 57
    new-instance v0, Lcom/idk/math/Color;

    const v1, 0x3f0ccccd    # 0.55f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static GRAY()Lcom/idk/math/Color;
    .registers 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 34
    new-instance v0, Lcom/idk/math/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static GREEN()Lcom/idk/math/Color;
    .registers 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 29
    new-instance v0, Lcom/idk/math/Color;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static INDIGO()Lcom/idk/math/Color;
    .registers 5

    .prologue
    .line 46
    new-instance v0, Lcom/idk/math/Color;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static LIGHT_GRAY()Lcom/idk/math/Color;
    .registers 3

    .prologue
    const/high16 v2, 0x3f400000    # 0.75f

    .line 39
    new-instance v0, Lcom/idk/math/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static LIME()Lcom/idk/math/Color;
    .registers 5

    .prologue
    .line 44
    new-instance v0, Lcom/idk/math/Color;

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static MAGENTA()Lcom/idk/math/Color;
    .registers 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 33
    new-instance v0, Lcom/idk/math/Color;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v2, v2}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static ORANGE()Lcom/idk/math/Color;
    .registers 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 40
    new-instance v0, Lcom/idk/math/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static PASTEL_BLUE()Lcom/idk/math/Color;
    .registers 5

    .prologue
    .line 52
    new-instance v0, Lcom/idk/math/Color;

    const v1, 0x3f2e147b    # 0.68f

    const v2, 0x3f59999a    # 0.85f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static PASTEL_GREEN()Lcom/idk/math/Color;
    .registers 4

    .prologue
    const v3, 0x3ef0a3d7    # 0.47f

    .line 51
    new-instance v0, Lcom/idk/math/Color;

    const v1, 0x3f5eb852    # 0.87f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static PASTEL_PURPLE()Lcom/idk/math/Color;
    .registers 5

    .prologue
    .line 54
    new-instance v0, Lcom/idk/math/Color;

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static PASTEL_RED()Lcom/idk/math/Color;
    .registers 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 50
    new-instance v0, Lcom/idk/math/Color;

    const v1, 0x3ed1eb85    # 0.41f

    const v2, 0x3ec28f5c    # 0.38f

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static PASTEL_YELLOW()Lcom/idk/math/Color;
    .registers 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 53
    new-instance v0, Lcom/idk/math/Color;

    const v1, 0x3f75c28f    # 0.96f

    const v2, 0x3f147ae1    # 0.58f

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static PINK()Lcom/idk/math/Color;
    .registers 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 42
    new-instance v0, Lcom/idk/math/Color;

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static PURPLE()Lcom/idk/math/Color;
    .registers 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    new-instance v0, Lcom/idk/math/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static RED()Lcom/idk/math/Color;
    .registers 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 28
    new-instance v0, Lcom/idk/math/Color;

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static TEAL()Lcom/idk/math/Color;
    .registers 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 45
    new-instance v0, Lcom/idk/math/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static TRANSPARENT()Lcom/idk/math/Color;
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 35
    new-instance v0, Lcom/idk/math/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static VIOLET()Lcom/idk/math/Color;
    .registers 4

    .prologue
    const v3, 0x3f6e147b    # 0.93f

    .line 47
    new-instance v0, Lcom/idk/math/Color;

    const v1, 0x3f028f5c    # 0.51f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static WHITE()Lcom/idk/math/Color;
    .registers 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    new-instance v0, Lcom/idk/math/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static YELLOW()Lcom/idk/math/Color;
    .registers 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    new-instance v0, Lcom/idk/math/Color;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/idk/math/Color;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method public toArray()[F
    .registers 4

    .prologue
    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/idk/math/Color;->r:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/idk/math/Color;->g:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/idk/math/Color;->b:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/idk/math/Color;->a:F

    aput v2, v0, v1

    return-object v0
.end method
