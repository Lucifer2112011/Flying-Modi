###### Class com.idk.gl.VertexBufferObject (com.idk.gl.VertexBufferObject)
.class public Lcom/idk/gl/VertexBufferObject;
.super Ljava/lang/Object;
.source "VertexBufferObject.java"


# instance fields
.field private final buffer_id:I

.field public buffer_size:I

.field private final buffer_type:I

.field public data_size:I

.field public data_type:I

.field private type:I


# direct methods
.method private constructor <init>(IZ)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "dynamic"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v1, 0x4

    iput v1, p0, Lcom/idk/gl/VertexBufferObject;->data_size:I

    .line 30
    new-array v0, v3, [I

    aput v2, v0, v2

    .line 31
    .local v0, "tmp":[I
    iput p1, p0, Lcom/idk/gl/VertexBufferObject;->buffer_type:I

    .line 32
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 33
    aget v1, v0, v2

    iput v1, p0, Lcom/idk/gl/VertexBufferObject;->buffer_id:I

    .line 34
    const v1, 0x88e4

    iput v1, p0, Lcom/idk/gl/VertexBufferObject;->type:I

    .line 35
    if-eqz p2, :cond_21

    .line 36
    const v1, 0x88e8

    iput v1, p0, Lcom/idk/gl/VertexBufferObject;->type:I

    .line 38
    :cond_21
    const/16 v1, 0x1406

    iput v1, p0, Lcom/idk/gl/VertexBufferObject;->data_type:I

    .line 39
    return-void
.end method

.method private static create(I)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "size"    # I

    .prologue
    .line 121
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 122
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 123
    return-object v0
.end method

.method public static createIndexBuffer(Z)Lcom/idk/gl/VertexBufferObject;
    .registers 3
    .param p0, "dynamic"    # Z

    .prologue
    .line 44
    new-instance v0, Lcom/idk/gl/VertexBufferObject;

    const v1, 0x8893

    invoke-direct {v0, v1, p0}, Lcom/idk/gl/VertexBufferObject;-><init>(IZ)V

    return-object v0
.end method

.method public static createVertexBuffer(Z)Lcom/idk/gl/VertexBufferObject;
    .registers 3
    .param p0, "dynamic"    # Z

    .prologue
    .line 47
    new-instance v0, Lcom/idk/gl/VertexBufferObject;

    const v1, 0x8892

    invoke-direct {v0, v1, p0}, Lcom/idk/gl/VertexBufferObject;-><init>(IZ)V

    return-object v0
.end method

.method public static unbind(I)V
    .registers 2
    .param p0, "i"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 60
    return-void
.end method


# virtual methods
.method public bind()V
    .registers 3

    .prologue
    .line 51
    iget v0, p0, Lcom/idk/gl/VertexBufferObject;->buffer_type:I

    iget v1, p0, Lcom/idk/gl/VertexBufferObject;->buffer_id:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 52
    return-void
.end method

.method public close()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    new-array v0, v3, [I

    iget v1, p0, Lcom/idk/gl/VertexBufferObject;->buffer_id:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 128
    return-void
.end method

.method public setData(Ljava/nio/FloatBuffer;)V
    .registers 7
    .param p1, "buffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/idk/gl/VertexBufferObject;->bind()V

    .line 64
    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lcom/idk/gl/VertexBufferObject;->buffer_size:I

    .line 66
    iget v0, p0, Lcom/idk/gl/VertexBufferObject;->buffer_type:I

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    iget v3, p0, Lcom/idk/gl/VertexBufferObject;->type:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 67
    iget v0, p0, Lcom/idk/gl/VertexBufferObject;->buffer_type:I

    iget v1, p0, Lcom/idk/gl/VertexBufferObject;->buffer_size:I

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v0, v4, v1, p1}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 68
    invoke-virtual {p0}, Lcom/idk/gl/VertexBufferObject;->unbind()V

    .line 69
    const/16 v0, 0x1406

    iput v0, p0, Lcom/idk/gl/VertexBufferObject;->data_type:I

    .line 70
    return-void
.end method

.method public setData(Ljava/nio/IntBuffer;)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/IntBuffer;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/idk/gl/VertexBufferObject;->bind()V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lcom/idk/gl/VertexBufferObject;->buffer_size:I

    .line 103
    iget v0, p0, Lcom/idk/gl/VertexBufferObject;->buffer_type:I

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/idk/gl/VertexBufferObject;->type:I

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 104
    invoke-virtual {p0}, Lcom/idk/gl/VertexBufferObject;->unbind()V

    .line 105
    const/4 v0, 0x4

    iput v0, p0, Lcom/idk/gl/VertexBufferObject;->data_size:I

    .line 106
    const/16 v0, 0x1405

    iput v0, p0, Lcom/idk/gl/VertexBufferObject;->data_type:I

    .line 107
    return-void
.end method

.method public setData(Ljava/nio/ShortBuffer;)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/idk/gl/VertexBufferObject;->bind()V

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 92
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lcom/idk/gl/VertexBufferObject;->buffer_size:I

    .line 93
    iget v0, p0, Lcom/idk/gl/VertexBufferObject;->buffer_type:I

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/idk/gl/VertexBufferObject;->type:I

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 95
    invoke-virtual {p0}, Lcom/idk/gl/VertexBufferObject;->unbind()V

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lcom/idk/gl/VertexBufferObject;->data_size:I

    .line 97
    const/16 v0, 0x1403

    iput v0, p0, Lcom/idk/gl/VertexBufferObject;->data_type:I

    .line 98
    return-void
.end method

.method public setData([F)V
    .registers 4
    .param p1, "buffer"    # [F

    .prologue
    .line 109
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lcom/idk/gl/VertexBufferObject;->create(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 111
    .local v0, "tmp":Ljava/nio/FloatBuffer;
    invoke-virtual {p0, v0}, Lcom/idk/gl/VertexBufferObject;->setData(Ljava/nio/FloatBuffer;)V

    .line 112
    return-void
.end method

.method public setData([I)V
    .registers 3
    .param p1, "buffer"    # [I

    .prologue
    .line 114
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/idk/gl/VertexBufferObject;->create(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idk/gl/VertexBufferObject;->setData(Ljava/nio/IntBuffer;)V

    .line 115
    return-void
.end method

.method public setData([S)V
    .registers 3
    .param p1, "buffer"    # [S

    .prologue
    .line 117
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/idk/gl/VertexBufferObject;->create(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idk/gl/VertexBufferObject;->setData(Ljava/nio/ShortBuffer;)V

    .line 118
    return-void
.end method

.method public setSubData(Ljava/nio/FloatBuffer;)V
    .registers 5
    .param p1, "fb"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/idk/gl/VertexBufferObject;->bind()V

    .line 73
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 74
    iget v0, p0, Lcom/idk/gl/VertexBufferObject;->buffer_type:I

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v0, v2, v1, p1}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 75
    invoke-virtual {p0}, Lcom/idk/gl/VertexBufferObject;->unbind()V

    .line 76
    return-void
.end method

.method public setSubData(Ljava/nio/IntBuffer;)V
    .registers 5
    .param p1, "fb"    # Ljava/nio/IntBuffer;

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/idk/gl/VertexBufferObject;->bind()V

    .line 79
    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    iget v0, p0, Lcom/idk/gl/VertexBufferObject;->buffer_type:I

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v0, v2, v1, p1}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 81
    invoke-virtual {p0}, Lcom/idk/gl/VertexBufferObject;->unbind()V

    .line 82
    return-void
.end method

.method public setSubData(Ljava/nio/ShortBuffer;)V
    .registers 5
    .param p1, "fb"    # Ljava/nio/ShortBuffer;

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/idk/gl/VertexBufferObject;->bind()V

    .line 85
    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 86
    iget v0, p0, Lcom/idk/gl/VertexBufferObject;->buffer_type:I

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v2, v1, p1}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 87
    invoke-virtual {p0}, Lcom/idk/gl/VertexBufferObject;->unbind()V

    .line 88
    return-void
.end method

.method public unbind()V
    .registers 3

    .prologue
    .line 55
    iget v0, p0, Lcom/idk/gl/VertexBufferObject;->buffer_type:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 56
    return-void
.end method
