package org.jbox2d.dynamics.contacts;

import org.jbox2d.dynamics.Fixture;
import org.jbox2d.pooling.IWorldPool;

/* JADX INFO: loaded from: classes2.dex */
public interface ContactCreator {
    Contact contactCreateFcn(IWorldPool iWorldPool, Fixture fixture, Fixture fixture2);

    void contactDestroyFcn(IWorldPool iWorldPool, Contact contact);
}
