###### Class org.jbox2d.pooling.arrays.IntArray (org.jbox2d.pooling.arrays.IntArray)
.class public Lorg/jbox2d/pooling/arrays/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lorg/jbox2d/pooling/arrays/IntArray;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/jbox2d/pooling/arrays/IntArray;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/pooling/arrays/IntArray;->map:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public get(I)[I
    .registers 5
    .param p1, "argLength"    # I

    .prologue
    .line 40
    sget-boolean v0, Lorg/jbox2d/pooling/arrays/IntArray;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-gtz p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_c
    iget-object v0, p0, Lorg/jbox2d/pooling/arrays/IntArray;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 43
    iget-object v0, p0, Lorg/jbox2d/pooling/arrays/IntArray;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/jbox2d/pooling/arrays/IntArray;->getInitializedArray(I)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_25
    sget-boolean v0, Lorg/jbox2d/pooling/arrays/IntArray;->$assertionsDisabled:Z

    if-nez v0, :cond_40

    iget-object v0, p0, Lorg/jbox2d/pooling/arrays/IntArray;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    if-eq v0, p1, :cond_40

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Array not built of correct length"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 47
    :cond_40
    iget-object v0, p0, Lorg/jbox2d/pooling/arrays/IntArray;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method protected getInitializedArray(I)[I
    .registers 3
    .param p1, "argLength"    # I

    .prologue
    .line 51
    new-array v0, p1, [I

    return-object v0
.end method
