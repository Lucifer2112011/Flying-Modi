###### Class idkengine.my.game.MainActivity (idkengine.my.game.MainActivity)
.class public Lidkengine/my/game/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field public engine:Lcom/idk/core/BaseEngine;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lidkengine/my/game/MainActivity;->requestWindowFeature(I)Z

    .line 23
    :try_start_7
    new-instance p1, Lcom/idk/core/BaseEngine;

    invoke-direct {p1, p0}, Lcom/idk/core/BaseEngine;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lidkengine/my/game/MainActivity;->engine:Lcom/idk/core/BaseEngine;

    .line 24
    invoke-virtual {p1}, Lcom/idk/core/BaseEngine;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lidkengine/my/game/MainActivity;->setContentView(Landroid/view/View;)V

    .line 25
    new-instance p1, Lidkengine/my/game/MainActivity$1;

    invoke-direct {p1, p0}, Lidkengine/my/game/MainActivity$1;-><init>(Lidkengine/my/game/MainActivity;)V

    .line 32
    invoke-virtual {p1}, Lidkengine/my/game/MainActivity$1;->start()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_1e

    .line 35
    goto :goto_22

    .line 33
    :catch_1e
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    :goto_22
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 47
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 41
    return-void
.end method

.method public readFile(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 54
    nop

    .line 55
    :goto_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_21

    goto :goto_10

    .line 60
    :cond_20
    goto :goto_25

    .line 58
    :catch_21
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    :goto_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class idkengine.my.game.MainActivity.AnonymousClass1 (idkengine.my.game.MainActivity$1)
.class Lidkengine/my/game/MainActivity$1;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lidkengine/my/game/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lidkengine/my/game/MainActivity;


# direct methods
.method constructor <init>(Lidkengine/my/game/MainActivity;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lidkengine/my/game/MainActivity$1;->this$0:Lidkengine/my/game/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 27
    :try_start_0
    iget-object v0, p0, Lidkengine/my/game/MainActivity$1;->this$0:Lidkengine/my/game/MainActivity;

    invoke-virtual {v0}, Lidkengine/my/game/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "level1.scn"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lidkengine/my/game/MainActivity;->readFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lidkengine/my/game/MainActivity$1;->this$0:Lidkengine/my/game/MainActivity;

    invoke-virtual {v1}, Lidkengine/my/game/MainActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/idk/parser/ObjectParser;->fromString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idk/core/Scene;

    .line 29
    iget-object v1, p0, Lidkengine/my/game/MainActivity$1;->this$0:Lidkengine/my/game/MainActivity;

    iget-object v1, v1, Lidkengine/my/game/MainActivity;->engine:Lcom/idk/core/BaseEngine;

    invoke-virtual {v1, v0}, Lcom/idk/core/BaseEngine;->addScene(Lcom/idk/core/Scene;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_25

    .line 31
    :catch_24
    move-exception v0

    :goto_25
    nop

    .line 32
    return-void
.end method
