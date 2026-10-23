package org.jbox2d.pooling.stacks;

/* JADX INFO: loaded from: classes2.dex */
public class DynamicIntStack {
    static final /* synthetic */ boolean $assertionsDisabled;
    private int position = 0;
    private int size;
    private int[] stack;

    static {
        $assertionsDisabled = !DynamicIntStack.class.desiredAssertionStatus();
    }

    public DynamicIntStack(int initialSize) {
        this.stack = new int[initialSize];
        this.size = initialSize;
    }

    public void reset() {
        this.position = 0;
    }

    public int pop() {
        if (!$assertionsDisabled && this.position <= 0) {
            throw new AssertionError();
        }
        int[] iArr = this.stack;
        int i = this.position - 1;
        this.position = i;
        return iArr[i];
    }

    public void push(int i) {
        if (this.position == this.size) {
            int[] old = this.stack;
            this.stack = new int[this.size * 2];
            this.size = this.stack.length;
            System.arraycopy(old, 0, this.stack, 0, old.length);
        }
        int[] iArr = this.stack;
        int i2 = this.position;
        this.position = i2 + 1;
        iArr[i2] = i;
    }

    public int getCount() {
        return this.position;
    }
}
