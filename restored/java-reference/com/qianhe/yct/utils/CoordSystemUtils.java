package com.qianhe.yct.utils;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.yct.bean.CoordSystemEntity;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Collections;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class CoordSystemUtils {
    private static List<CoordSystemEntity> cache;

    public static List<CoordSystemEntity> loadBuiltInCoordSystems(Context context) {
        List<CoordSystemEntity> list = cache;
        if (list != null) {
            return list;
        }
        synchronized (CoordSystemUtils.class) {
            try {
                List<CoordSystemEntity> list2 = cache;
                if (list2 != null) {
                    return list2;
                }
                String fromAssets = readFromAssets(context, "coord_systems.json");
                if (TextUtils.isEmpty(fromAssets)) {
                    List<CoordSystemEntity> list3 = Collections.EMPTY_LIST;
                    cache = list3;
                    return list3;
                }
                try {
                    List<CoordSystemEntity> list4 = (List) new Gson().fromJson(fromAssets, new TypeToken<List<CoordSystemEntity>>() { // from class: com.qianhe.yct.utils.CoordSystemUtils.1
                    }.getType());
                    if (list4 == null) {
                        list4 = Collections.EMPTY_LIST;
                    }
                    cache = list4;
                } catch (Exception e) {
                    LogToFile.e("解析 coord_systems.json 失败：" + e);
                    cache = Collections.EMPTY_LIST;
                }
                return cache;
            } catch (Throwable th) {
                throw th;
            }
        }
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
                        sb.append('\n');
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
            LogToFile.e("读取 assets 文件失败：" + e);
        }
        return sb.toString();
    }
}
