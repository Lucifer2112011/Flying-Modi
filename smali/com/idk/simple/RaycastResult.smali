###### Class com.idk.simple.RaycastResult (com.idk.simple.RaycastResult)
.class public Lcom/idk/simple/RaycastResult;
.super Ljava/lang/Object;
.source "RaycastResult.java"


# instance fields
.field private physicsbody:Lcom/idk/simple/Physicsbody;

.field private position:Lcom/idk/math/Vector2;


# direct methods
.method public constructor <init>(Lcom/idk/simple/Physicsbody;Lcom/idk/math/Vector2;)V
    .registers 3
    .param p1, "body"    # Lcom/idk/simple/Physicsbody;
    .param p2, "pos"    # Lcom/idk/math/Vector2;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/idk/simple/RaycastResult;->physicsbody:Lcom/idk/simple/Physicsbody;

    .line 10
    iput-object p2, p0, Lcom/idk/simple/RaycastResult;->position:Lcom/idk/math/Vector2;

    .line 11
    return-void
.end method


# virtual methods
.method public getPhysicsbody()Lcom/idk/simple/Physicsbody;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/idk/simple/RaycastResult;->physicsbody:Lcom/idk/simple/Physicsbody;

    return-object v0
.end method

.method public getPosition()Lcom/idk/math/Vector2;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/idk/simple/RaycastResult;->position:Lcom/idk/math/Vector2;

    return-object v0
.end method
