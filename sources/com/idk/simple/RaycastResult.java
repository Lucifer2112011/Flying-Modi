package com.idk.simple;

import com.idk.math.Vector2;

/* JADX INFO: loaded from: classes2.dex */
public class RaycastResult {
    private Physicsbody physicsbody;
    private Vector2 position;

    public RaycastResult(Physicsbody body, Vector2 pos) {
        this.physicsbody = body;
        this.position = pos;
    }

    public Physicsbody getPhysicsbody() {
        return this.physicsbody;
    }

    public Vector2 getPosition() {
        return this.position;
    }
}
