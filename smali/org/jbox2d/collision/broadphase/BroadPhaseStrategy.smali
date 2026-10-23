###### Class org.jbox2d.collision.broadphase.BroadPhaseStrategy (org.jbox2d.collision.broadphase.BroadPhaseStrategy)
.class public interface abstract Lorg/jbox2d/collision/broadphase/BroadPhaseStrategy;
.super Ljava/lang/Object;
.source "BroadPhaseStrategy.java"


# virtual methods
.method public abstract computeHeight()I
.end method

.method public abstract createProxy(Lorg/jbox2d/collision/AABB;Ljava/lang/Object;)I
.end method

.method public abstract destroyProxy(I)V
.end method

.method public abstract drawTree(Lorg/jbox2d/callbacks/DebugDraw;)V
.end method

.method public abstract getAreaRatio()F
.end method

.method public abstract getFatAABB(I)Lorg/jbox2d/collision/AABB;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getInsertionCount()I
.end method

.method public abstract getMaxBalance()I
.end method

.method public abstract getUserData(I)Ljava/lang/Object;
.end method

.method public abstract moveProxy(ILorg/jbox2d/collision/AABB;Lorg/jbox2d/common/Vec2;)Z
.end method

.method public abstract query(Lorg/jbox2d/callbacks/TreeCallback;Lorg/jbox2d/collision/AABB;)V
.end method

.method public abstract raycast(Lorg/jbox2d/callbacks/TreeRayCastCallback;Lorg/jbox2d/collision/RayCastInput;)V
.end method
