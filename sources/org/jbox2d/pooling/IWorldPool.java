package org.jbox2d.pooling;

import org.jbox2d.collision.AABB;
import org.jbox2d.collision.Collision;
import org.jbox2d.collision.Distance;
import org.jbox2d.collision.TimeOfImpact;
import org.jbox2d.common.Mat22;
import org.jbox2d.common.Mat33;
import org.jbox2d.common.Rot;
import org.jbox2d.common.Vec2;
import org.jbox2d.common.Vec3;
import org.jbox2d.dynamics.contacts.Contact;

/* JADX INFO: loaded from: classes2.dex */
public interface IWorldPool {
    IDynamicStack<Contact> getChainCircleContactStack();

    IDynamicStack<Contact> getChainPolyContactStack();

    IDynamicStack<Contact> getCircleContactStack();

    Collision getCollision();

    Distance getDistance();

    IDynamicStack<Contact> getEdgeCircleContactStack();

    IDynamicStack<Contact> getEdgePolyContactStack();

    float[] getFloatArray(int i);

    int[] getIntArray(int i);

    IDynamicStack<Contact> getPolyCircleContactStack();

    IDynamicStack<Contact> getPolyContactStack();

    TimeOfImpact getTimeOfImpact();

    Vec2[] getVec2Array(int i);

    AABB popAABB();

    AABB[] popAABB(int i);

    Mat22 popMat22();

    Mat22[] popMat22(int i);

    Mat33 popMat33();

    Rot popRot();

    Vec2 popVec2();

    Vec2[] popVec2(int i);

    Vec3 popVec3();

    Vec3[] popVec3(int i);

    void pushAABB(int i);

    void pushMat22(int i);

    void pushMat33(int i);

    void pushRot(int i);

    void pushVec2(int i);

    void pushVec3(int i);
}
