package org.jbox2d.pooling.normal;

import org.jbox2d.pooling.IDynamicStack;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MutableStack<E> implements IDynamicStack<E> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private int index;
    private int size;
    private Object[] stack = null;

    protected abstract E newInstance();

    static {
        $assertionsDisabled = !MutableStack.class.desiredAssertionStatus();
    }

    public MutableStack(int argInitSize) {
        this.index = 0;
        this.index = 0;
        extendStack(argInitSize);
    }

    private void extendStack(int argSize) {
        Object[] newStack = new Object[argSize];
        if (this.stack != null) {
            System.arraycopy(this.stack, 0, newStack, 0, this.size);
        }
        for (int i = 0; i < newStack.length; i++) {
            newStack[i] = newInstance();
        }
        this.stack = newStack;
        this.size = newStack.length;
    }

    @Override // org.jbox2d.pooling.IDynamicStack
    public final E pop() {
        if (this.index >= this.size) {
            extendStack(this.size * 2);
        }
        Object[] objArr = this.stack;
        int i = this.index;
        this.index = i + 1;
        return (E) objArr[i];
    }

    @Override // org.jbox2d.pooling.IDynamicStack
    public final void push(E argObject) {
        if (!$assertionsDisabled && this.index <= 0) {
            throw new AssertionError();
        }
        Object[] objArr = this.stack;
        int i = this.index - 1;
        this.index = i;
        objArr[i] = argObject;
    }
}
