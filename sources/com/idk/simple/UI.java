package com.idk.simple;

import com.idk.core.ObjectModifier;
import com.idk.core.Tag;
import com.idk.core.TouchData;
import com.idk.gl.Texture;
import com.idk.math.Color;
import com.idk.math.Rect;
import com.idk.math.Vector2;

/* JADX INFO: loaded from: classes2.dex */
@Tag("editable")
public class UI extends ObjectModifier {
    public Texture texture;
    public MeasureUnit positionUnit = MeasureUnit.PIXEL;
    public MeasureUnit scaleUnit = MeasureUnit.MIN_SCREEN;
    public OriginType originType = OriginType.CENTER;
    public Color color = new Color(1.0f, 1.0f, 1.0f, 1.0f);
    private Rect rect = new Rect();

    public enum MeasureUnit {
        PERCENTAGE,
        PIXEL,
        MIN_SCREEN,
        MAX_SCREEN,
        WIDTH,
        HEIGHT
    }

    public enum OriginType {
        TOP_LEFT,
        TOP_RIGHT,
        BOTTOM_LEFT,
        BOTTOM_RIGHT,
        CENTER
    }

    public void calculateScreenSpace() {
        int w = this.targetObject.targetScene.targetInstance.getLastWidth();
        int h = this.targetObject.targetScene.targetInstance.getLastHeight();
        float sx = 100.0f;
        float sy = 100.0f;
        switch (this.scaleUnit) {
            case PERCENTAGE:
                sx = w * this.targetObject.transform.scale.x * 0.01f;
                sy = h * this.targetObject.transform.scale.y * 0.01f;
                break;
            case PIXEL:
                sx = this.targetObject.transform.scale.x;
                sy = this.targetObject.transform.scale.y;
                break;
            case MIN_SCREEN:
                float min = Math.min(w, h);
                sx = min * this.targetObject.transform.scale.x * 0.01f;
                sy = min * this.targetObject.transform.scale.y * 0.01f;
                break;
            case MAX_SCREEN:
                float max = Math.max(w, h);
                sx = max * this.targetObject.transform.scale.x * 0.01f;
                sy = max * this.targetObject.transform.scale.y * 0.01f;
                break;
            case WIDTH:
                sx = w * this.targetObject.transform.scale.x * 0.01f;
                sy = w * this.targetObject.transform.scale.y * 0.01f;
                break;
            case HEIGHT:
                sx = h * this.targetObject.transform.scale.x * 0.01f;
                sy = h * this.targetObject.transform.scale.y * 0.01f;
                break;
        }
        float px = 0.0f;
        float py = 0.0f;
        switch (this.positionUnit) {
            case PERCENTAGE:
                px = w * this.targetObject.transform.position.x * 0.01f;
                py = h * this.targetObject.transform.position.y * 0.01f;
                break;
            case PIXEL:
                px = this.targetObject.transform.position.x;
                py = this.targetObject.transform.position.y;
                break;
            case MIN_SCREEN:
                float min2 = Math.min(w, h);
                px = min2 * this.targetObject.transform.position.x;
                py = min2 * this.targetObject.transform.position.y;
                break;
            case MAX_SCREEN:
                float max2 = Math.max(w, h);
                px = max2 * this.targetObject.transform.position.x;
                py = max2 * this.targetObject.transform.position.y;
                break;
            case WIDTH:
                float max3 = w;
                px = max3 * this.targetObject.transform.position.x;
                py = max3 * this.targetObject.transform.position.y;
                break;
            case HEIGHT:
                float max4 = h;
                px = max4 * this.targetObject.transform.position.x;
                py = max4 * this.targetObject.transform.position.y;
                break;
        }
        switch (this.originType) {
            case TOP_LEFT:
                this.rect.bottom = py - sy;
                this.rect.top = py;
                this.rect.left = px;
                this.rect.right = px + sx;
                break;
            case TOP_RIGHT:
                this.rect.bottom = py - sy;
                this.rect.top = py;
                this.rect.left = px - sx;
                this.rect.right = px;
                break;
            case BOTTOM_LEFT:
                this.rect.bottom = py;
                this.rect.top = py + sx;
                this.rect.left = px;
                this.rect.right = px + sx;
                break;
            case BOTTOM_RIGHT:
                this.rect.bottom = py;
                this.rect.top = py + px;
                this.rect.left = px - sx;
                this.rect.right = px;
                break;
            case CENTER:
                float hsx = sx * 0.5f;
                float hsy = sy * 0.5f;
                this.rect.right = px + hsx;
                this.rect.left = px - hsx;
                this.rect.top = py + hsy;
                this.rect.bottom = py - hsy;
                break;
        }
    }

    public void onDown(TouchData ts) {
    }

    public void onDrag(TouchData ts) {
    }

    public void onUp(TouchData ts) {
    }

    public boolean calculateTouch() {
        for (int i = 0; i < this.targetObject.targetScene.targetInstance.getTouchManager().getTouchCount(); i++) {
            TouchData touchData = this.targetObject.targetScene.targetInstance.getTouchManager().getTouchAt(i);
            if (this.rect.isInside(new Vector2(touchData.currentX, touchData.currentY))) {
                return true;
            }
        }
        return false;
    }

    public Rect getGlobalRect() {
        return this.rect;
    }
}
