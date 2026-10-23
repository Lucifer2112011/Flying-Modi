###### Class com.idk.simple.UIShaderProgram (com.idk.simple.UIShaderProgram)
.class public Lcom/idk/simple/UIShaderProgram;
.super Lcom/idk/gl/ShaderProgram;
.source "UIShaderProgram.java"


# static fields
.field private static final fs:Ljava/lang/String; = " precision mediump float;\n    uniform vec4 color;\n    uniform sampler2D texture;\n    varying vec2 v_uv;\n    void main(){\n    gl_FragColor = color;\n    }"

.field private static final vs:Ljava/lang/String; = "attribute vec3 a_pos;\n    attribute vec2 a_uv;\n    uniform mat4 projection;\n    uniform mat4 model;\n    varying vec2 v_uv;\n    \n    void main(){\n    v_uv = a_uv;\n    vec4 fPos = vec4(a_pos,1.0);\n    gl_Position = projection * model * fPos;\n    }"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 26
    const-string v0, "attribute vec3 a_pos;\n    attribute vec2 a_uv;\n    uniform mat4 projection;\n    uniform mat4 model;\n    varying vec2 v_uv;\n    \n    void main(){\n    v_uv = a_uv;\n    vec4 fPos = vec4(a_pos,1.0);\n    gl_Position = projection * model * fPos;\n    }"

    const-string v1, " precision mediump float;\n    uniform vec4 color;\n    uniform sampler2D texture;\n    varying vec2 v_uv;\n    void main(){\n    gl_FragColor = color;\n    }"

    invoke-direct {p0, v0, v1}, Lcom/idk/gl/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method
