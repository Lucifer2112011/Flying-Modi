package org.jbox2d.dynamics.contacts;

import org.jbox2d.collision.Manifold;
import org.jbox2d.collision.shapes.CircleShape;
import org.jbox2d.collision.shapes.PolygonShape;
import org.jbox2d.collision.shapes.ShapeType;
import org.jbox2d.common.Transform;
import org.jbox2d.dynamics.Fixture;
import org.jbox2d.pooling.IWorldPool;

/* JADX INFO: loaded from: classes2.dex */
public class PolygonAndCircleContact extends Contact {
    static final /* synthetic */ boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !PolygonAndCircleContact.class.desiredAssertionStatus();
    }

    public PolygonAndCircleContact(IWorldPool argPool) {
        super(argPool);
    }

    public void init(Fixture fixtureA, Fixture fixtureB) {
        super.init(fixtureA, 0, fixtureB, 0);
        if (!$assertionsDisabled && this.m_fixtureA.getType() != ShapeType.POLYGON) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.m_fixtureB.getType() != ShapeType.CIRCLE) {
            throw new AssertionError();
        }
    }

    @Override // org.jbox2d.dynamics.contacts.Contact
    public void evaluate(Manifold manifold, Transform xfA, Transform xfB) {
        this.pool.getCollision().collidePolygonAndCircle(manifold, (PolygonShape) this.m_fixtureA.getShape(), xfA, (CircleShape) this.m_fixtureB.getShape(), xfB);
    }
}
