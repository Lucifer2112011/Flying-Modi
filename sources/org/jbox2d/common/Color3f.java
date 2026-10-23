package org.jbox2d.common;

/* JADX INFO: loaded from: classes2.dex */
public class Color3f {
    public float x;
    public float y;
    public float z;
    public static final Color3f WHITE = new Color3f(1.0f, 1.0f, 1.0f);
    public static final Color3f BLACK = new Color3f(0.0f, 0.0f, 0.0f);
    public static final Color3f BLUE = new Color3f(0.0f, 0.0f, 1.0f);
    public static final Color3f GREEN = new Color3f(0.0f, 1.0f, 0.0f);
    public static final Color3f RED = new Color3f(1.0f, 0.0f, 0.0f);

    public Color3f() {
        this.z = 0.0f;
        this.y = 0.0f;
        this.x = 0.0f;
    }

    public Color3f(float r, float g, float b) {
        this.x = r;
        this.y = g;
        this.z = b;
    }

    public void set(float r, float g, float b) {
        this.x = r;
        this.y = g;
        this.z = b;
    }

    public void set(Color3f argColor) {
        this.x = argColor.x;
        this.y = argColor.y;
        this.z = argColor.z;
    }
}
