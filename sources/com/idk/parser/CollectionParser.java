package com.idk.parser;

import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class CollectionParser {
    public static String toString(Collection obj) {
        try {
            JSONObject js = new JSONObject();
            js.put("type", "list");
            js.put("class", obj.getClass().getName());
            js.put("size", obj.size());
            JSONArray array = new JSONArray();
            ArrayList cache = new ArrayList();
            cache.addAll(obj);
            for (int i = 0; i < cache.size(); i++) {
                array.put(new JSONObject(ObjectParser.toString(cache.get(i))));
            }
            js.put("value", array);
            return js.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Object fromString(String str, ClassLoader loader) {
        try {
            JSONObject jsonObject = new JSONObject(str);
            if (!jsonObject.getString("type").equals("list")) {
                return null;
            }
            Class<?> cls = loader.loadClass(jsonObject.getString("class"));
            Collection obj = (Collection) cls.newInstance();
            jsonObject.getInt("size");
            JSONArray ls = jsonObject.getJSONArray("value");
            ArrayList tmp = new ArrayList();
            for (int i = 0; i < ls.length(); i++) {
                Object va = ObjectParser.fromString(ls.getJSONObject(i).toString(), loader);
                if (va != null) {
                    tmp.add(va);
                }
            }
            obj.addAll(tmp);
            tmp.clear();
            return obj;
        } catch (Exception e) {
            return null;
        }
    }
}
