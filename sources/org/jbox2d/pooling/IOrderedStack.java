package org.jbox2d.pooling;

/* JADX INFO: loaded from: classes2.dex */
public interface IOrderedStack<E> {
    E pop();

    E[] pop(int i);

    void push(int i);
}
