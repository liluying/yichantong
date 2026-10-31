package com.qianhe.baselib.utils.parser;

import android.text.TextUtils;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.LogToFile;
import com.tencent.smtt.sdk.ProxyConfig;
import org.greenrobot.eventbus.EventBus;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class RefstationParser {
    public static BaseStationEntity parser(DeviceType deviceType, String str) {
        int i;
        BaseStationEntity baseStationEntity = new BaseStationEntity();
        try {
            baseStationEntity.line = str;
            if (str.contains(";")) {
                String str2 = str.split(";", -1)[0];
                if (str2.length() > 4) {
                    String[] strArrSplit = str2.split(",", -1);
                    baseStationEntity.port = String.valueOf(strArrSplit[1]);
                    baseStationEntity.stateCode = Integer.parseInt(strArrSplit[2]);
                    baseStationEntity.signalQuality = String.valueOf(strArrSplit[4]);
                }
                String str3 = str.split(";", -1)[1];
                if (str3.length() > 3) {
                    String[] strArrSplit2 = str3.split(",", -1);
                    baseStationEntity.ecefX = Double.parseDouble(strArrSplit2[1]);
                    baseStationEntity.ecefY = Double.parseDouble(strArrSplit2[2]);
                    baseStationEntity.ecefZ = Double.parseDouble(strArrSplit2[3]);
                    double[] dArrConvertEcefToGeodetic = GnssCoordConvertManager.getInstance().convertEcefToGeodetic(baseStationEntity.ecefX, baseStationEntity.ecefY, baseStationEntity.ecefZ);
                    baseStationEntity.lon = dArrConvertEcefToGeodetic[0];
                    baseStationEntity.lat = dArrConvertEcefToGeodetic[1];
                    baseStationEntity.elev = dArrConvertEcefToGeodetic[2];
                }
                if (str.contains(ProxyConfig.MATCH_ALL_SCHEMES)) {
                    int iLastIndexOf = str3.lastIndexOf(",");
                    int iIndexOf = str3.indexOf(ProxyConfig.MATCH_ALL_SCHEMES);
                    if (iLastIndexOf != -1 && iIndexOf != -1 && (i = iLastIndexOf + 1) < iIndexOf) {
                        String strReplace = str3.substring(i, iIndexOf).replace(AngleFormat.STR_SEC_SYMBOL, "");
                        if (!TextUtils.isEmpty(strReplace)) {
                            baseStationEntity.baseStationId = Integer.parseInt(strReplace);
                        }
                    }
                }
            }
            baseStationEntity.deviceType = deviceType;
            EventBus.getDefault().post(baseStationEntity);
            return baseStationEntity;
        } catch (Exception e) {
            LogToFile.e("RefstationParser.parser():" + e);
            return baseStationEntity;
        }
    }
}
