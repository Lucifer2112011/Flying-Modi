package org.jbox2d.pooling.normal;

/* JADX INFO: loaded from: classes2.dex */
public abstract class OrderedStack<E> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Object[] container;
    private int index;
    private final Object[] pool;
    private final int size;

    protected abstract E newInstance();

    static {
        $assertionsDisabled = !OrderedStack.class.desiredAssertionStatus();
    }

    public OrderedStack(int argStackSize, int argContainerSize) {
        this.size = argStackSize;
        this.pool = new Object[argStackSize];
        for (int i = 0; i < argStackSize; i++) {
            this.pool[i] = newInstance();
        }
        this.index = 0;
        this.container = new Object[argContainerSize];
    }

    public final E pop() {
        if (!$assertionsDisabled && this.index >= this.size) {
            throw new AssertionError("End of stack reached, there is probably a leak somewhere");
        }
        Object[] objArr = this.pool;
        int i = this.index;
        this.index = i + 1;
        return (E) objArr[i];
    }

    public final E[] pop(int i) {
        if (!$assertionsDisabled && this.index + i >= this.size) {
            throw new AssertionError("End of stack reached, there is probably a leak somewhere");
        }
        if (!$assertionsDisabled && i > this.container.length) {
            throw new AssertionError("Container array is too small");
        }
        System.arraycopy(this.pool, this.index, this.container, 0, i);
        this.index += i;
        return (E[]) this.container;
    }

    public final void push(int argNum) {
        this.index -= argNum;
        if (!$assertionsDisabled && this.index < 0) {
            throw new AssertionError("Beginning of stack reached, push/pops are unmatched");
        }
    }
}
