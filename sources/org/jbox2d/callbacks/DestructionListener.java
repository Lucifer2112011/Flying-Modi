package org.jbox2d.callbacks;

import org.jbox2d.dynamics.Fixture;
import org.jbox2d.dynamics.joints.Joint;

/* JADX INFO: loaded from: classes2.dex */
public interface DestructionListener {
    void sayGoodbye(Fixture fixture);

    void sayGoodbye(Joint joint);
}
