package com.idk.parser;

import java.lang.reflect.Array;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ArrayParser {
    public static String toString(Object obj) {
        try {
            Class<?> element = obj.getClass().getComponentType();
            int size = Array.getLength(obj);
            JSONObject out = new JSONObject();
            out.put("type", "array");
            out.put("class", element.getName());
            JSONArray arr = new JSONArray();
            if (element.isPrimitive() || element == String.class) {
                if (element == Integer.TYPE) {
                    for (int i = 0; i < size; i++) {
                        arr.put(Array.getInt(obj, i));
                    }
                } else if (element == Short.TYPE) {
                    for (int i2 = 0; i2 < size; i2++) {
                        arr.put((int) Array.getShort(obj, i2));
                    }
                } else if (element == Long.TYPE) {
                    for (int i3 = 0; i3 < size; i3++) {
                        arr.put(Array.getLong(obj, i3));
                    }
                } else if (element == Float.TYPE) {
                    for (int i4 = 0; i4 < size; i4++) {
                        arr.put(Array.getFloat(obj, i4));
                    }
                } else if (element == Double.TYPE) {
                    for (int i5 = 0; i5 < size; i5++) {
                        arr.put(Array.getDouble(obj, i5));
                    }
                } else if (element == Byte.TYPE) {
                    for (int i6 = 0; i6 < size; i6++) {
                        arr.put((int) Array.getByte(obj, i6));
                    }
                } else if (element == Character.TYPE) {
                    for (int i7 = 0; i7 < size; i7++) {
                        arr.put((int) Array.getChar(obj, i7));
                    }
                } else if (element == Boolean.TYPE) {
                    for (int i8 = 0; i8 < size; i8++) {
                        arr.put(Array.getBoolean(obj, i8));
                    }
                } else if (element == String.class) {
                    for (int i9 = 0; i9 < size; i9++) {
                        arr.put("" + Array.get(obj, i9));
                    }
                }
            } else {
                for (int i10 = 0; i10 < size; i10++) {
                    arr.put(new JSONObject(ObjectParser.toString(Integer.valueOf(i10))));
                }
            }
            out.put("value", arr);
            return out.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Object fromString(String str, ClassLoader loader) {
        try {
            JSONObject js = new JSONObject(str);
            if (!js.getString("type").equals("array")) {
                return null;
            }
            int size = js.getInt("size");
            Class<?> element = loader.loadClass(js.getString("class"));
            Object array = Array.newInstance(element, size);
            JSONArray arr = js.getJSONArray("value");
            if (element.isPrimitive() || element == String.class) {
                if (element == Integer.TYPE) {
                    for (int i = 0; i < size; i++) {
                        Array.setInt(array, i, arr.getInt(i));
                    }
                    return array;
                }
                if (element == Short.TYPE) {
                    for (int i2 = 0; i2 < size; i2++) {
                        Array.setShort(array, i2, (short) arr.getInt(i2));
                    }
                    return array;
                }
                if (element == Long.TYPE) {
                    for (int i3 = 0; i3 < size; i3++) {
                        Array.setLong(array, i3, arr.getLong(i3));
                    }
                    return array;
                }
                if (element == Byte.TYPE) {
                    for (int i4 = 0; i4 < size; i4++) {
                        Array.setByte(array, i4, (byte) arr.getInt(i4));
                    }
                    return array;
                }
                if (element == Character.TYPE) {
                    for (int i5 = 0; i5 < size; i5++) {
                        Array.setChar(array, i5, (char) arr.getInt(i5));
                    }
                    return array;
                }
                if (element == Boolean.TYPE) {
                    for (int i6 = 0; i6 < size; i6++) {
                        Array.setBoolean(array, i6, arr.getBoolean(i6));
                    }
                    return array;
                }
                if (element == String.class) {
                    for (int i7 = 0; i7 < size; i7++) {
                        Array.set(array, i7, arr.getString(i7));
                    }
                    return array;
                }
                if (element == Float.TYPE) {
                    for (int i8 = 0; i8 < size; i8++) {
                        Array.setFloat(array, i8, (float) arr.getDouble(i8));
                    }
                    return array;
                }
                if (element == Double.TYPE) {
                    for (int i9 = 0; i9 < size; i9++) {
                        Array.setDouble(array, i9, arr.getDouble(i9));
                    }
                    return array;
                }
                return array;
            }
            for (int i10 = 0; i10 < size; i10++) {
                Array.set(array, i10, ObjectParser.fromString(arr.getJSONObject(i10).toString(), loader));
            }
            return array;
        } catch (Exception e) {
            return null;
        }
    }
}
