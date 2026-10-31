package com.qh.utils;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class DistanceUtils {
    public static double distance2D(double d, double d2, double d3, double d4) {
        return Math.hypot(d3 - d, d4 - d2);
    }

    public static double distance2D(Point2D point2D, Point2D point2D2) {
        requireNonNull(point2D, "p1");
        requireNonNull(point2D2, "p2");
        return distance2D(point2D.x, point2D.y, point2D2.x, point2D2.y);
    }

    private static void requireNonNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException(str + " cannot be null");
    }

    public static final class Point2D {
        public final double x;
        public final double y;

        public Point2D(double d, double d2) {
            this.x = d;
            this.y = d2;
        }

        public String toString() {
            return "Point2D{x=" + this.x + ", y=" + this.y + '}';
        }
    }
}
