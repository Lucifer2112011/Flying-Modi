package org.jbox2d.common;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class Transform implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static Vec2 pool = null;
    private static final long serialVersionUID = 1;
    public final Vec2 p;
    public final Rot q;

    static {
        $assertionsDisabled = !Transform.class.desiredAssertionStatus();
        pool = new Vec2();
    }

    public Transform() {
        this.p = new Vec2();
        this.q = new Rot();
    }

    public Transform(Transform xf) {
        this.p = xf.p.clone();
        this.q = xf.q.clone();
    }

    public Transform(Vec2 _position, Rot _R) {
        this.p = _position.clone();
        this.q = _R.clone();
    }

    public final Transform set(Transform xf) {
        this.p.set(xf.p);
        this.q.set(xf.q);
        return this;
    }

    public final void set(Vec2 p, float angle) {
        this.p.set(p);
        this.q.set(angle);
    }

    public final void setIdentity() {
        this.p.setZero();
        this.q.setIdentity();
    }

    public static final Vec2 mul(Transform T, Vec2 v) {
        return new Vec2(((T.q.c * v.x) - (T.q.s * v.y)) + T.p.x, (T.q.s * v.x) + (T.q.c * v.y) + T.p.y);
    }

    public static final void mulToOut(Transform T, Vec2 v, Vec2 out) {
        float tempy = (T.q.s * v.x) + (T.q.c * v.y) + T.p.y;
        out.x = ((T.q.c * v.x) - (T.q.s * v.y)) + T.p.x;
        out.y = tempy;
    }

    public static final void mulToOutUnsafe(Transform T, Vec2 v, Vec2 out) {
        if (!$assertionsDisabled && v == out) {
            throw new AssertionError();
        }
        out.x = ((T.q.c * v.x) - (T.q.s * v.y)) + T.p.x;
        out.y = (T.q.s * v.x) + (T.q.c * v.y) + T.p.y;
    }

    public static final Vec2 mulTrans(Transform T, Vec2 v) {
        float px = v.x - T.p.x;
        float py = v.y - T.p.y;
        return new Vec2((T.q.c * px) + (T.q.s * py), ((-T.q.s) * px) + (T.q.c * py));
    }

    public static final void mulTransToOut(Transform T, Vec2 v, Vec2 out) {
        float px = v.x - T.p.x;
        float py = v.y - T.p.y;
        float tempy = ((-T.q.s) * px) + (T.q.c * py);
        out.x = (T.q.c * px) + (T.q.s * py);
        out.y = tempy;
    }

    public static final void mulTransToOutUnsafe(Transform T, Vec2 v, Vec2 out) {
        if (!$assertionsDisabled && v == out) {
            throw new AssertionError();
        }
        float px = v.x - T.p.x;
        float py = v.y - T.p.y;
        out.x = (T.q.c * px) + (T.q.s * py);
        out.y = ((-T.q.s) * px) + (T.q.c * py);
    }

    public static final Transform mul(Transform A, Transform B) {
        Transform C = new Transform();
        Rot.mulUnsafe(A.q, B.q, C.q);
        Rot.mulToOutUnsafe(A.q, B.p, C.p);
        C.p.addLocal(A.p);
        return C;
    }

    public static final void mulToOut(Transform A, Transform B, Transform out) {
        if (!$assertionsDisabled && out == A) {
            throw new AssertionError();
        }
        Rot.mul(A.q, B.q, out.q);
        Rot.mulToOut(A.q, B.p, out.p);
        out.p.addLocal(A.p);
    }

    public static final void mulToOutUnsafe(Transform A, Transform B, Transform out) {
        if (!$assertionsDisabled && out == B) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && out == A) {
            throw new AssertionError();
        }
        Rot.mulUnsafe(A.q, B.q, out.q);
        Rot.mulToOutUnsafe(A.q, B.p, out.p);
        out.p.addLocal(A.p);
    }

    public static final Transform mulTrans(Transform A, Transform B) {
        Transform C = new Transform();
        Rot.mulTransUnsafe(A.q, B.q, C.q);
        pool.set(B.p).subLocal(A.p);
        Rot.mulTransUnsafe(A.q, pool, C.p);
        return C;
    }

    public static final void mulTransToOut(Transform A, Transform B, Transform out) {
        if (!$assertionsDisabled && out == A) {
            throw new AssertionError();
        }
        Rot.mulTrans(A.q, B.q, out.q);
        pool.set(B.p).subLocal(A.p);
        Rot.mulTrans(A.q, pool, out.p);
    }

    public static final void mulTransToOutUnsafe(Transform A, Transform B, Transform out) {
        if (!$assertionsDisabled && out == A) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && out == B) {
            throw new AssertionError();
        }
        Rot.mulTransUnsafe(A.q, B.q, out.q);
        pool.set(B.p).subLocal(A.p);
        Rot.mulTransUnsafe(A.q, pool, out.p);
    }

    public final String toString() {
        String s = "XForm:\nPosition: " + this.p + "\n";
        return s + "R: \n" + this.q + "\n";
    }
}
