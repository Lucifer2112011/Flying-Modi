###### Class com.idk.parser.ObjectParser (com.idk.parser.ObjectParser)
.class public Lcom/idk/parser/ObjectParser;
.super Ljava/lang/Object;
.source "ObjectParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fieldMap(Ljava/lang/Class;)Ljava/util/Map;
    .registers 8
    .param p0, "cls"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 256
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_c
    if-ge v3, v5, :cond_20

    aget-object v1, v4, v3

    .line 257
    .local v1, "s":Ljava/lang/reflect/Field;
    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 258
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 261
    .end local v1    # "s":Ljava/lang/reflect/Field;
    :cond_20
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    :goto_25
    if-ge v2, v4, :cond_39

    aget-object v1, v3, v2

    .line 262
    .restart local v1    # "s":Ljava/lang/reflect/Field;
    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 263
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 266
    .end local v1    # "s":Ljava/lang/reflect/Field;
    :cond_39
    return-object v0
.end method

.method private static fields(Ljava/lang/Class;)Ljava/util/List;
    .registers 8
    .param p0, "cls"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "fld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_c
    if-ge v3, v5, :cond_1c

    aget-object v1, v4, v3

    .line 98
    .local v1, "s":Ljava/lang/reflect/Field;
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 102
    .end local v1    # "s":Ljava/lang/reflect/Field;
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    :goto_21
    if-ge v2, v4, :cond_31

    aget-object v1, v3, v2

    .line 103
    .restart local v1    # "s":Ljava/lang/reflect/Field;
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 104
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 107
    .end local v1    # "s":Ljava/lang/reflect/Field;
    :cond_31
    return-object v0
.end method

.method private static findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 269
    const-string v1, "boolean"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 270
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 290
    :goto_a
    return-object v1

    .line 271
    :cond_b
    const-string v1, "int"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 272
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_a

    .line 273
    :cond_16
    const-string v1, "short"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 274
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_a

    .line 275
    :cond_21
    const-string v1, "long"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 276
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_a

    .line 277
    :cond_2c
    const-string v1, "byte"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 278
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_a

    .line 279
    :cond_37
    const-string v1, "float"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 280
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_a

    .line 281
    :cond_42
    const-string v1, "double"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 282
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_a

    .line 283
    :cond_4d
    const-string v1, "char"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 284
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_a

    .line 287
    :cond_58
    :try_start_58
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5d

    move-result-object v1

    goto :goto_a

    .line 288
    :catch_5d
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class Not Found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 290
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static fromString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 22
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    .local v9, "jsonObject":Lorg/json/JSONObject;
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 163
    .local v14, "type":Ljava/lang/String;
    const-string v17, "object"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_28e

    .line 164
    const-string v17, "class"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 165
    .local v4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4}, Lcom/idk/parser/ObjectParser;->isPrimitiveObject(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_ff

    .line 166
    const-class v17, Ljava/lang/Integer;

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_46

    .line 167
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 252
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "type":Ljava/lang/String;
    :cond_45
    :goto_45
    return-object v5

    .line 168
    .restart local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v14    # "type":Ljava/lang/String;
    :cond_46
    const-class v17, Ljava/lang/Short;

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_5d

    .line 169
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    goto :goto_45

    .line 170
    :cond_5d
    const-class v17, Ljava/lang/Long;

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_74

    .line 171
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_45

    .line 172
    :cond_74
    const-class v17, Ljava/lang/Byte;

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_8b

    .line 173
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    goto :goto_45

    .line 174
    :cond_8b
    const-class v17, Ljava/lang/Character;

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_a8

    .line 175
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    goto :goto_45

    .line 176
    :cond_a8
    const-class v17, Ljava/lang/Double;

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_bf

    .line 177
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_45

    .line 178
    :cond_bf
    const-class v17, Ljava/lang/Float;

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_d7

    .line 179
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto/16 :goto_45

    .line 180
    :cond_d7
    const-class v17, Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_e7

    .line 181
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_45

    .line 182
    :cond_e7
    const-class v17, Ljava/lang/Boolean;

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_1a9

    .line 183
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_45

    .line 185
    :cond_ff
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v17

    if-eqz v17, :cond_12f

    .line 186
    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Enum;

    .line 187
    .local v11, "num":[Ljava/lang/Enum;
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 188
    .local v15, "value":Ljava/lang/String;
    array-length v0, v11

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_118
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1a9

    aget-object v5, v11, v17

    .line 189
    .local v5, "e":Ljava/lang/Enum;
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_129} :catch_2be

    move-result v19

    if-nez v19, :cond_45

    .line 188
    add-int/lit8 v17, v17, 0x1

    goto :goto_118

    .line 195
    .end local v5    # "e":Ljava/lang/Enum;
    .end local v11    # "num":[Ljava/lang/Enum;
    .end local v15    # "value":Ljava/lang/String;
    :cond_12f
    :try_start_12f
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    .line 196
    .local v12, "obj":Ljava/lang/Object;
    const-string v17, "fields"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 197
    .local v3, "array":Lorg/json/JSONArray;
    invoke-static {v4}, Lcom/idk/parser/ObjectParser;->fieldMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v10

    .line 198
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_140
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_28b

    .line 199
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 200
    .local v8, "js":Lorg/json/JSONObject;
    const-string v17, "class"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/idk/parser/ObjectParser;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v16

    .line 201
    .local v16, "var":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v16, :cond_161

    .line 198
    :cond_15e
    :goto_15e
    add-int/lit8 v7, v7, 0x1

    goto :goto_140

    .line 204
    :cond_161
    const-string v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15e

    .line 207
    const-string v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    .line 208
    .local v6, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    .line 209
    .local v2, "access":Z
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 210
    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1ac

    .line 211
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v12, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 234
    :cond_1a1
    :goto_1a1
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_1a4} :catch_1a5

    goto :goto_15e

    .line 237
    .end local v2    # "access":Z
    .end local v3    # "array":Lorg/json/JSONArray;
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "i":I
    .end local v8    # "js":Lorg/json/JSONObject;
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    .end local v12    # "obj":Ljava/lang/Object;
    .end local v16    # "var":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1a5
    move-exception v5

    .line 238
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1a6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1a9} :catch_2be

    .line 252
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "type":Ljava/lang/String;
    :cond_1a9
    :goto_1a9
    const/4 v5, 0x0

    goto/16 :goto_45

    .line 212
    .restart local v2    # "access":Z
    .restart local v3    # "array":Lorg/json/JSONArray;
    .restart local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    .restart local v7    # "i":I
    .restart local v8    # "js":Lorg/json/JSONObject;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    .restart local v12    # "obj":Ljava/lang/Object;
    .restart local v14    # "type":Ljava/lang/String;
    .restart local v16    # "var":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1ac
    :try_start_1ac
    sget-object v17, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1c7

    .line 213
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v12, v0}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_1a1

    .line 214
    :cond_1c7
    sget-object v17, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1dd

    .line 215
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v12, v0, v1}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_1a1

    .line 216
    :cond_1dd
    sget-object v17, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1f8

    .line 217
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v12, v0}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    goto :goto_1a1

    .line 218
    :cond_1f8
    sget-object v17, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_213

    .line 219
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v12, v0}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    goto :goto_1a1

    .line 220
    :cond_213
    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_22a

    .line 221
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v12, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto/16 :goto_1a1

    .line 222
    :cond_22a
    sget-object v17, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_246

    .line 223
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v12, v0}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_1a1

    .line 224
    :cond_246
    sget-object v17, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_25d

    .line 225
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v12, v0, v1}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_1a1

    .line 226
    :cond_25d
    const-class v17, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_274

    .line 227
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v12, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1a1

    .line 229
    :cond_274
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/idk/parser/ObjectParser;->fromString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v13

    .line 230
    .local v13, "tmp":Ljava/lang/Object;
    if-eqz v13, :cond_1a1

    .line 231
    invoke-virtual {v6, v12, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_289
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_289} :catch_1a5

    goto/16 :goto_1a1

    .end local v2    # "access":Z
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "js":Lorg/json/JSONObject;
    .end local v13    # "tmp":Ljava/lang/Object;
    .end local v16    # "var":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_28b
    move-object v5, v12

    .line 236
    goto/16 :goto_45

    .line 241
    .end local v3    # "array":Lorg/json/JSONArray;
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "i":I
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    .end local v12    # "obj":Ljava/lang/Object;
    :cond_28e
    :try_start_28e
    const-string v17, "array"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_29e

    .line 242
    invoke-static/range {p0 .. p1}, Lcom/idk/parser/ArrayParser;->fromString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_45

    .line 243
    :cond_29e
    const-string v17, "list"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2ae

    .line 244
    invoke-static/range {p0 .. p1}, Lcom/idk/parser/CollectionParser;->fromString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_45

    .line 245
    :cond_2ae
    const-string v17, "map"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a9

    .line 246
    invoke-static/range {p0 .. p1}, Lcom/idk/parser/MapParser;->fromString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Map;
    :try_end_2bb
    .catch Ljava/lang/Exception; {:try_start_28e .. :try_end_2bb} :catch_2be

    move-result-object v5

    goto/16 :goto_45

    .line 249
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "type":Ljava/lang/String;
    :catch_2be
    move-exception v5

    .line 250
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1a9
.end method

.method private static isPrimitiveObject(Ljava/lang/Class;)Z
    .registers 2
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 89
    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_24

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_24

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_24

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_24

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_24

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_24

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_24

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_24

    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private static isValidField(Ljava/lang/reflect/Field;)Z
    .registers 10
    .param p0, "fl"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    .line 111
    .local v2, "mod":I
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 135
    :cond_c
    :goto_c
    return v3

    .line 114
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    array-length v7, v6

    move v5, v3

    :goto_18
    if-ge v5, v7, :cond_30

    aget-object v0, v6, v5

    .line 116
    .local v0, "an":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    .line 117
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 120
    .end local v0    # "an":Ljava/lang/annotation/Annotation;
    :cond_30
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    array-length v7, v6

    move v5, v3

    :goto_36
    if-ge v5, v7, :cond_4e

    aget-object v0, v6, v5

    .line 121
    .restart local v0    # "an":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4b

    .line 122
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 125
    .end local v0    # "an":Ljava/lang/annotation/Annotation;
    :cond_4e
    const-class v5, Lcom/idk/parser/Save;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    move v3, v4

    .line 126
    goto :goto_c

    .line 128
    :cond_58
    const-class v5, Lcom/idk/parser/Ignore;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 131
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_c

    move v3, v4

    .line 132
    goto :goto_c
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 15
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 17
    if-nez p0, :cond_5

    move-object v9, v10

    .line 86
    .end local p0    # "obj":Ljava/lang/Object;
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v7, "jsonObject":Lorg/json/JSONObject;
    :goto_4
    return-object v9

    .line 20
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 21
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    const-string v9, "type"

    const-string v11, "object"

    invoke-virtual {v7, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v9, "class"

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    invoke-static {v1}, Lcom/idk/parser/ObjectParser;->isPrimitiveObject(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 25
    const-string v9, "value"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_2d
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 26
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_32
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 27
    invoke-static {p0}, Lcom/idk/parser/ArrayParser;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 28
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-eqz v9, :cond_55

    .line 29
    const-string v9, "value"

    check-cast p0, Ljava/lang/Enum;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4e} :catch_4f

    goto :goto_2d

    .line 83
    :catch_4f
    move-exception v2

    .line 84
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v10

    .line 86
    goto :goto_4

    .line 30
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_55
    :try_start_55
    const-class v9, Ljava/util/List;

    invoke-virtual {v9, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 31
    check-cast p0, Ljava/util/List;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/idk/parser/CollectionParser;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 32
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_64
    const-class v9, Ljava/util/Map;

    invoke-virtual {v9, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_73

    .line 33
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/idk/parser/MapParser;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 35
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_73
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 36
    .local v5, "fields":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/idk/parser/ObjectParser;->fields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 37
    .local v4, "fieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_80
    :goto_80
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_8c} :catch_4f

    .line 39
    .local v6, "fld":Ljava/lang/reflect/Field;
    :try_start_8c
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 40
    .local v8, "var":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v6}, Lcom/idk/parser/ObjectParser;->isValidField(Ljava/lang/reflect/Field;)Z

    move-result v9

    if-eqz v9, :cond_80

    .line 43
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 44
    .local v0, "bol":Z
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_ad

    .line 47
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a7} :catch_a8

    goto :goto_80

    .line 76
    .end local v0    # "bol":Z
    .end local v8    # "var":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_a8
    move-exception v2

    .line 77
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_a9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_4f

    goto :goto_80

    .line 50
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bol":Z
    .restart local v8    # "var":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_ad
    :try_start_ad
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v3, "field":Lorg/json/JSONObject;
    const-string v9, "class"

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v9, "name"

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_d8

    .line 54
    const-string v9, "value"

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v3, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    :goto_d1
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_80

    .line 55
    :cond_d8
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_e6

    .line 56
    const-string v9, "value"

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v12

    invoke-virtual {v3, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_d1

    .line 57
    :cond_e6
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_f4

    .line 58
    const-string v9, "value"

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v3, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_d1

    .line 59
    :cond_f4
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_102

    .line 60
    const-string v9, "value"

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v12

    invoke-virtual {v3, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_d1

    .line 61
    :cond_102
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_110

    .line 62
    const-string v9, "value"

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v12

    invoke-virtual {v3, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_d1

    .line 63
    :cond_110
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_11e

    .line 64
    const-string v9, "value"

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v3, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_d1

    .line 65
    :cond_11e
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_12d

    .line 66
    const-string v9, "value"

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v12

    float-to-double v12, v12

    invoke-virtual {v3, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_d1

    .line 67
    :cond_12d
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_13b

    .line 68
    const-string v9, "value"

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v12

    invoke-virtual {v3, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_d1

    .line 69
    :cond_13b
    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_14b

    .line 70
    const-string v12, "value"

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d1

    .line 72
    :cond_14b
    const-string v9, "value"

    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/idk/parser/ObjectParser;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_15d} :catch_a8

    goto/16 :goto_d1

    .line 80
    .end local v0    # "bol":Z
    .end local v3    # "field":Lorg/json/JSONObject;
    .end local v6    # "fld":Ljava/lang/reflect/Field;
    .end local v8    # "var":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_15f
    :try_start_15f
    const-string v9, "fields"

    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_164} :catch_4f

    goto/16 :goto_2d
.end method
