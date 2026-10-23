package com.idk.parser;

import android.util.ArrayMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class MapParser {
    public static String toString(Map map) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("type", "map");
            jSONObject.put("size", map.size());
            jSONObject.put("class", map.getClass());
            JSONArray array = new JSONArray();
            ArrayMap am = new ArrayMap();
            am.putAll(map);
            for (int i = 0; i < am.size(); i++) {
                JSONObject pair = new JSONObject();
                pair.put("key", new JSONObject(ObjectParser.toString(am.keyAt(i))));
                pair.put("value", new JSONObject(ObjectParser.toString(am.valueAt(i))));
                array.put(pair);
            }
            jSONObject.put("value", array);
            return jSONObject.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Map fromString(String str, ClassLoader loader) {
        return null;
    }
}
