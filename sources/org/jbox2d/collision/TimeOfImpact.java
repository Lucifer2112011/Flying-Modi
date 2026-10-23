package org.jbox2d.collision;

import org.jbox2d.collision.Distance;
import org.jbox2d.common.MathUtils;
import org.jbox2d.common.Sweep;
import org.jbox2d.common.Transform;
import org.jbox2d.pooling.IWorldPool;

/* JADX INFO: loaded from: classes2.dex */
public class TimeOfImpact {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final int MAX_ITERATIONS = 1000;
    public static int toiCalls;
    public static int toiIters;
    public static int toiMaxIters;
    public static int toiMaxRootIters;
    public static int toiRootIters;
    private final IWorldPool pool;
    private final Distance.SimplexCache cache = new Distance.SimplexCache();
    private final DistanceInput distanceInput = new DistanceInput();
    private final Transform xfA = new Transform();
    private final Transform xfB = new Transform();
    private final DistanceOutput distanceOutput = new DistanceOutput();
    private final SeparationFunction fcn = new SeparationFunction();
    private final int[] indexes = new int[2];
    private final Sweep sweepA = new Sweep();
    private final Sweep sweepB = new Sweep();

    public static class TOIInput {
        public final Distance.DistanceProxy proxyA = new Distance.DistanceProxy();
        public final Distance.DistanceProxy proxyB = new Distance.DistanceProxy();
        public final Sweep sweepA = new Sweep();
        public final Sweep sweepB = new Sweep();
        public float tMax;
    }

    public static class TOIOutput {
        public TOIOutputState state;
        public float t;
    }

    public enum TOIOutputState {
        UNKNOWN,
        FAILED,
        OVERLAPPED,
        TOUCHING,
        SEPARATED
    }

    static {
        $assertionsDisabled = !TimeOfImpact.class.desiredAssertionStatus();
        toiCalls = 0;
        toiIters = 0;
        toiMaxIters = 0;
        toiRootIters = 0;
        toiMaxRootIters = 0;
    }

    public TimeOfImpact(IWorldPool argPool) {
        this.pool = argPool;
    }

    public final void timeOfImpact(TOIOutput output, TOIInput input) {
        float t;
        toiCalls++;
        output.state = TOIOutputState.UNKNOWN;
        output.t = input.tMax;
        Distance.DistanceProxy proxyA = input.proxyA;
        Distance.DistanceProxy proxyB = input.proxyB;
        this.sweepA.set(input.sweepA);
        this.sweepB.set(input.sweepB);
        this.sweepA.normalize();
        this.sweepB.normalize();
        float tMax = input.tMax;
        float totalRadius = proxyA.m_radius + proxyB.m_radius;
        float target = MathUtils.max(0.005f, totalRadius - 0.015f);
        if (!$assertionsDisabled && target <= 0.00125f) {
            throw new AssertionError();
        }
        float t1 = 0.0f;
        int iter = 0;
        this.cache.count = 0;
        this.distanceInput.proxyA = input.proxyA;
        this.distanceInput.proxyB = input.proxyB;
        this.distanceInput.useRadii = false;
        while (true) {
            this.sweepA.getTransform(this.xfA, t1);
            this.sweepB.getTransform(this.xfB, t1);
            this.distanceInput.transformA = this.xfA;
            this.distanceInput.transformB = this.xfB;
            this.pool.getDistance().distance(this.distanceOutput, this.cache, this.distanceInput);
            if (this.distanceOutput.distance <= 0.0f) {
                output.state = TOIOutputState.OVERLAPPED;
                output.t = 0.0f;
                break;
            }
            if (this.distanceOutput.distance < target + 0.00125f) {
                output.state = TOIOutputState.TOUCHING;
                output.t = t1;
                break;
            }
            this.fcn.initialize(this.cache, proxyA, this.sweepA, proxyB, this.sweepB, t1);
            boolean done = false;
            float t2 = tMax;
            int pushBackIter = 0;
            while (true) {
                float s2 = this.fcn.findMinSeparation(this.indexes, t2);
                if (s2 > target + 0.00125f) {
                    output.state = TOIOutputState.SEPARATED;
                    output.t = tMax;
                    done = true;
                    break;
                }
                if (s2 > target - 0.00125f) {
                    t1 = t2;
                    break;
                }
                float s1 = this.fcn.evaluate(this.indexes[0], this.indexes[1], t1);
                if (s1 < target - 0.00125f) {
                    output.state = TOIOutputState.FAILED;
                    output.t = t1;
                    done = true;
                    break;
                }
                if (s1 <= target + 0.00125f) {
                    output.state = TOIOutputState.TOUCHING;
                    output.t = t1;
                    done = true;
                    break;
                }
                int rootIterCount = 0;
                float a1 = t1;
                float a2 = t2;
                while (true) {
                    if ((rootIterCount & 1) == 1) {
                        t = a1 + (((target - s1) * (a2 - a1)) / (s2 - s1));
                    } else {
                        t = 0.5f * (a1 + a2);
                    }
                    float s = this.fcn.evaluate(this.indexes[0], this.indexes[1], t);
                    if (MathUtils.abs(s - target) < 0.00125f) {
                        t2 = t;
                        break;
                    }
                    if (s > target) {
                        a1 = t;
                        s1 = s;
                    } else {
                        a2 = t;
                        s2 = s;
                    }
                    rootIterCount++;
                    toiRootIters++;
                    if (rootIterCount == 50) {
                        break;
                    }
                }
                toiMaxRootIters = MathUtils.max(toiMaxRootIters, rootIterCount);
                pushBackIter++;
                if (pushBackIter == 8) {
                    break;
                }
            }
            iter++;
            toiIters++;
            if (done) {
                break;
            }
            if (iter == 1000) {
                output.state = TOIOutputState.FAILED;
                output.t = t1;
                break;
            }
        }
        toiMaxIters = MathUtils.max(toiMaxIters, iter);
    }
}
