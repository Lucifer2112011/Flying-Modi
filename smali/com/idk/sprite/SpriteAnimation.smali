###### Class com.idk.sprite.SpriteAnimation (com.idk.sprite.SpriteAnimation)
.class public Lcom/idk/sprite/SpriteAnimation;
.super Ljava/lang/Object;
.source "SpriteAnimation.java"


# instance fields
.field public frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/idk/sprite/SpriteFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(F)V
    .registers 2
    .param p1, "delta"    # F

    .prologue
    .line 9
    return-void
.end method
