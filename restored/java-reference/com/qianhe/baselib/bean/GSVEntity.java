package com.qianhe.baselib.bean;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GSVEntity {
    public int starId;
    public int type = 0;
    public int msgTotalCount = 0;
    public int msgNum = 0;
    public int visibleSatellitesCount = 0;
    public int elevationAngle = 0;
    public int azimuthAngle = 0;
    public int noiseRatio = 0;

    public String toString() {
        return "GSVEntity{typ=" + this.type + ", msgTotalCount=" + this.msgTotalCount + ", msgNum=" + this.msgNum + ", visibleSatellitesCount=" + this.visibleSatellitesCount + ", starId=" + this.starId + ", elevationAngle=" + this.elevationAngle + ", azimuthAngle=" + this.azimuthAngle + ", noiseRatio=" + this.noiseRatio + '}';
    }
}
