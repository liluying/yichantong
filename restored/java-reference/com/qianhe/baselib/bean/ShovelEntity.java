package com.qianhe.baselib.bean;

import com.google.gson.Gson;
import java.io.Serializable;
import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShovelEntity implements Serializable {
    private static final Gson GSON = new Gson();
    public String autoGenerateParams;
    private transient ShovelAutoGenerateParams autoGenerateParamsCache;
    public long belong_uid;
    public long bucket_id;
    public String bucket_uuid = "";
    public long createTime;
    public long localId;
    public String measureParams;
    private transient ShovelMeasureParams measureParamsCache;
    public int mode;
    public String name;
    public String param;
    public int showUnit;
    public long updateTime;
    public long version;

    public ShovelMeasureParams getMeasureParamsObj() {
        if (this.measureParamsCache == null) {
            String str = this.measureParams;
            if (str != null && !str.isEmpty()) {
                this.measureParamsCache = (ShovelMeasureParams) GSON.fromJson(this.measureParams, ShovelMeasureParams.class);
            } else {
                this.measureParamsCache = new ShovelMeasureParams();
            }
        }
        return this.measureParamsCache;
    }

    public void setMeasureParamsObj(ShovelMeasureParams shovelMeasureParams) {
        clearAutoGenerateParams();
        if (shovelMeasureParams == null) {
            shovelMeasureParams = new ShovelMeasureParams();
        }
        this.measureParamsCache = shovelMeasureParams;
        shovelMeasureParams.syncLRWithHalfWidths();
        this.measureParams = GSON.toJson(this.measureParamsCache);
    }

    public ShovelAutoGenerateParams getAutoGenerateParamsObj() {
        if (this.autoGenerateParamsCache == null) {
            String str = this.autoGenerateParams;
            if (str != null && !str.isEmpty()) {
                this.autoGenerateParamsCache = (ShovelAutoGenerateParams) GSON.fromJson(this.autoGenerateParams, ShovelAutoGenerateParams.class);
            } else {
                this.autoGenerateParamsCache = new ShovelAutoGenerateParams();
            }
        }
        return this.autoGenerateParamsCache;
    }

    public void setAutoGenerateParamsObj(ShovelAutoGenerateParams shovelAutoGenerateParams) {
        clearMeasureParams();
        if (shovelAutoGenerateParams == null) {
            shovelAutoGenerateParams = new ShovelAutoGenerateParams();
        }
        this.autoGenerateParamsCache = shovelAutoGenerateParams;
        this.autoGenerateParams = GSON.toJson(shovelAutoGenerateParams);
    }

    public boolean usesAutoGenerateParams() {
        String str = this.autoGenerateParams;
        return (str == null || str.isEmpty() || getAutoGenerateParamsObj().isEmpty()) ? false : true;
    }

    public void clearMeasureParams() {
        this.measureParams = null;
        this.measureParamsCache = null;
    }

    public void clearAutoGenerateParams() {
        this.autoGenerateParams = null;
        this.autoGenerateParamsCache = null;
    }

    public double getG1() {
        return getMeasureParamsObj().G1;
    }

    public void setG1(double d) {
        getMeasureParamsObj().G1 = d;
        this.measureParams = GSON.toJson(this.measureParamsCache);
    }

    public double getG2() {
        return getMeasureParamsObj().G2;
    }

    public void setG2(double d) {
        getMeasureParamsObj().G2 = d;
        this.measureParams = GSON.toJson(this.measureParamsCache);
    }

    public double getG3() {
        return getMeasureParamsObj().G3;
    }

    public void setG3(double d) {
        getMeasureParamsObj().G3 = d;
        this.measureParams = GSON.toJson(this.measureParamsCache);
    }

    public double getLy() {
        return getMeasureParamsObj().Ly;
    }

    public void setLy(double d) {
        getMeasureParamsObj().Ly = d;
        this.measureParams = GSON.toJson(this.measureParamsCache);
    }

    public double getRy() {
        return getMeasureParamsObj().Ry;
    }

    public void setRy(double d) {
        getMeasureParamsObj().Ry = d;
        this.measureParams = GSON.toJson(this.measureParamsCache);
    }

    public double getAB() {
        return getMeasureParamsObj().AB;
    }

    public void setAB(double d) {
        getMeasureParamsObj().AB = d;
        this.measureParams = GSON.toJson(this.measureParamsCache);
    }

    public void setMeasureValues(double d, double d2, double d3, double d4, double d5, double d6) {
        ShovelMeasureParams shovelMeasureParams = new ShovelMeasureParams();
        shovelMeasureParams.G1 = d;
        shovelMeasureParams.G2 = d2;
        shovelMeasureParams.G3 = d3;
        shovelMeasureParams.Ly = d4;
        shovelMeasureParams.Ry = d5;
        shovelMeasureParams.AB = d6;
        setMeasureParamsObj(shovelMeasureParams);
    }

    public void setDistanceMeasureValues(double d, double d2, double d3, double d4, double d5, double d6) {
        ShovelMeasureParams shovelMeasureParams = new ShovelMeasureParams();
        shovelMeasureParams.NT = d;
        shovelMeasureParams.AT = d2;
        shovelMeasureParams.NA = d3;
        shovelMeasureParams.Ly = d4;
        shovelMeasureParams.Ry = d5;
        shovelMeasureParams.AB = d6;
        if (d5 == 0.0d) {
            d5 = d4;
        }
        shovelMeasureParams.LR = d4 + d5;
        shovelMeasureParams.syncLRWithHalfWidths();
        setMeasureParamsObj(shovelMeasureParams);
    }

    public double getNT() {
        return getMeasureParamsObj().NT;
    }

    public double getAT() {
        return getMeasureParamsObj().AT;
    }

    public double getNA() {
        return getMeasureParamsObj().NA;
    }

    public double getLR() {
        return getMeasureParamsObj().resolveLR();
    }

    public boolean usesDistanceMeasure() {
        return getMeasureParamsObj().usesDistanceMeasure();
    }

    public boolean resolveDiagramDistanceMeasure() {
        if (usesAutoGenerateParams()) {
            Boolean bool = getAutoGenerateParamsObj().useDistanceMeasure;
            if (bool != null) {
                return bool.booleanValue();
            }
            return true;
        }
        return usesDistanceMeasure();
    }

    public static boolean resolveSourceDistanceMeasure(ShovelEntity shovelEntity) {
        if (shovelEntity == null) {
            return true;
        }
        if (shovelEntity.usesAutoGenerateParams()) {
            Boolean bool = shovelEntity.getAutoGenerateParamsObj().useDistanceMeasure;
            if (bool != null) {
                return bool.booleanValue();
            }
            return true;
        }
        return shovelEntity.usesDistanceMeasure();
    }

    public void syncParamsToJson() {
        if (usesAutoGenerateParams()) {
            clearMeasureParams();
            ShovelAutoGenerateParams shovelAutoGenerateParams = this.autoGenerateParamsCache;
            if (shovelAutoGenerateParams != null) {
                this.autoGenerateParams = GSON.toJson(shovelAutoGenerateParams);
                return;
            }
            return;
        }
        clearAutoGenerateParams();
        ShovelMeasureParams shovelMeasureParams = this.measureParamsCache;
        if (shovelMeasureParams != null) {
            this.measureParams = GSON.toJson(shovelMeasureParams);
            return;
        }
        String str = this.measureParams;
        if (str == null || str.isEmpty()) {
            return;
        }
        this.measureParamsCache = (ShovelMeasureParams) GSON.fromJson(this.measureParams, ShovelMeasureParams.class);
    }

    public void ensureParamsSerialized() {
        if (usesAutoGenerateParams()) {
            ShovelAutoGenerateParams shovelAutoGenerateParams = this.autoGenerateParamsCache;
            if (shovelAutoGenerateParams != null) {
                this.autoGenerateParams = GSON.toJson(shovelAutoGenerateParams);
                return;
            }
            String str = this.autoGenerateParams;
            if (str == null || str.isEmpty()) {
                ShovelAutoGenerateParams autoGenerateParamsObj = getAutoGenerateParamsObj();
                if (autoGenerateParamsObj.isEmpty()) {
                    return;
                }
                this.autoGenerateParams = GSON.toJson(autoGenerateParamsObj);
                return;
            }
            return;
        }
        ShovelMeasureParams shovelMeasureParams = this.measureParamsCache;
        if (shovelMeasureParams != null) {
            this.measureParams = GSON.toJson(shovelMeasureParams);
            return;
        }
        String str2 = this.measureParams;
        if (str2 == null || str2.isEmpty()) {
            ShovelMeasureParams measureParamsObj = getMeasureParamsObj();
            if (measureParamsObj.isEmpty()) {
                return;
            }
            this.measureParams = GSON.toJson(measureParamsObj);
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            ShovelEntity shovelEntity = (ShovelEntity) obj;
            if (this.localId == shovelEntity.localId && this.belong_uid == shovelEntity.belong_uid && this.createTime == shovelEntity.createTime && this.updateTime == shovelEntity.updateTime && this.bucket_id == shovelEntity.bucket_id && this.mode == shovelEntity.mode && this.showUnit == shovelEntity.showUnit && this.version == shovelEntity.version && Objects.equals(this.name, shovelEntity.name) && Objects.equals(this.bucket_uuid, shovelEntity.bucket_uuid) && Objects.equals(this.measureParams, shovelEntity.measureParams) && Objects.equals(this.autoGenerateParams, shovelEntity.autoGenerateParams) && Objects.equals(this.param, shovelEntity.param)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.localId), Long.valueOf(this.belong_uid), Long.valueOf(this.createTime), Long.valueOf(this.updateTime), this.name, Long.valueOf(this.bucket_id), this.bucket_uuid, this.measureParams, this.autoGenerateParams, Integer.valueOf(this.mode), this.param, Integer.valueOf(this.showUnit), Long.valueOf(this.version));
    }

    public String toString() {
        return "ShovelEntity{localId=" + this.localId + ", createTime=" + this.createTime + ", updateTime=" + this.updateTime + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", belong_uid=" + this.belong_uid + ", bucket_id=" + this.bucket_id + ", bucket_uuid='" + this.bucket_uuid + AngleFormat.CH_MIN_SYMBOL + ", measureParams='" + this.measureParams + AngleFormat.CH_MIN_SYMBOL + ", autoGenerateParams='" + this.autoGenerateParams + AngleFormat.CH_MIN_SYMBOL + ", mode=" + this.mode + ", param='" + this.param + AngleFormat.CH_MIN_SYMBOL + ", showUnit=" + this.showUnit + ", version=" + this.version + '}';
    }
}
