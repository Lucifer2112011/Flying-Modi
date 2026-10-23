package org.jbox2d.dynamics.contacts;

import org.jbox2d.collision.Manifold;
import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public class ContactPositionConstraint {
    int indexA;
    int indexB;
    float invIA;
    float invIB;
    float invMassA;
    float invMassB;
    int pointCount;
    float radiusA;
    float radiusB;
    Manifold.ManifoldType type;
    Vec2[] localPoints = new Vec2[2];
    final Vec2 localNormal = new Vec2();
    final Vec2 localPoint = new Vec2();
    final Vec2 localCenterA = new Vec2();
    final Vec2 localCenterB = new Vec2();

    public ContactPositionConstraint() {
        for (int i = 0; i < this.localPoints.length; i++) {
            this.localPoints[i] = new Vec2();
        }
    }
}
