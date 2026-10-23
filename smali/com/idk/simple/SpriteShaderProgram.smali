###### Class com.idk.simple.SpriteShaderProgram (com.idk.simple.SpriteShaderProgram)
.class public Lcom/idk/simple/SpriteShaderProgram;
.super Lcom/idk/gl/ShaderProgram;
.source "SpriteShaderProgram.java"


# static fields
.field public static final fs:Ljava/lang/String; = "precision mediump float;\nuniform vec4 color;\nuniform sampler2D tex;\nvarying vec2 v_uv;\nuniform int uv_change;\nuniform vec2 offset;\nuniform vec2 scale;\nvoid main(){\nvec2 uv = v_uv;\nif(uv_change==1){\n uv = offset+ (scale * v_uv); \n}\nvec4 tc = texture2D(tex,uv);\nif(tc.a < 0.1){ discard; }\ngl_FragColor = color * tc;\n}"

.field private static final vs:Ljava/lang/String; = "attribute vec3 position;\nattribute vec2 a_uv;\nuniform mat4 projectionMatrix;\nuniform mat4 viewMatrix;\nuniform mat4 modelMatrix;\nvarying vec2 v_uv;\nvoid main(){\nv_uv = a_uv;\ngl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position,1.0);\n}"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 33
    const-string v0, "attribute vec3 position;\nattribute vec2 a_uv;\nuniform mat4 projectionMatrix;\nuniform mat4 viewMatrix;\nuniform mat4 modelMatrix;\nvarying vec2 v_uv;\nvoid main(){\nv_uv = a_uv;\ngl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position,1.0);\n}"

    const-string v1, "precision mediump float;\nuniform vec4 color;\nuniform sampler2D tex;\nvarying vec2 v_uv;\nuniform int uv_change;\nuniform vec2 offset;\nuniform vec2 scale;\nvoid main(){\nvec2 uv = v_uv;\nif(uv_change==1){\n uv = offset+ (scale * v_uv); \n}\nvec4 tc = texture2D(tex,uv);\nif(tc.a < 0.1){ discard; }\ngl_FragColor = color * tc;\n}"

    invoke-direct {p0, v0, v1}, Lcom/idk/gl/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
