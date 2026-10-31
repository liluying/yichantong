package com.qianhe.baselib.bean;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SAVEntity {
    public int PRN;
    public int starId;
    public int type = 0;
    public int elevationAngle = 0;
    public int azimuthAngle = 0;
    public int noiseRatio = 0;

    public String toString() {
        return "SAVEntity{typ=" + this.type + ", PRN=" + this.PRN + ", starId=" + this.starId + ", elevationAngle=" + this.elevationAngle + ", azimuthAngle=" + this.azimuthAngle + ", noiseRatio=" + this.noiseRatio + '}';
    }
}
