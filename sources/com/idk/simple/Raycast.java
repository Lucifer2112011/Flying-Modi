package com.idk.simple;

import com.idk.math.Vector2;

/* JADX INFO: loaded from: classes2.dex */
public class Raycast {
    private Vector2 end;
    private Vector2 start;

    public void setEnd(Vector2 end) {
        this.end = end;
        this.end.mul(new Vector2(0.01f, 0.01f));
    }

    public void setStart(Vector2 start) {
        this.start = start;
        start.mul(new Vector2(0.01f, 0.01f));
    }

    public void setRay(Vector2 start, Vector2 direction) {
        this.start = start;
        this.end = new Vector2(start.x, start.y).add(direction);
        start.mul(new Vector2(0.01f, 0.01f));
        this.end.mul(new Vector2(0.01f, 0.01f));
    }

    public Vector2 getStart() {
        return this.start;
    }

    public Vector2 getEnd() {
        return this.end;
    }
}
