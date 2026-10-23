package org.jbox2d.dynamics.contacts;

import org.jbox2d.common.Rot;
import org.jbox2d.common.Transform;
import org.jbox2d.common.Vec2;

/* JADX INFO: compiled from: ContactSolver.java */
/* JADX INFO: loaded from: classes2.dex */
class PositionSolverManifold {
    static final /* synthetic */ boolean $assertionsDisabled;
    public final Vec2 normal = new Vec2();
    public final Vec2 point = new Vec2();
    public float separation;

    static {
        $assertionsDisabled = !PositionSolverManifold.class.desiredAssertionStatus();
    }

    PositionSolverManifold() {
    }

    public void initialize(ContactPositionConstraint pc, Transform xfA, Transform xfB, int index) {
        if (!$assertionsDisabled && pc.pointCount <= 0) {
            throw new AssertionError();
        }
        Rot xfAq = xfA.q;
        Rot xfBq = xfB.q;
        Vec2 pcLocalPointsI = pc.localPoints[index];
        switch (pc.type) {
            case CIRCLES:
                Vec2 plocalPoint = pc.localPoint;
                Vec2 pLocalPoints0 = pc.localPoints[0];
                float pointAx = ((xfAq.c * plocalPoint.x) - (xfAq.s * plocalPoint.y)) + xfA.p.x;
                float pointAy = (xfAq.s * plocalPoint.x) + (xfAq.c * plocalPoint.y) + xfA.p.y;
                float pointBx = ((xfBq.c * pLocalPoints0.x) - (xfBq.s * pLocalPoints0.y)) + xfB.p.x;
                float pointBy = (xfBq.s * pLocalPoints0.x) + (xfBq.c * pLocalPoints0.y) + xfB.p.y;
                this.normal.x = pointBx - pointAx;
                this.normal.y = pointBy - pointAy;
                this.normal.normalize();
                this.point.x = (pointAx + pointBx) * 0.5f;
                this.point.y = (pointAy + pointBy) * 0.5f;
                float tempx = pointBx - pointAx;
                float tempy = pointBy - pointAy;
                this.separation = (((this.normal.x * tempx) + (this.normal.y * tempy)) - pc.radiusA) - pc.radiusB;
                return;
            case FACE_A:
                Vec2 pcLocalNormal = pc.localNormal;
                Vec2 pcLocalPoint = pc.localPoint;
                this.normal.x = (xfAq.c * pcLocalNormal.x) - (xfAq.s * pcLocalNormal.y);
                this.normal.y = (xfAq.s * pcLocalNormal.x) + (xfAq.c * pcLocalNormal.y);
                float planePointx = ((xfAq.c * pcLocalPoint.x) - (xfAq.s * pcLocalPoint.y)) + xfA.p.x;
                float planePointy = (xfAq.s * pcLocalPoint.x) + (xfAq.c * pcLocalPoint.y) + xfA.p.y;
                float clipPointx = ((xfBq.c * pcLocalPointsI.x) - (xfBq.s * pcLocalPointsI.y)) + xfB.p.x;
                float clipPointy = (xfBq.s * pcLocalPointsI.x) + (xfBq.c * pcLocalPointsI.y) + xfB.p.y;
                float tempx2 = clipPointx - planePointx;
                float tempy2 = clipPointy - planePointy;
                this.separation = (((this.normal.x * tempx2) + (this.normal.y * tempy2)) - pc.radiusA) - pc.radiusB;
                this.point.x = clipPointx;
                this.point.y = clipPointy;
                return;
            case FACE_B:
                Vec2 pcLocalNormal2 = pc.localNormal;
                Vec2 pcLocalPoint2 = pc.localPoint;
                this.normal.x = (xfBq.c * pcLocalNormal2.x) - (xfBq.s * pcLocalNormal2.y);
                this.normal.y = (xfBq.s * pcLocalNormal2.x) + (xfBq.c * pcLocalNormal2.y);
                float planePointx2 = ((xfBq.c * pcLocalPoint2.x) - (xfBq.s * pcLocalPoint2.y)) + xfB.p.x;
                float planePointy2 = (xfBq.s * pcLocalPoint2.x) + (xfBq.c * pcLocalPoint2.y) + xfB.p.y;
                float clipPointx2 = ((xfAq.c * pcLocalPointsI.x) - (xfAq.s * pcLocalPointsI.y)) + xfA.p.x;
                float clipPointy2 = (xfAq.s * pcLocalPointsI.x) + (xfAq.c * pcLocalPointsI.y) + xfA.p.y;
                float tempx3 = clipPointx2 - planePointx2;
                float tempy3 = clipPointy2 - planePointy2;
                this.separation = (((this.normal.x * tempx3) + (this.normal.y * tempy3)) - pc.radiusA) - pc.radiusB;
                this.point.x = clipPointx2;
                this.point.y = clipPointy2;
                this.normal.x *= -1.0f;
                this.normal.y *= -1.0f;
                return;
            default:
                return;
        }
    }
}
