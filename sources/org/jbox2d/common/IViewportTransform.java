package org.jbox2d.common;

/* JADX INFO: loaded from: classes2.dex */
public interface IViewportTransform {
    Vec2 getCenter();

    Vec2 getExtents();

    void getScreenToWorld(Vec2 vec2, Vec2 vec22);

    void getScreenVectorToWorld(Vec2 vec2, Vec2 vec22);

    void getWorldToScreen(Vec2 vec2, Vec2 vec22);

    void getWorldVectorToScreen(Vec2 vec2, Vec2 vec22);

    boolean isYFlip();

    void setCamera(float f, float f2, float f3);

    void setCenter(float f, float f2);

    void setCenter(Vec2 vec2);

    void setExtents(float f, float f2);

    void setExtents(Vec2 vec2);

    void setYFlip(boolean z);
}
