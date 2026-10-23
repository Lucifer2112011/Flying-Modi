package org.jbox2d.common;

/* JADX INFO: loaded from: classes2.dex */
class PlatformMathUtils {
    private static final float INV_SHIFT23 = 1.1920929E-7f;
    private static final float SHIFT23 = 8388608.0f;

    PlatformMathUtils() {
    }

    public static final float fastPow(float a, float b) {
        float x = (Float.floatToRawIntBits(a) * 1.1920929E-7f) - 127.0f;
        float y = x - (x >= 0.0f ? (int) x : ((int) x) - 1);
        float b2 = b * (((y - (y * y)) * 0.346607f) + x);
        float y2 = b2 - (b2 >= 0.0f ? (int) b2 : ((int) b2) - 1);
        return Float.intBitsToFloat((int) (((b2 + 127.0f) - ((y2 - (y2 * y2)) * 0.33971f)) * SHIFT23));
    }
}
