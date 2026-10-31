package com.qianhe.yct.view.map;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GeoPoint {
    public double alt;
    public double lat;
    public double lng;

    public GeoPoint(double d, double d2) {
        this.lat = d;
        this.lng = d2;
    }

    public GeoPoint(double d, double d2, double d3) {
        this.lat = d;
        this.lng = d2;
        this.alt = d3;
    }

    public GeoPoint() {
    }

    public String toString() {
        return "GeoPoint{lat=" + this.lat + ", lng=" + this.lng + ", alt=" + this.alt + '}';
    }
}
