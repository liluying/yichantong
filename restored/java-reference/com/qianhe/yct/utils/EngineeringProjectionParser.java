package com.qianhe.yct.utils;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.utils.LogToFile;
import org.json.JSONException;
import org.json.JSONObject;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class EngineeringProjectionParser {
    private static final Gson GSON = new Gson();

    public static void applyParamsDetail(EngineeringEntity engineeringEntity, String str) {
        if (engineeringEntity == null || TextUtils.isEmpty(str)) {
            return;
        }
        applyCustomEllipsoidParams(engineeringEntity, str);
        String strUnwrapProjectionParamsDetail = unwrapProjectionParamsDetail(str);
        try {
            int i = engineeringEntity.projectionType;
            if (i == 1) {
                engineeringEntity.gaussKrugerParams = (EngineeringEntity.GaussKrugerParams) GSON.fromJson(strUnwrapProjectionParamsDetail, EngineeringEntity.GaussKrugerParams.class);
            } else if (i == 2) {
                engineeringEntity.utmParams = (EngineeringEntity.UTMParams) GSON.fromJson(strUnwrapProjectionParamsDetail, EngineeringEntity.UTMParams.class);
            } else {
                if (i != 3) {
                    return;
                }
                engineeringEntity.transverseMercatorParams = (EngineeringEntity.TransverseMercatorParams) GSON.fromJson(strUnwrapProjectionParamsDetail, EngineeringEntity.TransverseMercatorParams.class);
            }
        } catch (Exception e) {
            LogToFile.e("解析投影参数失败: " + e);
        }
    }

    private static void applyCustomEllipsoidParams(EngineeringEntity engineeringEntity, String str) {
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str.trim()).optJSONObject("ellipsoid");
            if (jSONObjectOptJSONObject != null) {
                if (jSONObjectOptJSONObject.has(Proj4Keyword.a) || jSONObjectOptJSONObject.has(Proj4Keyword.f)) {
                    EngineeringEntity.CustomEllipsoidParams customEllipsoidParams = new EngineeringEntity.CustomEllipsoidParams();
                    customEllipsoidParams.a = jSONObjectOptJSONObject.optDouble(Proj4Keyword.a, 0.0d);
                    customEllipsoidParams.f = jSONObjectOptJSONObject.optDouble(Proj4Keyword.f, 0.0d);
                    engineeringEntity.customEllipsoidParams = customEllipsoidParams;
                }
            }
        } catch (JSONException unused) {
        }
    }

    public static String unwrapProjectionParamsDetail(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str.trim()).optJSONObject("projection");
            return jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.toString() : str;
        } catch (JSONException unused) {
            return str;
        }
    }
}
