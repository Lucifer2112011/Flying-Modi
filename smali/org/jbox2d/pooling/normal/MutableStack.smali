###### Class org.jbox2d.pooling.normal.MutableStack (org.jbox2d.pooling.normal.MutableStack)
.class public abstract Lorg/jbox2d/pooling/normal/MutableStack;
.super Ljava/lang/Object;
.source "MutableStack.java"

# interfaces
.implements Lorg/jbox2d/pooling/IDynamicStack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jbox2d/pooling/IDynamicStack",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private index:I

.field private size:I

.field private stack:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lorg/jbox2d/pooling/normal/MutableStack;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/pooling/normal/MutableStack;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "argInitSize"    # I

    .prologue
    .local p0, "this":Lorg/jbox2d/pooling/normal/MutableStack;, "Lorg/jbox2d/pooling/normal/MutableStack<TE;>;"
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v1, p0, Lorg/jbox2d/pooling/normal/MutableStack;->index:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jbox2d/pooling/normal/MutableStack;->stack:[Ljava/lang/Object;

    .line 37
    iput v1, p0, Lorg/jbox2d/pooling/normal/MutableStack;->index:I

    .line 38
    invoke-direct {p0, p1}, Lorg/jbox2d/pooling/normal/MutableStack;->extendStack(I)V

    .line 39
    return-void
.end method

.method private extendStack(I)V
    .registers 7
    .param p1, "argSize"    # I

    .prologue
    .local p0, "this":Lorg/jbox2d/pooling/normal/MutableStack;, "Lorg/jbox2d/pooling/normal/MutableStack<TE;>;"
    const/4 v4, 0x0

    .line 42
    new-array v1, p1, [Ljava/lang/Object;

    .line 43
    .local v1, "newStack":[Ljava/lang/Object;
    iget-object v2, p0, Lorg/jbox2d/pooling/normal/MutableStack;->stack:[Ljava/lang/Object;

    if-eqz v2, :cond_e

    .line 44
    iget-object v2, p0, Lorg/jbox2d/pooling/normal/MutableStack;->stack:[Ljava/lang/Object;

    iget v3, p0, Lorg/jbox2d/pooling/normal/MutableStack;->size:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v2, v1

    if-ge v0, v2, :cond_1b

    .line 47
    invoke-virtual {p0}, Lorg/jbox2d/pooling/normal/MutableStack;->newInstance()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 49
    :cond_1b
    iput-object v1, p0, Lorg/jbox2d/pooling/normal/MutableStack;->stack:[Ljava/lang/Object;

    .line 50
    array-length v2, v1

    iput v2, p0, Lorg/jbox2d/pooling/normal/MutableStack;->size:I

    .line 51
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
    .line 55
    .local p0, "this":Lorg/jbox2d/pooling/normal/MutableStack;, "Lorg/jbox2d/pooling/normal/MutableStack<TE;>;"
    iget v0, p0, Lorg/jbox2d/pooling/normal/MutableStack;->index:I

    iget v1, p0, Lorg/jbox2d/pooling/normal/MutableStack;->size:I

    if-lt v0, v1, :cond_d

    .line 56
    iget v0, p0, Lorg/jbox2d/pooling/normal/MutableStack;->size:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/jbox2d/pooling/normal/MutableStack;->extendStack(I)V

    .line 58
    :cond_d
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/MutableStack;->stack:[Ljava/lang/Object;

    iget v1, p0, Lorg/jbox2d/pooling/normal/MutableStack;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jbox2d/pooling/normal/MutableStack;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final push(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lorg/jbox2d/pooling/normal/MutableStack;, "Lorg/jbox2d/pooling/normal/MutableStack<TE;>;"
    .local p1, "argObject":Ljava/lang/Object;, "TE;"
    sget-boolean v0, Lorg/jbox2d/pooling/normal/MutableStack;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    iget v0, p0, Lorg/jbox2d/pooling/normal/MutableStack;->index:I

    if-gtz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_e
    iget-object v0, p0, Lorg/jbox2d/pooling/normal/MutableStack;->stack:[Ljava/lang/Object;

    iget v1, p0, Lorg/jbox2d/pooling/normal/MutableStack;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jbox2d/pooling/normal/MutableStack;->index:I

    aput-object p1, v0, v1

    .line 64
    return-void
.end method
