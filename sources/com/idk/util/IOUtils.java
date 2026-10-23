package com.idk.util;

import android.os.ParcelFileDescriptor;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class IOUtils {
    public static void transfer(InputStream inp, OutputStream out) {
        try {
            byte[] tmp = new byte[1024];
            while (true) {
                int i = inp.read(tmp);
                if (i > -1) {
                    out.write(tmp, 0, i);
                } else {
                    inp.close();
                    out.close();
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static byte[] readAllBytes(InputStream ins) {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        byte[] array = new byte[1024];
        while (true) {
            try {
                int i = ins.read(array);
                if (i != -1) {
                    bos.write(array, 0, i);
                } else {
                    ins.close();
                    bos.flush();
                    array = bos.toByteArray();
                    bos.close();
                    return array;
                }
            } catch (Exception e) {
                return null;
            }
        }
    }

    public static class PipeStream {
        private final ParcelFileDescriptor myDescriptor;

        private PipeStream(ParcelFileDescriptor descriptor) {
            this.myDescriptor = descriptor;
        }

        public InputStream getInputStreamA() {
            return new ParcelFileDescriptor.AutoCloseInputStream(this.myDescriptor);
        }

        public OutputStream getOutputStream() {
            return new ParcelFileDescriptor.AutoCloseOutputStream(this.myDescriptor);
        }
    }

    public static class Pipes {
        private PipeStream a;
        private ParcelFileDescriptor[] ar;
        private PipeStream b;

        private Pipes(ParcelFileDescriptor[] arr) {
            this.a = new PipeStream(arr[0]);
            this.b = new PipeStream(arr[1]);
            this.ar = arr;
        }

        public PipeStream getStartPoint() {
            return this.a;
        }

        public PipeStream getEndPoint() {
            return this.b;
        }

        public void close() {
            for (ParcelFileDescriptor s : this.ar) {
                try {
                    s.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
