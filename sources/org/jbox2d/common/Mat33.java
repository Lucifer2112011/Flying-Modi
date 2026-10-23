package org.jbox2d.common;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class Mat33 implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final Mat33 IDENTITY;
    private static final long serialVersionUID = 2;
    public final Vec3 ex;
    public final Vec3 ey;
    public final Vec3 ez;

    static {
        $assertionsDisabled = !Mat33.class.desiredAssertionStatus();
        IDENTITY = new Mat33(new Vec3(1.0f, 0.0f, 0.0f), new Vec3(0.0f, 1.0f, 0.0f), new Vec3(0.0f, 0.0f, 1.0f));
    }

    public Mat33() {
        this.ex = new Vec3();
        this.ey = new Vec3();
        this.ez = new Vec3();
    }

    public Mat33(Vec3 argCol1, Vec3 argCol2, Vec3 argCol3) {
        this.ex = argCol1.clone();
        this.ey = argCol2.clone();
        this.ez = argCol3.clone();
    }

    public void setZero() {
        this.ex.setZero();
        this.ey.setZero();
        this.ez.setZero();
    }

    public static final Vec3 mul(Mat33 A, Vec3 v) {
        return new Vec3((v.x * A.ex.x) + (v.y * A.ey.x) + v.z + A.ez.x, (v.x * A.ex.y) + (v.y * A.ey.y) + (v.z * A.ez.y), (v.x * A.ex.z) + (v.y * A.ey.z) + (v.z * A.ez.z));
    }

    public static final Vec2 mul22(Mat33 A, Vec2 v) {
        return new Vec2((A.ex.x * v.x) + (A.ey.x * v.y), (A.ex.y * v.x) + (A.ey.y * v.y));
    }

    public static final void mul22ToOut(Mat33 A, Vec2 v, Vec2 out) {
        float tempx = (A.ex.x * v.x) + (A.ey.x * v.y);
        out.y = (A.ex.y * v.x) + (A.ey.y * v.y);
        out.x = tempx;
    }

    public static final void mul22ToOutUnsafe(Mat33 A, Vec2 v, Vec2 out) {
        if (!$assertionsDisabled && v == out) {
            throw new AssertionError();
        }
        out.y = (A.ex.y * v.x) + (A.ey.y * v.y);
        out.x = (A.ex.x * v.x) + (A.ey.x * v.y);
    }

    public static final void mulToOut(Mat33 A, Vec3 v, Vec3 out) {
        float tempy = (v.x * A.ex.y) + (v.y * A.ey.y) + (v.z * A.ez.y);
        float tempz = (v.x * A.ex.z) + (v.y * A.ey.z) + (v.z * A.ez.z);
        out.x = (v.x * A.ex.x) + (v.y * A.ey.x) + (v.z * A.ez.x);
        out.y = tempy;
        out.z = tempz;
    }

    public static final void mulToOutUnsafe(Mat33 A, Vec3 v, Vec3 out) {
        if (!$assertionsDisabled && out == v) {
            throw new AssertionError();
        }
        out.x = (v.x * A.ex.x) + (v.y * A.ey.x) + (v.z * A.ez.x);
        out.y = (v.x * A.ex.y) + (v.y * A.ey.y) + (v.z * A.ez.y);
        out.z = (v.x * A.ex.z) + (v.y * A.ey.z) + (v.z * A.ez.z);
    }

    public final Vec2 solve22(Vec2 b) {
        Vec2 x = new Vec2();
        solve22ToOut(b, x);
        return x;
    }

    public final void solve22ToOut(Vec2 b, Vec2 out) {
        float a11 = this.ex.x;
        float a12 = this.ey.x;
        float a21 = this.ex.y;
        float a22 = this.ey.y;
        float det = (a11 * a22) - (a12 * a21);
        if (det != 0.0f) {
            det = 1.0f / det;
        }
        out.x = ((b.x * a22) - (b.y * a12)) * det;
        out.y = ((b.y * a11) - (b.x * a21)) * det;
    }

    public final Vec3 solve33(Vec3 b) {
        Vec3 x = new Vec3();
        solve33ToOut(b, x);
        return x;
    }

    public final void solve33ToOut(Vec3 b, Vec3 out) {
        if (!$assertionsDisabled && b == out) {
            throw new AssertionError();
        }
        Vec3.crossToOutUnsafe(this.ey, this.ez, out);
        float det = Vec3.dot(this.ex, out);
        if (det != 0.0f) {
            det = 1.0f / det;
        }
        Vec3.crossToOutUnsafe(this.ey, this.ez, out);
        float x = det * Vec3.dot(b, out);
        Vec3.crossToOutUnsafe(b, this.ez, out);
        float y = det * Vec3.dot(this.ex, out);
        Vec3.crossToOutUnsafe(this.ey, b, out);
        float z = det * Vec3.dot(this.ex, out);
        out.x = x;
        out.y = y;
        out.z = z;
    }

    public void getInverse22(Mat33 M) {
        float a = this.ex.x;
        float b = this.ey.x;
        float c = this.ex.y;
        float d = this.ey.y;
        float det = (a * d) - (b * c);
        if (det != 0.0f) {
            det = 1.0f / det;
        }
        M.ex.x = det * d;
        M.ey.x = (-det) * b;
        M.ex.z = 0.0f;
        M.ex.y = (-det) * c;
        M.ey.y = det * a;
        M.ey.z = 0.0f;
        M.ez.x = 0.0f;
        M.ez.y = 0.0f;
        M.ez.z = 0.0f;
    }

    public void getSymInverse33(Mat33 M) {
        float bx = (this.ey.y * this.ez.z) - (this.ey.z * this.ez.y);
        float by = (this.ey.z * this.ez.x) - (this.ey.x * this.ez.z);
        float bz = (this.ey.x * this.ez.y) - (this.ey.y * this.ez.x);
        float det = (this.ex.x * bx) + (this.ex.y * by) + (this.ex.z * bz);
        if (det != 0.0f) {
            det = 1.0f / det;
        }
        float a11 = this.ex.x;
        float a12 = this.ey.x;
        float a13 = this.ez.x;
        float a22 = this.ey.y;
        float a23 = this.ez.y;
        float a33 = this.ez.z;
        M.ex.x = ((a22 * a33) - (a23 * a23)) * det;
        M.ex.y = ((a13 * a23) - (a12 * a33)) * det;
        M.ex.z = ((a12 * a23) - (a13 * a22)) * det;
        M.ey.x = M.ex.y;
        M.ey.y = ((a11 * a33) - (a13 * a13)) * det;
        M.ey.z = ((a13 * a12) - (a11 * a23)) * det;
        M.ez.x = M.ex.z;
        M.ez.y = M.ey.z;
        M.ez.z = ((a11 * a22) - (a12 * a12)) * det;
    }

    public int hashCode() {
        int result = (this.ex == null ? 0 : this.ex.hashCode()) + 31;
        return (((result * 31) + (this.ey == null ? 0 : this.ey.hashCode())) * 31) + (this.ez != null ? this.ez.hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Mat33 other = (Mat33) obj;
            if (this.ex == null) {
                if (other.ex != null) {
                    return false;
                }
            } else if (!this.ex.equals(other.ex)) {
                return false;
            }
            if (this.ey == null) {
                if (other.ey != null) {
                    return false;
                }
            } else if (!this.ey.equals(other.ey)) {
                return false;
            }
            return this.ez == null ? other.ez == null : this.ez.equals(other.ez);
        }
        return false;
    }
}
