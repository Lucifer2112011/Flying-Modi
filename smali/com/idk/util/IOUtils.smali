###### Class com.idk.util.IOUtils (com.idk.util.IOUtils)
.class public Lcom/idk/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idk/util/IOUtils$Pipes;,
        Lcom/idk/util/IOUtils$PipeStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readAllBytes(Ljava/io/InputStream;)[B
    .registers 6
    .param p0, "ins"    # Ljava/io/InputStream;

    .prologue
    .line 27
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 29
    .local v0, "array":[B
    const/4 v3, 0x0

    .line 31
    .local v3, "i":I
    :goto_a
    :try_start_a
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1a

    .line 32
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    .line 39
    :catch_16
    move-exception v4

    .line 42
    const/4 v4, 0x0

    move-object v1, v0

    .end local v0    # "array":[B
    .local v1, "array":[B
    :goto_19
    return-object v4

    .line 34
    .end local v1    # "array":[B
    .restart local v0    # "array":[B
    :cond_1a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 35
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 36
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 37
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_27} :catch_16

    move-object v1, v0

    .end local v0    # "array":[B
    .restart local v1    # "array":[B
    move-object v4, v0

    .line 38
    goto :goto_19
.end method

.method public static transfer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .param p0, "inp"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 15
    const/16 v3, 0x400

    :try_start_2
    new-array v2, v3, [B

    .line 16
    .local v2, "tmp":[B
    const/4 v1, 0x0

    .line 17
    .local v1, "i":I
    :goto_5
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_16

    .line 18
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    goto :goto_5

    .line 22
    .end local v1    # "i":I
    .end local v2    # "tmp":[B
    :catch_11
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_15
    return-void

    .line 20
    .restart local v1    # "i":I
    .restart local v2    # "tmp":[B
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 21
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_11

    goto :goto_15
.end method

###### Class com.idk.util.IOUtils.AnonymousClass1 (com.idk.util.IOUtils$1)
.class synthetic Lcom/idk/util/IOUtils$1;
.super Ljava/lang/Object;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idk/util/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.idk.util.IOUtils.PipeStream (com.idk.util.IOUtils$PipeStream)
.class public Lcom/idk/util/IOUtils$PipeStream;
.super Ljava/lang/Object;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idk/util/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PipeStream"
.end annotation


# instance fields
.field private final myDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method private constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1, "descriptor"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/idk/util/IOUtils$PipeStream;->myDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/ParcelFileDescriptor;Lcom/idk/util/IOUtils$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "x1"    # Lcom/idk/util/IOUtils$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/idk/util/IOUtils$PipeStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method


# virtual methods
.method public getInputStreamA()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 52
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Lcom/idk/util/IOUtils$PipeStream;->myDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3

    .prologue
    .line 55
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Lcom/idk/util/IOUtils$PipeStream;->myDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

###### Class com.idk.util.IOUtils.Pipes (com.idk.util.IOUtils$Pipes)
.class public Lcom/idk/util/IOUtils$Pipes;
.super Ljava/lang/Object;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idk/util/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pipes"
.end annotation


# instance fields
.field private a:Lcom/idk/util/IOUtils$PipeStream;

.field private ar:[Landroid/os/ParcelFileDescriptor;

.field private b:Lcom/idk/util/IOUtils$PipeStream;


# direct methods
.method private constructor <init>([Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "arr"    # [Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/idk/util/IOUtils$PipeStream;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1, v2}, Lcom/idk/util/IOUtils$PipeStream;-><init>(Landroid/os/ParcelFileDescriptor;Lcom/idk/util/IOUtils$1;)V

    iput-object v0, p0, Lcom/idk/util/IOUtils$Pipes;->a:Lcom/idk/util/IOUtils$PipeStream;

    .line 66
    new-instance v0, Lcom/idk/util/IOUtils$PipeStream;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-direct {v0, v1, v2}, Lcom/idk/util/IOUtils$PipeStream;-><init>(Landroid/os/ParcelFileDescriptor;Lcom/idk/util/IOUtils$1;)V

    iput-object v0, p0, Lcom/idk/util/IOUtils$Pipes;->b:Lcom/idk/util/IOUtils$PipeStream;

    .line 67
    iput-object p1, p0, Lcom/idk/util/IOUtils$Pipes;->ar:[Landroid/os/ParcelFileDescriptor;

    .line 68
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    .prologue
    .line 76
    iget-object v3, p0, Lcom/idk/util/IOUtils$Pipes;->ar:[Landroid/os/ParcelFileDescriptor;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_13

    aget-object v1, v3, v2

    .line 78
    .local v1, "s":Landroid/os/ParcelFileDescriptor;
    :try_start_8
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_e

    .line 76
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 79
    :catch_e
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 83
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "s":Landroid/os/ParcelFileDescriptor;
    :cond_13
    return-void
.end method

.method public getEndPoint()Lcom/idk/util/IOUtils$PipeStream;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/idk/util/IOUtils$Pipes;->b:Lcom/idk/util/IOUtils$PipeStream;

    return-object v0
.end method

.method public getStartPoint()Lcom/idk/util/IOUtils$PipeStream;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/idk/util/IOUtils$Pipes;->a:Lcom/idk/util/IOUtils$PipeStream;

    return-object v0
.end method
