package org.jbox2d.common;

/* JADX INFO: loaded from: classes2.dex */
public class OBBViewportTransform implements IViewportTransform {
    protected final OBB box = new OBB();
    private boolean yFlip = false;
    private final Mat22 yFlipMat = new Mat22(1.0f, 0.0f, 0.0f, -1.0f);
    private final Mat22 yFlipMatInv = this.yFlipMat.invert();
    private final Mat22 inv = new Mat22();
    private final Mat22 inv2 = new Mat22();

    public static class OBB {
        public final Mat22 R = new Mat22();
        public final Vec2 center = new Vec2();
        public final Vec2 extents = new Vec2();
    }

    public OBBViewportTransform() {
        this.box.R.setIdentity();
    }

    public void set(OBBViewportTransform vpt) {
        this.box.center.set(vpt.box.center);
        this.box.extents.set(vpt.box.extents);
        this.box.R.set(vpt.box.R);
        this.yFlip = vpt.yFlip;
    }

    @Override // org.jbox2d.common.IViewportTransform
    public void setCamera(float x, float y, float scale) {
        this.box.center.set(x, y);
        Mat22.createScaleTransform(scale, this.box.R);
    }

    @Override // org.jbox2d.common.IViewportTransform
    public Vec2 getExtents() {
        return this.box.extents;
    }

    @Override // org.jbox2d.common.IViewportTransform
    public void setExtents(Vec2 argExtents) {
        this.box.extents.set(argExtents);
    }

    @Override // org.jbox2d.common.IViewportTransform
    public void setExtents(float argHalfWidth, float argHalfHeight) {
        this.box.extents.set(argHalfWidth, argHalfHeight);
    }

    @Override // org.jbox2d.common.IViewportTransform
    public Vec2 getCenter() {
        return this.box.center;
    }

    @Override // org.jbox2d.common.IViewportTransform
    public void setCenter(Vec2 argPos) {
        this.box.center.set(argPos);
    }

    @Override // org.jbox2d.common.IViewportTransform
    public void setCenter(float x, float y) {
        this.box.center.set(x, y);
    }

    public Mat22 getTransform() {
        return this.box.R;
    }

    public void setTransform(Mat22 transform) {
        this.box.R.set(transform);
    }

    public void mulByTransform(Mat22 argTransform) {
        this.box.R.mulLocal(argTransform);
    }

    @Override // org.jbox2d.common.IViewportTransform
    public boolean isYFlip() {
        return this.yFlip;
    }

    @Override // org.jbox2d.common.IViewportTransform
    public void setYFlip(boolean yFlip) {
        this.yFlip = yFlip;
    }

    @Override // org.jbox2d.common.IViewportTransform
    public void getScreenVectorToWorld(Vec2 argScreen, Vec2 argWorld) {
        this.inv.set(this.box.R);
        this.inv.invertLocal();
        this.inv.mulToOut(argScreen, argWorld);
        if (this.yFlip) {
            this.yFlipMatInv.mulToOut(argWorld, argWorld);
        }
    }

    @Override // org.jbox2d.common.IViewportTransform
    public void getWorldVectorToScreen(Vec2 argWorld, Vec2 argScreen) {
        this.box.R.mulToOut(argWorld, argScreen);
        if (this.yFlip) {
            this.yFlipMatInv.mulToOut(argScreen, argScreen);
        }
    }

    @Override // org.jbox2d.common.IViewportTransform
    public void getWorldToScreen(Vec2 argWorld, Vec2 argScreen) {
        argScreen.x = argWorld.x - this.box.center.x;
        argScreen.y = argWorld.y - this.box.center.y;
        this.box.R.mulToOut(argScreen, argScreen);
        if (this.yFlip) {
            this.yFlipMat.mulToOut(argScreen, argScreen);
        }
        argScreen.x += this.box.extents.x;
        argScreen.y += this.box.extents.y;
    }

    @Override // org.jbox2d.common.IViewportTransform
    public void getScreenToWorld(Vec2 argScreen, Vec2 argWorld) {
        argWorld.set(argScreen);
        argWorld.subLocal(this.box.extents);
        this.box.R.invertToOut(this.inv2);
        this.inv2.mulToOut(argWorld, argWorld);
        if (this.yFlip) {
            this.yFlipMatInv.mulToOut(argWorld, argWorld);
        }
        argWorld.addLocal(this.box.center);
    }
}
