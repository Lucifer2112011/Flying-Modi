###### Class com.idk.core.TouchData (com.idk.core.TouchData)
.class public Lcom/idk/core/TouchData;
.super Ljava/lang/Object;
.source "TouchData.java"


# instance fields
.field public currentX:F

.field public currentY:F

.field public id:I

.field public isPressed:Z

.field public previousX:F

.field public previousY:F

.field public timeStamp:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public copy()Lcom/idk/core/TouchData;
    .registers 2

    .prologue
    .line 15
    new-instance v0, Lcom/idk/core/TouchData;

    invoke-direct {v0}, Lcom/idk/core/TouchData;-><init>()V

    .line 16
    .local v0, "tc":Lcom/idk/core/TouchData;
    invoke-virtual {v0, p0}, Lcom/idk/core/TouchData;->set(Lcom/idk/core/TouchData;)V

    .line 17
    return-object v0
.end method

.method public set(Lcom/idk/core/TouchData;)V
    .registers 3
    .param p1, "ts"    # Lcom/idk/core/TouchData;

    .prologue
    .line 20
    iget v0, p1, Lcom/idk/core/TouchData;->currentX:F

    iput v0, p0, Lcom/idk/core/TouchData;->currentX:F

    .line 21
    iget v0, p1, Lcom/idk/core/TouchData;->currentY:F

    iput v0, p0, Lcom/idk/core/TouchData;->currentY:F

    .line 22
    iget v0, p1, Lcom/idk/core/TouchData;->previousX:F

    iput v0, p0, Lcom/idk/core/TouchData;->previousX:F

    .line 23
    iget v0, p1, Lcom/idk/core/TouchData;->previousY:F

    iput v0, p0, Lcom/idk/core/TouchData;->previousY:F

    .line 24
    iget-boolean v0, p1, Lcom/idk/core/TouchData;->isPressed:Z

    iput-boolean v0, p0, Lcom/idk/core/TouchData;->isPressed:Z

    .line 25
    iget v0, p1, Lcom/idk/core/TouchData;->id:I

    iput v0, p0, Lcom/idk/core/TouchData;->id:I

    .line 26
    return-void
.end method
