package com.idk.simple;

import com.idk.core.EngineInterface;
import com.idk.core.ObjectModifier;
import com.idk.core.StateListener;
import com.idk.core.Tag;
import com.idk.math.Matrix;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Tag("editable")
public class OrthoCamera extends ObjectModifier implements StateListener {
    public float range = 50.0f;
    private float left = -100.0f;
    private float right = 100.0f;
    private float top = 100.0f;
    private float bottom = -100.0f;
    public Matrix projection = new Matrix();
    public Matrix viewMatrix = new Matrix();
    public boolean offscreen = false;

    @Override // com.idk.core.ObjectModifier
    public void onStart() {
        List<GraphicInterface> gls = this.targetObject.targetScene.getInterfaces(GraphicInterface.class);
        if (!gls.isEmpty()) {
            gls.get(0).registerCamera(this);
        }
    }

    @Override // com.idk.core.ObjectModifier
    public void onPreUpdate() {
        EngineInterface ins = this.targetObject.targetScene.targetInstance;
        float r = ins.getLastHeight() / ins.getLastWidth();
        this.left = -this.range;
        this.right = this.range;
        this.top = -(this.range * r);
        this.bottom = this.range * r;
        this.viewMatrix.reset();
        this.viewMatrix.translate(this.targetObject.transform.position.x, this.targetObject.transform.position.y, 0.0f);
        this.viewMatrix.inverse();
        this.projection.reset();
        this.projection.ortho(this.left, this.right, this.top, this.bottom, -100.0f, 100.0f);
    }

    @Override // com.idk.core.StateListener
    public void onPause() {
    }

    @Override // com.idk.core.StateListener
    public void onResume() {
    }

    @Override // com.idk.core.StateListener
    public void onOrientationChange(int state) {
    }

    @Override // com.idk.core.StateListener
    public void onSurfaceChange(int width, int height) {
    }

    @Override // com.idk.core.ObjectModifier
    public void onDelete() {
        List<GraphicInterface> gls = this.targetObject.targetScene.getInterfaces(GraphicInterface.class);
        if (!gls.isEmpty()) {
            gls.get(0).removeCamera(this);
        }
    }
}
