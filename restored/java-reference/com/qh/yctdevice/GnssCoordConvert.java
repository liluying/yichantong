package com.qh.yctdevice;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GnssCoordConvert implements AutoCloseable {
    private long mHandle;
    private double mLon0 = 0.0d;
    private double mLat0 = 0.0d;
    private double mFn = 0.0d;
    private double mOriginNorthing = 0.0d;
    private boolean mLat0OffsetEnabled = false;
    private boolean mOriginNorthingValid = false;

    public static class GaussKrugerParams {
        public double lon0 = 0.0d;
        public double lat0 = 0.0d;
        public double fe = 500000.0d;
        public double fn = 0.0d;
        public double k0 = 1.0d;
        public double projectionHeight = 0.0d;
        public int deformationMethod = 0;
    }

    public static class TransverseMercatorParams {
        public double lon0 = 0.0d;
        public double lat0 = 0.0d;
        public double fe = 500000.0d;
        public double fn = 0.0d;
        public double k0 = 1.0d;
        public double projectionHeight = 0.0d;
        public int deformationMethod = 0;
    }

    public static class UTMParams {
        public int zone = 1;
        public boolean isNorth = true;
        public double projectionHeight = 0.0d;
        public int deformationMethod = 0;
    }

    private static native boolean blhToXyz(long j, double[] dArr, double[] dArr2);

    private static native long create();

    private static native void destory(long j);

    private static native boolean geoToProj(long j, double[] dArr, double[] dArr2);

    private static native double getFlattening(long j);

    private static native double getSemiMajorAxis(long j);

    private static native double getSemiMinorAxis(long j);

    private static native boolean hasProjection(long j);

    private static native boolean projToGeo(long j, double[] dArr, double[] dArr2);

    private static native boolean projToXyz(long j, double[] dArr, double[] dArr2);

    private static native void setEllipsoidByType(long j, int i);

    private static native void setEllipsoidByValue(long j, double d, double d2);

    private static native void setGaussKrugerProjection(long j, double d, double d2, double d3, double d4, double d5, int i);

    private static native void setTransverseMercatorProjection(long j, double d, double d2, double d3, double d4, double d5, int i);

    private static native void setUtmProjection(long j, int i, boolean z, double d, int i2);

    private static native boolean xyzToBlh(long j, double[] dArr, double[] dArr2);

    private static native boolean xyzToProj(long j, double[] dArr, double[] dArr2);

    public GnssCoordConvert() {
        this.mHandle = -1L;
        this.mHandle = create();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        long j = this.mHandle;
        if (j >= 0) {
            destory(j);
            this.mHandle = -1L;
        }
    }

    public void setEllipsoid(int i) {
        long j = this.mHandle;
        if (j < 0) {
            return;
        }
        setEllipsoidByType(j, i);
        this.mOriginNorthingValid = false;
    }

    public void setEllipsoid(double d, double d2) {
        long j = this.mHandle;
        if (j < 0) {
            return;
        }
        setEllipsoidByValue(j, d, d2);
        this.mOriginNorthingValid = false;
    }

    public void setProjection(GaussKrugerParams gaussKrugerParams) {
        long j = this.mHandle;
        if (j < 0 || gaussKrugerParams == null) {
            return;
        }
        setGaussKrugerProjection(j, gaussKrugerParams.lon0, gaussKrugerParams.fe, gaussKrugerParams.fn, gaussKrugerParams.k0, gaussKrugerParams.projectionHeight, gaussKrugerParams.deformationMethod);
        configureLat0(gaussKrugerParams.lon0, gaussKrugerParams.lat0, gaussKrugerParams.fn);
    }

    public void setProjection(UTMParams uTMParams) {
        long j = this.mHandle;
        if (j < 0 || uTMParams == null) {
            return;
        }
        setUtmProjection(j, uTMParams.zone, uTMParams.isNorth, uTMParams.projectionHeight, uTMParams.deformationMethod);
        configureLat0(0.0d, 0.0d, 0.0d);
    }

    public void setProjection(TransverseMercatorParams transverseMercatorParams) {
        long j = this.mHandle;
        if (j < 0 || transverseMercatorParams == null) {
            return;
        }
        setTransverseMercatorProjection(j, transverseMercatorParams.lon0, transverseMercatorParams.fe, transverseMercatorParams.fn, transverseMercatorParams.k0, transverseMercatorParams.projectionHeight, transverseMercatorParams.deformationMethod);
        configureLat0(transverseMercatorParams.lon0, transverseMercatorParams.lat0, transverseMercatorParams.fn);
    }

    public boolean blhToXyz(double[] dArr, double[] dArr2) {
        long j = this.mHandle;
        if (j < 0 || dArr == null || dArr2 == null || dArr.length < 3 || dArr2.length < 3) {
            return false;
        }
        return blhToXyz(j, dArr, dArr2);
    }

    public boolean xyzToBlh(double[] dArr, double[] dArr2) {
        long j = this.mHandle;
        if (j < 0 || dArr == null || dArr2 == null || dArr.length < 3 || dArr2.length < 3) {
            return false;
        }
        return xyzToBlh(j, dArr, dArr2);
    }

    public boolean geoToProj(double[] dArr, double[] dArr2) {
        long j = this.mHandle;
        if (j < 0 || dArr == null || dArr2 == null || dArr.length < 3 || dArr2.length < 3 || !geoToProj(j, dArr, dArr2)) {
            return false;
        }
        return applyLat0AfterForward(dArr2);
    }

    public boolean projToGeo(double[] dArr, double[] dArr2) {
        double[] nativeProj;
        if (this.mHandle < 0 || dArr == null || dArr2 == null || dArr.length < 3 || dArr2.length < 3 || (nativeProj = toNativeProj(dArr)) == null) {
            return false;
        }
        return projToGeo(this.mHandle, nativeProj, dArr2);
    }

    private void configureLat0(double d, double d2, double d3) {
        this.mLon0 = d;
        this.mLat0 = d2;
        this.mFn = d3;
        this.mLat0OffsetEnabled = Math.abs(d2) > 1.0E-12d;
        this.mOriginNorthingValid = false;
    }

    private boolean ensureOriginNorthing() {
        if (!this.mLat0OffsetEnabled || this.mOriginNorthingValid) {
            return true;
        }
        long j = this.mHandle;
        if (j < 0) {
            return false;
        }
        double[] dArr = new double[3];
        if (!geoToProj(j, new double[]{this.mLon0, this.mLat0, 0.0d}, dArr)) {
            return false;
        }
        this.mOriginNorthing = dArr[1];
        this.mOriginNorthingValid = true;
        return true;
    }

    private boolean applyLat0AfterForward(double[] dArr) {
        if (!this.mLat0OffsetEnabled) {
            return true;
        }
        if (!ensureOriginNorthing()) {
            return false;
        }
        dArr[1] = (dArr[1] - this.mOriginNorthing) + this.mFn;
        return true;
    }

    private double[] toNativeProj(double[] dArr) {
        if (!this.mLat0OffsetEnabled) {
            return dArr;
        }
        if (ensureOriginNorthing()) {
            return new double[]{dArr[0], (dArr[1] + this.mOriginNorthing) - this.mFn, dArr[2]};
        }
        return null;
    }

    static {
        System.loadLibrary("yctdevice");
    }
}
