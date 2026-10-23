###### Class org.jbox2d.pooling.stacks.DynamicIntStack (org.jbox2d.pooling.stacks.DynamicIntStack)
.class public Lorg/jbox2d/pooling/stacks/DynamicIntStack;
.super Ljava/lang/Object;
.source "DynamicIntStack.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private position:I

.field private size:I

.field private stack:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialSize"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->stack:[I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->position:I

    .line 35
    iput p1, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->size:I

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->position:I

    return v0
.end method

.method public pop()I
    .registers 3

    .prologue
    .line 43
    sget-boolean v0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    iget v0, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->position:I

    if-gtz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_e
    iget-object v0, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->stack:[I

    iget v1, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->position:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->position:I

    aget v0, v0, v1

    return v0
.end method

.method public push(I)V
    .registers 6
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 48
    iget v1, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->position:I

    iget v2, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->size:I

    if-ne v1, v2, :cond_1c

    .line 49
    iget-object v0, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->stack:[I

    .line 50
    .local v0, "old":[I
    iget v1, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->stack:[I

    .line 51
    iget-object v1, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->stack:[I

    array-length v1, v1

    iput v1, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->size:I

    .line 52
    iget-object v1, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->stack:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .end local v0    # "old":[I
    :cond_1c
    iget-object v1, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->stack:[I

    iget v2, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->position:I

    aput p1, v1, v2

    .line 55
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/jbox2d/pooling/stacks/DynamicIntStack;->position:I

    .line 40
    return-void
.end method
