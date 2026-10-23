package com.idk.simple;

import com.idk.core.Tag;
import com.idk.math.Vector2;
import com.idk.parser.ForceEditor;

/* JADX INFO: loaded from: classes2.dex */
@Tag("editable")
public class Rigidbody extends Physicsbody {

    @ForceEditor
    private boolean calculatePhysics = false;
    private Vector2 lastSize = new Vector2();

    @Override // com.idk.core.ObjectModifier
    public void onCreate() {
        super.onCreate();
        PhysicsInterface physicsInterface = getAvailableInterface();
        if (physicsInterface != null) {
            physicsInterface.addRigidbody(this);
        }
    }

    @Override // com.idk.core.ObjectModifier
    public void onPreUpdate() {
        super.onPreUpdate();
    }

    @Override // com.idk.core.ObjectModifier
    public void onPostUpdate() {
        super.onPostUpdate();
        if (getAvailableInterface() == null || !this.targetObject.targetScene.targetInstance.hasKey("edit_mode")) {
            return;
        }
        if (this.lastSize.x != this.targetObject.transform.scale.x || this.lastSize.y != this.targetObject.transform.scale.y) {
            this.lastSize.set(this.targetObject.transform.scale.x, this.targetObject.transform.scale.y);
            getAvailableInterface().updateRigidbodySize(this);
        }
    }

    @Override // com.idk.core.ObjectModifier
    public void onDelete() {
        super.onDelete();
        PhysicsInterface physicsInterface = getAvailableInterface();
        if (physicsInterface != null) {
            physicsInterface.removeRigidbody(this);
        }
    }

    public void applyForce(Vector2 vector2) {
        PhysicsInterface physicsInterface = getAvailableInterface();
        if (physicsInterface != null) {
            physicsInterface.addForce(this, vector2);
        }
    }

    public Vector2 getLinearVelocity() {
        PhysicsInterface physicsInterface = getAvailableInterface();
        if (physicsInterface != null) {
            return physicsInterface.getLinearVelocity(this);
        }
        return null;
    }
}
