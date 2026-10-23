package com.idk.core;

import android.app.Activity;
import android.content.res.AssetFileDescriptor;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.view.MotionEvent;
import android.view.View;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Vector;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes2.dex */
public class BaseEngine implements EngineInterface {
    private Activity act;
    private long delTime;
    private double deltaCounter;
    private int fps;
    private GLSurfaceView glSurfaceView;
    private int lastHeight;
    private int lastWidth;
    private long ms;
    private long newTime;
    private long oldTime;
    private TouchManager touchManager;
    private List<CustomTouchData> touchData = new ArrayList();
    private List<TouchListener> listeners = new ArrayList();
    private List<StateListener> stateListeners = new ArrayList();
    private Vector<Runnable> pretask = new Vector<>();
    private Vector<Runnable> postTask = new Vector<>();
    private CustomTouchData[] array = new CustomTouchData[16];
    private double delta = 0.0d;
    private int fpsCounter = 0;
    private HashMap<String, Object> userData = new HashMap<>();
    private ArrayList<Scene> sceneArrayList = new ArrayList<>();

    public BaseEngine(Activity activity) {
        this.act = activity;
        for (int i = 0; i < this.array.length; i++) {
            this.array[i] = new CustomTouchData();
        }
        this.touchManager = new TouchManagerImpl();
        this.glSurfaceView = new Renderer();
    }

    public View getView() {
        return this.glSurfaceView;
    }

    public void pause() {
        performPause();
    }

    public void resume() {
        performResume();
    }

    @Override // com.idk.core.EngineInterface
    public int getLastHeight() {
        return this.lastHeight;
    }

    @Override // com.idk.core.EngineInterface
    public int getLastWidth() {
        return this.lastWidth;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startScene(Scene scn) {
        GameObject[] objects = scn.getObjectArray();
        SceneInterface[] interfaces = scn.getInterfaceArray();
        scn.targetInstance = this;
        for (SceneInterface inf : interfaces) {
            inf.targetScene = scn;
            inf.onCreate();
        }
        for (int i = 0; i < objects.length; i++) {
            GameObject game = objects[i];
            game.targetScene = scn;
            ObjectModifier[] modifiers = objects[i].getModifierArray();
            for (ObjectModifier modifier : modifiers) {
                modifier.targetObject = game;
                modifier.onCreate();
            }
        }
        for (SceneInterface sceneInterface : interfaces) {
            sceneInterface.onStart();
        }
        for (GameObject gameObject : objects) {
            for (ObjectModifier objectModifier : gameObject.getModifierArray()) {
                objectModifier.onStart();
            }
        }
    }

    private void renderScene(Scene scn) {
        scn.targetInstance = this;
        if (scn.active) {
            GameObject[] objects = scn.getObjectArray();
            SceneInterface[] interfaces = scn.getInterfaceArray();
            for (SceneInterface inf : interfaces) {
                inf.targetScene = scn;
                if (inf.active) {
                    inf.onPreUpdate();
                }
            }
            for (int i = 0; i < objects.length; i++) {
                GameObject game = objects[i];
                game.targetScene = scn;
                if (game.active) {
                    ObjectModifier[] modifiers = objects[i].getModifierArray();
                    for (ObjectModifier modifier : modifiers) {
                        modifier.targetObject = game;
                        if (modifier.active) {
                            modifier.onPreUpdate();
                        }
                    }
                }
            }
            for (int i2 = 0; i2 < interfaces.length; i2++) {
                SceneInterface sceneInterface = interfaces[i2];
                if (sceneInterface.active) {
                    interfaces[i2].onUpdate();
                }
            }
            for (GameObject gameObject : objects) {
                ObjectModifier[] modifiers2 = gameObject.getModifierArray();
                if (gameObject.active) {
                    for (ObjectModifier objectModifier : modifiers2) {
                        if (objectModifier.active) {
                            objectModifier.onUpdate();
                        } else {
                            objectModifier.onDisabledRepeat();
                        }
                    }
                } else {
                    for (ObjectModifier objectModifier2 : modifiers2) {
                        objectModifier2.onDisabledRepeat();
                    }
                }
            }
            for (GameObject gameObject2 : objects) {
                ObjectModifier[] modifiers3 = gameObject2.getModifierArray();
                for (ObjectModifier objectModifier3 : modifiers3) {
                    if (objectModifier3.active) {
                        objectModifier3.onPostUpdate();
                    }
                }
            }
            for (int i3 = 0; i3 < interfaces.length; i3++) {
                SceneInterface sceneInterface2 = interfaces[i3];
                if (sceneInterface2.active) {
                    interfaces[i3].onPostUpdate();
                }
            }
            return;
        }
        for (GameObject gameObject3 : scn.getObjectArray()) {
            for (ObjectModifier objectModifier4 : gameObject3.getModifierArray()) {
                objectModifier4.onDisabledRepeat();
            }
        }
    }

    @Override // com.idk.core.EngineInterface
    public boolean addScene(final Scene scn) {
        boolean complete = this.sceneArrayList.contains(scn);
        addFrameStartTask(new Runnable() { // from class: com.idk.core.BaseEngine.1
            @Override // java.lang.Runnable
            public void run() {
                scn.targetInstance = BaseEngine.this;
                BaseEngine.this.sceneArrayList.add(scn);
                BaseEngine.this.startScene(scn);
            }
        });
        return !complete;
    }

    @Override // com.idk.core.EngineInterface
    public boolean removeScene(final Scene scn) {
        boolean complete = this.sceneArrayList.contains(scn);
        addFrameEndTask(new Runnable() { // from class: com.idk.core.BaseEngine.2
            @Override // java.lang.Runnable
            public void run() {
                BaseEngine.this.sceneArrayList.remove(scn);
            }
        });
        return complete;
    }

    @Override // com.idk.core.EngineInterface
    public Scene getSceneAt(int i) {
        return this.sceneArrayList.get(i);
    }

    @Override // com.idk.core.EngineInterface
    public int getSceneCount() {
        return this.sceneArrayList.size();
    }

    @Override // com.idk.core.EngineInterface
    public Scene[] getSceneArray() {
        return (Scene[]) this.sceneArrayList.toArray(new Scene[0]);
    }

    @Override // com.idk.core.EngineInterface
    public void addFrameEndTask(Runnable runnable) {
        this.postTask.add(runnable);
    }

    @Override // com.idk.core.EngineInterface
    public void addFrameStartTask(Runnable runnable) {
        this.pretask.add(runnable);
    }

    @Override // com.idk.core.EngineInterface
    public Object getUserData(String key) {
        return this.userData.get(key);
    }

    @Override // com.idk.core.EngineInterface
    public boolean hasKey(String key) {
        return this.userData.containsKey(key);
    }

    @Override // com.idk.core.EngineInterface
    public void insertUserData(String key, Object value) {
        this.userData.put(key, value);
    }

    @Override // com.idk.core.EngineInterface
    public TouchManager getTouchManager() {
        return this.touchManager;
    }

    @Override // com.idk.core.EngineInterface
    public void addTouchListener(final TouchListener listener) {
        if (!this.listeners.contains(listener)) {
            addFrameEndTask(new Runnable() { // from class: com.idk.core.BaseEngine.3
                @Override // java.lang.Runnable
                public void run() {
                    BaseEngine.this.listeners.add(listener);
                }
            });
        }
    }

    @Override // com.idk.core.EngineInterface
    public void removeTouchListener(final TouchListener listener) {
        if (this.listeners.contains(listener)) {
            addFrameEndTask(new Runnable() { // from class: com.idk.core.BaseEngine.4
                @Override // java.lang.Runnable
                public void run() {
                    BaseEngine.this.listeners.remove(listener);
                }
            });
        }
    }

    @Override // com.idk.core.EngineInterface
    public void addStateListener(final StateListener listener) {
        if (!this.stateListeners.contains(listener)) {
            addFrameEndTask(new Runnable() { // from class: com.idk.core.BaseEngine.5
                @Override // java.lang.Runnable
                public void run() {
                    BaseEngine.this.stateListeners.add(listener);
                }
            });
        }
    }

    @Override // com.idk.core.EngineInterface
    public void removeStateListener(final StateListener listener) {
        if (this.stateListeners.contains(listener)) {
            addFrameEndTask(new Runnable() { // from class: com.idk.core.BaseEngine.6
                @Override // java.lang.Runnable
                public void run() {
                    BaseEngine.this.stateListeners.remove(listener);
                }
            });
        }
    }

    @Override // com.idk.core.EngineInterface
    public int getFrameRate() {
        return this.fps;
    }

    @Override // com.idk.core.EngineInterface
    public double getFullDeltaTime() {
        return this.delta;
    }

    @Override // com.idk.core.EngineInterface
    public float getDeltaTime() {
        return (float) this.delta;
    }

    @Override // com.idk.core.EngineInterface
    public AssetFile getAssetFile(String str) {
        AssetFile as = new AssetFileImpl(str);
        if (as.getFileDescriptor() != null) {
            return as;
        }
        return null;
    }

    @Override // com.idk.core.EngineInterface
    public AssetDirectory getAssetDirectory(String str) {
        return null;
    }

    @Override // com.idk.core.EngineInterface
    public boolean isFile(String path) {
        return false;
    }

    @Override // com.idk.core.EngineInterface
    public boolean isDirectory(String path) {
        return false;
    }

    @Override // com.idk.core.EngineInterface
    public File getDataDirectory() {
        return null;
    }

    @Override // com.idk.core.EngineInterface
    public File getPrivateDataDirectory() {
        return null;
    }

    @Override // com.idk.core.EngineInterface
    public File getMediaDirectory() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVoid() {
        while (!this.pretask.isEmpty()) {
            this.pretask.remove(0).run();
        }
        this.newTime = System.currentTimeMillis();
        this.delTime = this.newTime - this.oldTime;
        this.oldTime = this.newTime;
        this.delta = this.delTime * 0.001d;
        this.deltaCounter += this.delta;
        this.fpsCounter++;
        if (this.deltaCounter >= 1.0d) {
            this.deltaCounter -= 1.0d;
            this.fps = this.fpsCounter;
            this.fpsCounter = 0;
        }
        this.touchData.clear();
        for (CustomTouchData ts : this.array) {
            if (ts.isPressed) {
                this.touchData.add(ts);
            }
        }
        GLES20.glClear(16640);
        GLES20.glClearColor(0.1f, 0.1f, 0.1f, 1.0f);
        GLES20.glEnable(2929);
        GLES20.glDepthFunc(513);
        for (int i = 0; i < getSceneCount(); i++) {
            renderScene(getSceneAt(i));
        }
        while (!this.postTask.isEmpty()) {
            this.postTask.remove(0).run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDrag(MotionEvent event) {
        for (int i = 0; i < event.getPointerCount(); i++) {
            try {
                int id = event.getPointerId(i);
                CustomTouchData data = this.array[id];
                data.previousX = data.currentX;
                data.previousY = data.currentY;
                data.currentX = event.getX(i);
                data.currentY = this.lastHeight - event.getY(i);
                data.id = id;
                data.drag = true;
            } catch (Exception e) {
                e.printStackTrace(System.out);
                return;
            }
        }
        for (int i2 = 0; i2 < 16; i2++) {
            CustomTouchData ts = this.array[i2];
            boolean b = ts.drag;
            ts.drag = false;
            if (b && !ts.isPressed) {
                ts.isPressed = true;
                ts.previousX = ts.currentX;
                ts.previousY = ts.currentY;
            }
            if (!b && ts.isPressed) {
                ts.isPressed = false;
            }
        }
    }

    private void performPause() {
        System.out.println("Pause");
        this.glSurfaceView.queueEvent(new Runnable() { // from class: com.idk.core.BaseEngine.7
            @Override // java.lang.Runnable
            public void run() {
                BaseEngine.this.touchData.clear();
                for (int i = 0; i < BaseEngine.this.listeners.size(); i++) {
                    TouchListener ls = (TouchListener) BaseEngine.this.listeners.get(i);
                    for (int l = 0; l < 16; l++) {
                        CustomTouchData data = BaseEngine.this.array[l];
                        if (data.isPressed) {
                            ls.onDrag(data);
                            data.isPressed = false;
                        }
                    }
                }
                for (int i2 = 0; i2 < BaseEngine.this.stateListeners.size(); i2++) {
                    ((StateListener) BaseEngine.this.stateListeners.get(i2)).onPause();
                }
            }
        });
    }

    private void performResume() {
        this.glSurfaceView.queueEvent(new Runnable() { // from class: com.idk.core.BaseEngine.8
            @Override // java.lang.Runnable
            public void run() {
                for (int i = 0; i < BaseEngine.this.stateListeners.size(); i++) {
                    ((StateListener) BaseEngine.this.stateListeners.get(i)).onResume();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUp(MotionEvent event) {
        int exit = event.getActionIndex();
        for (int i = 0; i < event.getPointerCount(); i++) {
            if (exit != i) {
                int id = event.getPointerId(i);
                CustomTouchData ts = this.array[id];
                ts.id = id;
                ts.currentY = this.lastHeight - event.getY(i);
                ts.currentX = event.getX(i);
                ts.up = true;
            }
        }
        for (int i2 = 0; i2 < 16; i2++) {
            CustomTouchData ts2 = this.array[i2];
            boolean b = ts2.up;
            ts2.up = false;
            if (b && !ts2.isPressed) {
                ts2.isPressed = true;
                ts2.previousX = ts2.currentX;
                ts2.previousY = ts2.currentY;
            }
            if (!b && ts2.isPressed) {
                ts2.isPressed = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDown(MotionEvent event) {
        for (int i = 0; i < event.getPointerCount(); i++) {
            int id = event.getPointerId(i);
            CustomTouchData ts = this.array[id];
            ts.id = id;
            ts.previousX = ts.currentX;
            ts.previousY = ts.currentY;
            ts.currentY = this.lastHeight - event.getY(i);
            ts.currentX = event.getX(i);
            ts.down = true;
            ts.timeStamp = System.currentTimeMillis();
        }
        for (int i2 = 0; i2 < 16; i2++) {
            CustomTouchData ts2 = this.array[i2];
            boolean b = ts2.down;
            ts2.down = false;
            if (b && !ts2.isPressed) {
                ts2.isPressed = true;
                ts2.previousX = ts2.currentX;
                ts2.previousY = ts2.currentY;
            }
            if (!b && ts2.isPressed) {
                ts2.isPressed = false;
            }
        }
    }

    private class Renderer extends GLSurfaceView implements GLSurfaceView.Renderer {
        Renderer() {
            super(BaseEngine.this.act);
            setPreserveEGLContextOnPause(true);
            setEGLContextClientVersion(3);
            setEGLConfigChooser(8, 8, 8, 8, 24, 8);
            setRenderer(this);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(GL10 gl, EGLConfig config) {
            BaseEngine.this.oldTime = System.currentTimeMillis();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl, int width, int height) {
            BaseEngine.this.lastHeight = height;
            BaseEngine.this.lastWidth = width;
            float f = width;
            float f2 = height;
            for (int i = 0; i < BaseEngine.this.stateListeners.size(); i++) {
                ((StateListener) BaseEngine.this.stateListeners.get(i)).onSurfaceChange(width, height);
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl) {
            BaseEngine.this.updateVoid();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent event) {
            try {
                event.getAction();
                switch (event.getActionMasked()) {
                    case 0:
                        BaseEngine.this.onDown(event);
                        break;
                    case 1:
                        BaseEngine.this.onUp(event);
                        break;
                    case 2:
                        BaseEngine.this.onDrag(event);
                        break;
                    case 5:
                        BaseEngine.this.onDown(event);
                        break;
                    case 6:
                        BaseEngine.this.onUp(event);
                        break;
                }
                return true;
            } catch (Exception e) {
                e.printStackTrace(System.out);
                return true;
            }
        }
    }

    private class CustomTouchData extends TouchData {
        boolean down;
        boolean drag;
        boolean up;

        private CustomTouchData() {
            this.drag = false;
        }
    }

    private class AssetFileImpl implements AssetFile {
        AssetFileDescriptor descriptor;
        String file;
        long len;

        AssetFileImpl(String path) {
            this.len = 0L;
            this.file = path;
            AssetFileDescriptor as = getFileDescriptor();
            if (as != null) {
                this.len = as.getDeclaredLength();
            }
        }

        @Override // com.idk.core.AssetFile
        public String name() {
            return new File(this.file).getName();
        }

        @Override // com.idk.core.AssetFile
        public String path() {
            return this.file;
        }

        @Override // com.idk.core.AssetFile
        public InputStream getInputStream() {
            AssetFileDescriptor as = getFileDescriptor();
            if (as != null) {
                try {
                    return as.createInputStream();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return null;
        }

        @Override // com.idk.core.AssetFile
        public AssetFileDescriptor getFileDescriptor() {
            try {
                return BaseEngine.this.act.getAssets().openFd(this.file);
            } catch (Exception e) {
                try {
                    return BaseEngine.this.act.getAssets().openNonAssetFd(this.file);
                } catch (Exception e2) {
                    return null;
                }
            }
        }

        @Override // com.idk.core.AssetFile
        public long length() {
            return this.descriptor.getDeclaredLength();
        }
    }

    private class TouchManagerImpl extends TouchManager {
        private TouchManagerImpl() {
        }

        @Override // com.idk.core.TouchManager
        public int getTouchCount() {
            return BaseEngine.this.touchData.size();
        }

        @Override // com.idk.core.TouchManager
        public TouchData getTouchAt(int idx) {
            return (TouchData) BaseEngine.this.touchData.get(idx);
        }

        @Override // com.idk.core.TouchManager
        public void addTouchListener(TouchListener tl) {
            BaseEngine.this.listeners.add(tl);
        }

        @Override // com.idk.core.TouchManager
        public void removeTouchListener(TouchListener tl) {
            BaseEngine.this.listeners.remove(tl);
        }

        @Override // com.idk.core.TouchManager
        public TouchListener getTouchListener(int idx) {
            return (TouchListener) BaseEngine.this.listeners.get(idx);
        }

        @Override // com.idk.core.TouchManager
        public int getTouchListenerCount() {
            return BaseEngine.this.listeners.size();
        }

        @Override // com.idk.core.TouchManager
        public void clearAllListener() {
            BaseEngine.this.listeners.clear();
        }
    }

    private class AssetDirectoryImpl implements AssetDirectory {
        String[] list;

        AssetDirectoryImpl(String str) {
            try {
                this.list = BaseEngine.this.act.getAssets().list(str);
            } catch (IOException e) {
            }
        }

        @Override // com.idk.core.AssetDirectory
        public int getChildCount() {
            if (this.list == null) {
                return 0;
            }
            return this.list.length;
        }

        @Override // com.idk.core.AssetDirectory
        public AssetFile[] getChildFiles() {
            if (this.list != null) {
                new ArrayList();
                for (String str : this.list) {
                }
            }
            return new AssetFile[0];
        }

        @Override // com.idk.core.AssetDirectory
        public AssetDirectory[] getChildDirectories() {
            return new AssetDirectory[0];
        }
    }
}
