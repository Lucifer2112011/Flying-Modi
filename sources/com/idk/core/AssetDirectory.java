package com.idk.core;

/* JADX INFO: loaded from: classes2.dex */
public interface AssetDirectory {
    int getChildCount();

    AssetDirectory[] getChildDirectories();

    AssetFile[] getChildFiles();
}
