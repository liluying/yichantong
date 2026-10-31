package com.qh.libexcavator;

import com.qh.libexcavator.nativelib.LibExcavator;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class GeoQuaternion {
    public double w;
    public double x;
    public double y;
    public double z;

    private GeoQuaternion(double d, double d2, double d3, double d4) {
        this.w = d;
        this.x = d2;
        this.y = d3;
        this.z = d4;
    }

    public static GeoQuaternion fromAngleZyx(double d, double d2, double d3) {
        double d4 = d3 * 0.008726646259971648d;
        double dSin = Math.sin(d4);
        double dCos = Math.cos(d4);
        double d5 = d2 * 0.008726646259971648d;
        double dSin2 = Math.sin(d5);
        double dCos2 = Math.cos(d5);
        double d6 = 0.008726646259971648d * d;
        double dSin3 = Math.sin(d6);
        double dCos3 = Math.cos(d6);
        double d7 = dCos3 * dCos2;
        double d8 = dSin3 * dSin2;
        double d9 = dSin3 * dCos2;
        double d10 = dCos3 * dSin2;
        GeoQuaternion geoQuaternion = new GeoQuaternion((d7 * dCos) + (d8 * dSin), (d9 * dCos) - (d10 * dSin), (d10 * dCos) + (d9 * dSin), (d7 * dSin) - (d8 * dCos));
        geoQuaternion.checkW();
        return geoQuaternion;
    }

    public void checkW() {
        double d = this.w;
        if (d < 0.0d) {
            this.w = -d;
            this.x = -this.x;
            this.y = -this.y;
            this.z = -this.z;
        }
    }

    public void writeXyzTo(LibExcavator.Point point) {
        point.x = this.x;
        point.y = this.y;
        point.z = this.z;
    }

    public static void fillPointFromAngleZyx(LibExcavator.Point point, double d, double d2, double d3) {
        fromAngleZyx(d, d2, d3).writeXyzTo(point);
    }

    public String toString() {
        return "q(w=" + this.w + ", x=" + this.x + ", y=" + this.y + ", z=" + this.z + ")";
    }
}
