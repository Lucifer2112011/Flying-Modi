package org.jbox2d.collision.shapes;

import org.jbox2d.collision.AABB;
import org.jbox2d.collision.RayCastInput;
import org.jbox2d.collision.RayCastOutput;
import org.jbox2d.common.Transform;
import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Shape {
    public float m_radius;
    public final ShapeType m_type;

    @Override // 
    public abstract Shape clone();

    public abstract void computeAABB(AABB aabb, Transform transform, int i);

    public abstract void computeMass(MassData massData, float f);

    public abstract int getChildCount();

    public abstract boolean raycast(RayCastOutput rayCastOutput, RayCastInput rayCastInput, Transform transform, int i);

    public abstract boolean testPoint(Transform transform, Vec2 vec2);

    public Shape(ShapeType type) {
        this.m_type = type;
    }

    public ShapeType getType() {
        return this.m_type;
    }

    public float getRadius() {
        return this.m_radius;
    }

    public void setRadius(float radius) {
        this.m_radius = radius;
    }
}
