package com.qianhe.baselib.utils.workchecker;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class OnePointPlaneChecker {
    private double A;
    private double B;
    private double C;
    private double D;
    private double meterPerLat;
    private double meterPerLon;
    private double refAlt;
    private double refLat;
    private double refLon;

    public void calculatePlane(double d, double d2, double d3, double d4, double d5) {
        this.refLon = d;
        this.refLat = d2;
        this.refAlt = d3;
        double radians = Math.toRadians(d2);
        this.meterPerLat = 111319.5d;
        this.meterPerLon = Math.cos(radians) * 111319.5d;
        this.A = d4;
        this.B = d5;
        this.C = -1.0d;
        this.D = d3;
        System.out.println("平面方程为: " + this.A + "x + " + this.B + "y + " + this.C + "z + " + this.D + " = 0");
    }

    public double calculateSignedDistance(double[] dArr) {
        return Math.round((dArr[2] - (((this.A * ((dArr[0] - this.refLon) * this.meterPerLon)) + (this.B * ((dArr[1] - this.refLat) * this.meterPerLat))) + this.D)) * 100.0d);
    }

    public double[] calculateSlopes(double[] dArr, double[] dArr2) {
        double d = dArr2[0] - dArr[0];
        double d2 = dArr2[1] - dArr[1];
        double d3 = dArr2[2] - dArr[2];
        return new double[]{Math.round((Math.abs(d) > 0.001d ? (d3 / d) * 100.0d : 0.0d) * 1000.0d) / 1000.0d, Math.round((Math.abs(d2) > 0.001d ? (d3 / d2) * 100.0d : 0.0d) * 1000.0d) / 1000.0d};
    }
}
