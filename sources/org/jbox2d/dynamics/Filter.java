package org.jbox2d.dynamics;

/* JADX INFO: loaded from: classes2.dex */
public class Filter {
    public int categoryBits = 1;
    public int maskBits = 65535;
    public int groupIndex = 0;

    public void set(Filter argOther) {
        this.categoryBits = argOther.categoryBits;
        this.maskBits = argOther.maskBits;
        this.groupIndex = argOther.groupIndex;
    }
}
