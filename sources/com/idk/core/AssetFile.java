package com.idk.core;

import android.content.res.AssetFileDescriptor;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public interface AssetFile {
    AssetFileDescriptor getFileDescriptor();

    InputStream getInputStream();

    long length();

    String name();

    String path();
}
