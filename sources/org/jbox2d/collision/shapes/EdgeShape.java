package org.jbox2d.collision.shapes;

import org.jbox2d.collision.AABB;
import org.jbox2d.collision.RayCastInput;
import org.jbox2d.collision.RayCastOutput;
import org.jbox2d.common.Rot;
import org.jbox2d.common.Transform;
import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public class EdgeShape extends Shape {
    public boolean m_hasVertex0;
    public boolean m_hasVertex3;
    public final Vec2 m_vertex0;
    public final Vec2 m_vertex1;
    public final Vec2 m_vertex2;
    public final Vec2 m_vertex3;
    private final Vec2 normal;

    public EdgeShape() {
        super(ShapeType.EDGE);
        this.m_vertex1 = new Vec2();
        this.m_vertex2 = new Vec2();
        this.m_vertex0 = new Vec2();
        this.m_vertex3 = new Vec2();
        this.m_hasVertex0 = false;
        this.m_hasVertex3 = false;
        this.normal = new Vec2();
        this.m_radius = 0.01f;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public int getChildCount() {
        return 1;
    }

    public void set(Vec2 v1, Vec2 v2) {
        this.m_vertex1.set(v1);
        this.m_vertex2.set(v2);
        this.m_hasVertex3 = false;
        this.m_hasVertex0 = false;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public boolean testPoint(Transform xf, Vec2 p) {
        return false;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public boolean raycast(RayCastOutput output, RayCastInput input, Transform xf, int childIndex) {
        Vec2 v1 = this.m_vertex1;
        Vec2 v2 = this.m_vertex2;
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
        this.normal.x = v2.y - v1.y;
        this.normal.y = v1.x - v2.x;
        this.normal.normalize();
        float normalx = this.normal.x;
        float normaly = this.normal.y;
        float numerator = (normalx * (v1.x - p1x)) + (normaly * (v1.y - p1y));
        float denominator = (normalx * dx) + (normaly * dy);
        if (denominator == 0.0f) {
            return false;
        }
        float t = numerator / denominator;
        if (t < 0.0f || 1.0f < t) {
            return false;
        }
        float qx = p1x + (t * dx);
        float qy = p1y + (t * dy);
        float rx = v2.x - v1.x;
        float ry = v2.y - v1.y;
        float rr = (rx * rx) + (ry * ry);
        if (rr == 0.0f) {
            return false;
        }
        float s = (((qx - v1.x) * rx) + ((qy - v1.y) * ry)) / rr;
        if (s < 0.0f || 1.0f < s) {
            return false;
        }
        output.fraction = t;
        if (numerator > 0.0f) {
            output.normal.x = -normalx;
            output.normal.y = -normaly;
        } else {
            output.normal.x = normalx;
            output.normal.y = normaly;
        }
        return true;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public void computeAABB(AABB aabb, Transform xf, int childIndex) {
        Vec2 lowerBound = aabb.lowerBound;
        Vec2 upperBound = aabb.upperBound;
        Rot xfq = xf.q;
        float v1x = ((xfq.c * this.m_vertex1.x) - (xfq.s * this.m_vertex1.y)) + xf.p.x;
        float v1y = (xfq.s * this.m_vertex1.x) + (xfq.c * this.m_vertex1.y) + xf.p.y;
        float v2x = ((xfq.c * this.m_vertex2.x) - (xfq.s * this.m_vertex2.y)) + xf.p.x;
        float v2y = (xfq.s * this.m_vertex2.x) + (xfq.c * this.m_vertex2.y) + xf.p.y;
        lowerBound.x = v1x < v2x ? v1x : v2x;
        lowerBound.y = v1y < v2y ? v1y : v2y;
        if (v1x <= v2x) {
            v1x = v2x;
        }
        upperBound.x = v1x;
        if (v1y <= v2y) {
            v1y = v2y;
        }
        upperBound.y = v1y;
        lowerBound.x -= this.m_radius;
        lowerBound.y -= this.m_radius;
        upperBound.x += this.m_radius;
        upperBound.y += this.m_radius;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public void computeMass(MassData massData, float density) {
        massData.mass = 0.0f;
        massData.center.set(this.m_vertex1).addLocal(this.m_vertex2).mulLocal(0.5f);
        massData.I = 0.0f;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public Shape clone() {
        EdgeShape edge = new EdgeShape();
        edge.m_radius = this.m_radius;
        edge.m_hasVertex0 = this.m_hasVertex0;
        edge.m_hasVertex3 = this.m_hasVertex3;
        edge.m_vertex0.set(this.m_vertex0);
        edge.m_vertex1.set(this.m_vertex1);
        edge.m_vertex2.set(this.m_vertex2);
        edge.m_vertex3.set(this.m_vertex3);
        return edge;
    }
}
