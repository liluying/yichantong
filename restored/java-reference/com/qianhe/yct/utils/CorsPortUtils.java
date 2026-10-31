package com.qianhe.yct.utils;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.qianhe.baselib.bean.CorsEntity;
import com.qianhe.baselib.enums.CoordinateSystemEnum;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.LogToFile;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class CorsPortUtils {
    public static List<CorsEntity> loadJsonCorsList(Context context) {
        return loadJsonCorsList(context, LanguagePrefs.isZH_CN(context));
    }

    public static List<CorsEntity> loadJsonCorsList(Context context, boolean z) throws IOException {
        String fromAssets = readFromAssets(context, z ? "cors.json" : "cors_en.json");
        if (TextUtils.isEmpty(fromAssets)) {
            return Collections.EMPTY_LIST;
        }
        try {
            List<CorsEntity> list = (List) new Gson().fromJson(fromAssets, new TypeToken<List<CorsEntity>>() { // from class: com.qianhe.yct.utils.CorsPortUtils.1
            }.getType());
            return list != null ? list : Collections.EMPTY_LIST;
        } catch (Exception e) {
            LogToFile.e("解析cors.json失败：" + e);
            return Collections.EMPTY_LIST;
        }
    }

    public static CorsEntity findPresetByName(Context context, boolean z, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (CorsEntity corsEntity : loadJsonCorsList(context, z)) {
            if (str.equalsIgnoreCase(corsEntity.corsName)) {
                return corsEntity;
            }
        }
        return null;
    }

    public static boolean hasPresetPort(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        for (CorsEntity corsEntity : loadJsonCorsList(context)) {
            if (str.equals(corsEntity.host)) {
                return (corsEntity.cgcs2000_port == 0 && corsEntity.wgs84_port == 0 && corsEntity.itrf2008_port == 0) ? false : true;
            }
        }
        return false;
    }

    public static List<CorsEntity.PortEntity> getPresetPorts(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            Iterator<CorsEntity> it = loadJsonCorsList(context).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                CorsEntity next = it.next();
                if (str.equals(next.host)) {
                    if (next.cgcs2000_port != 0) {
                        arrayList.add(new CorsEntity.PortEntity(CoordinateSystemEnum.CGCS2000.name(), next.cgcs2000_port));
                    }
                    if (next.wgs84_port != 0) {
                        arrayList.add(new CorsEntity.PortEntity(CoordinateSystemEnum.WGS84.name(), next.wgs84_port));
                    }
                    if (next.itrf2008_port != 0) {
                        arrayList.add(new CorsEntity.PortEntity(CoordinateSystemEnum.ITRF2008.name(), next.itrf2008_port));
                    }
                }
            }
        }
        return arrayList;
    }

    private static String readFromAssets(Context context, String str) throws IOException {
        StringBuilder sb = new StringBuilder();
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                        sb.append("\n");
                    } finally {
                    }
                }
                bufferedReader.close();
                if (inputStreamOpen != null) {
                    inputStreamOpen.close();
                }
            } finally {
            }
        } catch (IOException e) {
            LogToFile.e("读取assets文件失败：" + e);
        }
        return sb.toString();
    }
}
