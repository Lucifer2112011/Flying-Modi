###### Class org.jbox2d.dynamics.Filter (org.jbox2d.dynamics.Filter)
.class public Lorg/jbox2d/dynamics/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# instance fields
.field public categoryBits:I

.field public groupIndex:I

.field public maskBits:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lorg/jbox2d/dynamics/Filter;->categoryBits:I

    .line 53
    const v0, 0xffff

    iput v0, p0, Lorg/jbox2d/dynamics/Filter;->maskBits:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/dynamics/Filter;->groupIndex:I

    .line 55
    return-void
.end method


# virtual methods
.method public set(Lorg/jbox2d/dynamics/Filter;)V
    .registers 3
    .param p1, "argOther"    # Lorg/jbox2d/dynamics/Filter;

    .prologue
    .line 58
    iget v0, p1, Lorg/jbox2d/dynamics/Filter;->categoryBits:I

    iput v0, p0, Lorg/jbox2d/dynamics/Filter;->categoryBits:I

    .line 59
    iget v0, p1, Lorg/jbox2d/dynamics/Filter;->maskBits:I

    iput v0, p0, Lorg/jbox2d/dynamics/Filter;->maskBits:I

    .line 60
    iget v0, p1, Lorg/jbox2d/dynamics/Filter;->groupIndex:I

    iput v0, p0, Lorg/jbox2d/dynamics/Filter;->groupIndex:I

    .line 61
    return-void
.end method
