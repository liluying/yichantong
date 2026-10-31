package com.qianhe.yct.activity.multipointarea;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class MultiPointAreaChecker {
    private static double crossProduct(double d, double d2, double d3, double d4, double d5, double d6) {
        return ((d - d3) * (d6 - d4)) - ((d2 - d4) * (d5 - d3));
    }

    public static double calculateVerticalDiff(float f, double[] dArr, List<double[]> list) {
        double dCalculateZOnPlane;
        if (list == null || list.size() < 3) {
            return 0.0d;
        }
        int i = 0;
        double d = dArr[0];
        double d2 = dArr[1];
        double d3 = dArr[2];
        double[] dArr2 = list.get(0);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 1; i2 < list.size(); i2++) {
            arrayList.add((double[]) list.get(i2).clone());
        }
        if (arrayList.size() > 2) {
            sortPointsByPolarAngle(arrayList);
        }
        int size = arrayList.size();
        double d4 = Double.MAX_VALUE;
        int i3 = 0;
        while (i < size) {
            double[] dArr3 = (double[]) arrayList.get(i);
            int i4 = i + 1;
            double[] dArr4 = (double[]) arrayList.get(i4 % size);
            if (size == 2 && i == 1) {
                break;
            }
            if (isPointInTriangle(d, d2, dArr2, dArr3, dArr4)) {
                dCalculateZOnPlane = calculateZOnPlane(d, d2, dArr2, dArr3, dArr4);
                break;
            }
            double pointToTriangleDistance = getPointToTriangleDistance(d, d2, dArr2, dArr3, dArr4);
            if (pointToTriangleDistance < d4) {
                i3 = i;
                d4 = pointToTriangleDistance;
            }
            i = i4;
        }
        dCalculateZOnPlane = calculateZOnPlane(d, d2, dArr2, (double[]) arrayList.get(i3), (double[]) arrayList.get((i3 + 1) % size));
        return d3 - dCalculateZOnPlane;
    }

    private static void sortPointsByPolarAngle(List<double[]> list) {
        double d = 0.0d;
        double d2 = 0.0d;
        for (double[] dArr : list) {
            d += dArr[0];
            d2 += dArr[1];
        }
        final double size = d / list.size();
        final double size2 = d2 / list.size();
        Collections.sort(list, new Comparator<double[]>() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaChecker.1
            @Override // java.util.Comparator
            public int compare(double[] dArr2, double[] dArr3) {
                return Double.compare(Math.atan2(dArr2[1] - size2, dArr2[0] - size), Math.atan2(dArr3[1] - size2, dArr3[0] - size));
            }
        });
    }

    private static boolean isPointInTriangle(double d, double d2, double[] dArr, double[] dArr2, double[] dArr3) {
        double dCrossProduct = crossProduct(d, d2, dArr[0], dArr[1], dArr2[0], dArr2[1]);
        double dCrossProduct2 = crossProduct(d, d2, dArr2[0], dArr2[1], dArr3[0], dArr3[1]);
        double dCrossProduct3 = crossProduct(d, d2, dArr3[0], dArr3[1], dArr[0], dArr[1]);
        return (((dCrossProduct > (-1.0E-6d) ? 1 : (dCrossProduct == (-1.0E-6d) ? 0 : -1)) < 0 || (dCrossProduct2 > (-1.0E-6d) ? 1 : (dCrossProduct2 == (-1.0E-6d) ? 0 : -1)) < 0 || (dCrossProduct3 > (-1.0E-6d) ? 1 : (dCrossProduct3 == (-1.0E-6d) ? 0 : -1)) < 0) && ((dCrossProduct > 1.0E-6d ? 1 : (dCrossProduct == 1.0E-6d ? 0 : -1)) > 0 || (dCrossProduct2 > 1.0E-6d ? 1 : (dCrossProduct2 == 1.0E-6d ? 0 : -1)) > 0 || (dCrossProduct3 > 1.0E-6d ? 1 : (dCrossProduct3 == 1.0E-6d ? 0 : -1)) > 0)) ? false : true;
    }

    private static double calculateZOnPlane(double d, double d2, double[] dArr, double[] dArr2, double[] dArr3) {
        double d3 = dArr2[0];
        double d4 = dArr[0];
        double d5 = d3 - d4;
        double d6 = dArr2[1];
        double d7 = dArr[1];
        double d8 = d6 - d7;
        double d9 = dArr2[2];
        double d10 = dArr[2];
        double d11 = d9 - d10;
        double d12 = dArr3[0] - d4;
        double d13 = dArr3[1] - d7;
        double d14 = dArr3[2] - d10;
        double d15 = (d8 * d14) - (d11 * d13);
        double d16 = (d11 * d12) - (d14 * d5);
        double d17 = (d5 * d13) - (d8 * d12);
        return Math.abs(d17) < 1.0E-10d ? dArr[2] : dArr[2] - (((d15 * (d - dArr[0])) + (d16 * (d2 - dArr[1]))) / d17);
    }

    private static double getPointToTriangleDistance(double d, double d2, double[] dArr, double[] dArr2, double[] dArr3) {
        return Math.min(getPointToSegmentDistance(d, d2, dArr[0], dArr[1], dArr2[0], dArr2[1]), Math.min(getPointToSegmentDistance(d, d2, dArr2[0], dArr2[1], dArr3[0], dArr3[1]), getPointToSegmentDistance(d, d2, dArr3[0], dArr3[1], dArr[0], dArr[1])));
    }

    private static double getPointToSegmentDistance(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d5 - d3;
        double d8 = d6 - d4;
        if (d7 == 0.0d && d8 == 0.0d) {
            double d9 = d - d3;
            double d10 = d2 - d4;
            return Math.sqrt((d9 * d9) + (d10 * d10));
        }
        double d11 = d - d3;
        double d12 = d2 - d4;
        double d13 = ((d11 * d7) + (d12 * d8)) / ((d7 * d7) + (d8 * d8));
        if (d13 < 0.0d) {
            return Math.sqrt((d11 * d11) + (d12 * d12));
        }
        if (d13 > 1.0d) {
            double d14 = d - d5;
            double d15 = d2 - d6;
            return Math.sqrt((d14 * d14) + (d15 * d15));
        }
        double d16 = d - (d3 + (d7 * d13));
        double d17 = d2 - (d4 + (d13 * d8));
        return Math.sqrt((d16 * d16) + (d17 * d17));
    }
}
