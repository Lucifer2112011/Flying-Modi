###### Class com.idk.util.FileTool (com.idk.util.FileTool)
.class public Lcom/idk/util/FileTool;
.super Ljava/lang/Object;
.source "FileTool.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .param p0, "inp"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 110
    const/16 v3, 0x400

    :try_start_2
    new-array v2, v3, [B

    .line 111
    .local v2, "tmp":[B
    const/4 v1, 0x0

    .line 112
    .local v1, "i":I
    :goto_5
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_16

    .line 113
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    goto :goto_5

    .line 117
    .end local v1    # "i":I
    .end local v2    # "tmp":[B
    :catch_11
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_15
    return-void

    .line 115
    .restart local v1    # "i":I
    .restart local v2    # "tmp":[B
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 116
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_11

    goto :goto_15
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .param p0, "source"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;

    .prologue
    .line 101
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, v2}, Lcom/idk/util/FileTool;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 105
    :goto_d
    return-void

    .line 102
    :catch_e
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public static copyFolder(Ljava/io/File;Ljava/io/File;)V
    .registers 2
    .param p0, "source"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;

    .prologue
    .line 83
    return-void
.end method

.method public static deleteFolder(Ljava/io/File;)V
    .registers 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 87
    .local v0, "child":[Ljava/io/File;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v3, :cond_16

    aget-object v1, v0, v2

    .line 88
    .local v1, "fr":Ljava/io/File;
    invoke-static {v1}, Lcom/idk/util/FileTool;->deleteFolder(Ljava/io/File;)V

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 90
    .end local v1    # "fr":Ljava/io/File;
    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 92
    .end local v0    # "child":[Ljava/io/File;
    :cond_19
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 93
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 95
    :cond_22
    return-void
.end method

.method public static findListWithExtension(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p0, "folder"    # Ljava/io/File;
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 19
    .local v3, "tmp":[Ljava/io/File;
    if-eqz v3, :cond_39

    .line 20
    array-length v5, v3

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v5, :cond_39

    aget-object v0, v3, v4

    .line 21
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 22
    invoke-static {v0, p1}, Lcom/idk/util/FileTool;->findListWithExtension(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :cond_1e
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 23
    :cond_21
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 26
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 31
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "name":Ljava/lang/String;
    :cond_39
    return-object v1
.end method

.method public static findStringListWithExtension(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p0, "folder"    # Ljava/io/File;
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 38
    .local v3, "tmp":[Ljava/io/File;
    if-eqz v3, :cond_3d

    .line 39
    array-length v5, v3

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v5, :cond_3d

    aget-object v0, v3, v4

    .line 40
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 41
    invoke-static {v0, p1}, Lcom/idk/util/FileTool;->findStringListWithExtension(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_1e
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 42
    :cond_21
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 50
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "name":Ljava/lang/String;
    :cond_3d
    return-object v1
.end method

.method public static listAllFiles(Ljava/io/File;)V
    .registers 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 98
    return-void
.end method

.method public static readTotal(Ljava/io/File;)Ljava/lang/String;
    .registers 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 55
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 56
    .local v2, "fis":Ljava/io/Reader;
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 57
    .local v5, "writer":Ljava/io/StringWriter;
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 58
    .local v0, "arr":[C
    const/4 v3, 0x0

    .line 59
    .local v3, "i":I
    :goto_f
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v6, -0x1

    if-le v3, v6, :cond_22

    .line 60
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/io/StringWriter;->write([CII)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_f

    .line 66
    .end local v0    # "arr":[C
    .end local v2    # "fis":Ljava/io/Reader;
    .end local v3    # "i":I
    .end local v5    # "writer":Ljava/io/StringWriter;
    :catch_1b
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    const-string v4, ""

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_21
    return-object v4

    .line 62
    .restart local v0    # "arr":[C
    .restart local v2    # "fis":Ljava/io/Reader;
    .restart local v3    # "i":I
    .restart local v5    # "writer":Ljava/io/StringWriter;
    :cond_22
    :try_start_22
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 63
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/StringWriter;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_1b

    goto :goto_21
.end method

.method public static writeTotal(Ljava/lang/String;Ljava/io/File;)V
    .registers 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/File;

    .prologue
    .line 73
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 74
    .local v0, "fos":Ljava/io/FileOutputStream;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 75
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 76
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 80
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_14
    return-void

    .line 77
    :catch_15
    move-exception v1

    goto :goto_14
.end method
