###### Class com.idk.util.XmlUtils (com.idk.util.XmlUtils)
.class public Lcom/idk/util/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toXML(Lcom/idk/core/Scene;Ljava/io/File;)V
    .registers 26
    .param p0, "scene"    # Lcom/idk/core/Scene;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 26
    .local v4, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 27
    .local v3, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 28
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string v17, "scene"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 29
    .local v12, "root_scene":Lorg/w3c/dom/Element;
    const-string v17, "interface"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 30
    .local v8, "list_interface":Lorg/w3c/dom/Element;
    invoke-virtual/range {p0 .. p0}, Lcom/idk/core/Scene;->getInterfaceArray()[Lcom/idk/core/SceneInterface;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v17, 0x0

    :goto_27
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_43

    aget-object v13, v18, v17

    .line 31
    .local v13, "sceneInterface":Lcom/idk/core/SceneInterface;
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 32
    .local v5, "element":Lorg/w3c/dom/Element;
    invoke-interface {v8, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 30
    add-int/lit8 v17, v17, 0x1

    goto :goto_27

    .line 34
    .end local v5    # "element":Lorg/w3c/dom/Element;
    .end local v13    # "sceneInterface":Lcom/idk/core/SceneInterface;
    :cond_43
    invoke-interface {v12, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 35
    const-string v17, "objects"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 36
    .local v11, "objects":Lorg/w3c/dom/Element;
    invoke-virtual/range {p0 .. p0}, Lcom/idk/core/Scene;->getObjectArray()[Lcom/idk/core/GameObject;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v17, 0x0

    move/from16 v18, v17

    :goto_5b
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_15f

    aget-object v7, v19, v18

    .line 37
    .local v7, "gameObject":Lcom/idk/core/GameObject;
    iget-object v0, v7, Lcom/idk/core/GameObject;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 38
    .restart local v5    # "element":Lorg/w3c/dom/Element;
    const-string v17, "ac"

    iget-boolean v0, v7, Lcom/idk/core/GameObject;->active:Z

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v17, "p"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v7, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/idk/math/Vector2;->x:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v7, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/idk/math/Vector2;->y:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v17, "s"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v7, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/idk/math/Vector2;->x:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v7, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/idk/math/Transform2D;->scale:Lcom/idk/math/Vector2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/idk/math/Vector2;->y:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v17, "a"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v7, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/idk/math/Transform2D;->angle:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v17, "modifiers"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 45
    .local v10, "modifiers":Lorg/w3c/dom/Element;
    invoke-virtual {v7}, Lcom/idk/core/GameObject;->getModifierArray()[Lcom/idk/core/ObjectModifier;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v17, 0x0

    :goto_137
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_153

    aget-object v9, v21, v17

    .line 46
    .local v9, "modifier":Lcom/idk/core/ObjectModifier;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 47
    .local v6, "element1":Lorg/w3c/dom/Element;
    invoke-interface {v10, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 45
    add-int/lit8 v17, v17, 0x1

    goto :goto_137

    .line 49
    .end local v6    # "element1":Lorg/w3c/dom/Element;
    .end local v9    # "modifier":Lcom/idk/core/ObjectModifier;
    :cond_153
    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 50
    invoke-interface {v11, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 36
    add-int/lit8 v17, v18, 0x1

    move/from16 v18, v17

    goto/16 :goto_5b

    .line 52
    .end local v5    # "element":Lorg/w3c/dom/Element;
    .end local v7    # "gameObject":Lcom/idk/core/GameObject;
    .end local v10    # "modifiers":Lorg/w3c/dom/Element;
    :cond_15f
    invoke-interface {v12, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 53
    new-instance v14, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v14, v12}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 54
    .local v14, "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v16

    .line 55
    .local v16, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v15

    .line 56
    .local v15, "transformer":Ljavax/xml/transform/Transformer;
    const-string v17, "indent"

    const-string v18, "yes"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v17, "{http://xml.apache.org/xslt}indent-amount"

    const-string v18, "4"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v17, Ljavax/xml/transform/stream/StreamResult;

    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v17 .. v18}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 59
    return-void
.end method
