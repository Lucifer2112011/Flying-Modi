package com.idk.math;

/* JADX INFO: loaded from: classes2.dex */
public class Matrix {
    public final float[] val;

    public Matrix() {
        this.val = new float[16];
        reset();
    }

    public Matrix(float[] data) {
        this.val = new float[16];
        set(data);
    }

    public void set(float[] values) {
        if (values.length == 16) {
            for (int i = 0; i < 16; i++) {
                this.val[i] = values[i];
            }
        }
    }

    public void setLookAt(Vector3 position, Vector3 up, Vector3 forward) {
        android.opengl.Matrix.setLookAtM(this.val, 0, forward.x, forward.y, forward.z, position.x, position.y, position.z, up.x, up.y, up.z);
    }

    public void multiply(Matrix mat2) {
        android.opengl.Matrix.multiplyMM(this.val, 0, this.val, 0, mat2.val, 0);
    }

    public void translate(float x, float y, float z) {
        android.opengl.Matrix.translateM(this.val, 0, x, y, z);
    }

    public void scale(float x, float y, float z) {
        android.opengl.Matrix.scaleM(this.val, 0, x, y, z);
    }

    public void rotate(float a, float x, float y, float z) {
        android.opengl.Matrix.rotateM(this.val, 0, a, x, y, z);
    }

    public void setRotateEuler(float x, float y, float z) {
        android.opengl.Matrix.setRotateEulerM(this.val, 0, x, y, z);
    }

    public void inverse() {
        android.opengl.Matrix.invertM(this.val, 0, this.val, 0);
    }

    public void transpose() {
        android.opengl.Matrix.transposeM(this.val, 0, this.val, 0);
    }

    public void multiply(Vector4 position) {
        float[] result = new float[4];
        android.opengl.Matrix.multiplyMV(result, 0, this.val, 0, position.toArray(), 0);
        position.set(result[0], result[1], result[2], result[3]);
    }

    public void perspective(float fov, float aspect, float min, float max) {
        android.opengl.Matrix.perspectiveM(this.val, 0, fov, aspect, min, max);
    }

    public void ortho(float left, float right, float up, float down, float min, float max) {
        android.opengl.Matrix.orthoM(this.val, 0, left, right, up, down, min, max);
    }

    public void reset() {
        android.opengl.Matrix.setIdentityM(this.val, 0);
    }
}
