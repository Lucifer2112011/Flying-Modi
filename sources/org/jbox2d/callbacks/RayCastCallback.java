package org.jbox2d.callbacks;

import org.jbox2d.common.Vec2;
import org.jbox2d.dynamics.Fixture;

/* JADX INFO: loaded from: classes2.dex */
public interface RayCastCallback {
    float reportFixture(Fixture fixture, Vec2 vec2, Vec2 vec22, float f);
}
