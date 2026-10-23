package com.idk.gl;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.opengl.GLES30;
import android.opengl.GLUtils;
import android.os.Build;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class Texture {
    private int id;
    public boolean loadFromPath = true;
    public Filter filter_min = Filter.LINEAR;
    public Filter filter_mag = Filter.LINEAR;
    public Wrap wrap_t = Wrap.REPEAT;
    public Wrap wrap_s = Wrap.REPEAT;
    protected int usage = 0;
    private int width = 0;
    private int height = 0;

    public enum Filter {
        LINEAR_MIPMAP_NEAREST,
        LINEAR_MIPMAP_LINEAR,
        NEAREST_MIPMAP_LINEAR,
        NEAREST_MIPMAP_NEAREST,
        LINEAR,
        NEAREST
    }

    public enum Wrap {
        FIXED,
        REPEAT,
        MIRROR_REPEAT
    }

    public Texture() {
        this.id = -1;
        int[] pointer = {0};
        GLES30.glGenTextures(1, pointer, 0);
        this.id = pointer[0];
        Bitmap map = Bitmap.createBitmap(10, 10, Bitmap.Config.RGB_565);
        map.eraseColor(-1);
        setData(map);
    }

    public Texture(Bitmap bitmap) {
        this.id = -1;
        int[] pointer = {0};
        GLES30.glGenTextures(1, pointer, 0);
        this.id = pointer[0];
        setData(bitmap);
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public Texture(float r, float g, float b) {
        this.id = -1;
        int[] pointer = {0};
        GLES30.glGenTextures(1, pointer, 0);
        this.id = pointer[0];
        Bitmap map = Bitmap.createBitmap(10, 10, Bitmap.Config.RGB_565);
        if (Build.VERSION.SDK_INT >= 26) {
            map.eraseColor(Color.rgb(r, g, b));
        } else {
            map.eraseColor(0);
        }
        setData(map);
    }

    public Texture(byte[] data) {
        this.id = -1;
        int[] pointer = {0};
        GLES30.glGenTextures(1, pointer, 0);
        this.id = pointer[0];
        Bitmap map = BitmapFactory.decodeByteArray(data, 0, data.length);
        setData(map);
    }

    public Texture(InputStream data) {
        this.id = -1;
        int[] pointer = {0};
        GLES30.glGenTextures(1, pointer, 0);
        this.id = pointer[0];
        Bitmap map = BitmapFactory.decodeStream(data);
        setData(map);
    }

    public void setData(InputStream str) {
        Bitmap map = BitmapFactory.decodeStream(str);
        setData(map);
    }

    public void setTexture(Texture t1) {
        if (this.id != -1) {
            close();
        }
        this.id = t1.id;
        this.wrap_s = t1.wrap_s;
        this.wrap_t = t1.wrap_t;
        this.filter_min = t1.filter_min;
        this.filter_mag = t1.filter_mag;
    }

    public void bind() {
        GLES30.glBindTexture(3553, this.id);
    }

    public static void unbind() {
        GLES30.glBindTexture(3553, 0);
    }

    public void active(int i) {
        GLES30.glActiveTexture(33984 + i);
        GLES30.glBindTexture(3553, this.id);
    }

    public void close() {
        GLES30.glDeleteTextures(1, new int[]{this.id}, 0);
    }

    public void setData(Bitmap map) {
        bind();
        GLES30.glTexParameterf(3553, 10241, 9985.0f);
        GLES30.glTexParameterf(3553, 10240, 9986.0f);
        GLES30.glTexParameteri(3553, 10242, 10497);
        GLES30.glTexParameteri(3553, 10243, 10497);
        GLUtils.texImage2D(3553, 0, map, 0);
        GLES30.glGenerateMipmap(3553);
        this.height = map.getHeight();
        this.width = map.getWidth();
        System.out.println("Loaded Texture " + this.width + "x" + this.height + " in " + this.id);
        unbind();
        map.recycle();
    }

    public void setFilter(Filter mn, Filter mg) {
        this.filter_min = mn;
        this.filter_mag = mg;
        bind();
        GLES30.glTexParameteri(3553, 10240, getFilterInt(mg));
        GLES30.glTexParameteri(3553, 10241, getFilterInt(mn));
        unbind();
    }

    public static int getFilterInt(Filter gl) {
        if (gl == Filter.LINEAR) {
            return 9729;
        }
        if (gl == Filter.NEAREST) {
            return 9728;
        }
        if (gl == Filter.LINEAR_MIPMAP_LINEAR) {
            return 9987;
        }
        if (gl == Filter.LINEAR_MIPMAP_NEAREST) {
            return 9985;
        }
        if (gl == Filter.NEAREST_MIPMAP_LINEAR) {
            return 9986;
        }
        if (gl == Filter.NEAREST_MIPMAP_NEAREST) {
            return 9984;
        }
        return 0;
    }

    public static int getWrapInt(Wrap vl) {
        if (vl == Wrap.REPEAT) {
            return 10497;
        }
        if (vl == Wrap.MIRROR_REPEAT) {
            return 33648;
        }
        if (vl == Wrap.FIXED) {
            return 33071;
        }
        return 0;
    }

    public void setWrap(Wrap s, Wrap t) {
        this.wrap_t = t;
        this.wrap_s = s;
        GLES30.glTexParameteri(3553, 10243, getWrapInt(this.wrap_t));
        GLES30.glTexParameteri(3553, 10242, getWrapInt(this.wrap_s));
    }

    public Bitmap getData() {
        return null;
    }

    public void delete() {
        if (this.id != -1) {
            GLES30.glDeleteTextures(1, new int[]{this.id}, 0);
        }
    }
}
