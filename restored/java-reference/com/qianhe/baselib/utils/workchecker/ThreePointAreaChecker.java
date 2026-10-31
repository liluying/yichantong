package com.qianhe.baselib.utils.workchecker;

import com.qianhe.baselib.bean.CheckResult;
import com.qianhe.baselib.manage.GnssCoordConvertManager;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class ThreePointAreaChecker extends BaseChecker {
    public static CheckResult check(float f, double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4) {
        double[] dArrConvertToEcef = GnssCoordConvertManager.getInstance().convertToEcef(dArr);
        double[] dArrConvertToEcef2 = GnssCoordConvertManager.getInstance().convertToEcef(dArr2);
        double[] dArrConvertToEcef3 = GnssCoordConvertManager.getInstance().convertToEcef(dArr3);
        double[] dArrConvertToEcef4 = GnssCoordConvertManager.getInstance().convertToEcef(dArr4);
        double d = dArrConvertToEcef3[0];
        double d2 = dArrConvertToEcef2[0];
        double d3 = d - d2;
        double d4 = dArrConvertToEcef3[1];
        double d5 = dArrConvertToEcef2[1];
        double d6 = d4 - d5;
        double d7 = dArrConvertToEcef3[2];
        double d8 = dArrConvertToEcef2[2];
        double d9 = d7 - d8;
        double d10 = dArrConvertToEcef4[0] - d2;
        double d11 = dArrConvertToEcef4[1] - d5;
        double d12 = dArrConvertToEcef4[2] - d8;
        double d13 = (d6 * d12) - (d9 * d11);
        double d14 = (d9 * d10) - (d12 * d3);
        double d15 = (d3 * d11) - (d6 * d10);
        double d16 = -((d2 * d13) + (d5 * d14) + (d8 * d15));
        double radians = Math.toRadians(dArr[0]);
        double radians2 = Math.toRadians(dArr[1]);
        double dCos = (Math.cos(radians2) * Math.cos(radians) * d13) + (Math.cos(radians2) * Math.sin(radians) * d14) + (Math.sin(radians2) * d15);
        double d17 = (dArrConvertToEcef[0] * d13) + (dArrConvertToEcef[1] * d14) + (dArrConvertToEcef[2] * d15) + d16;
        CheckResult checkResult = new CheckResult();
        if (Math.abs(dCos) < 1.0E-10d) {
            checkResult.verticalDistance = 0.0d;
            checkResult.position = 0;
            return checkResult;
        }
        double d18 = (-((-d17) / dCos)) * 100.0d;
        checkResult.verticalDistance = d18;
        if (Math.abs(d18) <= 100.0f * f) {
            checkResult.position = 0;
        } else if (d18 > 0.0d) {
            checkResult.position = 1;
        } else {
            checkResult.position = -1;
        }
        checkResult.distanceV = (Math.abs(d17) / Math.sqrt(((d13 * d13) + (d14 * d14)) + (d15 * d15))) * 100.0d;
        return checkResult;
    }
}
