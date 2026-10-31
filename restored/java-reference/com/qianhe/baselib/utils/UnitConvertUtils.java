package com.qianhe.baselib.utils;

import com.qianhe.baselib.enums.UnitEnum;
import java.math.BigDecimal;
import java.math.RoundingMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class UnitConvertUtils {
    public static double toMeter(int i, double d) {
        double d2;
        int iNormalize = UnitEnum.normalize(i);
        if (d == 0.0d) {
            return 0.0d;
        }
        if (iNormalize == UnitEnum.CM.getType()) {
            d2 = 0.01d;
        } else {
            if (iNormalize != UnitEnum.IN.getType()) {
                return d;
            }
            d2 = 0.0254d;
        }
        return d * d2;
    }

    public static double fromMeter(int i, double d, int i2) {
        int iNormalize = UnitEnum.normalize(i);
        if (i2 < 0) {
            i2 = 0;
        }
        if (iNormalize == UnitEnum.CM.getType()) {
            return round(d * 100.0d, i2);
        }
        if (iNormalize == UnitEnum.IN.getType()) {
            return round(d * 39.37007874015748d, i2);
        }
        return i2 == 0 ? d : round(d, i2);
    }

    private static double round(double d, int i) {
        return BigDecimal.valueOf(d).setScale(i, RoundingMode.HALF_UP).doubleValue();
    }
}
