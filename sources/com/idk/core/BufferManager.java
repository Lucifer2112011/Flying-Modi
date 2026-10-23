package com.idk.core;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class BufferManager {
    public static FloatBuffer createBuffer(float[] s) {
        ByteBuffer bf = ByteBuffer.allocateDirect(s.length * 4);
        bf.order(ByteOrder.nativeOrder());
        FloatBuffer fb = bf.asFloatBuffer();
        fb.put(s);
        fb.position(0);
        return fb;
    }

    public static ShortBuffer createShortBuffer(int[] s) {
        ByteBuffer bf = ByteBuffer.allocateDirect(s.length * 2);
        bf.order(ByteOrder.nativeOrder());
        ShortBuffer fb = bf.asShortBuffer();
        for (int i : s) {
            fb.put((short) i);
        }
        fb.position(0);
        return fb;
    }

    public static IntBuffer createBuffer(int[] s) {
        ByteBuffer bf = ByteBuffer.allocateDirect(s.length * 4);
        bf.order(ByteOrder.nativeOrder());
        IntBuffer in = bf.asIntBuffer();
        in.put(s);
        in.position(0);
        return in;
    }
}
