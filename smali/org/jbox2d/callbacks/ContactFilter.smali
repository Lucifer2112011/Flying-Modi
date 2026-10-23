###### Class org.jbox2d.callbacks.ContactFilter (org.jbox2d.callbacks.ContactFilter)
.class public Lorg/jbox2d/callbacks/ContactFilter;
.super Ljava/lang/Object;
.source "ContactFilter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldCollide(Lorg/jbox2d/dynamics/Fixture;Lorg/jbox2d/dynamics/Fixture;)Z
    .registers 10
    .param p1, "fixtureA"    # Lorg/jbox2d/dynamics/Fixture;
    .param p2, "fixtureB"    # Lorg/jbox2d/dynamics/Fixture;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 48
    invoke-virtual {p1}, Lorg/jbox2d/dynamics/Fixture;->getFilterData()Lorg/jbox2d/dynamics/Filter;

    move-result-object v1

    .line 49
    .local v1, "filterA":Lorg/jbox2d/dynamics/Filter;
    invoke-virtual {p2}, Lorg/jbox2d/dynamics/Fixture;->getFilterData()Lorg/jbox2d/dynamics/Filter;

    move-result-object v2

    .line 51
    .local v2, "filterB":Lorg/jbox2d/dynamics/Filter;
    iget v5, v1, Lorg/jbox2d/dynamics/Filter;->groupIndex:I

    iget v6, v2, Lorg/jbox2d/dynamics/Filter;->groupIndex:I

    if-ne v5, v6, :cond_1b

    iget v5, v1, Lorg/jbox2d/dynamics/Filter;->groupIndex:I

    if-eqz v5, :cond_1b

    .line 52
    iget v5, v1, Lorg/jbox2d/dynamics/Filter;->groupIndex:I

    if-lez v5, :cond_19

    .line 57
    :goto_18
    return v3

    :cond_19
    move v3, v4

    .line 52
    goto :goto_18

    .line 55
    :cond_1b
    iget v5, v1, Lorg/jbox2d/dynamics/Filter;->maskBits:I

    iget v6, v2, Lorg/jbox2d/dynamics/Filter;->categoryBits:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_2c

    iget v5, v1, Lorg/jbox2d/dynamics/Filter;->categoryBits:I

    iget v6, v2, Lorg/jbox2d/dynamics/Filter;->maskBits:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_2c

    move v0, v3

    .local v0, "collide":Z
    :goto_2a
    move v3, v0

    .line 57
    goto :goto_18

    .end local v0    # "collide":Z
    :cond_2c
    move v0, v4

    .line 55
    goto :goto_2a
.end method
