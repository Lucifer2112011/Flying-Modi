###### Class org.jbox2d.pooling.normal.OrderedStack (org.jbox2d.pooling.normal.OrderedStack)
.class public abstract Lorg/jbox2d/pooling/normal/OrderedStack;
.super Ljava/lang/Object;
.source "OrderedStack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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
    .line 32
    const-class v0, Lorg/jbox2d/pooling/normal/OrderedStack;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/pooling/normal/OrderedStack;->$assertionsDisabled:Z

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
    .line 39
    .local p0, "this":Lorg/jbox2d/pooling/normal/OrderedStack;, "Lorg/jbox2d/pooling/normal/OrderedStack<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->size:I

    .line 41
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->pool:[Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, p1, :cond_17

    .line 43
    iget-object v1, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->pool:[Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jbox2d/pooling/normal/OrderedStack;->newInstance()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 45
    :cond_17
    const/4 v1, 0x0

    iput v1, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->index:I

    .line 46
    new-array v1, p2, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->container:[Ljava/lang/Object;

    .line 47
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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/jbox2d/pooling/normal/OrderedStack;, "Lorg/jbox2d/pooling/normal/OrderedStack<TE;>;"
    sget-boolean v0, Lorg/jbox2d/pooling/normal/OrderedStack;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    iget v0, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->index:I

    iget v1, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->size:I

    if-lt v0, v1, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "End of stack reached, there is probably a leak somewhere"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 52
    :cond_12
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->pool:[Ljava/lang/Object;

    iget v1, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final pop(I)[Ljava/lang/Object;
    .registers 6
    .param p1, "argNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TE;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/jbox2d/pooling/normal/OrderedStack;, "Lorg/jbox2d/pooling/normal/OrderedStack<TE;>;"
    sget-boolean v0, Lorg/jbox2d/pooling/normal/OrderedStack;->$assertionsDisabled:Z

    if-nez v0, :cond_13

    iget v0, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->index:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->size:I

    if-lt v0, v1, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "End of stack reached, there is probably a leak somewhere"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 58
    :cond_13
    sget-boolean v0, Lorg/jbox2d/pooling/normal/OrderedStack;->$assertionsDisabled:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->container:[Ljava/lang/Object;

    array-length v0, v0

    if-le p1, v0, :cond_24

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Container array is too small"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 59
    :cond_24
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->pool:[Ljava/lang/Object;

    iget v1, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->index:I

    iget-object v2, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->container:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget v0, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->index:I

    .line 61
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->container:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public final push(I)V
    .registers 4
    .param p1, "argNum"    # I

    .prologue
    .line 65
    .local p0, "this":Lorg/jbox2d/pooling/normal/OrderedStack;, "Lorg/jbox2d/pooling/normal/OrderedStack<TE;>;"
    iget v0, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->index:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->index:I

    .line 66
    sget-boolean v0, Lorg/jbox2d/pooling/normal/OrderedStack;->$assertionsDisabled:Z

    if-nez v0, :cond_15

    iget v0, p0, Lorg/jbox2d/pooling/normal/OrderedStack;->index:I

    if-gez v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Beginning of stack reached, push/pops are unmatched"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 67
    :cond_15
    return-void
.end method
