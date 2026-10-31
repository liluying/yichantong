package com.qianhe.baselib.utils.workchecker;

import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CurvedSlopeChecker {

    public static class SlopeResult {
        public int distanceCm;
        public Point3D intersectPoint;
        public boolean isCut;
        public boolean isOutOfSlopeRange;
        public boolean isVerticalSlope;
    }

    private static double cross2(double d, double d2, double d3, double d4) {
        return (d * d4) - (d2 * d3);
    }

    public static class Point3D {
        public double x;
        public double y;
        public double z;

        public Point3D(double d, double d2, double d3) {
            this.x = d;
            this.y = d2;
            this.z = d3;
        }
    }

    public static class SlopeFace {
        public final Point3D far0;
        public final Point3D far1;
        public final Point3D opening0;
        public final Point3D opening1;

        public SlopeFace(Point3D point3D, Point3D point3D2, Point3D point3D3, Point3D point3D4) {
            this.opening0 = point3D;
            this.opening1 = point3D2;
            this.far0 = point3D3;
            this.far1 = point3D4;
        }
    }

    public static class ArcTransition {
        public final Point3D corner;
        public final Point3D edgeNext;
        public final Point3D edgePrev;

        public ArcTransition(Point3D point3D, Point3D point3D2, Point3D point3D3) {
            this.corner = point3D;
            this.edgePrev = point3D2;
            this.edgeNext = point3D3;
        }
    }

    public static double slopeRatioFromAC(Point3D point3D, Point3D point3D2) {
        double d = point3D2.x - point3D.x;
        double d2 = point3D2.y - point3D.y;
        double d3 = point3D2.z - point3D.z;
        double dSqrt = Math.sqrt((d * d) + (d2 * d2));
        return dSqrt < 1.0E-6d ? d3 >= 0.0d ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY : d3 / dSqrt;
    }

    public static List<SlopeFace> buildSlopeFaces(List<Point3D> list, double d, boolean z, double d2) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() >= 2 && d2 > 0.0d) {
            char c = 0;
            int i = 0;
            while (i < list.size() - 1) {
                Point3D point3D = list.get(i);
                int i2 = i + 1;
                Point3D point3D2 = list.get(i2);
                double[] dArrSegmentOutwardNormal = segmentOutwardNormal(point3D, point3D2, z);
                double d3 = dArrSegmentOutwardNormal[c] * d2;
                double d4 = dArrSegmentOutwardNormal[1] * d2;
                double d5 = d2 * d;
                arrayList.add(new SlopeFace(point3D, point3D2, new Point3D(point3D.x + d3, point3D.y + d4, point3D.z + d5), new Point3D(point3D2.x + d3, point3D2.y + d4, point3D2.z + d5)));
                i = i2;
                c = 0;
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker.ArcTransition> buildArcTransitions(java.util.List<com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker.Point3D> r30, double r31, boolean r33, double r34) {
        /*
            r0 = r30
            r1 = r33
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            if (r0 == 0) goto Lbd
            int r3 = r0.size()
            r4 = 3
            if (r3 < r4) goto Lbd
            r3 = 0
            int r5 = (r34 > r3 ? 1 : (r34 == r3 ? 0 : -1))
            if (r5 > 0) goto L1a
            goto Lbd
        L1a:
            r3 = 1
            r4 = 1
        L1c:
            int r5 = r0.size()
            int r5 = r5 - r3
            if (r4 >= r5) goto Lbd
            int r5 = r4 + (-1)
            java.lang.Object r5 = r0.get(r5)
            com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker$Point3D r5 = (com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker.Point3D) r5
            java.lang.Object r6 = r0.get(r4)
            com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker$Point3D r6 = (com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker.Point3D) r6
            int r4 = r4 + 1
            java.lang.Object r7 = r0.get(r4)
            com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker$Point3D r7 = (com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker.Point3D) r7
            double[] r8 = segmentOutwardNormal(r5, r6, r1)
            double[] r9 = segmentOutwardNormal(r6, r7, r1)
            double r10 = vectorLen2(r8)
            r12 = 4472406533629990549(0x3e112e0be826d695, double:1.0E-9)
            int r14 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r14 < 0) goto L56
            double r10 = vectorLen2(r9)
            int r14 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r14 >= 0) goto L5b
        L56:
            r22 = r4
            r21 = 1
            goto Lb8
        L5b:
            boolean r5 = isConvexCorner(r5, r6, r7, r1)
            if (r5 != 0) goto L62
            goto L56
        L62:
            r5 = 0
            r10 = r8[r5]
            r12 = r9[r5]
            double r12 = r12 * r10
            r7 = r8[r3]
            r14 = r9[r3]
            double r14 = r14 * r7
            double r12 = r12 + r14
            r14 = 4607173411600762667(0x3feff7ced916872b, double:0.999)
            int r16 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r16 <= 0) goto L7a
            goto L56
        L7a:
            double r12 = r34 * r31
            com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker$Point3D r14 = new com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker$Point3D
            r22 = r4
            r21 = 1
            double r3 = r6.x
            double r10 = r10 * r34
            double r15 = r3 + r10
            double r3 = r6.y
            double r7 = r7 * r34
            double r17 = r3 + r7
            double r3 = r6.z
            double r19 = r3 + r12
            r14.<init>(r15, r17, r19)
            com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker$Point3D r23 = new com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker$Point3D
            double r3 = r6.x
            r7 = r9[r5]
            double r7 = r7 * r34
            double r24 = r3 + r7
            double r3 = r6.y
            r7 = r9[r21]
            double r7 = r7 * r34
            double r26 = r3 + r7
            double r3 = r6.z
            double r28 = r3 + r12
            r23.<init>(r24, r26, r28)
            r3 = r23
            com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker$ArcTransition r4 = new com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker$ArcTransition
            r4.<init>(r6, r14, r3)
            r2.add(r4)
        Lb8:
            r4 = r22
            r3 = 1
            goto L1c
        Lbd:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker.buildArcTransitions(java.util.List, double, boolean, double):java.util.List");
    }

    public SlopeResult calculate(Point3D point3D, List<Point3D> list, Point3D point3D2, Point3D point3D3, boolean z, boolean z2) {
        if (list == null || list.size() < 2) {
            return new SlopeResult();
        }
        return calculate(point3D, list, slopeRatioFromAC(point3D2, point3D3), z, z2);
    }

    public SlopeResult calculate(Point3D point3D, List<Point3D> list, Point3D point3D2, Point3D point3D3, boolean z) {
        return calculate(point3D, list, point3D2, point3D3, z, false);
    }

    public SlopeResult calculate(Point3D point3D, List<Point3D> list, double d, boolean z, boolean z2) {
        double d2;
        double d3;
        Point3D point3D2;
        double[] dArr;
        if (list == null || list.size() < 2) {
            return new SlopeResult();
        }
        SlopeResult slopeResult = new SlopeResult();
        ProjectionResult projectionResultFindNearestProjection = findNearestProjection(point3D.x, point3D.y, list, z2);
        if (projectionResultFindNearestProjection == null) {
            return new SlopeResult();
        }
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            slopeResult.isVerticalSlope = true;
            double dSqrt = Math.sqrt(Math.pow(point3D.x - projectionResultFindNearestProjection.projX, 2.0d) + Math.pow(point3D.y - projectionResultFindNearestProjection.projY, 2.0d));
            double d4 = point3D.z - projectionResultFindNearestProjection.zOnLine;
            if (Math.abs(d4) > 0.03d) {
                dSqrt = d4;
            }
            slopeResult.distanceCm = roundMetersToCm(dSqrt);
            slopeResult.isCut = !z ? d4 >= 0.0d : d4 <= 0.0d;
            slopeResult.intersectPoint = new Point3D(point3D.x, point3D.y, projectionResultFindNearestProjection.zOnLine);
            slopeResult.isOutOfSlopeRange = isOutOfLongitudinalRange(projectionResultFindNearestProjection, 0.03d);
            return slopeResult;
        }
        slopeResult.isVerticalSlope = false;
        double d5 = projectionResultFindNearestProjection.outwardNx;
        double d6 = projectionResultFindNearestProjection.outwardNy;
        if (projectionResultFindNearestProjection.isAtCorner && (point3D2 = projectionResultFindNearestProjection.cornerPoint) != null && (dArr = projectionResultFindNearestProjection.prevNormal) != null) {
            d2 = d5;
            double[] dArr2 = projectionResultFindNearestProjection.nextNormal;
            if (dArr2 != null) {
                double[] dArrCalculateSmoothNormalAtCorner = calculateSmoothNormalAtCorner(point3D2, dArr, dArr2, point3D.x, point3D.y, z2);
                d3 = dArrCalculateSmoothNormalAtCorner[0];
                d6 = dArrCalculateSmoothNormalAtCorner[1];
            }
            double d7 = projectionResultFindNearestProjection.zOnLine + ((((point3D.x - projectionResultFindNearestProjection.projX) * d3) + ((point3D.y - projectionResultFindNearestProjection.projY) * d6)) * d);
            double d8 = point3D.z - d7;
            slopeResult.distanceCm = roundMetersToCm(d8);
            slopeResult.isCut = z ? d8 < 0.0d : d8 > 0.0d;
            slopeResult.intersectPoint = new Point3D(point3D.x, point3D.y, d7);
            slopeResult.isOutOfSlopeRange = isOutOfLongitudinalRange(projectionResultFindNearestProjection, 0.03d);
            return slopeResult;
        }
        d2 = d5;
        d3 = d2;
        double d72 = projectionResultFindNearestProjection.zOnLine + ((((point3D.x - projectionResultFindNearestProjection.projX) * d3) + ((point3D.y - projectionResultFindNearestProjection.projY) * d6)) * d);
        double d82 = point3D.z - d72;
        slopeResult.distanceCm = roundMetersToCm(d82);
        slopeResult.isCut = z ? d82 < 0.0d : d82 > 0.0d;
        slopeResult.intersectPoint = new Point3D(point3D.x, point3D.y, d72);
        slopeResult.isOutOfSlopeRange = isOutOfLongitudinalRange(projectionResultFindNearestProjection, 0.03d);
        return slopeResult;
    }

    private static boolean isOutOfLongitudinalRange(ProjectionResult projectionResult, double d) {
        double d2 = projectionResult.totalLen;
        if (d2 < 0.001d) {
            return true;
        }
        double d3 = projectionResult.tTotal;
        return d3 < (-d) / d2 || d3 > (d / d2) + 1.0d;
    }

    private static int roundMetersToCm(double d) {
        return (int) Math.round(d * 100.0d);
    }

    private static double[] calculateSmoothNormalAtCorner(Point3D point3D, double[] dArr, double[] dArr2, double d, double d2, boolean z) {
        double d3 = d - point3D.x;
        double d4 = d2 - point3D.y;
        if (Math.sqrt((d3 * d3) + (d4 * d4)) < 1.0E-9d) {
            return averageNormal(dArr, dArr2);
        }
        double dAtan2 = Math.atan2(d4, d3);
        double dAtan22 = Math.atan2(dArr[1], dArr[0]);
        double dAtan23 = Math.atan2(dArr2[1], dArr2[0]) - dAtan22;
        double dCross2 = cross2(dArr[0], dArr[1], dArr2[0], dArr2[1]);
        boolean z2 = !z ? dCross2 >= 0.0d : dCross2 <= 0.0d;
        if (z2) {
            while (dAtan23 <= 0.0d) {
                dAtan23 += 6.283185307179586d;
            }
        } else {
            while (dAtan23 >= 0.0d) {
                dAtan23 -= 6.283185307179586d;
            }
        }
        double d5 = dAtan2 - dAtan22;
        if (z2) {
            while (d5 < 0.0d) {
                d5 += 6.283185307179586d;
            }
            while (d5 > dAtan23) {
                d5 -= 6.283185307179586d;
            }
        } else {
            while (d5 > 0.0d) {
                d5 -= 6.283185307179586d;
            }
            while (d5 < dAtan23) {
                d5 += 6.283185307179586d;
            }
        }
        double dCos = (Math.cos(Math.abs(d5 / dAtan23) * 3.141592653589793d) + 1.0d) / 2.0d;
        double d6 = 1.0d - dCos;
        double d7 = (dArr[0] * dCos) + (dArr2[0] * d6);
        double d8 = (dCos * dArr[1]) + (d6 * dArr2[1]);
        double dSqrt = Math.sqrt((d7 * d7) + (d8 * d8));
        if (dSqrt > 1.0E-9d) {
            d7 /= dSqrt;
            d8 /= dSqrt;
        }
        return new double[]{d7, d8};
    }

    private static boolean isConvexCorner(Point3D point3D, Point3D point3D2, Point3D point3D3, boolean z) {
        double d = point3D2.x;
        double d2 = d - point3D.x;
        double d3 = point3D2.y;
        double d4 = (d2 * (point3D3.y - d3)) - ((d3 - point3D.y) * (point3D3.x - d));
        return z ? d4 > 1.0E-9d : d4 < -1.0E-9d;
    }

    private static double vectorLen2(double[] dArr) {
        double d = dArr[0];
        double d2 = dArr[1];
        return (d * d) + (d2 * d2);
    }

    private static double[] segmentOutwardNormal(Point3D point3D, Point3D point3D2, boolean z) {
        double d = point3D2.x - point3D.x;
        double d2 = point3D2.y - point3D.y;
        double dSqrt = Math.sqrt((d * d) + (d2 * d2));
        if (dSqrt < 1.0E-6d) {
            return new double[]{0.0d, 0.0d};
        }
        double d3 = d2 / dSqrt;
        double d4 = -(d / dSqrt);
        if (!z) {
            d3 = -d3;
            d4 = -d4;
        }
        return new double[]{d3, d4};
    }

    private ProjectionResult findNearestProjection(double d, double d2, List<Point3D> list, boolean z) {
        double dSegmentLength = 0.0d;
        int i = 0;
        while (i < list.size() - 1) {
            Point3D point3D = list.get(i);
            i++;
            dSegmentLength += segmentLength(point3D, list.get(i));
        }
        double d3 = 0.001d;
        if (dSegmentLength < 0.001d) {
            return null;
        }
        double d4 = 0.0d;
        ProjectionResult projectionResult = null;
        double d5 = Double.MAX_VALUE;
        int i2 = 0;
        while (i2 < list.size() - 1) {
            Point3D point3D2 = list.get(i2);
            int i3 = i2 + 1;
            Point3D point3D3 = list.get(i3);
            double dSegmentLength2 = segmentLength(point3D2, point3D3);
            int i4 = i2;
            double d6 = d3;
            ProjectionResult projectionResultProjectPointToSegment = projectPointToSegment(d, d2, point3D2, point3D3, z);
            double d7 = projectionResultProjectPointToSegment.tInSegment;
            projectionResultProjectPointToSegment.tTotal = ((d7 * dSegmentLength2) + d4) / dSegmentLength;
            projectionResultProjectPointToSegment.totalLen = dSegmentLength;
            if (dSegmentLength2 > d6) {
                double d8 = d7 * dSegmentLength2;
                double d9 = (1.0d - d7) * dSegmentLength2;
                if (d8 < 1.0d && i4 > 0) {
                    int i5 = i4 - 1;
                    double[] dArrSegmentOutwardNormal = segmentOutwardNormal(list.get(i5), point3D2, z);
                    double[] dArrSegmentOutwardNormal2 = segmentOutwardNormal(point3D2, point3D3, z);
                    if (vectorLen2(dArrSegmentOutwardNormal) > 1.0E-9d && vectorLen2(dArrSegmentOutwardNormal2) > 1.0E-9d && (dArrSegmentOutwardNormal[0] * dArrSegmentOutwardNormal2[0]) + (dArrSegmentOutwardNormal[1] * dArrSegmentOutwardNormal2[1]) < 0.999d && isConvexCorner(list.get(i5), point3D2, point3D3, z)) {
                        projectionResultProjectPointToSegment.isAtCorner = true;
                        projectionResultProjectPointToSegment.cornerPoint = point3D2;
                        projectionResultProjectPointToSegment.prevNormal = dArrSegmentOutwardNormal;
                        projectionResultProjectPointToSegment.nextNormal = dArrSegmentOutwardNormal2;
                    }
                } else if (d9 < 1.0d && i4 < list.size() - 2) {
                    double[] dArrSegmentOutwardNormal3 = segmentOutwardNormal(point3D2, point3D3, z);
                    int i6 = i4 + 2;
                    double[] dArrSegmentOutwardNormal4 = segmentOutwardNormal(point3D3, list.get(i6), z);
                    if (vectorLen2(dArrSegmentOutwardNormal3) > 1.0E-9d && vectorLen2(dArrSegmentOutwardNormal4) > 1.0E-9d && (dArrSegmentOutwardNormal3[0] * dArrSegmentOutwardNormal4[0]) + (dArrSegmentOutwardNormal3[1] * dArrSegmentOutwardNormal4[1]) < 0.999d && isConvexCorner(point3D2, point3D3, list.get(i6), z)) {
                        projectionResultProjectPointToSegment.isAtCorner = true;
                        projectionResultProjectPointToSegment.cornerPoint = point3D3;
                        projectionResultProjectPointToSegment.prevNormal = dArrSegmentOutwardNormal3;
                        projectionResultProjectPointToSegment.nextNormal = dArrSegmentOutwardNormal4;
                    }
                }
            }
            double dPow = Math.pow(d - projectionResultProjectPointToSegment.projX, 2.0d) + Math.pow(d2 - projectionResultProjectPointToSegment.projY, 2.0d);
            if (dPow < d5) {
                d5 = dPow;
                projectionResult = projectionResultProjectPointToSegment;
            }
            d4 += dSegmentLength2;
            i2 = i3;
            d3 = d6;
        }
        return projectionResult;
    }

    private static double segmentLength(Point3D point3D, Point3D point3D2) {
        double d = point3D2.x - point3D.x;
        double d2 = point3D2.y - point3D.y;
        return Math.sqrt((d * d) + (d2 * d2));
    }

    private ProjectionResult projectPointToSegment(double d, double d2, Point3D point3D, Point3D point3D2, boolean z) {
        double d3 = point3D2.x;
        double d4 = point3D.x;
        double d5 = d3 - d4;
        double d6 = point3D2.y;
        double d7 = point3D.y;
        double d8 = d6 - d7;
        double d9 = (d5 * d5) + (d8 * d8);
        if (d9 < 1.0E-6d) {
            ProjectionResult projectionResult = new ProjectionResult(d4, d7, point3D.z, 0.0d);
            double[] dArrSegmentOutwardNormal = segmentOutwardNormal(point3D, point3D2, z);
            projectionResult.outwardNx = dArrSegmentOutwardNormal[0];
            projectionResult.outwardNy = dArrSegmentOutwardNormal[1];
            return projectionResult;
        }
        double d10 = (((d - d4) * d5) + ((d2 - d7) * d8)) / d9;
        double d11 = point3D.z;
        ProjectionResult projectionResult2 = new ProjectionResult(d4 + (d5 * d10), d7 + (d8 * d10), d11 + ((point3D2.z - d11) * d10), d10);
        double[] dArrSegmentOutwardNormal2 = segmentOutwardNormal(point3D, point3D2, z);
        projectionResult2.outwardNx = dArrSegmentOutwardNormal2[0];
        projectionResult2.outwardNy = dArrSegmentOutwardNormal2[1];
        return projectionResult2;
    }

    private static class ProjectionResult {
        Point3D cornerPoint;
        boolean isAtCorner = false;
        double[] nextNormal;
        double outwardNx;
        double outwardNy;
        double[] prevNormal;
        double projX;
        double projY;
        double tInSegment;
        double tTotal;
        double totalLen;
        double zOnLine;

        ProjectionResult(double d, double d2, double d3, double d4) {
            this.projX = d;
            this.projY = d2;
            this.zOnLine = d3;
            this.tInSegment = d4;
        }
    }

    private static double[] averageNormal(double[] dArr, double[] dArr2) {
        double d = (dArr[0] + dArr2[0]) / 2.0d;
        double d2 = (dArr[1] + dArr2[1]) / 2.0d;
        double dSqrt = Math.sqrt((d * d) + (d2 * d2));
        if (dSqrt > 1.0E-4d) {
            d /= dSqrt;
            d2 /= dSqrt;
        }
        return new double[]{d, d2};
    }
}
