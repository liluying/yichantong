package com.qianhe.baselib.utils.parser;

import android.text.TextUtils;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.LogToFile;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class GGAParser {
    public static GGAEntity parseGGA(DeviceType deviceType, String str) {
        try {
            if (!str.startsWith("$GPGGA,")) {
                return null;
            }
            String[] strArrSplit = str.split(",", -1);
            if (strArrSplit.length < 10) {
                return null;
            }
            GGAEntity gGAEntity = new GGAEntity();
            gGAEntity.ggaStr = str;
            gGAEntity.utc = String.valueOf(strArrSplit[1]);
            gGAEntity.latitude = ddmToDm(strArrSplit[2], strArrSplit[3]);
            gGAEntity.longitude = ddmToDm(strArrSplit[4], strArrSplit[5]);
            gGAEntity.quality = Integer.parseInt(strArrSplit[6]);
            gGAEntity.useStarNum = Integer.parseInt(strArrSplit[7]);
            gGAEntity.hdop = Double.parseDouble(!TextUtils.isEmpty(strArrSplit[8]) ? strArrSplit[8] : "0");
            gGAEntity.elevation = Double.parseDouble(strArrSplit[9]);
            if (strArrSplit.length > 11 && !TextUtils.isEmpty(strArrSplit[11])) {
                gGAEntity.geodeticHeight = Double.parseDouble(strArrSplit[11]);
            }
            if (strArrSplit.length > 13 && !TextUtils.isEmpty(strArrSplit[13])) {
                gGAEntity.age = Float.parseFloat(strArrSplit[13]);
            }
            gGAEntity.elevation += gGAEntity.geodeticHeight;
            gGAEntity.deviceType = deviceType;
            EventBus.getDefault().post(gGAEntity);
            return gGAEntity;
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e("gga解析异常：" + e + " -> " + str);
            return null;
        }
    }

    public static double ddmToDm(String str, String str2) throws NumberFormatException {
        double d = 0.0d;
        try {
            d = Integer.parseInt(str.substring(0, r0)) + (Double.parseDouble(str.substring(str.indexOf(46) - 2)) / 60.0d);
            if (!str2.equals("S")) {
                if (!str2.equals("W")) {
                    return d;
                }
            }
            return -d;
        } catch (Exception e) {
            LogToFile.e("ddmToDm：" + e);
            return d;
        }
    }

    public static String dmToDdm(double d, boolean z) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(Math.abs(d));
        BigDecimal scale = bigDecimalValueOf.setScale(0, RoundingMode.DOWN);
        BigDecimal scale2 = bigDecimalValueOf.subtract(scale).multiply(BigDecimal.valueOf(60L)).setScale(8, RoundingMode.HALF_UP);
        if (scale2.compareTo(BigDecimal.valueOf(60L)) >= 0) {
            scale = scale.add(BigDecimal.ONE);
            scale2 = BigDecimal.ZERO.setScale(8, RoundingMode.UNNECESSARY);
        }
        String plainString = scale2.toPlainString();
        int iIndexOf = plainString.indexOf(46);
        String strSubstring = plainString.substring(0, iIndexOf);
        String strSubstring2 = plainString.substring(iIndexOf);
        if (strSubstring.length() < 2) {
            strSubstring = "0" + strSubstring;
        }
        String str = strSubstring + strSubstring2;
        return z ? String.format(Locale.US, "%03d%s", Integer.valueOf(scale.intValue()), str) : String.format(Locale.US, "%02d%s", Integer.valueOf(scale.intValue()), str);
    }
}
