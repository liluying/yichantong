package com.qianhe.baselib.bean;

import java.io.Serializable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShovelAutoGenerateParams implements Serializable {
    public double AB;
    public double T0x;
    public double T0y;
    public double T0z;
    public double T1x;
    public double T1y;
    public double T1z;
    public double T2x;
    public double T2y;
    public double T2z;
    public double T3x;
    public double T3y;
    public double T3z;
    public Boolean useDistanceMeasure;

    public boolean isEmpty() {
        return this.AB == 0.0d && this.T0x == 0.0d && this.T0y == 0.0d && this.T0z == 0.0d && this.T1x == 0.0d && this.T1y == 0.0d && this.T1z == 0.0d && this.T2x == 0.0d && this.T2y == 0.0d && this.T2z == 0.0d && this.T3x == 0.0d && this.T3y == 0.0d && this.T3z == 0.0d;
    }

    public static ShovelAutoGenerateParams fromClearParameters(String str) {
        ShovelAutoGenerateParams shovelAutoGenerateParams = new ShovelAutoGenerateParams();
        if (str != null && !str.isEmpty()) {
            String[] strArrSplit = str.split(",", -1);
            if (strArrSplit.length > 0) {
                shovelAutoGenerateParams.AB = parseDouble(strArrSplit[0]);
            }
            if (strArrSplit.length > 1) {
                shovelAutoGenerateParams.T0x = parseDouble(strArrSplit[1]);
            }
            if (strArrSplit.length > 2) {
                shovelAutoGenerateParams.T0y = parseDouble(strArrSplit[2]);
            }
            if (strArrSplit.length > 3) {
                shovelAutoGenerateParams.T0z = parseDouble(strArrSplit[3]);
            }
            if (strArrSplit.length > 4) {
                shovelAutoGenerateParams.T1x = parseDouble(strArrSplit[4]);
            }
            if (strArrSplit.length > 5) {
                shovelAutoGenerateParams.T1y = parseDouble(strArrSplit[5]);
            }
            if (strArrSplit.length > 6) {
                shovelAutoGenerateParams.T1z = parseDouble(strArrSplit[6]);
            }
            if (strArrSplit.length > 7) {
                shovelAutoGenerateParams.T2x = parseDouble(strArrSplit[7]);
            }
            if (strArrSplit.length > 8) {
                shovelAutoGenerateParams.T2y = parseDouble(strArrSplit[8]);
            }
            if (strArrSplit.length > 9) {
                shovelAutoGenerateParams.T2z = parseDouble(strArrSplit[9]);
            }
            if (strArrSplit.length > 10) {
                shovelAutoGenerateParams.T3x = parseDouble(strArrSplit[10]);
            }
            if (strArrSplit.length > 11) {
                shovelAutoGenerateParams.T3y = parseDouble(strArrSplit[11]);
            }
            if (strArrSplit.length > 12) {
                shovelAutoGenerateParams.T3z = parseDouble(strArrSplit[12]);
            }
        }
        return shovelAutoGenerateParams;
    }

    private static double parseDouble(String str) {
        try {
            return Double.parseDouble(str.trim());
        } catch (Exception unused) {
            return 0.0d;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.qianhe.baselib.bean.ShovelMeasureParams toMeasureParams(com.qianhe.baselib.bean.ShovelMeasureParams r8) {
        /*
            r7 = this;
            com.qianhe.baselib.bean.ShovelMeasureParams r0 = new com.qianhe.baselib.bean.ShovelMeasureParams
            r0.<init>()
            double r1 = r7.AB
            r0.AB = r1
            double r1 = r7.T0y
            double r3 = -r1
            r0.Ly = r3
            double r1 = -r1
            r0.Ry = r1
            r1 = 4586646004499207946(0x3fa70a3d70a3d70a, double:0.045)
            if (r8 == 0) goto L21
            double r3 = r8.G2
            r5 = 0
            int r8 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r8 == 0) goto L21
            goto L24
        L21:
            double r3 = r7.T0z
            double r3 = r3 + r1
        L24:
            double r3 = round3(r3)
            r0.G2 = r3
            double r5 = r7.T0z
            double r3 = r3 - r5
            double r3 = r3 - r1
            double r1 = round3(r3)
            r0.G3 = r1
            double r1 = r0.G2
            double r3 = r7.T0x
            double r1 = r1 - r3
            r3 = 4588087156379966505(0x3fac28f5c28f5c29, double:0.055)
            double r1 = r1 - r3
            double r1 = round3(r1)
            r0.G1 = r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.baselib.bean.ShovelAutoGenerateParams.toMeasureParams(com.qianhe.baselib.bean.ShovelMeasureParams):com.qianhe.baselib.bean.ShovelMeasureParams");
    }

    private static double round3(double d) {
        return Math.round(d * 1000.0d) / 1000.0d;
    }
}
