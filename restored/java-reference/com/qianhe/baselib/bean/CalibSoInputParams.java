package com.qianhe.baselib.bean;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CalibSoInputParams implements Serializable {

    @SerializedName("a_device_heading")
    public double aDeviceHeading;

    @SerializedName("a_device_pitch")
    public double aDevicePitch;

    @SerializedName("a_device_roll")
    public double aDeviceRoll;

    @SerializedName("algo")
    public String algo;

    @SerializedName("b_device_heading")
    public double bDeviceHeading;

    @SerializedName("b_device_pitch")
    public double bDevicePitch;

    @SerializedName("b_device_roll")
    public double bDeviceRoll;

    @SerializedName("b_sensor_heading")
    public double bSensorHeading;

    @SerializedName("b_sensor_pitch")
    public double bSensorPitch;

    @SerializedName("b_sensor_roll")
    public double bSensorRoll;

    @SerializedName("captured")
    public boolean captured;

    @SerializedName("dc_device_heading")
    public double dcDeviceHeading;

    @SerializedName("dc_device_pitch")
    public double dcDevicePitch;

    @SerializedName("dc_device_roll")
    public double dcDeviceRoll;

    @SerializedName("dc_sensor_heading")
    public double dcSensorHeading;

    @SerializedName("dc_sensor_pitch")
    public double dcSensorPitch;

    @SerializedName("dc_sensor_roll")
    public double dcSensorRoll;

    @SerializedName("device_heading")
    public double deviceHeading;

    @SerializedName("device_pitch")
    public double devicePitch;

    @SerializedName("device_roll")
    public double deviceRoll;

    @SerializedName("phase_to_hang")
    public double phaseToHang;

    @SerializedName("re_device_attitudes")
    public double[][] reDeviceAttitudes;

    @SerializedName("re_sensor_attitudes")
    public double[][] reSensorAttitudes;

    @SerializedName("sensor_heading")
    public double sensorHeading;

    @SerializedName("sensor_pitch")
    public double sensorPitch;

    @SerializedName("sensor_roll")
    public double sensorRoll;

    private static boolean isNonZero(double d, double d2, double d3) {
        return (d == 0.0d && d2 == 0.0d && d3 == 0.0d) ? false : true;
    }

    public static CalibSoInputParams fromEntity(ExcavatorEntity excavatorEntity) {
        CalibSoInputParams calibSoInputParams = new CalibSoInputParams();
        if (excavatorEntity == null) {
            return calibSoInputParams;
        }
        calibSoInputParams.algo = resolveAlgo(excavatorEntity);
        calibSoInputParams.deviceRoll = excavatorEntity.deviceRoll;
        calibSoInputParams.devicePitch = excavatorEntity.devicePitch;
        calibSoInputParams.deviceHeading = excavatorEntity.deviceHeading;
        calibSoInputParams.sensorRoll = excavatorEntity.sensorRoll;
        calibSoInputParams.sensorPitch = excavatorEntity.sensorPitch;
        calibSoInputParams.sensorHeading = excavatorEntity.sensorHeading;
        calibSoInputParams.phaseToHang = excavatorEntity.phaseToHang;
        calibSoInputParams.reDeviceAttitudes = copyAttitudes(excavatorEntity.reDeviceAttitudes);
        calibSoInputParams.reSensorAttitudes = copyAttitudes(excavatorEntity.reSensorAttitudes);
        calibSoInputParams.aDeviceRoll = excavatorEntity.aDeviceRoll;
        calibSoInputParams.aDevicePitch = excavatorEntity.aDevicePitch;
        calibSoInputParams.aDeviceHeading = excavatorEntity.aDeviceHeading;
        calibSoInputParams.bDeviceRoll = excavatorEntity.bDeviceRoll;
        calibSoInputParams.bDevicePitch = excavatorEntity.bDevicePitch;
        calibSoInputParams.bDeviceHeading = excavatorEntity.bDeviceHeading;
        calibSoInputParams.bSensorRoll = excavatorEntity.bSensorRoll;
        calibSoInputParams.bSensorPitch = excavatorEntity.bSensorPitch;
        calibSoInputParams.bSensorHeading = excavatorEntity.bSensorHeading;
        calibSoInputParams.dcDeviceRoll = excavatorEntity.dcDeviceRoll;
        calibSoInputParams.dcDevicePitch = excavatorEntity.dcDevicePitch;
        calibSoInputParams.dcDeviceHeading = excavatorEntity.dcDeviceHeading;
        calibSoInputParams.dcSensorRoll = excavatorEntity.dcSensorRoll;
        calibSoInputParams.dcSensorPitch = excavatorEntity.dcSensorPitch;
        calibSoInputParams.dcSensorHeading = excavatorEntity.dcSensorHeading;
        return calibSoInputParams;
    }

    public void clearSweepAttitudes() {
        this.reDeviceAttitudes = null;
        this.reSensorAttitudes = null;
        this.dcDeviceRoll = 0.0d;
        this.dcDevicePitch = 0.0d;
        this.dcDeviceHeading = 0.0d;
        this.dcSensorRoll = 0.0d;
        this.dcSensorPitch = 0.0d;
        this.dcSensorHeading = 0.0d;
        this.captured = false;
    }

    public void applyTo(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return;
        }
        excavatorEntity.deviceRoll = this.deviceRoll;
        excavatorEntity.devicePitch = this.devicePitch;
        excavatorEntity.deviceHeading = this.deviceHeading;
        excavatorEntity.sensorRoll = this.sensorRoll;
        excavatorEntity.sensorPitch = this.sensorPitch;
        excavatorEntity.sensorHeading = this.sensorHeading;
        excavatorEntity.phaseToHang = this.phaseToHang;
        double[][] dArr = this.reDeviceAttitudes;
        if (dArr != null) {
            excavatorEntity.reDeviceAttitudes = copyAttitudes(dArr);
        }
        double[][] dArr2 = this.reSensorAttitudes;
        if (dArr2 != null) {
            excavatorEntity.reSensorAttitudes = copyAttitudes(dArr2);
        }
        excavatorEntity.aDeviceRoll = this.aDeviceRoll;
        excavatorEntity.aDevicePitch = this.aDevicePitch;
        excavatorEntity.aDeviceHeading = this.aDeviceHeading;
        excavatorEntity.bDeviceRoll = this.bDeviceRoll;
        excavatorEntity.bDevicePitch = this.bDevicePitch;
        excavatorEntity.bDeviceHeading = this.bDeviceHeading;
        excavatorEntity.bSensorRoll = this.bSensorRoll;
        excavatorEntity.bSensorPitch = this.bSensorPitch;
        excavatorEntity.bSensorHeading = this.bSensorHeading;
        excavatorEntity.dcDeviceRoll = this.dcDeviceRoll;
        excavatorEntity.dcDevicePitch = this.dcDevicePitch;
        excavatorEntity.dcDeviceHeading = this.dcDeviceHeading;
        excavatorEntity.dcSensorRoll = this.dcSensorRoll;
        excavatorEntity.dcSensorPitch = this.dcSensorPitch;
        excavatorEntity.dcSensorHeading = this.dcSensorHeading;
        if ("caliMode21".equals(this.algo)) {
            excavatorEntity.distanceBucketMeasure = true;
        }
    }

    public boolean isValidFor(ExcavatorEntity excavatorEntity) {
        if (this.captured && excavatorEntity != null) {
            if (excavatorEntity.usesCalibrationMode21() || "caliMode21".equals(this.algo)) {
                double[][] dArr = this.reDeviceAttitudes;
                if (dArr != null && dArr.length > 0) {
                    return true;
                }
            } else {
                return hasMeaningfulAttitudes();
            }
        }
        return false;
    }

    public boolean hasMeaningfulAttitudes() {
        return hasAttitudeRows(this.reDeviceAttitudes) || hasAttitudeRows(this.reSensorAttitudes) || isNonZero(this.deviceRoll, this.devicePitch, this.deviceHeading) || isNonZero(this.sensorRoll, this.sensorPitch, this.sensorHeading) || isNonZero(this.aDeviceRoll, this.aDevicePitch, this.aDeviceHeading) || isNonZero(this.bDeviceRoll, this.bDevicePitch, this.bDeviceHeading) || isNonZero(this.bSensorRoll, this.bSensorPitch, this.bSensorHeading) || isNonZero(this.dcDeviceRoll, this.dcDevicePitch, this.dcDeviceHeading) || isNonZero(this.dcSensorRoll, this.dcSensorPitch, this.dcSensorHeading) || this.phaseToHang != 0.0d;
    }

    public boolean isPlaceholder() {
        return this.captured && !hasMeaningfulAttitudes();
    }

    public static String resolveAlgo(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return "";
        }
        if (excavatorEntity.mode == 1) {
            return "caliMode1";
        }
        if (excavatorEntity.usesCalibrationMode21()) {
            return "caliMode21";
        }
        if (excavatorEntity.mode == 3) {
            return "caliMode3";
        }
        return "caliMode2";
    }

    private static boolean hasAttitudeRows(double[][] dArr) {
        return dArr != null && dArr.length > 0;
    }

    private static double[][] copyAttitudes(double[][] dArr) {
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
}
