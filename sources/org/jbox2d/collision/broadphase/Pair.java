package org.jbox2d.collision.broadphase;

/* JADX INFO: loaded from: classes2.dex */
public class Pair implements Comparable<Pair> {
    public int proxyIdA;
    public int proxyIdB;

    @Override // java.lang.Comparable
    public int compareTo(Pair pair2) {
        if (this.proxyIdA < pair2.proxyIdA) {
            return -1;
        }
        if (this.proxyIdA != pair2.proxyIdA) {
            return 1;
        }
        if (this.proxyIdB >= pair2.proxyIdB) {
            return this.proxyIdB == pair2.proxyIdB ? 0 : 1;
        }
        return -1;
    }
}
