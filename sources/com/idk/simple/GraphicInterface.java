package com.idk.simple;

import android.opengl.GLES30;
import android.util.ArrayMap;
import com.idk.core.AssetFile;
import com.idk.core.SceneInterface;
import com.idk.core.StateListener;
import com.idk.core.Tag;
import com.idk.core.TouchData;
import com.idk.core.TouchListener;
import com.idk.gl.Texture;
import com.idk.gl.VertexBufferObject;
import com.idk.math.Matrix;
import com.idk.math.Rect;
import com.idk.math.Vector2;
import com.idk.math.Vector4;
import java.util.ArrayList;
import java.util.List;
import org.jbox2d.dynamics.contacts.ContactSolver;

/* JADX INFO: loaded from: classes2.dex */
@Tag("editable")
public class GraphicInterface extends SceneInterface implements StateListener, TouchListener {
    private VertexBufferObject indice;
    private VertexBufferObject position;
    private Matrix projection;
    private SpriteShaderProgram spriteShaderProgram;
    private Matrix stage;
    private VertexBufferObject texcoordObject;
    private UIShaderProgram uiShaderProgram;
    private VertexBufferObject ui_position;
    private Matrix view;
    private Texture white;
    private final List<SpriteRenderer> spriteRendererList = new ArrayList();
    private final List<OrthoCamera> cameras = new ArrayList();
    private final List<UI> imageUIS = new ArrayList();
    private boolean renderUI = true;
    private boolean renderObject = true;
    private boolean isEditMode = false;
    private Matrix uiMatrix = new Matrix();
    private ArrayMap<String, TextureCacheUnit> textureArrayMap = new ArrayMap<>();

    @Override // com.idk.core.SceneInterface
    public void onCreate() {
        super.onCreate();
        System.out.println("onCreate Begin");
        this.stage = new Matrix();
        this.stage.reset();
        this.spriteShaderProgram = new SpriteShaderProgram();
        this.spriteShaderProgram.compile();
        this.spriteShaderProgram.printError();
        this.white = new Texture(1.0f, 1.0f, 1.0f);
        this.uiShaderProgram = new UIShaderProgram();
        this.uiShaderProgram.compile();
        this.uiShaderProgram.printError();
        this.position = VertexBufferObject.createVertexBuffer(false);
        this.position.setData(new float[]{-1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f});
        this.ui_position = VertexBufferObject.createVertexBuffer(false);
        this.ui_position.setData(new float[]{0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f});
        this.texcoordObject = VertexBufferObject.createVertexBuffer(false);
        this.texcoordObject.setData(new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f});
        this.indice = VertexBufferObject.createIndexBuffer(false);
        this.indice.setData(new short[]{0, 2, 3, 0, 1, 2});
        for (String str : this.spriteShaderProgram.getAttributeList()) {
            System.out.println(str);
        }
        this.targetScene.targetInstance.getTouchManager().addTouchListener(this);
        this.isEditMode = this.targetScene.targetInstance.hasKey("edit_mode");
        if (this.isEditMode) {
            this.projection = (Matrix) this.targetScene.targetInstance.getUserData("e_projection");
            this.view = (Matrix) this.targetScene.targetInstance.getUserData("e_view");
        }
        System.out.println("Graphic OnCreate");
    }

    public void setRenderObject(boolean renderObject) {
        this.renderObject = renderObject;
    }

    public void setRenderUI(boolean renderUI) {
        this.renderUI = renderUI;
    }

    @Override // com.idk.core.SceneInterface
    public void onPreUpdate() {
        super.onPreUpdate();
    }

    private boolean cull(Matrix projectM, Matrix viewM, float[] model) {
        Matrix modelM = new Matrix(model);
        Vector4 v1 = new Vector4(-1.0f, 1.0f, 1.0f, 1.0f);
        Vector4 v2 = new Vector4(-1.0f, -1.0f, 1.0f, 1.0f);
        Vector4 v3 = new Vector4(1.0f, -1.0f, 1.0f, 1.0f);
        Vector4 v4 = new Vector4(1.0f, 1.0f, 1.0f, 1.0f);
        modelM.multiply(v1);
        modelM.multiply(v2);
        modelM.multiply(v3);
        modelM.multiply(v4);
        viewM.multiply(v1);
        viewM.multiply(v2);
        viewM.multiply(v3);
        viewM.multiply(v4);
        projectM.multiply(v1);
        projectM.multiply(v2);
        projectM.multiply(v3);
        projectM.multiply(v4);
        v1.x /= v1.w;
        v2.x /= v2.w;
        v3.x /= v3.w;
        v4.x /= v4.w;
        if (v1.x < -1.0f && v2.x < -1.0f && v3.x < -1.0f && v4.x < -1.0f) {
            return false;
        }
        if (v1.x > 1.0f && v2.x > 1.0f && v3.x > 1.0f && v4.x > 1.0f) {
            return false;
        }
        if (v1.y >= -1.0f || v2.y >= -1.0f || v3.y >= -1.0f || v4.y >= -1.0f) {
            return v1.y <= 1.0f || v2.y <= 1.0f || v3.y <= 1.0f || v4.y <= 1.0f;
        }
        return false;
    }

    @Override // com.idk.core.SceneInterface
    public void onUpdate() {
        GLES30.glViewport(0, 0, this.targetScene.targetInstance.getLastWidth(), this.targetScene.targetInstance.getLastHeight());
        if (!this.spriteRendererList.isEmpty() && this.renderObject) {
            if (this.isEditMode) {
                this.spriteShaderProgram.bind();
                this.spriteShaderProgram.setMatrix("projectionMatrix", this.projection.val);
                this.spriteShaderProgram.setMatrix("viewMatrix", this.view.val);
                this.spriteShaderProgram.setAttributeBuffer("position", this.position, 3);
                this.spriteShaderProgram.setAttributeBuffer("a_uv", this.texcoordObject, 2);
                this.spriteShaderProgram.setInt("uv_change", 1);
                for (SpriteRenderer sp : this.spriteRendererList) {
                    if (sp.targetObject.active && sp.active && cull(this.projection, this.view, sp.targetObject.transform.getMatrixArray())) {
                        this.spriteShaderProgram.setMatrix("modelMatrix", sp.targetObject.transform.getMatrixArray());
                        this.spriteShaderProgram.setVector4("color", sp.color.toArray());
                        this.spriteShaderProgram.setInt("uv_change", 1);
                        this.spriteShaderProgram.setVector2("offset", sp.uv_offst.toArray());
                        this.spriteShaderProgram.setVector2("scale", sp.uv_scale.toArray());
                        if (sp.texture != null) {
                            sp.texture.active(0);
                        } else {
                            this.white.active(0);
                        }
                        this.spriteShaderProgram.setInt("tex", 0);
                        this.spriteShaderProgram.draw(this.indice);
                    }
                }
                this.spriteShaderProgram.unbind();
            } else {
                for (OrthoCamera camera : this.cameras) {
                    if (camera.active && !camera.offscreen) {
                        this.spriteShaderProgram.bind();
                        this.spriteShaderProgram.setMatrix("projectionMatrix", camera.projection.val);
                        this.spriteShaderProgram.setMatrix("viewMatrix", camera.viewMatrix.val);
                        this.spriteShaderProgram.setAttributeBuffer("position", this.position, 3);
                        this.spriteShaderProgram.setAttributeBuffer("a_uv", this.texcoordObject, 2);
                        for (SpriteRenderer sp2 : this.spriteRendererList) {
                            if (sp2.targetObject.active && sp2.active && cull(camera.projection, camera.projection, sp2.targetObject.transform.getMatrixArray())) {
                                this.spriteShaderProgram.setMatrix("modelMatrix", sp2.targetObject.transform.getMatrixArray());
                                this.spriteShaderProgram.setVector4("color", sp2.color.toArray());
                                this.spriteShaderProgram.setInt("uv_change", 1);
                                this.spriteShaderProgram.setVector2("offset", sp2.uv_offst.toArray());
                                this.spriteShaderProgram.setVector2("scale", sp2.uv_scale.toArray());
                                if (sp2.texture != null) {
                                    sp2.texture.active(0);
                                } else {
                                    this.white.active(0);
                                }
                                this.spriteShaderProgram.setInt("tex", 0);
                                this.spriteShaderProgram.draw(this.indice);
                            }
                        }
                        this.spriteShaderProgram.unbind();
                    }
                }
            }
        }
        GLES30.glClear(ContactSolver.INITIAL_NUM_CONSTRAINTS);
        this.stage.reset();
        this.stage.ortho(0.0f, this.targetScene.targetInstance.getLastWidth(), 0.0f, this.targetScene.targetInstance.getLastHeight(), -100.0f, 100.0f);
        this.uiShaderProgram.bind();
        this.uiShaderProgram.setMatrix("projection", this.stage.val);
        this.uiShaderProgram.setAttributeBuffer("a_pos", this.ui_position, 3);
        if (this.renderUI) {
            for (UI ui : this.imageUIS) {
                if (ui.targetObject.active && ui.active) {
                    ui.calculateScreenSpace();
                    Rect rect = ui.getGlobalRect();
                    this.uiMatrix.reset();
                    Vector2 size = rect.getSize();
                    Vector2 pos = rect.getPosition();
                    this.uiMatrix.translate(pos.x, pos.y, ui.targetObject.transform.depth);
                    this.uiMatrix.scale(size.x, size.y, 1.0f);
                    this.uiShaderProgram.setVector4("color", ui.color.toArray());
                    this.uiShaderProgram.setMatrix("model", this.uiMatrix.val);
                    this.uiShaderProgram.draw(this.indice);
                }
            }
        }
    }

    @Override // com.idk.core.SceneInterface
    public void onDelete() {
        this.spriteShaderProgram.close();
    }

    public void registerCamera(OrthoCamera camera) {
        this.cameras.add(camera);
    }

    public void removeCamera(OrthoCamera camera) {
        this.cameras.remove(camera);
    }

    public void addSprite(SpriteRenderer renderer) {
        this.spriteRendererList.add(renderer);
    }

    public void addUI(UI ui) {
        this.imageUIS.add(ui);
    }

    public void removeUI(UI ui) {
        this.imageUIS.remove(ui);
    }

    public void removeSprite(SpriteRenderer renderer) {
        this.spriteRendererList.remove(renderer);
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

    @Override // com.idk.core.TouchListener
    public void onDown(TouchData event) {
    }

    @Override // com.idk.core.TouchListener
    public void onUp(TouchData event) {
    }

    @Override // com.idk.core.TouchListener
    public void onDrag(TouchData event) {
    }

    public Texture loadFromCache(String file) {
        if (this.textureArrayMap.containsKey(file)) {
            TextureCacheUnit tcu = this.textureArrayMap.get(file);
            tcu.use++;
            return tcu.texture;
        }
        AssetFile afile = this.targetScene.targetInstance.getAssetFile(file);
        if (afile == null) {
            return null;
        }
        Texture texture = new Texture(afile.getInputStream());
        TextureCacheUnit tcu2 = new TextureCacheUnit();
        tcu2.texture = texture;
        tcu2.use++;
        this.textureArrayMap.put(file, tcu2);
        return texture;
    }

    public void removeFromCache(Texture texture) {
        if (texture != null) {
            for (int i = 0; i < this.textureArrayMap.size(); i++) {
                TextureCacheUnit tcu = this.textureArrayMap.valueAt(i);
                if (tcu.texture == texture) {
                    tcu.use--;
                    if (tcu.use <= 0) {
                        tcu.texture.delete();
                        return;
                    }
                    return;
                }
            }
            texture.delete();
        }
    }

    private class TextureCacheUnit {
        Texture texture;
        int use;

        private TextureCacheUnit() {
        }
    }
}
