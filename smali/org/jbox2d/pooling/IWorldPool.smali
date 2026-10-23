###### Class org.jbox2d.pooling.IWorldPool (org.jbox2d.pooling.IWorldPool)
.class public interface abstract Lorg/jbox2d/pooling/IWorldPool;
.super Ljava/lang/Object;
.source "IWorldPool.java"


# virtual methods
.method public abstract getChainCircleContactStack()Lorg/jbox2d/pooling/IDynamicStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jbox2d/pooling/IDynamicStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChainPolyContactStack()Lorg/jbox2d/pooling/IDynamicStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jbox2d/pooling/IDynamicStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCircleContactStack()Lorg/jbox2d/pooling/IDynamicStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jbox2d/pooling/IDynamicStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCollision()Lorg/jbox2d/collision/Collision;
.end method

.method public abstract getDistance()Lorg/jbox2d/collision/Distance;
.end method

.method public abstract getEdgeCircleContactStack()Lorg/jbox2d/pooling/IDynamicStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jbox2d/pooling/IDynamicStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEdgePolyContactStack()Lorg/jbox2d/pooling/IDynamicStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jbox2d/pooling/IDynamicStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFloatArray(I)[F
.end method

.method public abstract getIntArray(I)[I
.end method

.method public abstract getPolyCircleContactStack()Lorg/jbox2d/pooling/IDynamicStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jbox2d/pooling/IDynamicStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPolyContactStack()Lorg/jbox2d/pooling/IDynamicStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jbox2d/pooling/IDynamicStack",
            "<",
            "Lorg/jbox2d/dynamics/contacts/Contact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimeOfImpact()Lorg/jbox2d/collision/TimeOfImpact;
.end method

.method public abstract getVec2Array(I)[Lorg/jbox2d/common/Vec2;
.end method

.method public abstract popAABB()Lorg/jbox2d/collision/AABB;
.end method

.method public abstract popAABB(I)[Lorg/jbox2d/collision/AABB;
.end method

.method public abstract popMat22()Lorg/jbox2d/common/Mat22;
.end method

.method public abstract popMat22(I)[Lorg/jbox2d/common/Mat22;
.end method

.method public abstract popMat33()Lorg/jbox2d/common/Mat33;
.end method

.method public abstract popRot()Lorg/jbox2d/common/Rot;
.end method

.method public abstract popVec2()Lorg/jbox2d/common/Vec2;
.end method

.method public abstract popVec2(I)[Lorg/jbox2d/common/Vec2;
.end method

.method public abstract popVec3()Lorg/jbox2d/common/Vec3;
.end method

.method public abstract popVec3(I)[Lorg/jbox2d/common/Vec3;
.end method

.method public abstract pushAABB(I)V
.end method

.method public abstract pushMat22(I)V
.end method

.method public abstract pushMat33(I)V
.end method

.method public abstract pushRot(I)V
.end method

.method public abstract pushVec2(I)V
.end method

.method public abstract pushVec3(I)V
.end method
