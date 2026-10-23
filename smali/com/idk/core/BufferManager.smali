###### Class com.idk.core.BufferManager (com.idk.core.BufferManager)
.class public Lcom/idk/core/BufferManager;
.super Ljava/lang/Object;
.source "BufferManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBuffer([F)Ljava/nio/FloatBuffer;
    .registers 4
    .param p0, "s"    # [F

    .prologue
    .line 12
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 13
    .local v0, "bf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 15
    .local v1, "fb":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 16
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    return-object v1
.end method

.method public static createBuffer([I)Ljava/nio/IntBuffer;
    .registers 4
    .param p0, "s"    # [I

    .prologue
    .line 32
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 33
    .local v0, "bf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 35
    .local v1, "in":Ljava/nio/IntBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 36
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 37
    return-object v1
.end method

.method public static createShortBuffer([I)Ljava/nio/ShortBuffer;
    .registers 8
    .param p0, "s"    # [I

    .prologue
    const/4 v4, 0x0

    .line 21
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 22
    .local v0, "bf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 24
    .local v1, "fb":Ljava/nio/ShortBuffer;
    array-length v5, p0

    move v3, v4

    :goto_15
    if-ge v3, v5, :cond_20

    aget v2, p0, v3

    .line 25
    .local v2, "i":I
    int-to-short v6, v2

    invoke-virtual {v1, v6}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 24
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 27
    .end local v2    # "i":I
    :cond_20
    invoke-virtual {v1, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 28
    return-object v1
.end method
