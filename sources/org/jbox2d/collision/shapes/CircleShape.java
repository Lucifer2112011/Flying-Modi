package org.jbox2d.collision.shapes;

import org.jbox2d.collision.AABB;
import org.jbox2d.collision.RayCastInput;
import org.jbox2d.collision.RayCastOutput;
import org.jbox2d.common.MathUtils;
import org.jbox2d.common.Rot;
import org.jbox2d.common.Transform;
import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public class CircleShape extends Shape {
    static final /* synthetic */ boolean $assertionsDisabled;
    public final Vec2 m_p;

    static {
        $assertionsDisabled = !CircleShape.class.desiredAssertionStatus();
    }

    public CircleShape() {
        super(ShapeType.CIRCLE);
        this.m_p = new Vec2();
        this.m_radius = 0.0f;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public final Shape clone() {
        CircleShape shape = new CircleShape();
        shape.m_p.x = this.m_p.x;
        shape.m_p.y = this.m_p.y;
        shape.m_radius = this.m_radius;
        return shape;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public final int getChildCount() {
        return 1;
    }

    public final int getSupport(Vec2 d) {
        return 0;
    }

    public final Vec2 getSupportVertex(Vec2 d) {
        return this.m_p;
    }

    public final int getVertexCount() {
        return 1;
    }

    public final Vec2 getVertex(int index) {
        if ($assertionsDisabled || index == 0) {
            return this.m_p;
        }
        throw new AssertionError();
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public final boolean testPoint(Transform transform, Vec2 p) {
        Rot q = transform.q;
        Vec2 tp = transform.p;
        float centerx = -((((q.c * this.m_p.x) - (q.s * this.m_p.y)) + tp.x) - p.x);
        float centery = -((((q.s * this.m_p.x) + (q.c * this.m_p.y)) + tp.y) - p.y);
        return (centerx * centerx) + (centery * centery) <= this.m_radius * this.m_radius;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public final boolean raycast(RayCastOutput output, RayCastInput input, Transform transform, int childIndex) {
        Vec2 inputp1 = input.p1;
        Vec2 inputp2 = input.p2;
        Rot tq = transform.q;
        Vec2 tp = transform.p;
        float positionx = ((tq.c * this.m_p.x) - (tq.s * this.m_p.y)) + tp.x;
        float positiony = (tq.s * this.m_p.x) + (tq.c * this.m_p.y) + tp.y;
        float sx = inputp1.x - positionx;
        float sy = inputp1.y - positiony;
        float b = ((sx * sx) + (sy * sy)) - (this.m_radius * this.m_radius);
        float rx = inputp2.x - inputp1.x;
        float ry = inputp2.y - inputp1.y;
        float c = (sx * rx) + (sy * ry);
        float rr = (rx * rx) + (ry * ry);
        float sigma = (c * c) - (rr * b);
        if (sigma < 0.0f || rr < 1.1920929E-7f) {
            return false;
        }
        float a = -(MathUtils.sqrt(sigma) + c);
        if (0.0f <= a && a <= input.maxFraction * rr) {
            float a2 = a / rr;
            output.fraction = a2;
            output.normal.x = (rx * a2) + sx;
            output.normal.y = (ry * a2) + sy;
            output.normal.normalize();
            return true;
        }
        return false;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public final void computeAABB(AABB aabb, Transform transform, int childIndex) {
        Rot tq = transform.q;
        Vec2 tp = transform.p;
        float px = ((tq.c * this.m_p.x) - (tq.s * this.m_p.y)) + tp.x;
        float py = (tq.s * this.m_p.x) + (tq.c * this.m_p.y) + tp.y;
        aabb.lowerBound.x = px - this.m_radius;
        aabb.lowerBound.y = py - this.m_radius;
        aabb.upperBound.x = this.m_radius + px;
        aabb.upperBound.y = this.m_radius + py;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public final void computeMass(MassData massData, float density) {
        massData.mass = 3.1415927f * density * this.m_radius * this.m_radius;
        massData.center.x = this.m_p.x;
        massData.center.y = this.m_p.y;
        massData.I = massData.mass * ((0.5f * this.m_radius * this.m_radius) + (this.m_p.x * this.m_p.x) + (this.m_p.y * this.m_p.y));
    }
}
