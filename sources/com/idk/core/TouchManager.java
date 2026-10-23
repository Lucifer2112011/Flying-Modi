package com.idk.core;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TouchManager {
    public abstract void addTouchListener(TouchListener touchListener);

    public abstract void clearAllListener();

    public abstract TouchData getTouchAt(int i);

    public abstract int getTouchCount();

    public abstract TouchListener getTouchListener(int i);

    public abstract int getTouchListenerCount();

    public abstract void removeTouchListener(TouchListener touchListener);
}
