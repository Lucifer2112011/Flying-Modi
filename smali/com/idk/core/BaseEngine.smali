###### Class com.idk.core.BaseEngine (com.idk.core.BaseEngine)
.class public Lcom/idk/core/BaseEngine;
.super Ljava/lang/Object;
.source "BaseEngine.java"

# interfaces
.implements Lcom/idk/core/EngineInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idk/core/BaseEngine$CustomTouchData;,
        Lcom/idk/core/BaseEngine$TouchManagerImpl;,
        Lcom/idk/core/BaseEngine$Renderer;,
        Lcom/idk/core/BaseEngine$AssetFileImpl;,
        Lcom/idk/core/BaseEngine$AssetDirectoryImpl;
    }
.end annotation


# instance fields
.field private act:Landroid/app/Activity;

.field private array:[Lcom/idk/core/BaseEngine$CustomTouchData;

.field private delTime:J

.field private delta:D

.field private deltaCounter:D

.field private fps:I

.field private fpsCounter:I

.field private glSurfaceView:Landroid/opengl/GLSurfaceView;

.field private lastHeight:I

.field private lastWidth:I

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/idk/core/TouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private ms:J

.field private newTime:J

.field private oldTime:J

.field private postTask:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private pretask:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private sceneArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/idk/core/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private stateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/idk/core/StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private touchData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/idk/core/BaseEngine$CustomTouchData;",
            ">;"
        }
    .end annotation
.end field

.field private touchManager:Lcom/idk/core/TouchManager;

.field private userData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/idk/core/BaseEngine;->touchData:Ljava/util/List;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/idk/core/BaseEngine;->listeners:Ljava/util/List;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/idk/core/BaseEngine;->stateListeners:Ljava/util/List;

    .line 38
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/idk/core/BaseEngine;->pretask:Ljava/util/Vector;

    .line 39
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/idk/core/BaseEngine;->postTask:Ljava/util/Vector;

    .line 40
    const/16 v1, 0x10

    new-array v1, v1, [Lcom/idk/core/BaseEngine$CustomTouchData;

    iput-object v1, p0, Lcom/idk/core/BaseEngine;->array:[Lcom/idk/core/BaseEngine$CustomTouchData;

    .line 45
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/idk/core/BaseEngine;->delta:D

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcom/idk/core/BaseEngine;->fpsCounter:I

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/idk/core/BaseEngine;->userData:Ljava/util/HashMap;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/idk/core/BaseEngine;->sceneArrayList:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Lcom/idk/core/BaseEngine;->act:Landroid/app/Activity;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_45
    iget-object v1, p0, Lcom/idk/core/BaseEngine;->array:[Lcom/idk/core/BaseEngine$CustomTouchData;

    array-length v1, v1

    if-ge v0, v1, :cond_56

    .line 55
    iget-object v1, p0, Lcom/idk/core/BaseEngine;->array:[Lcom/idk/core/BaseEngine$CustomTouchData;

    new-instance v2, Lcom/idk/core/BaseEngine$CustomTouchData;

    invoke-direct {v2, p0, v4}, Lcom/idk/core/BaseEngine$CustomTouchData;-><init>(Lcom/idk/core/BaseEngine;Lcom/idk/core/BaseEngine$1;)V

    aput-object v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 57
    :cond_56
    new-instance v1, Lcom/idk/core/BaseEngine$TouchManagerImpl;

    invoke-direct {v1, p0, v4}, Lcom/idk/core/BaseEngine$TouchManagerImpl;-><init>(Lcom/idk/core/BaseEngine;Lcom/idk/core/BaseEngine$1;)V

    iput-object v1, p0, Lcom/idk/core/BaseEngine;->touchManager:Lcom/idk/core/TouchManager;

    .line 58
    new-instance v1, Lcom/idk/core/BaseEngine$Renderer;

    invoke-direct {v1, p0}, Lcom/idk/core/BaseEngine$Renderer;-><init>(Lcom/idk/core/BaseEngine;)V

    iput-object v1, p0, Lcom/idk/core/BaseEngine;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 59
    return-void
.end method

.method static synthetic access$1002(Lcom/idk/core/BaseEngine;I)I
    .registers 2
    .param p0, "x0"    # Lcom/idk/core/BaseEngine;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/idk/core/BaseEngine;->lastHeight:I

    return p1
.end method

.method static synthetic access$1102(Lcom/idk/core/BaseEngine;I)I
    .registers 2
    .param p0, "x0"    # Lcom/idk/core/BaseEngine;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/idk/core/BaseEngine;->lastWidth:I

    return p1
.end method

.method static synthetic access$1200(Lcom/idk/core/BaseEngine;)V
    .registers 1
    .param p0, "x0"    # Lcom/idk/core/BaseEngine;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/idk/core/BaseEngine;->updateVoid()V

    return-void
.end method

.method static synthetic access$1300(Lcom/idk/core/BaseEngine;Landroid/view/MotionEvent;)V
    .registers 2
    .param p0, "x0"    # Lcom/idk/core/BaseEngine;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/idk/core/BaseEngine;->onDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/idk/core/BaseEngine;Landroid/view/MotionEvent;)V
    .registers 2
    .param p0, "x0"    # Lcom/idk/core/BaseEngine;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/idk/core/BaseEngine;->onUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/idk/core/BaseEngine;Landroid/view/MotionEvent;)V
    .registers 2
    .param p0, "x0"    # Lcom/idk/core/BaseEngine;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/idk/core/BaseEngine;->onDrag(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/idk/core/BaseEngine;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/idk/core/BaseEngine;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->sceneArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/idk/core/BaseEngine;Lcom/idk/core/Scene;)V
    .registers 2
    .param p0, "x0"    # Lcom/idk/core/BaseEngine;
    .param p1, "x1"    # Lcom/idk/core/Scene;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/idk/core/BaseEngine;->startScene(Lcom/idk/core/Scene;)V

    return-void
.end method

.method static synthetic access$400(Lcom/idk/core/BaseEngine;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/idk/core/BaseEngine;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/idk/core/BaseEngine;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/idk/core/BaseEngine;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->stateListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/idk/core/BaseEngine;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/idk/core/BaseEngine;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->touchData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/idk/core/BaseEngine;)[Lcom/idk/core/BaseEngine$CustomTouchData;
    .registers 2
    .param p0, "x0"    # Lcom/idk/core/BaseEngine;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->array:[Lcom/idk/core/BaseEngine$CustomTouchData;

    return-object v0
.end method

.method static synthetic access$800(Lcom/idk/core/BaseEngine;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/idk/core/BaseEngine;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->act:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$902(Lcom/idk/core/BaseEngine;J)J
    .registers 4
    .param p0, "x0"    # Lcom/idk/core/BaseEngine;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/idk/core/BaseEngine;->oldTime:J

    return-wide p1
.end method

.method private onDown(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 455
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v1, v4, :cond_36

    .line 456
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 457
    .local v2, "id":I
    iget-object v4, p0, Lcom/idk/core/BaseEngine;->array:[Lcom/idk/core/BaseEngine$CustomTouchData;

    aget-object v3, v4, v2

    .line 458
    .local v3, "ts":Lcom/idk/core/BaseEngine$CustomTouchData;
    iput v2, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->id:I

    .line 459
    iget v4, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->currentX:F

    iput v4, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->previousX:F

    .line 460
    iget v4, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->currentY:F

    iput v4, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->previousY:F

    .line 461
    iget v4, p0, Lcom/idk/core/BaseEngine;->lastHeight:I

    int-to-float v4, v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->currentY:F

    .line 462
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->currentX:F

    .line 463
    iput-boolean v7, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->down:Z

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->timeStamp:J

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 466
    .end local v2    # "id":I
    .end local v3    # "ts":Lcom/idk/core/BaseEngine$CustomTouchData;
    :cond_36
    const/4 v1, 0x0

    :goto_37
    const/16 v4, 0x10

    if-ge v1, v4, :cond_5e

    .line 467
    iget-object v4, p0, Lcom/idk/core/BaseEngine;->array:[Lcom/idk/core/BaseEngine$CustomTouchData;

    aget-object v3, v4, v1

    .line 468
    .restart local v3    # "ts":Lcom/idk/core/BaseEngine$CustomTouchData;
    iget-boolean v0, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->down:Z

    .line 469
    .local v0, "b":Z
    iput-boolean v6, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->down:Z

    .line 470
    if-eqz v0, :cond_53

    iget-boolean v4, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->isPressed:Z

    if-nez v4, :cond_53

    .line 471
    iput-boolean v7, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->isPressed:Z

    .line 472
    iget v4, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->currentX:F

    iput v4, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->previousX:F

    .line 473
    iget v4, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->currentY:F

    iput v4, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->previousY:F

    .line 475
    :cond_53
    if-nez v0, :cond_5b

    iget-boolean v4, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->isPressed:Z

    if-eqz v4, :cond_5b

    .line 476
    iput-boolean v6, v3, Lcom/idk/core/BaseEngine$CustomTouchData;->isPressed:Z

    .line 466
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 479
    .end local v0    # "b":Z
    .end local v3    # "ts":Lcom/idk/core/BaseEngine$CustomTouchData;
    :cond_5e
    return-void
.end method

.method private onDrag(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 365
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ge v3, v6, :cond_2f

    .line 366
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 367
    .local v4, "id":I
    iget-object v6, p0, Lcom/idk/core/BaseEngine;->array:[Lcom/idk/core/BaseEngine$CustomTouchData;

    aget-object v1, v6, v4

    .line 368
    .local v1, "data":Lcom/idk/core/BaseEngine$CustomTouchData;
    iget v6, v1, Lcom/idk/core/BaseEngine$CustomTouchData;->currentX:F

    iput v6, v1, Lcom/idk/core/BaseEngine$CustomTouchData;->previousX:F

    .line 369
    iget v6, v1, Lcom/idk/core/BaseEngine$CustomTouchData;->currentY:F

    iput v6, v1, Lcom/idk/core/BaseEngine$CustomTouchData;->previousY:F

    .line 370
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, v1, Lcom/idk/core/BaseEngine$CustomTouchData;->currentX:F

    .line 371
    iget v6, p0, Lcom/idk/core/BaseEngine;->lastHeight:I

    int-to-float v6, v6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, v1, Lcom/idk/core/BaseEngine$CustomTouchData;->currentY:F

    .line 372
    iput v4, v1, Lcom/idk/core/BaseEngine$CustomTouchData;->id:I

    .line 373
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/idk/core/BaseEngine$CustomTouchData;->drag:Z

    .line 365
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 375
    .end local v1    # "data":Lcom/idk/core/BaseEngine$CustomTouchData;
    .end local v4    # "id":I
    :cond_2f
    const/4 v3, 0x0

    :goto_30
    const/16 v6, 0x10

    if-ge v3, v6, :cond_60

    .line 376
    iget-object v6, p0, Lcom/idk/core/BaseEngine;->array:[Lcom/idk/core/BaseEngine$CustomTouchData;

    aget-object v5, v6, v3

    .line 377
    .local v5, "ts":Lcom/idk/core/BaseEngine$CustomTouchData;
    iget-boolean v0, v5, Lcom/idk/core/BaseEngine$CustomTouchData;->drag:Z

    .line 378
    .local v0, "b":Z
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/idk/core/BaseEngine$CustomTouchData;->drag:Z

    .line 379
    if-eqz v0, :cond_4e

    iget-boolean v6, v5, Lcom/idk/core/BaseEngine$CustomTouchData;->isPressed:Z

    if-nez v6, :cond_4e

    .line 380
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/idk/core/BaseEngine$CustomTouchData;->isPressed:Z

    .line 381
    iget v6, v5, Lcom/idk/core/BaseEngine$CustomTouchData;->currentX:F

    iput v6, v5, Lcom/idk/core/BaseEngine$CustomTouchData;->previousX:F

    .line 382
    iget v6, v5, Lcom/idk/core/BaseEngine$CustomTouchData;->currentY:F

    iput v6, v5, Lcom/idk/core/BaseEngine$CustomTouchData;->previousY:F

    .line 384
    :cond_4e
    if-nez v0, :cond_57

    iget-boolean v6, v5, Lcom/idk/core/BaseEngine$CustomTouchData;->isPressed:Z

    if-eqz v6, :cond_57

    .line 385
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/idk/core/BaseEngine$CustomTouchData;->isPressed:Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_57} :catch_5a

    .line 375
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 388
    .end local v0    # "b":Z
    .end local v5    # "ts":Lcom/idk/core/BaseEngine$CustomTouchData;
    :catch_5a
    move-exception v2

    .line 389
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 391
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_60
    return-void
.end method

.method private onUp(Landroid/view/MotionEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 427
    .local v1, "exit":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v2, v5, :cond_2f

    .line 428
    if-ne v1, v2, :cond_12

    .line 427
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 431
    :cond_12
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 432
    .local v3, "id":I
    iget-object v5, p0, Lcom/idk/core/BaseEngine;->array:[Lcom/idk/core/BaseEngine$CustomTouchData;

    aget-object v4, v5, v3

    .line 433
    .local v4, "ts":Lcom/idk/core/BaseEngine$CustomTouchData;
    iput v3, v4, Lcom/idk/core/BaseEngine$CustomTouchData;->id:I

    .line 434
    iget v5, p0, Lcom/idk/core/BaseEngine;->lastHeight:I

    int-to-float v5, v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/idk/core/BaseEngine$CustomTouchData;->currentY:F

    .line 435
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, v4, Lcom/idk/core/BaseEngine$CustomTouchData;->currentX:F

    .line 436
    iput-boolean v8, v4, Lcom/idk/core/BaseEngine$CustomTouchData;->up:Z

    goto :goto_f

    .line 438
    .end local v3    # "id":I
    .end local v4    # "ts":Lcom/idk/core/BaseEngine$CustomTouchData;
    :cond_2f
    const/4 v2, 0x0

    :goto_30
    const/16 v5, 0x10

    if-ge v2, v5, :cond_57

    .line 439
    iget-object v5, p0, Lcom/idk/core/BaseEngine;->array:[Lcom/idk/core/BaseEngine$CustomTouchData;

    aget-object v4, v5, v2

    .line 440
    .restart local v4    # "ts":Lcom/idk/core/BaseEngine$CustomTouchData;
    iget-boolean v0, v4, Lcom/idk/core/BaseEngine$CustomTouchData;->up:Z

    .line 441
    .local v0, "b":Z
    iput-boolean v7, v4, Lcom/idk/core/BaseEngine$CustomTouchData;->up:Z

    .line 442
    if-eqz v0, :cond_4c

    iget-boolean v5, v4, Lcom/idk/core/BaseEngine$CustomTouchData;->isPressed:Z

    if-nez v5, :cond_4c

    .line 443
    iput-boolean v8, v4, Lcom/idk/core/BaseEngine$CustomTouchData;->isPressed:Z

    .line 444
    iget v5, v4, Lcom/idk/core/BaseEngine$CustomTouchData;->currentX:F

    iput v5, v4, Lcom/idk/core/BaseEngine$CustomTouchData;->previousX:F

    .line 445
    iget v5, v4, Lcom/idk/core/BaseEngine$CustomTouchData;->currentY:F

    iput v5, v4, Lcom/idk/core/BaseEngine$CustomTouchData;->previousY:F

    .line 447
    :cond_4c
    if-nez v0, :cond_54

    iget-boolean v5, v4, Lcom/idk/core/BaseEngine$CustomTouchData;->isPressed:Z

    if-eqz v5, :cond_54

    .line 448
    iput-boolean v7, v4, Lcom/idk/core/BaseEngine$CustomTouchData;->isPressed:Z

    .line 438
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 452
    .end local v0    # "b":Z
    .end local v4    # "ts":Lcom/idk/core/BaseEngine$CustomTouchData;
    :cond_57
    return-void
.end method

.method private performPause()V
    .registers 3

    .prologue
    .line 393
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Pause"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/idk/core/BaseEngine$7;

    invoke-direct {v1, p0}, Lcom/idk/core/BaseEngine$7;-><init>(Lcom/idk/core/BaseEngine;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 414
    return-void
.end method

.method private performResume()V
    .registers 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/idk/core/BaseEngine$8;

    invoke-direct {v1, p0}, Lcom/idk/core/BaseEngine$8;-><init>(Lcom/idk/core/BaseEngine;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 424
    return-void
.end method

.method private renderScene(Lcom/idk/core/Scene;)V
    .registers 14
    .param p1, "scn"    # Lcom/idk/core/Scene;

    .prologue
    .line 107
    iput-object p0, p1, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    .line 108
    iget-boolean v11, p1, Lcom/idk/core/Scene;->active:Z

    if-eqz v11, :cond_b9

    .line 109
    invoke-virtual {p1}, Lcom/idk/core/Scene;->getObjectArray()[Lcom/idk/core/GameObject;

    move-result-object v8

    .line 110
    .local v8, "objects":[Lcom/idk/core/GameObject;
    invoke-virtual {p1}, Lcom/idk/core/Scene;->getInterfaceArray()[Lcom/idk/core/SceneInterface;

    move-result-object v4

    .line 111
    .local v4, "interfaces":[Lcom/idk/core/SceneInterface;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v11, v4

    if-ge v2, v11, :cond_20

    .line 112
    aget-object v3, v4, v2

    .line 113
    .local v3, "inf":Lcom/idk/core/SceneInterface;
    iput-object p1, v3, Lcom/idk/core/SceneInterface;->targetScene:Lcom/idk/core/Scene;

    .line 114
    iget-boolean v11, v3, Lcom/idk/core/SceneInterface;->active:Z

    if-eqz v11, :cond_1d

    .line 115
    invoke-virtual {v3}, Lcom/idk/core/SceneInterface;->onPreUpdate()V

    .line 111
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 118
    .end local v3    # "inf":Lcom/idk/core/SceneInterface;
    :cond_20
    const/4 v2, 0x0

    :goto_21
    array-length v11, v8

    if-ge v2, v11, :cond_47

    .line 119
    aget-object v0, v8, v2

    .line 120
    .local v0, "game":Lcom/idk/core/GameObject;
    iput-object p1, v0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    .line 121
    iget-boolean v11, v0, Lcom/idk/core/GameObject;->active:Z

    if-eqz v11, :cond_44

    .line 122
    aget-object v11, v8, v2

    invoke-virtual {v11}, Lcom/idk/core/GameObject;->getModifierArray()[Lcom/idk/core/ObjectModifier;

    move-result-object v6

    .line 123
    .local v6, "modifiers":[Lcom/idk/core/ObjectModifier;
    const/4 v9, 0x0

    .local v9, "s":I
    :goto_33
    array-length v11, v6

    if-ge v9, v11, :cond_44

    .line 124
    aget-object v5, v6, v9

    .line 125
    .local v5, "modifier":Lcom/idk/core/ObjectModifier;
    iput-object v0, v5, Lcom/idk/core/ObjectModifier;->targetObject:Lcom/idk/core/GameObject;

    .line 126
    iget-boolean v11, v5, Lcom/idk/core/ObjectModifier;->active:Z

    if-eqz v11, :cond_41

    .line 127
    invoke-virtual {v5}, Lcom/idk/core/ObjectModifier;->onPreUpdate()V

    .line 123
    :cond_41
    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    .line 118
    .end local v5    # "modifier":Lcom/idk/core/ObjectModifier;
    .end local v6    # "modifiers":[Lcom/idk/core/ObjectModifier;
    .end local v9    # "s":I
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 132
    .end local v0    # "game":Lcom/idk/core/GameObject;
    :cond_47
    const/4 v2, 0x0

    :goto_48
    array-length v11, v4

    if-ge v2, v11, :cond_59

    .line 133
    aget-object v10, v4, v2

    .line 134
    .local v10, "sceneInterface":Lcom/idk/core/SceneInterface;
    iget-boolean v11, v10, Lcom/idk/core/SceneInterface;->active:Z

    if-eqz v11, :cond_56

    .line 135
    aget-object v11, v4, v2

    invoke-virtual {v11}, Lcom/idk/core/SceneInterface;->onUpdate()V

    .line 132
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 138
    .end local v10    # "sceneInterface":Lcom/idk/core/SceneInterface;
    :cond_59
    const/4 v2, 0x0

    :goto_5a
    array-length v11, v8

    if-ge v2, v11, :cond_8a

    .line 139
    aget-object v1, v8, v2

    .line 140
    .local v1, "gameObject":Lcom/idk/core/GameObject;
    invoke-virtual {v1}, Lcom/idk/core/GameObject;->getModifierArray()[Lcom/idk/core/ObjectModifier;

    move-result-object v6

    .line 141
    .restart local v6    # "modifiers":[Lcom/idk/core/ObjectModifier;
    iget-boolean v11, v1, Lcom/idk/core/GameObject;->active:Z

    if-eqz v11, :cond_7b

    .line 142
    const/4 v9, 0x0

    .restart local v9    # "s":I
    :goto_68
    array-length v11, v6

    if-ge v9, v11, :cond_87

    .line 143
    aget-object v7, v6, v9

    .line 144
    .local v7, "objectModifier":Lcom/idk/core/ObjectModifier;
    iget-boolean v11, v7, Lcom/idk/core/ObjectModifier;->active:Z

    if-eqz v11, :cond_77

    .line 145
    invoke-virtual {v7}, Lcom/idk/core/ObjectModifier;->onUpdate()V

    .line 142
    :goto_74
    add-int/lit8 v9, v9, 0x1

    goto :goto_68

    .line 147
    :cond_77
    invoke-virtual {v7}, Lcom/idk/core/ObjectModifier;->onDisabledRepeat()V

    goto :goto_74

    .line 151
    .end local v7    # "objectModifier":Lcom/idk/core/ObjectModifier;
    .end local v9    # "s":I
    :cond_7b
    const/4 v9, 0x0

    .restart local v9    # "s":I
    :goto_7c
    array-length v11, v6

    if-ge v9, v11, :cond_87

    .line 152
    aget-object v11, v6, v9

    invoke-virtual {v11}, Lcom/idk/core/ObjectModifier;->onDisabledRepeat()V

    .line 151
    add-int/lit8 v9, v9, 0x1

    goto :goto_7c

    .line 138
    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 156
    .end local v1    # "gameObject":Lcom/idk/core/GameObject;
    .end local v6    # "modifiers":[Lcom/idk/core/ObjectModifier;
    .end local v9    # "s":I
    :cond_8a
    const/4 v2, 0x0

    :goto_8b
    array-length v11, v8

    if-ge v2, v11, :cond_a7

    .line 157
    aget-object v11, v8, v2

    invoke-virtual {v11}, Lcom/idk/core/GameObject;->getModifierArray()[Lcom/idk/core/ObjectModifier;

    move-result-object v6

    .line 158
    .restart local v6    # "modifiers":[Lcom/idk/core/ObjectModifier;
    const/4 v9, 0x0

    .restart local v9    # "s":I
    :goto_95
    array-length v11, v6

    if-ge v9, v11, :cond_a4

    .line 159
    aget-object v7, v6, v9

    .line 160
    .restart local v7    # "objectModifier":Lcom/idk/core/ObjectModifier;
    iget-boolean v11, v7, Lcom/idk/core/ObjectModifier;->active:Z

    if-eqz v11, :cond_a1

    .line 161
    invoke-virtual {v7}, Lcom/idk/core/ObjectModifier;->onPostUpdate()V

    .line 158
    :cond_a1
    add-int/lit8 v9, v9, 0x1

    goto :goto_95

    .line 156
    .end local v7    # "objectModifier":Lcom/idk/core/ObjectModifier;
    :cond_a4
    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    .line 165
    .end local v6    # "modifiers":[Lcom/idk/core/ObjectModifier;
    .end local v9    # "s":I
    :cond_a7
    const/4 v2, 0x0

    :goto_a8
    array-length v11, v4

    if-ge v2, v11, :cond_d6

    .line 166
    aget-object v10, v4, v2

    .line 167
    .restart local v10    # "sceneInterface":Lcom/idk/core/SceneInterface;
    iget-boolean v11, v10, Lcom/idk/core/SceneInterface;->active:Z

    if-eqz v11, :cond_b6

    .line 168
    aget-object v11, v4, v2

    invoke-virtual {v11}, Lcom/idk/core/SceneInterface;->onPostUpdate()V

    .line 165
    :cond_b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    .line 172
    .end local v2    # "i":I
    .end local v4    # "interfaces":[Lcom/idk/core/SceneInterface;
    .end local v8    # "objects":[Lcom/idk/core/GameObject;
    .end local v10    # "sceneInterface":Lcom/idk/core/SceneInterface;
    :cond_b9
    invoke-virtual {p1}, Lcom/idk/core/Scene;->getObjectArray()[Lcom/idk/core/GameObject;

    move-result-object v8

    .line 173
    .restart local v8    # "objects":[Lcom/idk/core/GameObject;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_be
    array-length v11, v8

    if-ge v2, v11, :cond_d6

    .line 174
    aget-object v11, v8, v2

    invoke-virtual {v11}, Lcom/idk/core/GameObject;->getModifierArray()[Lcom/idk/core/ObjectModifier;

    move-result-object v6

    .line 175
    .restart local v6    # "modifiers":[Lcom/idk/core/ObjectModifier;
    const/4 v9, 0x0

    .restart local v9    # "s":I
    :goto_c8
    array-length v11, v6

    if-ge v9, v11, :cond_d3

    .line 176
    aget-object v7, v6, v9

    .line 177
    .restart local v7    # "objectModifier":Lcom/idk/core/ObjectModifier;
    invoke-virtual {v7}, Lcom/idk/core/ObjectModifier;->onDisabledRepeat()V

    .line 175
    add-int/lit8 v9, v9, 0x1

    goto :goto_c8

    .line 173
    .end local v7    # "objectModifier":Lcom/idk/core/ObjectModifier;
    :cond_d3
    add-int/lit8 v2, v2, 0x1

    goto :goto_be

    .line 181
    .end local v6    # "modifiers":[Lcom/idk/core/ObjectModifier;
    .end local v9    # "s":I
    :cond_d6
    return-void
.end method

.method private startScene(Lcom/idk/core/Scene;)V
    .registers 11
    .param p1, "scn"    # Lcom/idk/core/Scene;

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/idk/core/Scene;->getObjectArray()[Lcom/idk/core/GameObject;

    move-result-object v6

    .line 79
    .local v6, "objects":[Lcom/idk/core/GameObject;
    invoke-virtual {p1}, Lcom/idk/core/Scene;->getInterfaceArray()[Lcom/idk/core/SceneInterface;

    move-result-object v3

    .line 80
    .local v3, "interfaces":[Lcom/idk/core/SceneInterface;
    iput-object p0, p1, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v8, v3

    if-ge v1, v8, :cond_18

    .line 82
    aget-object v2, v3, v1

    .line 83
    .local v2, "inf":Lcom/idk/core/SceneInterface;
    iput-object p1, v2, Lcom/idk/core/SceneInterface;->targetScene:Lcom/idk/core/Scene;

    .line 84
    invoke-virtual {v2}, Lcom/idk/core/SceneInterface;->onCreate()V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 86
    .end local v2    # "inf":Lcom/idk/core/SceneInterface;
    :cond_18
    const/4 v1, 0x0

    :goto_19
    array-length v8, v6

    if-ge v1, v8, :cond_37

    .line 87
    aget-object v0, v6, v1

    .line 88
    .local v0, "game":Lcom/idk/core/GameObject;
    iput-object p1, v0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    .line 89
    aget-object v8, v6, v1

    invoke-virtual {v8}, Lcom/idk/core/GameObject;->getModifierArray()[Lcom/idk/core/ObjectModifier;

    move-result-object v5

    .line 90
    .local v5, "modifiers":[Lcom/idk/core/ObjectModifier;
    const/4 v7, 0x0

    .local v7, "s":I
    :goto_27
    array-length v8, v5

    if-ge v7, v8, :cond_34

    .line 91
    aget-object v4, v5, v7

    .line 92
    .local v4, "modifier":Lcom/idk/core/ObjectModifier;
    iput-object v0, v4, Lcom/idk/core/ObjectModifier;->targetObject:Lcom/idk/core/GameObject;

    .line 93
    invoke-virtual {v4}, Lcom/idk/core/ObjectModifier;->onCreate()V

    .line 90
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 86
    .end local v4    # "modifier":Lcom/idk/core/ObjectModifier;
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 96
    .end local v0    # "game":Lcom/idk/core/GameObject;
    .end local v5    # "modifiers":[Lcom/idk/core/ObjectModifier;
    .end local v7    # "s":I
    :cond_37
    const/4 v1, 0x0

    :goto_38
    array-length v8, v3

    if-ge v1, v8, :cond_43

    .line 97
    aget-object v8, v3, v1

    invoke-virtual {v8}, Lcom/idk/core/SceneInterface;->onStart()V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 99
    :cond_43
    const/4 v1, 0x0

    :goto_44
    array-length v8, v6

    if-ge v1, v8, :cond_5c

    .line 100
    aget-object v8, v6, v1

    invoke-virtual {v8}, Lcom/idk/core/GameObject;->getModifierArray()[Lcom/idk/core/ObjectModifier;

    move-result-object v5

    .line 101
    .restart local v5    # "modifiers":[Lcom/idk/core/ObjectModifier;
    const/4 v7, 0x0

    .restart local v7    # "s":I
    :goto_4e
    array-length v8, v5

    if-ge v7, v8, :cond_59

    .line 102
    aget-object v8, v5, v7

    invoke-virtual {v8}, Lcom/idk/core/ObjectModifier;->onStart()V

    .line 101
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    .line 99
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 105
    .end local v5    # "modifiers":[Lcom/idk/core/ObjectModifier;
    .end local v7    # "s":I
    :cond_5c
    return-void
.end method

.method private updateVoid()V
    .registers 13

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const v8, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    .line 331
    :goto_6
    iget-object v2, p0, Lcom/idk/core/BaseEngine;->pretask:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 332
    iget-object v2, p0, Lcom/idk/core/BaseEngine;->pretask:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 334
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/idk/core/BaseEngine;->newTime:J

    .line 335
    iget-wide v4, p0, Lcom/idk/core/BaseEngine;->newTime:J

    iget-wide v6, p0, Lcom/idk/core/BaseEngine;->oldTime:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/idk/core/BaseEngine;->delTime:J

    .line 336
    iget-wide v4, p0, Lcom/idk/core/BaseEngine;->newTime:J

    iput-wide v4, p0, Lcom/idk/core/BaseEngine;->oldTime:J

    .line 337
    iget-wide v4, p0, Lcom/idk/core/BaseEngine;->delTime:J

    long-to-double v4, v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v4, v6

    iput-wide v4, p0, Lcom/idk/core/BaseEngine;->delta:D

    .line 339
    iget-wide v4, p0, Lcom/idk/core/BaseEngine;->deltaCounter:D

    iget-wide v6, p0, Lcom/idk/core/BaseEngine;->delta:D

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/idk/core/BaseEngine;->deltaCounter:D

    .line 340
    iget v2, p0, Lcom/idk/core/BaseEngine;->fpsCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/idk/core/BaseEngine;->fpsCounter:I

    .line 341
    iget-wide v4, p0, Lcom/idk/core/BaseEngine;->deltaCounter:D

    cmpl-double v2, v4, v10

    if-ltz v2, :cond_54

    .line 342
    iget-wide v4, p0, Lcom/idk/core/BaseEngine;->deltaCounter:D

    sub-double/2addr v4, v10

    iput-wide v4, p0, Lcom/idk/core/BaseEngine;->deltaCounter:D

    .line 343
    iget v2, p0, Lcom/idk/core/BaseEngine;->fpsCounter:I

    iput v2, p0, Lcom/idk/core/BaseEngine;->fps:I

    .line 344
    iput v3, p0, Lcom/idk/core/BaseEngine;->fpsCounter:I

    .line 346
    :cond_54
    iget-object v2, p0, Lcom/idk/core/BaseEngine;->touchData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 347
    iget-object v4, p0, Lcom/idk/core/BaseEngine;->array:[Lcom/idk/core/BaseEngine$CustomTouchData;

    array-length v5, v4

    move v2, v3

    :goto_5d
    if-ge v2, v5, :cond_6d

    aget-object v1, v4, v2

    .line 348
    .local v1, "ts":Lcom/idk/core/BaseEngine$CustomTouchData;
    iget-boolean v6, v1, Lcom/idk/core/BaseEngine$CustomTouchData;->isPressed:Z

    if-eqz v6, :cond_6a

    .line 349
    iget-object v6, p0, Lcom/idk/core/BaseEngine;->touchData:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 352
    .end local v1    # "ts":Lcom/idk/core/BaseEngine$CustomTouchData;
    :cond_6d
    const/16 v2, 0x4100

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 353
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v8, v8, v8, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 354
    const/16 v2, 0xb71

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 355
    const/16 v2, 0x201

    invoke-static {v2}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_82
    invoke-virtual {p0}, Lcom/idk/core/BaseEngine;->getSceneCount()I

    move-result v2

    if-ge v0, v2, :cond_92

    .line 357
    invoke-virtual {p0, v0}, Lcom/idk/core/BaseEngine;->getSceneAt(I)Lcom/idk/core/Scene;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/idk/core/BaseEngine;->renderScene(Lcom/idk/core/Scene;)V

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 359
    :cond_92
    :goto_92
    iget-object v2, p0, Lcom/idk/core/BaseEngine;->postTask:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a6

    .line 360
    iget-object v2, p0, Lcom/idk/core/BaseEngine;->postTask:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_92

    .line 362
    :cond_a6
    return-void
.end method


# virtual methods
.method public addFrameEndTask(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->postTask:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public addFrameStartTask(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->pretask:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public addScene(Lcom/idk/core/Scene;)Z
    .registers 4
    .param p1, "scn"    # Lcom/idk/core/Scene;

    .prologue
    .line 184
    iget-object v1, p0, Lcom/idk/core/BaseEngine;->sceneArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 185
    .local v0, "complete":Z
    new-instance v1, Lcom/idk/core/BaseEngine$1;

    invoke-direct {v1, p0, p1}, Lcom/idk/core/BaseEngine$1;-><init>(Lcom/idk/core/BaseEngine;Lcom/idk/core/Scene;)V

    invoke-virtual {p0, v1}, Lcom/idk/core/BaseEngine;->addFrameStartTask(Ljava/lang/Runnable;)V

    .line 193
    if-nez v0, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public addStateListener(Lcom/idk/core/StateListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/idk/core/StateListener;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->stateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 267
    new-instance v0, Lcom/idk/core/BaseEngine$5;

    invoke-direct {v0, p0, p1}, Lcom/idk/core/BaseEngine$5;-><init>(Lcom/idk/core/BaseEngine;Lcom/idk/core/StateListener;)V

    invoke-virtual {p0, v0}, Lcom/idk/core/BaseEngine;->addFrameEndTask(Ljava/lang/Runnable;)V

    .line 274
    :cond_10
    return-void
.end method

.method public addTouchListener(Lcom/idk/core/TouchListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/idk/core/TouchListener;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 245
    new-instance v0, Lcom/idk/core/BaseEngine$3;

    invoke-direct {v0, p0, p1}, Lcom/idk/core/BaseEngine$3;-><init>(Lcom/idk/core/BaseEngine;Lcom/idk/core/TouchListener;)V

    invoke-virtual {p0, v0}, Lcom/idk/core/BaseEngine;->addFrameEndTask(Ljava/lang/Runnable;)V

    .line 252
    :cond_10
    return-void
.end method

.method public getAssetDirectory(Ljava/lang/String;)Lcom/idk/core/AssetDirectory;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssetFile(Ljava/lang/String;)Lcom/idk/core/AssetFile;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 300
    new-instance v0, Lcom/idk/core/BaseEngine$AssetFileImpl;

    invoke-direct {v0, p0, p1}, Lcom/idk/core/BaseEngine$AssetFileImpl;-><init>(Lcom/idk/core/BaseEngine;Ljava/lang/String;)V

    .line 301
    .local v0, "as":Lcom/idk/core/AssetFile;
    invoke-interface {v0}, Lcom/idk/core/AssetFile;->getFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 304
    .end local v0    # "as":Lcom/idk/core/AssetFile;
    :goto_b
    return-object v0

    .restart local v0    # "as":Lcom/idk/core/AssetFile;
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getDataDirectory()Ljava/io/File;
    .registers 2

    .prologue
    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeltaTime()F
    .registers 3

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/idk/core/BaseEngine;->delta:D

    double-to-float v0, v0

    return v0
.end method

.method public getFrameRate()I
    .registers 2

    .prologue
    .line 288
    iget v0, p0, Lcom/idk/core/BaseEngine;->fps:I

    return v0
.end method

.method public getFullDeltaTime()D
    .registers 3

    .prologue
    .line 292
    iget-wide v0, p0, Lcom/idk/core/BaseEngine;->delta:D

    return-wide v0
.end method

.method public getLastHeight()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/idk/core/BaseEngine;->lastHeight:I

    return v0
.end method

.method public getLastWidth()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/idk/core/BaseEngine;->lastWidth:I

    return v0
.end method

.method public getMediaDirectory()Ljava/io/File;
    .registers 2

    .prologue
    .line 328
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivateDataDirectory()Ljava/io/File;
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSceneArray()[Lcom/idk/core/Scene;
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->sceneArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/idk/core/Scene;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idk/core/Scene;

    return-object v0
.end method

.method public getSceneAt(I)Lcom/idk/core/Scene;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->sceneArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/core/Scene;

    return-object v0
.end method

.method public getSceneCount()I
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->sceneArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTouchManager()Lcom/idk/core/TouchManager;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->touchManager:Lcom/idk/core/TouchManager;

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->userData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public hasKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->userData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public insertUserData(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->userData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method

.method public isDirectory(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public isFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/idk/core/BaseEngine;->performPause()V

    .line 65
    return-void
.end method

.method public removeScene(Lcom/idk/core/Scene;)Z
    .registers 4
    .param p1, "scn"    # Lcom/idk/core/Scene;

    .prologue
    .line 197
    iget-object v1, p0, Lcom/idk/core/BaseEngine;->sceneArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 198
    .local v0, "complete":Z
    new-instance v1, Lcom/idk/core/BaseEngine$2;

    invoke-direct {v1, p0, p1}, Lcom/idk/core/BaseEngine$2;-><init>(Lcom/idk/core/BaseEngine;Lcom/idk/core/Scene;)V

    invoke-virtual {p0, v1}, Lcom/idk/core/BaseEngine;->addFrameEndTask(Ljava/lang/Runnable;)V

    .line 204
    return v0
.end method

.method public removeStateListener(Lcom/idk/core/StateListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/idk/core/StateListener;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->stateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 278
    new-instance v0, Lcom/idk/core/BaseEngine$6;

    invoke-direct {v0, p0, p1}, Lcom/idk/core/BaseEngine$6;-><init>(Lcom/idk/core/BaseEngine;Lcom/idk/core/StateListener;)V

    invoke-virtual {p0, v0}, Lcom/idk/core/BaseEngine;->addFrameEndTask(Ljava/lang/Runnable;)V

    .line 285
    :cond_10
    return-void
.end method

.method public removeTouchListener(Lcom/idk/core/TouchListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/idk/core/TouchListener;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/idk/core/BaseEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 256
    new-instance v0, Lcom/idk/core/BaseEngine$4;

    invoke-direct {v0, p0, p1}, Lcom/idk/core/BaseEngine$4;-><init>(Lcom/idk/core/BaseEngine;Lcom/idk/core/TouchListener;)V

    invoke-virtual {p0, v0}, Lcom/idk/core/BaseEngine;->addFrameEndTask(Ljava/lang/Runnable;)V

    .line 263
    :cond_10
    return-void
.end method

.method public resume()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/idk/core/BaseEngine;->performResume()V

    .line 68
    return-void
.end method

###### Class com.idk.core.BaseEngine.AnonymousClass1 (com.idk.core.BaseEngine$1)
.class Lcom/idk/core/BaseEngine$1;
.super Ljava/lang/Object;
.source "BaseEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/core/BaseEngine;->addScene(Lcom/idk/core/Scene;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/BaseEngine;

.field final synthetic val$scn:Lcom/idk/core/Scene;


# direct methods
.method constructor <init>(Lcom/idk/core/BaseEngine;Lcom/idk/core/Scene;)V
    .registers 3
    .param p1, "this$0"    # Lcom/idk/core/BaseEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 185
    iput-object p1, p0, Lcom/idk/core/BaseEngine$1;->this$0:Lcom/idk/core/BaseEngine;

    iput-object p2, p0, Lcom/idk/core/BaseEngine$1;->val$scn:Lcom/idk/core/Scene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/idk/core/BaseEngine$1;->val$scn:Lcom/idk/core/Scene;

    iget-object v1, p0, Lcom/idk/core/BaseEngine$1;->this$0:Lcom/idk/core/BaseEngine;

    iput-object v1, v0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    .line 189
    iget-object v0, p0, Lcom/idk/core/BaseEngine$1;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v0}, Lcom/idk/core/BaseEngine;->access$200(Lcom/idk/core/BaseEngine;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/idk/core/BaseEngine$1;->val$scn:Lcom/idk/core/Scene;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/idk/core/BaseEngine$1;->this$0:Lcom/idk/core/BaseEngine;

    iget-object v1, p0, Lcom/idk/core/BaseEngine$1;->val$scn:Lcom/idk/core/Scene;

    invoke-static {v0, v1}, Lcom/idk/core/BaseEngine;->access$300(Lcom/idk/core/BaseEngine;Lcom/idk/core/Scene;)V

    .line 191
    return-void
.end method

###### Class com.idk.core.BaseEngine.AnonymousClass2 (com.idk.core.BaseEngine$2)
.class Lcom/idk/core/BaseEngine$2;
.super Ljava/lang/Object;
.source "BaseEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/core/BaseEngine;->removeScene(Lcom/idk/core/Scene;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/BaseEngine;

.field final synthetic val$scn:Lcom/idk/core/Scene;


# direct methods
.method constructor <init>(Lcom/idk/core/BaseEngine;Lcom/idk/core/Scene;)V
    .registers 3
    .param p1, "this$0"    # Lcom/idk/core/BaseEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 198
    iput-object p1, p0, Lcom/idk/core/BaseEngine$2;->this$0:Lcom/idk/core/BaseEngine;

    iput-object p2, p0, Lcom/idk/core/BaseEngine$2;->val$scn:Lcom/idk/core/Scene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/idk/core/BaseEngine$2;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v0}, Lcom/idk/core/BaseEngine;->access$200(Lcom/idk/core/BaseEngine;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/idk/core/BaseEngine$2;->val$scn:Lcom/idk/core/Scene;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

###### Class com.idk.core.BaseEngine.AnonymousClass3 (com.idk.core.BaseEngine$3)
.class Lcom/idk/core/BaseEngine$3;
.super Ljava/lang/Object;
.source "BaseEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/core/BaseEngine;->addTouchListener(Lcom/idk/core/TouchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/BaseEngine;

.field final synthetic val$listener:Lcom/idk/core/TouchListener;


# direct methods
.method constructor <init>(Lcom/idk/core/BaseEngine;Lcom/idk/core/TouchListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/idk/core/BaseEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 245
    iput-object p1, p0, Lcom/idk/core/BaseEngine$3;->this$0:Lcom/idk/core/BaseEngine;

    iput-object p2, p0, Lcom/idk/core/BaseEngine$3;->val$listener:Lcom/idk/core/TouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/idk/core/BaseEngine$3;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v0}, Lcom/idk/core/BaseEngine;->access$400(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/idk/core/BaseEngine$3;->val$listener:Lcom/idk/core/TouchListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

###### Class com.idk.core.BaseEngine.AnonymousClass4 (com.idk.core.BaseEngine$4)
.class Lcom/idk/core/BaseEngine$4;
.super Ljava/lang/Object;
.source "BaseEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/core/BaseEngine;->removeTouchListener(Lcom/idk/core/TouchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/BaseEngine;

.field final synthetic val$listener:Lcom/idk/core/TouchListener;


# direct methods
.method constructor <init>(Lcom/idk/core/BaseEngine;Lcom/idk/core/TouchListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/idk/core/BaseEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 256
    iput-object p1, p0, Lcom/idk/core/BaseEngine$4;->this$0:Lcom/idk/core/BaseEngine;

    iput-object p2, p0, Lcom/idk/core/BaseEngine$4;->val$listener:Lcom/idk/core/TouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/idk/core/BaseEngine$4;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v0}, Lcom/idk/core/BaseEngine;->access$400(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/idk/core/BaseEngine$4;->val$listener:Lcom/idk/core/TouchListener;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

###### Class com.idk.core.BaseEngine.AnonymousClass5 (com.idk.core.BaseEngine$5)
.class Lcom/idk/core/BaseEngine$5;
.super Ljava/lang/Object;
.source "BaseEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/core/BaseEngine;->addStateListener(Lcom/idk/core/StateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/BaseEngine;

.field final synthetic val$listener:Lcom/idk/core/StateListener;


# direct methods
.method constructor <init>(Lcom/idk/core/BaseEngine;Lcom/idk/core/StateListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/idk/core/BaseEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 267
    iput-object p1, p0, Lcom/idk/core/BaseEngine$5;->this$0:Lcom/idk/core/BaseEngine;

    iput-object p2, p0, Lcom/idk/core/BaseEngine$5;->val$listener:Lcom/idk/core/StateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/idk/core/BaseEngine$5;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v0}, Lcom/idk/core/BaseEngine;->access$500(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/idk/core/BaseEngine$5;->val$listener:Lcom/idk/core/StateListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

###### Class com.idk.core.BaseEngine.AnonymousClass6 (com.idk.core.BaseEngine$6)
.class Lcom/idk/core/BaseEngine$6;
.super Ljava/lang/Object;
.source "BaseEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/core/BaseEngine;->removeStateListener(Lcom/idk/core/StateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/BaseEngine;

.field final synthetic val$listener:Lcom/idk/core/StateListener;


# direct methods
.method constructor <init>(Lcom/idk/core/BaseEngine;Lcom/idk/core/StateListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/idk/core/BaseEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 278
    iput-object p1, p0, Lcom/idk/core/BaseEngine$6;->this$0:Lcom/idk/core/BaseEngine;

    iput-object p2, p0, Lcom/idk/core/BaseEngine$6;->val$listener:Lcom/idk/core/StateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/idk/core/BaseEngine$6;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v0}, Lcom/idk/core/BaseEngine;->access$500(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/idk/core/BaseEngine$6;->val$listener:Lcom/idk/core/StateListener;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method

###### Class com.idk.core.BaseEngine.AnonymousClass7 (com.idk.core.BaseEngine$7)
.class Lcom/idk/core/BaseEngine$7;
.super Ljava/lang/Object;
.source "BaseEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/core/BaseEngine;->performPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/BaseEngine;


# direct methods
.method constructor <init>(Lcom/idk/core/BaseEngine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/idk/core/BaseEngine;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/idk/core/BaseEngine$7;->this$0:Lcom/idk/core/BaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 397
    iget-object v4, p0, Lcom/idk/core/BaseEngine$7;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v4}, Lcom/idk/core/BaseEngine;->access$600(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 398
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v4, p0, Lcom/idk/core/BaseEngine$7;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v4}, Lcom/idk/core/BaseEngine;->access$400(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3f

    .line 399
    iget-object v4, p0, Lcom/idk/core/BaseEngine$7;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v4}, Lcom/idk/core/BaseEngine;->access$400(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/idk/core/TouchListener;

    .line 400
    .local v3, "ls":Lcom/idk/core/TouchListener;
    const/4 v2, 0x0

    .local v2, "l":I
    :goto_23
    const/16 v4, 0x10

    if-ge v2, v4, :cond_3c

    .line 401
    iget-object v4, p0, Lcom/idk/core/BaseEngine$7;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v4}, Lcom/idk/core/BaseEngine;->access$700(Lcom/idk/core/BaseEngine;)[Lcom/idk/core/BaseEngine$CustomTouchData;

    move-result-object v4

    aget-object v0, v4, v2

    .line 402
    .local v0, "data":Lcom/idk/core/BaseEngine$CustomTouchData;
    iget-boolean v4, v0, Lcom/idk/core/BaseEngine$CustomTouchData;->isPressed:Z

    if-eqz v4, :cond_39

    .line 403
    invoke-interface {v3, v0}, Lcom/idk/core/TouchListener;->onDrag(Lcom/idk/core/TouchData;)V

    .line 404
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/idk/core/BaseEngine$CustomTouchData;->isPressed:Z

    .line 400
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 398
    .end local v0    # "data":Lcom/idk/core/BaseEngine$CustomTouchData;
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 408
    .end local v2    # "l":I
    .end local v3    # "ls":Lcom/idk/core/TouchListener;
    :cond_3f
    const/4 v1, 0x0

    :goto_40
    iget-object v4, p0, Lcom/idk/core/BaseEngine$7;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v4}, Lcom/idk/core/BaseEngine;->access$500(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5e

    .line 409
    iget-object v4, p0, Lcom/idk/core/BaseEngine$7;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v4}, Lcom/idk/core/BaseEngine;->access$500(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/idk/core/StateListener;

    invoke-interface {v4}, Lcom/idk/core/StateListener;->onPause()V

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 411
    :cond_5e
    return-void
.end method

###### Class com.idk.core.BaseEngine.AnonymousClass8 (com.idk.core.BaseEngine$8)
.class Lcom/idk/core/BaseEngine$8;
.super Ljava/lang/Object;
.source "BaseEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idk/core/BaseEngine;->performResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/BaseEngine;


# direct methods
.method constructor <init>(Lcom/idk/core/BaseEngine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/idk/core/BaseEngine;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/idk/core/BaseEngine$8;->this$0:Lcom/idk/core/BaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 419
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/idk/core/BaseEngine$8;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v1}, Lcom/idk/core/BaseEngine;->access$500(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 420
    iget-object v1, p0, Lcom/idk/core/BaseEngine$8;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v1}, Lcom/idk/core/BaseEngine;->access$500(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idk/core/StateListener;

    invoke-interface {v1}, Lcom/idk/core/StateListener;->onResume()V

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 422
    :cond_1f
    return-void
.end method

###### Class com.idk.core.BaseEngine.AssetDirectoryImpl (com.idk.core.BaseEngine$AssetDirectoryImpl)
.class Lcom/idk/core/BaseEngine$AssetDirectoryImpl;
.super Ljava/lang/Object;
.source "BaseEngine.java"

# interfaces
.implements Lcom/idk/core/AssetDirectory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idk/core/BaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssetDirectoryImpl"
.end annotation


# instance fields
.field list:[Ljava/lang/String;

.field final synthetic this$0:Lcom/idk/core/BaseEngine;


# direct methods
.method constructor <init>(Lcom/idk/core/BaseEngine;Ljava/lang/String;)V
    .registers 4
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/idk/core/BaseEngine$AssetDirectoryImpl;->this$0:Lcom/idk/core/BaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    :try_start_5
    invoke-static {p1}, Lcom/idk/core/BaseEngine;->access$800(Lcom/idk/core/BaseEngine;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/idk/core/BaseEngine$AssetDirectoryImpl;->list:[Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_14

    .line 630
    :goto_13
    return-void

    .line 627
    :catch_14
    move-exception v0

    goto :goto_13
.end method


# virtual methods
.method public getChildCount()I
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/idk/core/BaseEngine$AssetDirectoryImpl;->list:[Ljava/lang/String;

    if-nez v0, :cond_6

    .line 634
    const/4 v0, 0x0

    .line 636
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/idk/core/BaseEngine$AssetDirectoryImpl;->list:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_5
.end method

.method public getChildDirectories()[Lcom/idk/core/AssetDirectory;
    .registers 2

    .prologue
    .line 652
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/idk/core/AssetDirectory;

    return-object v0
.end method

.method public getChildFiles()[Lcom/idk/core/AssetFile;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 641
    iget-object v1, p0, Lcom/idk/core/BaseEngine$AssetDirectoryImpl;->list:[Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v0, "ims":Ljava/util/List;, "Ljava/util/List<Lcom/idk/core/BaseEngine$AssetFileImpl;>;"
    iget-object v3, p0, Lcom/idk/core/BaseEngine$AssetDirectoryImpl;->list:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_e
    if-ge v1, v4, :cond_15

    aget-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 647
    .end local v0    # "ims":Ljava/util/List;, "Ljava/util/List<Lcom/idk/core/BaseEngine$AssetFileImpl;>;"
    :cond_15
    new-array v1, v2, [Lcom/idk/core/AssetFile;

    return-object v1
.end method

###### Class com.idk.core.BaseEngine.AssetFileImpl (com.idk.core.BaseEngine$AssetFileImpl)
.class Lcom/idk/core/BaseEngine$AssetFileImpl;
.super Ljava/lang/Object;
.source "BaseEngine.java"

# interfaces
.implements Lcom/idk/core/AssetFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idk/core/BaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssetFileImpl"
.end annotation


# instance fields
.field descriptor:Landroid/content/res/AssetFileDescriptor;

.field file:Ljava/lang/String;

.field len:J

.field final synthetic this$0:Lcom/idk/core/BaseEngine;


# direct methods
.method constructor <init>(Lcom/idk/core/BaseEngine;Ljava/lang/String;)V
    .registers 7
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/idk/core/BaseEngine$AssetFileImpl;->this$0:Lcom/idk/core/BaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/idk/core/BaseEngine$AssetFileImpl;->len:J

    .line 547
    iput-object p2, p0, Lcom/idk/core/BaseEngine$AssetFileImpl;->file:Ljava/lang/String;

    .line 548
    invoke-virtual {p0}, Lcom/idk/core/BaseEngine$AssetFileImpl;->getFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 549
    .local v0, "as":Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_17

    .line 550
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/idk/core/BaseEngine$AssetFileImpl;->len:J

    .line 552
    :cond_17
    return-void
.end method


# virtual methods
.method public getFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .registers 4

    .prologue
    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/idk/core/BaseEngine$AssetFileImpl;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v1}, Lcom/idk/core/BaseEngine;->access$800(Lcom/idk/core/BaseEngine;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/idk/core/BaseEngine$AssetFileImpl;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    .line 584
    :goto_10
    return-object v1

    .line 578
    :catch_11
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Exception;
    :try_start_12
    iget-object v1, p0, Lcom/idk/core/BaseEngine$AssetFileImpl;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v1}, Lcom/idk/core/BaseEngine;->access$800(Lcom/idk/core/BaseEngine;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/idk/core/BaseEngine$AssetFileImpl;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_23

    move-result-object v1

    goto :goto_10

    .line 581
    :catch_23
    move-exception v1

    .line 584
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/idk/core/BaseEngine$AssetFileImpl;->getFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 564
    .local v0, "as":Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_f

    .line 566
    :try_start_6
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v2

    .line 571
    :goto_a
    return-object v2

    .line 567
    :catch_b
    move-exception v1

    .line 568
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 571
    .end local v1    # "e":Ljava/io/IOException;
    :cond_f
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public length()J
    .registers 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/idk/core/BaseEngine$AssetFileImpl;->descriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public name()Ljava/lang/String;
    .registers 3

    .prologue
    .line 555
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/idk/core/BaseEngine$AssetFileImpl;->file:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .registers 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/idk/core/BaseEngine$AssetFileImpl;->file:Ljava/lang/String;

    return-object v0
.end method

###### Class com.idk.core.BaseEngine.CustomTouchData (com.idk.core.BaseEngine$CustomTouchData)
.class Lcom/idk/core/BaseEngine$CustomTouchData;
.super Lcom/idk/core/TouchData;
.source "BaseEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idk/core/BaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTouchData"
.end annotation


# instance fields
.field down:Z

.field drag:Z

.field final synthetic this$0:Lcom/idk/core/BaseEngine;

.field up:Z


# direct methods
.method private constructor <init>(Lcom/idk/core/BaseEngine;)V
    .registers 3

    .prologue
    .line 537
    iput-object p1, p0, Lcom/idk/core/BaseEngine$CustomTouchData;->this$0:Lcom/idk/core/BaseEngine;

    invoke-direct {p0}, Lcom/idk/core/TouchData;-><init>()V

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idk/core/BaseEngine$CustomTouchData;->drag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/idk/core/BaseEngine;Lcom/idk/core/BaseEngine$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/idk/core/BaseEngine;
    .param p2, "x1"    # Lcom/idk/core/BaseEngine$1;

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/idk/core/BaseEngine$CustomTouchData;-><init>(Lcom/idk/core/BaseEngine;)V

    return-void
.end method

###### Class com.idk.core.BaseEngine.Renderer (com.idk.core.BaseEngine$Renderer)
.class Lcom/idk/core/BaseEngine$Renderer;
.super Landroid/opengl/GLSurfaceView;
.source "BaseEngine.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idk/core/BaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Renderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/BaseEngine;


# direct methods
.method constructor <init>(Lcom/idk/core/BaseEngine;)V
    .registers 9

    .prologue
    const/16 v1, 0x8

    .line 482
    iput-object p1, p0, Lcom/idk/core/BaseEngine$Renderer;->this$0:Lcom/idk/core/BaseEngine;

    .line 483
    invoke-static {p1}, Lcom/idk/core/BaseEngine;->access$800(Lcom/idk/core/BaseEngine;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 484
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/idk/core/BaseEngine$Renderer;->setPreserveEGLContextOnPause(Z)V

    .line 485
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/idk/core/BaseEngine$Renderer;->setEGLContextClientVersion(I)V

    .line 486
    const/16 v5, 0x18

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/idk/core/BaseEngine$Renderer;->setEGLConfigChooser(IIIIII)V

    .line 487
    invoke-virtual {p0, p0}, Lcom/idk/core/BaseEngine$Renderer;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 488
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/idk/core/BaseEngine$Renderer;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v0}, Lcom/idk/core/BaseEngine;->access$1200(Lcom/idk/core/BaseEngine;)V

    .line 506
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 495
    iget-object v3, p0, Lcom/idk/core/BaseEngine$Renderer;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v3, p3}, Lcom/idk/core/BaseEngine;->access$1002(Lcom/idk/core/BaseEngine;I)I

    .line 496
    iget-object v3, p0, Lcom/idk/core/BaseEngine$Renderer;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v3, p2}, Lcom/idk/core/BaseEngine;->access$1102(Lcom/idk/core/BaseEngine;I)I

    .line 497
    int-to-float v1, p2

    .line 498
    .local v1, "x":F
    int-to-float v2, p3

    .line 499
    .local v2, "y":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v3, p0, Lcom/idk/core/BaseEngine$Renderer;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v3}, Lcom/idk/core/BaseEngine;->access$500(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 500
    iget-object v3, p0, Lcom/idk/core/BaseEngine$Renderer;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v3}, Lcom/idk/core/BaseEngine;->access$500(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/idk/core/StateListener;

    invoke-interface {v3, p2, p3}, Lcom/idk/core/StateListener;->onSurfaceChange(II)V

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 502
    :cond_2b
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/idk/core/BaseEngine$Renderer;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/idk/core/BaseEngine;->access$902(Lcom/idk/core/BaseEngine;J)J

    .line 492
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 510
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 511
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_32

    .line 533
    .end local v0    # "action":I
    :goto_b
    :pswitch_b
    const/4 v2, 0x1

    return v2

    .line 514
    .restart local v0    # "action":I
    :pswitch_d
    iget-object v2, p0, Lcom/idk/core/BaseEngine$Renderer;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v2, p1}, Lcom/idk/core/BaseEngine;->access$1300(Lcom/idk/core/BaseEngine;Landroid/view/MotionEvent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_b

    .line 529
    .end local v0    # "action":I
    :catch_13
    move-exception v1

    .line 530
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_b

    .line 517
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":I
    :pswitch_1a
    :try_start_1a
    iget-object v2, p0, Lcom/idk/core/BaseEngine$Renderer;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v2, p1}, Lcom/idk/core/BaseEngine;->access$1400(Lcom/idk/core/BaseEngine;Landroid/view/MotionEvent;)V

    goto :goto_b

    .line 520
    :pswitch_20
    iget-object v2, p0, Lcom/idk/core/BaseEngine$Renderer;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v2, p1}, Lcom/idk/core/BaseEngine;->access$1300(Lcom/idk/core/BaseEngine;Landroid/view/MotionEvent;)V

    goto :goto_b

    .line 523
    :pswitch_26
    iget-object v2, p0, Lcom/idk/core/BaseEngine$Renderer;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v2, p1}, Lcom/idk/core/BaseEngine;->access$1400(Lcom/idk/core/BaseEngine;Landroid/view/MotionEvent;)V

    goto :goto_b

    .line 526
    :pswitch_2c
    iget-object v2, p0, Lcom/idk/core/BaseEngine$Renderer;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v2, p1}, Lcom/idk/core/BaseEngine;->access$1500(Lcom/idk/core/BaseEngine;Landroid/view/MotionEvent;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_31} :catch_13

    goto :goto_b

    .line 511
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_d
        :pswitch_1a
        :pswitch_2c
        :pswitch_b
        :pswitch_b
        :pswitch_20
        :pswitch_26
    .end packed-switch
.end method

###### Class com.idk.core.BaseEngine.TouchManagerImpl (com.idk.core.BaseEngine$TouchManagerImpl)
.class Lcom/idk/core/BaseEngine$TouchManagerImpl;
.super Lcom/idk/core/TouchManager;
.source "BaseEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idk/core/BaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchManagerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idk/core/BaseEngine;


# direct methods
.method private constructor <init>(Lcom/idk/core/BaseEngine;)V
    .registers 2

    .prologue
    .line 591
    iput-object p1, p0, Lcom/idk/core/BaseEngine$TouchManagerImpl;->this$0:Lcom/idk/core/BaseEngine;

    invoke-direct {p0}, Lcom/idk/core/TouchManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/idk/core/BaseEngine;Lcom/idk/core/BaseEngine$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/idk/core/BaseEngine;
    .param p2, "x1"    # Lcom/idk/core/BaseEngine$1;

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lcom/idk/core/BaseEngine$TouchManagerImpl;-><init>(Lcom/idk/core/BaseEngine;)V

    return-void
.end method


# virtual methods
.method public addTouchListener(Lcom/idk/core/TouchListener;)V
    .registers 3
    .param p1, "tl"    # Lcom/idk/core/TouchListener;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/idk/core/BaseEngine$TouchManagerImpl;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v0}, Lcom/idk/core/BaseEngine;->access$400(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    return-void
.end method

.method public clearAllListener()V
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/idk/core/BaseEngine$TouchManagerImpl;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v0}, Lcom/idk/core/BaseEngine;->access$400(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 619
    return-void
.end method

.method public getTouchAt(I)Lcom/idk/core/TouchData;
    .registers 3
    .param p1, "idx"    # I

    .prologue
    .line 598
    iget-object v0, p0, Lcom/idk/core/BaseEngine$TouchManagerImpl;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v0}, Lcom/idk/core/BaseEngine;->access$600(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/core/TouchData;

    return-object v0
.end method

.method public getTouchCount()I
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/idk/core/BaseEngine$TouchManagerImpl;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v0}, Lcom/idk/core/BaseEngine;->access$600(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTouchListener(I)Lcom/idk/core/TouchListener;
    .registers 3
    .param p1, "idx"    # I

    .prologue
    .line 610
    iget-object v0, p0, Lcom/idk/core/BaseEngine$TouchManagerImpl;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v0}, Lcom/idk/core/BaseEngine;->access$400(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/core/TouchListener;

    return-object v0
.end method

.method public getTouchListenerCount()I
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/idk/core/BaseEngine$TouchManagerImpl;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v0}, Lcom/idk/core/BaseEngine;->access$400(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public removeTouchListener(Lcom/idk/core/TouchListener;)V
    .registers 3
    .param p1, "tl"    # Lcom/idk/core/TouchListener;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/idk/core/BaseEngine$TouchManagerImpl;->this$0:Lcom/idk/core/BaseEngine;

    invoke-static {v0}, Lcom/idk/core/BaseEngine;->access$400(Lcom/idk/core/BaseEngine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 607
    return-void
.end method
