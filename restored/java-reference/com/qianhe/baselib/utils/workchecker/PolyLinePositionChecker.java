package com.qianhe.baselib.utils.workchecker;

import com.qianhe.baselib.bean.CheckResult;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class PolyLinePositionChecker extends BaseChecker {
    public static int findNearestSegmentIndex(double[] dArr, List<double[]> list) {
        int i = -1;
        if (list != null && list.size() >= 2 && dArr != null) {
            double d = Double.MAX_VALUE;
            int i2 = 0;
            while (i2 < list.size() - 1) {
                int i3 = i2 + 1;
                double dDistancePointToSegment = CoordsCalculUtils.distancePointToSegment(list.get(i2), list.get(i3), dArr);
                if (dDistancePointToSegment < d) {
                    i = i2;
                    d = dDistancePointToSegment;
                }
                i2 = i3;
            }
        }
        return i;
    }

    public static CheckResult checkSegmentSlopeVertical(float f, double[] dArr, List<double[]> list, int i, double d) {
        CheckResult checkResult = new CheckResult();
        if (dArr == null || list == null || i < 0 || i >= list.size() - 1) {
            return checkResult;
        }
        double[] dArr2 = list.get(i);
        double[] dArr3 = list.get(i + 1);
        double[] dArrConvertGAUSSXYToGeodetic = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(dArr2);
        double[] dArrConvertGAUSSXYToGeodetic2 = GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(dArr3);
        double dCalculateDistanceGAUSS = CoordsCalculUtils.calculateDistanceGAUSS(dArr2, dArr3);
        double degrees = dCalculateDistanceGAUSS > 0.0d ? Math.toDegrees(Math.atan2(Math.abs(dArr2[2] - dArr3[2]), dCalculateDistanceGAUSS)) : 0.0d;
        double d2 = dArr2[2];
        dArrConvertGAUSSXYToGeodetic[2] = d2;
        double d3 = dArr3[2];
        dArrConvertGAUSSXYToGeodetic2[2] = d3;
        if (d2 >= d3) {
            return SlopePositionChecker.checkPositionGeodetic(f, degrees, dArr, dArrConvertGAUSSXYToGeodetic, GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(DitchPositionChecker.getDitchFence(new double[]{dArr2[0], dArr2[1], d2}, new double[]{dArr3[0], dArr3[1], d3}, d / 2.0d)[0]), dArrConvertGAUSSXYToGeodetic2);
        }
        return SlopePositionChecker.checkPositionGeodetic(f, degrees, dArr, dArrConvertGAUSSXYToGeodetic2, GnssCoordConvertManager.getInstance().convertGAUSSXYToGeodetic(DitchPositionChecker.getDitchFence(new double[]{dArr3[0], dArr3[1], d3}, new double[]{dArr2[0], dArr2[1], d2}, d / 2.0d)[0]), dArrConvertGAUSSXYToGeodetic);
    }

    public static void checkPolyLineHorizontal(CheckResult checkResult, double[] dArr, List<double[]> list, double d, double d2, boolean z) {
        double[] dArr2;
        if (list == null || list.size() < 2) {
            return;
        }
        double d3 = Double.MAX_VALUE;
        int i = -1;
        int i2 = 0;
        boolean zIsVectorLeft = false;
        boolean z2 = false;
        while (i2 < list.size() - 1) {
            double[] dArr3 = list.get(i2);
            int i3 = i2 + 1;
            double[] dArr4 = list.get(i3);
            double dDistancePointToSegment = CoordsCalculUtils.distancePointToSegment(dArr3, dArr4, dArr);
            if (dDistancePointToSegment < d3) {
                z2 = Math.abs(CoordsCalculUtils.distancePointToLine(dArr3, dArr4, dArr) - dDistancePointToSegment) < 0.001d;
                if (z) {
                    zIsVectorLeft = BaseChecker.isVectorLeft(dArr, dArr3, dArr4);
                } else {
                    zIsVectorLeft = BaseChecker.isVectorLeft(dArr, dArr4, dArr3);
                }
                i = i2;
                d3 = dDistancePointToSegment;
            }
            i2 = i3;
        }
        checkResult.distanceH = 100.0d * d3;
        checkResult.isLeft = zIsVectorLeft;
        double d4 = d / 2.0d;
        if (z2) {
            checkResult.inBounds = d3 <= d4 + d2;
            return;
        }
        if (i >= 0) {
            dArr2 = list.get(i);
            double[] dArr5 = list.get(i + 1);
            if (CoordsCalculUtils.calculateDistanceGAUSS(dArr, dArr2) >= CoordsCalculUtils.calculateDistanceGAUSS(dArr, dArr5)) {
                dArr2 = dArr5;
            }
        } else {
            dArr2 = null;
        }
        if (dArr2 != null && isEndpointJoint(dArr2, list)) {
            checkResult.inBounds = d3 <= d4 + d2;
        } else {
            checkResult.inBounds = d3 <= d2;
        }
    }

    private static boolean isEndpointJoint(double[] dArr, List<double[]> list) {
        if (list.size() >= 3 && dArr != null) {
            double[] dArr2 = list.get(0);
            double[] dArr3 = list.get(list.size() - 1);
            boolean zIsSamePoint = isSamePoint(dArr, dArr2);
            boolean zIsSamePoint2 = isSamePoint(dArr, dArr3);
            if (!zIsSamePoint && !zIsSamePoint2) {
                return true;
            }
        }
        return false;
    }

    private static boolean isSamePoint(double[] dArr, double[] dArr2) {
        return dArr != null && dArr2 != null && dArr.length >= 2 && dArr2.length >= 2 && Math.abs(dArr[0] - dArr2[0]) < 1.0E-6d && Math.abs(dArr[1] - dArr2[1]) < 1.0E-6d;
    }
}
