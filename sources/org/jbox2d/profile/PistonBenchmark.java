package org.jbox2d.profile;

import org.jbox2d.collision.broadphase.BroadPhaseStrategy;
import org.jbox2d.collision.broadphase.DynamicTree;
import org.jbox2d.collision.shapes.CircleShape;
import org.jbox2d.collision.shapes.PolygonShape;
import org.jbox2d.common.MathUtils;
import org.jbox2d.common.Vec2;
import org.jbox2d.dynamics.Body;
import org.jbox2d.dynamics.BodyDef;
import org.jbox2d.dynamics.BodyType;
import org.jbox2d.dynamics.FixtureDef;
import org.jbox2d.dynamics.World;
import org.jbox2d.dynamics.joints.PrismaticJoint;
import org.jbox2d.dynamics.joints.PrismaticJointDef;
import org.jbox2d.dynamics.joints.RevoluteJoint;
import org.jbox2d.dynamics.joints.RevoluteJointDef;
import org.jbox2d.pooling.normal.DefaultWorldPool;

/* JADX INFO: loaded from: classes2.dex */
public class PistonBenchmark extends SettingsPerformanceTest {
    public RevoluteJoint m_joint1;
    public PrismaticJoint m_joint2;
    public World world;
    public static int iters = 5;
    public static int frames = 800;
    public static float timeStep = 0.016666668f;
    public static int velIters = 8;
    public static int posIters = 3;

    public PistonBenchmark() {
        super(iters);
    }

    public static void main(String[] args) {
        PistonBenchmark benchmark = new PistonBenchmark();
        benchmark.go();
    }

    @Override // org.jbox2d.profile.SettingsPerformanceTest
    public void runBenchmarkWorld() {
        BroadPhaseStrategy strategy = new DynamicTree();
        this.world = new World(new Vec2(0.0f, -10.0f), new DefaultWorldPool(100, 10), strategy);
        Body ground = this.world.createBody(new BodyDef());
        PolygonShape shape = new PolygonShape();
        shape.setAsBox(5.0f, 100.0f);
        BodyDef bd = new BodyDef();
        bd.type = BodyType.STATIC;
        FixtureDef sides = new FixtureDef();
        sides.shape = shape;
        sides.density = 0.0f;
        sides.friction = 0.0f;
        sides.restitution = 0.8f;
        sides.filter.categoryBits = 4;
        sides.filter.maskBits = 2;
        bd.position.set(-10.01f, 50.0f);
        Body bod = this.world.createBody(bd);
        bod.createFixture(sides);
        bd.position.set(10.01f, 50.0f);
        Body bod2 = this.world.createBody(bd);
        bod2.createFixture(sides);
        FixtureDef fd = new FixtureDef();
        BodyDef bd2 = new BodyDef();
        bd2.type = BodyType.DYNAMIC;
        bd2.position = new Vec2(0.0f, 25.0f);
        Body body = this.world.createBody(bd2);
        for (int i = 0; i < 5; i++) {
            CircleShape cd = new CircleShape();
            cd.m_radius = 0.5f;
            fd.shape = cd;
            fd.density = 25.0f;
            fd.friction = 0.1f;
            fd.restitution = 0.9f;
            float xPos = 4.0f * ((float) Math.cos(6.283185307179586d * ((double) (i / 5))));
            float yPos = 4.0f * ((float) Math.sin(6.283185307179586d * ((double) (i / 5))));
            cd.m_p.set(xPos, yPos);
            body.createFixture(fd);
        }
        RevoluteJointDef rjd = new RevoluteJointDef();
        rjd.initialize(body, ground, body.getPosition());
        rjd.motorSpeed = 3.1415927f;
        rjd.maxMotorTorque = 1000000.0f;
        rjd.enableMotor = true;
        this.world.createJoint(rjd);
        PolygonShape shape2 = new PolygonShape();
        shape2.setAsBox(0.5f, 2.0f);
        BodyDef bd3 = new BodyDef();
        bd3.type = BodyType.DYNAMIC;
        bd3.position.set(0.0f, 7.0f);
        Body body2 = this.world.createBody(bd3);
        body2.createFixture(shape2, 2.0f);
        RevoluteJointDef rjd2 = new RevoluteJointDef();
        rjd2.initialize(ground, body2, new Vec2(0.0f, 5.0f));
        rjd2.motorSpeed = 3.1415927f;
        rjd2.maxMotorTorque = 20000.0f;
        rjd2.enableMotor = true;
        this.m_joint1 = (RevoluteJoint) this.world.createJoint(rjd2);
        PolygonShape shape3 = new PolygonShape();
        shape3.setAsBox(0.5f, 4.0f);
        BodyDef bd4 = new BodyDef();
        bd4.type = BodyType.DYNAMIC;
        bd4.position.set(0.0f, 13.0f);
        Body body3 = this.world.createBody(bd4);
        body3.createFixture(shape3, 2.0f);
        RevoluteJointDef rjd3 = new RevoluteJointDef();
        rjd3.initialize(body2, body3, new Vec2(0.0f, 9.0f));
        rjd3.enableMotor = false;
        this.world.createJoint(rjd3);
        PolygonShape shape4 = new PolygonShape();
        shape4.setAsBox(7.0f, 2.0f);
        BodyDef bd5 = new BodyDef();
        bd5.type = BodyType.DYNAMIC;
        bd5.position.set(0.0f, 17.0f);
        Body body4 = this.world.createBody(bd5);
        FixtureDef piston = new FixtureDef();
        piston.shape = shape4;
        piston.density = 2.0f;
        piston.filter.categoryBits = 1;
        piston.filter.maskBits = 2;
        body4.createFixture(piston);
        RevoluteJointDef rjd4 = new RevoluteJointDef();
        rjd4.initialize(body3, body4, new Vec2(0.0f, 17.0f));
        this.world.createJoint(rjd4);
        PrismaticJointDef pjd = new PrismaticJointDef();
        pjd.initialize(ground, body4, new Vec2(0.0f, 17.0f), new Vec2(0.0f, 1.0f));
        pjd.maxMotorForce = 1000.0f;
        pjd.enableMotor = true;
        this.m_joint2 = (PrismaticJoint) this.world.createJoint(pjd);
        PolygonShape sd = new PolygonShape();
        BodyDef bd6 = new BodyDef();
        bd6.type = BodyType.DYNAMIC;
        FixtureDef fixture = new FixtureDef();
        for (int i2 = 0; i2 < 100; i2++) {
            sd.setAsBox(0.4f, 0.3f);
            bd6.position.set(-1.0f, 23.0f + i2);
            bd6.bullet = false;
            Body body5 = this.world.createBody(bd6);
            fixture.shape = sd;
            fixture.density = 0.1f;
            fixture.filter.categoryBits = 2;
            fixture.filter.maskBits = 7;
            body5.createFixture(fixture);
        }
        CircleShape cd2 = new CircleShape();
        cd2.m_radius = 0.36f;
        for (int i3 = 0; i3 < 100; i3++) {
            bd6.position.set(1.0f, 23.0f + i3);
            bd6.bullet = false;
            fixture.shape = cd2;
            fixture.density = 2.0f;
            fixture.filter.categoryBits = 2;
            fixture.filter.maskBits = 7;
            this.world.createBody(bd6).createFixture(fixture);
        }
        float angle = 0.0f;
        Vec2[] vertices = new Vec2[6];
        for (int i4 = 0; i4 < 6; i4++) {
            vertices[i4] = new Vec2(0.3f * MathUtils.cos(angle), 0.3f * MathUtils.sin(angle));
            angle += 1.0471976f;
        }
        PolygonShape shape5 = new PolygonShape();
        shape5.set(vertices, 6);
        for (int i5 = 0; i5 < 100; i5++) {
            bd6.position.set(0.0f, 23.0f + i5);
            bd6.type = BodyType.DYNAMIC;
            bd6.fixedRotation = true;
            bd6.bullet = false;
            fixture.shape = shape5;
            fixture.density = 1.0f;
            fixture.filter.categoryBits = 2;
            fixture.filter.maskBits = 7;
            this.world.createBody(bd6).createFixture(fixture);
        }
        for (int i6 = 0; i6 < frames; i6++) {
            this.world.step(timeStep, posIters, velIters);
        }
    }

    @Override // org.jbox2d.profile.BasicPerformanceTest
    public int getFrames(int testNum) {
        return frames;
    }
}
