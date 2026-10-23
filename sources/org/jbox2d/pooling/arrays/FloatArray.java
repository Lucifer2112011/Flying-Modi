package org.jbox2d.pooling.arrays;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class FloatArray {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final HashMap<Integer, float[]> map = new HashMap<>();

    static {
        $assertionsDisabled = !FloatArray.class.desiredAssertionStatus();
    }

    public float[] get(int argLength) {
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

    protected float[] getInitializedArray(int argLength) {
        return new float[argLength];
    }
}
