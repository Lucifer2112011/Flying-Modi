package org.jbox2d.callbacks;

import org.jbox2d.dynamics.Filter;
import org.jbox2d.dynamics.Fixture;

/* JADX INFO: loaded from: classes2.dex */
public class ContactFilter {
    public boolean shouldCollide(Fixture fixtureA, Fixture fixtureB) {
        Filter filterA = fixtureA.getFilterData();
        Filter filterB = fixtureB.getFilterData();
        if (filterA.groupIndex == filterB.groupIndex && filterA.groupIndex != 0) {
            return filterA.groupIndex > 0;
        }
        boolean collide = ((filterA.maskBits & filterB.categoryBits) == 0 || (filterA.categoryBits & filterB.maskBits) == 0) ? false : true;
        return collide;
    }
}
