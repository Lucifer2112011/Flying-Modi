package org.jbox2d.common;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class Rot implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final long serialVersionUID = 1;
    public float c;
    public float s;

    static {
        $assertionsDisabled = !Rot.class.desiredAssertionStatus();
    }

    public Rot() {
        setIdentity();
    }

    public Rot(float angle) {
        set(angle);
    }

    public float getSin() {
        return this.s;
    }

    public String toString() {
        return "Rot(s:" + this.s + ", c:" + this.c + ")";
    }

    public float getCos() {
        return this.c;
    }

    public Rot set(float angle) {
        this.s = MathUtils.sin(angle);
        this.c = MathUtils.cos(angle);
        return this;
    }

    public Rot set(Rot other) {
        this.s = other.s;
        this.c = other.c;
        return this;
    }

    public Rot setIdentity() {
        this.s = 0.0f;
        this.c = 1.0f;
        return this;
    }

    public float getAngle() {
        return MathUtils.atan2(this.s, this.c);
    }

    public void getXAxis(Vec2 xAxis) {
        xAxis.set(this.c, this.s);
    }

    public void getYAxis(Vec2 yAxis) {
        yAxis.set(-this.s, this.c);
    }

    public Rot clone() {
        Rot copy = new Rot();
        copy.s = this.s;
        copy.c = this.c;
        return copy;
    }

    public static final void mul(Rot q, Rot r, Rot out) {
        float tempc = (q.c * r.c) - (q.s * r.s);
        out.s = (q.s * r.c) + (q.c * r.s);
        out.c = tempc;
    }

    public static final void mulUnsafe(Rot q, Rot r, Rot out) {
        if (!$assertionsDisabled && r == out) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && q == out) {
            throw new AssertionError();
        }
        out.s = (q.s * r.c) + (q.c * r.s);
        out.c = (q.c * r.c) - (q.s * r.s);
    }

    public static final void mulTrans(Rot q, Rot r, Rot out) {
        float tempc = (q.c * r.c) + (q.s * r.s);
        out.s = (q.c * r.s) - (q.s * r.c);
        out.c = tempc;
    }

    public static final void mulTransUnsafe(Rot q, Rot r, Rot out) {
        out.s = (q.c * r.s) - (q.s * r.c);
        out.c = (q.c * r.c) + (q.s * r.s);
    }

    public static final void mulToOut(Rot q, Vec2 v, Vec2 out) {
        float tempy = (q.s * v.x) + (q.c * v.y);
        out.x = (q.c * v.x) - (q.s * v.y);
        out.y = tempy;
    }

    public static final void mulToOutUnsafe(Rot q, Vec2 v, Vec2 out) {
        out.x = (q.c * v.x) - (q.s * v.y);
        out.y = (q.s * v.x) + (q.c * v.y);
    }

    public static final void mulTrans(Rot q, Vec2 v, Vec2 out) {
        float tempy = ((-q.s) * v.x) + (q.c * v.y);
        out.x = (q.c * v.x) + (q.s * v.y);
        out.y = tempy;
    }

    public static final void mulTransUnsafe(Rot q, Vec2 v, Vec2 out) {
        out.x = (q.c * v.x) + (q.s * v.y);
        out.y = ((-q.s) * v.x) + (q.c * v.y);
    }
}
