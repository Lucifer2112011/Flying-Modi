###### Class com.idk.parser.MapParser (com.idk.parser.MapParser)
.class public Lcom/idk/parser/MapParser;
.super Ljava/lang/Object;
.source "MapParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Map;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toString(Ljava/util/Map;)Ljava/lang/String;
    .registers 10
    .param p0, "map"    # Ljava/util/Map;

    .prologue
    .line 13
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "type"

    const-string v7, "map"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v6, "size"

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    const-string v6, "class"

    invoke-interface {p0}, Ljava/util/Map;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 18
    .local v1, "array":Lorg/json/JSONArray;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 19
    .local v0, "am":Landroid/util/ArrayMap;
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 20
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v3, v6, :cond_61

    .line 21
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .local v5, "pair":Lorg/json/JSONObject;
    const-string v6, "key"

    new-instance v7, Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    .line 22
    invoke-static {v8}, Lcom/idk/parser/ObjectParser;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v6, "value"

    new-instance v7, Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    .line 25
    invoke-static {v8}, Lcom/idk/parser/ObjectParser;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 20
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 30
    .end local v5    # "pair":Lorg/json/JSONObject;
    :cond_61
    const-string v6, "value"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6b

    move-result-object v6

    .line 35
    .end local v0    # "am":Landroid/util/ArrayMap;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :goto_6a
    return-object v6

    .line 32
    :catch_6b
    move-exception v2

    .line 33
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    const/4 v6, 0x0

    goto :goto_6a
.end method
