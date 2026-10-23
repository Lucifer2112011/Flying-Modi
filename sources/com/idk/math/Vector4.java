package com.idk.math;

/* JADX INFO: loaded from: classes2.dex */
public class Vector4 {
    public float w;
    public float x;
    public float y;
    public float z;

    public Vector4() {
    }

    public Vector4(float x, float y, float z, float w) {
        this.w = w;
        this.x = x;
        this.y = y;
        this.z = z;
    }

    public void set(float x, float y, float z, float w) {
        this.w = w;
        this.x = x;
        this.y = y;
        this.z = z;
    }

    public String toString() {
        return this.x + "," + this.y + "," + this.x + "," + this.w;
    }

    public float[] toArray() {
        return new float[]{this.x, this.y, this.z, this.w};
    }
}
