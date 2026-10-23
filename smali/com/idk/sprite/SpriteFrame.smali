###### Class com.idk.sprite.SpriteFrame (com.idk.sprite.SpriteFrame)
.class public Lcom/idk/sprite/SpriteFrame;
.super Ljava/lang/Object;
.source "SpriteFrame.java"


# instance fields
.field public duration:F

.field public offset:Lcom/idk/math/Vector2;

.field public scale:Lcom/idk/math/Vector2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/idk/math/Vector2;

    invoke-direct {v0}, Lcom/idk/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/idk/sprite/SpriteFrame;->offset:Lcom/idk/math/Vector2;

    .line 7
    new-instance v0, Lcom/idk/math/Vector2;

    invoke-direct {v0}, Lcom/idk/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/idk/sprite/SpriteFrame;->scale:Lcom/idk/math/Vector2;

    .line 8
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/idk/sprite/SpriteFrame;->duration:F

    return-void
.end method
