package com.idk.core;

import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public interface EngineInterface {
    void addFrameEndTask(Runnable runnable);

    void addFrameStartTask(Runnable runnable);

    boolean addScene(Scene scene);

    void addStateListener(StateListener stateListener);

    void addTouchListener(TouchListener touchListener);

    AssetDirectory getAssetDirectory(String str);

    AssetFile getAssetFile(String str);

    File getDataDirectory();

    float getDeltaTime();

    int getFrameRate();

    double getFullDeltaTime();

    int getLastHeight();

    int getLastWidth();

    File getMediaDirectory();

    File getPrivateDataDirectory();

    Scene[] getSceneArray();

    Scene getSceneAt(int i);

    int getSceneCount();

    TouchManager getTouchManager();

    Object getUserData(String str);

    boolean hasKey(String str);

    void insertUserData(String str, Object obj);

    boolean isDirectory(String str);

    boolean isFile(String str);

    boolean removeScene(Scene scene);

    void removeStateListener(StateListener stateListener);

    void removeTouchListener(TouchListener touchListener);
}
