package com.qianhe.baselib.utils;

import com.qianhe.baselib.manage.GnssCoordConvertManager;
import org.locationtech.proj4j.CRSFactory;
import org.locationtech.proj4j.CoordinateTransformFactory;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class CoordsCalculUtils {
    private static final CRSFactory crsFactory = new CRSFactory();
    private static final CoordinateTransformFactory ctFactory = new CoordinateTransformFactory();

    public static double[] calculatePointOnLineDirection(double[] dArr, double[] dArr2, double d) {
        try {
            double[] dArrConvertToEcef = GnssCoordConvertManager.getInstance().convertToEcef(dArr);
            double[] dArrConvertToEcef2 = GnssCoordConvertManager.getInstance().convertToEcef(dArr2);
            double d2 = dArrConvertToEcef[0];
            double d3 = dArrConvertToEcef[1];
            double d4 = dArrConvertToEcef[2];
            double d5 = dArrConvertToEcef2[0] - d2;
            double d6 = dArrConvertToEcef2[1] - d3;
            double d7 = dArrConvertToEcef2[2] - d4;
            double dSqrt = Math.sqrt((d5 * d5) + (d6 * d6) + (d7 * d7));
            if (dSqrt < 1.0E-10d) {
                return new double[]{dArr[0], dArr[1], dArr[2]};
            }
            return GnssCoordConvertManager.getInstance().convertEcefToGeodetic(d2 + ((d5 / dSqrt) * d), d3 + ((d6 / dSqrt) * d), d4 + ((d7 / dSqrt) * d));
        } catch (Exception e) {
            throw new RuntimeException("计算C点坐标失败", e);
        }
    }

    public static double calculateDistanceGeodetic(double[] dArr, double[] dArr2) {
        try {
            double[] dArrConvertToEcef = GnssCoordConvertManager.getInstance().convertToEcef(dArr);
            double[] dArrConvertToEcef2 = GnssCoordConvertManager.getInstance().convertToEcef(dArr2);
            double d = dArrConvertToEcef2[0] - dArrConvertToEcef[0];
            double d2 = dArrConvertToEcef2[1] - dArrConvertToEcef[1];
            double d3 = dArrConvertToEcef2[2] - dArrConvertToEcef[2];
            return Math.sqrt((d * d) + (d2 * d2) + (d3 * d3));
        } catch (Exception e) {
            throw new RuntimeException("计算距离失败", e);
        }
    }

    public static double calculateDistanceGAUSS(double[] dArr, double[] dArr2) {
        double d = dArr2[0] - dArr[0];
        double d2 = dArr2[1] - dArr[1];
        return Math.sqrt((d * d) + (d2 * d2));
    }

    public static double distancePointToLine(double[] dArr, double[] dArr2, double[] dArr3) {
        return Math.abs(signedDistancePointToLine(dArr, dArr2, dArr3));
    }

    public static double signedDistancePointToLine(double[] dArr, double[] dArr2, double[] dArr3) {
        double d = dArr2[0];
        double d2 = dArr[0];
        double d3 = d - d2;
        double d4 = dArr2[1];
        double d5 = dArr[1];
        double d6 = d4 - d5;
        double d7 = ((dArr3[1] - d5) * d3) - ((dArr3[0] - d2) * d6);
        double dSqrt = Math.sqrt((d3 * d3) + (d6 * d6));
        if (dSqrt == 0.0d) {
            return 0.0d;
        }
        return d7 / dSqrt;
    }

    public static double projectParamOnLine(double[] dArr, double[] dArr2, double[] dArr3) {
        double d = dArr2[0];
        double d2 = dArr[0];
        double d3 = d - d2;
        double d4 = dArr2[1];
        double d5 = dArr[1];
        double d6 = d4 - d5;
        double d7 = (d3 * d3) + (d6 * d6);
        if (d7 == 0.0d) {
            return 0.0d;
        }
        return (((dArr3[0] - d2) * d3) + ((dArr3[1] - d5) * d6)) / d7;
    }

    public static double distancePointToSegment(double[] dArr, double[] dArr2, double[] dArr3) {
        double d = dArr2[0];
        double d2 = dArr[0];
        double d3 = d - d2;
        double d4 = dArr2[1];
        double d5 = dArr[1];
        double d6 = d4 - d5;
        double d7 = dArr3[0] - d2;
        double d8 = dArr3[1] - d5;
        double d9 = (d3 * d3) + (d6 * d6);
        if (d9 == 0.0d) {
            return Math.sqrt((d7 * d7) + (d8 * d8));
        }
        double dMax = Math.max(0.0d, Math.min(1.0d, ((d7 * d3) + (d8 * d6)) / d9));
        double[] dArr4 = {dArr[0] + (d3 * dMax), dArr[1] + (dMax * d6)};
        double d10 = dArr3[0] - dArr4[0];
        double d11 = dArr3[1] - dArr4[1];
        return Math.round(Math.sqrt((d10 * d10) + (d11 * d11)) * 1000.0d) / 1000.0f;
    }

    public static double[] calculateSlopeThirdPointFromA(double[] dArr, double[] dArr2, double d, double d2, boolean z) {
        double d3;
        double d4;
        double d5 = dArr2[0] - dArr[0];
        double d6 = dArr2[1] - dArr[1];
        double dSqrt = Math.sqrt((d5 * d5) + (d6 * d6));
        if (dSqrt >= 1.0E-12d) {
            d3 = d5 / dSqrt;
            d4 = d6 / dSqrt;
        } else {
            d3 = 1.0d;
            d4 = 0.0d;
        }
        return new double[]{dArr[0] + (d3 * d2), dArr[1] + (d4 * d2), z ? dArr[2] + d : dArr[2] - d};
    }
}
