package org.jbox2d.collision;

/* JADX INFO: loaded from: classes2.dex */
public class ContactID implements Comparable<ContactID> {
    public byte indexA;
    public byte indexB;
    public byte typeA;
    public byte typeB;

    public enum Type {
        VERTEX,
        FACE
    }

    public int getKey() {
        return (this.indexA << 24) | (this.indexB << 16) | (this.typeA << 8) | this.typeB;
    }

    public boolean isEqual(ContactID cid) {
        return getKey() == cid.getKey();
    }

    public ContactID() {
    }

    public ContactID(ContactID c) {
        set(c);
    }

    public void set(ContactID c) {
        this.indexA = c.indexA;
        this.indexB = c.indexB;
        this.typeA = c.typeA;
        this.typeB = c.typeB;
    }

    public void flip() {
        byte tempA = this.indexA;
        this.indexA = this.indexB;
        this.indexB = tempA;
        byte tempA2 = this.typeA;
        this.typeA = this.typeB;
        this.typeB = tempA2;
    }

    public void zero() {
        this.indexA = (byte) 0;
        this.indexB = (byte) 0;
        this.typeA = (byte) 0;
        this.typeB = (byte) 0;
    }

    @Override // java.lang.Comparable
    public int compareTo(ContactID o) {
        return getKey() - o.getKey();
    }
}
