package org.jbox2d.pooling.arrays;

import java.util.HashMap;
import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public class Vec2Array {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final HashMap<Integer, Vec2[]> map = new HashMap<>();

    static {
        $assertionsDisabled = !Vec2Array.class.desiredAssertionStatus();
    }

    public Vec2[] get(int argLength) {
        if (!$assertionsDisabled && argLength <= 0) {
            throw new AssertionError();
        }
        if (!this.map.containsKey(Integer.valueOf(argLength))) {
            this.map.put(Integer.valueOf(argLength), getInitializedArray(argLength));
        }
        if ($assertionsDisabled || this.map.get(Integer.valueOf(argLength)).length == argLength) {
            return this.map.get(Integer.valueOf(argLength));
        }
        throw new AssertionError("Array not built of correct length");
    }

    protected Vec2[] getInitializedArray(int argLength) {
        Vec2[] ray = new Vec2[argLength];
        for (int i = 0; i < ray.length; i++) {
            ray[i] = new Vec2();
        }
        return ray;
    }
}
