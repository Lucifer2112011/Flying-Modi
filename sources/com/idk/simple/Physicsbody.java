package com.idk.simple;

import com.idk.core.ObjectModifier;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Physicsbody extends ObjectModifier {
    private PhysicsInterface physicsInterface;

    public PhysicsInterface getAvailableInterface() {
        if (this.physicsInterface == null) {
            List<PhysicsInterface> ls = this.targetObject.targetScene.getInterfaces(PhysicsInterface.class);
            if (!ls.isEmpty()) {
                this.physicsInterface = ls.get(0);
            }
        }
        return this.physicsInterface;
    }

    public List<Physicsbody> getCollisionList() {
        if (getAvailableInterface() != null) {
            if (getClass() == Rigidbody.class) {
                return this.physicsInterface.getCollisionList((Rigidbody) this);
            }
            if (getClass() == Staticbody.class) {
                return this.physicsInterface.getCollisionList((Staticbody) this);
            }
        }
        return new ArrayList();
    }
}
