package com.qh.yctdevice;

import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GnssParamTransform {
    private SevenParameter sevenParameter = null;
    private FourParameter fourParameter = null;

    public static class FourParameter {
        public double dx = 0.0d;
        public double dy = 0.0d;
        public double r = 0.0d;
        public double scale = 1.0d;
    }

    public static class ResidualError {
        public double x = 0.0d;
        public double y = 0.0d;
        public double z = 0.0d;
    }

    public static class SevenParameter {
        public double dx = 0.0d;
        public double dy = 0.0d;
        public double dz = 0.0d;
        public double rx = 0.0d;
        public double ry = 0.0d;
        public double rz = 0.0d;
        public double scale = 1.0d;
    }

    private static native boolean computeFourParameters(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4);

    private static native boolean computeSevenParameters(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4);

    private static native boolean fourParamTransform(double[] dArr, double[] dArr2, double[] dArr3, boolean z);

    private static native boolean sevenParamTransform(double[] dArr, double[] dArr2, double[] dArr3, boolean z);

    public SevenParameter getSevenParameter() {
        return this.sevenParameter;
    }

    public FourParameter getFourParameter() {
        return this.fourParameter;
    }

    public void setSevenParameter(SevenParameter sevenParameter) {
        this.fourParameter = null;
        this.sevenParameter = sevenParameter;
    }

    public void setFourParameter(FourParameter fourParameter) {
        this.fourParameter = fourParameter;
        this.sevenParameter = null;
    }

    public void clearParameters() {
        this.fourParameter = null;
        this.sevenParameter = null;
    }

    public Point3D transform3D(Point3D point3D) {
        return transform3D(point3D, false);
    }

    public Point3D transform3D(Point3D point3D, boolean z) {
        SevenParameter sevenParameter = this.sevenParameter;
        if (sevenParameter == null || point3D == null) {
            return null;
        }
        double[] dArr = new double[3];
        if (sevenParamTransform(new double[]{sevenParameter.dx, sevenParameter.dy, sevenParameter.dz, sevenParameter.rx, sevenParameter.ry, sevenParameter.rz, sevenParameter.scale}, new double[]{point3D.x, point3D.y, point3D.z}, dArr, z)) {
            return new Point3D(dArr[0], dArr[1], dArr[2]);
        }
        return null;
    }

    public Point2D transform2D(Point2D point2D) {
        return transform2D(point2D, false);
    }

    public Point2D transform2D(Point2D point2D, boolean z) {
        FourParameter fourParameter = this.fourParameter;
        if (fourParameter == null || point2D == null) {
            return null;
        }
        double[] dArr = new double[2];
        if (fourParamTransform(new double[]{fourParameter.dx, fourParameter.dy, fourParameter.r, fourParameter.scale}, new double[]{point2D.x, point2D.y}, dArr, z)) {
            return new Point2D(dArr[0], dArr[1]);
        }
        return null;
    }

    public static boolean computeSevenParameters(List<Point3D> list, List<Point3D> list2, SevenParameter sevenParameter, List<ResidualError> list3) {
        int size;
        if (list == null || list2 == null || sevenParameter == null || (size = list.size()) < 3 || list2.size() != size) {
            return false;
        }
        int i = size * 3;
        double[] dArr = new double[i];
        double[] dArr2 = new double[i];
        int i2 = 0;
        while (i2 < size) {
            Point3D point3D = list.get(i2);
            Point3D point3D2 = list2.get(i2);
            int i3 = i2 * 3;
            dArr[i3] = point3D.x;
            int i4 = i3 + 1;
            dArr[i4] = point3D.y;
            int i5 = i3 + 2;
            dArr[i5] = point3D.z;
            dArr2[i3] = point3D2.x;
            dArr2[i4] = point3D2.y;
            dArr2[i5] = point3D2.z;
            i2++;
            size = size;
            i = i;
        }
        int i6 = size;
        double[] dArr3 = new double[7];
        double[] dArr4 = list3 != null ? new double[i] : null;
        if (!computeSevenParameters(dArr, dArr2, dArr3, dArr4)) {
            return false;
        }
        sevenParameter.dx = dArr3[0];
        sevenParameter.dy = dArr3[1];
        sevenParameter.dz = dArr3[2];
        sevenParameter.rx = dArr3[3];
        sevenParameter.ry = dArr3[4];
        sevenParameter.rz = dArr3[5];
        sevenParameter.scale = dArr3[6];
        if (list3 != null) {
            list3.clear();
            for (int i7 = 0; i7 < i6; i7++) {
                ResidualError residualError = new ResidualError();
                int i8 = i7 * 3;
                residualError.x = dArr4[i8];
                residualError.y = dArr4[i8 + 1];
                residualError.z = dArr4[i8 + 2];
                list3.add(residualError);
            }
        }
        return true;
    }

    public static boolean computeFourParameters(List<Point2D> list, List<Point2D> list2, FourParameter fourParameter, List<ResidualError> list3) {
        int size;
        if (list == null || list2 == null || fourParameter == null || (size = list.size()) < 2 || list2.size() != size) {
            return false;
        }
        int i = size * 2;
        double[] dArr = new double[i];
        double[] dArr2 = new double[i];
        int i2 = 0;
        while (i2 < size) {
            Point2D point2D = list.get(i2);
            Point2D point2D2 = list2.get(i2);
            int i3 = i2 * 2;
            dArr[i3] = point2D.x;
            int i4 = i3 + 1;
            dArr[i4] = point2D.y;
            dArr2[i3] = point2D2.x;
            dArr2[i4] = point2D2.y;
            i2++;
            size = size;
        }
        int i5 = size;
        double[] dArr3 = new double[4];
        double[] dArr4 = list3 != null ? new double[i] : null;
        if (!computeFourParameters(dArr, dArr2, dArr3, dArr4)) {
            return false;
        }
        fourParameter.dx = dArr3[0];
        fourParameter.dy = dArr3[1];
        fourParameter.r = dArr3[2];
        fourParameter.scale = dArr3[3];
        if (list3 != null) {
            list3.clear();
            for (int i6 = 0; i6 < i5; i6++) {
                ResidualError residualError = new ResidualError();
                int i7 = i6 * 2;
                residualError.x = dArr4[i7];
                residualError.y = dArr4[i7 + 1];
                residualError.z = 0.0d;
                list3.add(residualError);
            }
        }
        return true;
    }

    public static class Point3D {
        public double x;
        public double y;
        public double z;

        public Point3D() {
            this.x = 0.0d;
            this.y = 0.0d;
            this.z = 0.0d;
        }

        public Point3D(double d, double d2, double d3) {
            this.x = d;
            this.y = d2;
            this.z = d3;
        }
    }

    public static class Point2D {
        public double x;
        public double y;

        public Point2D() {
            this.x = 0.0d;
            this.y = 0.0d;
        }

        public Point2D(double d, double d2) {
            this.x = d;
            this.y = d2;
        }
    }

    static {
        System.loadLibrary("yctdevice");
    }
}
