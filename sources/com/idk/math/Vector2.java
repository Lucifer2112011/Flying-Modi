package com.idk.math;

/* JADX INFO: loaded from: classes2.dex */
public class Vector2 {
    public float x;
    public float y;

    public Vector2() {
        this.x = 0.0f;
        this.y = 0.0f;
    }

    public Vector2(float all) {
        this.x = 0.0f;
        this.y = 0.0f;
        set(all, all);
    }

    public Vector2(float vx, float vy) {
        this.x = 0.0f;
        this.y = 0.0f;
        this.x = vx;
        this.y = vy;
    }

    public void set(float vx, float vy) {
        this.x = vx;
        this.y = vy;
    }

    public float distance(Vector2 next) {
        float a = this.x - next.x;
        float b = this.y - next.y;
        return (float) Math.sqrt((a * a) + (b * b));
    }

    public float getLength() {
        float a = this.x;
        float b = this.y;
        return (float) Math.sqrt((a * a) + (b * b));
    }

    public Vector2 normalize() {
        return this;
    }

    public static Vector2 ZERO() {
        return new Vector2(0.0f, 0.0f);
    }

    public static Vector2 LEFT() {
        return new Vector2(-1.0f, 0.0f);
    }

    public static Vector2 RIGHT() {
        return new Vector2(1.0f, 0.0f);
    }

    public static Vector2 UP() {
        return new Vector2(0.0f, 1.0f);
    }

    public static Vector2 DOWN() {
        return new Vector2(0.0f, -1.0f);
    }

    public Vector2 add(Vector2 b) {
        this.x += b.x;
        this.y += b.y;
        return this;
    }

    public Vector2 sub(Vector2 b) {
        this.x -= b.x;
        this.y -= b.y;
        return this;
    }

    public Vector2 mul(Vector2 b) {
        this.x *= b.x;
        this.y *= b.y;
        return this;
    }

    public Vector2 div(Vector2 b) {
        this.x /= b.x;
        this.y /= b.y;
        return this;
    }

    public float[] toArray() {
        return new float[]{this.x, this.y};
    }

    public String toString() {
        return this.x + ":" + this.y;
    }
}
