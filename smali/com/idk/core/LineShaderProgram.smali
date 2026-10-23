###### Class com.idk.core.LineShaderProgram (com.idk.core.LineShaderProgram)
.class public Lcom/idk/core/LineShaderProgram;
.super Lcom/idk/gl/ShaderProgram;
.source "LineShaderProgram.java"


# static fields
.field public static final fs:Ljava/lang/String; = "precision mediump float;\nuniform vec4 color;\nvoid main(){\ngl_FragColor = color;\n\n}"

.field private static final vs:Ljava/lang/String; = "attribute vec4 position;\nuniform mat4 projectionMatrix;\nuniform mat4 viewMatrix;\nuniform mat4 modelMatrix;\nvoid main(){\ngl_Position = projectionMatrix * viewMatrix * modelMatrix * position;\n}"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 19
    const-string v0, "attribute vec4 position;\nuniform mat4 projectionMatrix;\nuniform mat4 viewMatrix;\nuniform mat4 modelMatrix;\nvoid main(){\ngl_Position = projectionMatrix * viewMatrix * modelMatrix * position;\n}"

    const-string v1, "precision mediump float;\nuniform vec4 color;\nvoid main(){\ngl_FragColor = color;\n\n}"

    invoke-direct {p0, v0, v1}, Lcom/idk/gl/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
