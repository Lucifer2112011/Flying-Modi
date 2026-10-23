package org.jbox2d.callbacks;

import org.jbox2d.common.Color3f;
import org.jbox2d.common.IViewportTransform;
import org.jbox2d.common.Transform;
import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DebugDraw {
    public static final int e_aabbBit = 4;
    public static final int e_centerOfMassBit = 16;
    public static final int e_dynamicTreeBit = 32;
    public static final int e_jointBit = 2;
    public static final int e_pairBit = 8;
    public static final int e_shapeBit = 1;
    protected int m_drawFlags = 0;
    protected final IViewportTransform viewportTransform;

    public abstract void drawCircle(Vec2 vec2, float f, Color3f color3f);

    public abstract void drawPoint(Vec2 vec2, float f, Color3f color3f);

    public abstract void drawSegment(Vec2 vec2, Vec2 vec22, Color3f color3f);

    public abstract void drawSolidCircle(Vec2 vec2, float f, Vec2 vec22, Color3f color3f);

    public abstract void drawSolidPolygon(Vec2[] vec2Arr, int i, Color3f color3f);

    public abstract void drawString(float f, float f2, String str, Color3f color3f);

    public abstract void drawTransform(Transform transform);

    public DebugDraw(IViewportTransform viewport) {
        this.viewportTransform = viewport;
    }

    public void setFlags(int flags) {
        this.m_drawFlags = flags;
    }

    public int getFlags() {
        return this.m_drawFlags;
    }

    public void appendFlags(int flags) {
        this.m_drawFlags |= flags;
    }

    public void clearFlags(int flags) {
        this.m_drawFlags &= flags ^ (-1);
    }

    public void drawPolygon(Vec2[] vertices, int vertexCount, Color3f color) {
        if (vertexCount == 1) {
            drawSegment(vertices[0], vertices[0], color);
            return;
        }
        for (int i = 0; i < vertexCount - 1; i++) {
            drawSegment(vertices[i], vertices[i + 1], color);
        }
        if (vertexCount > 2) {
            drawSegment(vertices[vertexCount - 1], vertices[0], color);
        }
    }

    public void drawString(Vec2 pos, String s, Color3f color) {
        drawString(pos.x, pos.y, s, color);
    }

    public IViewportTransform getViewportTranform() {
        return this.viewportTransform;
    }

    public void setCamera(float x, float y, float scale) {
        this.viewportTransform.setCamera(x, y, scale);
    }

    public void getScreenToWorldToOut(Vec2 argScreen, Vec2 argWorld) {
        this.viewportTransform.getScreenToWorld(argScreen, argWorld);
    }

    public void getWorldToScreenToOut(Vec2 argWorld, Vec2 argScreen) {
        this.viewportTransform.getWorldToScreen(argWorld, argScreen);
    }

    public void getWorldToScreenToOut(float worldX, float worldY, Vec2 argScreen) {
        argScreen.set(worldX, worldY);
        this.viewportTransform.getWorldToScreen(argScreen, argScreen);
    }

    public Vec2 getWorldToScreen(Vec2 argWorld) {
        Vec2 screen = new Vec2();
        this.viewportTransform.getWorldToScreen(argWorld, screen);
        return screen;
    }

    public Vec2 getWorldToScreen(float worldX, float worldY) {
        Vec2 argScreen = new Vec2(worldX, worldY);
        this.viewportTransform.getWorldToScreen(argScreen, argScreen);
        return argScreen;
    }

    public void getScreenToWorldToOut(float screenX, float screenY, Vec2 argWorld) {
        argWorld.set(screenX, screenY);
        this.viewportTransform.getScreenToWorld(argWorld, argWorld);
    }

    public Vec2 getScreenToWorld(Vec2 argScreen) {
        Vec2 world = new Vec2();
        this.viewportTransform.getScreenToWorld(argScreen, world);
        return world;
    }

    public Vec2 getScreenToWorld(float screenX, float screenY) {
        Vec2 screen = new Vec2(screenX, screenY);
        this.viewportTransform.getScreenToWorld(screen, screen);
        return screen;
    }
}
