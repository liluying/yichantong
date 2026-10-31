package com.qianhe.yct.utils;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class ReqSigner {
    public static String sign(int i, int i2, Map<String, Object> map) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("task=" + i);
        arrayList.add("task_num=" + i2);
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key != null && !"sign".equals(key)) {
                    arrayList.add("req_param." + key + "=" + toSignString(entry.getValue()));
                }
            }
        }
        Collections.sort(arrayList);
        return sha256Hex(join(arrayList) + "\nyct.client.sign.2026");
    }

    static String toSignString(Object obj) {
        if (obj == null || obj == JSONObject.NULL) {
            return "null";
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        if ((obj instanceof Double) || (obj instanceof Float)) {
            return String.valueOf((long) ((Number) obj).doubleValue());
        }
        if ((obj instanceof Number) || (obj instanceof Boolean)) {
            return String.valueOf(obj);
        }
        if (obj instanceof JSONObject) {
            return compactJson(obj);
        }
        if (obj instanceof JSONArray) {
            return compactJson(obj);
        }
        if (obj instanceof Map) {
            return compactJson(new JSONObject((Map) obj));
        }
        if (obj instanceof Collection) {
            return compactCollection((Collection) obj);
        }
        if (obj.getClass().isArray()) {
            try {
                return compactJson(new JSONArray(obj));
            } catch (JSONException unused) {
                return "[]";
            }
        }
        return String.valueOf(obj);
    }

    private static String compactJson(Object obj) {
        Object obj2;
        if (obj == null || obj == JSONObject.NULL) {
            return "null";
        }
        int i = 0;
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            ArrayList arrayList = new ArrayList();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                arrayList.add(itKeys.next());
            }
            Collections.sort(arrayList);
            StringBuilder sb = new StringBuilder("{");
            while (i < arrayList.size()) {
                if (i > 0) {
                    sb.append(',');
                }
                String str = (String) arrayList.get(i);
                sb.append(JSONObject.quote(str));
                sb.append(':');
                sb.append(compactJson(jSONObject.opt(str)));
                i++;
            }
            sb.append('}');
            return sb.toString();
        }
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            StringBuilder sb2 = new StringBuilder("[");
            while (i < jSONArray.length()) {
                if (i > 0) {
                    sb2.append(',');
                }
                try {
                    obj2 = jSONArray.isNull(i) ? JSONObject.NULL : jSONArray.get(i);
                } catch (JSONException unused) {
                    obj2 = JSONObject.NULL;
                }
                sb2.append(compactJson(obj2));
                i++;
            }
            sb2.append(']');
            return sb2.toString();
        }
        if (obj instanceof String) {
            return JSONObject.quote((String) obj);
        }
        if (obj instanceof Boolean) {
            return String.valueOf(obj);
        }
        if (obj instanceof Number) {
            try {
                return JSONObject.numberToString((Number) obj);
            } catch (JSONException unused2) {
                return String.valueOf(obj);
            }
        }
        return JSONObject.quote(String.valueOf(obj));
    }

    private static String compactCollection(Collection<?> collection) {
        StringBuilder sb = new StringBuilder("[");
        boolean z = true;
        for (Object obj : collection) {
            if (!z) {
                sb.append(',');
            }
            if (obj == null) {
                sb.append("null");
            } else if (obj instanceof String) {
                sb.append(JSONObject.quote((String) obj));
            } else if ((obj instanceof Number) || (obj instanceof Boolean)) {
                sb.append(obj);
            } else {
                sb.append(compactJson(obj));
            }
            z = false;
        }
        sb.append(']');
        return sb.toString();
    }

    private static String join(List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            if (i > 0) {
                sb.append('\n');
            }
            sb.append(list.get(i));
        }
        return sb.toString();
    }

    private static String sha256Hex(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(str.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            for (byte b : bArrDigest) {
                String hexString = Integer.toHexString(b & 255);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            return "";
        }
    }
}
