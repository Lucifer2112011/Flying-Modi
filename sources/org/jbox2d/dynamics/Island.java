package org.jbox2d.dynamics;

import org.jbox2d.callbacks.ContactImpulse;
import org.jbox2d.callbacks.ContactListener;
import org.jbox2d.common.MathUtils;
import org.jbox2d.common.Settings;
import org.jbox2d.common.Timer;
import org.jbox2d.common.Vec2;
import org.jbox2d.dynamics.contacts.Contact;
import org.jbox2d.dynamics.contacts.ContactSolver;
import org.jbox2d.dynamics.contacts.ContactVelocityConstraint;
import org.jbox2d.dynamics.contacts.Position;
import org.jbox2d.dynamics.contacts.Velocity;
import org.jbox2d.dynamics.joints.Joint;

/* JADX INFO: loaded from: classes2.dex */
public class Island {
    static final /* synthetic */ boolean $assertionsDisabled;
    public Body[] m_bodies;
    public int m_bodyCapacity;
    public int m_bodyCount;
    public int m_contactCapacity;
    public int m_contactCount;
    public Contact[] m_contacts;
    public int m_jointCapacity;
    public int m_jointCount;
    public Joint[] m_joints;
    public ContactListener m_listener;
    public Position[] m_positions;
    public Velocity[] m_velocities;
    private final ContactSolver contactSolver = new ContactSolver();
    private final Timer timer = new Timer();
    private final SolverData solverData = new SolverData();
    private final ContactSolver.ContactSolverDef solverDef = new ContactSolver.ContactSolverDef();
    private final ContactSolver toiContactSolver = new ContactSolver();
    private final ContactSolver.ContactSolverDef toiSolverDef = new ContactSolver.ContactSolverDef();
    private final ContactImpulse impulse = new ContactImpulse();

    static {
        $assertionsDisabled = !Island.class.desiredAssertionStatus();
    }

    public void init(int bodyCapacity, int contactCapacity, int jointCapacity, ContactListener listener) {
        this.m_bodyCapacity = bodyCapacity;
        this.m_contactCapacity = contactCapacity;
        this.m_jointCapacity = jointCapacity;
        this.m_bodyCount = 0;
        this.m_contactCount = 0;
        this.m_jointCount = 0;
        this.m_listener = listener;
        if (this.m_bodies == null || this.m_bodyCapacity > this.m_bodies.length) {
            this.m_bodies = new Body[this.m_bodyCapacity];
        }
        if (this.m_joints == null || this.m_jointCapacity > this.m_joints.length) {
            this.m_joints = new Joint[this.m_jointCapacity];
        }
        if (this.m_contacts == null || this.m_contactCapacity > this.m_contacts.length) {
            this.m_contacts = new Contact[this.m_contactCapacity];
        }
        if (this.m_velocities == null || this.m_bodyCapacity > this.m_velocities.length) {
            Velocity[] old = this.m_velocities == null ? new Velocity[0] : this.m_velocities;
            this.m_velocities = new Velocity[this.m_bodyCapacity];
            System.arraycopy(old, 0, this.m_velocities, 0, old.length);
            for (int i = old.length; i < this.m_velocities.length; i++) {
                this.m_velocities[i] = new Velocity();
            }
        }
        if (this.m_positions == null || this.m_bodyCapacity > this.m_positions.length) {
            Position[] old2 = this.m_positions == null ? new Position[0] : this.m_positions;
            this.m_positions = new Position[this.m_bodyCapacity];
            System.arraycopy(old2, 0, this.m_positions, 0, old2.length);
            for (int i2 = old2.length; i2 < this.m_positions.length; i2++) {
                this.m_positions[i2] = new Position();
            }
        }
    }

    public void clear() {
        this.m_bodyCount = 0;
        this.m_contactCount = 0;
        this.m_jointCount = 0;
    }

    public void solve(Profile profile, TimeStep step, Vec2 gravity, boolean allowSleep) {
        float h = step.dt;
        for (int i = 0; i < this.m_bodyCount; i++) {
            Body b = this.m_bodies[i];
            Vec2 c = b.m_sweep.c;
            float a = b.m_sweep.a;
            Vec2 v = b.m_linearVelocity;
            float w = b.m_angularVelocity;
            b.m_sweep.c0.set(b.m_sweep.c);
            b.m_sweep.a0 = b.m_sweep.a;
            if (b.m_type == BodyType.DYNAMIC) {
                v.x += ((b.m_gravityScale * gravity.x) + (b.m_invMass * b.m_force.x)) * h;
                v.y += ((b.m_gravityScale * gravity.y) + (b.m_invMass * b.m_force.y)) * h;
                float w2 = w + (b.m_invI * h * b.m_torque);
                float a1 = MathUtils.clamp(1.0f - (b.m_linearDamping * h), 0.0f, 1.0f);
                v.x *= a1;
                v.y *= a1;
                w = w2 * MathUtils.clamp(1.0f - (b.m_angularDamping * h), 0.0f, 1.0f);
            }
            this.m_positions[i].c.x = c.x;
            this.m_positions[i].c.y = c.y;
            this.m_positions[i].a = a;
            this.m_velocities[i].v.x = v.x;
            this.m_velocities[i].v.y = v.y;
            this.m_velocities[i].w = w;
        }
        this.timer.reset();
        this.solverData.step = step;
        this.solverData.positions = this.m_positions;
        this.solverData.velocities = this.m_velocities;
        this.solverDef.step = step;
        this.solverDef.contacts = this.m_contacts;
        this.solverDef.count = this.m_contactCount;
        this.solverDef.positions = this.m_positions;
        this.solverDef.velocities = this.m_velocities;
        this.contactSolver.init(this.solverDef);
        this.contactSolver.initializeVelocityConstraints();
        if (step.warmStarting) {
            this.contactSolver.warmStart();
        }
        for (int i2 = 0; i2 < this.m_jointCount; i2++) {
            this.m_joints[i2].initVelocityConstraints(this.solverData);
        }
        profile.solveInit = this.timer.getMilliseconds();
        this.timer.reset();
        for (int i3 = 0; i3 < step.velocityIterations; i3++) {
            for (int j = 0; j < this.m_jointCount; j++) {
                this.m_joints[j].solveVelocityConstraints(this.solverData);
            }
            this.contactSolver.solveVelocityConstraints();
        }
        this.contactSolver.storeImpulses();
        profile.solveVelocity = this.timer.getMilliseconds();
        for (int i4 = 0; i4 < this.m_bodyCount; i4++) {
            Vec2 c2 = this.m_positions[i4].c;
            float a2 = this.m_positions[i4].a;
            Vec2 v2 = this.m_velocities[i4].v;
            float w3 = this.m_velocities[i4].w;
            float translationx = v2.x * h;
            float translationy = v2.y * h;
            if ((translationx * translationx) + (translationy * translationy) > 4.0f) {
                float ratio = 2.0f / MathUtils.sqrt((translationx * translationx) + (translationy * translationy));
                v2.x *= ratio;
                v2.y *= ratio;
            }
            float rotation = h * w3;
            if (rotation * rotation > Settings.maxRotationSquared) {
                w3 *= 1.5707964f / MathUtils.abs(rotation);
            }
            c2.x += v2.x * h;
            c2.y += v2.y * h;
            this.m_positions[i4].a = a2 + (h * w3);
            this.m_velocities[i4].w = w3;
        }
        this.timer.reset();
        boolean positionSolved = false;
        int i5 = 0;
        while (true) {
            if (i5 >= step.positionIterations) {
                break;
            }
            boolean contactsOkay = this.contactSolver.solvePositionConstraints();
            boolean jointsOkay = true;
            for (int j2 = 0; j2 < this.m_jointCount; j2++) {
                boolean jointOkay = this.m_joints[j2].solvePositionConstraints(this.solverData);
                jointsOkay = jointsOkay && jointOkay;
            }
            if (!contactsOkay || !jointsOkay) {
                i5++;
            } else {
                positionSolved = true;
                break;
            }
        }
        for (int i6 = 0; i6 < this.m_bodyCount; i6++) {
            Body body = this.m_bodies[i6];
            body.m_sweep.c.x = this.m_positions[i6].c.x;
            body.m_sweep.c.y = this.m_positions[i6].c.y;
            body.m_sweep.a = this.m_positions[i6].a;
            body.m_linearVelocity.x = this.m_velocities[i6].v.x;
            body.m_linearVelocity.y = this.m_velocities[i6].v.y;
            body.m_angularVelocity = this.m_velocities[i6].w;
            body.synchronizeTransform();
        }
        profile.solvePosition = this.timer.getMilliseconds();
        report(this.contactSolver.m_velocityConstraints);
        if (allowSleep) {
            float minSleepTime = Float.MAX_VALUE;
            for (int i7 = 0; i7 < this.m_bodyCount; i7++) {
                Body b2 = this.m_bodies[i7];
                if (b2.getType() != BodyType.STATIC) {
                    if ((b2.m_flags & 4) == 0 || b2.m_angularVelocity * b2.m_angularVelocity > 0.0012184699f || Vec2.dot(b2.m_linearVelocity, b2.m_linearVelocity) > 1.0E-4f) {
                        b2.m_sleepTime = 0.0f;
                        minSleepTime = 0.0f;
                    } else {
                        b2.m_sleepTime += h;
                        minSleepTime = MathUtils.min(minSleepTime, b2.m_sleepTime);
                    }
                }
            }
            if (minSleepTime >= 0.5f && positionSolved) {
                for (int i8 = 0; i8 < this.m_bodyCount; i8++) {
                    this.m_bodies[i8].setAwake(false);
                }
            }
        }
    }

    public void solveTOI(TimeStep subStep, int toiIndexA, int toiIndexB) {
        if (!$assertionsDisabled && toiIndexA >= this.m_bodyCount) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && toiIndexB >= this.m_bodyCount) {
            throw new AssertionError();
        }
        for (int i = 0; i < this.m_bodyCount; i++) {
            this.m_positions[i].c.x = this.m_bodies[i].m_sweep.c.x;
            this.m_positions[i].c.y = this.m_bodies[i].m_sweep.c.y;
            this.m_positions[i].a = this.m_bodies[i].m_sweep.a;
            this.m_velocities[i].v.x = this.m_bodies[i].m_linearVelocity.x;
            this.m_velocities[i].v.y = this.m_bodies[i].m_linearVelocity.y;
            this.m_velocities[i].w = this.m_bodies[i].m_angularVelocity;
        }
        this.toiSolverDef.contacts = this.m_contacts;
        this.toiSolverDef.count = this.m_contactCount;
        this.toiSolverDef.step = subStep;
        this.toiSolverDef.positions = this.m_positions;
        this.toiSolverDef.velocities = this.m_velocities;
        this.toiContactSolver.init(this.toiSolverDef);
        for (int i2 = 0; i2 < subStep.positionIterations; i2++) {
            boolean contactsOkay = this.toiContactSolver.solveTOIPositionConstraints(toiIndexA, toiIndexB);
            if (contactsOkay) {
                break;
            }
        }
        this.m_bodies[toiIndexA].m_sweep.c0.x = this.m_positions[toiIndexA].c.x;
        this.m_bodies[toiIndexA].m_sweep.c0.y = this.m_positions[toiIndexA].c.y;
        this.m_bodies[toiIndexA].m_sweep.a0 = this.m_positions[toiIndexA].a;
        this.m_bodies[toiIndexB].m_sweep.c0.set(this.m_positions[toiIndexB].c);
        this.m_bodies[toiIndexB].m_sweep.a0 = this.m_positions[toiIndexB].a;
        this.toiContactSolver.initializeVelocityConstraints();
        for (int i3 = 0; i3 < subStep.velocityIterations; i3++) {
            this.toiContactSolver.solveVelocityConstraints();
        }
        float h = subStep.dt;
        for (int i4 = 0; i4 < this.m_bodyCount; i4++) {
            Vec2 c = this.m_positions[i4].c;
            float a = this.m_positions[i4].a;
            Vec2 v = this.m_velocities[i4].v;
            float w = this.m_velocities[i4].w;
            float translationx = v.x * h;
            float translationy = v.y * h;
            if ((translationx * translationx) + (translationy * translationy) > 4.0f) {
                float ratio = 2.0f / MathUtils.sqrt((translationx * translationx) + (translationy * translationy));
                v.mulLocal(ratio);
            }
            float rotation = h * w;
            if (rotation * rotation > Settings.maxRotationSquared) {
                float ratio2 = 1.5707964f / MathUtils.abs(rotation);
                w *= ratio2;
            }
            c.x += v.x * h;
            c.y += v.y * h;
            float a2 = a + (h * w);
            this.m_positions[i4].c.x = c.x;
            this.m_positions[i4].c.y = c.y;
            this.m_positions[i4].a = a2;
            this.m_velocities[i4].v.x = v.x;
            this.m_velocities[i4].v.y = v.y;
            this.m_velocities[i4].w = w;
            Body body = this.m_bodies[i4];
            body.m_sweep.c.x = c.x;
            body.m_sweep.c.y = c.y;
            body.m_sweep.a = a2;
            body.m_linearVelocity.x = v.x;
            body.m_linearVelocity.y = v.y;
            body.m_angularVelocity = w;
            body.synchronizeTransform();
        }
        report(this.toiContactSolver.m_velocityConstraints);
    }

    public void add(Body body) {
        if (!$assertionsDisabled && this.m_bodyCount >= this.m_bodyCapacity) {
            throw new AssertionError();
        }
        body.m_islandIndex = this.m_bodyCount;
        this.m_bodies[this.m_bodyCount] = body;
        this.m_bodyCount++;
    }

    public void add(Contact contact) {
        if (!$assertionsDisabled && this.m_contactCount >= this.m_contactCapacity) {
            throw new AssertionError();
        }
        Contact[] contactArr = this.m_contacts;
        int i = this.m_contactCount;
        this.m_contactCount = i + 1;
        contactArr[i] = contact;
    }

    public void add(Joint joint) {
        if (!$assertionsDisabled && this.m_jointCount >= this.m_jointCapacity) {
            throw new AssertionError();
        }
        Joint[] jointArr = this.m_joints;
        int i = this.m_jointCount;
        this.m_jointCount = i + 1;
        jointArr[i] = joint;
    }

    public void report(ContactVelocityConstraint[] constraints) {
        if (this.m_listener != null) {
            for (int i = 0; i < this.m_contactCount; i++) {
                Contact c = this.m_contacts[i];
                ContactVelocityConstraint vc = constraints[i];
                this.impulse.count = vc.pointCount;
                for (int j = 0; j < vc.pointCount; j++) {
                    this.impulse.normalImpulses[j] = vc.points[j].normalImpulse;
                    this.impulse.tangentImpulses[j] = vc.points[j].tangentImpulse;
                }
                this.m_listener.postSolve(c, this.impulse);
            }
        }
    }
}
