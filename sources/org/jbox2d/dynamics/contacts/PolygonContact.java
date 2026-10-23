package org.jbox2d.dynamics.contacts;

import org.jbox2d.collision.Manifold;
import org.jbox2d.collision.shapes.PolygonShape;
import org.jbox2d.collision.shapes.ShapeType;
import org.jbox2d.common.Transform;
import org.jbox2d.dynamics.Fixture;
import org.jbox2d.pooling.IWorldPool;

/* JADX INFO: loaded from: classes2.dex */
public class PolygonContact extends Contact {
    static final /* synthetic */ boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !PolygonContact.class.desiredAssertionStatus();
    }

    public PolygonContact(IWorldPool argPool) {
        super(argPool);
    }

    public void init(Fixture fixtureA, Fixture fixtureB) {
        super.init(fixtureA, 0, fixtureB, 0);
        if (!$assertionsDisabled && this.m_fixtureA.getType() != ShapeType.POLYGON) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.m_fixtureB.getType() != ShapeType.POLYGON) {
            throw new AssertionError();
        }
    }

    @Override // org.jbox2d.dynamics.contacts.Contact
    public void evaluate(Manifold manifold, Transform xfA, Transform xfB) {
        this.pool.getCollision().collidePolygons(manifold, (PolygonShape) this.m_fixtureA.getShape(), xfA, (PolygonShape) this.m_fixtureB.getShape(), xfB);
    }
}
