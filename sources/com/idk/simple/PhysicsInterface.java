package com.idk.simple;

import android.opengl.GLES20;
import android.util.ArrayMap;
import android.util.Log;
import com.idk.core.SceneInterface;
import com.idk.core.Tag;
import com.idk.math.Matrix;
import com.idk.math.Transform2D;
import com.idk.math.Vector2;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jbox2d.callbacks.ContactImpulse;
import org.jbox2d.callbacks.ContactListener;
import org.jbox2d.callbacks.DebugDraw;
import org.jbox2d.callbacks.RayCastCallback;
import org.jbox2d.collision.Manifold;
import org.jbox2d.collision.shapes.MassData;
import org.jbox2d.collision.shapes.PolygonShape;
import org.jbox2d.common.Color3f;
import org.jbox2d.common.IViewportTransform;
import org.jbox2d.common.Transform;
import org.jbox2d.common.Vec2;
import org.jbox2d.dynamics.Body;
import org.jbox2d.dynamics.BodyDef;
import org.jbox2d.dynamics.BodyType;
import org.jbox2d.dynamics.Fixture;
import org.jbox2d.dynamics.World;
import org.jbox2d.dynamics.contacts.Contact;
import org.jbox2d.dynamics.contacts.ContactEdge;

/* JADX INFO: loaded from: classes2.dex */
@Tag("editable")
public class PhysicsInterface extends SceneInterface {
    private boolean isEditMode;
    private OpenGLDebugDraw openGLDebugDraw;
    private Matrix projection;
    private Matrix view;
    private World world;
    private final Vec2 gravity = new Vec2(0.0f, -4.9f);
    private final ArrayMap<Rigidbody, StructUnitPhysic> rigidbodyBodyHashMap = new ArrayMap<>();
    private final ArrayMap<Staticbody, StructUnitPhysic> staticbodyBodyHashMap = new ArrayMap<>();
    private List<CollisionListener> collisionListeners = new ArrayList();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.idk.core.SceneInterface
    public void onCreate() {
        super.onCreate();
        this.world = new World(this.gravity);
        this.openGLDebugDraw = new OpenGLDebugDraw(null);
        this.world.setDebugDraw(this.openGLDebugDraw);
        this.isEditMode = this.targetScene.targetInstance.hasKey("edit_mode");
        if (this.isEditMode) {
            this.projection = (Matrix) this.targetScene.targetInstance.getUserData("e_projection");
            this.view = (Matrix) this.targetScene.targetInstance.getUserData("e_view");
        }
        this.world.setContactListener(new ContactListener() { // from class: com.idk.simple.PhysicsInterface.1
            @Override // org.jbox2d.callbacks.ContactListener
            public void beginContact(Contact contact) {
                Physicsbody physicsbody = (Physicsbody) contact.m_fixtureA.m_body.getUserData();
                Physicsbody physicsbody1 = (Physicsbody) contact.m_fixtureB.m_body.getUserData();
                for (CollisionListener listener : PhysicsInterface.this.collisionListeners) {
                    listener.onEnter(physicsbody, physicsbody1);
                }
            }

            @Override // org.jbox2d.callbacks.ContactListener
            public void endContact(Contact contact) {
                Physicsbody physicsbody = (Physicsbody) contact.m_fixtureA.m_body.getUserData();
                Physicsbody physicsbody1 = (Physicsbody) contact.m_fixtureB.m_body.getUserData();
                for (CollisionListener listener : PhysicsInterface.this.collisionListeners) {
                    listener.onExit(physicsbody, physicsbody1);
                }
            }

            @Override // org.jbox2d.callbacks.ContactListener
            public void preSolve(Contact contact, Manifold manifold) {
            }

            @Override // org.jbox2d.callbacks.ContactListener
            public void postSolve(Contact contact, ContactImpulse contactImpulse) {
            }
        });
    }

    public void addCollisionListener(CollisionListener listener) {
        this.collisionListeners.add(listener);
    }

    public void removeCollisionListener(CollisionListener listener) {
        this.collisionListeners.remove(listener);
    }

    @Override // com.idk.core.SceneInterface
    public void onPostUpdate() {
        super.onPreUpdate();
        for (Map.Entry<Rigidbody, StructUnitPhysic> data : this.rigidbodyBodyHashMap.entrySet()) {
            Transform2D transform2D = data.getKey().targetObject.transform;
            data.getValue().body.setTransform(new Vec2(transform2D.position.x * 0.01f, transform2D.position.y * 0.01f), (float) Math.toRadians(transform2D.angle));
        }
        for (Map.Entry<Staticbody, StructUnitPhysic> data2 : this.staticbodyBodyHashMap.entrySet()) {
            Transform2D transform2D2 = data2.getKey().targetObject.transform;
            data2.getValue().body.setTransform(new Vec2(transform2D2.position.x * 0.01f, transform2D2.position.y * 0.01f), (float) Math.toRadians(transform2D2.angle));
        }
        if (this.isEditMode) {
            this.openGLDebugDraw.useProgram();
            GLES20.glUniformMatrix4fv(this.openGLDebugDraw.viewHandle, 1, false, this.view.val, 0);
            GLES20.glUniformMatrix4fv(this.openGLDebugDraw.projectionHandle, 1, false, this.projection.val, 0);
            GLES20.glUniformMatrix4fv(this.openGLDebugDraw.modHandle, 1, false, this.openGLDebugDraw.mod.val, 0);
            this.world.drawDebugData();
        }
        if (!this.isEditMode) {
            float del = Math.max(0.01f, this.targetScene.targetInstance.getDeltaTime());
            this.world.step(del, 8, 3);
        }
        for (Map.Entry<Rigidbody, StructUnitPhysic> data3 : this.rigidbodyBodyHashMap.entrySet()) {
            Rigidbody rigidbody = data3.getKey();
            if (rigidbody.targetObject.active) {
                Transform2D transform2D3 = rigidbody.targetObject.transform;
                Transform transform = data3.getValue().body.getTransform();
                transform2D3.position.set(transform.p.x * 100.0f, transform.p.y * 100.0f);
                transform2D3.angle = (float) Math.toDegrees(transform.q.getAngle());
            }
        }
    }

    private class OpenGLDebugDraw extends DebugDraw {
        private static final int CIRCLE_SEGMENTS = 16;
        private static final String FRAGMENT_SHADER_CODE = "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n    gl_FragColor = uColor;\n}";
        private static final String VERTEX_SHADER_CODE = "attribute vec2 aPosition;\nuniform mat4 projection;\nuniform mat4 view;\nuniform mat4 mod;\nvoid main() {\nvec4 pos = vec4(aPosition, 0.0, 1.0) * vec4(100.0,100.0,1.0,1.0);\ngl_Position = projection * view * mod * pos;\n}";
        private int colorHandle;
        private Matrix mod;
        private int modHandle;
        private int positionHandle;
        private int projectionHandle;
        private int shaderProgram;
        private FloatBuffer vertexBuffer;
        private int viewHandle;

        private OpenGLDebugDraw(IViewportTransform viewport) {
            super(viewport);
            this.mod = new Matrix();
            initShaders();
        }

        private void initShaders() {
            this.mod.reset();
            int vertexShader = loadShader(35633, VERTEX_SHADER_CODE);
            int fragmentShader = loadShader(35632, FRAGMENT_SHADER_CODE);
            this.shaderProgram = GLES20.glCreateProgram();
            GLES20.glAttachShader(this.shaderProgram, vertexShader);
            GLES20.glAttachShader(this.shaderProgram, fragmentShader);
            GLES20.glLinkProgram(this.shaderProgram);
            int[] linkStatus = new int[1];
            GLES20.glGetProgramiv(this.shaderProgram, 35714, linkStatus, 0);
            if (linkStatus[0] != 1) {
                Log.e("OpenGLDebugDraw", "Could not link program: " + GLES20.glGetProgramInfoLog(this.shaderProgram));
                GLES20.glDeleteProgram(this.shaderProgram);
                this.shaderProgram = 0;
            }
            this.positionHandle = GLES20.glGetAttribLocation(this.shaderProgram, "aPosition");
            this.colorHandle = GLES20.glGetUniformLocation(this.shaderProgram, "uColor");
            this.viewHandle = GLES20.glGetUniformLocation(this.shaderProgram, "view");
            this.projectionHandle = GLES20.glGetUniformLocation(this.shaderProgram, "projection");
            this.modHandle = GLES20.glGetUniformLocation(this.shaderProgram, "mod");
            GLES20.glDeleteShader(vertexShader);
            GLES20.glDeleteShader(fragmentShader);
        }

        private int loadShader(int type, String shaderCode) {
            int shader = GLES20.glCreateShader(type);
            GLES20.glShaderSource(shader, shaderCode);
            GLES20.glCompileShader(shader);
            int[] compiled = new int[1];
            GLES20.glGetShaderiv(shader, 35713, compiled, 0);
            if (compiled[0] == 0) {
                Log.e("OpenGLDebugDraw", "Could not compile shader " + type + ": " + GLES20.glGetShaderInfoLog(shader));
                GLES20.glDeleteShader(shader);
                return 0;
            }
            return shader;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void useProgram() {
            if (this.shaderProgram != 0) {
                GLES20.glUseProgram(this.shaderProgram);
            }
        }

        @Override // org.jbox2d.callbacks.DebugDraw
        public void drawPoint(Vec2 point, float radiusOnScreen, Color3f color) {
            useProgram();
            float[] vertices = {point.x - radiusOnScreen, point.y - radiusOnScreen, point.x + radiusOnScreen, point.y - radiusOnScreen, point.x + radiusOnScreen, point.y + radiusOnScreen, point.x - radiusOnScreen, point.y + radiusOnScreen};
            setupVertexBuffer(vertices);
            GLES20.glVertexAttribPointer(this.positionHandle, 2, 5126, false, 0, (Buffer) this.vertexBuffer);
            GLES20.glEnableVertexAttribArray(this.positionHandle);
            GLES20.glUniform4f(this.colorHandle, color.x, color.y, color.z, 1.0f);
            GLES20.glDrawArrays(2, 0, 4);
        }

        @Override // org.jbox2d.callbacks.DebugDraw
        public void drawSolidPolygon(Vec2[] vertices, int vertexCount, Color3f color) {
            useProgram();
            float[] vertexData = new float[vertexCount * 2];
            for (int i = 0; i < vertexCount; i++) {
                vertexData[i * 2] = vertices[i].x;
                vertexData[(i * 2) + 1] = vertices[i].y;
            }
            setupVertexBuffer(vertexData);
            GLES20.glVertexAttribPointer(this.positionHandle, 2, 5126, false, 0, (Buffer) this.vertexBuffer);
            GLES20.glEnableVertexAttribArray(this.positionHandle);
            GLES20.glUniform4f(this.colorHandle, color.x, color.y, color.z, 1.0f);
            GLES20.glLineWidth(2.0f);
            GLES20.glDrawArrays(2, 0, vertexCount);
            GLES20.glDisableVertexAttribArray(this.positionHandle);
        }

        @Override // org.jbox2d.callbacks.DebugDraw
        public void drawCircle(Vec2 center, float radius, Color3f color) {
            useProgram();
            float[] vertices = new float[32];
            for (int i = 0; i < 16; i++) {
                float theta = (float) ((6.283185307179586d * ((double) i)) / 16.0d);
                vertices[i * 2] = center.x + (((float) Math.cos(theta)) * radius);
                vertices[(i * 2) + 1] = center.y + (((float) Math.sin(theta)) * radius);
            }
            setupVertexBuffer(vertices);
            GLES20.glVertexAttribPointer(this.positionHandle, 2, 5126, false, 0, (Buffer) this.vertexBuffer);
            GLES20.glEnableVertexAttribArray(this.positionHandle);
            GLES20.glUniform4f(this.colorHandle, color.x, color.y, color.z, 1.0f);
            GLES20.glLineWidth(2.0f);
            GLES20.glDrawArrays(2, 0, 16);
            GLES20.glDisableVertexAttribArray(this.positionHandle);
        }

        @Override // org.jbox2d.callbacks.DebugDraw
        public void drawSolidCircle(Vec2 center, float radius, Vec2 axis, Color3f color) {
            drawCircle(center, radius, color);
            Vec2 end = new Vec2(center.x + (axis.x * radius), center.y + (axis.y * radius));
            drawSegment(center, end, color);
        }

        @Override // org.jbox2d.callbacks.DebugDraw
        public void drawSegment(Vec2 p1, Vec2 p2, Color3f color) {
            useProgram();
            float[] vertices = {p1.x, p1.y, p2.x, p2.y};
            setupVertexBuffer(vertices);
            GLES20.glVertexAttribPointer(this.positionHandle, 2, 5126, false, 0, (Buffer) this.vertexBuffer);
            GLES20.glEnableVertexAttribArray(this.positionHandle);
            GLES20.glUniform4f(this.colorHandle, color.x, color.y, color.z, 1.0f);
            GLES20.glLineWidth(2.0f);
            GLES20.glDrawArrays(1, 0, 2);
            GLES20.glDisableVertexAttribArray(this.positionHandle);
        }

        @Override // org.jbox2d.callbacks.DebugDraw
        public void drawTransform(Transform xf) {
        }

        @Override // org.jbox2d.callbacks.DebugDraw
        public void drawString(float x, float y, String s, Color3f color) {
            Log.d("OpenGLDebugDraw", "Text at (" + x + ", " + y + "): " + s);
        }

        @Override // org.jbox2d.callbacks.DebugDraw
        public int getFlags() {
            return 1;
        }

        private void setupVertexBuffer(float[] vertices) {
            if (this.vertexBuffer != null) {
                this.vertexBuffer.clear();
            }
            this.vertexBuffer = ByteBuffer.allocateDirect(vertices.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
            this.vertexBuffer.put(vertices);
            this.vertexBuffer.position(0);
        }

        public int getShaderProgram() {
            return this.shaderProgram;
        }

        public void destroy() {
            if (this.shaderProgram != 0) {
                GLES20.glDeleteProgram(this.shaderProgram);
                this.shaderProgram = 0;
            }
        }
    }

    public void addRigidbody(Rigidbody rigidbody) {
        if (!this.rigidbodyBodyHashMap.containsKey(rigidbody)) {
            BodyDef def = new BodyDef();
            def.type = BodyType.DYNAMIC;
            def.position.set(0.0f, 0.0f);
            def.gravityScale = 1.0f;
            Body body = this.world.createBody(def);
            body.setUserData(rigidbody);
            PolygonShape shape = new PolygonShape();
            shape.setAsBox(rigidbody.targetObject.transform.scale.x * 0.01f, rigidbody.targetObject.transform.scale.y * 0.01f);
            Fixture fx = body.createFixture(shape, 1.0f);
            MassData ms = new MassData();
            ms.mass = 1.0f;
            body.setMassData(ms);
            StructUnitPhysic unitPhysic = new StructUnitPhysic();
            unitPhysic.body = body;
            unitPhysic.fixture = fx;
            this.rigidbodyBodyHashMap.put(rigidbody, unitPhysic);
            body.setActive(true);
            return;
        }
        System.out.println("Rigidbody Already Exist");
    }

    public void removeRigidbody(Rigidbody rigidbody) {
        if (this.rigidbodyBodyHashMap.containsKey(rigidbody)) {
            StructUnitPhysic unitPhysic = this.rigidbodyBodyHashMap.remove(rigidbody);
            this.world.destroyBody(unitPhysic.body);
        } else {
            System.out.println("Rigidbody Not Exist");
        }
    }

    public void addStaticbody(Staticbody staticbody) {
        if (!this.staticbodyBodyHashMap.containsKey(staticbody)) {
            BodyDef def = new BodyDef();
            def.type = BodyType.STATIC;
            def.position.set(0.0f, 0.0f);
            Body body = this.world.createBody(def);
            body.setUserData(staticbody);
            PolygonShape shape = new PolygonShape();
            shape.setAsBox(staticbody.targetObject.transform.scale.x * 0.01f, staticbody.targetObject.transform.scale.y * 0.01f);
            Fixture fx = body.createFixture(shape, 1.0f);
            fx.m_isSensor = staticbody.isGhost;
            StructUnitPhysic unitPhysic = new StructUnitPhysic();
            unitPhysic.body = body;
            unitPhysic.fixture = fx;
            this.staticbodyBodyHashMap.put(staticbody, unitPhysic);
            body.setActive(true);
            return;
        }
        System.out.println("Static Body Already Exist");
    }

    public void removeStaticbody(Staticbody staticbody) {
        if (this.staticbodyBodyHashMap.containsKey(staticbody)) {
            StructUnitPhysic unitPhysic = this.staticbodyBodyHashMap.remove(staticbody);
            this.world.destroyBody(unitPhysic.body);
        } else {
            System.out.println("Staticbody Not Exist");
        }
    }

    public void updateRigidbodySize(Rigidbody rigidbody) {
        if (this.rigidbodyBodyHashMap.containsKey(rigidbody)) {
            StructUnitPhysic unitPhysic = this.rigidbodyBodyHashMap.get(rigidbody);
            unitPhysic.body.destroyFixture(unitPhysic.fixture);
            PolygonShape shape = new PolygonShape();
            shape.setAsBox(rigidbody.targetObject.transform.scale.x * 0.01f, rigidbody.targetObject.transform.scale.y * 0.01f);
            Fixture fx = unitPhysic.body.createFixture(shape, 0.1f);
            MassData massData = new MassData();
            massData.mass = 1.0f;
            unitPhysic.body.setMassData(massData);
            unitPhysic.fixture = fx;
            return;
        }
        System.out.println("Rigidbody Not Exist");
    }

    public void addForce(Rigidbody rigidbody, Vector2 force) {
        StructUnitPhysic unitPhysic = this.rigidbodyBodyHashMap.get(rigidbody);
        if (unitPhysic != null) {
            unitPhysic.body.applyForceToCenter(to(force));
        }
    }

    public Vector2 getLinearVelocity(Rigidbody rigidbody) {
        StructUnitPhysic unitPhysic = this.rigidbodyBodyHashMap.get(rigidbody);
        return unitPhysic != null ? to(unitPhysic.body.getLinearVelocity()) : new Vector2();
    }

    private static Vec2 to(Vector2 co) {
        return new Vec2(co.x, co.y);
    }

    public static Vector2 to(Vec2 vec2) {
        return new Vector2(vec2.x, vec2.y);
    }

    public void clearForce(Rigidbody rigidbody) {
        StructUnitPhysic unitPhysic = this.rigidbodyBodyHashMap.get(rigidbody);
        if (unitPhysic != null) {
            unitPhysic.body.setAngularVelocity(0.0f);
            unitPhysic.body.setLinearVelocity(new Vec2(0.0f, 0.0f));
        }
    }

    public void updateStaticbodySize(Staticbody staticbody) {
        if (this.staticbodyBodyHashMap.containsKey(staticbody)) {
            StructUnitPhysic unitPhysic = this.staticbodyBodyHashMap.get(staticbody);
            unitPhysic.body.destroyFixture(unitPhysic.fixture);
            PolygonShape shape = new PolygonShape();
            shape.setAsBox(staticbody.targetObject.transform.scale.x * 0.01f, staticbody.targetObject.transform.scale.y * 0.01f);
            Fixture fx = unitPhysic.body.createFixture(shape, 1.0f);
            fx.m_isSensor = staticbody.isGhost;
            unitPhysic.fixture = fx;
            return;
        }
        System.out.println("Staticbody Not Exist");
    }

    public List<Physicsbody> getCollisionList(Rigidbody rigidbody) {
        StructUnitPhysic sup = this.rigidbodyBodyHashMap.get(rigidbody);
        List<Physicsbody> physicsbodies = new ArrayList<>();
        if (sup != null) {
            for (ContactEdge edge = sup.body.getContactList(); edge != null; edge = edge.next) {
                if (edge.contact.isTouching()) {
                    physicsbodies.add((Physicsbody) edge.other.getUserData());
                }
            }
        }
        return physicsbodies;
    }

    public Set<RaycastResult> castRay(Raycast raycast) {
        final Set<RaycastResult> physicsbodies = new HashSet<>();
        this.world.raycast(new RayCastCallback() { // from class: com.idk.simple.PhysicsInterface.2
            @Override // org.jbox2d.callbacks.RayCastCallback
            public float reportFixture(Fixture fixture, Vec2 vec2, Vec2 vec21, float v) {
                physicsbodies.add(new RaycastResult((Physicsbody) fixture.getUserData(), PhysicsInterface.to(vec2).mul(new Vector2(100.0f, 100.0f))));
                return 0.0f;
            }
        }, to(raycast.getStart()), to(raycast.getEnd()));
        return physicsbodies;
    }

    public List<Physicsbody> getCollisionList(Staticbody staticbody) {
        StructUnitPhysic sup = this.staticbodyBodyHashMap.get(staticbody);
        List<Physicsbody> physicsbodies = new ArrayList<>();
        if (sup != null) {
            for (ContactEdge edge = sup.body.getContactList(); edge != null; edge = edge.next) {
                if (edge.contact.isTouching()) {
                    physicsbodies.add((Physicsbody) edge.other.getUserData());
                }
            }
        }
        return physicsbodies;
    }

    private class StructUnitPhysic {
        Body body;
        Fixture fixture;

        private StructUnitPhysic() {
        }
    }
}
