package com.idk.core;

import com.idk.parser.Ignore;
import com.idk.parser.Save;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public final class Scene implements RandomAccess {

    @Save
    private List<GameObject> objects = new ArrayList();

    @Save
    private List<SceneInterface> interfaces = new ArrayList();

    @Ignore
    public EngineInterface targetInstance = null;
    public boolean active = true;

    public GameObject[] getObjectArray() {
        return (GameObject[]) this.objects.toArray(new GameObject[0]);
    }

    public SceneInterface[] getInterfaceArray() {
        return (SceneInterface[]) this.interfaces.toArray(new SceneInterface[0]);
    }

    public <T extends SceneInterface> List<T> getInterfaces(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.interfaces.size(); i++) {
            SceneInterface sceneInterface = this.interfaces.get(i);
            if (sceneInterface.getClass() == cls) {
                arrayList.add(sceneInterface);
            }
        }
        return arrayList;
    }

    public GameObject getObjectAt(int idx) {
        return this.objects.get(idx);
    }

    public int getObjectCount() {
        return this.objects.size();
    }

    public void insertObject(final GameObject object) {
        if (!this.objects.contains(object)) {
            if (this.targetInstance != null) {
                this.targetInstance.addFrameEndTask(new Runnable() { // from class: com.idk.core.Scene.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Scene.this.objects.add(object);
                        object.targetScene = Scene.this;
                        ObjectModifier[] array = object.getModifierArray();
                        for (ObjectModifier objectModifier : array) {
                            try {
                                objectModifier.onCreate();
                            } catch (Exception e) {
                                e.printStackTrace(System.out);
                            }
                        }
                        for (ObjectModifier objectModifier2 : array) {
                            try {
                                objectModifier2.onStart();
                            } catch (Exception e2) {
                                e2.printStackTrace(System.out);
                            }
                        }
                    }
                });
            } else {
                this.objects.add(object);
            }
        }
    }

    public void insertInterface(final SceneInterface object) {
        if (!this.interfaces.contains(object)) {
            if (this.targetInstance != null) {
                this.targetInstance.addFrameEndTask(new Runnable() { // from class: com.idk.core.Scene.2
                    @Override // java.lang.Runnable
                    public void run() {
                        object.targetScene = Scene.this;
                        Scene.this.interfaces.add(object);
                        try {
                            object.onCreate();
                        } catch (Exception e) {
                            e.printStackTrace(System.out);
                        }
                        try {
                            object.onStart();
                        } catch (Exception e2) {
                            e2.printStackTrace(System.out);
                        }
                    }
                });
            } else {
                this.interfaces.add(object);
            }
        }
    }

    public void removeObject(final GameObject object) {
        if (this.objects.contains(object)) {
            if (this.targetInstance != null) {
                this.targetInstance.addFrameEndTask(new Runnable() { // from class: com.idk.core.Scene.3
                    @Override // java.lang.Runnable
                    public void run() {
                        ObjectModifier[] array = object.getModifierArray();
                        for (ObjectModifier objectModifier : array) {
                            objectModifier.onDelete();
                        }
                        Scene.this.objects.remove(object);
                    }
                });
            } else {
                this.objects.remove(object);
            }
        }
    }

    public void removeInterface(final SceneInterface object) {
        if (this.interfaces.contains(object)) {
            if (this.targetInstance != null) {
                this.targetInstance.addFrameEndTask(new Runnable() { // from class: com.idk.core.Scene.4
                    @Override // java.lang.Runnable
                    public void run() {
                        object.onDelete();
                        Scene.this.interfaces.remove(object);
                    }
                });
            } else {
                this.interfaces.remove(object);
            }
        }
    }

    public void removeAllObject() {
        if (this.targetInstance != null) {
            this.targetInstance.addFrameEndTask(new Runnable() { // from class: com.idk.core.Scene.5
                @Override // java.lang.Runnable
                public void run() {
                    for (GameObject object : Scene.this.objects) {
                        ObjectModifier[] array = object.getModifierArray();
                        for (ObjectModifier objectModifier : array) {
                            objectModifier.onDelete();
                        }
                    }
                }
            });
        } else {
            this.objects.clear();
        }
    }

    public void removeAllInterface() {
    }
}
