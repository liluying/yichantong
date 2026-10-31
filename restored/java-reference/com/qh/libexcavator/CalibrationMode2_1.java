package com.qh.libexcavator;

import com.qh.libexcavator.nativelib.LibExcavator;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import java.lang.reflect.Array;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CalibrationMode2_1 implements Calibration {
    public double AD;
    public double ADeviceHeading;
    public double ADevicePitch;
    public double ADeviceRoll;
    public double BC;
    public double BDeviceHeading;
    public double BDevicePitch;
    public double BDeviceRoll;
    public double BSensorHeading;
    public double BSensorPitch;
    public double BSensorRoll;
    public double CD;
    public double Dx;
    public double HA;
    public double Hy;
    public double[][] REDeviceAttitudes;
    public double[][] RESensorAttitudes;
    public double dcDeviceHeading;
    public double dcDevicePitch;
    public double dcDeviceRoll;
    public double dcSensorHeading;
    public double dcSensorPitch;
    public double dcSensorRoll;
    public double phaseToHang;
    public double toolAB;
    public double[][] toolTeeth = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 4, 3);

    @Override // com.qh.libexcavator.Calibration
    public int apply(Excavator excavator) throws IllegalAccessException, SecurityException, ArrayIndexOutOfBoundsException, IllegalArgumentException {
        char c;
        char c2;
        double[][] dArr = this.REDeviceAttitudes;
        if (dArr == null || dArr.length == 0) {
            throw new IllegalStateException("REDeviceAttitudes must contain at least 1 attitude");
        }
        LibExcavator.Mode21Cali mode21Cali = new LibExcavator.Mode21Cali();
        mode21Cali.phase_to_hang = this.phaseToHang;
        mode21Cali.HA = this.HA;
        mode21Cali.Hy = this.Hy;
        mode21Cali.Dx = this.Dx;
        mode21Cali.AD = this.AD;
        mode21Cali.CD = this.CD;
        mode21Cali.BC = this.BC;
        mode21Cali.tool.AB = this.toolAB;
        StringBuilder sb = new StringBuilder();
        char c3 = 0;
        int i = 0;
        while (true) {
            LibExcavator.Point[] pointArr = mode21Cali.tool.TT;
            c = 2;
            c2 = 1;
            if (i >= pointArr.length) {
                break;
            }
            LibExcavator.Point point = pointArr[i];
            double[] dArr2 = this.toolTeeth[i];
            point.x = dArr2[0];
            point.y = dArr2[1];
            point.z = dArr2[2];
            sb.append(" TT[");
            sb.append(i);
            sb.append("]=(");
            sb.append(this.toolTeeth[i][0]);
            sb.append(',');
            sb.append(this.toolTeeth[i][1]);
            sb.append(',');
            sb.append(this.toolTeeth[i][2]);
            sb.append(')');
            i++;
        }
        LibExcavator.Point[] pointArrPoints = Excavator.points(this.REDeviceAttitudes.length);
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        int i2 = 0;
        while (true) {
            double[][] dArr3 = this.REDeviceAttitudes;
            if (i2 < dArr3.length) {
                LibExcavator.Point point2 = pointArrPoints[i2];
                double[] dArr4 = dArr3[i2];
                GeoQuaternion.fillPointFromAngleZyx(point2, dArr4[c3], dArr4[c2], dArr4[c]);
                pointArrPoints[i2].write();
                sb2.append(" RE_device[");
                sb2.append(i2);
                sb2.append("] rpy=(");
                LibExcavator.Point[] pointArr2 = pointArrPoints;
                sb2.append(this.REDeviceAttitudes[i2][0]);
                sb2.append(',');
                sb2.append(this.REDeviceAttitudes[i2][1]);
                sb2.append(',');
                sb2.append(this.REDeviceAttitudes[i2][2]);
                sb2.append(") qxqyqz=(");
                sb2.append(pointArr2[i2].x);
                sb2.append(',');
                sb2.append(pointArr2[i2].y);
                sb2.append(',');
                sb2.append(pointArr2[i2].z);
                sb2.append(')');
                double[][] dArr5 = this.RESensorAttitudes;
                if (dArr5 != null && i2 < dArr5.length && dArr5[i2] != null) {
                    sb3.append(" RE_sensor[");
                    sb3.append(i2);
                    sb3.append("] rpy=(");
                    sb3.append(this.RESensorAttitudes[i2][0]);
                    sb3.append(',');
                    sb3.append(this.RESensorAttitudes[i2][1]);
                    sb3.append(',');
                    sb3.append(this.RESensorAttitudes[i2][2]);
                    sb3.append(')');
                }
                i2++;
                pointArrPoints = pointArr2;
                c3 = 0;
                c = 2;
                c2 = 1;
            } else {
                mode21Cali.RE_world_from_device = pointArrPoints[0].getPointer();
                mode21Cali.RE_amount = this.REDeviceAttitudes.length;
                GeoQuaternion.fillPointFromAngleZyx(mode21Cali.A_world_from_device, this.ADeviceRoll, this.ADevicePitch, this.ADeviceHeading);
                GeoQuaternion.fillPointFromAngleZyx(mode21Cali.B_world_from_device, this.BDeviceRoll, this.BDevicePitch, this.BDeviceHeading);
                GeoQuaternion.fillPointFromAngleZyx(mode21Cali.B_world_from_sensor, this.BSensorRoll, this.BSensorPitch, this.BSensorHeading);
                GeoQuaternion.fillPointFromAngleZyx(mode21Cali.dc_world_from_device, this.dcDeviceRoll, this.dcDevicePitch, this.dcDeviceHeading);
                GeoQuaternion.fillPointFromAngleZyx(mode21Cali.dc_world_from_sensor, this.dcSensorRoll, this.dcSensorPitch, this.dcSensorHeading);
                CalibrateLogToFile.i("模式2_1标定参数：CalibrationMode2_1.apply phaseToHang=" + this.phaseToHang + " HA=" + this.HA + " Hy=" + this.Hy + " Dx=" + this.Dx + " AD=" + this.AD + " CD=" + this.CD + " BC=" + this.BC + " toolAB=" + this.toolAB + ((Object) sb) + " RE_amount=" + this.REDeviceAttitudes.length + ((Object) sb2) + ((Object) sb3) + " ADevice rpy=(" + this.ADeviceRoll + ',' + this.ADevicePitch + ',' + this.ADeviceHeading + ") qxqyqz=(" + mode21Cali.A_world_from_device.x + ',' + mode21Cali.A_world_from_device.y + ',' + mode21Cali.A_world_from_device.z + ") BDevice rpy=(" + this.BDeviceRoll + ',' + this.BDevicePitch + ',' + this.BDeviceHeading + ") qxqyqz=(" + mode21Cali.B_world_from_device.x + ',' + mode21Cali.B_world_from_device.y + ',' + mode21Cali.B_world_from_device.z + ") BSensor rpy=(" + this.BSensorRoll + ',' + this.BSensorPitch + ',' + this.BSensorHeading + ") qxqyqz=(" + mode21Cali.B_world_from_sensor.x + ',' + mode21Cali.B_world_from_sensor.y + ',' + mode21Cali.B_world_from_sensor.z + ") dcDevice rpy=(" + this.dcDeviceRoll + ',' + this.dcDevicePitch + ',' + this.dcDeviceHeading + ") qxqyqz=(" + mode21Cali.dc_world_from_device.x + ',' + mode21Cali.dc_world_from_device.y + ',' + mode21Cali.dc_world_from_device.z + ") dcSensor rpy=(" + this.dcSensorRoll + ',' + this.dcSensorPitch + ',' + this.dcSensorHeading + ") qxqyqz=(" + mode21Cali.dc_world_from_sensor.x + ',' + mode21Cali.dc_world_from_sensor.y + ',' + mode21Cali.dc_world_from_sensor.z + ")");
                return excavator.raw().libexcavator_cali_mode_2_1(excavator.handle(), mode21Cali);
            }
        }
    }
}
