package com.qianhe.baselib.utils.parser;

import com.qianhe.baselib.bean.BestPosEntity;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.LogToFile;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class BestPosParser {
    public static BestPosEntity parse(DeviceType deviceType, String str) {
        try {
            if (!str.contains(";")) {
                return null;
            }
            String strReplace = str.trim().replace(";", "");
            String[] strArrSplit = strReplace.substring(0, strReplace.length() - 9).split(",", -1);
            if (strArrSplit.length <= 23) {
                return null;
            }
            BestPosEntity bestPosEntity = new BestPosEntity();
            bestPosEntity.line = strReplace;
            bestPosEntity.lat = Float.parseFloat(strArrSplit[11]);
            bestPosEntity.lon = Float.parseFloat(strArrSplit[12]);
            bestPosEntity.elve = Float.parseFloat(strArrSplit[13]) + Float.parseFloat(strArrSplit[14]);
            bestPosEntity.elveDiff = Float.parseFloat(strArrSplit[14]);
            bestPosEntity.trackStar = Integer.parseInt(strArrSplit[22]);
            bestPosEntity.useStar = Integer.parseInt(strArrSplit[23]);
            bestPosEntity.deviceType = deviceType;
            EventBus.getDefault().post(bestPosEntity);
            return bestPosEntity;
        } catch (Exception e) {
            LogToFile.e("BestPosParser.parse：" + e);
            return null;
        }
    }
}
