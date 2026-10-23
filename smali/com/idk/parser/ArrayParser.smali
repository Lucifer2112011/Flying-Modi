###### Class com.idk.parser.ArrayParser (com.idk.parser.ArrayParser)
.class public Lcom/idk/parser/ArrayParser;
.super Ljava/lang/Object;
.source "ArrayParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v6, 0x0

    .line 74
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v4, "js":Lorg/json/JSONObject;
    const-string v7, "type"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "array"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    move-object v1, v6

    .line 132
    .end local v4    # "js":Lorg/json/JSONObject;
    :cond_15
    :goto_15
    return-object v1

    .line 78
    .restart local v4    # "js":Lorg/json/JSONObject;
    :cond_16
    const-string v7, "size"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 79
    .local v5, "size":I
    const-string v7, "class"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 80
    .local v2, "element":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 81
    .local v1, "array":Ljava/lang/Object;
    const-string v7, "value"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 82
    .local v0, "arr":Lorg/json/JSONArray;
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_3a

    const-class v7, Ljava/lang/String;

    if-ne v2, v7, :cond_d7

    .line 83
    :cond_3a
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v7, :cond_4b

    .line 84
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    if-ge v3, v5, :cond_15

    .line 85
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    invoke-static {v1, v3, v7}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 88
    .end local v3    # "i":I
    :cond_4b
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v7, :cond_5d

    .line 89
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_50
    if-ge v3, v5, :cond_15

    .line 90
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    int-to-short v7, v7

    invoke-static {v1, v3, v7}, Ljava/lang/reflect/Array;->setShort(Ljava/lang/Object;IS)V

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 93
    .end local v3    # "i":I
    :cond_5d
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v7, :cond_6e

    .line 94
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_62
    if-ge v3, v5, :cond_15

    .line 95
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    invoke-static {v1, v3, v8, v9}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 98
    .end local v3    # "i":I
    :cond_6e
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v7, :cond_80

    .line 99
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_73
    if-ge v3, v5, :cond_15

    .line 100
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    int-to-byte v7, v7

    invoke-static {v1, v3, v7}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 102
    .end local v3    # "i":I
    :cond_80
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v7, :cond_92

    .line 103
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_85
    if-ge v3, v5, :cond_15

    .line 104
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    int-to-char v7, v7

    invoke-static {v1, v3, v7}, Ljava/lang/reflect/Array;->setChar(Ljava/lang/Object;IC)V

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    .line 106
    .end local v3    # "i":I
    :cond_92
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v7, :cond_a3

    .line 107
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_97
    if-ge v3, v5, :cond_15

    .line 108
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v7

    invoke-static {v1, v3, v7}, Ljava/lang/reflect/Array;->setBoolean(Ljava/lang/Object;IZ)V

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_97

    .line 110
    .end local v3    # "i":I
    :cond_a3
    const-class v7, Ljava/lang/String;

    if-ne v2, v7, :cond_b4

    .line 111
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_a8
    if-ge v3, v5, :cond_15

    .line 112
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v3, v7}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    .line 114
    .end local v3    # "i":I
    :cond_b4
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v7, :cond_c6

    .line 115
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_b9
    if-ge v3, v5, :cond_15

    .line 116
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    double-to-float v7, v8

    invoke-static {v1, v3, v7}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_b9

    .line 118
    .end local v3    # "i":I
    :cond_c6
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v7, :cond_15

    .line 119
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_cb
    if-ge v3, v5, :cond_15

    .line 120
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    invoke-static {v1, v3, v8, v9}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_cb

    .line 124
    .end local v3    # "i":I
    :cond_d7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_d8
    if-ge v3, v5, :cond_15

    .line 125
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/idk/parser/ObjectParser;->fromString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v1, v3, v7}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e9} :catch_ec

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_d8

    .line 129
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "array":Ljava/lang/Object;
    .end local v2    # "element":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "i":I
    .end local v4    # "js":Lorg/json/JSONObject;
    .end local v5    # "size":I
    :catch_ec
    move-exception v7

    move-object v1, v6

    .line 132
    goto/16 :goto_15
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 11
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 12
    .local v2, "element":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 13
    .local v5, "size":I
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .local v4, "out":Lorg/json/JSONObject;
    const-string v6, "type"

    const-string v7, "array"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v6, "class"

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 17
    .local v0, "arr":Lorg/json/JSONArray;
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_30

    const-class v6, Ljava/lang/String;

    if-ne v2, v6, :cond_dd

    .line 18
    :cond_30
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v6, :cond_41

    .line 19
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_35
    if-ge v3, v5, :cond_f3

    .line 20
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 19
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 23
    .end local v3    # "i":I
    :cond_41
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v6, :cond_52

    .line 24
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_46
    if-ge v3, v5, :cond_f3

    .line 25
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->getShort(Ljava/lang/Object;I)S

    move-result v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 24
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 28
    .end local v3    # "i":I
    :cond_52
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v6, :cond_63

    .line 29
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_57
    if-ge v3, v5, :cond_f3

    .line 30
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 29
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 33
    .end local v3    # "i":I
    :cond_63
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v6, :cond_75

    .line 34
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_68
    if-ge v3, v5, :cond_f3

    .line 35
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 34
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 38
    .end local v3    # "i":I
    :cond_75
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v6, :cond_86

    .line 39
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7a
    if-ge v3, v5, :cond_f3

    .line 40
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    .line 43
    .end local v3    # "i":I
    :cond_86
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v6, :cond_97

    .line 44
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8b
    if-ge v3, v5, :cond_f3

    .line 45
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 47
    .end local v3    # "i":I
    :cond_97
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v6, :cond_a8

    .line 48
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_9c
    if-ge v3, v5, :cond_f3

    .line 49
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->getChar(Ljava/lang/Object;I)C

    move-result v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    .line 51
    .end local v3    # "i":I
    :cond_a8
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v6, :cond_b9

    .line 52
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_ad
    if-ge v3, v5, :cond_f3

    .line 53
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    move-result v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_ad

    .line 55
    .end local v3    # "i":I
    :cond_b9
    const-class v6, Ljava/lang/String;

    if-ne v2, v6, :cond_f3

    .line 56
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_be
    if-ge v3, v5, :cond_f3

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_be

    .line 61
    .end local v3    # "i":I
    :cond_dd
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_de
    if-ge v3, v5, :cond_f3

    .line 62
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/idk/parser/ObjectParser;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_de

    .line 65
    .end local v3    # "i":I
    :cond_f3
    const-string v6, "value"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_fb} :catch_fd

    move-result-object v6

    .line 69
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v2    # "element":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "out":Lorg/json/JSONObject;
    .end local v5    # "size":I
    :goto_fc
    return-object v6

    .line 67
    :catch_fd
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    const/4 v6, 0x0

    goto :goto_fc
.end method
