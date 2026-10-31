package com.qianhe.baselib.utils;

import com.qianhe.baselib.manage.GnssCoordConvertManager;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class GeoCoordsDistanceUtils {
    public static double calculateEcefDistance3D(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d - d4;
        double d8 = d2 - d5;
        double d9 = d3 - d6;
        return Math.sqrt((d7 * d7) + (d8 * d8) + (d9 * d9));
    }

    public static double calculateEcefDistance3D(double[] dArr, double[] dArr2) {
        if (dArr == null || dArr2 == null || dArr.length < 3 || dArr2.length < 3) {
            return Double.NaN;
        }
        return calculateEcefDistance3D(dArr[0], dArr[1], dArr[2], dArr2[0], dArr2[1], dArr2[2]);
    }

    public static double calculateGeodeticDistance3D(double[] dArr, double[] dArr2) {
        if (dArr == null || dArr2 == null || dArr.length < 3 || dArr2.length < 3) {
            return Double.NaN;
        }
        return calculateGeodeticDistance3D(dArr[0], dArr[1], dArr[2], dArr2[0], dArr2[1], dArr2[2]);
    }

    public static double calculateGeodeticDistance3D(double d, double d2, double d3, double d4, double d5, double d6) {
        GnssCoordConvertManager gnssCoordConvertManager = GnssCoordConvertManager.getInstance();
        double[] dArr = new double[3];
        double[] dArr2 = new double[3];
        if (gnssCoordConvertManager.geodeticToXyzOnly(d, d2, d3, dArr) && gnssCoordConvertManager.geodeticToXyzOnly(d4, d5, d6, dArr2)) {
            return calculateEcefDistance3D(dArr, dArr2);
        }
        return Double.NaN;
    }
}
