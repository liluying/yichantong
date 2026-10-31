package com.qianhe.yct.view.map;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CoordTransform {
    static double PI = 3.141592653589793d;
    static double a = 6378245.0d;
    static double ee = 0.006693421622965943d;

    private static boolean outOfChina(double d, double d2) {
        return d2 < 72.004d || d2 > 137.8347d || d < 0.8293d || d > 55.8271d;
    }

    public static double[] wgs84ToGcj02(double d, double d2) {
        if (outOfChina(d, d2)) {
            return new double[]{d, d2};
        }
        double d3 = d2 - 105.0d;
        double d4 = d - 35.0d;
        double dTransformLat = transformLat(d3, d4);
        double dTransformLon = transformLon(d3, d4);
        double d5 = (d / 180.0d) * PI;
        double dSin = Math.sin(d5);
        double d6 = 1.0d - ((ee * dSin) * dSin);
        double dSqrt = Math.sqrt(d6);
        double d7 = a;
        return new double[]{d + ((dTransformLat * 180.0d) / ((((1.0d - ee) * d7) / (d6 * dSqrt)) * PI)), d2 + ((dTransformLon * 180.0d) / (((d7 / dSqrt) * Math.cos(d5)) * PI))};
    }

    private static double transformLat(double d, double d2) {
        double d3 = d * 2.0d;
        return (-100.0d) + d3 + (d2 * 3.0d) + (d2 * 0.2d * d2) + (0.1d * d * d2) + (Math.sqrt(Math.abs(d)) * 0.2d) + ((((Math.sin((d * 6.0d) * PI) * 20.0d) + (Math.sin(d3 * PI) * 20.0d)) * 2.0d) / 3.0d) + ((((Math.sin(PI * d2) * 20.0d) + (Math.sin((d2 / 3.0d) * PI) * 40.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d2 / 12.0d) * PI) * 160.0d) + (Math.sin((d2 * PI) / 30.0d) * 320.0d)) * 2.0d) / 3.0d);
    }

    private static double transformLon(double d, double d2) {
        double d3 = d * 0.1d;
        return d + 300.0d + (d2 * 2.0d) + (d3 * d) + (d3 * d2) + (Math.sqrt(Math.abs(d)) * 0.1d) + ((((Math.sin((6.0d * d) * PI) * 20.0d) + (Math.sin((d * 2.0d) * PI) * 20.0d)) * 2.0d) / 3.0d) + ((((Math.sin(PI * d) * 20.0d) + (Math.sin((d / 3.0d) * PI) * 40.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d / 12.0d) * PI) * 150.0d) + (Math.sin((d / 30.0d) * PI) * 300.0d)) * 2.0d) / 3.0d);
    }
}
