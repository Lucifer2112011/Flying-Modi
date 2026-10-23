package org.jbox2d.common;

import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class MathUtils extends PlatformMathUtils {
    public static final float DEG2RAD = 0.017453292f;
    public static final float HALF_PI = 1.5707964f;
    public static final float INV_PI = 0.31830987f;
    public static final float PI = 3.1415927f;
    public static final float QUARTER_PI = 0.7853982f;
    public static final float RAD2DEG = 57.295776f;
    public static final float THREE_HALVES_PI = 4.712389f;
    public static final float TWOPI = 6.2831855f;
    public static final float[] sinLUT = new float[Settings.SINCOS_LUT_LENGTH];

    static {
        for (int i = 0; i < Settings.SINCOS_LUT_LENGTH; i++) {
            sinLUT[i] = (float) Math.sin(i * 1.1E-4f);
        }
    }

    public static final float sin(float x) {
        return Settings.SINCOS_LUT_ENABLED ? sinLUT(x) : (float) StrictMath.sin(x);
    }

    public static final float sinLUT(float x) {
        float x2 = x % 6.2831855f;
        if (x2 < 0.0f) {
            x2 += 6.2831855f;
        }
        if (Settings.SINCOS_LUT_LERP) {
            float x3 = x2 / 1.1E-4f;
            int index = (int) x3;
            if (index != 0) {
                x3 %= index;
            }
            if (index == Settings.SINCOS_LUT_LENGTH - 1) {
                return ((1.0f - x3) * sinLUT[index]) + (sinLUT[0] * x3);
            }
            return ((1.0f - x3) * sinLUT[index]) + (sinLUT[index + 1] * x3);
        }
        return sinLUT[round(x2 / 1.1E-4f) % Settings.SINCOS_LUT_LENGTH];
    }

    public static final float cos(float x) {
        return Settings.SINCOS_LUT_ENABLED ? sinLUT(1.5707964f - x) : (float) StrictMath.cos(x);
    }

    public static final float abs(float x) {
        if (!Settings.FAST_ABS) {
            return Math.abs(x);
        }
        if (x <= 0.0f) {
            return -x;
        }
        return x;
    }

    public static final int abs(int x) {
        int y = x >> 31;
        return (x ^ y) - y;
    }

    public static final int floor(float x) {
        if (!Settings.FAST_FLOOR) {
            return (int) Math.floor(x);
        }
        int y = (int) x;
        if (x < 0.0f && x != y) {
            return y - 1;
        }
        return y;
    }

    public static final int ceil(float x) {
        if (!Settings.FAST_CEIL) {
            return (int) Math.ceil(x);
        }
        int y = (int) x;
        if (x > 0.0f && x != y) {
            return y + 1;
        }
        return y;
    }

    public static final int round(float x) {
        return Settings.FAST_ROUND ? floor(0.5f + x) : StrictMath.round(x);
    }

    public static final int ceilPowerOf2(int x) {
        int pow2 = 1;
        while (pow2 < x) {
            pow2 <<= 1;
        }
        return pow2;
    }

    public static final float max(float a, float b) {
        return a > b ? a : b;
    }

    public static final int max(int a, int b) {
        return a > b ? a : b;
    }

    public static final float min(float a, float b) {
        return a < b ? a : b;
    }

    public static final int min(int a, int b) {
        return a < b ? a : b;
    }

    public static final float map(float val, float fromMin, float fromMax, float toMin, float toMax) {
        float mult = (val - fromMin) / (fromMax - fromMin);
        float res = toMin + ((toMax - toMin) * mult);
        return res;
    }

    public static final float clamp(float a, float low, float high) {
        return max(low, min(a, high));
    }

    public static final Vec2 clamp(Vec2 a, Vec2 low, Vec2 high) {
        Vec2 min = new Vec2();
        min.x = a.x < high.x ? a.x : high.x;
        min.y = a.y < high.y ? a.y : high.y;
        min.x = low.x > min.x ? low.x : min.x;
        min.y = low.y > min.y ? low.y : min.y;
        return min;
    }

    public static final void clampToOut(Vec2 a, Vec2 low, Vec2 high, Vec2 dest) {
        dest.x = a.x < high.x ? a.x : high.x;
        dest.y = a.y < high.y ? a.y : high.y;
        dest.x = low.x > dest.x ? low.x : dest.x;
        dest.y = low.y > dest.y ? low.y : dest.y;
    }

    public static final int nextPowerOfTwo(int x) {
        int x2 = x | (x >> 1);
        int x3 = x2 | (x2 >> 2);
        int x4 = x3 | (x3 >> 4);
        int x5 = x4 | (x4 >> 8);
        return (x5 | (x5 >> 16)) + 1;
    }

    public static final boolean isPowerOfTwo(int x) {
        return x > 0 && ((x + (-1)) & x) == 0;
    }

    public static final float atan2(float y, float x) {
        return Settings.FAST_ATAN2 ? fastAtan2(y, x) : (float) StrictMath.atan2(y, x);
    }

    public static final float fastAtan2(float y, float x) {
        if (x == 0.0f) {
            if (y > 0.0f) {
                return 1.5707964f;
            }
            return y == 0.0f ? 0.0f : -1.5707964f;
        }
        float z = y / x;
        if (abs(z) < 1.0f) {
            float atan = z / (((0.28f * z) * z) + 1.0f);
            if (x < 0.0f) {
                return y < 0.0f ? atan - 3.1415927f : atan + 3.1415927f;
            }
            return atan;
        }
        float atan2 = 1.5707964f - (z / ((z * z) + 0.28f));
        return y < 0.0f ? atan2 - 3.1415927f : atan2;
    }

    public static final float reduceAngle(float theta) {
        float theta2 = theta % 6.2831855f;
        if (abs(theta2) > 3.1415927f) {
            theta2 -= 6.2831855f;
        }
        if (abs(theta2) > 1.5707964f) {
            return 3.1415927f - theta2;
        }
        return theta2;
    }

    public static final float randomFloat(float argLow, float argHigh) {
        return (((float) Math.random()) * (argHigh - argLow)) + argLow;
    }

    public static final float randomFloat(Random r, float argLow, float argHigh) {
        return (r.nextFloat() * (argHigh - argLow)) + argLow;
    }

    public static final float sqrt(float x) {
        return (float) StrictMath.sqrt(x);
    }

    public static final float distanceSquared(Vec2 v1, Vec2 v2) {
        float dx = v1.x - v2.x;
        float dy = v1.y - v2.y;
        return (dx * dx) + (dy * dy);
    }

    public static final float distance(Vec2 v1, Vec2 v2) {
        return sqrt(distanceSquared(v1, v2));
    }
}
