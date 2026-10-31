package com.qianhe.baselib.bean;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.google.gson.reflect.TypeToken;
import com.qh.yctdevice.GnssParamTransform;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GnssTransParamEntity implements Serializable {
    private static final double SCALE_PPM_FACTOR = 1000000.0d;

    @SerializedName("belong_uid")
    public long belongUid;
    public transient List<GnssTransParamControlPointEntity> controlPoints;
    public String controlPointsJson;

    @SerializedName("create_epoch")
    public long createTime;
    public long localId;
    public String name = "";

    @SerializedName("param_type")
    public int paramType;
    public String paramsDetail;
    public int state;

    @SerializedName("id")
    public long transParamId;

    @SerializedName("uuid")
    public String transParamUuid;

    @SerializedName("update_epoch")
    public long updateTime;
    public long version;
    private static final Gson GSON = new Gson();
    private static final Type CONTROL_POINT_LIST_TYPE = new TypeToken<List<GnssTransParamControlPointEntity>>() { // from class: com.qianhe.baselib.bean.GnssTransParamEntity.1
    }.getType();

    public static class FourParamsDetail implements Serializable {
        public double dx;
        public double dy;
        public double rotation;
        public double scale = 1.0d;
    }

    public static class SevenParamsDetail implements Serializable {
        public double dx;
        public double dy;
        public double dz;
        public double rx;
        public double ry;
        public double rz;
        public double scale = 1.0d;
    }

    public static double scaleKToPpm(double d) {
        return (d - 1.0d) * 1000000.0d;
    }

    public static double scalePpmToK(double d) {
        return (d / 1000000.0d) + 1.0d;
    }

    public static double scaleStoredToK(double d) {
        return (d <= 0.5d || d >= 1.5d) ? (d / 1000000.0d) + 1.0d : d;
    }

    public FourParamsDetail getFourParamsDetail() {
        String str;
        if (this.paramType != 1 || (str = this.paramsDetail) == null || str.isEmpty()) {
            return null;
        }
        return (FourParamsDetail) GSON.fromJson(this.paramsDetail, FourParamsDetail.class);
    }

    public SevenParamsDetail getSevenParamsDetail() {
        String str;
        if (this.paramType != 2 || (str = this.paramsDetail) == null || str.isEmpty()) {
            return null;
        }
        return (SevenParamsDetail) GSON.fromJson(this.paramsDetail, SevenParamsDetail.class);
    }

    public void setFourParamsDetail(FourParamsDetail fourParamsDetail) {
        this.paramType = 1;
        this.paramsDetail = fourParamsDetail != null ? GSON.toJson(fourParamsDetail) : null;
    }

    public void setSevenParamsDetail(SevenParamsDetail sevenParamsDetail) {
        this.paramType = 2;
        this.paramsDetail = sevenParamsDetail != null ? GSON.toJson(sevenParamsDetail) : null;
    }

    public boolean hasParamsDetail() {
        String str = this.paramsDetail;
        return (str == null || str.isEmpty()) ? false : true;
    }

    public static double normalizeScaleToK(double d) {
        return scaleStoredToK(d);
    }

    public static double normalizeScaleToPpm(double d) {
        return (d <= 0.5d || d >= 1.5d) ? d : scaleKToPpm(d);
    }

    public static boolean isValidScalePpm(double d) {
        return !Double.isNaN(d) && !Double.isInfinite(d) && d > -500000.0d && d < 500000.0d;
    }

    public static boolean isValidScaleK(double d) {
        return !Double.isNaN(d) && !Double.isInfinite(d) && d > 0.5d && d < 1.5d;
    }

    public void normalizeParamsDetailScaleToK() {
        SevenParamsDetail sevenParamsDetail;
        if (hasParamsDetail()) {
            int i = this.paramType;
            if (i == 1) {
                FourParamsDetail fourParamsDetail = getFourParamsDetail();
                if (fourParamsDetail == null) {
                    return;
                }
                double dNormalizeScaleToK = normalizeScaleToK(fourParamsDetail.scale);
                if (dNormalizeScaleToK != fourParamsDetail.scale) {
                    fourParamsDetail.scale = dNormalizeScaleToK;
                    setFourParamsDetail(fourParamsDetail);
                    return;
                }
                return;
            }
            if (i != 2 || (sevenParamsDetail = getSevenParamsDetail()) == null) {
                return;
            }
            double dNormalizeScaleToK2 = normalizeScaleToK(sevenParamsDetail.scale);
            if (dNormalizeScaleToK2 != sevenParamsDetail.scale) {
                sevenParamsDetail.scale = dNormalizeScaleToK2;
                setSevenParamsDetail(sevenParamsDetail);
            }
        }
    }

    public void applyToTransform(GnssParamTransform gnssParamTransform) {
        SevenParamsDetail sevenParamsDetail;
        if (gnssParamTransform == null || !hasParamsDetail()) {
            return;
        }
        int i = this.paramType;
        if (i == 1) {
            FourParamsDetail fourParamsDetail = getFourParamsDetail();
            if (fourParamsDetail == null) {
                return;
            }
            GnssParamTransform.FourParameter fourParameter = new GnssParamTransform.FourParameter();
            fourParameter.dx = fourParamsDetail.dx;
            fourParameter.dy = fourParamsDetail.dy;
            fourParameter.r = fourParamsDetail.rotation;
            fourParameter.scale = scaleStoredToK(fourParamsDetail.scale);
            gnssParamTransform.setFourParameter(fourParameter);
            return;
        }
        if (i != 2 || (sevenParamsDetail = getSevenParamsDetail()) == null) {
            return;
        }
        GnssParamTransform.SevenParameter sevenParameter = new GnssParamTransform.SevenParameter();
        sevenParameter.dx = sevenParamsDetail.dx;
        sevenParameter.dy = sevenParamsDetail.dy;
        sevenParameter.dz = sevenParamsDetail.dz;
        sevenParameter.rx = sevenParamsDetail.rx;
        sevenParameter.ry = sevenParamsDetail.ry;
        sevenParameter.rz = sevenParamsDetail.rz;
        sevenParameter.scale = scaleStoredToK(sevenParamsDetail.scale);
        gnssParamTransform.setSevenParameter(sevenParameter);
    }

    public List<GnssTransParamControlPointEntity> getControlPointList() {
        List<GnssTransParamControlPointEntity> list = this.controlPoints;
        if (list != null) {
            return list;
        }
        String str = this.controlPointsJson;
        if (str == null || str.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            this.controlPoints = arrayList;
            return arrayList;
        }
        String strTrim = this.controlPointsJson.trim();
        if (strTrim.startsWith("[")) {
            this.controlPoints = (List) GSON.fromJson(this.controlPointsJson, CONTROL_POINT_LIST_TYPE);
        } else {
            this.controlPoints = parseControlPointsCsv(strTrim);
        }
        if (this.controlPoints == null) {
            this.controlPoints = new ArrayList();
        }
        Iterator<GnssTransParamControlPointEntity> it = this.controlPoints.iterator();
        while (it.hasNext()) {
            it.next().applyParamType(this.paramType);
        }
        return this.controlPoints;
    }

    public void setControlPointList(List<GnssTransParamControlPointEntity> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.controlPoints = list;
        Iterator<GnssTransParamControlPointEntity> it = list.iterator();
        while (it.hasNext()) {
            it.next().applyParamType(this.paramType);
        }
        this.controlPointsJson = this.controlPoints.isEmpty() ? null : formatControlPointsCsv(this.controlPoints);
    }

    public static String formatControlPointsCsv(List<GnssTransParamControlPointEntity> list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            if (i > 0) {
                sb.append('\n');
            }
            sb.append(formatControlPointCsvLine(list.get(i)));
        }
        return sb.toString();
    }

    public static String formatControlPointCsvLine(GnssTransParamControlPointEntity gnssTransParamControlPointEntity) {
        return hasMeasurePoint(gnssTransParamControlPointEntity) ? String.format(Locale.US, "%.4f,%.4f,%.4f,%.4f,%.4f,%.4f", Double.valueOf(gnssTransParamControlPointEntity.dstX), Double.valueOf(gnssTransParamControlPointEntity.dstY), Double.valueOf(gnssTransParamControlPointEntity.dstZ), Double.valueOf(gnssTransParamControlPointEntity.srcX), Double.valueOf(gnssTransParamControlPointEntity.srcY), Double.valueOf(gnssTransParamControlPointEntity.srcZ)) : String.format(Locale.US, "%.4f,%.4f,%.4f", Double.valueOf(gnssTransParamControlPointEntity.dstX), Double.valueOf(gnssTransParamControlPointEntity.dstY), Double.valueOf(gnssTransParamControlPointEntity.dstZ));
    }

    public static List<GnssTransParamControlPointEntity> parseControlPointsCsv(String str) {
        GnssTransParamControlPointEntity controlPointCsvLine;
        ArrayList arrayList = new ArrayList();
        if (str != null && !str.isEmpty()) {
            for (String str2 : str.split("\\r?\\n")) {
                String strTrim = str2.trim();
                if (!strTrim.isEmpty() && (controlPointCsvLine = parseControlPointCsvLine(strTrim)) != null) {
                    arrayList.add(controlPointCsvLine);
                }
            }
        }
        return arrayList;
    }

    public static GnssTransParamControlPointEntity parseControlPointCsvLine(String str) {
        String[] strArrSplit = str.split(",");
        if (strArrSplit.length != 3 && strArrSplit.length != 6) {
            return null;
        }
        double[] dArr = new double[strArrSplit.length];
        for (int i = 0; i < strArrSplit.length; i++) {
            try {
                dArr[i] = Double.parseDouble(strArrSplit[i].trim());
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        GnssTransParamControlPointEntity gnssTransParamControlPointEntity = new GnssTransParamControlPointEntity();
        gnssTransParamControlPointEntity.dstX = dArr[0];
        gnssTransParamControlPointEntity.dstY = dArr[1];
        gnssTransParamControlPointEntity.dstZ = dArr[2];
        if (strArrSplit.length == 6) {
            gnssTransParamControlPointEntity.srcX = dArr[3];
            gnssTransParamControlPointEntity.srcY = dArr[4];
            gnssTransParamControlPointEntity.srcZ = dArr[5];
        }
        return gnssTransParamControlPointEntity;
    }

    private static boolean hasMeasurePoint(GnssTransParamControlPointEntity gnssTransParamControlPointEntity) {
        return (gnssTransParamControlPointEntity.srcX == 0.0d && gnssTransParamControlPointEntity.srcY == 0.0d && gnssTransParamControlPointEntity.srcZ == 0.0d) ? false : true;
    }

    public JSONArray buildControlPointsJsonArray() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        try {
            for (GnssTransParamControlPointEntity gnssTransParamControlPointEntity : getControlPointList()) {
                gnssTransParamControlPointEntity.applyParamType(this.paramType);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("src_x", gnssTransParamControlPointEntity.srcX);
                jSONObject.put("src_y", gnssTransParamControlPointEntity.srcY);
                jSONObject.put("dst_x", gnssTransParamControlPointEntity.dstX);
                jSONObject.put("dst_y", gnssTransParamControlPointEntity.dstY);
                if (this.paramType == 1) {
                    jSONObject.put("src_z", 0);
                    jSONObject.put("dst_z", 0);
                } else {
                    jSONObject.put("src_z", gnssTransParamControlPointEntity.srcZ);
                    jSONObject.put("dst_z", gnssTransParamControlPointEntity.dstZ);
                }
                jSONArray.put(jSONObject);
            }
        } catch (Exception unused) {
        }
        return jSONArray;
    }

    public JSONObject buildParamsDetailJsonObject() {
        String str = this.paramsDetail;
        if (str != null && !str.isEmpty()) {
            try {
                return new JSONObject(this.paramsDetail);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            GnssTransParamEntity gnssTransParamEntity = (GnssTransParamEntity) obj;
            if (this.localId == gnssTransParamEntity.localId && this.transParamId == gnssTransParamEntity.transParamId && this.createTime == gnssTransParamEntity.createTime && this.updateTime == gnssTransParamEntity.updateTime && this.version == gnssTransParamEntity.version && this.belongUid == gnssTransParamEntity.belongUid && this.state == gnssTransParamEntity.state && this.paramType == gnssTransParamEntity.paramType && Objects.equals(this.transParamUuid, gnssTransParamEntity.transParamUuid) && Objects.equals(this.name, gnssTransParamEntity.name) && Objects.equals(this.paramsDetail, gnssTransParamEntity.paramsDetail) && Objects.equals(this.controlPointsJson, gnssTransParamEntity.controlPointsJson)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.localId), Long.valueOf(this.transParamId), this.transParamUuid, Long.valueOf(this.createTime), Long.valueOf(this.updateTime), Long.valueOf(this.version), Long.valueOf(this.belongUid), Integer.valueOf(this.state), this.name, Integer.valueOf(this.paramType), this.paramsDetail, this.controlPointsJson);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("GnssTransParamEntity{localId=");
        sb.append(this.localId);
        sb.append(", transParamId=");
        sb.append(this.transParamId);
        sb.append(", transParamUuid='");
        sb.append(this.transParamUuid);
        sb.append(AngleFormat.CH_MIN_SYMBOL);
        sb.append(", createTime=");
        sb.append(this.createTime);
        sb.append(", updateTime=");
        sb.append(this.updateTime);
        sb.append(", version=");
        sb.append(this.version);
        sb.append(", belongUid=");
        sb.append(this.belongUid);
        sb.append(", state=");
        sb.append(this.state);
        sb.append(", name='");
        sb.append(this.name);
        sb.append(AngleFormat.CH_MIN_SYMBOL);
        sb.append(", paramType=");
        sb.append(this.paramType);
        sb.append(", paramsDetail='");
        sb.append(this.paramsDetail);
        sb.append(AngleFormat.CH_MIN_SYMBOL);
        sb.append(", controlPointsJson='");
        sb.append(this.controlPointsJson);
        sb.append(AngleFormat.CH_MIN_SYMBOL);
        sb.append(", controlPoints=");
        List<GnssTransParamControlPointEntity> list = this.controlPoints;
        sb.append(list != null ? list.toString() : "");
        sb.append('}');
        return sb.toString();
    }
}
