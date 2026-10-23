###### Class defpackage.Music (Music)
.class public LMusic;
.super Lcom/idk/core/ObjectModifier;
.source "Music.java"


# instance fields
.field private player:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/idk/core/ObjectModifier;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete()V
    .registers 1

    .line 13
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 10
    return-void
.end method
