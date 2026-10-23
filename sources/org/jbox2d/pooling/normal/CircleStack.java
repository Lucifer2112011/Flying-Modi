package org.jbox2d.pooling.normal;

import org.jbox2d.pooling.IOrderedStack;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CircleStack<E> implements IOrderedStack<E> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Object[] container;
    private int index;
    private final Object[] pool;
    private final int size;

    protected abstract E newInstance();

    static {
        $assertionsDisabled = !CircleStack.class.desiredAssertionStatus();
    }

    public CircleStack(int argStackSize, int argContainerSize) {
        this.size = argStackSize;
        this.pool = new Object[argStackSize];
        for (int i = 0; i < argStackSize; i++) {
            this.pool[i] = newInstance();
        }
        this.index = 0;
        this.container = new Object[argContainerSize];
    }

    @Override // org.jbox2d.pooling.IOrderedStack
    public final E pop() {
        this.index++;
        if (this.index >= this.size) {
            this.index = 0;
        }
        return (E) this.pool[this.index];
    }

    @Override // org.jbox2d.pooling.IOrderedStack
    public final E[] pop(int i) {
        if (!$assertionsDisabled && i > this.container.length) {
            throw new AssertionError("Container array is too small");
        }
        if (this.index + i < this.size) {
            System.arraycopy(this.pool, this.index, this.container, 0, i);
            this.index += i;
        } else {
            int i2 = (this.index + i) - this.size;
            System.arraycopy(this.pool, this.index, this.container, 0, i - i2);
            System.arraycopy(this.pool, 0, this.container, i - i2, i2);
            this.index = i2;
        }
        return (E[]) this.container;
    }

    @Override // org.jbox2d.pooling.IOrderedStack
    public void push(int argNum) {
    }
}
