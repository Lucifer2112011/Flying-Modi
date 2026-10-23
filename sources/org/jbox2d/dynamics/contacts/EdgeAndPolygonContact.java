package org.jbox2d.dynamics.contacts;

import org.jbox2d.collision.Manifold;
import org.jbox2d.collision.shapes.EdgeShape;
import org.jbox2d.collision.shapes.PolygonShape;
import org.jbox2d.collision.shapes.ShapeType;
import org.jbox2d.common.Transform;
import org.jbox2d.dynamics.Fixture;
import org.jbox2d.pooling.IWorldPool;

/* JADX INFO: loaded from: classes2.dex */
public class EdgeAndPolygonContact extends Contact {
    static final /* synthetic */ boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !EdgeAndPolygonContact.class.desiredAssertionStatus();
    }

    public EdgeAndPolygonContact(IWorldPool argPool) {
        super(argPool);
    }

    @Override // org.jbox2d.dynamics.contacts.Contact
    public void init(Fixture fA, int indexA, Fixture fB, int indexB) {
        super.init(fA, indexA, fB, indexB);
        if (!$assertionsDisabled && this.m_fixtureA.getType() != ShapeType.EDGE) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.m_fixtureB.getType() != ShapeType.POLYGON) {
            throw new AssertionError();
        }
    }

    @Override // org.jbox2d.dynamics.contacts.Contact
    public void evaluate(Manifold manifold, Transform xfA, Transform xfB) {
        this.pool.getCollision().collideEdgeAndPolygon(manifold, (EdgeShape) this.m_fixtureA.getShape(), xfA, (PolygonShape) this.m_fixtureB.getShape(), xfB);
    }
}
