package com.qianhe.baselib.utils.workchecker;

import com.qianhe.baselib.bean.PositionResult;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class DitchPositionChecker extends BaseChecker {
    public static double calcSlopeFromBottomWidth(double d, double d2, double d3) {
        if (d <= 0.0d) {
            return 0.0d;
        }
        double d4 = d2 - d3;
        if (d4 > 0.0d) {
            return d / d4;
        }
        return 0.0d;
    }

    private static double resolveSlopeFaceRatio(double d, double d2, double d3, double d4, boolean z, double d5, boolean z2) {
        if (z || z2) {
            double d6 = d - d4;
            if (d6 > 0.0d) {
                if (z2) {
                    d2 = d3;
                }
                if (d2 > 0.0d) {
                    return d2 / d6;
                }
                if (d5 <= 0.0d) {
                    return 0.0d;
                }
            } else if (d5 <= 0.0d) {
                return 0.0d;
            }
        }
        return d5;
    }

    private static double targetElevOnSlopeSide(double d, double d2, double d3, double d4) {
        return (d2 > d3 && d4 > 0.0d) ? d + ((d2 - d3) * d4) : d;
    }

    public static double calcBottomWidthFromSlope(double d, double d2, double d3) {
        return calcBottomHalfWidthFromSlope(d2, d, d3);
    }

    public static int calculateFlatBottomDitchFillCut(float f, double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4, double d, double d2, double d3, boolean z, double d4, double d5, double d6, double d7) {
        return (int) Math.round((dArr3[2] - resolveFlatBottomSlopeTargetElev(interpolateElevOnLine(dArr, dArr2, dArr3), CoordsCalculUtils.signedDistancePointToLine(dArr, dArr2, dArr3), f, d3 / 2.0d, d, d2, z, d6, d7, d4, d5, dArr, dArr2)) * 100.0d);
    }

    private static double interpolateElevOnLine(double[] dArr, double[] dArr2, double[] dArr3) {
        double dProjectParamOnLine = CoordsCalculUtils.projectParamOnLine(dArr, dArr2, dArr3);
        double d = dArr[2];
        return d + ((dArr2[2] - d) * dProjectParamOnLine);
    }

    private static double resolveFlatBottomSlopeTargetElev(double d, double d2, float f, double d3, double d4, double d5, boolean z, double d6, double d7, double d8, double d9, double[] dArr, double[] dArr2) {
        boolean zHasLongitudinalSlope = hasLongitudinalSlope(dArr, dArr2);
        if (Math.abs(d2) <= f) {
            return d;
        }
        if (d2 > 0.0d) {
            double dResolveEffectiveFlatBottomWidth = resolveEffectiveFlatBottomWidth(d3, d4, d5, z, d6, d8, zHasLongitudinalSlope);
            return targetElevOnSlopeSide(d, d2, dResolveEffectiveFlatBottomWidth, resolveSlopeFaceRatio(d3, d4, d5, dResolveEffectiveFlatBottomWidth, z, d8, zHasLongitudinalSlope));
        }
        double dResolveEffectiveFlatBottomWidth2 = resolveEffectiveFlatBottomWidth(d3, d4, d5, z, d7, d9, zHasLongitudinalSlope);
        return targetElevOnSlopeSide(d, -d2, dResolveEffectiveFlatBottomWidth2, resolveSlopeFaceRatio(d3, d4, d5, dResolveEffectiveFlatBottomWidth2, z, d9, zHasLongitudinalSlope));
    }

    private static double resolveEffectiveFlatBottomWidth(double d, double d2, double d3, boolean z, double d4, double d5, boolean z2) {
        if (z) {
            return Math.max(d4, 0.0d);
        }
        if (z2) {
            return calcBottomHalfWidthFromSlope(d, d3, d5);
        }
        return calcBottomHalfWidthFromSlope(d, d2, d5);
    }

    private static boolean hasLongitudinalSlope(double[] dArr, double[] dArr2) {
        return Math.abs(dArr[2] - dArr2[2]) > 1.0E-6d;
    }

    private static double calcBottomHalfWidthFromSlope(double d, double d2, double d3) {
        return (d3 > 0.0d && d2 > 0.0d) ? Math.max(d - (d2 / d3), 0.0d) : d;
    }

    public static PositionResult calculatePosition(float f, double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4) {
        boolean zIsVectorLeft = BaseChecker.isVectorLeft(dArr3, dArr, dArr2);
        double dDistancePointToLine = CoordsCalculUtils.distancePointToLine(dArr, dArr2, dArr3);
        boolean zIsVectorLeft2 = BaseChecker.isVectorLeft(dArr4, dArr, dArr2);
        double dDistancePointToLine2 = CoordsCalculUtils.distancePointToLine(dArr, dArr2, dArr4);
        PositionResult positionResult = new PositionResult();
        if (!Double.isNaN(dDistancePointToLine)) {
            positionResult.distance = new BigDecimal(dDistancePointToLine).setScale(2, RoundingMode.HALF_UP).doubleValue() * 100.0d;
        } else {
            positionResult.distance = 0.0d;
        }
        if (!Double.isNaN(dDistancePointToLine2)) {
            positionResult.distanceM = new BigDecimal(dDistancePointToLine2).setScale(2, RoundingMode.HALF_UP).doubleValue() * 100.0d;
        } else {
            positionResult.distanceM = 0.0d;
        }
        double d = f * 100.0f;
        if (Math.abs(positionResult.distance) <= d) {
            positionResult.position = 0;
        } else if (zIsVectorLeft) {
            positionResult.position = 1;
        } else {
            positionResult.position = -1;
        }
        if (Math.abs(positionResult.distanceM) <= d) {
            positionResult.positionM = 0;
            return positionResult;
        }
        if (zIsVectorLeft2) {
            positionResult.positionM = 1;
            return positionResult;
        }
        positionResult.positionM = -1;
        return positionResult;
    }

    public static double compareElevation(double d, double d2) {
        return BigDecimal.valueOf(d2).subtract(BigDecimal.valueOf(d)).setScale(2, RoundingMode.HALF_UP).doubleValue();
    }

    public static double[][] getDitchFence(double[] dArr, double[] dArr2, double d) {
        double d2 = dArr2[0] - dArr[0];
        double d3 = dArr2[1] - dArr[1];
        double dSqrt = Math.sqrt((d2 * d2) + (d3 * d3));
        double d4 = (-d3) / dSqrt;
        double d5 = d2 / dSqrt;
        double d6 = dArr[0];
        double d7 = d4 * d;
        double d8 = dArr[1];
        double d9 = d5 * d;
        double d10 = dArr[2];
        double d11 = dArr2[0];
        double d12 = dArr2[1];
        double d13 = dArr2[2];
        return new double[][]{new double[]{d6 + d7, d8 + d9, d10}, new double[]{d11 + d7, d12 + d9, d13}, new double[]{d11 - d7, d12 - d9, d13}, new double[]{d6 - d7, d8 - d9, d10}};
    }

    public static List<double[][]> generateParallelLines(double[] dArr, double[] dArr2, double d, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        char c = 0;
        double d2 = dArr[0] - dArr2[0];
        char c2 = 1;
        double d3 = dArr[1] - dArr2[1];
        double dSqrt = Math.sqrt((d2 * d2) + (d3 * d3));
        if (dSqrt != 0.0d) {
            double d4 = (-d3) / dSqrt;
            double d5 = d2 / dSqrt;
            int i3 = 1;
            while (i3 <= i) {
                double d6 = (-d) * i3;
                double d7 = d4 * d6;
                double d8 = d6 * d5;
                arrayList.add(new double[][]{new double[]{dArr[c] + d7, dArr[1] + d8}, new double[]{dArr2[0] + d7, dArr2[1] + d8}});
                i3++;
                c = 0;
            }
            arrayList.add(new double[][]{dArr, dArr2});
            int i4 = 1;
            while (i4 <= i2) {
                double d9 = i4 * d;
                double d10 = d4 * d9;
                double d11 = d9 * d5;
                arrayList.add(new double[][]{new double[]{dArr[0] + d10, dArr[c2] + d11}, new double[]{dArr2[0] + d10, dArr2[1] + d11}});
                i4++;
                c2 = 1;
            }
        }
        return arrayList;
    }
}
