package com.qianhe.yct.utils;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class MacaoBoundary {
    private static final int[] RING_OFFSET = {0};
    private static final int[] RING_COUNT = {30};
    private static final double[] LNG = {113.553916d, 113.553389d, 113.559643d, 113.576328d, 113.597564d, 113.603681d, 113.593091d, 113.586631d, 113.582019d, 113.575698d, 113.573697d, 113.567629d, 113.55711d, 113.550576d, 113.543261d, 113.539782d, 113.53954d, 113.534366d, 113.533314d, 113.535723d, 113.540985d, 113.544638d, 113.549079d, 113.554638d, 113.553916d, 113.586501d, 113.576151d, 113.576045d, 113.583971d, 113.586501d};
    private static final double[] LAT = {22.125215d, 22.112664d, 22.106216d, 22.108147d, 22.125115d, 22.132371d, 22.162285d, 22.174165d, 22.182646d, 22.194265d, 22.205587d, 22.209102d, 22.213036d, 22.213861d, 22.210709d, 22.204445d, 22.194664d, 22.185627d, 22.179271d, 22.172545d, 22.161571d, 22.154083d, 22.149234d, 22.142429d, 22.125215d, 22.201059d, 22.201038d, 22.194495d, 22.193289d, 22.201059d};

    public static boolean isInBoundingBox(double d, double d2) {
        return d >= 22.106216d && d <= 22.213861d && d2 >= 113.533314d && d2 <= 113.603681d;
    }

    public static boolean contains(double d, double d2) {
        return isInBoundingBox(d2, d) && containsRing(0, d, d2);
    }

    private static boolean containsRing(int i, double d, double d2) {
        int i2 = RING_OFFSET[i];
        int i3 = RING_COUNT[i];
        int i4 = i3 - 1;
        boolean z = false;
        for (int i5 = 0; i5 < i3; i5++) {
            double[] dArr = LAT;
            int i6 = i2 + i5;
            double d3 = dArr[i6];
            int i7 = i4 + i2;
            double d4 = dArr[i7];
            if ((d3 > d2) != (d4 > d2)) {
                double[] dArr2 = LNG;
                double d5 = dArr2[i6];
                if (d < (((dArr2[i7] - d5) * (d2 - d3)) / (d4 - d3)) + d5) {
                    z = !z;
                }
            }
            i4 = i5;
        }
        return z;
    }
}
