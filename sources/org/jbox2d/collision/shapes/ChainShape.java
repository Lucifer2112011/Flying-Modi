package org.jbox2d.collision.shapes;

import org.jbox2d.collision.AABB;
import org.jbox2d.collision.RayCastInput;
import org.jbox2d.collision.RayCastOutput;
import org.jbox2d.common.MathUtils;
import org.jbox2d.common.Rot;
import org.jbox2d.common.Transform;
import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public class ChainShape extends Shape {
    static final /* synthetic */ boolean $assertionsDisabled;
    public int m_count;
    public boolean m_hasNextVertex;
    public boolean m_hasPrevVertex;
    public final Vec2 m_nextVertex;
    public final Vec2 m_prevVertex;
    public Vec2[] m_vertices;
    private final EdgeShape pool0;

    static {
        $assertionsDisabled = !ChainShape.class.desiredAssertionStatus();
    }

    public ChainShape() {
        super(ShapeType.CHAIN);
        this.m_prevVertex = new Vec2();
        this.m_nextVertex = new Vec2();
        this.m_hasPrevVertex = false;
        this.m_hasNextVertex = false;
        this.pool0 = new EdgeShape();
        this.m_vertices = null;
        this.m_radius = 0.01f;
        this.m_count = 0;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public int getChildCount() {
        return this.m_count - 1;
    }

    public void getChildEdge(EdgeShape edge, int index) {
        if (!$assertionsDisabled && (index < 0 || index >= this.m_count - 1)) {
            throw new AssertionError();
        }
        edge.m_radius = this.m_radius;
        Vec2 v0 = this.m_vertices[index + 0];
        Vec2 v1 = this.m_vertices[index + 1];
        edge.m_vertex1.x = v0.x;
        edge.m_vertex1.y = v0.y;
        edge.m_vertex2.x = v1.x;
        edge.m_vertex2.y = v1.y;
        if (index > 0) {
            Vec2 v = this.m_vertices[index - 1];
            edge.m_vertex0.x = v.x;
            edge.m_vertex0.y = v.y;
            edge.m_hasVertex0 = true;
        } else {
            edge.m_vertex0.x = this.m_prevVertex.x;
            edge.m_vertex0.y = this.m_prevVertex.y;
            edge.m_hasVertex0 = this.m_hasPrevVertex;
        }
        if (index < this.m_count - 2) {
            Vec2 v2 = this.m_vertices[index + 2];
            edge.m_vertex3.x = v2.x;
            edge.m_vertex3.y = v2.y;
            edge.m_hasVertex3 = true;
            return;
        }
        edge.m_vertex3.x = this.m_nextVertex.x;
        edge.m_vertex3.y = this.m_nextVertex.y;
        edge.m_hasVertex3 = this.m_hasNextVertex;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public boolean testPoint(Transform xf, Vec2 p) {
        return false;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public boolean raycast(RayCastOutput output, RayCastInput input, Transform xf, int childIndex) {
        if (!$assertionsDisabled && childIndex >= this.m_count) {
            throw new AssertionError();
        }
        EdgeShape edgeShape = this.pool0;
        int i2 = childIndex + 1;
        if (i2 == this.m_count) {
            i2 = 0;
        }
        Vec2 v = this.m_vertices[childIndex];
        edgeShape.m_vertex1.x = v.x;
        edgeShape.m_vertex1.y = v.y;
        Vec2 v1 = this.m_vertices[i2];
        edgeShape.m_vertex2.x = v1.x;
        edgeShape.m_vertex2.y = v1.y;
        return edgeShape.raycast(output, input, xf, 0);
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public void computeAABB(AABB aabb, Transform xf, int childIndex) {
        if (!$assertionsDisabled && childIndex >= this.m_count) {
            throw new AssertionError();
        }
        Vec2 lower = aabb.lowerBound;
        Vec2 upper = aabb.upperBound;
        int i2 = childIndex + 1;
        if (i2 == this.m_count) {
            i2 = 0;
        }
        Vec2 vi1 = this.m_vertices[childIndex];
        Vec2 vi2 = this.m_vertices[i2];
        Rot xfq = xf.q;
        Vec2 xfp = xf.p;
        float v1x = ((xfq.c * vi1.x) - (xfq.s * vi1.y)) + xfp.x;
        float v1y = (xfq.s * vi1.x) + (xfq.c * vi1.y) + xfp.y;
        float v2x = ((xfq.c * vi2.x) - (xfq.s * vi2.y)) + xfp.x;
        float v2y = (xfq.s * vi2.x) + (xfq.c * vi2.y) + xfp.y;
        lower.x = v1x < v2x ? v1x : v2x;
        lower.y = v1y < v2y ? v1y : v2y;
        if (v1x <= v2x) {
            v1x = v2x;
        }
        upper.x = v1x;
        if (v1y <= v2y) {
            v1y = v2y;
        }
        upper.y = v1y;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public void computeMass(MassData massData, float density) {
        massData.mass = 0.0f;
        massData.center.setZero();
        massData.I = 0.0f;
    }

    @Override // org.jbox2d.collision.shapes.Shape
    public Shape clone() {
        ChainShape clone = new ChainShape();
        clone.createChain(this.m_vertices, this.m_count);
        clone.m_prevVertex.set(this.m_prevVertex);
        clone.m_nextVertex.set(this.m_nextVertex);
        clone.m_hasPrevVertex = this.m_hasPrevVertex;
        clone.m_hasNextVertex = this.m_hasNextVertex;
        return clone;
    }

    public void createLoop(Vec2[] vertices, int count) {
        if (!$assertionsDisabled && (this.m_vertices != null || this.m_count != 0)) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && count < 3) {
            throw new AssertionError();
        }
        this.m_count = count + 1;
        this.m_vertices = new Vec2[this.m_count];
        for (int i = 1; i < count; i++) {
            Vec2 v1 = vertices[i - 1];
            Vec2 v2 = vertices[i];
            if (MathUtils.distanceSquared(v1, v2) < 2.5E-5f) {
                throw new RuntimeException("Vertices of chain shape are too close together");
            }
        }
        for (int i2 = 0; i2 < count; i2++) {
            this.m_vertices[i2] = new Vec2(vertices[i2]);
        }
        this.m_vertices[count] = new Vec2(this.m_vertices[0]);
        this.m_prevVertex.set(this.m_vertices[this.m_count - 2]);
        this.m_nextVertex.set(this.m_vertices[1]);
        this.m_hasPrevVertex = true;
        this.m_hasNextVertex = true;
    }

    public void createChain(Vec2[] vertices, int count) {
        if (!$assertionsDisabled && (this.m_vertices != null || this.m_count != 0)) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && count < 2) {
            throw new AssertionError();
        }
        this.m_count = count;
        this.m_vertices = new Vec2[this.m_count];
        for (int i = 1; i < this.m_count; i++) {
            Vec2 v1 = vertices[i - 1];
            Vec2 v2 = vertices[i];
            if (MathUtils.distanceSquared(v1, v2) < 2.5E-5f) {
                throw new RuntimeException("Vertices of chain shape are too close together");
            }
        }
        for (int i2 = 0; i2 < this.m_count; i2++) {
            this.m_vertices[i2] = new Vec2(vertices[i2]);
        }
        this.m_hasPrevVertex = false;
        this.m_hasNextVertex = false;
    }

    public void setPrevVertex(Vec2 prevVertex) {
        this.m_prevVertex.set(prevVertex);
        this.m_hasPrevVertex = true;
    }

    public void setNextVertex(Vec2 nextVertex) {
        this.m_nextVertex.set(nextVertex);
        this.m_hasNextVertex = true;
    }
}
