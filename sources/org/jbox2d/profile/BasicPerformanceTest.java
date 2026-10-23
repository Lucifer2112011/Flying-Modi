package org.jbox2d.profile;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BasicPerformanceTest {
    private final int iters;
    private final int numTests;
    protected final long[] times;

    public abstract String getTestName(int i);

    public abstract void runTest(int i);

    public BasicPerformanceTest(int numTests, int iters) {
        this.numTests = numTests;
        this.iters = iters;
        this.times = new long[numTests];
        for (int i = 0; i < numTests; i++) {
            this.times[i] = 0;
        }
    }

    public double getTestTime(int testNum) {
        return (this.times[testNum] * 1.0d) / 1000000.0d;
    }

    public void go() {
        for (int i = 0; i < this.iters; i++) {
            println(((((double) i) * 100.0d) / ((double) this.iters)) + "%");
            for (int test = 0; test < this.numTests; test++) {
                long prev = System.nanoTime();
                runTest(test);
                long after = System.nanoTime();
                long[] jArr = this.times;
                jArr[test] = jArr[test] + (after - prev);
            }
        }
        for (int test2 = 0; test2 < this.numTests; test2++) {
            long[] jArr2 = this.times;
            jArr2[test2] = jArr2[test2] / ((long) this.iters);
        }
        printResults();
    }

    public void printResults() {
        printf("%-20s%20s%20s\n", "Test Name", "Milliseconds Avg", "FPS (optional)");
        for (int i = 0; i < this.numTests; i++) {
            double milliseconds = (this.times[i] * 1.0d) / 1000000.0d;
            if (getFrames(i) != 0) {
                double fps = (((double) getFrames(i)) * 1000.0d) / milliseconds;
                printf("%-20s%20.4f%20.4f\n", getTestName(i), Double.valueOf(milliseconds), Double.valueOf(fps));
            } else {
                printf("%-20s%20.4f\n", getTestName(i), Double.valueOf(milliseconds));
            }
        }
    }

    public int getFrames(int testNum) {
        return 0;
    }

    public void println(String s) {
        System.out.println(s);
    }

    public void printf(String s, Object... args) {
        System.out.printf(s, args);
    }
}
