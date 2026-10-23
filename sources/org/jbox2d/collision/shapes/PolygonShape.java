package org.jbox2d.collision.shapes;

import org.jbox2d.collision.AABB;
import org.jbox2d.collision.RayCastInput;
import org.jbox2d.collision.RayCastOutput;
import org.jbox2d.common.MathUtils;
import org.jbox2d.common.Rot;
import org.jbox2d.common.Transform;
import org.jbox2d.common.Vec2;
import org.jbox2d.pooling.arrays.IntArray;
import org.jbox2d.pooling.arrays.Vec2Array;

/* JADX INFO: loaded from: classes2.dex */
public class PolygonShape extends Shape {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final boolean m_debug = false;
    public final Vec2 m_centroid;
    public int m_count;
    public final Vec2[] m_normals;
    public final Vec2[] m_vertices;
    private final Vec2 pool1;
    private final Vec2 pool2;
    private final Vec2 pool3;
    private final Vec2 pool4;
    private Transform poolt1;

    static {
        $assertionsDisabled = !PolygonShape.class.desiredAssertionStatus();
    }

    public PolygonShape() {
        super(ShapeType.POLYGON);
        this.m_centroid = new Vec2();
        this.pool1 = new Vec2();
        this.pool2 = new Vec2();
        this.pool3 = new Vec2();
        this.pool4 = new Vec2();
        this.poolt1 = new Transform();
        this.m_count = 0;
        this.m_vertices = new Vec2[8];
        for (int i = 0; i < this.m_vertices.length; i++) {
            this.m_vertices[i] = new Vec2();
        }
        this.m_normals = new Vec2[8];
        for (int i2 = 0; i2 < this.m_normals.length; i2++) {
            this.m_normals[i2] = new Vec2();
        }
        setRadius(0.01f);
        this.m_centroid.setZero();
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public final Shape clone() {
        PolygonShape shape = new PolygonShape();
        shape.m_centroid.set(this.m_centroid);
        for (int i = 0; i < shape.m_normals.length; i++) {
            shape.m_normals[i].set(this.m_normals[i]);
            shape.m_vertices[i].set(this.m_vertices[i]);
        }
        shape.setRadius(getRadius());
        shape.m_count = this.m_count;
        return shape;
    }

    public final void set(Vec2[] vertices, int count) {
        set(vertices, count, null, null);
    }

    public final void set(Vec2[] verts, int num, Vec2Array vecPool, IntArray intPool) {
        int ie;
        if (!$assertionsDisabled && (3 > num || num > 8)) {
            throw new AssertionError();
        }
        if (num < 3) {
            setAsBox(1.0f, 1.0f);
            return;
        }
        int n = MathUtils.min(num, 8);
        Vec2[] ps = vecPool != null ? vecPool.get(n) : new Vec2[n];
        for (int i = 0; i < n; i++) {
            ps[i] = verts[i];
        }
        int i0 = 0;
        float x0 = ps[0].x;
        for (int i2 = 1; i2 < num; i2++) {
            float x = ps[i2].x;
            if (x > x0 || (x == x0 && ps[i2].y < ps[i0].y)) {
                i0 = i2;
                x0 = x;
            }
        }
        int[] hull = intPool != null ? intPool.get(8) : new int[8];
        int m = 0;
        int ih = i0;
        do {
            hull[m] = ih;
            ie = 0;
            for (int j = 1; j < n; j++) {
                if (ie == ih) {
                    ie = j;
                } else {
                    Vec2 r = this.pool1.set(ps[ie]).subLocal(ps[hull[m]]);
                    Vec2 v = this.pool2.set(ps[j]).subLocal(ps[hull[m]]);
                    float c = Vec2.cross(r, v);
                    if (c < 0.0f) {
                        ie = j;
                    }
                    if (c == 0.0f && v.lengthSquared() > r.lengthSquared()) {
                        ie = j;
                    }
                }
            }
            m++;
            ih = ie;
        } while (ie != i0);
        this.m_count = m;
        for (int i3 = 0; i3 < this.m_count; i3++) {
            if (this.m_vertices[i3] == null) {
                this.m_vertices[i3] = new Vec2();
            }
            this.m_vertices[i3].set(ps[hull[i3]]);
        }
        Vec2 edge = this.pool1;
        for (int i4 = 0; i4 < this.m_count; i4++) {
            int i1 = i4;
            int i22 = i4 + 1 < this.m_count ? i4 + 1 : 0;
            edge.set(this.m_vertices[i22]).subLocal(this.m_vertices[i1]);
            if (!$assertionsDisabled && edge.lengthSquared() <= 1.4210855E-14f) {
                throw new AssertionError();
            }
            Vec2.crossToOutUnsafe(edge, 1.0f, this.m_normals[i4]);
            this.m_normals[i4].normalize();
        }
        computeCentroidToOut(this.m_vertices, this.m_count, this.m_centroid);
    }

    public final void setAsBox(float hx, float hy) {
        this.m_count = 4;
        this.m_vertices[0].set(-hx, -hy);
        this.m_vertices[1].set(hx, -hy);
        this.m_vertices[2].set(hx, hy);
        this.m_vertices[3].set(-hx, hy);
        this.m_normals[0].set(0.0f, -1.0f);
        this.m_normals[1].set(1.0f, 0.0f);
        this.m_normals[2].set(0.0f, 1.0f);
        this.m_normals[3].set(-1.0f, 0.0f);
        this.m_centroid.setZero();
    }

    public final void setAsBox(float hx, float hy, Vec2 center, float angle) {
        this.m_count = 4;
        this.m_vertices[0].set(-hx, -hy);
        this.m_vertices[1].set(hx, -hy);
        this.m_vertices[2].set(hx, hy);
        this.m_vertices[3].set(-hx, hy);
        this.m_normals[0].set(0.0f, -1.0f);
        this.m_normals[1].set(1.0f, 0.0f);
        this.m_normals[2].set(0.0f, 1.0f);
        this.m_normals[3].set(-1.0f, 0.0f);
        this.m_centroid.set(center);
        Transform xf = this.poolt1;
        xf.p.set(center);
        xf.q.set(angle);
        for (int i = 0; i < this.m_count; i++) {
            Transform.mulToOut(xf, this.m_vertices[i], this.m_vertices[i]);
            Rot.mulToOut(xf.q, this.m_normals[i], this.m_normals[i]);
        }
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public int getChildCount() {
        return 1;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public final boolean testPoint(Transform xf, Vec2 p) {
        Rot xfq = xf.q;
        float tempx = p.x - xf.p.x;
        float tempy = p.y - xf.p.y;
        float pLocalx = (xfq.c * tempx) + (xfq.s * tempy);
        float pLocaly = ((-xfq.s) * tempx) + (xfq.c * tempy);
        for (int i = 0; i < this.m_count; i++) {
            Vec2 vertex = this.m_vertices[i];
            Vec2 normal = this.m_normals[i];
            float dot = (normal.x * (pLocalx - vertex.x)) + (normal.y * (pLocaly - vertex.y));
            if (dot > 0.0f) {
                return false;
            }
        }
        return true;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public final void computeAABB(AABB aabb, Transform xf, int childIndex) {
        Vec2 lower = aabb.lowerBound;
        Vec2 upper = aabb.upperBound;
        Vec2 v1 = this.m_vertices[0];
        Rot xfq = xf.q;
        Vec2 xfp = xf.p;
        lower.x = ((xfq.c * v1.x) - (xfq.s * v1.y)) + xfp.x;
        lower.y = (xfq.s * v1.x) + (xfq.c * v1.y) + xfp.y;
        upper.x = lower.x;
        upper.y = lower.y;
        for (int i = 1; i < this.m_count; i++) {
            Vec2 v2 = this.m_vertices[i];
            float vx = ((xfq.c * v2.x) - (xfq.s * v2.y)) + xfp.x;
            float vy = (xfq.s * v2.x) + (xfq.c * v2.y) + xfp.y;
            lower.x = lower.x < vx ? lower.x : vx;
            lower.y = lower.y < vy ? lower.y : vy;
            if (upper.x > vx) {
                vx = upper.x;
            }
            upper.x = vx;
            if (upper.y > vy) {
                vy = upper.y;
            }
            upper.y = vy;
        }
        lower.x -= this.m_radius;
        lower.y -= this.m_radius;
        upper.x += this.m_radius;
        upper.y += this.m_radius;
    }

    public final int getVertexCount() {
        return this.m_count;
    }

    public final Vec2 getVertex(int index) {
        if ($assertionsDisabled || (index >= 0 && index < this.m_count)) {
            return this.m_vertices[index];
        }
        throw new AssertionError();
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public final boolean raycast(RayCastOutput output, RayCastInput input, Transform xf, int childIndex) {
        Rot xfq = xf.q;
        Vec2 xfp = xf.p;
        float tempx = input.p1.x - xfp.x;
        float tempy = input.p1.y - xfp.y;
        float p1x = (xfq.c * tempx) + (xfq.s * tempy);
        float p1y = ((-xfq.s) * tempx) + (xfq.c * tempy);
        float tempx2 = input.p2.x - xfp.x;
        float tempy2 = input.p2.y - xfp.y;
        float p2x = (xfq.c * tempx2) + (xfq.s * tempy2);
        float p2y = ((-xfq.s) * tempx2) + (xfq.c * tempy2);
        float dx = p2x - p1x;
        float dy = p2y - p1y;
        float lower = 0.0f;
        float upper = input.maxFraction;
        int index = -1;
        for (int i = 0; i < this.m_count; i++) {
            Vec2 normal = this.m_normals[i];
            Vec2 vertex = this.m_vertices[i];
            float tempxn = vertex.x - p1x;
            float tempyn = vertex.y - p1y;
            float numerator = (normal.x * tempxn) + (normal.y * tempyn);
            float denominator = (normal.x * dx) + (normal.y * dy);
            if (denominator == 0.0f) {
                if (numerator < 0.0f) {
                    return false;
                }
            } else if (denominator < 0.0f && numerator < lower * denominator) {
                lower = numerator / denominator;
                index = i;
            } else if (denominator > 0.0f && numerator < upper * denominator) {
                upper = numerator / denominator;
            }
            if (upper < lower) {
                return false;
            }
        }
        if (!$assertionsDisabled && (0.0f > lower || lower > input.maxFraction)) {
            throw new AssertionError();
        }
        if (index >= 0) {
            output.fraction = lower;
            Vec2 normal2 = this.m_normals[index];
            Vec2 out = output.normal;
            out.x = (xfq.c * normal2.x) - (xfq.s * normal2.y);
            out.y = (xfq.s * normal2.x) + (xfq.c * normal2.y);
            return true;
        }
        return false;
    }

    public final void computeCentroidToOut(Vec2[] vs, int count, Vec2 out) {
        if (!$assertionsDisabled && count < 3) {
            throw new AssertionError();
        }
        out.set(0.0f, 0.0f);
        float area = 0.0f;
        Vec2 pRef = this.pool1;
        pRef.setZero();
        Vec2 e1 = this.pool2;
        Vec2 e2 = this.pool3;
        for (int i = 0; i < count; i++) {
            Vec2 p2 = vs[i];
            Vec2 p3 = i + 1 < count ? vs[i + 1] : vs[0];
            e1.set(p2).subLocal(pRef);
            e2.set(p3).subLocal(pRef);
            float D = Vec2.cross(e1, e2);
            float triangleArea = 0.5f * D;
            area += triangleArea;
            e1.set(pRef).addLocal(p2).addLocal(p3).mulLocal(0.33333334f * triangleArea);
            out.addLocal(e1);
        }
        if (!$assertionsDisabled && area <= 1.1920929E-7f) {
            throw new AssertionError();
        }
        out.mulLocal(1.0f / area);
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public void computeMass(MassData massData, float density) {
        if (!$assertionsDisabled && this.m_count < 3) {
            throw new AssertionError();
        }
        Vec2 center = this.pool1;
        center.setZero();
        float area = 0.0f;
        float I = 0.0f;
        Vec2 s = this.pool2;
        s.setZero();
        for (int i = 0; i < this.m_count; i++) {
            s.addLocal(this.m_vertices[i]);
        }
        s.mulLocal(1.0f / this.m_count);
        Vec2 e1 = this.pool3;
        Vec2 e2 = this.pool4;
        for (int i2 = 0; i2 < this.m_count; i2++) {
            e1.set(this.m_vertices[i2]).subLocal(s);
            e2.set(s).negateLocal().addLocal(i2 + 1 < this.m_count ? this.m_vertices[i2 + 1] : this.m_vertices[0]);
            float D = Vec2.cross(e1, e2);
            float triangleArea = 0.5f * D;
            area += triangleArea;
            center.x += 0.33333334f * triangleArea * (e1.x + e2.x);
            center.y += 0.33333334f * triangleArea * (e1.y + e2.y);
            float ex1 = e1.x;
            float ey1 = e1.y;
            float ex2 = e2.x;
            float ey2 = e2.y;
            float intx2 = (ex1 * ex1) + (ex2 * ex1) + (ex2 * ex2);
            float inty2 = (ey1 * ey1) + (ey2 * ey1) + (ey2 * ey2);
            I += 0.083333336f * D * (intx2 + inty2);
        }
        massData.mass = density * area;
        if (!$assertionsDisabled && area <= 1.1920929E-7f) {
            throw new AssertionError();
        }
        center.mulLocal(1.0f / area);
        massData.center.set(center).addLocal(s);
        massData.I = I * density;
        massData.I += massData.mass * Vec2.dot(massData.center, massData.center);
    }

    public boolean validate() {
        int i = 0;
        while (i < this.m_count) {
            int i1 = i;
            int i2 = i < this.m_count + (-1) ? i1 + 1 : 0;
            Vec2 p = this.m_vertices[i1];
            Vec2 e = this.pool1.set(this.m_vertices[i2]).subLocal(p);
            for (int j = 0; j < this.m_count; j++) {
                if (j != i1 && j != i2) {
                    Vec2 v = this.pool2.set(this.m_vertices[j]).subLocal(p);
                    float c = Vec2.cross(e, v);
                    if (c < 0.0f) {
                        return false;
                    }
                }
            }
            i++;
        }
        return true;
    }

    public Vec2[] getVertices() {
        return this.m_vertices;
    }

    public Vec2[] getNormals() {
        return this.m_normals;
    }

    public Vec2 centroid(Transform xf) {
        return Transform.mul(xf, this.m_centroid);
    }

    public Vec2 centroidToOut(Transform xf, Vec2 out) {
        Transform.mulToOutUnsafe(xf, this.m_centroid, out);
        return out;
    }
}
