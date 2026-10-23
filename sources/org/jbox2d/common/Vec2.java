package org.jbox2d.common;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class Vec2 implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final long serialVersionUID = 1;
    public float x;
    public float y;

    static {
        $assertionsDisabled = !Vec2.class.desiredAssertionStatus();
    }

    public Vec2() {
        this(0.0f, 0.0f);
    }

    public Vec2(float x, float y) {
        this.x = x;
        this.y = y;
    }

    public Vec2(Vec2 toCopy) {
        this(toCopy.x, toCopy.y);
    }

    public final void setZero() {
        this.x = 0.0f;
        this.y = 0.0f;
    }

    public final Vec2 set(float x, float y) {
        this.x = x;
        this.y = y;
        return this;
    }

    public final Vec2 set(Vec2 v) {
        this.x = v.x;
        this.y = v.y;
        return this;
    }

    public final Vec2 add(Vec2 v) {
        return new Vec2(this.x + v.x, this.y + v.y);
    }

    public final Vec2 sub(Vec2 v) {
        return new Vec2(this.x - v.x, this.y - v.y);
    }

    public final Vec2 mul(float a) {
        return new Vec2(this.x * a, this.y * a);
    }

    public final Vec2 negate() {
        return new Vec2(-this.x, -this.y);
    }

    public final Vec2 negateLocal() {
        this.x = -this.x;
        this.y = -this.y;
        return this;
    }

    public final Vec2 addLocal(Vec2 v) {
        this.x += v.x;
        this.y += v.y;
        return this;
    }

    public final Vec2 addLocal(float x, float y) {
        this.x += x;
        this.y += y;
        return this;
    }

    public final Vec2 subLocal(Vec2 v) {
        this.x -= v.x;
        this.y -= v.y;
        return this;
    }

    public final Vec2 mulLocal(float a) {
        this.x *= a;
        this.y *= a;
        return this;
    }

    public final Vec2 skew() {
        return new Vec2(-this.y, this.x);
    }

    public final void skew(Vec2 out) {
        out.x = -this.y;
        out.y = this.x;
    }

    public final float length() {
        return MathUtils.sqrt((this.x * this.x) + (this.y * this.y));
    }

    public final float lengthSquared() {
        return (this.x * this.x) + (this.y * this.y);
    }

    public final float normalize() {
        float length = length();
        if (length < 1.1920929E-7f) {
            return 0.0f;
        }
        float invLength = 1.0f / length;
        this.x *= invLength;
        this.y *= invLength;
        return length;
    }

    public final boolean isValid() {
        return (Float.isNaN(this.x) || Float.isInfinite(this.x) || Float.isNaN(this.y) || Float.isInfinite(this.y)) ? false : true;
    }

    public final Vec2 abs() {
        return new Vec2(MathUtils.abs(this.x), MathUtils.abs(this.y));
    }

    public final void absLocal() {
        this.x = MathUtils.abs(this.x);
        this.y = MathUtils.abs(this.y);
    }

    public final Vec2 clone() {
        return new Vec2(this.x, this.y);
    }

    public final String toString() {
        return "(" + this.x + "," + this.y + ")";
    }

    public static final Vec2 abs(Vec2 a) {
        return new Vec2(MathUtils.abs(a.x), MathUtils.abs(a.y));
    }

    public static final void absToOut(Vec2 a, Vec2 out) {
        out.x = MathUtils.abs(a.x);
        out.y = MathUtils.abs(a.y);
    }

    public static final float dot(Vec2 a, Vec2 b) {
        return (a.x * b.x) + (a.y * b.y);
    }

    public static final float cross(Vec2 a, Vec2 b) {
        return (a.x * b.y) - (a.y * b.x);
    }

    public static final Vec2 cross(Vec2 a, float s) {
        return new Vec2(a.y * s, (-s) * a.x);
    }

    public static final void crossToOut(Vec2 a, float s, Vec2 out) {
        float tempy = (-s) * a.x;
        out.x = a.y * s;
        out.y = tempy;
    }

    public static final void crossToOutUnsafe(Vec2 a, float s, Vec2 out) {
        if (!$assertionsDisabled && out == a) {
            throw new AssertionError();
        }
        out.x = a.y * s;
        out.y = (-s) * a.x;
    }

    public static final Vec2 cross(float s, Vec2 a) {
        return new Vec2((-s) * a.y, a.x * s);
    }

    public static final void crossToOut(float s, Vec2 a, Vec2 out) {
        float tempY = s * a.x;
        out.x = (-s) * a.y;
        out.y = tempY;
    }

    public static final void crossToOutUnsafe(float s, Vec2 a, Vec2 out) {
        if (!$assertionsDisabled && out == a) {
            throw new AssertionError();
        }
        out.x = (-s) * a.y;
        out.y = a.x * s;
    }

    public static final void negateToOut(Vec2 a, Vec2 out) {
        out.x = -a.x;
        out.y = -a.y;
    }

    public static final Vec2 min(Vec2 a, Vec2 b) {
        return new Vec2(a.x < b.x ? a.x : b.x, a.y < b.y ? a.y : b.y);
    }

    public static final Vec2 max(Vec2 a, Vec2 b) {
        return new Vec2(a.x > b.x ? a.x : b.x, a.y > b.y ? a.y : b.y);
    }

    public static final void minToOut(Vec2 a, Vec2 b, Vec2 out) {
        out.x = a.x < b.x ? a.x : b.x;
        out.y = a.y < b.y ? a.y : b.y;
    }

    public static final void maxToOut(Vec2 a, Vec2 b, Vec2 out) {
        out.x = a.x > b.x ? a.x : b.x;
        out.y = a.y > b.y ? a.y : b.y;
    }

    public int hashCode() {
        int result = Float.floatToIntBits(this.x) + 31;
        return (result * 31) + Float.floatToIntBits(this.y);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Vec2 other = (Vec2) obj;
            return Float.floatToIntBits(this.x) == Float.floatToIntBits(other.x) && Float.floatToIntBits(this.y) == Float.floatToIntBits(other.y);
        }
        return false;
    }
}
