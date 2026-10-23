package com.idk.core;

import com.idk.gl.ShaderProgram;

/* JADX INFO: loaded from: classes2.dex */
public class LineShaderProgram extends ShaderProgram {
    public static final String fs = "precision mediump float;\nuniform vec4 color;\nvoid main(){\ngl_FragColor = color;\n\n}";
    private static final String vs = "attribute vec4 position;\nuniform mat4 projectionMatrix;\nuniform mat4 viewMatrix;\nuniform mat4 modelMatrix;\nvoid main(){\ngl_Position = projectionMatrix * viewMatrix * modelMatrix * position;\n}";

    public LineShaderProgram() {
        super(vs, fs);
    }
}
