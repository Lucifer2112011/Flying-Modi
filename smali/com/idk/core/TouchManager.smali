###### Class com.idk.core.TouchManager (com.idk.core.TouchManager)
.class public abstract Lcom/idk/core/TouchManager;
.super Ljava/lang/Object;
.source "TouchManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addTouchListener(Lcom/idk/core/TouchListener;)V
.end method

.method public abstract clearAllListener()V
.end method

.method public abstract getTouchAt(I)Lcom/idk/core/TouchData;
.end method

.method public abstract getTouchCount()I
.end method

.method public abstract getTouchListener(I)Lcom/idk/core/TouchListener;
.end method

.method public abstract getTouchListenerCount()I
.end method

.method public abstract removeTouchListener(Lcom/idk/core/TouchListener;)V
.end method
