package com.idk.simple;

import com.idk.core.AssetFile;
import com.idk.core.Tag;
import com.idk.parser.ForceEditor;
import com.idk.parser.Save;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Tag("editable")
public class ImageUI extends UI {

    @Save
    @ForceEditor
    private String src = "";
    private String last = "";

    @Override // com.idk.core.ObjectModifier
    public void onStart() {
        List<GraphicInterface> gls = this.targetObject.targetScene.getInterfaces(GraphicInterface.class);
        if (!gls.isEmpty()) {
            gls.get(0).addUI(this);
        }
    }

    @Override // com.idk.core.ObjectModifier
    public void onPreUpdate() {
        if (!this.src.equals(this.last)) {
            this.src = this.last;
            AssetFile file = this.targetObject.targetScene.targetInstance.getAssetFile(this.src);
            if (file != null) {
                List<GraphicInterface> gls = this.targetObject.targetScene.getInterfaces(GraphicInterface.class);
                this.texture = gls.get(0).loadFromCache(this.src);
            }
        }
    }

    @Override // com.idk.core.ObjectModifier
    public void onDelete() {
        super.onDelete();
        List<GraphicInterface> gls = this.targetObject.targetScene.getInterfaces(GraphicInterface.class);
        if (!gls.isEmpty()) {
            gls.get(0).removeUI(this);
        }
    }
}
