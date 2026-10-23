###### Class com.idk.core.ObjectModifier (com.idk.core.ObjectModifier)
.class public Lcom/idk/core/ObjectModifier;
.super Ljava/lang/Object;
.source "ObjectModifier.java"


# instance fields
.field public active:Z

.field public targetObject:Lcom/idk/core/GameObject;
    .annotation runtime Lcom/idk/parser/Ignore;
    .end annotation

    .annotation runtime Lcom/idk/parser/IngoreEditor;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/idk/core/ObjectModifier;->active:Z

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idk/core/ObjectModifier;->targetObject:Lcom/idk/core/GameObject;

    return-void
.end method


# virtual methods
.method public final detete()V
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/idk/core/ObjectModifier;->targetObject:Lcom/idk/core/GameObject;

    if-eqz v0, :cond_c

    .line 31
    iget-object v0, p0, Lcom/idk/core/ObjectModifier;->targetObject:Lcom/idk/core/GameObject;

    invoke-virtual {v0, p0}, Lcom/idk/core/GameObject;->removeModifier(Lcom/idk/core/ObjectModifier;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idk/core/ObjectModifier;->targetObject:Lcom/idk/core/GameObject;

    .line 34
    :cond_c
    return-void
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 19
    return-void
.end method

.method public onDelete()V
    .registers 1

    .prologue
    .line 25
    return-void
.end method

.method public onDisabledRepeat()V
    .registers 1

    .prologue
    .line 28
    return-void
.end method

.method public onPostUpdate()V
    .registers 1

    .prologue
    .line 22
    return-void
.end method

.method public onPreUpdate()V
    .registers 1

    .prologue
    .line 20
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 17
    return-void
.end method

.method public onUpdate()V
    .registers 1

    .prologue
    .line 21
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method
