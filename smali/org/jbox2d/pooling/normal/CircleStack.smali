###### Class org.jbox2d.pooling.normal.CircleStack (org.jbox2d.pooling.normal.CircleStack)
.class public abstract Lorg/jbox2d/pooling/normal/CircleStack;
.super Ljava/lang/Object;
.source "CircleStack.java"

# interfaces
.implements Lorg/jbox2d/pooling/IOrderedStack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jbox2d/pooling/IOrderedStack",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final container:[Ljava/lang/Object;

.field private index:I

.field private final pool:[Ljava/lang/Object;

.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lorg/jbox2d/pooling/normal/CircleStack;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/pooling/normal/CircleStack;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(II)V
    .registers 6
    .param p1, "argStackSize"    # I
    .param p2, "argContainerSize"    # I

    .prologue
    .line 35
    .local p0, "this":Lorg/jbox2d/pooling/normal/CircleStack;, "Lorg/jbox2d/pooling/normal/CircleStack<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lorg/jbox2d/pooling/normal/CircleStack;->size:I

    .line 37
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/jbox2d/pooling/normal/CircleStack;->pool:[Ljava/lang/Object;

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, p1, :cond_17

    .line 39
    iget-object v1, p0, Lorg/jbox2d/pooling/normal/CircleStack;->pool:[Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jbox2d/pooling/normal/CircleStack;->newInstance()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 41
    :cond_17
    const/4 v1, 0x0

    iput v1, p0, Lorg/jbox2d/pooling/normal/CircleStack;->index:I

    .line 42
    new-array v1, p2, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/jbox2d/pooling/normal/CircleStack;->container:[Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method protected abstract newInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public final pop()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/jbox2d/pooling/normal/CircleStack;, "Lorg/jbox2d/pooling/normal/CircleStack<TE;>;"
    iget v0, p0, Lorg/jbox2d/pooling/normal/CircleStack;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jbox2d/pooling/normal/CircleStack;->index:I

    .line 48
    iget v0, p0, Lorg/jbox2d/pooling/normal/CircleStack;->index:I

    iget v1, p0, Lorg/jbox2d/pooling/normal/CircleStack;->size:I

    if-lt v0, v1, :cond_f

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/pooling/normal/CircleStack;->index:I

    .line 51
    :cond_f
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/CircleStack;->pool:[Ljava/lang/Object;

    iget v1, p0, Lorg/jbox2d/pooling/normal/CircleStack;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final pop(I)[Ljava/lang/Object;
    .registers 8
    .param p1, "argNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jbox2d/pooling/normal/CircleStack;, "Lorg/jbox2d/pooling/normal/CircleStack<TE;>;"
    const/4 v5, 0x0

    .line 56
    sget-boolean v1, Lorg/jbox2d/pooling/normal/CircleStack;->$assertionsDisabled:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lorg/jbox2d/pooling/normal/CircleStack;->container:[Ljava/lang/Object;

    array-length v1, v1

    if-le p1, v1, :cond_12

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Container array is too small"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 57
    :cond_12
    iget v1, p0, Lorg/jbox2d/pooling/normal/CircleStack;->index:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/jbox2d/pooling/normal/CircleStack;->size:I

    if-ge v1, v2, :cond_2c

    .line 58
    iget-object v1, p0, Lorg/jbox2d/pooling/normal/CircleStack;->pool:[Ljava/lang/Object;

    iget v2, p0, Lorg/jbox2d/pooling/normal/CircleStack;->index:I

    iget-object v3, p0, Lorg/jbox2d/pooling/normal/CircleStack;->container:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget v1, p0, Lorg/jbox2d/pooling/normal/CircleStack;->index:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jbox2d/pooling/normal/CircleStack;->index:I

    .line 66
    :goto_27
    iget-object v1, p0, Lorg/jbox2d/pooling/normal/CircleStack;->container:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    return-object v1

    .line 61
    :cond_2c
    iget v1, p0, Lorg/jbox2d/pooling/normal/CircleStack;->index:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/jbox2d/pooling/normal/CircleStack;->size:I

    sub-int v0, v1, v2

    .line 62
    .local v0, "overlap":I
    iget-object v1, p0, Lorg/jbox2d/pooling/normal/CircleStack;->pool:[Ljava/lang/Object;

    iget v2, p0, Lorg/jbox2d/pooling/normal/CircleStack;->index:I

    iget-object v3, p0, Lorg/jbox2d/pooling/normal/CircleStack;->container:[Ljava/lang/Object;

    sub-int v4, p1, v0

    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v1, p0, Lorg/jbox2d/pooling/normal/CircleStack;->pool:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/jbox2d/pooling/normal/CircleStack;->container:[Ljava/lang/Object;

    sub-int v3, p1, v0

    invoke-static {v1, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput v0, p0, Lorg/jbox2d/pooling/normal/CircleStack;->index:I

    goto :goto_27
.end method

.method public push(I)V
    .registers 2
    .param p1, "argNum"    # I

    .prologue
    .line 70
    .local p0, "this":Lorg/jbox2d/pooling/normal/CircleStack;, "Lorg/jbox2d/pooling/normal/CircleStack<TE;>;"
    return-void
.end method
