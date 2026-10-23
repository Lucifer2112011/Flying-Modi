package org.jbox2d.dynamics;

import java.lang.reflect.Array;
import org.jbox2d.callbacks.ContactFilter;
import org.jbox2d.callbacks.ContactListener;
import org.jbox2d.callbacks.DebugDraw;
import org.jbox2d.callbacks.DestructionListener;
import org.jbox2d.callbacks.QueryCallback;
import org.jbox2d.callbacks.RayCastCallback;
import org.jbox2d.collision.AABB;
import org.jbox2d.collision.RayCastInput;
import org.jbox2d.collision.TimeOfImpact;
import org.jbox2d.collision.broadphase.BroadPhaseStrategy;
import org.jbox2d.collision.broadphase.DynamicTree;
import org.jbox2d.collision.shapes.ChainShape;
import org.jbox2d.collision.shapes.CircleShape;
import org.jbox2d.collision.shapes.EdgeShape;
import org.jbox2d.collision.shapes.PolygonShape;
import org.jbox2d.collision.shapes.ShapeType;
import org.jbox2d.common.Color3f;
import org.jbox2d.common.Sweep;
import org.jbox2d.common.Timer;
import org.jbox2d.common.Transform;
import org.jbox2d.common.Vec2;
import org.jbox2d.dynamics.contacts.Contact;
import org.jbox2d.dynamics.contacts.ContactEdge;
import org.jbox2d.dynamics.contacts.ContactRegister;
import org.jbox2d.dynamics.joints.Joint;
import org.jbox2d.dynamics.joints.JointDef;
import org.jbox2d.dynamics.joints.JointEdge;
import org.jbox2d.dynamics.joints.PulleyJoint;
import org.jbox2d.pooling.IDynamicStack;
import org.jbox2d.pooling.IWorldPool;
import org.jbox2d.pooling.arrays.Vec2Array;
import org.jbox2d.pooling.normal.DefaultWorldPool;

/* JADX INFO: loaded from: classes2.dex */
public class World {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final int CLEAR_FORCES = 4;
    private static Integer LIQUID_INT = null;
    public static final int LOCKED = 2;
    public static final int NEW_FIXTURE = 1;
    public static final int WORLD_POOL_CONTAINER_SIZE = 10;
    public static final int WORLD_POOL_SIZE = 100;
    public int activeContacts;
    private float averageLinearVel;
    private final Vec2Array avs;
    private final Vec2 axis;
    private final Sweep backup1;
    private final Sweep backup2;
    private final Timer broadphaseTimer;
    private final Vec2 cA;
    private final Vec2 cB;
    private final Vec2 center;
    private final Vec2 circCenterMoved;
    private final Color3f color;
    public int contactPoolCount;
    private ContactRegister[][] contactStacks;
    private final RayCastInput input;
    private final Island island;
    private final Profile islandProfile;
    private final Color3f liquidColor;
    private float liquidLength;
    private final Vec2 liquidOffset;
    private boolean m_allowSleep;
    private int m_bodyCount;
    private Body m_bodyList;
    protected ContactManager m_contactManager;
    private boolean m_continuousPhysics;
    private DebugDraw m_debugDraw;
    private DestructionListener m_destructionListener;
    protected int m_flags;
    private final Vec2 m_gravity;
    private float m_inv_dt0;
    private int m_jointCount;
    private Joint m_jointList;
    private Profile m_profile;
    private boolean m_stepComplete;
    private boolean m_subStepping;
    private boolean m_warmStarting;
    private final IWorldPool pool;
    private Body[] stack;
    private final TimeStep step;
    private final Timer stepTimer;
    private final TimeStep subStep;
    private final Body[] tempBodies;
    private final Timer tempTimer;
    private final Vec2Array tlvertices;
    private final TimeOfImpact.TOIInput toiInput;
    private final Island toiIsland;
    private final TimeOfImpact.TOIOutput toiOutput;
    private final Vec2 v1;
    private final Vec2 v2;
    private final WorldQueryWrapper wqwrapper;
    private final WorldRayCastWrapper wrcwrapper;
    private final Transform xf;

    static {
        $assertionsDisabled = !World.class.desiredAssertionStatus();
        LIQUID_INT = new Integer(1234598372);
    }

    public World(Vec2 gravity) {
        this(gravity, new DefaultWorldPool(100, 10));
    }

    public World(Vec2 gravity, IWorldPool pool) {
        this(gravity, pool, new DynamicTree());
    }

    public World(Vec2 gravity, IWorldPool argPool, BroadPhaseStrategy broadPhaseStrategy) {
        this.activeContacts = 0;
        this.contactPoolCount = 0;
        this.m_gravity = new Vec2();
        this.contactStacks = (ContactRegister[][]) Array.newInstance((Class<?>) ContactRegister.class, ShapeType.values().length, ShapeType.values().length);
        this.step = new TimeStep();
        this.stepTimer = new Timer();
        this.tempTimer = new Timer();
        this.color = new Color3f();
        this.xf = new Transform();
        this.cA = new Vec2();
        this.cB = new Vec2();
        this.avs = new Vec2Array();
        this.wqwrapper = new WorldQueryWrapper();
        this.wrcwrapper = new WorldRayCastWrapper();
        this.input = new RayCastInput();
        this.island = new Island();
        this.stack = new Body[10];
        this.islandProfile = new Profile();
        this.broadphaseTimer = new Timer();
        this.toiIsland = new Island();
        this.toiInput = new TimeOfImpact.TOIInput();
        this.toiOutput = new TimeOfImpact.TOIOutput();
        this.subStep = new TimeStep();
        this.tempBodies = new Body[2];
        this.backup1 = new Sweep();
        this.backup2 = new Sweep();
        this.liquidLength = 0.12f;
        this.averageLinearVel = -1.0f;
        this.liquidOffset = new Vec2();
        this.circCenterMoved = new Vec2();
        this.liquidColor = new Color3f(0.4f, 0.4f, 1.0f);
        this.center = new Vec2();
        this.axis = new Vec2();
        this.v1 = new Vec2();
        this.v2 = new Vec2();
        this.tlvertices = new Vec2Array();
        this.pool = argPool;
        this.m_destructionListener = null;
        this.m_debugDraw = null;
        this.m_bodyList = null;
        this.m_jointList = null;
        this.m_bodyCount = 0;
        this.m_jointCount = 0;
        this.m_warmStarting = true;
        this.m_continuousPhysics = true;
        this.m_subStepping = false;
        this.m_stepComplete = true;
        this.m_allowSleep = true;
        this.m_gravity.set(gravity);
        this.m_flags = 4;
        this.m_inv_dt0 = 0.0f;
        this.m_contactManager = new ContactManager(this, broadPhaseStrategy);
        this.m_profile = new Profile();
        initializeRegisters();
    }

    public void setAllowSleep(boolean flag) {
        if (flag != this.m_allowSleep) {
            this.m_allowSleep = flag;
            if (!this.m_allowSleep) {
                for (Body b = this.m_bodyList; b != null; b = b.m_next) {
                    b.setAwake(true);
                }
            }
        }
    }

    public void setSubStepping(boolean subStepping) {
        this.m_subStepping = subStepping;
    }

    public boolean isSubStepping() {
        return this.m_subStepping;
    }

    public boolean isAllowSleep() {
        return this.m_allowSleep;
    }

    private void addType(IDynamicStack<Contact> creator, ShapeType type1, ShapeType type2) {
        ContactRegister register = new ContactRegister();
        register.creator = creator;
        register.primary = true;
        this.contactStacks[type1.ordinal()][type2.ordinal()] = register;
        if (type1 != type2) {
            ContactRegister register2 = new ContactRegister();
            register2.creator = creator;
            register2.primary = false;
            this.contactStacks[type2.ordinal()][type1.ordinal()] = register2;
        }
    }

    private void initializeRegisters() {
        addType(this.pool.getCircleContactStack(), ShapeType.CIRCLE, ShapeType.CIRCLE);
        addType(this.pool.getPolyCircleContactStack(), ShapeType.POLYGON, ShapeType.CIRCLE);
        addType(this.pool.getPolyContactStack(), ShapeType.POLYGON, ShapeType.POLYGON);
        addType(this.pool.getEdgeCircleContactStack(), ShapeType.EDGE, ShapeType.CIRCLE);
        addType(this.pool.getEdgePolyContactStack(), ShapeType.EDGE, ShapeType.POLYGON);
        addType(this.pool.getChainCircleContactStack(), ShapeType.CHAIN, ShapeType.CIRCLE);
        addType(this.pool.getChainPolyContactStack(), ShapeType.CHAIN, ShapeType.POLYGON);
    }

    public Contact popContact(Fixture fixtureA, int indexA, Fixture fixtureB, int indexB) {
        ShapeType type1 = fixtureA.getType();
        ShapeType type2 = fixtureB.getType();
        ContactRegister reg = this.contactStacks[type1.ordinal()][type2.ordinal()];
        IDynamicStack<Contact> creator = reg.creator;
        if (creator != null) {
            if (reg.primary) {
                Contact c = creator.pop();
                c.init(fixtureA, indexA, fixtureB, indexB);
                return c;
            }
            Contact c2 = creator.pop();
            c2.init(fixtureB, indexB, fixtureA, indexA);
            return c2;
        }
        return null;
    }

    public void pushContact(Contact contact) {
        Fixture fixtureA = contact.getFixtureA();
        Fixture fixtureB = contact.getFixtureB();
        if (contact.m_manifold.pointCount > 0 && !fixtureA.isSensor() && !fixtureB.isSensor()) {
            fixtureA.getBody().setAwake(true);
            fixtureB.getBody().setAwake(true);
        }
        ShapeType type1 = fixtureA.getType();
        ShapeType type2 = fixtureB.getType();
        IDynamicStack<Contact> creator = this.contactStacks[type1.ordinal()][type2.ordinal()].creator;
        creator.push(contact);
    }

    public IWorldPool getPool() {
        return this.pool;
    }

    public void setDestructionListener(DestructionListener listener) {
        this.m_destructionListener = listener;
    }

    public void setContactFilter(ContactFilter filter) {
        this.m_contactManager.m_contactFilter = filter;
    }

    public void setContactListener(ContactListener listener) {
        this.m_contactManager.m_contactListener = listener;
    }

    public void setDebugDraw(DebugDraw debugDraw) {
        this.m_debugDraw = debugDraw;
    }

    public Body createBody(BodyDef def) {
        if (!$assertionsDisabled && isLocked()) {
            throw new AssertionError();
        }
        if (isLocked()) {
            return null;
        }
        Body b = new Body(def, this);
        b.m_prev = null;
        b.m_next = this.m_bodyList;
        if (this.m_bodyList != null) {
            this.m_bodyList.m_prev = b;
        }
        this.m_bodyList = b;
        this.m_bodyCount++;
        return b;
    }

    public void destroyBody(Body body) {
        if (!$assertionsDisabled && this.m_bodyCount <= 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && isLocked()) {
            throw new AssertionError();
        }
        if (!isLocked()) {
            JointEdge je = body.m_jointList;
            while (je != null) {
                JointEdge je0 = je;
                je = je.next;
                if (this.m_destructionListener != null) {
                    this.m_destructionListener.sayGoodbye(je0.joint);
                }
                destroyJoint(je0.joint);
                body.m_jointList = je;
            }
            body.m_jointList = null;
            ContactEdge ce = body.m_contactList;
            while (ce != null) {
                ContactEdge ce0 = ce;
                ce = ce.next;
                this.m_contactManager.destroy(ce0.contact);
            }
            body.m_contactList = null;
            Fixture f = body.m_fixtureList;
            while (f != null) {
                Fixture f0 = f;
                f = f.m_next;
                if (this.m_destructionListener != null) {
                    this.m_destructionListener.sayGoodbye(f0);
                }
                f0.destroyProxies(this.m_contactManager.m_broadPhase);
                f0.destroy();
                body.m_fixtureList = f;
                body.m_fixtureCount--;
            }
            body.m_fixtureList = null;
            body.m_fixtureCount = 0;
            if (body.m_prev != null) {
                body.m_prev.m_next = body.m_next;
            }
            if (body.m_next != null) {
                body.m_next.m_prev = body.m_prev;
            }
            if (body == this.m_bodyList) {
                this.m_bodyList = body.m_next;
            }
            this.m_bodyCount--;
        }
    }

    public Joint createJoint(JointDef def) {
        if (!$assertionsDisabled && isLocked()) {
            throw new AssertionError();
        }
        if (isLocked()) {
            return null;
        }
        Joint j = Joint.create(this, def);
        j.m_prev = null;
        j.m_next = this.m_jointList;
        if (this.m_jointList != null) {
            this.m_jointList.m_prev = j;
        }
        this.m_jointList = j;
        this.m_jointCount++;
        j.m_edgeA.joint = j;
        j.m_edgeA.other = j.getBodyB();
        j.m_edgeA.prev = null;
        j.m_edgeA.next = j.getBodyA().m_jointList;
        if (j.getBodyA().m_jointList != null) {
            j.getBodyA().m_jointList.prev = j.m_edgeA;
        }
        j.getBodyA().m_jointList = j.m_edgeA;
        j.m_edgeB.joint = j;
        j.m_edgeB.other = j.getBodyA();
        j.m_edgeB.prev = null;
        j.m_edgeB.next = j.getBodyB().m_jointList;
        if (j.getBodyB().m_jointList != null) {
            j.getBodyB().m_jointList.prev = j.m_edgeB;
        }
        j.getBodyB().m_jointList = j.m_edgeB;
        Body bodyA = def.bodyA;
        Body bodyB = def.bodyB;
        if (!def.collideConnected) {
            for (ContactEdge edge = bodyB.getContactList(); edge != null; edge = edge.next) {
                if (edge.other == bodyA) {
                    edge.contact.flagForFiltering();
                }
            }
            return j;
        }
        return j;
    }

    public void destroyJoint(Joint j) {
        if (!$assertionsDisabled && isLocked()) {
            throw new AssertionError();
        }
        if (!isLocked()) {
            boolean collideConnected = j.getCollideConnected();
            if (j.m_prev != null) {
                j.m_prev.m_next = j.m_next;
            }
            if (j.m_next != null) {
                j.m_next.m_prev = j.m_prev;
            }
            if (j == this.m_jointList) {
                this.m_jointList = j.m_next;
            }
            Body bodyA = j.getBodyA();
            Body bodyB = j.getBodyB();
            bodyA.setAwake(true);
            bodyB.setAwake(true);
            if (j.m_edgeA.prev != null) {
                j.m_edgeA.prev.next = j.m_edgeA.next;
            }
            if (j.m_edgeA.next != null) {
                j.m_edgeA.next.prev = j.m_edgeA.prev;
            }
            if (j.m_edgeA == bodyA.m_jointList) {
                bodyA.m_jointList = j.m_edgeA.next;
            }
            j.m_edgeA.prev = null;
            j.m_edgeA.next = null;
            if (j.m_edgeB.prev != null) {
                j.m_edgeB.prev.next = j.m_edgeB.next;
            }
            if (j.m_edgeB.next != null) {
                j.m_edgeB.next.prev = j.m_edgeB.prev;
            }
            if (j.m_edgeB == bodyB.m_jointList) {
                bodyB.m_jointList = j.m_edgeB.next;
            }
            j.m_edgeB.prev = null;
            j.m_edgeB.next = null;
            Joint.destroy(j);
            if (!$assertionsDisabled && this.m_jointCount <= 0) {
                throw new AssertionError();
            }
            this.m_jointCount--;
            if (!collideConnected) {
                for (ContactEdge edge = bodyB.getContactList(); edge != null; edge = edge.next) {
                    if (edge.other == bodyA) {
                        edge.contact.flagForFiltering();
                    }
                }
            }
        }
    }

    public void step(float dt, int velocityIterations, int positionIterations) {
        this.stepTimer.reset();
        if ((this.m_flags & 1) == 1) {
            this.m_contactManager.findNewContacts();
            this.m_flags &= -2;
        }
        this.m_flags |= 2;
        this.step.dt = dt;
        this.step.velocityIterations = velocityIterations;
        this.step.positionIterations = positionIterations;
        if (dt > 0.0f) {
            this.step.inv_dt = 1.0f / dt;
        } else {
            this.step.inv_dt = 0.0f;
        }
        this.step.dtRatio = this.m_inv_dt0 * dt;
        this.step.warmStarting = this.m_warmStarting;
        this.tempTimer.reset();
        this.m_contactManager.collide();
        this.m_profile.collide = this.tempTimer.getMilliseconds();
        if (this.m_stepComplete && this.step.dt > 0.0f) {
            this.tempTimer.reset();
            solve(this.step);
            this.m_profile.solve = this.tempTimer.getMilliseconds();
        }
        if (this.m_continuousPhysics && this.step.dt > 0.0f) {
            this.tempTimer.reset();
            solveTOI(this.step);
            this.m_profile.solveTOI = this.tempTimer.getMilliseconds();
        }
        if (this.step.dt > 0.0f) {
            this.m_inv_dt0 = this.step.inv_dt;
        }
        if ((this.m_flags & 4) == 4) {
            clearForces();
        }
        this.m_flags &= -3;
        this.m_profile.step = this.stepTimer.getMilliseconds();
    }

    public void clearForces() {
        for (Body body = this.m_bodyList; body != null; body = body.getNext()) {
            body.m_force.setZero();
            body.m_torque = 0.0f;
        }
    }

    public void drawDebugData() {
        if (this.m_debugDraw != null) {
            int flags = this.m_debugDraw.getFlags();
            if ((flags & 1) == 1) {
                for (Body b = this.m_bodyList; b != null; b = b.getNext()) {
                    this.xf.set(b.getTransform());
                    for (Fixture f = b.getFixtureList(); f != null; f = f.getNext()) {
                        if (!b.isActive()) {
                            this.color.set(0.5f, 0.5f, 0.3f);
                            drawShape(f, this.xf, this.color);
                        } else if (b.getType() == BodyType.STATIC) {
                            this.color.set(0.5f, 0.9f, 0.3f);
                            drawShape(f, this.xf, this.color);
                        } else if (b.getType() == BodyType.KINEMATIC) {
                            this.color.set(0.5f, 0.5f, 0.9f);
                            drawShape(f, this.xf, this.color);
                        } else if (!b.isAwake()) {
                            this.color.set(0.5f, 0.5f, 0.5f);
                            drawShape(f, this.xf, this.color);
                        } else {
                            this.color.set(0.9f, 0.7f, 0.7f);
                            drawShape(f, this.xf, this.color);
                        }
                    }
                }
            }
            if ((flags & 2) == 2) {
                for (Joint j = this.m_jointList; j != null; j = j.getNext()) {
                    drawJoint(j);
                }
            }
            if ((flags & 8) == 8) {
                this.color.set(0.3f, 0.9f, 0.9f);
                for (Contact c = this.m_contactManager.m_contactList; c != null; c = c.getNext()) {
                    Fixture fixtureA = c.getFixtureA();
                    Fixture fixtureB = c.getFixtureB();
                    fixtureA.getAABB(c.getChildIndexA()).getCenterToOut(this.cA);
                    fixtureB.getAABB(c.getChildIndexB()).getCenterToOut(this.cB);
                    this.m_debugDraw.drawSegment(this.cA, this.cB, this.color);
                }
            }
            if ((flags & 4) == 4) {
                this.color.set(0.9f, 0.3f, 0.9f);
                for (Body b2 = this.m_bodyList; b2 != null; b2 = b2.getNext()) {
                    if (b2.isActive()) {
                        for (Fixture f2 = b2.getFixtureList(); f2 != null; f2 = f2.getNext()) {
                            for (int i = 0; i < f2.m_proxyCount; i++) {
                                FixtureProxy proxy = f2.m_proxies[i];
                                AABB aabb = this.m_contactManager.m_broadPhase.getFatAABB(proxy.proxyId);
                                Vec2[] vs = this.avs.get(4);
                                vs[0].set(aabb.lowerBound.x, aabb.lowerBound.y);
                                vs[1].set(aabb.upperBound.x, aabb.lowerBound.y);
                                vs[2].set(aabb.upperBound.x, aabb.upperBound.y);
                                vs[3].set(aabb.lowerBound.x, aabb.upperBound.y);
                                this.m_debugDraw.drawPolygon(vs, 4, this.color);
                            }
                        }
                    }
                }
            }
            if ((flags & 16) == 16) {
                for (Body b3 = this.m_bodyList; b3 != null; b3 = b3.getNext()) {
                    this.xf.set(b3.getTransform());
                    this.xf.p.set(b3.getWorldCenter());
                    this.m_debugDraw.drawTransform(this.xf);
                }
            }
            if ((flags & 32) == 32) {
                this.m_contactManager.m_broadPhase.drawTree(this.m_debugDraw);
            }
        }
    }

    public void queryAABB(QueryCallback callback, AABB aabb) {
        this.wqwrapper.broadPhase = this.m_contactManager.m_broadPhase;
        this.wqwrapper.callback = callback;
        this.m_contactManager.m_broadPhase.query(this.wqwrapper, aabb);
    }

    public void raycast(RayCastCallback callback, Vec2 point1, Vec2 point2) {
        this.wrcwrapper.broadPhase = this.m_contactManager.m_broadPhase;
        this.wrcwrapper.callback = callback;
        this.input.maxFraction = 1.0f;
        this.input.p1.set(point1);
        this.input.p2.set(point2);
        this.m_contactManager.m_broadPhase.raycast(this.wrcwrapper, this.input);
    }

    public Body getBodyList() {
        return this.m_bodyList;
    }

    public Joint getJointList() {
        return this.m_jointList;
    }

    public Contact getContactList() {
        return this.m_contactManager.m_contactList;
    }

    public boolean isSleepingAllowed() {
        return this.m_allowSleep;
    }

    public void setSleepingAllowed(boolean sleepingAllowed) {
        this.m_allowSleep = sleepingAllowed;
    }

    public void setWarmStarting(boolean flag) {
        this.m_warmStarting = flag;
    }

    public boolean isWarmStarting() {
        return this.m_warmStarting;
    }

    public void setContinuousPhysics(boolean flag) {
        this.m_continuousPhysics = flag;
    }

    public boolean isContinuousPhysics() {
        return this.m_continuousPhysics;
    }

    public int getProxyCount() {
        return this.m_contactManager.m_broadPhase.getProxyCount();
    }

    public int getBodyCount() {
        return this.m_bodyCount;
    }

    public int getJointCount() {
        return this.m_jointCount;
    }

    public int getContactCount() {
        return this.m_contactManager.m_contactCount;
    }

    public int getTreeHeight() {
        return this.m_contactManager.m_broadPhase.getTreeHeight();
    }

    public int getTreeBalance() {
        return this.m_contactManager.m_broadPhase.getTreeBalance();
    }

    public float getTreeQuality() {
        return this.m_contactManager.m_broadPhase.getTreeQuality();
    }

    public void setGravity(Vec2 gravity) {
        this.m_gravity.set(gravity);
    }

    public Vec2 getGravity() {
        return this.m_gravity;
    }

    public boolean isLocked() {
        return (this.m_flags & 2) == 2;
    }

    public void setAutoClearForces(boolean flag) {
        if (flag) {
            this.m_flags |= 4;
        } else {
            this.m_flags &= -5;
        }
    }

    public boolean getAutoClearForces() {
        return (this.m_flags & 4) == 4;
    }

    public ContactManager getContactManager() {
        return this.m_contactManager;
    }

    public Profile getProfile() {
        return this.m_profile;
    }

    /* JADX WARN: Removed duplicated region for block: B:97:0x0359  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void solve(org.jbox2d.dynamics.TimeStep r25) {
        /*
            Method dump skipped, instruction units count: 861
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jbox2d.dynamics.World.solve(org.jbox2d.dynamics.TimeStep):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x02f1, code lost:
    
        r37.m_stepComplete = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02f9, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void solveTOI(org.jbox2d.dynamics.TimeStep r38) {
        /*
            Method dump skipped, instruction units count: 1417
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jbox2d.dynamics.World.solveTOI(org.jbox2d.dynamics.TimeStep):void");
    }

    private void drawJoint(Joint joint) {
        Body bodyA = joint.getBodyA();
        Body bodyB = joint.getBodyB();
        Transform xf1 = bodyA.getTransform();
        Transform xf2 = bodyB.getTransform();
        Vec2 x1 = xf1.p;
        Vec2 x2 = xf2.p;
        Vec2 p1 = this.pool.popVec2();
        Vec2 p2 = this.pool.popVec2();
        joint.getAnchorA(p1);
        joint.getAnchorB(p2);
        this.color.set(0.5f, 0.8f, 0.8f);
        switch (joint.getType()) {
            case DISTANCE:
                this.m_debugDraw.drawSegment(p1, p2, this.color);
                break;
            case PULLEY:
                PulleyJoint pulley = (PulleyJoint) joint;
                Vec2 s1 = pulley.getGroundAnchorA();
                Vec2 s2 = pulley.getGroundAnchorB();
                this.m_debugDraw.drawSegment(s1, p1, this.color);
                this.m_debugDraw.drawSegment(s2, p2, this.color);
                this.m_debugDraw.drawSegment(s1, s2, this.color);
                break;
            case CONSTANT_VOLUME:
            case MOUSE:
                break;
            default:
                this.m_debugDraw.drawSegment(x1, p1, this.color);
                this.m_debugDraw.drawSegment(p1, p2, this.color);
                this.m_debugDraw.drawSegment(x2, p2, this.color);
                break;
        }
        this.pool.pushVec2(2);
    }

    private void drawShape(Fixture fixture, Transform xf, Color3f color) {
        switch (fixture.getType()) {
            case CIRCLE:
                CircleShape circle = (CircleShape) fixture.getShape();
                Transform.mulToOutUnsafe(xf, circle.m_p, this.center);
                float radius = circle.m_radius;
                xf.q.getXAxis(this.axis);
                if (fixture.getUserData() != null && fixture.getUserData().equals(LIQUID_INT)) {
                    Body b = fixture.getBody();
                    this.liquidOffset.set(b.m_linearVelocity);
                    float linVelLength = b.m_linearVelocity.length();
                    if (this.averageLinearVel == -1.0f) {
                        this.averageLinearVel = linVelLength;
                    } else {
                        this.averageLinearVel = (0.98f * this.averageLinearVel) + (0.02f * linVelLength);
                    }
                    this.liquidOffset.mulLocal((this.liquidLength / this.averageLinearVel) / 2.0f);
                    this.circCenterMoved.set(this.center).addLocal(this.liquidOffset);
                    this.center.subLocal(this.liquidOffset);
                    this.m_debugDraw.drawSegment(this.center, this.circCenterMoved, this.liquidColor);
                    return;
                }
                this.m_debugDraw.drawSolidCircle(this.center, radius, this.axis, color);
                return;
            case POLYGON:
                PolygonShape poly = (PolygonShape) fixture.getShape();
                int vertexCount = poly.m_count;
                if (!$assertionsDisabled && vertexCount > 8) {
                    throw new AssertionError();
                }
                Vec2[] vertices = this.tlvertices.get(8);
                for (int i = 0; i < vertexCount; i++) {
                    Transform.mulToOutUnsafe(xf, poly.m_vertices[i], vertices[i]);
                }
                this.m_debugDraw.drawSolidPolygon(vertices, vertexCount, color);
                return;
            case EDGE:
                EdgeShape edge = (EdgeShape) fixture.getShape();
                Transform.mulToOutUnsafe(xf, edge.m_vertex1, this.v1);
                Transform.mulToOutUnsafe(xf, edge.m_vertex2, this.v2);
                this.m_debugDraw.drawSegment(this.v1, this.v2, color);
                return;
            case CHAIN:
                ChainShape chain = (ChainShape) fixture.getShape();
                int count = chain.m_count;
                Vec2[] vertices2 = chain.m_vertices;
                Transform.mulToOutUnsafe(xf, vertices2[0], this.v1);
                for (int i2 = 1; i2 < count; i2++) {
                    Transform.mulToOutUnsafe(xf, vertices2[i2], this.v2);
                    this.m_debugDraw.drawSegment(this.v1, this.v2, color);
                    this.m_debugDraw.drawCircle(this.v1, 0.05f, color);
                    this.v1.set(this.v2);
                }
                return;
            default:
                return;
        }
    }
}
