package com.idk.core;

import com.idk.math.Transform2D;
import com.idk.parser.Ignore;
import com.idk.parser.Save;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public final class GameObject implements RandomAccess {
    public boolean active = true;
    public String name = "Default";

    @Ignore
    public Scene targetScene = null;

    @Save
    private List<ObjectModifier> objectModifiers = new ArrayList();
    public Transform2D transform = new Transform2D();

    public ObjectModifier[] getModifierArray() {
        return (ObjectModifier[]) this.objectModifiers.toArray(new ObjectModifier[0]);
    }

    public void removeModifier(final ObjectModifier att) {
        if (this.objectModifiers.contains(att)) {
            if (this.targetScene != null && this.targetScene.targetInstance != null) {
                this.targetScene.targetInstance.addFrameEndTask(new Runnable() { // from class: com.idk.core.GameObject.1
                    @Override // java.lang.Runnable
                    public void run() {
                        att.onDelete();
                        GameObject.this.objectModifiers.remove(att);
                    }
                });
            } else {
                this.objectModifiers.remove(att);
            }
        }
    }

    public void addModifier(final ObjectModifier att) {
        if (!this.objectModifiers.contains(att)) {
            att.targetObject = this;
            if (this.targetScene != null && this.targetScene.targetInstance != null) {
                this.targetScene.targetInstance.addFrameEndTask(new Runnable() { // from class: com.idk.core.GameObject.2
                    @Override // java.lang.Runnable
                    public void run() {
                        GameObject.this.objectModifiers.add(att);
                        att.onCreate();
                        att.onStart();
                    }
                });
            } else {
                this.objectModifiers.add(att);
            }
        }
    }

    public void clearAllModifier() {
        if (this.targetScene != null && this.targetScene.targetInstance != null) {
            this.targetScene.targetInstance.addFrameEndTask(new Runnable() { // from class: com.idk.core.GameObject.3
                @Override // java.lang.Runnable
                public void run() {
                    for (ObjectModifier objectModifier : GameObject.this.objectModifiers) {
                        objectModifier.onDelete();
                    }
                    GameObject.this.objectModifiers.clear();
                }
            });
        } else {
            this.objectModifiers.clear();
        }
    }

    public int getAttachmentCount() {
        return this.objectModifiers.size();
    }

    public ObjectModifier getModifierAt(int i) {
        return this.objectModifiers.get(i);
    }

    public <T extends ObjectModifier> List<T> getModifierInstanceOf(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.objectModifiers.size(); i++) {
            ObjectModifier at = this.objectModifiers.get(i);
            if (cls == at.getClass()) {
                arrayList.add(at);
            }
        }
        return arrayList;
    }

    public <T extends ObjectModifier> List<T> getModifierAssignable(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.objectModifiers.size(); i++) {
            ObjectModifier at = this.objectModifiers.get(i);
            if (cls.isAssignableFrom(at.getClass())) {
                arrayList.add(at);
            }
        }
        return arrayList;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }

    public void delete() {
        if (this.targetScene != null) {
            this.targetScene.removeObject(this);
        }
    }
}
