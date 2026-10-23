package defpackage;

import com.idk.core.ObjectModifier;
import com.idk.math.Vector2;
import com.idk.simple.PhysicsInterface;
import com.idk.simple.Raycast;

/* JADX INFO: loaded from: classes.dex */
public class CollideDetect extends ObjectModifier {
    private PhysicsInterface interfac;
    public boolean isCollide;

    @Override // com.idk.core.ObjectModifier
    public void onStart() {
        this.interfac = (PhysicsInterface) this.targetObject.targetScene.getInterfaces(PhysicsInterface.class).get(0);
    }

    @Override // com.idk.core.ObjectModifier
    public void onUpdate() {
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
