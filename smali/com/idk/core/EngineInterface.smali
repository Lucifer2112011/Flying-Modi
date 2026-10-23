###### Class com.idk.core.EngineInterface (com.idk.core.EngineInterface)
.class public interface abstract Lcom/idk/core/EngineInterface;
.super Ljava/lang/Object;
.source "EngineInterface.java"


# virtual methods
.method public abstract addFrameEndTask(Ljava/lang/Runnable;)V
.end method

.method public abstract addFrameStartTask(Ljava/lang/Runnable;)V
.end method

.method public abstract addScene(Lcom/idk/core/Scene;)Z
.end method

.method public abstract addStateListener(Lcom/idk/core/StateListener;)V
.end method

.method public abstract addTouchListener(Lcom/idk/core/TouchListener;)V
.end method

.method public abstract getAssetDirectory(Ljava/lang/String;)Lcom/idk/core/AssetDirectory;
.end method

.method public abstract getAssetFile(Ljava/lang/String;)Lcom/idk/core/AssetFile;
.end method

.method public abstract getDataDirectory()Ljava/io/File;
.end method

.method public abstract getDeltaTime()F
.end method

.method public abstract getFrameRate()I
.end method

.method public abstract getFullDeltaTime()D
.end method

.method public abstract getLastHeight()I
.end method

.method public abstract getLastWidth()I
.end method

.method public abstract getMediaDirectory()Ljava/io/File;
.end method

.method public abstract getPrivateDataDirectory()Ljava/io/File;
.end method

.method public abstract getSceneArray()[Lcom/idk/core/Scene;
.end method

.method public abstract getSceneAt(I)Lcom/idk/core/Scene;
.end method

.method public abstract getSceneCount()I
.end method

.method public abstract getTouchManager()Lcom/idk/core/TouchManager;
.end method

.method public abstract getUserData(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract hasKey(Ljava/lang/String;)Z
.end method

.method public abstract insertUserData(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract isDirectory(Ljava/lang/String;)Z
.end method

.method public abstract isFile(Ljava/lang/String;)Z
.end method

.method public abstract removeScene(Lcom/idk/core/Scene;)Z
.end method

.method public abstract removeStateListener(Lcom/idk/core/StateListener;)V
.end method

.method public abstract removeTouchListener(Lcom/idk/core/TouchListener;)V
.end method
