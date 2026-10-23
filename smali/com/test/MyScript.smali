###### Class com.test.MyScript (com.test.MyScript)
.class public Lcom/test/MyScript;
.super Lcom/idk/core/ObjectModifier;
.source "MyScript.java"


# instance fields
.field private body:Lcom/idk/simple/Rigidbody;

.field private delay:J

.field public force:F

.field private hit:I

.field private interfac:Lcom/idk/simple/PhysicsInterface;

.field public isCollide:Z

.field private jm:Lcom/idk/core/GameObject;

.field private lode:I

.field private loss:Z

.field private loss3:I

.field private loss4:I

.field private lossID:I

.field private origin:Lcom/idk/math/Vector2;

.field private player:Landroid/media/MediaPlayer;

.field private pool:Landroid/media/SoundPool;

.field private press:Z

.field public speed:F

.field private start:Z

.field private swing:I

.field private text:Lcom/idk/core/GameObject;

.field private touch:Lcom/idk/core/TouchManager;

.field private win:I

.field private wn:Lcom/idk/core/GameObject;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/idk/core/ObjectModifier;-><init>()V

    return-void
.end method

.method private down()V
    .registers 12

    .line 163
    iget-boolean v0, p0, Lcom/test/MyScript;->loss:Z

    if-eqz v0, :cond_8

    .line 164
    invoke-virtual {p0}, Lcom/test/MyScript;->set()V

    .line 165
    return-void

    .line 167
    :cond_8
    iget-boolean v1, p0, Lcom/test/MyScript;->start:Z

    if-nez v1, :cond_16

    .line 168
    invoke-direct {p0}, Lcom/test/MyScript;->start()V

    .line 169
    iget-object v0, p0, Lcom/test/MyScript;->origin:Lcom/idk/math/Vector2;

    iget v0, v0, Lcom/idk/math/Vector2;->x:F

    iput v0, p0, Lcom/test/MyScript;->x:F

    goto :goto_3f

    .line 170
    :cond_16
    if-nez v0, :cond_3f

    .line 171
    iget-object v0, p0, Lcom/test/MyScript;->body:Lcom/idk/simple/Rigidbody;

    invoke-virtual {v0}, Lcom/idk/simple/Rigidbody;->getAvailableInterface()Lcom/idk/simple/PhysicsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/test/MyScript;->body:Lcom/idk/simple/Rigidbody;

    invoke-virtual {v0, v1}, Lcom/idk/simple/PhysicsInterface;->clearForce(Lcom/idk/simple/Rigidbody;)V

    .line 172
    iget-object v0, p0, Lcom/test/MyScript;->body:Lcom/idk/simple/Rigidbody;

    new-instance v1, Lcom/idk/math/Vector2;

    const/4 v2, 0x0

    iget v3, p0, Lcom/test/MyScript;->force:F

    invoke-direct {v1, v2, v3}, Lcom/idk/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/idk/simple/Rigidbody;->applyForce(Lcom/idk/math/Vector2;)V

    .line 173
    iget-object v4, p0, Lcom/test/MyScript;->pool:Landroid/media/SoundPool;

    iget v5, p0, Lcom/test/MyScript;->swing:I

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v10}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 175
    :cond_3f
    :goto_3f
    return-void
.end method

.method private search()V
    .registers 7

    .line 49
    iget-object v0, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v0, v0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    invoke-virtual {v0}, Lcom/idk/core/Scene;->getObjectArray()[Lcom/idk/core/GameObject;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_37

    aget-object v3, v0, v2

    .line 50
    iget-object v4, v3, Lcom/idk/core/GameObject;->name:Ljava/lang/String;

    const-string v5, "jump"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 51
    iput-object v3, p0, Lcom/test/MyScript;->jm:Lcom/idk/core/GameObject;

    goto :goto_34

    .line 52
    :cond_1b
    iget-object v4, v3, Lcom/idk/core/GameObject;->name:Ljava/lang/String;

    const-string v5, "win"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 53
    iput-object v3, p0, Lcom/test/MyScript;->wn:Lcom/idk/core/GameObject;

    goto :goto_34

    .line 54
    :cond_28
    iget-object v4, v3, Lcom/idk/core/GameObject;->name:Ljava/lang/String;

    const-string v5, "text"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 55
    iput-object v3, p0, Lcom/test/MyScript;->text:Lcom/idk/core/GameObject;

    .line 49
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 58
    :cond_37
    return-void
.end method

.method private setPlayer()V
    .registers 3

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/test/MyScript;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 99
    iget-object v0, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v0, v0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v0, v0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    const-string v1, "music.mp3"

    invoke-interface {v0, v1}, Lcom/idk/core/EngineInterface;->getAssetFile(Ljava/lang/String;)Lcom/idk/core/AssetFile;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/test/MyScript;->player:Landroid/media/MediaPlayer;

    invoke-interface {v0}, Lcom/idk/core/AssetFile;->getFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    .line 101
    iget-object v0, p0, Lcom/test/MyScript;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 102
    iget-object v0, p0, Lcom/test/MyScript;->player:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 103
    iget-object v0, p0, Lcom/test/MyScript;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 105
    goto :goto_2d

    .line 104
    :catch_2c
    move-exception v0

    .line 106
    :goto_2d
    return-void
.end method

.method private start()V
    .registers 4

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/test/MyScript;->start:Z

    .line 178
    iget-object v0, p0, Lcom/test/MyScript;->body:Lcom/idk/simple/Rigidbody;

    invoke-virtual {v0}, Lcom/idk/simple/Rigidbody;->getAvailableInterface()Lcom/idk/simple/PhysicsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/test/MyScript;->body:Lcom/idk/simple/Rigidbody;

    invoke-virtual {v0, v1}, Lcom/idk/simple/PhysicsInterface;->addRigidbody(Lcom/idk/simple/Rigidbody;)V

    .line 179
    iget-object v0, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v0, v0, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v0, v0, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget-object v1, p0, Lcom/test/MyScript;->origin:Lcom/idk/math/Vector2;

    iget v1, v1, Lcom/idk/math/Vector2;->x:F

    iget-object v2, p0, Lcom/test/MyScript;->origin:Lcom/idk/math/Vector2;

    iget v2, v2, Lcom/idk/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/idk/math/Vector2;->set(FF)V

    .line 180
    invoke-direct {p0}, Lcom/test/MyScript;->setPlayer()V

    .line 181
    return-void
.end method


# virtual methods
.method public onPostUpdate()V
    .registers 22

    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/test/MyScript;->text:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v1, v1, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget-object v2, v0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v2, v2, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v2, v2, Lcom/idk/math/Vector2;->x:F

    iget-object v3, v0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v3, v3, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v3, v3, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v3, v3, Lcom/idk/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/idk/math/Vector2;->set(FF)V

    .line 114
    iget-wide v1, v0, Lcom/test/MyScript;->delay:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_26

    .line 115
    return-void

    .line 117
    :cond_26
    iget-object v1, v0, Lcom/test/MyScript;->touch:Lcom/idk/core/TouchManager;

    invoke-virtual {v1}, Lcom/idk/core/TouchManager;->getTouchCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3a

    .line 118
    iget-boolean v1, v0, Lcom/test/MyScript;->press:Z

    if-nez v1, :cond_37

    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/test/MyScript;->down()V

    .line 121
    :cond_37
    iput-boolean v3, v0, Lcom/test/MyScript;->press:Z

    goto :goto_3c

    .line 123
    :cond_3a
    iput-boolean v2, v0, Lcom/test/MyScript;->press:Z

    .line 125
    :goto_3c
    iget-boolean v1, v0, Lcom/test/MyScript;->start:Z

    if-eqz v1, :cond_6e

    iget-boolean v1, v0, Lcom/test/MyScript;->loss:Z

    if-nez v1, :cond_6e

    .line 126
    iget v1, v0, Lcom/test/MyScript;->x:F

    iget-object v4, v0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v4, v4, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v4, v4, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    invoke-interface {v4}, Lcom/idk/core/EngineInterface;->getDeltaTime()F

    move-result v4

    iget v5, v0, Lcom/test/MyScript;->speed:F

    mul-float v4, v4, v5

    add-float/2addr v1, v4

    iput v1, v0, Lcom/test/MyScript;->x:F

    .line 127
    iget-object v1, v0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v1, v1, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v4, v0, Lcom/test/MyScript;->x:F

    iput v4, v1, Lcom/idk/math/Vector2;->x:F

    .line 128
    iget-object v1, v0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v1, v1, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v4, v1, Lcom/idk/math/Vector2;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    iput v4, v1, Lcom/idk/math/Vector2;->y:F

    .line 130
    :cond_6e
    iget-object v1, v0, Lcom/test/MyScript;->body:Lcom/idk/simple/Rigidbody;

    invoke-virtual {v1}, Lcom/idk/simple/Rigidbody;->getCollisionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v4, 0x3e8

    if-lez v1, :cond_105

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/test/MyScript;->delay:J

    .line 132
    iput-boolean v3, v0, Lcom/test/MyScript;->loss:Z

    .line 133
    iget-object v1, v0, Lcom/test/MyScript;->body:Lcom/idk/simple/Rigidbody;

    invoke-virtual {v1}, Lcom/idk/simple/Rigidbody;->getAvailableInterface()Lcom/idk/simple/PhysicsInterface;

    move-result-object v1

    iget-object v6, v0, Lcom/test/MyScript;->body:Lcom/idk/simple/Rigidbody;

    invoke-virtual {v1, v6}, Lcom/idk/simple/PhysicsInterface;->removeRigidbody(Lcom/idk/simple/Rigidbody;)V

    .line 134
    iget-object v1, v0, Lcom/test/MyScript;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 136
    iget-object v1, v0, Lcom/test/MyScript;->jm:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v1, v1, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget-object v6, v0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v6, v6, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v6, v6, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v6, v6, Lcom/idk/math/Vector2;->x:F

    iget-object v7, v0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v7, v7, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v7, v7, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v7, v7, Lcom/idk/math/Vector2;->y:F

    invoke-virtual {v1, v6, v7}, Lcom/idk/math/Vector2;->set(FF)V

    .line 138
    iget-object v1, v0, Lcom/test/MyScript;->jm:Lcom/idk/core/GameObject;

    iput-boolean v3, v1, Lcom/idk/core/GameObject;->active:Z

    .line 139
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 140
    if-ne v1, v3, :cond_ce

    .line 141
    iget-object v6, v0, Lcom/test/MyScript;->pool:Landroid/media/SoundPool;

    iget v7, v0, Lcom/test/MyScript;->lossID:I

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual/range {v6 .. v12}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_105

    .line 142
    :cond_ce
    const/4 v6, 0x2

    if-ne v1, v6, :cond_e1

    .line 143
    iget-object v7, v0, Lcom/test/MyScript;->pool:Landroid/media/SoundPool;

    iget v8, v0, Lcom/test/MyScript;->lode:I

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {v7 .. v13}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_105

    .line 144
    :cond_e1
    const/4 v6, 0x3

    if-ne v1, v6, :cond_f4

    .line 145
    iget-object v7, v0, Lcom/test/MyScript;->pool:Landroid/media/SoundPool;

    iget v8, v0, Lcom/test/MyScript;->loss3:I

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {v7 .. v13}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_105

    .line 147
    :cond_f4
    iget-object v14, v0, Lcom/test/MyScript;->pool:Landroid/media/SoundPool;

    iget v15, v0, Lcom/test/MyScript;->loss4:I

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-virtual/range {v14 .. v20}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 151
    :cond_105
    :goto_105
    iget-boolean v1, v0, Lcom/test/MyScript;->start:Z

    if-eqz v1, :cond_153

    iget v1, v0, Lcom/test/MyScript;->x:F

    const/high16 v6, 0x44e10000    # 1800.0f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_153

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/test/MyScript;->delay:J

    .line 153
    iget-object v8, v0, Lcom/test/MyScript;->pool:Landroid/media/SoundPool;

    iget v9, v0, Lcom/test/MyScript;->win:I

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual/range {v8 .. v14}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 154
    iput-boolean v2, v0, Lcom/test/MyScript;->start:Z

    .line 155
    iput-boolean v3, v0, Lcom/test/MyScript;->loss:Z

    .line 156
    iget-object v1, v0, Lcom/test/MyScript;->body:Lcom/idk/simple/Rigidbody;

    invoke-virtual {v1}, Lcom/idk/simple/Rigidbody;->getAvailableInterface()Lcom/idk/simple/PhysicsInterface;

    move-result-object v1

    iget-object v2, v0, Lcom/test/MyScript;->body:Lcom/idk/simple/Rigidbody;

    invoke-virtual {v1, v2}, Lcom/idk/simple/PhysicsInterface;->removeRigidbody(Lcom/idk/simple/Rigidbody;)V

    .line 157
    iget-object v1, v0, Lcom/test/MyScript;->wn:Lcom/idk/core/GameObject;

    iput-boolean v3, v1, Lcom/idk/core/GameObject;->active:Z

    .line 158
    iget-object v1, v0, Lcom/test/MyScript;->wn:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v1, v1, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget-object v2, v0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v2, v2, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v2, v2, Lcom/idk/math/Vector2;->x:F

    iget-object v3, v0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v3, v3, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v3, v3, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v3, v3, Lcom/idk/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/idk/math/Vector2;->set(FF)V

    .line 161
    :cond_153
    return-void
.end method

.method public onStart()V
    .registers 5

    .line 62
    iget-object v0, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    const-class v1, Lcom/idk/simple/Rigidbody;

    invoke-virtual {v0, v1}, Lcom/idk/core/GameObject;->getModifierAssignable(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/simple/Rigidbody;

    iput-object v0, p0, Lcom/test/MyScript;->body:Lcom/idk/simple/Rigidbody;

    .line 63
    iget-object v0, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v0, v0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v0, v0, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    invoke-interface {v0}, Lcom/idk/core/EngineInterface;->getTouchManager()Lcom/idk/core/TouchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/test/MyScript;->touch:Lcom/idk/core/TouchManager;

    .line 64
    iget-object v0, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v0, v0, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v0, v0, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v0, v0, Lcom/idk/math/Vector2;->x:F

    iput v0, p0, Lcom/test/MyScript;->x:F

    .line 66
    iget-object v0, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v0, v0, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v0, v0, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget v0, v0, Lcom/idk/math/Vector2;->y:F

    iput v0, p0, Lcom/test/MyScript;->y:F

    .line 68
    new-instance v0, Landroid/media/SoundPool;

    const/16 v2, 0x10

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/test/MyScript;->pool:Landroid/media/SoundPool;

    .line 69
    iget-object v2, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v2, v2, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    const-string v3, "loss.mp3"

    invoke-interface {v2, v3}, Lcom/idk/core/EngineInterface;->getAssetFile(Ljava/lang/String;)Lcom/idk/core/AssetFile;

    move-result-object v2

    invoke-interface {v2}, Lcom/idk/core/AssetFile;->getFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lcom/test/MyScript;->lossID:I

    .line 71
    iget-object v0, p0, Lcom/test/MyScript;->pool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v2, v2, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    const-string v3, "swing.mp3"

    invoke-interface {v2, v3}, Lcom/idk/core/EngineInterface;->getAssetFile(Ljava/lang/String;)Lcom/idk/core/AssetFile;

    move-result-object v2

    invoke-interface {v2}, Lcom/idk/core/AssetFile;->getFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lcom/test/MyScript;->swing:I

    .line 73
    iget-object v0, p0, Lcom/test/MyScript;->pool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v2, v2, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    const-string v3, "win.mp3"

    invoke-interface {v2, v3}, Lcom/idk/core/EngineInterface;->getAssetFile(Ljava/lang/String;)Lcom/idk/core/AssetFile;

    move-result-object v2

    invoke-interface {v2}, Lcom/idk/core/AssetFile;->getFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lcom/test/MyScript;->win:I

    .line 75
    iget-object v0, p0, Lcom/test/MyScript;->pool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v2, v2, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    const-string v3, "hit.mp3"

    invoke-interface {v2, v3}, Lcom/idk/core/EngineInterface;->getAssetFile(Ljava/lang/String;)Lcom/idk/core/AssetFile;

    move-result-object v2

    invoke-interface {v2}, Lcom/idk/core/AssetFile;->getFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lcom/test/MyScript;->hit:I

    .line 77
    iget-object v0, p0, Lcom/test/MyScript;->pool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v2, v2, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    const-string v3, "lode.mp3"

    invoke-interface {v2, v3}, Lcom/idk/core/EngineInterface;->getAssetFile(Ljava/lang/String;)Lcom/idk/core/AssetFile;

    move-result-object v2

    invoke-interface {v2}, Lcom/idk/core/AssetFile;->getFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lcom/test/MyScript;->lode:I

    .line 79
    iget-object v0, p0, Lcom/test/MyScript;->pool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v2, v2, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    const-string v3, "loss3.mp3"

    invoke-interface {v2, v3}, Lcom/idk/core/EngineInterface;->getAssetFile(Ljava/lang/String;)Lcom/idk/core/AssetFile;

    move-result-object v2

    invoke-interface {v2}, Lcom/idk/core/AssetFile;->getFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lcom/test/MyScript;->loss3:I

    .line 81
    iget-object v0, p0, Lcom/test/MyScript;->pool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v2, v2, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    iget-object v2, v2, Lcom/idk/core/Scene;->targetInstance:Lcom/idk/core/EngineInterface;

    const-string v3, "loss4.mp3"

    invoke-interface {v2, v3}, Lcom/idk/core/EngineInterface;->getAssetFile(Ljava/lang/String;)Lcom/idk/core/AssetFile;

    move-result-object v2

    invoke-interface {v2}, Lcom/idk/core/AssetFile;->getFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lcom/test/MyScript;->loss4:I

    .line 83
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/test/MyScript;->player:Landroid/media/MediaPlayer;

    .line 85
    iget-object v0, p0, Lcom/test/MyScript;->body:Lcom/idk/simple/Rigidbody;

    invoke-virtual {v0}, Lcom/idk/simple/Rigidbody;->getAvailableInterface()Lcom/idk/simple/PhysicsInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/test/MyScript;->body:Lcom/idk/simple/Rigidbody;

    invoke-virtual {v0, v2}, Lcom/idk/simple/PhysicsInterface;->removeRigidbody(Lcom/idk/simple/Rigidbody;)V

    .line 87
    new-instance v0, Lcom/idk/math/Vector2;

    iget v2, p0, Lcom/test/MyScript;->x:F

    iget v3, p0, Lcom/test/MyScript;->y:F

    invoke-direct {v0, v2, v3}, Lcom/idk/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/test/MyScript;->origin:Lcom/idk/math/Vector2;

    .line 89
    invoke-direct {p0}, Lcom/test/MyScript;->search()V

    .line 90
    iget-object v0, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v0, v0, Lcom/idk/core/GameObject;->targetScene:Lcom/idk/core/Scene;

    const-class v2, Lcom/idk/simple/PhysicsInterface;

    invoke-virtual {v0, v2}, Lcom/idk/core/Scene;->getInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/simple/PhysicsInterface;

    iput-object v0, p0, Lcom/test/MyScript;->interfac:Lcom/idk/simple/PhysicsInterface;

    .line 93
    return-void
.end method

.method public onUpdateI()V
    .registers 8

    .line 193
    new-instance v0, Lcom/idk/simple/Raycast;

    invoke-direct {v0}, Lcom/idk/simple/Raycast;-><init>()V

    .line 194
    iget-object v1, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v1, v1, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v1, v1, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/idk/simple/Raycast;->setStart(Lcom/idk/math/Vector2;)V

    .line 195
    new-instance v1, Lcom/idk/math/Vector2;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Lcom/idk/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/idk/simple/Raycast;->setEnd(Lcom/idk/math/Vector2;)V

    .line 197
    new-instance v1, Lcom/idk/simple/Raycast;

    invoke-direct {v1}, Lcom/idk/simple/Raycast;-><init>()V

    .line 198
    iget-object v4, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v4, v4, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v4, v4, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    invoke-virtual {v1, v4}, Lcom/idk/simple/Raycast;->setStart(Lcom/idk/math/Vector2;)V

    .line 199
    new-instance v4, Lcom/idk/math/Vector2;

    invoke-direct {v4, v2, v3}, Lcom/idk/math/Vector2;-><init>(FF)V

    invoke-virtual {v1, v4}, Lcom/idk/simple/Raycast;->setEnd(Lcom/idk/math/Vector2;)V

    .line 201
    new-instance v4, Lcom/idk/simple/Raycast;

    invoke-direct {v4}, Lcom/idk/simple/Raycast;-><init>()V

    .line 202
    iget-object v5, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v5, v5, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v5, v5, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/idk/simple/Raycast;->setStart(Lcom/idk/math/Vector2;)V

    .line 203
    new-instance v5, Lcom/idk/math/Vector2;

    invoke-direct {v5, v2, v3}, Lcom/idk/math/Vector2;-><init>(FF)V

    invoke-virtual {v4, v5}, Lcom/idk/simple/Raycast;->setEnd(Lcom/idk/math/Vector2;)V

    .line 205
    new-instance v5, Lcom/idk/simple/Raycast;

    invoke-direct {v5}, Lcom/idk/simple/Raycast;-><init>()V

    .line 206
    iget-object v6, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v6, v6, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v6, v6, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    invoke-virtual {v5, v6}, Lcom/idk/simple/Raycast;->setStart(Lcom/idk/math/Vector2;)V

    .line 207
    new-instance v6, Lcom/idk/math/Vector2;

    invoke-direct {v6, v2, v3}, Lcom/idk/math/Vector2;-><init>(FF)V

    invoke-virtual {v5, v6}, Lcom/idk/simple/Raycast;->setEnd(Lcom/idk/math/Vector2;)V

    .line 209
    iget-object v2, p0, Lcom/test/MyScript;->interfac:Lcom/idk/simple/PhysicsInterface;

    invoke-virtual {v2, v0}, Lcom/idk/simple/PhysicsInterface;->castRay(Lcom/idk/simple/Raycast;)Ljava/util/Set;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_6a

    .line 211
    iput-boolean v2, p0, Lcom/test/MyScript;->isCollide:Z

    .line 214
    :cond_6a
    iget-object v0, p0, Lcom/test/MyScript;->interfac:Lcom/idk/simple/PhysicsInterface;

    invoke-virtual {v0, v1}, Lcom/idk/simple/PhysicsInterface;->castRay(Lcom/idk/simple/Raycast;)Ljava/util/Set;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_78

    .line 216
    iput-boolean v2, p0, Lcom/test/MyScript;->isCollide:Z

    .line 219
    :cond_78
    iget-object v0, p0, Lcom/test/MyScript;->interfac:Lcom/idk/simple/PhysicsInterface;

    invoke-virtual {v0, v4}, Lcom/idk/simple/PhysicsInterface;->castRay(Lcom/idk/simple/Raycast;)Ljava/util/Set;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_86

    .line 221
    iput-boolean v2, p0, Lcom/test/MyScript;->isCollide:Z

    .line 224
    :cond_86
    iget-object v0, p0, Lcom/test/MyScript;->interfac:Lcom/idk/simple/PhysicsInterface;

    invoke-virtual {v0, v5}, Lcom/idk/simple/PhysicsInterface;->castRay(Lcom/idk/simple/Raycast;)Ljava/util/Set;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_94

    .line 226
    iput-boolean v2, p0, Lcom/test/MyScript;->isCollide:Z

    .line 229
    :cond_94
    return-void
.end method

.method public set()V
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/test/MyScript;->targetObject:Lcom/idk/core/GameObject;

    iget-object v0, v0, Lcom/idk/core/GameObject;->transform:Lcom/idk/math/Transform2D;

    iget-object v0, v0, Lcom/idk/math/Transform2D;->position:Lcom/idk/math/Vector2;

    iget-object v1, p0, Lcom/test/MyScript;->origin:Lcom/idk/math/Vector2;

    iget v1, v1, Lcom/idk/math/Vector2;->x:F

    iget-object v2, p0, Lcom/test/MyScript;->origin:Lcom/idk/math/Vector2;

    iget v2, v2, Lcom/idk/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/idk/math/Vector2;->set(FF)V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/test/MyScript;->loss:Z

    .line 185
    iput-boolean v0, p0, Lcom/test/MyScript;->start:Z

    .line 186
    const/4 v1, 0x0

    iput v1, p0, Lcom/test/MyScript;->x:F

    .line 187
    iget-object v1, p0, Lcom/test/MyScript;->jm:Lcom/idk/core/GameObject;

    iput-boolean v0, v1, Lcom/idk/core/GameObject;->active:Z

    .line 188
    iget-object v1, p0, Lcom/test/MyScript;->wn:Lcom/idk/core/GameObject;

    iput-boolean v0, v1, Lcom/idk/core/GameObject;->active:Z

    .line 189
    return-void
.end method

###### Class com.test.MyScript.AnonymousClass1 (com.test.MyScript$1)
.class Lcom/test/MyScript$1;
.super Ljava/lang/Object;
.source "MyScript.java"

# interfaces
.implements Lcom/idk/core/TouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/test/MyScript;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/test/MyScript;


# direct methods
.method constructor <init>(Lcom/test/MyScript;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/test/MyScript$1;->this$0:Lcom/test/MyScript;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Lcom/idk/core/TouchData;)V
    .registers 2

    .line 75
    return-void
.end method

.method public onDrag(Lcom/idk/core/TouchData;)V
    .registers 2

    .line 72
    return-void
.end method

.method public onUp(Lcom/idk/core/TouchData;)V
    .registers 2

    .line 76
    return-void
.end method
