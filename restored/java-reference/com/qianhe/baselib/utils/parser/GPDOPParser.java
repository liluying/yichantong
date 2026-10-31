package com.qianhe.baselib.utils.parser;

import com.qianhe.baselib.bean.GPDOPEntity;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.LogToFile;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class GPDOPParser {
    public static GPDOPEntity parse(DeviceType deviceType, String str) {
        try {
            String strTrim = str.trim();
            String[] strArrSplit = strTrim.substring(0, strTrim.length() - 3).split(",");
            if (strArrSplit.length <= 4) {
                return null;
            }
            GPDOPEntity gPDOPEntity = new GPDOPEntity();
            gPDOPEntity.pdop = Float.parseFloat(strArrSplit[2]);
            gPDOPEntity.hdop = Float.parseFloat(strArrSplit[3]);
            gPDOPEntity.vdop = Float.parseFloat(strArrSplit[4]);
            gPDOPEntity.deviceType = deviceType;
            EventBus.getDefault().post(gPDOPEntity);
            return gPDOPEntity;
        } catch (Exception e) {
            LogToFile.e("GPDOPEntity：" + e);
            return null;
        }
    }
}
