package com.qianhe.baselib.manage;

import com.qh.xcad.XCadView$$ExternalSyntheticBackport0;
import com.qh.yctdevice.GnssCoordConvert;
import com.qh.yctdevice.GnssParamTransform;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.bean.GnssTransParamEntity;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GnssCoordConvertManager {
    private static EngineeringProvider engineeringProvider;
    private static GnssCoordConvertManager instance;
    private EngineeringEntity cachedEngineering;
    private long cachedEngineeringKey = Long.MIN_VALUE;
    private GnssTransParamEntity cachedTransParam;
    private GnssCoordConvert gnssCoordConvert;
    private EngineeringEntity sessionEngineering;
    private GnssTransParamEntity sessionTransParam;
    private GnssCoordConvert wgs84Scratch;

    public interface EngineeringProvider {
        EngineeringEntity queryCurrentEngineering();

        GnssTransParamEntity resolveGnssTransParamForEngineering(EngineeringEntity engineeringEntity);
    }

    private GnssCoordConvertManager() {
    }

    public static void setEngineeringProvider(EngineeringProvider engineeringProvider2) {
        engineeringProvider = engineeringProvider2;
    }

    public static synchronized GnssCoordConvertManager getInstance() {
        try {
            if (instance == null) {
                instance = new GnssCoordConvertManager();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    public GnssCoordConvert getGnssCoordConvert() {
        if (this.gnssCoordConvert == null) {
            this.gnssCoordConvert = new GnssCoordConvert();
        }
        return this.gnssCoordConvert;
    }

    public void applyEngineering(EngineeringEntity engineeringEntity) {
        EngineeringEntity.CustomEllipsoidParams customEllipsoidParams;
        if (engineeringEntity == null) {
            return;
        }
        GnssCoordConvert gnssCoordConvert = getGnssCoordConvert();
        int i = engineeringEntity.ellipsoidType;
        if (i == 0 && (customEllipsoidParams = engineeringEntity.customEllipsoidParams) != null) {
            gnssCoordConvert.setEllipsoid(customEllipsoidParams.a, customEllipsoidParams.f);
        } else if (i > 0) {
            gnssCoordConvert.setEllipsoid(i);
        } else {
            gnssCoordConvert.setEllipsoid(2);
        }
        int i2 = engineeringEntity.projectionType;
        if (i2 == 2 && engineeringEntity.utmParams != null) {
            GnssCoordConvert.UTMParams uTMParams = new GnssCoordConvert.UTMParams();
            EngineeringEntity.UTMParams uTMParams2 = engineeringEntity.utmParams;
            uTMParams.zone = uTMParams2.zone;
            uTMParams.isNorth = uTMParams2.isNorth;
            uTMParams.projectionHeight = uTMParams2.projectionHeight;
            uTMParams.deformationMethod = uTMParams2.deformationMethod;
            gnssCoordConvert.setProjection(uTMParams);
            return;
        }
        if (i2 == 1 && engineeringEntity.gaussKrugerParams != null) {
            GnssCoordConvert.GaussKrugerParams gaussKrugerParams = new GnssCoordConvert.GaussKrugerParams();
            EngineeringEntity.GaussKrugerParams gaussKrugerParams2 = engineeringEntity.gaussKrugerParams;
            gaussKrugerParams.lon0 = gaussKrugerParams2.lon0;
            gaussKrugerParams.lat0 = gaussKrugerParams2.lat0;
            gaussKrugerParams.fe = gaussKrugerParams2.fe;
            gaussKrugerParams.fn = gaussKrugerParams2.fn;
            gaussKrugerParams.k0 = gaussKrugerParams2.k0;
            gaussKrugerParams.projectionHeight = gaussKrugerParams2.projectionHeight;
            gaussKrugerParams.deformationMethod = gaussKrugerParams2.deformationMethod;
            gnssCoordConvert.setProjection(gaussKrugerParams);
            return;
        }
        if (i2 != 3 || engineeringEntity.transverseMercatorParams == null) {
            return;
        }
        GnssCoordConvert.TransverseMercatorParams transverseMercatorParams = new GnssCoordConvert.TransverseMercatorParams();
        EngineeringEntity.TransverseMercatorParams transverseMercatorParams2 = engineeringEntity.transverseMercatorParams;
        transverseMercatorParams.lon0 = transverseMercatorParams2.lon0;
        transverseMercatorParams.lat0 = transverseMercatorParams2.lat0;
        transverseMercatorParams.fe = transverseMercatorParams2.fe;
        transverseMercatorParams.fn = transverseMercatorParams2.fn;
        transverseMercatorParams.k0 = transverseMercatorParams2.k0;
        transverseMercatorParams.projectionHeight = transverseMercatorParams2.projectionHeight;
        transverseMercatorParams.deformationMethod = transverseMercatorParams2.deformationMethod;
        gnssCoordConvert.setProjection(transverseMercatorParams);
    }

    public synchronized boolean ensureCurrentEngineering() {
        GnssTransParamEntity gnssTransParamEntity;
        requireEngineeringProvider();
        EngineeringEntity engineeringEntity = this.sessionEngineering;
        if (engineeringEntity != null) {
            if (this.cachedEngineeringKey == 9223372036854775800L && this.cachedEngineering == engineeringEntity) {
                if (this.cachedTransParam == null && (gnssTransParamEntity = this.sessionTransParam) != null) {
                    this.cachedTransParam = gnssTransParamEntity;
                    GnssParamTransformManager.getInstance().applyEngineeringTransform(this.sessionEngineering, this.sessionTransParam);
                }
                return true;
            }
            this.cachedEngineering = engineeringEntity;
            this.cachedTransParam = this.sessionTransParam;
            this.cachedEngineeringKey = 9223372036854775800L;
            applyEngineering(engineeringEntity);
            GnssParamTransformManager.getInstance().applyEngineeringTransform(this.sessionEngineering, this.sessionTransParam);
            return true;
        }
        EngineeringEntity engineeringEntityQueryCurrentEngineering = engineeringProvider.queryCurrentEngineering();
        long j = engineeringEntityQueryCurrentEngineering == null ? 0L : ((engineeringEntityQueryCurrentEngineering.id ^ engineeringEntityQueryCurrentEngineering.updateTime) ^ engineeringEntityQueryCurrentEngineering.transParamLocalId) ^ engineeringEntityQueryCurrentEngineering.conversionParamsType;
        if (j == this.cachedEngineeringKey && this.cachedEngineering != null) {
            refreshCachedTransParamIfNeeded(engineeringEntityQueryCurrentEngineering);
            return true;
        }
        this.cachedEngineering = engineeringEntityQueryCurrentEngineering;
        this.cachedTransParam = null;
        this.cachedEngineeringKey = j;
        if (engineeringEntityQueryCurrentEngineering != null) {
            applyEngineering(engineeringEntityQueryCurrentEngineering);
            this.cachedTransParam = engineeringProvider.resolveGnssTransParamForEngineering(engineeringEntityQueryCurrentEngineering);
            GnssParamTransformManager.getInstance().applyEngineeringTransform(engineeringEntityQueryCurrentEngineering, this.cachedTransParam);
        } else {
            GnssParamTransformManager.getInstance().clearTransformParams();
        }
        return engineeringEntityQueryCurrentEngineering != null;
    }

    public synchronized void setSessionEngineering(EngineeringEntity engineeringEntity, GnssTransParamEntity gnssTransParamEntity) {
        this.sessionEngineering = engineeringEntity;
        this.sessionTransParam = gnssTransParamEntity;
        this.cachedEngineeringKey = Long.MIN_VALUE;
        if (engineeringEntity != null) {
            ensureCurrentEngineering();
        }
    }

    public synchronized void clearSessionEngineering() {
        if (this.sessionEngineering == null && this.sessionTransParam == null) {
            return;
        }
        this.sessionEngineering = null;
        this.sessionTransParam = null;
        this.cachedEngineeringKey = Long.MIN_VALUE;
        GnssParamTransformManager.getInstance().clearTransformParams();
    }

    public synchronized void invalidateEngineeringCache() {
        this.cachedEngineeringKey = Long.MIN_VALUE;
    }

    private void refreshCachedTransParamIfNeeded(EngineeringEntity engineeringEntity) {
        if (engineeringEntity == null || engineeringEntity.conversionParamsType <= 0) {
            return;
        }
        GnssTransParamEntity gnssTransParamEntity = this.cachedTransParam;
        if (gnssTransParamEntity == null || !gnssTransParamEntity.hasParamsDetail()) {
            this.cachedEngineering = engineeringEntity;
            this.cachedTransParam = engineeringProvider.resolveGnssTransParamForEngineering(engineeringEntity);
            GnssParamTransformManager.getInstance().applyEngineeringTransform(engineeringEntity, this.cachedTransParam);
        }
    }

    public synchronized void updateTransParamCache(GnssTransParamEntity gnssTransParamEntity) {
        this.cachedTransParam = gnssTransParamEntity;
        EngineeringEntity engineeringEntity = this.cachedEngineering;
        if (engineeringEntity != null) {
            engineeringEntity.transParam = gnssTransParamEntity;
            if (gnssTransParamEntity != null && gnssTransParamEntity.hasParamsDetail()) {
                GnssParamTransformManager.getInstance().applyEngineeringTransform(this.cachedEngineering, gnssTransParamEntity);
            }
        }
    }

    public EngineeringEntity getCurrentEngineering() {
        ensureCurrentEngineering();
        return this.cachedEngineering;
    }

    public GnssTransParamEntity getCurrentTransParam() {
        ensureCurrentEngineering();
        return this.cachedTransParam;
    }

    public double[] convertToWGS84(double[] dArr) {
        double[] dArrRequireBlhToXyz = requireBlhToXyz(requireCurrentEngineering(), dArr);
        return requireWgs84XyzToBlh(dArrRequireBlhToXyz[0], dArrRequireBlhToXyz[1], dArrRequireBlhToXyz[2]);
    }

    public double[] convertToEcef(double[] dArr) {
        return requireBlhToXyz(requireCurrentEngineering(), dArr);
    }

    public double[] convertToGAUSSXY(double[] dArr) {
        if (dArr == null || dArr.length < 3) {
            return new double[3];
        }
        double[] dArr2 = new double[3];
        return (geoToAlignedProj(dArr[0], dArr[1], dArr[2], dArr2) && isVaildCoords(dArr2)) ? dArr2 : new double[3];
    }

    public double[] convertGAUSSXYToGeodetic(double[] dArr) {
        double[] dArr2 = new double[3];
        return (convertToGeodeticInverse(dArr[0], dArr[1], dArr[2], dArr2) && isVaildCoords(dArr2)) ? dArr2 : new double[3];
    }

    protected boolean isVaildCoords(double[] dArr) {
        for (double d : dArr) {
            if (!isValidCoord(d)) {
                return false;
            }
        }
        return true;
    }

    protected boolean isValidCoord(double d) {
        return XCadView$$ExternalSyntheticBackport0.m(d) && !Double.isNaN(d);
    }

    public boolean geoToAlignedGeodetic(double d, double d2, double d3, double[] dArr) {
        if (dArr == null || dArr.length < 3) {
            return false;
        }
        double[] dArr2 = new double[3];
        if (geoToAlignedProj(d, d2, d3, dArr2)) {
            return projToGeodeticInverse(dArr2[0], dArr2[1], dArr2[2], dArr);
        }
        return false;
    }

    public boolean convertToGeodeticInverse(double d, double d2, double d3, double[] dArr) {
        EngineeringEntity engineeringEntity;
        if (dArr == null || dArr.length < 3 || !ensureCurrentEngineering() || (engineeringEntity = this.cachedEngineering) == null) {
            return false;
        }
        if (engineeringEntity.conversionParamsType == 2) {
            return ecefToGeodeticInverse(engineeringEntity, this.cachedTransParam, d, d2, d3, dArr);
        }
        return projToGeodeticInverse(engineeringEntity, this.cachedTransParam, d, d2, d3, dArr);
    }

    public boolean ecefToGeodeticInverse(EngineeringEntity engineeringEntity, GnssTransParamEntity gnssTransParamEntity, double d, double d2, double d3, double[] dArr) {
        GnssParamTransform.Point3D point3DTransform3D;
        double[] dArrXyzToBlh;
        if (dArr == null || dArr.length < 3 || engineeringEntity == null) {
            return false;
        }
        if (engineeringEntity.conversionParamsType != 2) {
            double[] dArrXyzToBlh2 = xyzToBlh(engineeringEntity, d, d2, d3);
            if (dArrXyzToBlh2 == null) {
                return false;
            }
            dArr[0] = dArrXyzToBlh2[0];
            dArr[1] = dArrXyzToBlh2[1];
            dArr[2] = dArrXyzToBlh2[2];
            return true;
        }
        GnssParamTransform gnssParamTransformEnsureTransformLoaded = ensureTransformLoaded(engineeringEntity, gnssTransParamEntity);
        if (gnssParamTransformEnsureTransformLoaded.getSevenParameter() == null || (point3DTransform3D = gnssParamTransformEnsureTransformLoaded.transform3D(new GnssParamTransform.Point3D(d, d2, d3), true)) == null || (dArrXyzToBlh = xyzToBlh(engineeringEntity, point3DTransform3D.x, point3DTransform3D.y, point3DTransform3D.z)) == null) {
            return false;
        }
        dArr[0] = dArrXyzToBlh[0];
        dArr[1] = dArrXyzToBlh[1];
        dArr[2] = dArrXyzToBlh[2];
        return true;
    }

    public double[] convertEcefToGeodetic(double d, double d2, double d3) {
        return requireXyzToBlh(requireCurrentEngineering(), d, d2, d3);
    }

    public boolean geoToAlignedProj(double d, double d2, double d3, double[] dArr) {
        if (ensureCurrentEngineering()) {
            return geoToAlignedProj(this.cachedEngineering, this.cachedTransParam, d, d2, d3, dArr);
        }
        return false;
    }

    public boolean geoToProjOnly(double d, double d2, double d3, double[] dArr) {
        EngineeringEntity engineeringEntity;
        if (!ensureCurrentEngineering() || (engineeringEntity = this.cachedEngineering) == null) {
            return false;
        }
        return geoToProj(engineeringEntity, new double[]{d, d2, d3}, dArr);
    }

    public boolean geodeticToXyzOnly(double d, double d2, double d3, double[] dArr) {
        EngineeringEntity engineeringEntity;
        double[] dArrBlhToXyz;
        if (dArr == null || dArr.length < 3 || !ensureCurrentEngineering() || (engineeringEntity = this.cachedEngineering) == null || (dArrBlhToXyz = blhToXyz(engineeringEntity, new double[]{d, d2, d3})) == null) {
            return false;
        }
        dArr[0] = dArrBlhToXyz[0];
        dArr[1] = dArrBlhToXyz[1];
        dArr[2] = dArrBlhToXyz[2];
        return true;
    }

    public boolean xyzToGeodeticOnly(double d, double d2, double d3, double[] dArr) {
        EngineeringEntity engineeringEntity;
        double[] dArrXyzToBlh;
        if (dArr == null || dArr.length < 3 || !ensureCurrentEngineering() || (engineeringEntity = this.cachedEngineering) == null || (dArrXyzToBlh = xyzToBlh(engineeringEntity, d, d2, d3)) == null) {
            return false;
        }
        dArr[0] = dArrXyzToBlh[0];
        dArr[1] = dArrXyzToBlh[1];
        dArr[2] = dArrXyzToBlh[2];
        return true;
    }

    public boolean projToGeodeticInverse(double d, double d2, double d3, double[] dArr) {
        if (ensureCurrentEngineering()) {
            return projToGeodeticInverse(this.cachedEngineering, this.cachedTransParam, d, d2, d3, dArr);
        }
        return false;
    }

    public boolean geoToAlignedProj(EngineeringEntity engineeringEntity, GnssTransParamEntity gnssTransParamEntity, double d, double d2, double d3, double[] dArr) {
        GnssParamTransform.Point3D point3DTransform3D;
        double[] dArrXyzToBlh;
        GnssParamTransform.Point2D point2DTransform2D;
        if (dArr == null || dArr.length < 3 || engineeringEntity == null) {
            return false;
        }
        double[] dArr2 = {d, d2, d3};
        int i = engineeringEntity.conversionParamsType;
        if (i <= 0) {
            return geoToProj(engineeringEntity, dArr2, dArr);
        }
        GnssParamTransform gnssParamTransformEnsureTransformLoaded = ensureTransformLoaded(engineeringEntity, gnssTransParamEntity);
        if (i == 1) {
            if (gnssParamTransformEnsureTransformLoaded.getFourParameter() == null) {
                return geoToProj(engineeringEntity, dArr2, dArr);
            }
            double[] dArr3 = new double[3];
            if (!geoToProj(engineeringEntity, dArr2, dArr3) || (point2DTransform2D = gnssParamTransformEnsureTransformLoaded.transform2D(new GnssParamTransform.Point2D(dArr3[0], dArr3[1]))) == null) {
                return false;
            }
            dArr[0] = point2DTransform2D.x;
            dArr[1] = point2DTransform2D.y;
            dArr[2] = dArr3[2];
            return true;
        }
        if (i == 2) {
            if (gnssParamTransformEnsureTransformLoaded.getSevenParameter() == null) {
                return geoToProj(engineeringEntity, dArr2, dArr);
            }
            double[] dArrBlhToXyz = blhToXyz(engineeringEntity, dArr2);
            if (dArrBlhToXyz == null || (point3DTransform3D = gnssParamTransformEnsureTransformLoaded.transform3D(new GnssParamTransform.Point3D(dArrBlhToXyz[0], dArrBlhToXyz[1], dArrBlhToXyz[2]))) == null || (dArrXyzToBlh = xyzToBlh(engineeringEntity, point3DTransform3D.x, point3DTransform3D.y, point3DTransform3D.z)) == null) {
                return false;
            }
            return geoToProj(engineeringEntity, dArrXyzToBlh, dArr);
        }
        return geoToProj(engineeringEntity, dArr2, dArr);
    }

    public boolean projToGeodeticInverse(EngineeringEntity engineeringEntity, GnssTransParamEntity gnssTransParamEntity, double d, double d2, double d3, double[] dArr) {
        double[] dArrBlhToXyz;
        GnssParamTransform.Point3D point3DTransform3D;
        double[] dArrXyzToBlh;
        GnssParamTransform.Point2D point2DTransform2D;
        if (dArr == null || dArr.length < 3 || engineeringEntity == null) {
            return false;
        }
        double[] dArr2 = {d, d2, d3};
        int i = engineeringEntity.conversionParamsType;
        if (i <= 0) {
            return projToGeo(engineeringEntity, dArr2, dArr);
        }
        GnssParamTransform gnssParamTransformEnsureTransformLoaded = ensureTransformLoaded(engineeringEntity, gnssTransParamEntity);
        if (i == 1) {
            if (gnssParamTransformEnsureTransformLoaded.getFourParameter() == null || (point2DTransform2D = gnssParamTransformEnsureTransformLoaded.transform2D(new GnssParamTransform.Point2D(d, d2), true)) == null) {
                return false;
            }
            return projToGeo(engineeringEntity, new double[]{point2DTransform2D.x, point2DTransform2D.y, d3}, dArr);
        }
        if (i == 2) {
            if (gnssParamTransformEnsureTransformLoaded.getSevenParameter() == null) {
                return false;
            }
            double[] dArr3 = new double[3];
            if (!projToGeo(engineeringEntity, dArr2, dArr3) || (dArrBlhToXyz = blhToXyz(engineeringEntity, dArr3)) == null || (point3DTransform3D = gnssParamTransformEnsureTransformLoaded.transform3D(new GnssParamTransform.Point3D(dArrBlhToXyz[0], dArrBlhToXyz[1], dArrBlhToXyz[2]), true)) == null || (dArrXyzToBlh = xyzToBlh(engineeringEntity, point3DTransform3D.x, point3DTransform3D.y, point3DTransform3D.z)) == null) {
                return false;
            }
            dArr[0] = dArrXyzToBlh[0];
            dArr[1] = dArrXyzToBlh[1];
            dArr[2] = dArrXyzToBlh[2];
            return true;
        }
        return projToGeo(engineeringEntity, dArr2, dArr);
    }

    private static GnssParamTransform ensureTransformLoaded(EngineeringEntity engineeringEntity, GnssTransParamEntity gnssTransParamEntity) {
        int i;
        GnssParamTransform gnssParamTransform = GnssParamTransformManager.getInstance().getGnssParamTransform();
        if (engineeringEntity != null && (i = engineeringEntity.conversionParamsType) > 0) {
            if (i == 1 && gnssParamTransform.getFourParameter() == null && gnssTransParamEntity != null && gnssTransParamEntity.hasParamsDetail()) {
                gnssTransParamEntity.applyToTransform(gnssParamTransform);
                return gnssParamTransform;
            }
            if (i == 2 && gnssParamTransform.getSevenParameter() == null && gnssTransParamEntity != null && gnssTransParamEntity.hasParamsDetail()) {
                gnssTransParamEntity.applyToTransform(gnssParamTransform);
            }
        }
        return gnssParamTransform;
    }

    private static void requireEngineeringProvider() {
        if (engineeringProvider == null) {
            throw new IllegalStateException("GnssCoordConvertManager 未设置工程数据源，请在 Application 中初始化");
        }
    }

    private EngineeringEntity requireCurrentEngineering() {
        EngineeringEntity engineeringEntity;
        if (!ensureCurrentEngineering() || (engineeringEntity = this.cachedEngineering) == null) {
            throw new IllegalStateException("当前无有效工程，无法进行坐标转换");
        }
        return engineeringEntity;
    }

    private double[] requireBlhToXyz(EngineeringEntity engineeringEntity, double[] dArr) {
        double[] dArrBlhToXyz = blhToXyz(engineeringEntity, dArr);
        if (dArrBlhToXyz != null) {
            return dArrBlhToXyz;
        }
        throw new IllegalStateException("坐标转换失败");
    }

    private double[] requireXyzToBlh(EngineeringEntity engineeringEntity, double d, double d2, double d3) {
        double[] dArrXyzToBlh = xyzToBlh(engineeringEntity, d, d2, d3);
        if (dArrXyzToBlh != null) {
            return dArrXyzToBlh;
        }
        throw new IllegalStateException("坐标转换失败");
    }

    private GnssCoordConvert getWgs84Scratch() {
        if (this.wgs84Scratch == null) {
            GnssCoordConvert gnssCoordConvert = new GnssCoordConvert();
            this.wgs84Scratch = gnssCoordConvert;
            gnssCoordConvert.setEllipsoid(1);
        }
        return this.wgs84Scratch;
    }

    private double[] requireWgs84XyzToBlh(double d, double d2, double d3) {
        if (d == 0.0d && d2 == 0.0d && d3 == 0.0d) {
            return new double[]{0.0d, 0.0d, 0.0d};
        }
        double[] dArr = new double[3];
        if (getWgs84Scratch().xyzToBlh(new double[]{d, d2, d3}, dArr)) {
            return dArr;
        }
        throw new IllegalStateException("坐标转换失败");
    }

    private boolean geoToProj(EngineeringEntity engineeringEntity, double[] dArr, double[] dArr2) {
        if (engineeringEntity == null || dArr == null || dArr2 == null || dArr2.length < 3) {
            return false;
        }
        applyEngineering(engineeringEntity);
        if (!getGnssCoordConvert().geoToProj(dArr, dArr2)) {
            return false;
        }
        dArr2[0] = dArr[0] == 0.0d ? 0.0d : dArr2[0];
        dArr2[1] = dArr[1] != 0.0d ? dArr2[1] : 0.0d;
        dArr2[2] = dArr[2];
        return true;
    }

    private boolean projToGeo(EngineeringEntity engineeringEntity, double[] dArr, double[] dArr2) {
        if (engineeringEntity == null || dArr == null || dArr2 == null || dArr2.length < 3) {
            return false;
        }
        applyEngineering(engineeringEntity);
        if (!getGnssCoordConvert().projToGeo(dArr, dArr2)) {
            return false;
        }
        dArr2[0] = dArr[0] == 0.0d ? 0.0d : dArr2[0];
        dArr2[1] = dArr[1] != 0.0d ? dArr2[1] : 0.0d;
        dArr2[2] = dArr[2];
        return true;
    }

    private double[] blhToXyz(EngineeringEntity engineeringEntity, double[] dArr) {
        if (engineeringEntity == null || dArr == null || dArr.length < 3) {
            return null;
        }
        applyEngineering(engineeringEntity);
        double[] dArr2 = new double[3];
        if (getGnssCoordConvert().blhToXyz(dArr, dArr2)) {
            return dArr2;
        }
        return null;
    }

    private double[] xyzToBlh(EngineeringEntity engineeringEntity, double d, double d2, double d3) {
        if (engineeringEntity == null) {
            return null;
        }
        if (d == 0.0d && d2 == 0.0d && d3 == 0.0d) {
            return new double[]{0.0d, 0.0d, 0.0d};
        }
        applyEngineering(engineeringEntity);
        double[] dArr = new double[3];
        if (getGnssCoordConvert().xyzToBlh(new double[]{d, d2, d3}, dArr)) {
            return dArr;
        }
        return null;
    }
}
