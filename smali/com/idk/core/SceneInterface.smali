###### Class com.idk.core.SceneInterface (com.idk.core.SceneInterface)
.class public Lcom/idk/core/SceneInterface;
.super Ljava/lang/Object;
.source "SceneInterface.java"


# instance fields
.field public active:Z

.field public targetScene:Lcom/idk/core/Scene;
    .annotation runtime Lcom/idk/parser/Ignore;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idk/core/SceneInterface;->targetScene:Lcom/idk/core/Scene;

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/idk/core/SceneInterface;->active:Z

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .prologue
    .line 13
    return-void
.end method

.method public onDelete()V
    .registers 1

    .prologue
    .line 19
    return-void
.end method

.method public onPostUpdate()V
    .registers 1

    .prologue
    .line 16
    return-void
.end method

.method public onPreUpdate()V
    .registers 1

    .prologue
    .line 14
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 11
    return-void
.end method

.method public onUpdate()V
    .registers 1

    .prologue
    .line 15
    return-void
.end method
