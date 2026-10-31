package com.qianhe.baselib.bean;

import java.io.Serializable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorParams implements Serializable {
    public double AD;
    public double Ax;
    public double Ay;
    public double BC;
    public double BD;
    public double CD;
    public double Dx;
    public double HA;
    public double pq;

    public boolean isEmpty() {
        return this.HA == 0.0d && this.pq == 0.0d && this.Ay == 0.0d && this.Ax == 0.0d && this.Dx == 0.0d && this.AD == 0.0d && this.BC == 0.0d && this.CD == 0.0d && this.BD == 0.0d;
    }
}
