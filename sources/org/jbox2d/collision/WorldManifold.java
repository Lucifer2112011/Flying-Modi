package org.jbox2d.collision;

import org.jbox2d.common.MathUtils;
import org.jbox2d.common.Rot;
import org.jbox2d.common.Transform;
import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public class WorldManifold {
    private final Vec2 pool3 = new Vec2();
    private final Vec2 pool4 = new Vec2();
    public final Vec2 normal = new Vec2();
    public final Vec2[] points = new Vec2[2];

    public WorldManifold() {
        for (int i = 0; i < 2; i++) {
            this.points[i] = new Vec2();
        }
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1095)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:1049)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:130)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    public final void initialize(Manifold manifold, Transform xfA, float radiusA, Transform xfB, float radiusB) {
        if (manifold.pointCount != 0) {
            switch (manifold.type) {
                case CIRCLES:
                    Vec2 pointA = this.pool3;
                    Vec2 pointB = this.pool4;
                    this.normal.x = 1.0f;
                    this.normal.y = 0.0f;
                    Transform.mulToOut(xfA, manifold.localPoint, pointA);
                    Transform.mulToOut(xfB, manifold.points[0].localPoint, pointB);
                    if (MathUtils.distanceSquared(pointA, pointB) > 1.4210855E-14f) {
                        this.normal.x = pointB.x - pointA.x;
                        this.normal.y = pointB.y - pointA.y;
                        this.normal.normalize();
                    }
                    float cAx = (this.normal.x * radiusA) + pointA.x;
                    float cAy = (this.normal.y * radiusA) + pointA.y;
                    float cBx = ((-this.normal.x) * radiusB) + pointB.x;
                    float cBy = ((-this.normal.y) * radiusB) + pointB.y;
                    this.points[0].x = (cAx + cBx) * 0.5f;
                    this.points[0].y = (cAy + cBy) * 0.5f;
                    break;
                case FACE_A:
                    Vec2 planePoint = this.pool3;
                    Rot.mulToOutUnsafe(xfA.q, manifold.localNormal, this.normal);
                    Transform.mulToOut(xfA, manifold.localPoint, planePoint);
                    Vec2 clipPoint = this.pool4;
                    for (int i = 0; i < manifold.pointCount; i++) {
                        Transform.mulToOut(xfB, manifold.points[i].localPoint, clipPoint);
                        float scalar = radiusA - (((clipPoint.x - planePoint.x) * this.normal.x) + ((clipPoint.y - planePoint.y) * this.normal.y));
                        float cAx2 = (this.normal.x * scalar) + clipPoint.x;
                        float cAy2 = (this.normal.y * scalar) + clipPoint.y;
                        float cBx2 = ((-this.normal.x) * radiusB) + clipPoint.x;
                        float cBy2 = ((-this.normal.y) * radiusB) + clipPoint.y;
                        this.points[i].x = (cAx2 + cBx2) * 0.5f;
                        this.points[i].y = (cAy2 + cBy2) * 0.5f;
                    }
                    break;
                case FACE_B:
                    Vec2 planePoint2 = this.pool3;
                    Rot.mulToOutUnsafe(xfB.q, manifold.localNormal, this.normal);
                    Transform.mulToOut(xfB, manifold.localPoint, planePoint2);
                    Vec2 clipPoint2 = this.pool4;
                    for (int i2 = 0; i2 < manifold.pointCount; i2++) {
                        Transform.mulToOut(xfA, manifold.points[i2].localPoint, clipPoint2);
                        float scalar2 = radiusB - (((clipPoint2.x - planePoint2.x) * this.normal.x) + ((clipPoint2.y - planePoint2.y) * this.normal.y));
                        float cBx3 = (this.normal.x * scalar2) + clipPoint2.x;
                        float cBy3 = (this.normal.y * scalar2) + clipPoint2.y;
                        float cAx3 = ((-this.normal.x) * radiusA) + clipPoint2.x;
                        float cAy3 = ((-this.normal.y) * radiusA) + clipPoint2.y;
                        this.points[i2].x = (cAx3 + cBx3) * 0.5f;
                        this.points[i2].y = (cAy3 + cBy3) * 0.5f;
                    }
                    this.normal.x = -this.normal.x;
                    this.normal.y = -this.normal.y;
                    break;
            }
        }
    }
}
