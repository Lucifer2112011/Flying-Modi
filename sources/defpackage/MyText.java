package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.text.TextPaint;
import com.idk.core.ObjectModifier;
import com.idk.gl.Texture;
import com.idk.parser.ForceEditor;
import com.idk.parser.Save;
import com.idk.simple.SpriteRenderer;

/* JADX INFO: loaded from: classes.dex */
public class MyText extends ObjectModifier {
    private Canvas canvas;
    private Bitmap map;
    private TextPaint paint;

    @Save
    @ForceEditor
    private String text = "hello world";
    private Texture texture;

    @Override // com.idk.core.ObjectModifier
    public void onStart() {
        super.onStart();
        this.texture = new Texture();
        ((SpriteRenderer) this.targetObject.getModifierAssignable(SpriteRenderer.class).get(0)).texture = this.texture;
        TextPaint textPaint = new TextPaint();
        this.paint = textPaint;
        textPaint.setTextSize(15.0f);
        this.paint.setColor(-1);
        setText();
    }

    public void setText(String str) {
        this.text = str;
    }

    public String getText() {
        return this.text;
    }

    public void setText() {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(400, 50, Bitmap.Config.ARGB_8888);
        this.map = bitmapCreateBitmap;
        bitmapCreateBitmap.eraseColor(0);
        Canvas canvas = new Canvas(this.map);
        this.canvas = canvas;
        canvas.drawText(this.text, 0.0f, 25.0f, this.paint);
        this.texture.setData(this.map);
    }

    @Override // com.idk.core.ObjectModifier
    public void onPreUpdate() {
        super.onPreUpdate();
        setText("🪷 " + (((int) this.targetObject.transform.position.x) + 177));
        setText();
    }
}
