package com.qianhe.baselib.bean;

import android.text.TextUtils;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.LogToFile;
import com.tencent.smtt.sdk.ProxyConfig;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class InsAhrs {
    public DeviceType deviceType;
    public double headingDegrees;
    public double headingDegreesError;
    public double pitchDegrees;
    public double pitchDegreesError;
    public double rollDegrees;
    public double rollDegreesError;
    public String utc;

    public InsAhrs(DeviceType deviceType, String str) {
        this.deviceType = deviceType;
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String[] strArrSplit = (str.contains(ProxyConfig.MATCH_ALL_SCHEMES) ? str.substring(0, str.lastIndexOf(ProxyConfig.MATCH_ALL_SCHEMES)) : str).split(",", -1);
            if (strArrSplit.length > 7) {
                this.utc = strArrSplit[1];
                this.headingDegrees = parseDegree(strArrSplit[2]);
                this.pitchDegrees = parseDegree(strArrSplit[3]);
                this.rollDegrees = parseDegree(strArrSplit[4]);
                this.headingDegreesError = parseDegree(strArrSplit[5]);
                this.pitchDegreesError = parseDegree(strArrSplit[6]);
                this.rollDegreesError = parseDegree(strArrSplit[7]);
            }
        } catch (Exception e) {
            LogToFile.e("INS.AHRS解析异常：" + e + " -> " + str);
        }
    }

    private static double parseDegree(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0.0d;
        }
        return Double.parseDouble(str.trim());
    }
}
