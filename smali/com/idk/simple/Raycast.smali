###### Class com.idk.simple.Raycast (com.idk.simple.Raycast)
.class public Lcom/idk/simple/Raycast;
.super Ljava/lang/Object;
.source "Raycast.java"


# instance fields
.field private end:Lcom/idk/math/Vector2;

.field private start:Lcom/idk/math/Vector2;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnd()Lcom/idk/math/Vector2;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/idk/simple/Raycast;->end:Lcom/idk/math/Vector2;

    return-object v0
.end method

.method public getStart()Lcom/idk/math/Vector2;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/idk/simple/Raycast;->start:Lcom/idk/math/Vector2;

    return-object v0
.end method

.method public setEnd(Lcom/idk/math/Vector2;)V
    .registers 5
    .param p1, "end"    # Lcom/idk/math/Vector2;

    .prologue
    const v2, 0x3c23d70a    # 0.01f

    .line 10
    iput-object p1, p0, Lcom/idk/simple/Raycast;->end:Lcom/idk/math/Vector2;

    .line 11
    iget-object v0, p0, Lcom/idk/simple/Raycast;->end:Lcom/idk/math/Vector2;

    new-instance v1, Lcom/idk/math/Vector2;

    invoke-direct {v1, v2, v2}, Lcom/idk/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/idk/math/Vector2;->mul(Lcom/idk/math/Vector2;)Lcom/idk/math/Vector2;

    .line 12
    return-void
.end method

.method public setRay(Lcom/idk/math/Vector2;Lcom/idk/math/Vector2;)V
    .registers 7
    .param p1, "start"    # Lcom/idk/math/Vector2;
    .param p2, "direction"    # Lcom/idk/math/Vector2;

    .prologue
    const v3, 0x3c23d70a    # 0.01f

    .line 19
    iput-object p1, p0, Lcom/idk/simple/Raycast;->start:Lcom/idk/math/Vector2;

    .line 20
    new-instance v0, Lcom/idk/math/Vector2;

    iget v1, p1, Lcom/idk/math/Vector2;->x:F

    iget v2, p1, Lcom/idk/math/Vector2;->y:F

    invoke-direct {v0, v1, v2}, Lcom/idk/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, p2}, Lcom/idk/math/Vector2;->add(Lcom/idk/math/Vector2;)Lcom/idk/math/Vector2;

    move-result-object v0

    iput-object v0, p0, Lcom/idk/simple/Raycast;->end:Lcom/idk/math/Vector2;

    .line 21
    new-instance v0, Lcom/idk/math/Vector2;

    invoke-direct {v0, v3, v3}, Lcom/idk/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/idk/math/Vector2;->mul(Lcom/idk/math/Vector2;)Lcom/idk/math/Vector2;

    .line 22
    iget-object v0, p0, Lcom/idk/simple/Raycast;->end:Lcom/idk/math/Vector2;

    new-instance v1, Lcom/idk/math/Vector2;

    invoke-direct {v1, v3, v3}, Lcom/idk/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/idk/math/Vector2;->mul(Lcom/idk/math/Vector2;)Lcom/idk/math/Vector2;

    .line 23
    return-void
.end method

.method public setStart(Lcom/idk/math/Vector2;)V
    .registers 4
    .param p1, "start"    # Lcom/idk/math/Vector2;

    .prologue
    const v1, 0x3c23d70a    # 0.01f

    .line 15
    iput-object p1, p0, Lcom/idk/simple/Raycast;->start:Lcom/idk/math/Vector2;

    .line 16
    new-instance v0, Lcom/idk/math/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/idk/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/idk/math/Vector2;->mul(Lcom/idk/math/Vector2;)Lcom/idk/math/Vector2;

    .line 17
    return-void
.end method
