package com.idk.core;

import com.idk.parser.Ignore;
import com.idk.parser.IngoreEditor;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ObjectModifier {
    public boolean active = true;

    @IngoreEditor
    @Ignore
    public GameObject targetObject = null;

    public void onStart() {
    }

    public void onCreate() {
    }

    public void onPreUpdate() {
    }

    public void onUpdate() {
    }

    public void onPostUpdate() {
    }

    public void onDelete() {
    }

    public void onDisabledRepeat() {
    }

    public final void detete() {
        if (this.targetObject != null) {
            this.targetObject.removeModifier(this);
            this.targetObject = null;
        }
    }

    public JSONObject toJSON() {
        return null;
    }
}
