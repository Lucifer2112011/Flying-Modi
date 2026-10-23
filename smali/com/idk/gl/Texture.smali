###### Class com.idk.gl.Texture (com.idk.gl.Texture)
.class public Lcom/idk/gl/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idk/gl/Texture$Filter;,
        Lcom/idk/gl/Texture$Wrap;
    }
.end annotation


# instance fields
.field public filter_mag:Lcom/idk/gl/Texture$Filter;

.field public filter_min:Lcom/idk/gl/Texture$Filter;

.field private height:I

.field private id:I

.field public loadFromPath:Z

.field protected usage:I

.field private width:I

.field public wrap_s:Lcom/idk/gl/Texture$Wrap;

.field public wrap_t:Lcom/idk/gl/Texture$Wrap;


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/16 v6, 0xa

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v5, p0, Lcom/idk/gl/Texture;->id:I

    .line 42
    iput-boolean v4, p0, Lcom/idk/gl/Texture;->loadFromPath:Z

    .line 43
    sget-object v2, Lcom/idk/gl/Texture$Filter;->LINEAR:Lcom/idk/gl/Texture$Filter;

    iput-object v2, p0, Lcom/idk/gl/Texture;->filter_min:Lcom/idk/gl/Texture$Filter;

    .line 44
    sget-object v2, Lcom/idk/gl/Texture$Filter;->LINEAR:Lcom/idk/gl/Texture$Filter;

    iput-object v2, p0, Lcom/idk/gl/Texture;->filter_mag:Lcom/idk/gl/Texture$Filter;

    .line 45
    sget-object v2, Lcom/idk/gl/Texture$Wrap;->REPEAT:Lcom/idk/gl/Texture$Wrap;

    iput-object v2, p0, Lcom/idk/gl/Texture;->wrap_t:Lcom/idk/gl/Texture$Wrap;

    .line 46
    sget-object v2, Lcom/idk/gl/Texture$Wrap;->REPEAT:Lcom/idk/gl/Texture$Wrap;

    iput-object v2, p0, Lcom/idk/gl/Texture;->wrap_s:Lcom/idk/gl/Texture$Wrap;

    .line 47
    iput v3, p0, Lcom/idk/gl/Texture;->usage:I

    .line 48
    iput v3, p0, Lcom/idk/gl/Texture;->width:I

    .line 49
    iput v3, p0, Lcom/idk/gl/Texture;->height:I

    .line 52
    new-array v1, v4, [I

    aput v3, v1, v3

    .line 53
    .local v1, "pointer":[I
    invoke-static {v4, v1, v3}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 54
    aget v2, v1, v3

    iput v2, p0, Lcom/idk/gl/Texture;->id:I

    .line 56
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    .local v0, "map":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/idk/gl/Texture;->setData(Landroid/graphics/Bitmap;)V

    .line 59
    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 10
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .prologue
    const/16 v5, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v2, -0x1

    iput v2, p0, Lcom/idk/gl/Texture;->id:I

    .line 42
    iput-boolean v3, p0, Lcom/idk/gl/Texture;->loadFromPath:Z

    .line 43
    sget-object v2, Lcom/idk/gl/Texture$Filter;->LINEAR:Lcom/idk/gl/Texture$Filter;

    iput-object v2, p0, Lcom/idk/gl/Texture;->filter_min:Lcom/idk/gl/Texture$Filter;

    .line 44
    sget-object v2, Lcom/idk/gl/Texture$Filter;->LINEAR:Lcom/idk/gl/Texture$Filter;

    iput-object v2, p0, Lcom/idk/gl/Texture;->filter_mag:Lcom/idk/gl/Texture$Filter;

    .line 45
    sget-object v2, Lcom/idk/gl/Texture$Wrap;->REPEAT:Lcom/idk/gl/Texture$Wrap;

    iput-object v2, p0, Lcom/idk/gl/Texture;->wrap_t:Lcom/idk/gl/Texture$Wrap;

    .line 46
    sget-object v2, Lcom/idk/gl/Texture$Wrap;->REPEAT:Lcom/idk/gl/Texture$Wrap;

    iput-object v2, p0, Lcom/idk/gl/Texture;->wrap_s:Lcom/idk/gl/Texture$Wrap;

    .line 47
    iput v4, p0, Lcom/idk/gl/Texture;->usage:I

    .line 48
    iput v4, p0, Lcom/idk/gl/Texture;->width:I

    .line 49
    iput v4, p0, Lcom/idk/gl/Texture;->height:I

    .line 77
    new-array v1, v3, [I

    aput v4, v1, v4

    .line 78
    .local v1, "pointer":[I
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 79
    aget v2, v1, v4

    iput v2, p0, Lcom/idk/gl/Texture;->id:I

    .line 81
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "map":Landroid/graphics/Bitmap;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_44

    .line 83
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(FFF)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 87
    :goto_40
    invoke-virtual {p0, v0}, Lcom/idk/gl/Texture;->setData(Landroid/graphics/Bitmap;)V

    .line 88
    return-void

    .line 85
    :cond_44
    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_40
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lcom/idk/gl/Texture;->id:I

    .line 42
    iput-boolean v3, p0, Lcom/idk/gl/Texture;->loadFromPath:Z

    .line 43
    sget-object v1, Lcom/idk/gl/Texture$Filter;->LINEAR:Lcom/idk/gl/Texture$Filter;

    iput-object v1, p0, Lcom/idk/gl/Texture;->filter_min:Lcom/idk/gl/Texture$Filter;

    .line 44
    sget-object v1, Lcom/idk/gl/Texture$Filter;->LINEAR:Lcom/idk/gl/Texture$Filter;

    iput-object v1, p0, Lcom/idk/gl/Texture;->filter_mag:Lcom/idk/gl/Texture$Filter;

    .line 45
    sget-object v1, Lcom/idk/gl/Texture$Wrap;->REPEAT:Lcom/idk/gl/Texture$Wrap;

    iput-object v1, p0, Lcom/idk/gl/Texture;->wrap_t:Lcom/idk/gl/Texture$Wrap;

    .line 46
    sget-object v1, Lcom/idk/gl/Texture$Wrap;->REPEAT:Lcom/idk/gl/Texture$Wrap;

    iput-object v1, p0, Lcom/idk/gl/Texture;->wrap_s:Lcom/idk/gl/Texture$Wrap;

    .line 47
    iput v2, p0, Lcom/idk/gl/Texture;->usage:I

    .line 48
    iput v2, p0, Lcom/idk/gl/Texture;->width:I

    .line 49
    iput v2, p0, Lcom/idk/gl/Texture;->height:I

    .line 62
    new-array v0, v3, [I

    aput v2, v0, v2

    .line 63
    .local v0, "pointer":[I
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 64
    aget v1, v0, v2

    iput v1, p0, Lcom/idk/gl/Texture;->id:I

    .line 65
    invoke-virtual {p0, p1}, Lcom/idk/gl/Texture;->setData(Landroid/graphics/Bitmap;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 7
    .param p1, "data"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v2, -0x1

    iput v2, p0, Lcom/idk/gl/Texture;->id:I

    .line 42
    iput-boolean v4, p0, Lcom/idk/gl/Texture;->loadFromPath:Z

    .line 43
    sget-object v2, Lcom/idk/gl/Texture$Filter;->LINEAR:Lcom/idk/gl/Texture$Filter;

    iput-object v2, p0, Lcom/idk/gl/Texture;->filter_min:Lcom/idk/gl/Texture$Filter;

    .line 44
    sget-object v2, Lcom/idk/gl/Texture$Filter;->LINEAR:Lcom/idk/gl/Texture$Filter;

    iput-object v2, p0, Lcom/idk/gl/Texture;->filter_mag:Lcom/idk/gl/Texture$Filter;

    .line 45
    sget-object v2, Lcom/idk/gl/Texture$Wrap;->REPEAT:Lcom/idk/gl/Texture$Wrap;

    iput-object v2, p0, Lcom/idk/gl/Texture;->wrap_t:Lcom/idk/gl/Texture$Wrap;

    .line 46
    sget-object v2, Lcom/idk/gl/Texture$Wrap;->REPEAT:Lcom/idk/gl/Texture$Wrap;

    iput-object v2, p0, Lcom/idk/gl/Texture;->wrap_s:Lcom/idk/gl/Texture$Wrap;

    .line 47
    iput v3, p0, Lcom/idk/gl/Texture;->usage:I

    .line 48
    iput v3, p0, Lcom/idk/gl/Texture;->width:I

    .line 49
    iput v3, p0, Lcom/idk/gl/Texture;->height:I

    .line 99
    new-array v1, v4, [I

    aput v3, v1, v3

    .line 100
    .local v1, "pointer":[I
    invoke-static {v4, v1, v3}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 101
    aget v2, v1, v3

    iput v2, p0, Lcom/idk/gl/Texture;->id:I

    .line 102
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, "map":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/idk/gl/Texture;->setData(Landroid/graphics/Bitmap;)V

    .line 104
    return-void
.end method

.method public constructor <init>([B)V
    .registers 7
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v2, -0x1

    iput v2, p0, Lcom/idk/gl/Texture;->id:I

    .line 42
    iput-boolean v4, p0, Lcom/idk/gl/Texture;->loadFromPath:Z

    .line 43
    sget-object v2, Lcom/idk/gl/Texture$Filter;->LINEAR:Lcom/idk/gl/Texture$Filter;

    iput-object v2, p0, Lcom/idk/gl/Texture;->filter_min:Lcom/idk/gl/Texture$Filter;

    .line 44
    sget-object v2, Lcom/idk/gl/Texture$Filter;->LINEAR:Lcom/idk/gl/Texture$Filter;

    iput-object v2, p0, Lcom/idk/gl/Texture;->filter_mag:Lcom/idk/gl/Texture$Filter;

    .line 45
    sget-object v2, Lcom/idk/gl/Texture$Wrap;->REPEAT:Lcom/idk/gl/Texture$Wrap;

    iput-object v2, p0, Lcom/idk/gl/Texture;->wrap_t:Lcom/idk/gl/Texture$Wrap;

    .line 46
    sget-object v2, Lcom/idk/gl/Texture$Wrap;->REPEAT:Lcom/idk/gl/Texture$Wrap;

    iput-object v2, p0, Lcom/idk/gl/Texture;->wrap_s:Lcom/idk/gl/Texture$Wrap;

    .line 47
    iput v3, p0, Lcom/idk/gl/Texture;->usage:I

    .line 48
    iput v3, p0, Lcom/idk/gl/Texture;->width:I

    .line 49
    iput v3, p0, Lcom/idk/gl/Texture;->height:I

    .line 91
    new-array v1, v4, [I

    aput v3, v1, v3

    .line 92
    .local v1, "pointer":[I
    invoke-static {v4, v1, v3}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 93
    aget v2, v1, v3

    iput v2, p0, Lcom/idk/gl/Texture;->id:I

    .line 94
    array-length v2, p1

    invoke-static {p1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    .local v0, "map":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/idk/gl/Texture;->setData(Landroid/graphics/Bitmap;)V

    .line 96
    return-void
.end method

.method public static getFilterInt(Lcom/idk/gl/Texture$Filter;)I
    .registers 2
    .param p0, "gl"    # Lcom/idk/gl/Texture$Filter;

    .prologue
    .line 160
    sget-object v0, Lcom/idk/gl/Texture$Filter;->LINEAR:Lcom/idk/gl/Texture$Filter;

    if-ne p0, v0, :cond_7

    .line 161
    const/16 v0, 0x2601

    .line 178
    :goto_6
    return v0

    .line 163
    :cond_7
    sget-object v0, Lcom/idk/gl/Texture$Filter;->NEAREST:Lcom/idk/gl/Texture$Filter;

    if-ne p0, v0, :cond_e

    .line 164
    const/16 v0, 0x2600

    goto :goto_6

    .line 166
    :cond_e
    sget-object v0, Lcom/idk/gl/Texture$Filter;->LINEAR_MIPMAP_LINEAR:Lcom/idk/gl/Texture$Filter;

    if-ne p0, v0, :cond_15

    .line 167
    const/16 v0, 0x2703

    goto :goto_6

    .line 169
    :cond_15
    sget-object v0, Lcom/idk/gl/Texture$Filter;->LINEAR_MIPMAP_NEAREST:Lcom/idk/gl/Texture$Filter;

    if-ne p0, v0, :cond_1c

    .line 170
    const/16 v0, 0x2701

    goto :goto_6

    .line 172
    :cond_1c
    sget-object v0, Lcom/idk/gl/Texture$Filter;->NEAREST_MIPMAP_LINEAR:Lcom/idk/gl/Texture$Filter;

    if-ne p0, v0, :cond_23

    .line 173
    const/16 v0, 0x2702

    goto :goto_6

    .line 175
    :cond_23
    sget-object v0, Lcom/idk/gl/Texture$Filter;->NEAREST_MIPMAP_NEAREST:Lcom/idk/gl/Texture$Filter;

    if-ne p0, v0, :cond_2a

    .line 176
    const/16 v0, 0x2700

    goto :goto_6

    .line 178
    :cond_2a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static getWrapInt(Lcom/idk/gl/Texture$Wrap;)I
    .registers 2
    .param p0, "vl"    # Lcom/idk/gl/Texture$Wrap;

    .prologue
    .line 182
    sget-object v0, Lcom/idk/gl/Texture$Wrap;->REPEAT:Lcom/idk/gl/Texture$Wrap;

    if-ne p0, v0, :cond_7

    .line 183
    const/16 v0, 0x2901

    .line 192
    :goto_6
    return v0

    .line 185
    :cond_7
    sget-object v0, Lcom/idk/gl/Texture$Wrap;->MIRROR_REPEAT:Lcom/idk/gl/Texture$Wrap;

    if-ne p0, v0, :cond_f

    .line 186
    const v0, 0x8370

    goto :goto_6

    .line 188
    :cond_f
    sget-object v0, Lcom/idk/gl/Texture$Wrap;->FIXED:Lcom/idk/gl/Texture$Wrap;

    if-ne p0, v0, :cond_17

    .line 189
    const v0, 0x812f

    goto :goto_6

    .line 192
    :cond_17
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static unbind()V
    .registers 2

    .prologue
    .line 127
    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 128
    return-void
.end method


# virtual methods
.method public active(I)V
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 130
    const v0, 0x84c0

    add-int/2addr v0, p1

    invoke-static {v0}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 131
    const/16 v0, 0xde1

    iget v1, p0, Lcom/idk/gl/Texture;->id:I

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 132
    return-void
.end method

.method public bind()V
    .registers 3

    .prologue
    .line 124
    const/16 v0, 0xde1

    iget v1, p0, Lcom/idk/gl/Texture;->id:I

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 125
    return-void
.end method

.method public close()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    new-array v0, v3, [I

    iget v1, p0, Lcom/idk/gl/Texture;->id:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 135
    return-void
.end method

.method public delete()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    iget v0, p0, Lcom/idk/gl/Texture;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 207
    new-array v0, v3, [I

    iget v1, p0, Lcom/idk/gl/Texture;->id:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 209
    :cond_10
    return-void
.end method

.method public getData()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/idk/gl/Texture;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/idk/gl/Texture;->width:I

    return v0
.end method

.method public setData(Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "map"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v4, 0x2901

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 137
    invoke-virtual {p0}, Lcom/idk/gl/Texture;->bind()V

    .line 138
    const/16 v0, 0x2801

    const v1, 0x461c0400    # 9985.0f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    .line 139
    const/16 v0, 0x2800

    const v1, 0x461c0800    # 9986.0f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    .line 140
    const/16 v0, 0x2802

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 141
    const/16 v0, 0x2803

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 142
    invoke-static {v2, v3, p1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 143
    invoke-static {v2}, Landroid/opengl/GLES30;->glGenerateMipmap(I)V

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/idk/gl/Texture;->height:I

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/idk/gl/Texture;->width:I

    .line 146
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded Texture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/idk/gl/Texture;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/idk/gl/Texture;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/idk/gl/Texture;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/idk/gl/Texture;->unbind()V

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    return-void
.end method

.method public setData(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "str"    # Ljava/io/InputStream;

    .prologue
    .line 107
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    .local v0, "map":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/idk/gl/Texture;->setData(Landroid/graphics/Bitmap;)V

    .line 109
    return-void
.end method

.method public setFilter(Lcom/idk/gl/Texture$Filter;Lcom/idk/gl/Texture$Filter;)V
    .registers 6
    .param p1, "mn"    # Lcom/idk/gl/Texture$Filter;
    .param p2, "mg"    # Lcom/idk/gl/Texture$Filter;

    .prologue
    const/16 v2, 0xde1

    .line 152
    iput-object p1, p0, Lcom/idk/gl/Texture;->filter_min:Lcom/idk/gl/Texture$Filter;

    .line 153
    iput-object p2, p0, Lcom/idk/gl/Texture;->filter_mag:Lcom/idk/gl/Texture$Filter;

    .line 154
    invoke-virtual {p0}, Lcom/idk/gl/Texture;->bind()V

    .line 155
    const/16 v0, 0x2800

    invoke-static {p2}, Lcom/idk/gl/Texture;->getFilterInt(Lcom/idk/gl/Texture$Filter;)I

    move-result v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 156
    const/16 v0, 0x2801

    invoke-static {p1}, Lcom/idk/gl/Texture;->getFilterInt(Lcom/idk/gl/Texture$Filter;)I

    move-result v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 157
    invoke-static {}, Lcom/idk/gl/Texture;->unbind()V

    .line 158
    return-void
.end method

.method public setTexture(Lcom/idk/gl/Texture;)V
    .registers 4
    .param p1, "t1"    # Lcom/idk/gl/Texture;

    .prologue
    .line 113
    iget v0, p0, Lcom/idk/gl/Texture;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 114
    invoke-virtual {p0}, Lcom/idk/gl/Texture;->close()V

    .line 116
    :cond_8
    iget v0, p1, Lcom/idk/gl/Texture;->id:I

    iput v0, p0, Lcom/idk/gl/Texture;->id:I

    .line 117
    iget-object v0, p1, Lcom/idk/gl/Texture;->wrap_s:Lcom/idk/gl/Texture$Wrap;

    iput-object v0, p0, Lcom/idk/gl/Texture;->wrap_s:Lcom/idk/gl/Texture$Wrap;

    .line 118
    iget-object v0, p1, Lcom/idk/gl/Texture;->wrap_t:Lcom/idk/gl/Texture$Wrap;

    iput-object v0, p0, Lcom/idk/gl/Texture;->wrap_t:Lcom/idk/gl/Texture$Wrap;

    .line 119
    iget-object v0, p1, Lcom/idk/gl/Texture;->filter_min:Lcom/idk/gl/Texture$Filter;

    iput-object v0, p0, Lcom/idk/gl/Texture;->filter_min:Lcom/idk/gl/Texture$Filter;

    .line 120
    iget-object v0, p1, Lcom/idk/gl/Texture;->filter_mag:Lcom/idk/gl/Texture$Filter;

    iput-object v0, p0, Lcom/idk/gl/Texture;->filter_mag:Lcom/idk/gl/Texture$Filter;

    .line 121
    return-void
.end method

.method public setWrap(Lcom/idk/gl/Texture$Wrap;Lcom/idk/gl/Texture$Wrap;)V
    .registers 6
    .param p1, "s"    # Lcom/idk/gl/Texture$Wrap;
    .param p2, "t"    # Lcom/idk/gl/Texture$Wrap;

    .prologue
    const/16 v2, 0xde1

    .line 196
    iput-object p2, p0, Lcom/idk/gl/Texture;->wrap_t:Lcom/idk/gl/Texture$Wrap;

    .line 197
    iput-object p1, p0, Lcom/idk/gl/Texture;->wrap_s:Lcom/idk/gl/Texture$Wrap;

    .line 198
    const/16 v0, 0x2803

    iget-object v1, p0, Lcom/idk/gl/Texture;->wrap_t:Lcom/idk/gl/Texture$Wrap;

    invoke-static {v1}, Lcom/idk/gl/Texture;->getWrapInt(Lcom/idk/gl/Texture$Wrap;)I

    move-result v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 199
    const/16 v0, 0x2802

    iget-object v1, p0, Lcom/idk/gl/Texture;->wrap_s:Lcom/idk/gl/Texture$Wrap;

    invoke-static {v1}, Lcom/idk/gl/Texture;->getWrapInt(Lcom/idk/gl/Texture$Wrap;)I

    move-result v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 200
    return-void
.end method

###### Class com.idk.gl.Texture.Filter (com.idk.gl.Texture$Filter)
.class public final enum Lcom/idk/gl/Texture$Filter;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idk/gl/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/idk/gl/Texture$Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idk/gl/Texture$Filter;

.field public static final enum LINEAR:Lcom/idk/gl/Texture$Filter;

.field public static final enum LINEAR_MIPMAP_LINEAR:Lcom/idk/gl/Texture$Filter;

.field public static final enum LINEAR_MIPMAP_NEAREST:Lcom/idk/gl/Texture$Filter;

.field public static final enum NEAREST:Lcom/idk/gl/Texture$Filter;

.field public static final enum NEAREST_MIPMAP_LINEAR:Lcom/idk/gl/Texture$Filter;

.field public static final enum NEAREST_MIPMAP_NEAREST:Lcom/idk/gl/Texture$Filter;


# direct methods
.method private static synthetic $values()[Lcom/idk/gl/Texture$Filter;
    .registers 3

    .prologue
    .line 210
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/idk/gl/Texture$Filter;

    const/4 v1, 0x0

    sget-object v2, Lcom/idk/gl/Texture$Filter;->LINEAR_MIPMAP_NEAREST:Lcom/idk/gl/Texture$Filter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/idk/gl/Texture$Filter;->LINEAR_MIPMAP_LINEAR:Lcom/idk/gl/Texture$Filter;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/idk/gl/Texture$Filter;->NEAREST_MIPMAP_LINEAR:Lcom/idk/gl/Texture$Filter;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/idk/gl/Texture$Filter;->NEAREST_MIPMAP_NEAREST:Lcom/idk/gl/Texture$Filter;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/idk/gl/Texture$Filter;->LINEAR:Lcom/idk/gl/Texture$Filter;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/idk/gl/Texture$Filter;->NEAREST:Lcom/idk/gl/Texture$Filter;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 211
    new-instance v0, Lcom/idk/gl/Texture$Filter;

    const-string v1, "LINEAR_MIPMAP_NEAREST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idk/gl/Texture$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/gl/Texture$Filter;->LINEAR_MIPMAP_NEAREST:Lcom/idk/gl/Texture$Filter;

    .line 212
    new-instance v0, Lcom/idk/gl/Texture$Filter;

    const-string v1, "LINEAR_MIPMAP_LINEAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idk/gl/Texture$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/gl/Texture$Filter;->LINEAR_MIPMAP_LINEAR:Lcom/idk/gl/Texture$Filter;

    .line 213
    new-instance v0, Lcom/idk/gl/Texture$Filter;

    const-string v1, "NEAREST_MIPMAP_LINEAR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idk/gl/Texture$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/gl/Texture$Filter;->NEAREST_MIPMAP_LINEAR:Lcom/idk/gl/Texture$Filter;

    .line 214
    new-instance v0, Lcom/idk/gl/Texture$Filter;

    const-string v1, "NEAREST_MIPMAP_NEAREST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/idk/gl/Texture$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/gl/Texture$Filter;->NEAREST_MIPMAP_NEAREST:Lcom/idk/gl/Texture$Filter;

    .line 215
    new-instance v0, Lcom/idk/gl/Texture$Filter;

    const-string v1, "LINEAR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/idk/gl/Texture$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/gl/Texture$Filter;->LINEAR:Lcom/idk/gl/Texture$Filter;

    new-instance v0, Lcom/idk/gl/Texture$Filter;

    const-string v1, "NEAREST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/idk/gl/Texture$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/gl/Texture$Filter;->NEAREST:Lcom/idk/gl/Texture$Filter;

    .line 210
    invoke-static {}, Lcom/idk/gl/Texture$Filter;->$values()[Lcom/idk/gl/Texture$Filter;

    move-result-object v0

    sput-object v0, Lcom/idk/gl/Texture$Filter;->$VALUES:[Lcom/idk/gl/Texture$Filter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idk/gl/Texture$Filter;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    const-class v0, Lcom/idk/gl/Texture$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/idk/gl/Texture$Filter;

    return-object v0
.end method

.method public static values()[Lcom/idk/gl/Texture$Filter;
    .registers 1

    .prologue
    .line 210
    sget-object v0, Lcom/idk/gl/Texture$Filter;->$VALUES:[Lcom/idk/gl/Texture$Filter;

    invoke-virtual {v0}, [Lcom/idk/gl/Texture$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idk/gl/Texture$Filter;

    return-object v0
.end method

###### Class com.idk.gl.Texture.Wrap (com.idk.gl.Texture$Wrap)
.class public final enum Lcom/idk/gl/Texture$Wrap;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idk/gl/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Wrap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/idk/gl/Texture$Wrap;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idk/gl/Texture$Wrap;

.field public static final enum FIXED:Lcom/idk/gl/Texture$Wrap;

.field public static final enum MIRROR_REPEAT:Lcom/idk/gl/Texture$Wrap;

.field public static final enum REPEAT:Lcom/idk/gl/Texture$Wrap;


# direct methods
.method private static synthetic $values()[Lcom/idk/gl/Texture$Wrap;
    .registers 3

    .prologue
    .line 217
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/idk/gl/Texture$Wrap;

    const/4 v1, 0x0

    sget-object v2, Lcom/idk/gl/Texture$Wrap;->FIXED:Lcom/idk/gl/Texture$Wrap;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/idk/gl/Texture$Wrap;->REPEAT:Lcom/idk/gl/Texture$Wrap;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/idk/gl/Texture$Wrap;->MIRROR_REPEAT:Lcom/idk/gl/Texture$Wrap;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 218
    new-instance v0, Lcom/idk/gl/Texture$Wrap;

    const-string v1, "FIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idk/gl/Texture$Wrap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/gl/Texture$Wrap;->FIXED:Lcom/idk/gl/Texture$Wrap;

    new-instance v0, Lcom/idk/gl/Texture$Wrap;

    const-string v1, "REPEAT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idk/gl/Texture$Wrap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/gl/Texture$Wrap;->REPEAT:Lcom/idk/gl/Texture$Wrap;

    new-instance v0, Lcom/idk/gl/Texture$Wrap;

    const-string v1, "MIRROR_REPEAT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idk/gl/Texture$Wrap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idk/gl/Texture$Wrap;->MIRROR_REPEAT:Lcom/idk/gl/Texture$Wrap;

    .line 217
    invoke-static {}, Lcom/idk/gl/Texture$Wrap;->$values()[Lcom/idk/gl/Texture$Wrap;

    move-result-object v0

    sput-object v0, Lcom/idk/gl/Texture$Wrap;->$VALUES:[Lcom/idk/gl/Texture$Wrap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idk/gl/Texture$Wrap;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 217
    const-class v0, Lcom/idk/gl/Texture$Wrap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/idk/gl/Texture$Wrap;

    return-object v0
.end method

.method public static values()[Lcom/idk/gl/Texture$Wrap;
    .registers 1

    .prologue
    .line 217
    sget-object v0, Lcom/idk/gl/Texture$Wrap;->$VALUES:[Lcom/idk/gl/Texture$Wrap;

    invoke-virtual {v0}, [Lcom/idk/gl/Texture$Wrap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idk/gl/Texture$Wrap;

    return-object v0
.end method
