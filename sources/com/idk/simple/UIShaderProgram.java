package com.idk.simple;

import com.idk.gl.ShaderProgram;

/* JADX INFO: loaded from: classes2.dex */
public class UIShaderProgram extends ShaderProgram {
    private static final String fs = " precision mediump float;\n    uniform vec4 color;\n    uniform sampler2D texture;\n    varying vec2 v_uv;\n    void main(){\n    gl_FragColor = color;\n    }";
    private static final String vs = "attribute vec3 a_pos;\n    attribute vec2 a_uv;\n    uniform mat4 projection;\n    uniform mat4 model;\n    varying vec2 v_uv;\n    \n    void main(){\n    v_uv = a_uv;\n    vec4 fPos = vec4(a_pos,1.0);\n    gl_Position = projection * model * fPos;\n    }";

    public UIShaderProgram() {
        super(vs, fs);
    }
}
