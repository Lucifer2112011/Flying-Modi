package com.idk.gl;

import android.opengl.GLES20;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class VertexBufferObject {
    private final int buffer_id;
    public int buffer_size;
    private final int buffer_type;
    public int data_size = 4;
    public int data_type;
    private int type;

    private VertexBufferObject(int i, boolean dynamic) {
        int[] tmp = {0};
        this.buffer_type = i;
        GLES20.glGenBuffers(1, tmp, 0);
        this.buffer_id = tmp[0];
        this.type = 35044;
        if (dynamic) {
            this.type = 35048;
        }
        this.data_type = 5126;
    }

    public static VertexBufferObject createIndexBuffer(boolean dynamic) {
        return new VertexBufferObject(34963, dynamic);
    }

    public static VertexBufferObject createVertexBuffer(boolean dynamic) {
        return new VertexBufferObject(34962, dynamic);
    }

    public void bind() {
        GLES20.glBindBuffer(this.buffer_type, this.buffer_id);
    }

    public void unbind() {
        GLES20.glBindBuffer(this.buffer_type, 0);
    }

    public static void unbind(int i) {
        GLES20.glBindBuffer(i, 0);
    }

    public void setData(FloatBuffer buffer) {
        bind();
        buffer.position(0);
        this.buffer_size = buffer.remaining();
        GLES20.glBufferData(this.buffer_type, buffer.remaining() * 4, null, this.type);
        GLES20.glBufferSubData(this.buffer_type, 0, this.buffer_size * 4, buffer);
        unbind();
        this.data_type = 5126;
    }

    public void setSubData(FloatBuffer fb) {
        bind();
        fb.position(0);
        GLES20.glBufferSubData(this.buffer_type, 0, fb.remaining() * 4, fb);
        unbind();
    }

    public void setSubData(IntBuffer fb) {
        bind();
        fb.position(0);
        GLES20.glBufferSubData(this.buffer_type, 0, fb.remaining() * 4, fb);
        unbind();
    }

    public void setSubData(ShortBuffer fb) {
        bind();
        fb.position(0);
        GLES20.glBufferSubData(this.buffer_type, 0, fb.remaining() * 2, fb);
        unbind();
    }

    public void setData(ShortBuffer buffer) {
        bind();
        buffer.position(0);
        this.buffer_size = buffer.remaining();
        GLES20.glBufferData(this.buffer_type, buffer.remaining() * 2, buffer, this.type);
        unbind();
        this.data_size = 2;
        this.data_type = 5123;
    }

    public void setData(IntBuffer buffer) {
        bind();
        buffer.position(0);
        this.buffer_size = buffer.remaining();
        GLES20.glBufferData(this.buffer_type, buffer.remaining() * 4, buffer, this.type);
        unbind();
        this.data_size = 4;
        this.data_type = 5125;
    }

    public void setData(float[] buffer) {
        FloatBuffer tmp = create(buffer.length * 4).asFloatBuffer().put(buffer);
        setData(tmp);
    }

    public void setData(int[] buffer) {
        setData(create(buffer.length * 4).asIntBuffer().put(buffer));
    }

    public void setData(short[] buffer) {
        setData(create(buffer.length * 2).asShortBuffer().put(buffer));
    }

    private static ByteBuffer create(int size) {
        ByteBuffer buffer = ByteBuffer.allocateDirect(size);
        buffer.order(ByteOrder.nativeOrder());
        return buffer;
    }

    public void close() {
        GLES20.glDeleteBuffers(1, new int[]{this.buffer_id}, 0);
    }
}
