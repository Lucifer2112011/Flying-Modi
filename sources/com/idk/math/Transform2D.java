package com.idk.math;

/* JADX INFO: loaded from: classes2.dex */
public class Transform2D {
    public Vector2 position = new Vector2();
    public float angle = 0.0f;
    public float depth = 1.0f;
    public Vector2 scale = new Vector2(10.0f, 10.0f);
    private Matrix matrix = new Matrix();
    private Matrix matrix1 = new Matrix();

    public float[] getMatrixArray() {
        this.matrix.reset();
        this.matrix1.reset();
        this.matrix1.rotate(this.angle, 0.0f, 0.0f, 1.0f);
        this.matrix.translate(this.position.x, this.position.y, this.depth);
        this.matrix.multiply(this.matrix1);
        this.matrix.scale(this.scale.x, this.scale.y, 1.0f);
        return this.matrix.val;
    }
}
