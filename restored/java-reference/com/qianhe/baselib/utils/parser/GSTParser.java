package com.qianhe.baselib.utils.parser;

import com.qianhe.baselib.bean.GSTEntity;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.LogToFile;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class GSTParser {
    public static GSTEntity parse(DeviceType deviceType, String str) {
        try {
            str = str.trim();
            String[] strArrSplit = str.substring(0, str.length() - 3).split(",", -1);
            if (strArrSplit.length <= 8) {
                return null;
            }
            GSTEntity gSTEntity = new GSTEntity();
            gSTEntity.utc = String.valueOf(strArrSplit[1]);
            gSTEntity.latstd = Float.parseFloat(strArrSplit[6]);
            gSTEntity.lonstd = Float.parseFloat(strArrSplit[7]);
            gSTEntity.altstd = Float.parseFloat(strArrSplit[8]);
            gSTEntity.deviceType = deviceType;
            EventBus.getDefault().post(gSTEntity);
            return gSTEntity;
        } catch (Exception e) {
            LogToFile.e("gst解析异常：" + e + " -> " + str);
            return null;
        }
    }
}
