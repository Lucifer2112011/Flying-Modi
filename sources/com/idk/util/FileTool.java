package com.idk.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FileTool {
    public static List<File> findListWithExtension(File folder, String format) {
        List<File> list = new ArrayList<>();
        File[] tmp = folder.listFiles();
        if (tmp != null) {
            for (File file : tmp) {
                if (file.isDirectory()) {
                    list.addAll(findListWithExtension(file, format));
                } else if (file.isFile()) {
                    String name = file.getName().toLowerCase();
                    if (name.endsWith(format)) {
                        list.add(file);
                    }
                }
            }
        }
        return list;
    }

    public static List<String> findStringListWithExtension(File folder, String format) {
        List<String> list = new ArrayList<>();
        File[] tmp = folder.listFiles();
        if (tmp != null) {
            for (File file : tmp) {
                if (file.isDirectory()) {
                    list.addAll(findStringListWithExtension(file, format));
                } else if (file.isFile()) {
                    String name = file.getName().toLowerCase();
                    if (name.endsWith(format)) {
                        list.add(file.toString());
                    }
                }
            }
        }
        return list;
    }

    public static String readTotal(File file) {
        try {
            Reader fis = new FileReader(file);
            StringWriter writer = new StringWriter();
            char[] arr = new char[1024];
            while (true) {
                int i = fis.read(arr);
                if (i > -1) {
                    writer.write(arr, 0, i);
                } else {
                    fis.close();
                    String string = writer.toString();
                    writer.close();
                    return string;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static void writeTotal(String data, File out) {
        try {
            FileOutputStream fos = new FileOutputStream(out);
            fos.write(data.getBytes(StandardCharsets.UTF_8));
            fos.flush();
            fos.close();
        } catch (Exception e) {
        }
    }

    public static void copyFolder(File source, File target) {
    }

    public static void deleteFolder(File file) {
        if (file.isDirectory()) {
            File[] child = file.listFiles();
            for (File fr : child) {
                deleteFolder(fr);
            }
            file.delete();
        }
        if (file.isFile()) {
            file.delete();
        }
    }

    public static void listAllFiles(File file) {
    }

    public static void copyFile(File source, File target) {
        try {
            copy(new FileInputStream(source), new FileOutputStream(target));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void copy(InputStream inp, OutputStream out) {
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
}
