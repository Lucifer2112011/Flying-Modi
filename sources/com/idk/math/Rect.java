package com.idk.math;

/* JADX INFO: loaded from: classes2.dex */
public class Rect {
    public float bottom;
    public float left;
    public float right;
    public float top;

    public Rect(float left, float right, float top, float bottom) {
        this.top = 0.0f;
        this.bottom = 0.0f;
        this.left = 0.0f;
        this.right = 0.0f;
        this.right = right;
        this.left = left;
        this.top = top;
        this.bottom = bottom;
    }

    public Rect() {
        this.top = 0.0f;
        this.bottom = 0.0f;
        this.left = 0.0f;
        this.right = 0.0f;
    }

    public boolean isInside(Vector2 vector2) {
        return vector2.x >= this.left && vector2.x <= this.right && vector2.y >= this.bottom && vector2.y <= this.top;
    }

    public Vector2 getCenter() {
        return null;
    }

    public Rect copy() {
        return new Rect(this.left, this.right, this.top, this.bottom);
    }

    public Vector2 getPosition() {
        return new Vector2((this.left + this.right) * 0.5f, (this.top + this.bottom) * 0.5f);
    }

    public Vector2 getSize() {
        return new Vector2((this.right - this.left) * 0.5f, (this.top - this.bottom) * 0.5f);
    }
}
