package com.test;

import android.media.MediaPlayer;
import android.media.SoundPool;
import com.idk.core.GameObject;
import com.idk.core.ObjectModifier;
import com.idk.core.TouchData;
import com.idk.core.TouchListener;
import com.idk.core.TouchManager;
import com.idk.math.Vector2;
import com.idk.simple.PhysicsInterface;
import com.idk.simple.Raycast;
import com.idk.simple.Rigidbody;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class MyScript extends ObjectModifier {
    private Rigidbody body;
    private long delay;
    public float force;
    private int hit;
    private PhysicsInterface interfac;
    public boolean isCollide;
    private GameObject jm;
    private int lode;
    private boolean loss;
    private int loss3;
    private int loss4;
    private int lossID;
    private Vector2 origin;
    private MediaPlayer player;
    private SoundPool pool;
    private boolean press;
    public float speed;
    private boolean start;
    private int swing;
    private GameObject text;
    private TouchManager touch;
    private int win;
    private GameObject wn;
    private float x;
    private float y;

    private void search() {
        for (GameObject gameObject : this.targetObject.targetScene.getObjectArray()) {
            if (gameObject.name.equals("jump")) {
                this.jm = gameObject;
            } else if (gameObject.name.equals("win")) {
                this.wn = gameObject;
            } else if (gameObject.name.equals("text")) {
                this.text = gameObject;
            }
        }
    }

    @Override // com.idk.core.ObjectModifier
    public void onStart() {
        this.body = (Rigidbody) this.targetObject.getModifierAssignable(Rigidbody.class).get(0);
        this.touch = this.targetObject.targetScene.targetInstance.getTouchManager();
        this.x = this.targetObject.transform.position.x;
        this.y = this.targetObject.transform.position.y;
        SoundPool soundPool = new SoundPool(16, 3, 0);
        this.pool = soundPool;
        this.lossID = soundPool.load(this.targetObject.targetScene.targetInstance.getAssetFile("loss.mp3").getFileDescriptor(), 0);
        this.swing = this.pool.load(this.targetObject.targetScene.targetInstance.getAssetFile("swing.mp3").getFileDescriptor(), 0);
        this.win = this.pool.load(this.targetObject.targetScene.targetInstance.getAssetFile("win.mp3").getFileDescriptor(), 0);
        this.hit = this.pool.load(this.targetObject.targetScene.targetInstance.getAssetFile("hit.mp3").getFileDescriptor(), 0);
        this.lode = this.pool.load(this.targetObject.targetScene.targetInstance.getAssetFile("lode.mp3").getFileDescriptor(), 0);
        this.loss3 = this.pool.load(this.targetObject.targetScene.targetInstance.getAssetFile("loss3.mp3").getFileDescriptor(), 0);
        this.loss4 = this.pool.load(this.targetObject.targetScene.targetInstance.getAssetFile("loss4.mp3").getFileDescriptor(), 0);
        this.player = new MediaPlayer();
        this.body.getAvailableInterface().removeRigidbody(this.body);
        this.origin = new Vector2(this.x, this.y);
        search();
        this.interfac = (PhysicsInterface) this.targetObject.targetScene.getInterfaces(PhysicsInterface.class).get(0);
    }

    /* JADX INFO: renamed from: com.test.MyScript$1, reason: invalid class name */
    class AnonymousClass1 implements TouchListener {
        AnonymousClass1() {
        }

        @Override // com.idk.core.TouchListener
        public void onDrag(TouchData touchData) {
        }

        @Override // com.idk.core.TouchListener
        public void onDown(TouchData touchData) {
        }

        @Override // com.idk.core.TouchListener
        public void onUp(TouchData touchData) {
        }
    }

    private void setPlayer() {
        try {
            this.player.reset();
            this.player.setDataSource(this.targetObject.targetScene.targetInstance.getAssetFile("music.mp3").getFileDescriptor());
            this.player.prepare();
            this.player.setVolume(0.5f, 0.5f);
            this.player.start();
        } catch (Exception e) {
        }
    }

    @Override // com.idk.core.ObjectModifier
    public void onPostUpdate() {
        this.text.transform.position.set(this.targetObject.transform.position.x, this.targetObject.transform.position.y);
        if (this.delay > System.currentTimeMillis()) {
            return;
        }
        if (this.touch.getTouchCount() == 1) {
            if (!this.press) {
                down();
            }
            this.press = true;
        } else {
            this.press = false;
        }
        if (this.start && !this.loss) {
            this.x += this.targetObject.targetScene.targetInstance.getDeltaTime() * this.speed;
            this.targetObject.transform.position.x = this.x;
            this.targetObject.transform.position.y += 1.0f;
        }
        if (this.body.getCollisionList().size() > 0) {
            this.delay = System.currentTimeMillis() + 1000;
            this.loss = true;
            this.body.getAvailableInterface().removeRigidbody(this.body);
            this.player.stop();
            this.jm.transform.position.set(this.targetObject.transform.position.x, this.targetObject.transform.position.y);
            this.jm.active = true;
            int iNextInt = new Random().nextInt(4);
            if (iNextInt == 1) {
                this.pool.play(this.lossID, 1.0f, 1.0f, 0, 0, 1.0f);
            } else if (iNextInt == 2) {
                this.pool.play(this.lode, 1.0f, 1.0f, 0, 0, 1.0f);
            } else if (iNextInt == 3) {
                this.pool.play(this.loss3, 1.0f, 1.0f, 0, 0, 1.0f);
            } else {
                this.pool.play(this.loss4, 1.0f, 1.0f, 0, 0, 1.0f);
            }
        }
        if (this.start && this.x > 1800.0f) {
            this.delay = System.currentTimeMillis() + 1000;
            this.pool.play(this.win, 1.0f, 1.0f, 0, 0, 1.0f);
            this.start = false;
            this.loss = true;
            this.body.getAvailableInterface().removeRigidbody(this.body);
            this.wn.active = true;
            this.wn.transform.position.set(this.targetObject.transform.position.x, this.targetObject.transform.position.y);
        }
    }

    private void down() {
        boolean z = this.loss;
        if (z) {
            set();
            return;
        }
        if (!this.start) {
            start();
            this.x = this.origin.x;
        } else if (!z) {
            this.body.getAvailableInterface().clearForce(this.body);
            this.body.applyForce(new Vector2(0.0f, this.force));
            this.pool.play(this.swing, 1.0f, 1.0f, 0, 0, 1.0f);
        }
    }

    private void start() {
        this.start = true;
        this.body.getAvailableInterface().addRigidbody(this.body);
        this.targetObject.transform.position.set(this.origin.x, this.origin.y);
        setPlayer();
    }

    public void set() {
        this.targetObject.transform.position.set(this.origin.x, this.origin.y);
        this.loss = false;
        this.start = false;
        this.x = 0.0f;
        this.jm.active = false;
        this.wn.active = false;
    }

    public void onUpdateI() {
        Raycast raycast = new Raycast();
        raycast.setStart(this.targetObject.transform.position);
        raycast.setEnd(new Vector2(0.0f, 1.0f));
        Raycast raycast2 = new Raycast();
        raycast2.setStart(this.targetObject.transform.position);
        raycast2.setEnd(new Vector2(0.0f, 1.0f));
        Raycast raycast3 = new Raycast();
        raycast3.setStart(this.targetObject.transform.position);
        raycast3.setEnd(new Vector2(0.0f, 1.0f));
        Raycast raycast4 = new Raycast();
        raycast4.setStart(this.targetObject.transform.position);
        raycast4.setEnd(new Vector2(0.0f, 1.0f));
        if (this.interfac.castRay(raycast).size() > 0) {
            this.isCollide = true;
        }
        if (this.interfac.castRay(raycast2).size() > 0) {
            this.isCollide = true;
        }
        if (this.interfac.castRay(raycast3).size() > 0) {
            this.isCollide = true;
        }
        if (this.interfac.castRay(raycast4).size() > 0) {
            this.isCollide = true;
        }
    }
}
