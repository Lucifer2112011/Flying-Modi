package com.idk.core;

/* JADX INFO: loaded from: classes2.dex */
public class TouchData {
    public float currentX;
    public float currentY;
    public int id;
    public boolean isPressed;
    public float previousX;
    public float previousY;
    public long timeStamp;

    public TouchData copy() {
        TouchData tc = new TouchData();
        tc.set(this);
        return tc;
    }

    public void set(TouchData ts) {
        this.currentX = ts.currentX;
        this.currentY = ts.currentY;
        this.previousX = ts.previousX;
        this.previousY = ts.previousY;
        this.isPressed = ts.isPressed;
        this.id = ts.id;
    }
}
