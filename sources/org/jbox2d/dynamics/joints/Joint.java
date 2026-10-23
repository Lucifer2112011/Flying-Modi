package org.jbox2d.dynamics.joints;

import org.jbox2d.common.Vec2;
import org.jbox2d.dynamics.Body;
import org.jbox2d.dynamics.SolverData;
import org.jbox2d.dynamics.World;
import org.jbox2d.pooling.IWorldPool;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Joint {
    static final /* synthetic */ boolean $assertionsDisabled;
    protected Body m_bodyA;
    protected Body m_bodyB;
    private boolean m_collideConnected;
    public JointEdge m_edgeA;
    public JointEdge m_edgeB;
    public boolean m_islandFlag;
    public Joint m_next;
    public Joint m_prev;
    private final JointType m_type;
    public Object m_userData;
    protected IWorldPool pool;

    public abstract void getAnchorA(Vec2 vec2);

    public abstract void getAnchorB(Vec2 vec2);

    public abstract void getReactionForce(float f, Vec2 vec2);

    public abstract float getReactionTorque(float f);

    public abstract void initVelocityConstraints(SolverData solverData);

    public abstract boolean solvePositionConstraints(SolverData solverData);

    public abstract void solveVelocityConstraints(SolverData solverData);

    static {
        $assertionsDisabled = !Joint.class.desiredAssertionStatus();
    }

    /* JADX INFO: renamed from: org.jbox2d.dynamics.joints.Joint$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$jbox2d$dynamics$joints$JointType = new int[JointType.values().length];

        static {
            try {
                $SwitchMap$org$jbox2d$dynamics$joints$JointType[JointType.MOUSE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$jbox2d$dynamics$joints$JointType[JointType.DISTANCE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$jbox2d$dynamics$joints$JointType[JointType.PRISMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$jbox2d$dynamics$joints$JointType[JointType.REVOLUTE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$org$jbox2d$dynamics$joints$JointType[JointType.WELD.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$org$jbox2d$dynamics$joints$JointType[JointType.FRICTION.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$org$jbox2d$dynamics$joints$JointType[JointType.WHEEL.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$org$jbox2d$dynamics$joints$JointType[JointType.GEAR.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$org$jbox2d$dynamics$joints$JointType[JointType.PULLEY.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$org$jbox2d$dynamics$joints$JointType[JointType.CONSTANT_VOLUME.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$org$jbox2d$dynamics$joints$JointType[JointType.ROPE.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$org$jbox2d$dynamics$joints$JointType[JointType.UNKNOWN.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    public static Joint create(World world, JointDef def) {
        switch (AnonymousClass1.$SwitchMap$org$jbox2d$dynamics$joints$JointType[def.type.ordinal()]) {
            case 1:
                return new MouseJoint(world.getPool(), (MouseJointDef) def);
            case 2:
                return new DistanceJoint(world.getPool(), (DistanceJointDef) def);
            case 3:
                return new PrismaticJoint(world.getPool(), (PrismaticJointDef) def);
            case 4:
                return new RevoluteJoint(world.getPool(), (RevoluteJointDef) def);
            case 5:
                return new WeldJoint(world.getPool(), (WeldJointDef) def);
            case 6:
                return new FrictionJoint(world.getPool(), (FrictionJointDef) def);
            case 7:
                return new WheelJoint(world.getPool(), (WheelJointDef) def);
            case 8:
                return new GearJoint(world.getPool(), (GearJointDef) def);
            case 9:
                return new PulleyJoint(world.getPool(), (PulleyJointDef) def);
            case World.WORLD_POOL_CONTAINER_SIZE /* 10 */:
                return new ConstantVolumeJoint(world, (ConstantVolumeJointDef) def);
            case 11:
                return new RopeJoint(world.getPool(), (RopeJointDef) def);
            default:
                return null;
        }
    }

    public static void destroy(Joint joint) {
        joint.destructor();
    }

    protected Joint(IWorldPool worldPool, JointDef def) {
        if (!$assertionsDisabled && def.bodyA == def.bodyB) {
            throw new AssertionError();
        }
        this.pool = worldPool;
        this.m_type = def.type;
        this.m_prev = null;
        this.m_next = null;
        this.m_bodyA = def.bodyA;
        this.m_bodyB = def.bodyB;
        this.m_collideConnected = def.collideConnected;
        this.m_islandFlag = false;
        this.m_userData = def.userData;
        this.m_edgeA = new JointEdge();
        this.m_edgeA.joint = null;
        this.m_edgeA.other = null;
        this.m_edgeA.prev = null;
        this.m_edgeA.next = null;
        this.m_edgeB = new JointEdge();
        this.m_edgeB.joint = null;
        this.m_edgeB.other = null;
        this.m_edgeB.prev = null;
        this.m_edgeB.next = null;
    }

    public JointType getType() {
        return this.m_type;
    }

    public final Body getBodyA() {
        return this.m_bodyA;
    }

    public final Body getBodyB() {
        return this.m_bodyB;
    }

    public Joint getNext() {
        return this.m_next;
    }

    public Object getUserData() {
        return this.m_userData;
    }

    public void setUserData(Object data) {
        this.m_userData = data;
    }

    public final boolean getCollideConnected() {
        return this.m_collideConnected;
    }

    public boolean isActive() {
        return this.m_bodyA.isActive() && this.m_bodyB.isActive();
    }

    public void destructor() {
    }
}
