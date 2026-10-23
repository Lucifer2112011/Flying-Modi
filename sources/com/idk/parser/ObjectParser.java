package com.idk.parser;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ObjectParser {
    public static String toString(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            Class<?> cls = obj.getClass();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("type", "object");
            jSONObject.put("class", cls.getName());
            if (isPrimitiveObject(cls)) {
                jSONObject.put("value", obj.toString());
            } else {
                if (cls.isArray()) {
                    return ArrayParser.toString(obj);
                }
                if (cls.isEnum()) {
                    jSONObject.put("value", ((Enum) obj).name());
                } else {
                    if (List.class.isAssignableFrom(cls)) {
                        return CollectionParser.toString((List) obj);
                    }
                    if (Map.class.isAssignableFrom(cls)) {
                        return MapParser.toString((Map) obj);
                    }
                    JSONArray fields = new JSONArray();
                    List<Field> fieldList = fields(cls);
                    for (Field fld : fieldList) {
                        try {
                            Class<?> var = fld.getType();
                            if (isValidField(fld)) {
                                boolean bol = fld.isAccessible();
                                fld.setAccessible(true);
                                if (fld.get(obj) == null) {
                                    fld.setAccessible(bol);
                                } else {
                                    JSONObject field = new JSONObject();
                                    field.put("class", var.getName());
                                    field.put("name", fld.getName());
                                    if (var == Integer.TYPE) {
                                        field.put("value", fld.getInt(obj));
                                    } else if (var == Short.TYPE) {
                                        field.put("value", (int) fld.getShort(obj));
                                    } else if (var == Long.TYPE) {
                                        field.put("value", fld.getLong(obj));
                                    } else if (var == Byte.TYPE) {
                                        field.put("value", (int) fld.getByte(obj));
                                    } else if (var == Character.TYPE) {
                                        field.put("value", (int) fld.getChar(obj));
                                    } else if (var == Boolean.TYPE) {
                                        field.put("value", fld.getBoolean(obj));
                                    } else if (var == Float.TYPE) {
                                        field.put("value", fld.getFloat(obj));
                                    } else if (var == Double.TYPE) {
                                        field.put("value", fld.getDouble(obj));
                                    } else if (var == String.class) {
                                        field.put("value", (String) fld.get(obj));
                                    } else {
                                        field.put("value", new JSONObject(toString(fld.get(obj))));
                                    }
                                    fld.setAccessible(bol);
                                    fields.put(field);
                                }
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    jSONObject.put("fields", fields);
                }
            }
            return jSONObject.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static boolean isPrimitiveObject(Class cls) {
        return cls == Integer.class || cls == Short.class || cls == Long.class || cls == Byte.class || cls == Character.class || cls == Boolean.class || cls == Float.class || cls == Double.class || cls == String.class;
    }

    private static List<Field> fields(Class cls) {
        List<Field> fld = new ArrayList<>();
        for (Field s : cls.getFields()) {
            if (!fld.contains(s)) {
                fld.add(s);
            }
        }
        for (Field s2 : cls.getDeclaredFields()) {
            if (!fld.contains(s2)) {
                fld.add(s2);
            }
        }
        return fld;
    }

    private static boolean isValidField(Field fl) {
        int mod = fl.getModifiers();
        if (Modifier.isFinal(mod)) {
            return false;
        }
        List<Class<?>> annotations = new ArrayList<>();
        for (Annotation an : fl.getAnnotations()) {
            if (!annotations.contains(an.annotationType())) {
                annotations.add(an.annotationType());
            }
        }
        for (Annotation an2 : fl.getDeclaredAnnotations()) {
            if (!annotations.contains(an2.annotationType())) {
                annotations.add(an2.annotationType());
            }
        }
        if (annotations.contains(Save.class)) {
            return true;
        }
        return !annotations.contains(Ignore.class) && Modifier.isPublic(mod);
    }

    /* JADX WARN: Type inference failed for: r5v7, types: [T, java.lang.Enum] */
    public static <T> T fromString(String str, ClassLoader classLoader) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("type");
            if (string.equals("object")) {
                Class<?> clsLoadClass = classLoader.loadClass(jSONObject.getString("class"));
                if (isPrimitiveObject(clsLoadClass)) {
                    if (clsLoadClass == Integer.class) {
                        return (T) Integer.valueOf(Integer.parseInt(jSONObject.getString("value")));
                    }
                    if (clsLoadClass == Short.class) {
                        return (T) Short.valueOf(Short.parseShort(jSONObject.getString("value")));
                    }
                    if (clsLoadClass == Long.class) {
                        return (T) Long.valueOf(Long.parseLong(jSONObject.getString("value")));
                    }
                    if (clsLoadClass == Byte.class) {
                        return (T) Byte.valueOf(Byte.parseByte(jSONObject.getString("value")));
                    }
                    if (clsLoadClass == Character.class) {
                        return (T) Character.valueOf(jSONObject.getString("value").toString().charAt(0));
                    }
                    if (clsLoadClass == Double.class) {
                        return (T) Double.valueOf(Double.parseDouble(jSONObject.getString("value")));
                    }
                    if (clsLoadClass == Float.class) {
                        return (T) Float.valueOf(Float.parseFloat(jSONObject.getString("value")));
                    }
                    if (clsLoadClass == String.class) {
                        return (T) jSONObject.getString("value");
                    }
                    if (clsLoadClass == Boolean.class) {
                        return (T) Boolean.valueOf(Boolean.parseBoolean(jSONObject.getString("value")));
                    }
                } else if (clsLoadClass.isEnum()) {
                    Object[] objArr = (Enum[]) clsLoadClass.getEnumConstants();
                    String string2 = jSONObject.getString("value");
                    for (Object obj : objArr) {
                        ?? r5 = (T) obj;
                        if (r5.name().equals(string2)) {
                            return r5;
                        }
                    }
                } else {
                    try {
                        T t = (T) clsLoadClass.newInstance();
                        JSONArray jSONArray = jSONObject.getJSONArray("fields");
                        Map<String, Field> mapFieldMap = fieldMap(clsLoadClass);
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            Class<?> clsFindClass = findClass(jSONObject2.getString("class"), classLoader);
                            if (clsFindClass != null && mapFieldMap.containsKey(jSONObject2.getString("name"))) {
                                Field field = mapFieldMap.get(jSONObject2.getString("name"));
                                boolean zIsAccessible = field.isAccessible();
                                field.setAccessible(true);
                                if (clsFindClass == Integer.TYPE) {
                                    field.setInt(t, jSONObject2.getInt("value"));
                                } else if (clsFindClass == Short.TYPE) {
                                    field.setShort(t, (short) jSONObject2.getInt("value"));
                                } else if (clsFindClass == Long.TYPE) {
                                    field.setLong(t, jSONObject2.getLong("value"));
                                } else if (clsFindClass == Byte.TYPE) {
                                    field.setByte(t, (byte) jSONObject2.getInt("value"));
                                } else if (clsFindClass == Character.TYPE) {
                                    field.setChar(t, (char) jSONObject2.getInt("value"));
                                } else if (clsFindClass == Boolean.TYPE) {
                                    field.setBoolean(t, jSONObject2.getBoolean("value"));
                                } else if (clsFindClass == Float.TYPE) {
                                    field.setFloat(t, (float) jSONObject2.getDouble("value"));
                                } else if (clsFindClass == Double.TYPE) {
                                    field.setDouble(t, jSONObject2.getDouble("value"));
                                } else if (clsFindClass == String.class) {
                                    field.set(t, jSONObject2.getString("value"));
                                } else {
                                    Object objFromString = fromString(jSONObject2.getString("value"), classLoader);
                                    if (objFromString != null) {
                                        field.set(t, objFromString);
                                    }
                                }
                                field.setAccessible(zIsAccessible);
                            }
                        }
                        return t;
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } else {
                if (string.equals("array")) {
                    return (T) ArrayParser.fromString(str, classLoader);
                }
                if (string.equals("list")) {
                    return (T) CollectionParser.fromString(str, classLoader);
                }
                if (string.equals("map")) {
                    return (T) MapParser.fromString(str, classLoader);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    private static Map<String, Field> fieldMap(Class cls) {
        Map<String, Field> map = new HashMap<>();
        for (Field s : cls.getFields()) {
            if (!map.containsValue(s)) {
                map.put(s.getName(), s);
            }
        }
        for (Field s2 : cls.getDeclaredFields()) {
            if (!map.containsValue(s2)) {
                map.put(s2.getName(), s2);
            }
        }
        return map;
    }

    private static Class<?> findClass(String str, ClassLoader loader) {
        if (str.equals("boolean")) {
            return Boolean.TYPE;
        }
        if (str.equals("int")) {
            return Integer.TYPE;
        }
        if (str.equals("short")) {
            return Short.TYPE;
        }
        if (str.equals("long")) {
            return Long.TYPE;
        }
        if (str.equals("byte")) {
            return Byte.TYPE;
        }
        if (str.equals("float")) {
            return Float.TYPE;
        }
        if (str.equals("double")) {
            return Double.TYPE;
        }
        if (str.equals("char")) {
            return Character.TYPE;
        }
        try {
            return loader.loadClass(str);
        } catch (Exception e) {
            System.out.println("Class Not Found:" + str);
            return null;
        }
    }
}
