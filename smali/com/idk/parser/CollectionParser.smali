###### Class com.idk.parser.CollectionParser (com.idk.parser.CollectionParser)
.class public Lcom/idk/parser/CollectionParser;
.super Ljava/lang/Object;
.source "CollectionParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 13
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v8, 0x0

    .line 33
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "type"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "list"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    move-object v4, v8

    .line 55
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_15
    return-object v4

    .line 37
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_16
    const-string v9, "class"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 39
    .local v4, "obj":Ljava/util/Collection;
    const-string v9, "size"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 40
    .local v5, "size":I
    const-string v9, "value"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 41
    .local v3, "ls":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v6, "tmp":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_56

    .line 43
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1}, Lcom/idk/parser/ObjectParser;->fromString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    .line 44
    .local v7, "va":Ljava/lang/Object;
    if-nez v7, :cond_4f

    .line 42
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 47
    :cond_4f
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 52
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "i":I
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "ls":Lorg/json/JSONArray;
    .end local v4    # "obj":Ljava/util/Collection;
    .end local v5    # "size":I
    .end local v6    # "tmp":Ljava/util/ArrayList;
    .end local v7    # "va":Ljava/lang/Object;
    :catch_53
    move-exception v9

    move-object v4, v8

    .line 55
    goto :goto_15

    .line 49
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "i":I
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "ls":Lorg/json/JSONArray;
    .restart local v4    # "obj":Ljava/util/Collection;
    .restart local v5    # "size":I
    .restart local v6    # "tmp":Ljava/util/ArrayList;
    :cond_56
    invoke-interface {v4, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5c} :catch_53

    goto :goto_15
.end method

.method public static toString(Ljava/util/Collection;)Ljava/lang/String;
    .registers 8
    .param p0, "obj"    # Ljava/util/Collection;

    .prologue
    .line 12
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 13
    .local v4, "js":Lorg/json/JSONObject;
    const-string v5, "type"

    const-string v6, "list"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string v5, "class"

    invoke-interface {p0}, Ljava/util/Collection;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v5, "size"

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 17
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v1, "cache":Ljava/util/ArrayList;
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_49

    .line 20
    new-instance v5, Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/idk/parser/ObjectParser;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 19
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 24
    :cond_49
    const-string v5, "value"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_53

    move-result-object v5

    .line 29
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "cache":Ljava/util/ArrayList;
    .end local v3    # "i":I
    .end local v4    # "js":Lorg/json/JSONObject;
    :goto_52
    return-object v5

    .line 26
    :catch_53
    move-exception v2

    .line 27
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    const/4 v5, 0x0

    goto :goto_52
.end method
