package org.jbox2d.common;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class Mat22 implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final long serialVersionUID = 2;
    public final Vec2 ex;
    public final Vec2 ey;

    static {
        $assertionsDisabled = !Mat22.class.desiredAssertionStatus();
    }

    public String toString() {
        String s = "[" + this.ex.x + "," + this.ey.x + "]\n";
        return s + "[" + this.ex.y + "," + this.ey.y + "]";
    }

    public Mat22() {
        this.ex = new Vec2();
        this.ey = new Vec2();
    }

    public Mat22(Vec2 c1, Vec2 c2) {
        this.ex = c1.clone();
        this.ey = c2.clone();
    }

    public Mat22(float exx, float col2x, float exy, float col2y) {
        this.ex = new Vec2(exx, exy);
        this.ey = new Vec2(col2x, col2y);
    }

    public final Mat22 set(Mat22 m) {
        this.ex.x = m.ex.x;
        this.ex.y = m.ex.y;
        this.ey.x = m.ey.x;
        this.ey.y = m.ey.y;
        return this;
    }

    public final Mat22 set(float exx, float col2x, float exy, float col2y) {
        this.ex.x = exx;
        this.ex.y = exy;
        this.ey.x = col2x;
        this.ey.y = col2y;
        return this;
    }

    public final Mat22 clone() {
        return new Mat22(this.ex, this.ey);
    }

    public final void set(float angle) {
        float c = MathUtils.cos(angle);
        float s = MathUtils.sin(angle);
        this.ex.x = c;
        this.ey.x = -s;
        this.ex.y = s;
        this.ey.y = c;
    }

    public final void setIdentity() {
        this.ex.x = 1.0f;
        this.ey.x = 0.0f;
        this.ex.y = 0.0f;
        this.ey.y = 1.0f;
    }

    public final void setZero() {
        this.ex.x = 0.0f;
        this.ey.x = 0.0f;
        this.ex.y = 0.0f;
        this.ey.y = 0.0f;
    }

    public final float getAngle() {
        return MathUtils.atan2(this.ex.y, this.ex.x);
    }

    public final void set(Vec2 c1, Vec2 c2) {
        this.ex.x = c1.x;
        this.ey.x = c2.x;
        this.ex.y = c1.y;
        this.ey.y = c2.y;
    }

    public final Mat22 invert() {
        float a = this.ex.x;
        float b = this.ey.x;
        float c = this.ex.y;
        float d = this.ey.y;
        Mat22 B = new Mat22();
        float det = (a * d) - (b * c);
        if (det != 0.0f) {
            det = 1.0f / det;
        }
        B.ex.x = det * d;
        B.ey.x = (-det) * b;
        B.ex.y = (-det) * c;
        B.ey.y = det * a;
        return B;
    }

    public final Mat22 invertLocal() {
        float a = this.ex.x;
        float b = this.ey.x;
        float c = this.ex.y;
        float d = this.ey.y;
        float det = (a * d) - (b * c);
        if (det != 0.0f) {
            det = 1.0f / det;
        }
        this.ex.x = det * d;
        this.ey.x = (-det) * b;
        this.ex.y = (-det) * c;
        this.ey.y = det * a;
        return this;
    }

    public final void invertToOut(Mat22 out) {
        float a = this.ex.x;
        float b = this.ey.x;
        float c = this.ex.y;
        float d = this.ey.y;
        float det = 1.0f / ((a * d) - (b * c));
        out.ex.x = det * d;
        out.ey.x = (-det) * b;
        out.ex.y = (-det) * c;
        out.ey.y = det * a;
    }

    public final Mat22 abs() {
        return new Mat22(MathUtils.abs(this.ex.x), MathUtils.abs(this.ey.x), MathUtils.abs(this.ex.y), MathUtils.abs(this.ey.y));
    }

    public final void absLocal() {
        this.ex.absLocal();
        this.ey.absLocal();
    }

    public static final Mat22 abs(Mat22 R) {
        return R.abs();
    }

    public static void absToOut(Mat22 R, Mat22 out) {
        out.ex.x = MathUtils.abs(R.ex.x);
        out.ex.y = MathUtils.abs(R.ex.y);
        out.ey.x = MathUtils.abs(R.ey.x);
        out.ey.y = MathUtils.abs(R.ey.y);
    }

    public final Vec2 mul(Vec2 v) {
        return new Vec2((this.ex.x * v.x) + (this.ey.x * v.y), (this.ex.y * v.x) + (this.ey.y * v.y));
    }

    public final void mulToOut(Vec2 v, Vec2 out) {
        float tempy = (this.ex.y * v.x) + (this.ey.y * v.y);
        out.x = (this.ex.x * v.x) + (this.ey.x * v.y);
        out.y = tempy;
    }

    public final void mulToOutUnsafe(Vec2 v, Vec2 out) {
        if (!$assertionsDisabled && v == out) {
            throw new AssertionError();
        }
        out.x = (this.ex.x * v.x) + (this.ey.x * v.y);
        out.y = (this.ex.y * v.x) + (this.ey.y * v.y);
    }

    public final Mat22 mul(Mat22 R) {
        Mat22 C = new Mat22();
        C.ex.x = (this.ex.x * R.ex.x) + (this.ey.x * R.ex.y);
        C.ex.y = (this.ex.y * R.ex.x) + (this.ey.y * R.ex.y);
        C.ey.x = (this.ex.x * R.ey.x) + (this.ey.x * R.ey.y);
        C.ey.y = (this.ex.y * R.ey.x) + (this.ey.y * R.ey.y);
        return C;
    }

    public final Mat22 mulLocal(Mat22 R) {
        mulToOut(R, this);
        return this;
    }

    public final void mulToOut(Mat22 R, Mat22 out) {
        float tempy1 = (this.ex.y * R.ex.x) + (this.ey.y * R.ex.y);
        float tempx1 = (this.ex.x * R.ex.x) + (this.ey.x * R.ex.y);
        out.ex.x = tempx1;
        out.ex.y = tempy1;
        float tempy2 = (this.ex.y * R.ey.x) + (this.ey.y * R.ey.y);
        float tempx2 = (this.ex.x * R.ey.x) + (this.ey.x * R.ey.y);
        out.ey.x = tempx2;
        out.ey.y = tempy2;
    }

    public final void mulToOutUnsafe(Mat22 R, Mat22 out) {
        if (!$assertionsDisabled && out == R) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && out == this) {
            throw new AssertionError();
        }
        out.ex.x = (this.ex.x * R.ex.x) + (this.ey.x * R.ex.y);
        out.ex.y = (this.ex.y * R.ex.x) + (this.ey.y * R.ex.y);
        out.ey.x = (this.ex.x * R.ey.x) + (this.ey.x * R.ey.y);
        out.ey.y = (this.ex.y * R.ey.x) + (this.ey.y * R.ey.y);
    }

    public final Mat22 mulTrans(Mat22 B) {
        Mat22 C = new Mat22();
        C.ex.x = Vec2.dot(this.ex, B.ex);
        C.ex.y = Vec2.dot(this.ey, B.ex);
        C.ey.x = Vec2.dot(this.ex, B.ey);
        C.ey.y = Vec2.dot(this.ey, B.ey);
        return C;
    }

    public final Mat22 mulTransLocal(Mat22 B) {
        mulTransToOut(B, this);
        return this;
    }

    public final void mulTransToOut(Mat22 B, Mat22 out) {
        float x1 = (this.ex.x * B.ex.x) + (this.ex.y * B.ex.y);
        float y1 = (this.ey.x * B.ex.x) + (this.ey.y * B.ex.y);
        float x2 = (this.ex.x * B.ey.x) + (this.ex.y * B.ey.y);
        float y2 = (this.ey.x * B.ey.x) + (this.ey.y * B.ey.y);
        out.ex.x = x1;
        out.ey.x = x2;
        out.ex.y = y1;
        out.ey.y = y2;
    }

    public final void mulTransToOutUnsafe(Mat22 B, Mat22 out) {
        if (!$assertionsDisabled && B == out) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this == out) {
            throw new AssertionError();
        }
        out.ex.x = (this.ex.x * B.ex.x) + (this.ex.y * B.ex.y);
        out.ey.x = (this.ex.x * B.ey.x) + (this.ex.y * B.ey.y);
        out.ex.y = (this.ey.x * B.ex.x) + (this.ey.y * B.ex.y);
        out.ey.y = (this.ey.x * B.ey.x) + (this.ey.y * B.ey.y);
    }

    public final Vec2 mulTrans(Vec2 v) {
        return new Vec2((v.x * this.ex.x) + (v.y * this.ex.y), (v.x * this.ey.x) + (v.y * this.ey.y));
    }

    public final void mulTransToOut(Vec2 v, Vec2 out) {
        float tempx = (v.x * this.ex.x) + (v.y * this.ex.y);
        out.y = (v.x * this.ey.x) + (v.y * this.ey.y);
        out.x = tempx;
    }

    public final Mat22 add(Mat22 B) {
        Mat22 m = new Mat22();
        m.ex.x = this.ex.x + B.ex.x;
        m.ex.y = this.ex.y + B.ex.y;
        m.ey.x = this.ey.x + B.ey.x;
        m.ey.y = this.ey.y + B.ey.y;
        return m;
    }

    public final Mat22 addLocal(Mat22 B) {
        this.ex.x += B.ex.x;
        this.ex.y += B.ex.y;
        this.ey.x += B.ey.x;
        this.ey.y += B.ey.y;
        return this;
    }

    public final Vec2 solve(Vec2 b) {
        float a11 = this.ex.x;
        float a12 = this.ey.x;
        float a21 = this.ex.y;
        float a22 = this.ey.y;
        float det = (a11 * a22) - (a12 * a21);
        if (det != 0.0f) {
            det = 1.0f / det;
        }
        Vec2 x = new Vec2(((b.x * a22) - (b.y * a12)) * det, ((b.y * a11) - (b.x * a21)) * det);
        return x;
    }

    public final void solveToOut(Vec2 b, Vec2 out) {
        float a11 = this.ex.x;
        float a12 = this.ey.x;
        float a21 = this.ex.y;
        float a22 = this.ey.y;
        float det = (a11 * a22) - (a12 * a21);
        if (det != 0.0f) {
            det = 1.0f / det;
        }
        float tempy = det * ((b.y * a11) - (b.x * a21));
        out.x = ((b.x * a22) - (b.y * a12)) * det;
        out.y = tempy;
    }

    public static final Vec2 mul(Mat22 R, Vec2 v) {
        return new Vec2((R.ex.x * v.x) + (R.ey.x * v.y), (R.ex.y * v.x) + (R.ey.y * v.y));
    }

    public static final void mulToOut(Mat22 R, Vec2 v, Vec2 out) {
        float tempy = (R.ex.y * v.x) + (R.ey.y * v.y);
        out.x = (R.ex.x * v.x) + (R.ey.x * v.y);
        out.y = tempy;
    }

    public static final void mulToOutUnsafe(Mat22 R, Vec2 v, Vec2 out) {
        if (!$assertionsDisabled && v == out) {
            throw new AssertionError();
        }
        out.x = (R.ex.x * v.x) + (R.ey.x * v.y);
        out.y = (R.ex.y * v.x) + (R.ey.y * v.y);
    }

    public static final Mat22 mul(Mat22 A, Mat22 B) {
        Mat22 C = new Mat22();
        C.ex.x = (A.ex.x * B.ex.x) + (A.ey.x * B.ex.y);
        C.ex.y = (A.ex.y * B.ex.x) + (A.ey.y * B.ex.y);
        C.ey.x = (A.ex.x * B.ey.x) + (A.ey.x * B.ey.y);
        C.ey.y = (A.ex.y * B.ey.x) + (A.ey.y * B.ey.y);
        return C;
    }

    public static final void mulToOut(Mat22 A, Mat22 B, Mat22 out) {
        float tempy1 = (A.ex.y * B.ex.x) + (A.ey.y * B.ex.y);
        float tempx1 = (A.ex.x * B.ex.x) + (A.ey.x * B.ex.y);
        float tempy2 = (A.ex.y * B.ey.x) + (A.ey.y * B.ey.y);
        float tempx2 = (A.ex.x * B.ey.x) + (A.ey.x * B.ey.y);
        out.ex.x = tempx1;
        out.ex.y = tempy1;
        out.ey.x = tempx2;
        out.ey.y = tempy2;
    }

    public static final void mulToOutUnsafe(Mat22 A, Mat22 B, Mat22 out) {
        if (!$assertionsDisabled && out == A) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && out == B) {
            throw new AssertionError();
        }
        out.ex.x = (A.ex.x * B.ex.x) + (A.ey.x * B.ex.y);
        out.ex.y = (A.ex.y * B.ex.x) + (A.ey.y * B.ex.y);
        out.ey.x = (A.ex.x * B.ey.x) + (A.ey.x * B.ey.y);
        out.ey.y = (A.ex.y * B.ey.x) + (A.ey.y * B.ey.y);
    }

    public static final Vec2 mulTrans(Mat22 R, Vec2 v) {
        return new Vec2((v.x * R.ex.x) + (v.y * R.ex.y), (v.x * R.ey.x) + (v.y * R.ey.y));
    }

    public static final void mulTransToOut(Mat22 R, Vec2 v, Vec2 out) {
        float outx = (v.x * R.ex.x) + (v.y * R.ex.y);
        out.y = (v.x * R.ey.x) + (v.y * R.ey.y);
        out.x = outx;
    }

    public static final void mulTransToOutUnsafe(Mat22 R, Vec2 v, Vec2 out) {
        if (!$assertionsDisabled && out == v) {
            throw new AssertionError();
        }
        out.y = (v.x * R.ey.x) + (v.y * R.ey.y);
        out.x = (v.x * R.ex.x) + (v.y * R.ex.y);
    }

    public static final Mat22 mulTrans(Mat22 A, Mat22 B) {
        Mat22 C = new Mat22();
        C.ex.x = (A.ex.x * B.ex.x) + (A.ex.y * B.ex.y);
        C.ex.y = (A.ey.x * B.ex.x) + (A.ey.y * B.ex.y);
        C.ey.x = (A.ex.x * B.ey.x) + (A.ex.y * B.ey.y);
        C.ey.y = (A.ey.x * B.ey.x) + (A.ey.y * B.ey.y);
        return C;
    }

    public static final void mulTransToOut(Mat22 A, Mat22 B, Mat22 out) {
        float x1 = (A.ex.x * B.ex.x) + (A.ex.y * B.ex.y);
        float y1 = (A.ey.x * B.ex.x) + (A.ey.y * B.ex.y);
        float x2 = (A.ex.x * B.ey.x) + (A.ex.y * B.ey.y);
        float y2 = (A.ey.x * B.ey.x) + (A.ey.y * B.ey.y);
        out.ex.x = x1;
        out.ex.y = y1;
        out.ey.x = x2;
        out.ey.y = y2;
    }

    public static final void mulTransToOutUnsafe(Mat22 A, Mat22 B, Mat22 out) {
        if (!$assertionsDisabled && A == out) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && B == out) {
            throw new AssertionError();
        }
        out.ex.x = (A.ex.x * B.ex.x) + (A.ex.y * B.ex.y);
        out.ex.y = (A.ey.x * B.ex.x) + (A.ey.y * B.ex.y);
        out.ey.x = (A.ex.x * B.ey.x) + (A.ex.y * B.ey.y);
        out.ey.y = (A.ey.x * B.ey.x) + (A.ey.y * B.ey.y);
    }

    public static final Mat22 createRotationalTransform(float angle) {
        Mat22 mat = new Mat22();
        float c = MathUtils.cos(angle);
        float s = MathUtils.sin(angle);
        mat.ex.x = c;
        mat.ey.x = -s;
        mat.ex.y = s;
        mat.ey.y = c;
        return mat;
    }

    public static final void createRotationalTransform(float angle, Mat22 out) {
        float c = MathUtils.cos(angle);
        float s = MathUtils.sin(angle);
        out.ex.x = c;
        out.ey.x = -s;
        out.ex.y = s;
        out.ey.y = c;
    }

    public static final Mat22 createScaleTransform(float scale) {
        Mat22 mat = new Mat22();
        mat.ex.x = scale;
        mat.ey.y = scale;
        return mat;
    }

    public static final void createScaleTransform(float scale, Mat22 out) {
        out.ex.x = scale;
        out.ey.y = scale;
    }

    public int hashCode() {
        int result = (this.ex == null ? 0 : this.ex.hashCode()) + 31;
        return (result * 31) + (this.ey != null ? this.ey.hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Mat22 other = (Mat22) obj;
            if (this.ex == null) {
                if (other.ex != null) {
                    return false;
                }
            } else if (!this.ex.equals(other.ex)) {
                return false;
            }
            return this.ey == null ? other.ey == null : this.ey.equals(other.ey);
        }
        return false;
    }
}
