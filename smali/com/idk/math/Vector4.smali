###### Class com.idk.math.Vector4 (com.idk.math.Vector4)
.class public Lcom/idk/math/Vector4;
.super Ljava/lang/Object;
.source "Vector4.java"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p4, p0, Lcom/idk/math/Vector4;->w:F

    .line 13
    iput p1, p0, Lcom/idk/math/Vector4;->x:F

    .line 14
    iput p2, p0, Lcom/idk/math/Vector4;->y:F

    .line 15
    iput p3, p0, Lcom/idk/math/Vector4;->z:F

    .line 16
    return-void
.end method


# virtual methods
.method public set(FFFF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 18
    iput p4, p0, Lcom/idk/math/Vector4;->w:F

    .line 19
    iput p1, p0, Lcom/idk/math/Vector4;->x:F

    .line 20
    iput p2, p0, Lcom/idk/math/Vector4;->y:F

    .line 21
    iput p3, p0, Lcom/idk/math/Vector4;->z:F

    .line 22
    return-void
.end method

.method public toArray()[F
    .registers 4

    .prologue
    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/idk/math/Vector4;->x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/idk/math/Vector4;->y:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/idk/math/Vector4;->z:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/idk/math/Vector4;->w:F

    aput v2, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/idk/math/Vector4;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/idk/math/Vector4;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/idk/math/Vector4;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/idk/math/Vector4;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
