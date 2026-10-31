package com.qianhe.baselib.bean;

import java.io.Serializable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShovelMeasureParams implements Serializable {
    public double AB;
    public double AT;
    public double G1;
    public double G2;
    public double G3;
    public double LR;
    public double Ly;
    public double NA;
    public double NT;
    public double Ry;

    public boolean isEmpty() {
        return this.G1 == 0.0d && this.G2 == 0.0d && this.G3 == 0.0d && this.Ly == 0.0d && this.Ry == 0.0d && this.AB == 0.0d && this.NT == 0.0d && this.AT == 0.0d && this.NA == 0.0d && this.LR == 0.0d;
    }

    public boolean usesDistanceMeasure() {
        return (this.NT == 0.0d && this.AT == 0.0d && this.NA == 0.0d) ? false : true;
    }

    public double resolveLR() {
        double d = this.LR;
        if (d != 0.0d) {
            return d;
        }
        double d2 = this.Ly;
        if (d2 == 0.0d && this.Ry == 0.0d) {
            return 0.0d;
        }
        double d3 = this.Ry;
        if (d3 == 0.0d) {
            d3 = d2;
        }
        return d3 + d2;
    }

    public void syncLRWithHalfWidths() {
        double d = this.LR;
        if (d != 0.0d && this.Ly == 0.0d && this.Ry == 0.0d) {
            double d2 = d / 2.0d;
            this.Ry = d2;
            this.Ly = d2;
            return;
        }
        if (d == 0.0d) {
            double d3 = this.Ly;
            if (d3 != 0.0d || this.Ry != 0.0d) {
                double d4 = this.Ry;
                if (d4 == 0.0d) {
                    d4 = d3;
                }
                this.LR = d3 + d4;
                return;
            }
        }
        if (d == 0.0d || this.Ly != 0.0d) {
            return;
        }
        double d5 = d / 2.0d;
        this.Ry = d5;
        this.Ly = d5;
    }
}
