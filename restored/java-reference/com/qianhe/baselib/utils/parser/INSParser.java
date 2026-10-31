package com.qianhe.baselib.utils.parser;

import android.text.TextUtils;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.LogToFile;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class INSParser {
    public static InsNavi parser(DeviceType deviceType, String str) throws NumberFormatException {
        try {
            String strTrim = str.trim();
            try {
                String[] strArrSplit = strTrim.substring(0, strTrim.length() - 3).split(",");
                if (strArrSplit.length <= 19) {
                    return null;
                }
                InsNavi insNavi = new InsNavi();
                double d = Double.parseDouble(strArrSplit[2]);
                double d2 = Double.parseDouble(strArrSplit[3]);
                double d3 = Double.parseDouble(strArrSplit[4]);
                double d4 = Double.parseDouble(strArrSplit[5]);
                str = strTrim;
                double d5 = Double.parseDouble(strArrSplit[6]);
                double d6 = Double.parseDouble(strArrSplit[7]);
                double degrees = !TextUtils.isEmpty(strArrSplit[8]) ? Math.toDegrees(Double.parseDouble(strArrSplit[8])) : 0.0d;
                double degrees2 = !TextUtils.isEmpty(strArrSplit[9]) ? Math.toDegrees(Double.parseDouble(strArrSplit[9])) : 0.0d;
                double degrees3 = TextUtils.isEmpty(strArrSplit[10]) ? 0.0d : Math.toDegrees(Double.parseDouble(strArrSplit[10]));
                String str2 = String.format("0x%08X", Long.valueOf(Long.parseLong(strArrSplit[19])));
                insNavi.utc = String.valueOf(strArrSplit[1]);
                insNavi.longitude = d2;
                insNavi.latitude = d;
                insNavi.elevation = d3;
                insNavi.longitudeR = d5;
                insNavi.latitudeR = d4;
                insNavi.elevationR = d6;
                insNavi.geodeticLon = d2;
                insNavi.geodeticLat = d;
                insNavi.geodeticElev = d3;
                insNavi.geodeticLonR = d5;
                insNavi.geodeticLatR = d4;
                insNavi.geodeticElevR = d6;
                insNavi.rollDegrees = degrees;
                insNavi.pitchDegrees = Math.round(degrees2 * 100.0d) / 100.0d;
                insNavi.headingDegrees = Math.round(degrees3 * 100.0d) / 100.0d;
                insNavi.insStausHex = str2;
                insNavi.insStaus = Integer.parseInt(strArrSplit[19]);
                insNavi.deviceType = deviceType;
                EventBus.getDefault().post(insNavi);
                return insNavi;
            } catch (Exception e) {
                e = e;
                str = strTrim;
                LogToFile.e("INS解析异常：" + e + " -> " + str);
                return null;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }
}
