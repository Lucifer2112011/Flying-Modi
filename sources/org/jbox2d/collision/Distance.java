package org.jbox2d.collision;

import org.jbox2d.collision.shapes.ChainShape;
import org.jbox2d.collision.shapes.CircleShape;
import org.jbox2d.collision.shapes.EdgeShape;
import org.jbox2d.collision.shapes.PolygonShape;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.MathUtils;
import org.jbox2d.common.Transform;
import org.jbox2d.common.Vec2;

/* JADX INFO: loaded from: classes2.dex */
public class Distance {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static int GJK_CALLS;
    public static int GJK_ITERS;
    public static int GJK_MAX_ITERS;
    private Simplex simplex = new Simplex();
    private int[] saveA = new int[3];
    private int[] saveB = new int[3];
    private Vec2 closestPoint = new Vec2();
    private Vec2 d = new Vec2();
    private Vec2 temp = new Vec2();
    private Vec2 normal = new Vec2();

    static {
        $assertionsDisabled = !Distance.class.desiredAssertionStatus();
        GJK_CALLS = 0;
        GJK_ITERS = 0;
        GJK_MAX_ITERS = 20;
    }

    private class SimplexVertex {
        public float a;
        public int indexA;
        public int indexB;
        public final Vec2 w;
        public final Vec2 wA;
        public final Vec2 wB;

        private SimplexVertex() {
            this.wA = new Vec2();
            this.wB = new Vec2();
            this.w = new Vec2();
        }

        public void set(SimplexVertex sv) {
            this.wA.set(sv.wA);
            this.wB.set(sv.wB);
            this.w.set(sv.w);
            this.a = sv.a;
            this.indexA = sv.indexA;
            this.indexB = sv.indexB;
        }
    }

    public static class SimplexCache {
        public final int[] indexA = new int[3];
        public final int[] indexB = new int[3];
        public float metric = 0.0f;
        public int count = 0;

        public SimplexCache() {
            this.indexA[0] = Integer.MAX_VALUE;
            this.indexA[1] = Integer.MAX_VALUE;
            this.indexA[2] = Integer.MAX_VALUE;
            this.indexB[0] = Integer.MAX_VALUE;
            this.indexB[1] = Integer.MAX_VALUE;
            this.indexB[2] = Integer.MAX_VALUE;
        }

        public void set(SimplexCache sc) {
            System.arraycopy(sc.indexA, 0, this.indexA, 0, this.indexA.length);
            System.arraycopy(sc.indexB, 0, this.indexB, 0, this.indexB.length);
            this.metric = sc.metric;
            this.count = sc.count;
        }
    }

    private class Simplex {
        static final /* synthetic */ boolean $assertionsDisabled;
        private final Vec2 case2;
        private final Vec2 case22;
        private final Vec2 case3;
        private final Vec2 case33;
        private final Vec2 e12;
        private final Vec2 e13;
        private final Vec2 e23;
        public int m_count;
        public final SimplexVertex m_v1;
        public final SimplexVertex m_v2;
        public final SimplexVertex m_v3;
        final /* synthetic */ Distance this$0;
        public final SimplexVertex[] vertices;
        private final Vec2 w1;
        private final Vec2 w2;
        private final Vec2 w3;

        static {
            $assertionsDisabled = !Distance.class.desiredAssertionStatus();
        }

        private Simplex(Distance distance) {
            this.this$0 = distance;
            this.m_v1 = new SimplexVertex();
            this.m_v2 = new SimplexVertex();
            this.m_v3 = new SimplexVertex();
            this.vertices = new SimplexVertex[]{this.m_v1, this.m_v2, this.m_v3};
            this.e12 = new Vec2();
            this.case2 = new Vec2();
            this.case22 = new Vec2();
            this.case3 = new Vec2();
            this.case33 = new Vec2();
            this.e13 = new Vec2();
            this.e23 = new Vec2();
            this.w1 = new Vec2();
            this.w2 = new Vec2();
            this.w3 = new Vec2();
        }

        public void readCache(SimplexCache cache, DistanceProxy proxyA, Transform transformA, DistanceProxy proxyB, Transform transformB) {
            if (!$assertionsDisabled && cache.count > 3) {
                throw new AssertionError();
            }
            this.m_count = cache.count;
            for (int i = 0; i < this.m_count; i++) {
                SimplexVertex v = this.vertices[i];
                v.indexA = cache.indexA[i];
                v.indexB = cache.indexB[i];
                Vec2 wALocal = proxyA.getVertex(v.indexA);
                Vec2 wBLocal = proxyB.getVertex(v.indexB);
                Transform.mulToOutUnsafe(transformA, wALocal, v.wA);
                Transform.mulToOutUnsafe(transformB, wBLocal, v.wB);
                v.w.set(v.wB).subLocal(v.wA);
                v.a = 0.0f;
            }
            if (this.m_count > 1) {
                float metric1 = cache.metric;
                float metric2 = getMetric();
                if (metric2 < 0.5f * metric1 || 2.0f * metric1 < metric2 || metric2 < 1.1920929E-7f) {
                    this.m_count = 0;
                }
            }
            if (this.m_count == 0) {
                SimplexVertex v2 = this.vertices[0];
                v2.indexA = 0;
                v2.indexB = 0;
                Vec2 wALocal2 = proxyA.getVertex(0);
                Vec2 wBLocal2 = proxyB.getVertex(0);
                Transform.mulToOutUnsafe(transformA, wALocal2, v2.wA);
                Transform.mulToOutUnsafe(transformB, wBLocal2, v2.wB);
                v2.w.set(v2.wB).subLocal(v2.wA);
                this.m_count = 1;
            }
        }

        public void writeCache(SimplexCache cache) {
            cache.metric = getMetric();
            cache.count = this.m_count;
            for (int i = 0; i < this.m_count; i++) {
                cache.indexA[i] = this.vertices[i].indexA;
                cache.indexB[i] = this.vertices[i].indexB;
            }
        }

        public final void getSearchDirection(Vec2 out) {
            switch (this.m_count) {
                case 1:
                    out.set(this.m_v1.w).negateLocal();
                    return;
                case 2:
                    this.e12.set(this.m_v2.w).subLocal(this.m_v1.w);
                    out.set(this.m_v1.w).negateLocal();
                    float sgn = Vec2.cross(this.e12, out);
                    if (sgn > 0.0f) {
                        Vec2.crossToOutUnsafe(1.0f, this.e12, out);
                        return;
                    } else {
                        Vec2.crossToOutUnsafe(this.e12, 1.0f, out);
                        return;
                    }
                default:
                    if (!$assertionsDisabled) {
                        throw new AssertionError();
                    }
                    out.setZero();
                    return;
            }
        }

        public void getClosestPoint(Vec2 out) {
            switch (this.m_count) {
                case 0:
                    if (!$assertionsDisabled) {
                        throw new AssertionError();
                    }
                    out.setZero();
                    return;
                case 1:
                    out.set(this.m_v1.w);
                    return;
                case 2:
                    this.case22.set(this.m_v2.w).mulLocal(this.m_v2.a);
                    this.case2.set(this.m_v1.w).mulLocal(this.m_v1.a).addLocal(this.case22);
                    out.set(this.case2);
                    return;
                case 3:
                    out.setZero();
                    return;
                default:
                    if (!$assertionsDisabled) {
                        throw new AssertionError();
                    }
                    out.setZero();
                    return;
            }
        }

        public void getWitnessPoints(Vec2 pA, Vec2 pB) {
            switch (this.m_count) {
                case 0:
                    if (!$assertionsDisabled) {
                        throw new AssertionError();
                    }
                    return;
                case 1:
                    pA.set(this.m_v1.wA);
                    pB.set(this.m_v1.wB);
                    return;
                case 2:
                    this.case2.set(this.m_v1.wA).mulLocal(this.m_v1.a);
                    pA.set(this.m_v2.wA).mulLocal(this.m_v2.a).addLocal(this.case2);
                    this.case2.set(this.m_v1.wB).mulLocal(this.m_v1.a);
                    pB.set(this.m_v2.wB).mulLocal(this.m_v2.a).addLocal(this.case2);
                    return;
                case 3:
                    pA.set(this.m_v1.wA).mulLocal(this.m_v1.a);
                    this.case3.set(this.m_v2.wA).mulLocal(this.m_v2.a);
                    this.case33.set(this.m_v3.wA).mulLocal(this.m_v3.a);
                    pA.addLocal(this.case3).addLocal(this.case33);
                    pB.set(pA);
                    return;
                default:
                    if (!$assertionsDisabled) {
                        throw new AssertionError();
                    }
                    return;
            }
        }

        public float getMetric() {
            switch (this.m_count) {
                case 0:
                    if ($assertionsDisabled) {
                        return 0.0f;
                    }
                    throw new AssertionError();
                case 1:
                    return 0.0f;
                case 2:
                    return MathUtils.distance(this.m_v1.w, this.m_v2.w);
                case 3:
                    this.case3.set(this.m_v2.w).subLocal(this.m_v1.w);
                    this.case33.set(this.m_v3.w).subLocal(this.m_v1.w);
                    return Vec2.cross(this.case3, this.case33);
                default:
                    if ($assertionsDisabled) {
                        return 0.0f;
                    }
                    throw new AssertionError();
            }
        }

        public void solve2() {
            Vec2 w1 = this.m_v1.w;
            Vec2 w2 = this.m_v2.w;
            this.e12.set(w2).subLocal(w1);
            float d12_2 = -Vec2.dot(w1, this.e12);
            if (d12_2 <= 0.0f) {
                this.m_v1.a = 1.0f;
                this.m_count = 1;
                return;
            }
            float d12_1 = Vec2.dot(w2, this.e12);
            if (d12_1 <= 0.0f) {
                this.m_v2.a = 1.0f;
                this.m_count = 1;
                this.m_v1.set(this.m_v2);
            } else {
                float inv_d12 = 1.0f / (d12_1 + d12_2);
                this.m_v1.a = d12_1 * inv_d12;
                this.m_v2.a = d12_2 * inv_d12;
                this.m_count = 2;
            }
        }

        public void solve3() {
            this.w1.set(this.m_v1.w);
            this.w2.set(this.m_v2.w);
            this.w3.set(this.m_v3.w);
            this.e12.set(this.w2).subLocal(this.w1);
            float w1e12 = Vec2.dot(this.w1, this.e12);
            float w2e12 = Vec2.dot(this.w2, this.e12);
            float d12_2 = -w1e12;
            this.e13.set(this.w3).subLocal(this.w1);
            float w1e13 = Vec2.dot(this.w1, this.e13);
            float w3e13 = Vec2.dot(this.w3, this.e13);
            float d13_2 = -w1e13;
            this.e23.set(this.w3).subLocal(this.w2);
            float w2e23 = Vec2.dot(this.w2, this.e23);
            float w3e23 = Vec2.dot(this.w3, this.e23);
            float d23_2 = -w2e23;
            float n123 = Vec2.cross(this.e12, this.e13);
            float d123_1 = n123 * Vec2.cross(this.w2, this.w3);
            float d123_2 = n123 * Vec2.cross(this.w3, this.w1);
            float d123_3 = n123 * Vec2.cross(this.w1, this.w2);
            if (d12_2 <= 0.0f && d13_2 <= 0.0f) {
                this.m_v1.a = 1.0f;
                this.m_count = 1;
                return;
            }
            if (w2e12 > 0.0f && d12_2 > 0.0f && d123_3 <= 0.0f) {
                float inv_d12 = 1.0f / (w2e12 + d12_2);
                this.m_v1.a = w2e12 * inv_d12;
                this.m_v2.a = d12_2 * inv_d12;
                this.m_count = 2;
                return;
            }
            if (w3e13 > 0.0f && d13_2 > 0.0f && d123_2 <= 0.0f) {
                float inv_d13 = 1.0f / (w3e13 + d13_2);
                this.m_v1.a = w3e13 * inv_d13;
                this.m_v3.a = d13_2 * inv_d13;
                this.m_count = 2;
                this.m_v2.set(this.m_v3);
                return;
            }
            if (w2e12 <= 0.0f && d23_2 <= 0.0f) {
                this.m_v2.a = 1.0f;
                this.m_count = 1;
                this.m_v1.set(this.m_v2);
                return;
            }
            if (w3e13 <= 0.0f && w3e23 <= 0.0f) {
                this.m_v3.a = 1.0f;
                this.m_count = 1;
                this.m_v1.set(this.m_v3);
                return;
            }
            if (w3e23 > 0.0f && d23_2 > 0.0f && d123_1 <= 0.0f) {
                float inv_d23 = 1.0f / (w3e23 + d23_2);
                this.m_v2.a = w3e23 * inv_d23;
                this.m_v3.a = d23_2 * inv_d23;
                this.m_count = 2;
                this.m_v1.set(this.m_v3);
                return;
            }
            float inv_d123 = 1.0f / ((d123_1 + d123_2) + d123_3);
            this.m_v1.a = d123_1 * inv_d123;
            this.m_v2.a = d123_2 * inv_d123;
            this.m_v3.a = d123_3 * inv_d123;
            this.m_count = 3;
        }
    }

    public static class DistanceProxy {
        static final /* synthetic */ boolean $assertionsDisabled;
        public final Vec2[] m_buffer;
        public int m_count;
        public float m_radius;
        public final Vec2[] m_vertices = new Vec2[8];

        static {
            $assertionsDisabled = !Distance.class.desiredAssertionStatus();
        }

        public DistanceProxy() {
            for (int i = 0; i < this.m_vertices.length; i++) {
                this.m_vertices[i] = new Vec2();
            }
            this.m_buffer = new Vec2[2];
            this.m_count = 0;
            this.m_radius = 0.0f;
        }

        public final void set(Shape shape, int index) {
            switch (shape.getType()) {
                case CIRCLE:
                    CircleShape circle = (CircleShape) shape;
                    this.m_vertices[0].set(circle.m_p);
                    this.m_count = 1;
                    this.m_radius = circle.m_radius;
                    return;
                case POLYGON:
                    PolygonShape poly = (PolygonShape) shape;
                    this.m_count = poly.m_count;
                    this.m_radius = poly.m_radius;
                    for (int i = 0; i < this.m_count; i++) {
                        this.m_vertices[i].set(poly.m_vertices[i]);
                    }
                    return;
                case CHAIN:
                    ChainShape chain = (ChainShape) shape;
                    if (!$assertionsDisabled && (index < 0 || index >= chain.m_count)) {
                        throw new AssertionError();
                    }
                    this.m_buffer[0] = chain.m_vertices[index];
                    if (index + 1 < chain.m_count) {
                        this.m_buffer[1] = chain.m_vertices[index + 1];
                    } else {
                        this.m_buffer[1] = chain.m_vertices[0];
                    }
                    this.m_vertices[0].set(this.m_buffer[0]);
                    this.m_vertices[1].set(this.m_buffer[1]);
                    this.m_count = 2;
                    this.m_radius = chain.m_radius;
                    return;
                case EDGE:
                    EdgeShape edge = (EdgeShape) shape;
                    this.m_vertices[0].set(edge.m_vertex1);
                    this.m_vertices[1].set(edge.m_vertex2);
                    this.m_count = 2;
                    this.m_radius = edge.m_radius;
                    return;
                default:
                    if (!$assertionsDisabled) {
                        throw new AssertionError();
                    }
                    return;
            }
        }

        public final int getSupport(Vec2 d) {
            int bestIndex = 0;
            float bestValue = Vec2.dot(this.m_vertices[0], d);
            for (int i = 1; i < this.m_count; i++) {
                float value = Vec2.dot(this.m_vertices[i], d);
                if (value > bestValue) {
                    bestIndex = i;
                    bestValue = value;
                }
            }
            return bestIndex;
        }

        public final Vec2 getSupportVertex(Vec2 d) {
            int bestIndex = 0;
            float bestValue = Vec2.dot(this.m_vertices[0], d);
            for (int i = 1; i < this.m_count; i++) {
                float value = Vec2.dot(this.m_vertices[i], d);
                if (value > bestValue) {
                    bestIndex = i;
                    bestValue = value;
                }
            }
            return this.m_vertices[bestIndex];
        }

        public final int getVertexCount() {
            return this.m_count;
        }

        public final Vec2 getVertex(int index) {
            if ($assertionsDisabled || (index >= 0 && index < this.m_count)) {
                return this.m_vertices[index];
            }
            throw new AssertionError();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0084 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void distance(org.jbox2d.collision.DistanceOutput r19, org.jbox2d.collision.Distance.SimplexCache r20, org.jbox2d.collision.DistanceInput r21) {
        /*
            Method dump skipped, instruction units count: 566
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jbox2d.collision.Distance.distance(org.jbox2d.collision.DistanceOutput, org.jbox2d.collision.Distance$SimplexCache, org.jbox2d.collision.DistanceInput):void");
    }
}
