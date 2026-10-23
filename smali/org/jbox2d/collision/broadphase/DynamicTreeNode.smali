###### Class org.jbox2d.collision.broadphase.DynamicTreeNode (org.jbox2d.collision.broadphase.DynamicTreeNode)
.class public Lorg/jbox2d/collision/broadphase/DynamicTreeNode;
.super Ljava/lang/Object;
.source "DynamicTreeNode.java"


# instance fields
.field public final aabb:Lorg/jbox2d/collision/AABB;

.field protected child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

.field protected child2:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

.field protected height:I

.field protected final id:I

.field protected leaf:Z

.field protected parent:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

.field public userData:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/jbox2d/collision/AABB;

    invoke-direct {v0}, Lorg/jbox2d/collision/AABB;-><init>()V

    iput-object v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->aabb:Lorg/jbox2d/collision/AABB;

    .line 59
    iput p1, p0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->id:I

    return-void
.end method


# virtual methods
.method public getUserData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public final isLeaf()Z
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->child1:Lorg/jbox2d/collision/broadphase/DynamicTreeNode;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setUserData(Ljava/lang/Object;)V
    .registers 2
    .param p1, "argData"    # Ljava/lang/Object;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/jbox2d/collision/broadphase/DynamicTreeNode;->userData:Ljava/lang/Object;

    .line 54
    return-void
.end method
