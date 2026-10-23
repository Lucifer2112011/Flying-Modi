package com.idk.simple;

import android.util.Log;
import com.idk.core.AssetFile;
import com.idk.core.ObjectModifier;
import com.idk.core.Tag;
import com.idk.gl.Texture;
import com.idk.math.Color;
import com.idk.math.Vector2;
import com.idk.parser.ForceEditor;
import com.idk.parser.Ignore;
import com.idk.parser.IngoreEditor;
import com.idk.parser.Save;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Tag("editable")
public class SpriteRenderer extends ObjectModifier {

    @IngoreEditor
    @Ignore
    public Texture texture;
    public Color color = Color.WHITE();

    @Save
    @ForceEditor
    private String src = "";
    private String last = "";
    public Vector2 uv_offst = new Vector2(0.0f, 0.0f);
    public Vector2 uv_scale = new Vector2(1.0f, 1.0f);

    @Override // com.idk.core.ObjectModifier
    public void onCreate() {
        super.onCreate();
        List<GraphicInterface> gls = this.targetObject.targetScene.getInterfaces(GraphicInterface.class);
        if (!gls.isEmpty()) {
            gls.get(0).addSprite(this);
        }
        if (!this.last.equals(this.src)) {
            this.last = this.src;
            AssetFile file = this.targetObject.targetScene.targetInstance.getAssetFile(this.src);
            if (file == null) {
                Log.e("Null File", this.src);
            } else if (!gls.isEmpty()) {
                this.texture = gls.get(0).loadFromCache(this.src);
            }
        }
    }

    @Override // com.idk.core.ObjectModifier
    public void onPreUpdate() {
        super.onPreUpdate();
    }

    @Override // com.idk.core.ObjectModifier
    public void onDelete() {
        List<GraphicInterface> gls = this.targetObject.targetScene.getInterfaces(GraphicInterface.class);
        if (!gls.isEmpty()) {
            gls.get(0).removeSprite(this);
            if (this.texture != null) {
                gls.get(0).removeFromCache(this.texture);
            }
        }
    }

    @Override // com.idk.core.ObjectModifier
    public void onUpdate() {
        if (!this.last.equals(this.src)) {
            this.last = this.src;
            AssetFile file = this.targetObject.targetScene.targetInstance.getAssetFile(this.src);
            if (file == null) {
                Log.e("Null File", this.src);
                return;
            }
            List<GraphicInterface> gls = this.targetObject.targetScene.getInterfaces(GraphicInterface.class);
            if (!gls.isEmpty()) {
                this.texture = gls.get(0).loadFromCache(this.src);
            }
        }
    }
}
