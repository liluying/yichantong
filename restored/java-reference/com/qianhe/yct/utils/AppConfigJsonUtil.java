package com.qianhe.yct.utils;

import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.bean.AppConfig;
import java.lang.reflect.Field;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class AppConfigJsonUtil {
    public static JSONObject detailsToJsonStringValues(AppConfig appConfig) throws IllegalAccessException, JSONException, SecurityException, IllegalArgumentException {
        AppConfig.Details details;
        JSONObject jSONObject = new JSONObject();
        if (appConfig == null || (details = appConfig.details) == null) {
            return jSONObject;
        }
        try {
            for (Field field : details.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                String name = field.getName();
                Object obj = field.get(appConfig.details);
                jSONObject.put(name, obj != null ? obj.toString() : "");
            }
            LogToFile.i("detailsToJsonStringValues: Details转JSONObject成功，包含 " + jSONObject.length() + " 个字段");
            return jSONObject;
        } catch (IllegalAccessException e) {
            LogToFile.i("detailsToJsonStringValues: 字段访问失败 - " + e.getMessage());
            return new JSONObject();
        } catch (JSONException e2) {
            LogToFile.i("detailsToJsonStringValues: JSON转换失败 - " + e2.getMessage());
            return new JSONObject();
        } catch (Exception e3) {
            e3.printStackTrace();
            LogToFile.i("detailsToJsonStringValues: 转换过程出错 - " + e3.getMessage());
            return new JSONObject();
        }
    }
}
