package com.qianhe.baselib.bean;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.Objects;
import org.locationtech.proj4j.parser.Proj4Keyword;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class EngineeringEntity implements Serializable {
    public transient long belongUid;

    @SerializedName("conversionParams_type")
    public int conversionParamsType;
    public transient long createTime;

    @SerializedName("is_current")
    public int currentUsage;

    @SerializedName("custom_ellipsoid_params")
    public CustomEllipsoidParams customEllipsoidParams;

    @SerializedName("edit_state")
    public int editState;

    @SerializedName("ellipsoid_type")
    public int ellipsoidType;

    @SerializedName("engineering_id")
    public long engineeringId;

    @SerializedName("engineering_uuid")
    public String engineeringUuid;

    @SerializedName("gaussKruger_params")
    public GaussKrugerParams gaussKrugerParams;
    public long id;
    public String name = "";

    @SerializedName("projection_type")
    public int projectionType;

    @SerializedName("trans_param")
    public GnssTransParamEntity transParam;

    @SerializedName("trans_param_id")
    public long transParamId;
    public long transParamLocalId;

    @SerializedName("transverseMercator_params")
    public TransverseMercatorParams transverseMercatorParams;
    public transient long updateTime;

    @SerializedName("utm_params")
    public UTMParams utmParams;
    public transient long version;

    public static class CustomEllipsoidParams implements Serializable {
        public double a = 0.0d;
        public double f = 500000.0d;

        public String toString() {
            return "CustomEllipsoidParams{a=" + this.a + ", f=" + this.f + '}';
        }
    }

    public static class GaussKrugerParams implements Serializable {
        public int type = 1;

        @SerializedName(alternate = {Proj4Keyword.lon_0}, value = "lon0")
        public double lon0 = 0.0d;

        @SerializedName(alternate = {Proj4Keyword.lat_0}, value = "lat0")
        public double lat0 = 0.0d;
        public double fe = 500000.0d;
        public double fn = 0.0d;
        public double k0 = 1.0d;

        @SerializedName("projection_height")
        public double projectionHeight = 0.0d;

        @SerializedName("deformation_method")
        public int deformationMethod = 0;

        public String toString() {
            return "GaussKrugerParams{type=" + this.type + ", lon0=" + this.lon0 + ", lat0=" + this.lat0 + ", fe=" + this.fe + ", fn=" + this.fn + ", k0=" + this.k0 + ", projectionHeight=" + this.projectionHeight + ", deformationMethod=" + this.deformationMethod + '}';
        }
    }

    public static class UTMParams implements Serializable {
        public int type = 2;
        public int zone = 1;

        @SerializedName("is_north")
        public boolean isNorth = true;

        @SerializedName("projection_height")
        public double projectionHeight = 0.0d;

        @SerializedName("deformation_method")
        public int deformationMethod = 0;

        public String toString() {
            return "UTMParams{type=" + this.type + ", zone=" + this.zone + ", isNorth=" + this.isNorth + ", projectionHeight=" + this.projectionHeight + ", deformationMethod=" + this.deformationMethod + '}';
        }
    }

    public static class TransverseMercatorParams implements Serializable {
        public int type = 3;

        @SerializedName(alternate = {Proj4Keyword.lon_0}, value = "lon0")
        public double lon0 = 0.0d;

        @SerializedName(alternate = {Proj4Keyword.lat_0}, value = "lat0")
        public double lat0 = 0.0d;
        public double fe = 500000.0d;
        public double fn = 0.0d;
        public double k0 = 1.0d;

        @SerializedName("projection_height")
        public double projectionHeight = 0.0d;

        @SerializedName("deformation_method")
        public int deformationMethod = 0;

        public String toString() {
            return "TransverseMercatorParams{type=" + this.type + ", lon0=" + this.lon0 + ", lat0=" + this.lat0 + ", fe=" + this.fe + ", fn=" + this.fn + ", k0=" + this.k0 + ", projectionHeight=" + this.projectionHeight + ", deformationMethod=" + this.deformationMethod + '}';
        }
    }

    public boolean hasConversionParams() {
        if (this.transParamLocalId > 0) {
            return true;
        }
        GnssTransParamEntity gnssTransParamEntity = this.transParam;
        return gnssTransParamEntity != null && gnssTransParamEntity.hasParamsDetail();
    }

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            EngineeringEntity engineeringEntity = (EngineeringEntity) obj;
            if (this.id == engineeringEntity.id && this.engineeringId == engineeringEntity.engineeringId && this.createTime == engineeringEntity.createTime && this.updateTime == engineeringEntity.updateTime && this.ellipsoidType == engineeringEntity.ellipsoidType && this.projectionType == engineeringEntity.projectionType && this.conversionParamsType == engineeringEntity.conversionParamsType && this.transParamId == engineeringEntity.transParamId && this.transParamLocalId == engineeringEntity.transParamLocalId && this.editState == engineeringEntity.editState && this.currentUsage == engineeringEntity.currentUsage && this.version == engineeringEntity.version && Objects.equals(this.engineeringUuid, engineeringEntity.engineeringUuid) && Objects.equals(this.name, engineeringEntity.name) && Objects.equals(this.gaussKrugerParams, engineeringEntity.gaussKrugerParams) && Objects.equals(this.utmParams, engineeringEntity.utmParams) && Objects.equals(this.transverseMercatorParams, engineeringEntity.transverseMercatorParams) && Objects.equals(this.transParam, engineeringEntity.transParam)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.id), Long.valueOf(this.engineeringId), this.engineeringUuid, Long.valueOf(this.createTime), Long.valueOf(this.updateTime), this.name, Integer.valueOf(this.ellipsoidType), this.customEllipsoidParams, Integer.valueOf(this.projectionType), this.gaussKrugerParams, this.utmParams, this.transverseMercatorParams, Integer.valueOf(this.conversionParamsType), Long.valueOf(this.transParamId), Long.valueOf(this.transParamLocalId), this.transParam, Integer.valueOf(this.editState), Integer.valueOf(this.currentUsage), Long.valueOf(this.version));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("EngineeringEntity{id=");
        sb.append(this.id);
        sb.append(", engineeringId=");
        sb.append(this.engineeringId);
        sb.append(", engineeringUuid='");
        sb.append(this.engineeringUuid);
        sb.append(AngleFormat.CH_MIN_SYMBOL);
        sb.append(", createTime=");
        sb.append(this.createTime);
        sb.append(", updateTime=");
        sb.append(this.updateTime);
        sb.append(", name='");
        sb.append(this.name);
        sb.append(AngleFormat.CH_MIN_SYMBOL);
        sb.append(", ellipsoidType=");
        sb.append(this.ellipsoidType);
        sb.append(", customEllipsoidParams=");
        CustomEllipsoidParams customEllipsoidParams = this.customEllipsoidParams;
        sb.append(customEllipsoidParams != null ? customEllipsoidParams.toString() : "");
        sb.append(", projectionType=");
        sb.append(this.projectionType);
        sb.append(", gaussKrugerParams=");
        GaussKrugerParams gaussKrugerParams = this.gaussKrugerParams;
        sb.append(gaussKrugerParams != null ? gaussKrugerParams.toString() : "");
        sb.append(", utmParams=");
        UTMParams uTMParams = this.utmParams;
        sb.append(uTMParams != null ? uTMParams.toString() : "");
        sb.append(", transverseMercatorParams=");
        TransverseMercatorParams transverseMercatorParams = this.transverseMercatorParams;
        sb.append(transverseMercatorParams != null ? transverseMercatorParams.toString() : "");
        sb.append(", conversionParamsType=");
        sb.append(this.conversionParamsType);
        sb.append(", transParamId=");
        sb.append(this.transParamId);
        sb.append(", transParamLocalId=");
        sb.append(this.transParamLocalId);
        sb.append(", transParam=");
        GnssTransParamEntity gnssTransParamEntity = this.transParam;
        sb.append(gnssTransParamEntity != null ? gnssTransParamEntity.toString() : "");
        sb.append(", editState=");
        sb.append(this.editState);
        sb.append(", currentUsage=");
        sb.append(this.currentUsage);
        sb.append(", version=");
        sb.append(this.version);
        sb.append('}');
        return sb.toString();
    }
}
