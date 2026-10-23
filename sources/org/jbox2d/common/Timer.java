package org.jbox2d.common;

/* JADX INFO: loaded from: classes2.dex */
public class Timer {
    private long resetNanos;

    public Timer() {
        reset();
    }

    public void reset() {
        this.resetNanos = System.nanoTime();
    }

    public float getMilliseconds() {
        return (((System.nanoTime() - this.resetNanos) / 1000) * 1.0f) / 1000.0f;
    }
}
