package com.qianhe.baselib.utils.workchecker;

import com.qianhe.baselib.bean.CheckResult;
import com.qianhe.baselib.bean.ShuaPoEntity;
import com.qianhe.baselib.enums.ShuaPoEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.baselib.utils.TrianglefunctionUtils;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class SlopePositionChecker extends BaseChecker {
    public static CheckResult checkPositionGeodetic(float f, double d, double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4) {
        CheckResult checkResult = new CheckResult();
        double[] dArrCalculatePlaneEquation = calculatePlaneEquation(dArr2, dArr3, dArr4);
        double d2 = dArrCalculatePlaneEquation[0];
        double d3 = dArrCalculatePlaneEquation[1];
        double d4 = dArrCalculatePlaneEquation[2];
        double d5 = dArrCalculatePlaneEquation[3];
        double[] dArrConvertToEcef = GnssCoordConvertManager.getInstance().convertToEcef(dArr);
        double dSqrt = ((((dArrConvertToEcef[0] * d2) + (dArrConvertToEcef[1] * d3)) + (dArrConvertToEcef[2] * d4)) + d5) / Math.sqrt(((d2 * d2) + (d3 * d3)) + (d4 * d4));
        double dCalculateSlopeAngle = d == 0.0d ? calculateSlopeAngle(dArrCalculatePlaneEquation) : d;
        double dCalculateHypotenuse = calculateHypotenuse(dSqrt, dCalculateSlopeAngle) * 100.0d;
        if (Math.abs(dCalculateHypotenuse) <= 100.0f * f) {
            checkResult.position = 0;
        } else if (dCalculateHypotenuse > 0.0d) {
            checkResult.position = 1;
        } else {
            checkResult.position = -1;
        }
        checkResult.distanceV = dSqrt;
        double dCalculateHypotenuseByAngleAndOpposite = TrianglefunctionUtils.calculateHypotenuseByAngleAndOpposite(90.0d - dCalculateSlopeAngle, dSqrt);
        checkResult.distanceH = dCalculateHypotenuseByAngleAndOpposite;
        if (dCalculateHypotenuse < 0.0d) {
            checkResult.distanceH = -dCalculateHypotenuseByAngleAndOpposite;
        }
        checkResult.verticalDistance = dCalculateHypotenuse;
        return checkResult;
    }

    public static boolean isPointCOnSlope(ShuaPoEntity shuaPoEntity) {
        double dCalculateAbcRatioFromEntity = calculateAbcRatioFromEntity(shuaPoEntity);
        return dCalculateAbcRatioFromEntity <= 0.0d || Math.abs(shuaPoEntity.ratio - dCalculateAbcRatioFromEntity) < 0.01d;
    }

    public static double calculateAbcRatioFromEntity(ShuaPoEntity shuaPoEntity) {
        if ((shuaPoEntity.east1 == 0.0d && shuaPoEntity.north1 == 0.0d) || (shuaPoEntity.east3 == 0.0d && shuaPoEntity.north3 == 0.0d)) {
            return 0.0d;
        }
        double[] dArrCalculateHeightAndFlatFromAC = calculateHeightAndFlatFromAC(shuaPoEntity);
        double d = dArrCalculateHeightAndFlatFromAC[0];
        if (dArrCalculateHeightAndFlatFromAC[1] <= 0.0d || d <= 0.0d) {
            return 0.0d;
        }
        return Math.round((d / r4) * 10000.0d) / 100.0d;
    }

    public static double[] calculateHeightAndFlatFromAC(ShuaPoEntity shuaPoEntity) {
        double d;
        double dResolvePointAElevation = resolvePointAElevation(shuaPoEntity);
        double dCalculateDistanceGAUSS = CoordsCalculUtils.calculateDistanceGAUSS(new double[]{shuaPoEntity.east1, shuaPoEntity.north1}, new double[]{shuaPoEntity.east3, shuaPoEntity.north3});
        if (shuaPoEntity.subType == ShuaPoEnum.UP.getType()) {
            d = shuaPoEntity.targetElevation3 - dResolvePointAElevation;
        } else {
            d = dResolvePointAElevation - shuaPoEntity.targetElevation3;
        }
        return new double[]{Math.max(0.0d, d), dCalculateDistanceGAUSS};
    }

    public static void applySlopeParamsFromAC(ShuaPoEntity shuaPoEntity) {
        double[] dArrCalculateHeightAndFlatFromAC = calculateHeightAndFlatFromAC(shuaPoEntity);
        double d = dArrCalculateHeightAndFlatFromAC[0];
        shuaPoEntity.heigth = d;
        double d2 = dArrCalculateHeightAndFlatFromAC[1];
        shuaPoEntity.flatDistance = d2;
        if (d2 > 0.0d && d > 0.0d) {
            shuaPoEntity.ratio = Math.round((d / d2) * 10000.0d) / 100.0d;
        } else {
            shuaPoEntity.ratio = 0.0d;
        }
    }

    private static double resolvePointAElevation(ShuaPoEntity shuaPoEntity) {
        if (shuaPoEntity.tickA == 1) {
            return shuaPoEntity.targetElevation1;
        }
        if (shuaPoEntity.tickB == 1) {
            return shuaPoEntity.targetElevation2;
        }
        return shuaPoEntity.targetElevation1;
    }

    public static double[] resolveSlopeThirdPointGeodetic(double[] dArr, double[] dArr2, double[] dArr3, ShuaPoEntity shuaPoEntity) {
        if (!isPointCOnSlope(shuaPoEntity)) {
            double[] dArrCalculateSlopeThirdPointFromA = CoordsCalculUtils.calculateSlopeThirdPointFromA(new double[]{shuaPoEntity.east1, shuaPoEntity.north1, resolvePointAElevation(shuaPoEntity)}, new double[]{shuaPoEntity.east3, shuaPoEntity.north3, shuaPoEntity.targetElevation3}, shuaPoEntity.heigth, shuaPoEntity.flatDistance, shuaPoEntity.subType == ShuaPoEnum.UP.getType());
            double[] dArr4 = new double[3];
            if (GnssCoordConvertManager.getInstance().projToGeodeticInverse(dArrCalculateSlopeThirdPointFromA[0], dArrCalculateSlopeThirdPointFromA[1], dArrCalculateSlopeThirdPointFromA[2], dArr4)) {
                return dArr4;
            }
        }
        return dArr3;
    }

    public static double[] calculateSlopeThirdPointEngineering(ShuaPoEntity shuaPoEntity) {
        return CoordsCalculUtils.calculateSlopeThirdPointFromA(new double[]{shuaPoEntity.east1, shuaPoEntity.north1, resolvePointAElevation(shuaPoEntity)}, new double[]{shuaPoEntity.east3, shuaPoEntity.north3, shuaPoEntity.targetElevation3}, shuaPoEntity.heigth, shuaPoEntity.flatDistance, shuaPoEntity.subType == ShuaPoEnum.UP.getType());
    }

    public static CheckResult checkPositionGeodetic(float f, double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4) {
        double[] dArrConvertToEcef = GnssCoordConvertManager.getInstance().convertToEcef(dArr);
        double[] dArrCalculatePlaneEquation = calculatePlaneEquation(dArr2, dArr3, dArr4);
        double d = dArrCalculatePlaneEquation[0];
        double d2 = dArrCalculatePlaneEquation[1];
        double d3 = dArrCalculatePlaneEquation[2];
        double dSqrt = ((((dArrConvertToEcef[0] * d) + (dArrConvertToEcef[1] * d2)) + (dArrConvertToEcef[2] * d3)) + dArrCalculatePlaneEquation[3]) / Math.sqrt(((d * d) + (d2 * d2)) + (d3 * d3));
        double dCalculateSlopeAngle = calculateSlopeAngle(dArrCalculatePlaneEquation);
        double dCalculateHypotenuse = calculateHypotenuse(dSqrt, dCalculateSlopeAngle) * 100.0d;
        CheckResult checkResult = new CheckResult();
        if (Math.abs(dCalculateHypotenuse) <= 100.0f * f) {
            checkResult.position = 0;
        } else if (dCalculateHypotenuse > 0.0d) {
            checkResult.position = 1;
        } else {
            checkResult.position = -1;
        }
        checkResult.distanceV = dSqrt;
        double dCalculateHypotenuseByAngleAndOpposite = TrianglefunctionUtils.calculateHypotenuseByAngleAndOpposite(90.0d - dCalculateSlopeAngle, dSqrt);
        checkResult.distanceH = dCalculateHypotenuseByAngleAndOpposite;
        if (dCalculateHypotenuse < 0.0d) {
            checkResult.distanceH = -dCalculateHypotenuseByAngleAndOpposite;
        }
        checkResult.verticalDistance = dCalculateHypotenuse;
        return checkResult;
    }

    public static double[] calculatePlaneEquation(double[] dArr, double[] dArr2, double[] dArr3) {
        double[] dArrConvertToEcef = GnssCoordConvertManager.getInstance().convertToEcef(dArr);
        double[] dArrConvertToEcef2 = GnssCoordConvertManager.getInstance().convertToEcef(dArr2);
        double[] dArrConvertToEcef3 = GnssCoordConvertManager.getInstance().convertToEcef(dArr3);
        if (BaseChecker.isVectorLeft(dArr, dArr2, dArr3)) {
            dArrConvertToEcef2 = dArrConvertToEcef;
            dArrConvertToEcef = dArrConvertToEcef2;
        }
        double d = dArrConvertToEcef[0];
        double d2 = dArrConvertToEcef2[0];
        double d3 = dArrConvertToEcef[1];
        double d4 = dArrConvertToEcef2[1];
        double d5 = dArrConvertToEcef[2];
        double d6 = dArrConvertToEcef2[2];
        double[] dArr4 = {d - d2, d3 - d4, d5 - d6};
        double[] dArr5 = {dArrConvertToEcef3[0] - d2, dArrConvertToEcef3[1] - d4, dArrConvertToEcef3[2] - d6};
        double d7 = dArr4[1];
        double d8 = dArr5[2];
        double d9 = dArr4[2];
        double d10 = dArr5[1];
        double d11 = (d7 * d8) - (d9 * d10);
        double d12 = dArr5[0];
        double d13 = dArr4[0];
        double d14 = (d9 * d12) - (d8 * d13);
        double d15 = (d13 * d10) - (d7 * d12);
        return new double[]{d11, d14, d15, -((d2 * d11) + (d4 * d14) + (d6 * d15))};
    }

    private static double calculateSlopeAngle(double[] dArr) {
        return 90.0d - Math.toDegrees(angleBetweenVectors(new double[]{dArr[0], dArr[1], dArr[2]}, new double[]{0.0d, 0.0d, 1.0d}));
    }

    private static double calculateHypotenuse(double d, double d2) {
        return d / Math.cos(Math.toRadians(d2));
    }

    private static double angleBetweenVectors(double[] dArr, double[] dArr2) {
        double d = dArr[0];
        double d2 = dArr2[0] * d;
        double d3 = dArr[1];
        double d4 = d2 + (dArr2[1] * d3);
        double d5 = dArr[2];
        double d6 = d4 + (dArr2[2] * d5);
        double dSqrt = Math.sqrt((d * d) + (d3 * d3) + (d5 * d5));
        double d7 = dArr2[0];
        double d8 = dArr2[1];
        double d9 = dArr2[2];
        return Math.acos(d6 / (dSqrt * Math.sqrt(((d7 * d7) + (d8 * d8)) + (d9 * d9))));
    }

    public static double[] calculatePointOnLineDirectionGAUSS(double d, double d2, double d3, double d4, double d5) {
        double d6 = d3 - d;
        double d7 = d4 - d2;
        double dSqrt = Math.sqrt((d6 * d6) + (d7 * d7));
        if (dSqrt == 0.0d) {
            return new double[]{d, d2};
        }
        return new double[]{d + ((d6 / dSqrt) * d5), d2 + ((d7 / dSqrt) * d5), 0.0d};
    }
}
