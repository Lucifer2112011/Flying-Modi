###### Class org.jbox2d.collision.broadphase.Pair (org.jbox2d.collision.broadphase.Pair)
.class public Lorg/jbox2d/collision/broadphase/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jbox2d/collision/broadphase/Pair;",
        ">;"
    }
.end annotation


# instance fields
.field public proxyIdA:I

.field public proxyIdB:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lorg/jbox2d/collision/broadphase/Pair;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jbox2d/collision/broadphase/Pair;->compareTo(Lorg/jbox2d/collision/broadphase/Pair;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jbox2d/collision/broadphase/Pair;)I
    .registers 6
    .param p1, "pair2"    # Lorg/jbox2d/collision/broadphase/Pair;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 36
    iget v2, p0, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdA:I

    iget v3, p1, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdA:I

    if-ge v2, v3, :cond_9

    .line 44
    :cond_8
    :goto_8
    return v0

    .line 40
    :cond_9
    iget v2, p0, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdA:I

    iget v3, p1, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdA:I

    if-ne v2, v3, :cond_1f

    .line 41
    iget v2, p0, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdB:I

    iget v3, p1, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdB:I

    if-lt v2, v3, :cond_8

    iget v0, p0, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdB:I

    iget v2, p1, Lorg/jbox2d/collision/broadphase/Pair;->proxyIdB:I

    if-ne v0, v2, :cond_1d

    const/4 v0, 0x0

    goto :goto_8

    :cond_1d
    move v0, v1

    goto :goto_8

    :cond_1f
    move v0, v1

    .line 44
    goto :goto_8
.end method
