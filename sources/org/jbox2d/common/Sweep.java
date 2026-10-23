package org.jbox2d.common;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class Sweep implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final long serialVersionUID = 1;
    public float a;
    public float a0;
    public float alpha0;
    public final Vec2 localCenter = new Vec2();
    public final Vec2 c0 = new Vec2();
    public final Vec2 c = new Vec2();

    static {
        $assertionsDisabled = !Sweep.class.desiredAssertionStatus();
    }

    public String toString() {
        String s = "Sweep:\nlocalCenter: " + this.localCenter + "\n";
        return (s + "c0: " + this.c0 + ", c: " + this.c + "\n") + "a0: " + this.a0 + ", a: " + this.a + "\n";
    }

    public final void normalize() {
        float d = 6.2831855f * MathUtils.floor(this.a0 / 6.2831855f);
        this.a0 -= d;
        this.a -= d;
    }

    public final Sweep set(Sweep argCloneFrom) {
        this.localCenter.set(argCloneFrom.localCenter);
        this.c0.set(argCloneFrom.c0);
        this.c.set(argCloneFrom.c);
        this.a0 = argCloneFrom.a0;
        this.a = argCloneFrom.a;
        return this;
    }

    public final void getTransform(Transform xf, float beta) {
        if (!$assertionsDisabled && xf == null) {
            throw new AssertionError();
        }
        xf.p.x = ((1.0f - beta) * this.c0.x) + (this.c.x * beta);
        xf.p.y = ((1.0f - beta) * this.c0.y) + (this.c.y * beta);
        xf.q.set(((1.0f - beta) * this.a0) + (this.a * beta));
        Rot q = xf.q;
        xf.p.x -= (q.c * this.localCenter.x) - (q.s * this.localCenter.y);
        xf.p.y -= (q.s * this.localCenter.x) + (q.c * this.localCenter.y);
    }

    public final void advance(float alpha) {
        this.c0.x = ((1.0f - alpha) * this.c0.x) + (this.c.x * alpha);
        this.c0.y = ((1.0f - alpha) * this.c0.y) + (this.c.y * alpha);
        this.a0 = ((1.0f - alpha) * this.a0) + (this.a * alpha);
    }
}
