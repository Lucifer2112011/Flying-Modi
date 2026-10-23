package com.idk.simple;

import com.idk.gl.ShaderProgram;

/* JADX INFO: loaded from: classes2.dex */
public class SpriteShaderProgram extends ShaderProgram {
    public static final String fs = "precision mediump float;\nuniform vec4 color;\nuniform sampler2D tex;\nvarying vec2 v_uv;\nuniform int uv_change;\nuniform vec2 offset;\nuniform vec2 scale;\nvoid main(){\nvec2 uv = v_uv;\nif(uv_change==1){\n uv = offset+ (scale * v_uv); \n}\nvec4 tc = texture2D(tex,uv);\nif(tc.a < 0.1){ discard; }\ngl_FragColor = color * tc;\n}";
    private static final String vs = "attribute vec3 position;\nattribute vec2 a_uv;\nuniform mat4 projectionMatrix;\nuniform mat4 viewMatrix;\nuniform mat4 modelMatrix;\nvarying vec2 v_uv;\nvoid main(){\nv_uv = a_uv;\ngl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position,1.0);\n}";

    public SpriteShaderProgram() {
        super(vs, fs);
    }
}
