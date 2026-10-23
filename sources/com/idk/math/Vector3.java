package com.idk.math;

/* JADX INFO: loaded from: classes2.dex */
public class Vector3 {
    public float x;
    public float y;
    public float z;

    public Vector3() {
    }

    public Vector3(float all) {
        set(all, all, all);
    }

    public Vector3(float vx, float vy, float vz) {
        this.x = vx;
        this.y = vy;
        this.z = vz;
    }

    public void set(float vx, float vy, float vz) {
        this.x = vx;
        this.y = vy;
        this.z = vz;
    }

    public void set(Vector3 v) {
        this.x = v.x;
        this.y = v.y;
        this.z = v.z;
    }

    public float distance(Vector3 next) {
        float a = this.x - next.x;
        float b = this.y - next.y;
        float c = this.z - next.z;
        return (float) Math.sqrt((a * a) + (b * b) + (c * c));
    }

    public float getDotProduct(Vector3 b) {
        return (this.x * b.x) + (this.y * b.y) + (this.z * b.z);
    }

    public static Vector3 ZERO() {
        return new Vector3(0.0f, 0.0f, 0.0f);
    }

    public static Vector3 LEFT() {
        return new Vector3(-1.0f, 0.0f, 0.0f);
    }

    public static Vector3 RIGHT() {
        return new Vector3(1.0f, 0.0f, 0.0f);
    }

    public static Vector3 UP() {
        return new Vector3(0.0f, 1.0f, 0.0f);
    }

    public static Vector3 DOWN() {
        return new Vector3(0.0f, -1.0f, 0.0f);
    }

    public static Vector3 FORWARD() {
        return new Vector3(0.0f, 0.0f, 1.0f);
    }

    public static Vector3 BACKWARD() {
        return new Vector3(0.0f, 0.0f, -1.0f);
    }

    public Vector3 add(Vector3 b) {
        this.x += b.x;
        this.y += b.y;
        this.z += b.z;
        return this;
    }

    public Vector3 sub(Vector3 b) {
        this.x -= b.x;
        this.y -= b.y;
        this.z -= b.z;
        return this;
    }

    public Vector3 mul(Vector3 b) {
        this.x *= b.x;
        this.y *= b.y;
        this.z *= b.z;
        return this;
    }

    public Vector3 mul(float b) {
        this.x *= b;
        this.y *= b;
        this.z *= b;
        return this;
    }

    public Vector3 div(float b) {
        this.x /= b;
        this.y /= b;
        this.z /= b;
        return this;
    }

    public Vector3 add(float b) {
        this.x += b;
        this.y += b;
        this.z += b;
        return this;
    }

    public Vector3 sub(float b) {
        this.x -= b;
        this.y -= b;
        this.z -= b;
        return this;
    }

    public Vector3 div(Vector3 b) {
        this.x /= b.x;
        this.y /= b.y;
        this.z /= b.z;
        return this;
    }

    public Vector3 crossProduct(Vector3 b) {
        return new Vector3((this.y * b.z) - (this.z * b.y), (this.z * b.x) - (this.x * b.z), (this.x * b.y) - (this.y * b.x));
    }

    public float[] getValues() {
        return new float[]{this.x, this.y, this.z};
    }

    public void setValue(float[] array, int st) {
        this.x = array[st];
        this.y = array[st + 1];
        this.z = array[st + 2];
    }

    public double getSqrMagnitude() {
        return (this.x * this.x) + (this.z * this.z) + (this.y * this.y);
    }

    public double getMagnitude() {
        return Math.sqrt((this.x * this.x) + (this.z * this.z) + (this.y * this.y));
    }

    public Vector3 normalized() {
        if (getSqrMagnitude() != 1.0d) {
            float magnitude = (float) getMagnitude();
            this.x /= magnitude;
            this.y /= magnitude;
            this.z /= magnitude;
        }
        return this;
    }

    public Vector3 copy() {
        return new Vector3(this.x, this.y, this.z);
    }
}
