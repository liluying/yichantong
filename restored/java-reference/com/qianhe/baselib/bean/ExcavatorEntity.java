package com.qianhe.baselib.bean;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorEntity implements Serializable {
    private static final Gson GSON = new Gson();
    public double AD;
    public double Ax;
    public double Ay;
    public double BC;
    public double BD;
    public double CD;
    public double Dx;
    public double HA;
    public double aDeviceHeading;
    public double aDevicePitch;
    public double aDeviceRoll;
    public String autoGenerateParams;
    private transient ShovelAutoGenerateParams autoGenerateParamsCache;
    public double bDeviceHeading;
    public double bDevicePitch;
    public double bDeviceRoll;
    public double bSensorHeading;
    public double bSensorPitch;
    public double bSensorRoll;

    @SerializedName("calib_params")
    public String calibParams;

    @SerializedName("calib_params_detail")
    public String calibParamsDetail;

    @SerializedName("calib_params_id")
    public String calibParamsId;
    public String calibSoInputs;
    private transient CalibSoInputParams calibSoInputsCache;

    @SerializedName("id")
    public long calibrateId;

    @SerializedName("uuid")
    public String calibrateUUid;

    @SerializedName("create_epoch")
    public long createTime;
    public double dcDeviceHeading;
    public double dcDevicePitch;
    public double dcDeviceRoll;
    public double dcSensorHeading;
    public double dcSensorPitch;
    public double dcSensorRoll;
    public double deviceHeading;
    public double deviceHeight;
    public double devicePitch;
    public double deviceRoll;
    public boolean distanceBucketMeasure;
    public String excavatorParams;
    private transient ExcavatorParams excavatorParamsCache;
    public double leftDist;
    public long localId;
    public String measureParams;
    private transient ShovelMeasureParams measureParamsCache;
    public int method;

    @SerializedName("params_type")
    public int mode;
    public double phaseToHang;
    public double pq;
    public double[][] reDeviceAttitudes;
    public double[][] reSensorAttitudes;
    public double rigthDist;
    public double sensorHeading;
    public double sensorPitch;
    public double sensorRoll;
    public double spanDist;

    @SerializedName("update_epoch")
    public long updateTime;

    @SerializedName("belong_uid")
    public long userId;
    public long version;
    public String name = "";
    public int showUnit = 0;
    public ShovelEntity shovelEntity = new ShovelEntity();

    public ExcavatorParams getExcavatorParamsObj() {
        if (this.excavatorParamsCache == null) {
            String str = this.excavatorParams;
            if (str != null && !str.isEmpty()) {
                this.excavatorParamsCache = (ExcavatorParams) GSON.fromJson(this.excavatorParams, ExcavatorParams.class);
            } else {
                ExcavatorParams excavatorParams = new ExcavatorParams();
                this.excavatorParamsCache = excavatorParams;
                excavatorParams.HA = this.HA;
                excavatorParams.pq = this.pq;
                excavatorParams.Ay = this.Ay;
                excavatorParams.Ax = this.Ax;
                excavatorParams.Dx = this.Dx;
                excavatorParams.AD = this.AD;
                excavatorParams.BC = this.BC;
                excavatorParams.CD = this.CD;
                excavatorParams.BD = this.BD;
            }
        }
        return this.excavatorParamsCache;
    }

    public void setExcavatorParamsObj(ExcavatorParams excavatorParams) {
        if (excavatorParams == null) {
            excavatorParams = new ExcavatorParams();
        }
        this.excavatorParamsCache = excavatorParams;
        this.HA = excavatorParams.HA;
        this.pq = excavatorParams.pq;
        this.Ay = excavatorParams.Ay;
        this.Ax = excavatorParams.Ax;
        this.Dx = excavatorParams.Dx;
        this.AD = excavatorParams.AD;
        this.BC = excavatorParams.BC;
        this.CD = excavatorParams.CD;
        this.BD = excavatorParams.BD;
        this.excavatorParams = GSON.toJson(excavatorParams);
    }

    public void syncExcavatorParamsToJson() {
        ExcavatorParams excavatorParamsObj = getExcavatorParamsObj();
        excavatorParamsObj.HA = this.HA;
        excavatorParamsObj.pq = this.pq;
        excavatorParamsObj.Ay = this.Ay;
        excavatorParamsObj.Ax = this.Ax;
        excavatorParamsObj.Dx = this.Dx;
        excavatorParamsObj.AD = this.AD;
        excavatorParamsObj.BC = this.BC;
        excavatorParamsObj.CD = this.CD;
        excavatorParamsObj.BD = this.BD;
        this.excavatorParamsCache = excavatorParamsObj;
        this.excavatorParams = GSON.toJson(excavatorParamsObj);
    }

    public void loadExcavatorParamsFromJson() {
        String str = this.excavatorParams;
        if (str == null || str.isEmpty()) {
            return;
        }
        ExcavatorParams excavatorParams = (ExcavatorParams) GSON.fromJson(this.excavatorParams, ExcavatorParams.class);
        this.excavatorParamsCache = excavatorParams;
        this.HA = excavatorParams.HA;
        this.pq = excavatorParams.pq;
        this.Ay = excavatorParams.Ay;
        this.Ax = excavatorParams.Ax;
        this.Dx = excavatorParams.Dx;
        this.AD = excavatorParams.AD;
        this.BC = excavatorParams.BC;
        this.CD = excavatorParams.CD;
        this.BD = excavatorParams.BD;
    }

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

    private ShovelMeasureParams getEffectiveMeasureParams() {
        if (usesAutoGenerateParams()) {
            return getAutoGenerateParamsObj().toMeasureParams(null);
        }
        return getMeasureParamsObj();
    }

    public double getG1() {
        return getEffectiveMeasureParams().G1;
    }

    public double getG2() {
        return getEffectiveMeasureParams().G2;
    }

    public double getG3() {
        return getEffectiveMeasureParams().G3;
    }

    public double getLy() {
        return getEffectiveMeasureParams().Ly;
    }

    public double getRy() {
        ShovelMeasureParams effectiveMeasureParams = getEffectiveMeasureParams();
        double d = effectiveMeasureParams.Ry;
        return d != 0.0d ? d : effectiveMeasureParams.Ly;
    }

    public double getAB() {
        return getEffectiveMeasureParams().AB;
    }

    public double getNT() {
        return getEffectiveMeasureParams().NT;
    }

    public double getAT() {
        return getEffectiveMeasureParams().AT;
    }

    public double getNA() {
        return getEffectiveMeasureParams().NA;
    }

    public double getLR() {
        return getEffectiveMeasureParams().resolveLR();
    }

    public boolean usesDistanceMeasure() {
        return getEffectiveMeasureParams().usesDistanceMeasure();
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

    public boolean isDistanceBucketMeasureFlow() {
        return this.distanceBucketMeasure || usesDistanceMeasure();
    }

    public boolean usesCalibrationMode21() {
        if (this.distanceBucketMeasure) {
            return true;
        }
        double[][] dArr = this.reDeviceAttitudes;
        return dArr != null && dArr.length > 0;
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

    public void clearMeasureParams() {
        this.measureParams = null;
        this.measureParamsCache = null;
    }

    public void clearAutoGenerateParams() {
        this.autoGenerateParams = null;
        this.autoGenerateParamsCache = null;
    }

    public void syncBucketParamsFrom(ShovelEntity shovelEntity) {
        if (shovelEntity == null) {
            return;
        }
        shovelEntity.ensureParamsSerialized();
        if (shovelEntity.usesAutoGenerateParams()) {
            setAutoGenerateParamsObj((ShovelAutoGenerateParams) GSON.fromJson(shovelEntity.autoGenerateParams, ShovelAutoGenerateParams.class));
        } else {
            setMeasureParamsObj(shovelEntity.getMeasureParamsObj());
        }
    }

    public void copyBucketMeasureFrom(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return;
        }
        if (excavatorEntity.usesAutoGenerateParams()) {
            Gson gson = GSON;
            setAutoGenerateParamsObj((ShovelAutoGenerateParams) gson.fromJson(gson.toJson(excavatorEntity.getAutoGenerateParamsObj()), ShovelAutoGenerateParams.class));
        } else {
            Gson gson2 = GSON;
            setMeasureParamsObj((ShovelMeasureParams) gson2.fromJson(gson2.toJson(excavatorEntity.getMeasureParamsObj()), ShovelMeasureParams.class));
        }
    }

    public void copyCalibSoInputsFrom(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return;
        }
        excavatorEntity.ensureCalibSoInputsReady();
        String str = excavatorEntity.calibSoInputs;
        if (str == null || str.isEmpty()) {
            copyCalibSoInputFieldsFrom(excavatorEntity);
            return;
        }
        this.calibSoInputs = excavatorEntity.calibSoInputs;
        loadCalibSoInputsFromJson();
        mergeSweepAttitudesFrom(excavatorEntity);
    }

    public void mergeSweepAttitudesFrom(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return;
        }
        double[][] dArr = this.reDeviceAttitudes;
        if (dArr == null || dArr.length == 0) {
            this.reDeviceAttitudes = copyAttitudeArray(excavatorEntity.reDeviceAttitudes);
            this.reSensorAttitudes = copyAttitudeArray(excavatorEntity.reSensorAttitudes);
        }
        double[][] dArr2 = this.reDeviceAttitudes;
        if (dArr2 == null || dArr2.length <= 0) {
            return;
        }
        writeCalibSoInputsJson(true);
    }

    public void reloadSweepAttitudesFromJson() {
        String str = this.calibSoInputs;
        if (str == null || str.isEmpty()) {
            return;
        }
        try {
            CalibSoInputParams calibSoInputParams = (CalibSoInputParams) GSON.fromJson(this.calibSoInputs, CalibSoInputParams.class);
            if (calibSoInputParams == null) {
                return;
            }
            repairAttitudeMatricesFromRawJson(calibSoInputParams, this.calibSoInputs);
            double[][] dArr = calibSoInputParams.reDeviceAttitudes;
            if (dArr != null && dArr.length > 0) {
                this.reDeviceAttitudes = copyAttitudeArray(dArr);
            }
            double[][] dArr2 = calibSoInputParams.reSensorAttitudes;
            if (dArr2 == null || dArr2.length <= 0) {
                return;
            }
            this.reSensorAttitudes = copyAttitudeArray(dArr2);
        } catch (Exception unused) {
        }
    }

    public void ensureCalibSoInputsReady() {
        double[][] dArr;
        double[][] dArr2;
        loadCalibSoInputsFromJson();
        reloadSweepAttitudesFromJson();
        String str = this.calibSoInputs;
        if ((str == null || str.isEmpty() || (dArr2 = this.reDeviceAttitudes) == null || dArr2.length <= 0) && (dArr = this.reDeviceAttitudes) != null && dArr.length > 0) {
            writeCalibSoInputsJson(true);
        }
    }

    public void copyCalibSoInputFieldsFrom(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return;
        }
        this.deviceRoll = excavatorEntity.deviceRoll;
        this.devicePitch = excavatorEntity.devicePitch;
        this.deviceHeading = excavatorEntity.deviceHeading;
        this.sensorRoll = excavatorEntity.sensorRoll;
        this.sensorPitch = excavatorEntity.sensorPitch;
        this.sensorHeading = excavatorEntity.sensorHeading;
        this.phaseToHang = excavatorEntity.phaseToHang;
        this.reDeviceAttitudes = copyAttitudeArray(excavatorEntity.reDeviceAttitudes);
        this.reSensorAttitudes = copyAttitudeArray(excavatorEntity.reSensorAttitudes);
        this.aDeviceRoll = excavatorEntity.aDeviceRoll;
        this.aDevicePitch = excavatorEntity.aDevicePitch;
        this.aDeviceHeading = excavatorEntity.aDeviceHeading;
        this.bDeviceRoll = excavatorEntity.bDeviceRoll;
        this.bDevicePitch = excavatorEntity.bDevicePitch;
        this.bDeviceHeading = excavatorEntity.bDeviceHeading;
        this.bSensorRoll = excavatorEntity.bSensorRoll;
        this.bSensorPitch = excavatorEntity.bSensorPitch;
        this.bSensorHeading = excavatorEntity.bSensorHeading;
        this.dcDeviceRoll = excavatorEntity.dcDeviceRoll;
        this.dcDevicePitch = excavatorEntity.dcDevicePitch;
        this.dcDeviceHeading = excavatorEntity.dcDeviceHeading;
        this.dcSensorRoll = excavatorEntity.dcSensorRoll;
        this.dcSensorPitch = excavatorEntity.dcSensorPitch;
        this.dcSensorHeading = excavatorEntity.dcSensorHeading;
        double[][] dArr = this.reDeviceAttitudes;
        if (dArr == null || dArr.length <= 0) {
            return;
        }
        writeCalibSoInputsJson(true);
    }

    private static double[][] copyAttitudeArray(double[][] dArr) {
        if (dArr == null) {
            return null;
        }
        double[][] dArr2 = new double[dArr.length][];
        for (int i = 0; i < dArr.length; i++) {
            double[] dArr3 = dArr[i];
            if (dArr3 != null) {
                double[] dArr4 = new double[dArr3.length];
                dArr2[i] = dArr4;
                double[] dArr5 = dArr[i];
                System.arraycopy(dArr5, 0, dArr4, 0, dArr5.length);
            }
        }
        return dArr2;
    }

    public void copyCalibSoInputsWithoutSweep(ExcavatorEntity excavatorEntity) {
        copyCalibSoInputsFrom(excavatorEntity);
        clearReAttitudes();
    }

    public void clearCalibSoInputs() {
        this.calibSoInputs = null;
        this.calibSoInputsCache = null;
        this.deviceRoll = 0.0d;
        this.devicePitch = 0.0d;
        this.deviceHeading = 0.0d;
        this.sensorRoll = 0.0d;
        this.sensorPitch = 0.0d;
        this.sensorHeading = 0.0d;
        this.phaseToHang = 0.0d;
        this.aDeviceRoll = 0.0d;
        this.aDevicePitch = 0.0d;
        this.aDeviceHeading = 0.0d;
        this.bDeviceRoll = 0.0d;
        this.bDevicePitch = 0.0d;
        this.bDeviceHeading = 0.0d;
        this.bSensorRoll = 0.0d;
        this.bSensorPitch = 0.0d;
        this.bSensorHeading = 0.0d;
        this.reDeviceAttitudes = null;
        this.reSensorAttitudes = null;
        this.dcDeviceRoll = 0.0d;
        this.dcDevicePitch = 0.0d;
        this.dcDeviceHeading = 0.0d;
        this.dcSensorRoll = 0.0d;
        this.dcSensorPitch = 0.0d;
        this.dcSensorHeading = 0.0d;
    }

    public void clearForearmMeasureValues() {
        this.HA = 0.0d;
        this.pq = 0.0d;
        this.AD = 0.0d;
        this.BC = 0.0d;
        this.CD = 0.0d;
        this.Dx = 0.0d;
        syncExcavatorParamsToJson();
    }

    public void clearReAttitudes() {
        String str;
        this.reDeviceAttitudes = null;
        this.reSensorAttitudes = null;
        this.dcDeviceRoll = 0.0d;
        this.dcDevicePitch = 0.0d;
        this.dcDeviceHeading = 0.0d;
        this.dcSensorRoll = 0.0d;
        this.dcSensorPitch = 0.0d;
        this.dcSensorHeading = 0.0d;
        if (this.calibSoInputsCache == null && (str = this.calibSoInputs) != null && !str.isEmpty()) {
            try {
                this.calibSoInputsCache = (CalibSoInputParams) GSON.fromJson(this.calibSoInputs, CalibSoInputParams.class);
            } catch (Exception unused) {
                this.calibSoInputsCache = null;
            }
        }
        CalibSoInputParams calibSoInputParams = this.calibSoInputsCache;
        if (calibSoInputParams != null) {
            calibSoInputParams.clearSweepAttitudes();
            this.calibSoInputs = GSON.toJson(this.calibSoInputsCache);
        }
    }

    public void syncCalibSoInputsToJson() {
        double[][] dArr;
        discardInvalidCalibSoInputs();
        if (usesAutoGenerateParams()) {
            this.calibSoInputs = null;
            this.calibSoInputsCache = null;
            return;
        }
        double[][] dArr2 = this.reDeviceAttitudes;
        if (dArr2 != null && dArr2.length > 0) {
            writeCalibSoInputsJson(true);
            return;
        }
        if (hasCalibSoInputs()) {
            if (usesCalibrationMode21() && ((dArr = this.reDeviceAttitudes) == null || dArr.length == 0)) {
                return;
            }
            writeCalibSoInputsJson(true);
        }
    }

    public void markCalibSoInputsCaptured() {
        double[][] dArr;
        if (usesAutoGenerateParams()) {
            return;
        }
        if (usesCalibrationMode21() && ((dArr = this.reDeviceAttitudes) == null || dArr.length == 0)) {
            return;
        }
        writeCalibSoInputsJson(true);
    }

    private void writeCalibSoInputsJson(boolean z) {
        CalibSoInputParams calibSoInputParamsFromEntity = CalibSoInputParams.fromEntity(this);
        calibSoInputParamsFromEntity.captured = z;
        this.calibSoInputsCache = calibSoInputParamsFromEntity;
        this.calibSoInputs = GSON.toJson(calibSoInputParamsFromEntity);
    }

    public void discardInvalidCalibSoInputs() {
        String str;
        if (this.calibSoInputsCache == null && (str = this.calibSoInputs) != null && !str.isEmpty()) {
            loadCalibSoInputsFromJson();
        }
        CalibSoInputParams calibSoInputParams = this.calibSoInputsCache;
        if (calibSoInputParams == null || !calibSoInputParams.isPlaceholder()) {
            return;
        }
        this.calibSoInputs = null;
        this.calibSoInputsCache = null;
    }

    public void loadCalibSoInputsFromJson() {
        String str = this.calibSoInputs;
        if (str == null || str.isEmpty()) {
            return;
        }
        try {
            CalibSoInputParams calibSoInputParams = (CalibSoInputParams) GSON.fromJson(this.calibSoInputs, CalibSoInputParams.class);
            this.calibSoInputsCache = calibSoInputParams;
            if (calibSoInputParams != null && calibSoInputParams.isPlaceholder()) {
                this.calibSoInputs = null;
                this.calibSoInputsCache = null;
                return;
            }
            CalibSoInputParams calibSoInputParams2 = this.calibSoInputsCache;
            if (calibSoInputParams2 != null) {
                repairAttitudeMatricesFromRawJson(calibSoInputParams2, this.calibSoInputs);
                this.calibSoInputsCache.applyTo(this);
            }
        } catch (Exception unused) {
            this.calibSoInputsCache = null;
        }
    }

    private static void repairAttitudeMatricesFromRawJson(CalibSoInputParams calibSoInputParams, String str) {
        double[][] doubleMatrix;
        double[][] doubleMatrix2;
        if (calibSoInputParams == null || str == null || str.isEmpty()) {
            return;
        }
        try {
            JsonObject asJsonObject = JsonParser.parseString(str).getAsJsonObject();
            double[][] dArr = calibSoInputParams.reDeviceAttitudes;
            if ((dArr == null || dArr.length == 0) && (doubleMatrix = parseDoubleMatrix(asJsonObject.get("re_device_attitudes"))) != null && doubleMatrix.length > 0) {
                calibSoInputParams.reDeviceAttitudes = doubleMatrix;
            }
            double[][] dArr2 = calibSoInputParams.reSensorAttitudes;
            if ((dArr2 == null || dArr2.length == 0) && (doubleMatrix2 = parseDoubleMatrix(asJsonObject.get("re_sensor_attitudes"))) != null && doubleMatrix2.length > 0) {
                calibSoInputParams.reSensorAttitudes = doubleMatrix2;
            }
        } catch (Exception unused) {
        }
    }

    private static double[][] parseDoubleMatrix(JsonElement jsonElement) {
        double[][] dArr = null;
        if (jsonElement != null && !jsonElement.isJsonNull() && jsonElement.isJsonArray()) {
            JsonArray asJsonArray = jsonElement.getAsJsonArray();
            if (asJsonArray.size() == 0) {
                return null;
            }
            dArr = new double[asJsonArray.size()][];
            for (int i = 0; i < asJsonArray.size(); i++) {
                JsonElement jsonElement2 = asJsonArray.get(i);
                if (jsonElement2 != null && !jsonElement2.isJsonNull() && jsonElement2.isJsonArray()) {
                    JsonArray asJsonArray2 = jsonElement2.getAsJsonArray();
                    dArr[i] = new double[asJsonArray2.size()];
                    for (int i2 = 0; i2 < asJsonArray2.size(); i2++) {
                        try {
                            dArr[i][i2] = asJsonArray2.get(i2).getAsDouble();
                        } catch (Exception unused) {
                            dArr[i][i2] = 0.0d;
                        }
                    }
                }
            }
        }
        return dArr;
    }

    public boolean hasCalibSoInputs() {
        String str;
        if (usesAutoGenerateParams()) {
            return false;
        }
        if (this.calibSoInputsCache == null && (str = this.calibSoInputs) != null && !str.isEmpty()) {
            loadCalibSoInputsFromJson();
        }
        CalibSoInputParams calibSoInputParams = this.calibSoInputsCache;
        return calibSoInputParams != null && calibSoInputParams.isValidFor(this);
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
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            ExcavatorEntity excavatorEntity = (ExcavatorEntity) obj;
            if (this.localId == excavatorEntity.localId && this.method == excavatorEntity.method && this.mode == excavatorEntity.mode && this.version == excavatorEntity.version && this.userId == excavatorEntity.userId && Double.compare(this.createTime, excavatorEntity.createTime) == 0 && Double.compare(this.updateTime, excavatorEntity.updateTime) == 0 && this.calibrateId == excavatorEntity.calibrateId && Double.compare(this.leftDist, excavatorEntity.leftDist) == 0 && Double.compare(this.rigthDist, excavatorEntity.rigthDist) == 0 && Double.compare(this.spanDist, excavatorEntity.spanDist) == 0 && Double.compare(this.deviceHeight, excavatorEntity.deviceHeight) == 0 && Objects.equals(this.name, excavatorEntity.name) && Objects.equals(this.calibrateUUid, excavatorEntity.calibrateUUid) && this.showUnit == excavatorEntity.showUnit && this.createTime == excavatorEntity.createTime && this.updateTime == excavatorEntity.updateTime && this.version == excavatorEntity.version && Objects.equals(this.calibParamsId, excavatorEntity.calibParamsId) && Objects.equals(this.calibParams, excavatorEntity.calibParams) && this.mode == excavatorEntity.mode && this.Ax == excavatorEntity.Ax && this.Dx == excavatorEntity.Dx && this.AD == excavatorEntity.AD && this.BD == excavatorEntity.BD && this.BC == excavatorEntity.BC && this.CD == excavatorEntity.CD && this.HA == excavatorEntity.HA && this.pq == excavatorEntity.pq && this.Ay == excavatorEntity.Ay && Objects.equals(this.measureParams, excavatorEntity.measureParams) && Objects.equals(this.autoGenerateParams, excavatorEntity.autoGenerateParams) && Objects.equals(this.excavatorParams, excavatorEntity.excavatorParams) && Objects.equals(this.calibParamsDetail, excavatorEntity.calibParamsDetail) && Objects.equals(this.calibSoInputs, excavatorEntity.calibSoInputs)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.localId), Integer.valueOf(this.method), Integer.valueOf(this.mode), Long.valueOf(this.version), this.name, Long.valueOf(this.userId), Long.valueOf(this.createTime), Long.valueOf(this.updateTime), Long.valueOf(this.calibrateId), this.calibrateUUid, Double.valueOf(this.leftDist), Double.valueOf(this.rigthDist), Double.valueOf(this.spanDist), Double.valueOf(this.deviceHeight), Integer.valueOf(this.showUnit), Long.valueOf(this.createTime), Long.valueOf(this.updateTime), Long.valueOf(this.version), this.calibParamsId, this.calibParams, Integer.valueOf(this.mode), this.measureParams, this.autoGenerateParams, this.excavatorParams, Double.valueOf(this.HA), Double.valueOf(this.pq), Double.valueOf(this.Ay), Double.valueOf(this.Ax), Double.valueOf(this.Dx), Double.valueOf(this.AD), Double.valueOf(this.BD), Double.valueOf(this.CD), Double.valueOf(this.BC), this.calibParamsDetail, this.calibSoInputs);
    }

    public String toString() {
        return "ExcavatorEntity{localId=" + this.localId + ", version=" + this.version + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", userId=" + this.userId + ", createTime=" + this.createTime + ", updateTime=" + this.updateTime + ", calibrateId=" + this.calibrateId + ", calibrateUUid='" + this.calibrateUUid + AngleFormat.CH_MIN_SYMBOL + ", leftDist=" + this.leftDist + ", rigthDist=" + this.rigthDist + ", spanDist=" + this.spanDist + ", deviceHeight=" + this.deviceHeight + ", showUnit=" + this.showUnit + ", calibParamsId='" + this.calibParamsId + AngleFormat.CH_MIN_SYMBOL + ", calibParams='" + this.calibParams + AngleFormat.CH_MIN_SYMBOL + ", calibParamsDetail='" + this.calibParamsDetail + AngleFormat.CH_MIN_SYMBOL + ", method=" + this.method + ", mode=" + this.mode + ", measureParams='" + this.measureParams + AngleFormat.CH_MIN_SYMBOL + ", autoGenerateParams='" + this.autoGenerateParams + AngleFormat.CH_MIN_SYMBOL + ", excavatorParams='" + this.excavatorParams + AngleFormat.CH_MIN_SYMBOL + ", HA=" + this.HA + ", pq=" + this.pq + ", Ay=" + this.Ay + ", Ax=" + this.Ax + ", Dx=" + this.Dx + ", AD=" + this.AD + ", BC=" + this.BC + ", CD=" + this.CD + ", BD=" + this.BD + ", calibSoInputs='" + this.calibSoInputs + AngleFormat.CH_MIN_SYMBOL + '}';
    }
}
