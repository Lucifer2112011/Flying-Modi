package com.idk.simple;

import com.idk.core.Tag;
import com.idk.math.Vector2;

/* JADX INFO: loaded from: classes2.dex */
@Tag("editable")
public class Staticbody extends Physicsbody {
    private PhysicsInterface physicsInterface;
    private Vector2 lastSize = new Vector2();
    public boolean isGhost = false;

    @Override // com.idk.core.ObjectModifier
    public void onCreate() {
        super.onCreate();
        this.physicsInterface = getAvailableInterface();
        if (this.physicsInterface != null) {
            this.physicsInterface.addStaticbody(this);
            this.lastSize.set(this.targetObject.transform.scale.x, this.targetObject.transform.scale.y);
        }
    }

    @Override // com.idk.core.ObjectModifier
    public void onPostUpdate() {
        super.onPostUpdate();
        if (this.physicsInterface == null || !this.targetObject.targetScene.targetInstance.hasKey("edit_mode")) {
            return;
        }
        if (this.lastSize.x != this.targetObject.transform.scale.x || this.lastSize.y != this.targetObject.transform.scale.y) {
            this.lastSize.set(this.targetObject.transform.scale.x, this.targetObject.transform.scale.y);
            this.physicsInterface.updateStaticbodySize(this);
        }
    }

    @Override // com.idk.core.ObjectModifier
    public void onDelete() {
        super.onDelete();
        if (this.physicsInterface != null) {
            this.physicsInterface.removeStaticbody(this);
        }
    }
}
