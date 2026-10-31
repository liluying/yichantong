package com.qianhe.rtkclientlib.event;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SensorInfoEvent {
    public double headingAngle;
    public double pitchAngle;
    public int powerLevel;
    public double rollAngle;

    public SensorInfoEvent(int i, double d, double d2, double d3) {
        this.powerLevel = i;
        this.rollAngle = d;
        this.pitchAngle = d2;
        this.headingAngle = d3;
    }
}
