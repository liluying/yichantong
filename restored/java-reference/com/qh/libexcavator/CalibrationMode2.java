package com.qh.libexcavator;

import com.qh.libexcavator.nativelib.LibExcavator;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import java.lang.reflect.Array;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CalibrationMode2 implements Calibration {
    public double AD;
    public double Ax;
    public double Ay;
    public double BC;
    public double BD;
    public double CD;
    public double Dx;
    public double HA;
    public double Hy;
    public double deviceHeading;
    public double devicePitch;
    public double deviceRoll;
    public double sensorHeading;
    public double sensorPitch;
    public double sensorRoll;
    public double toolAB;
    public double[][] toolTeeth = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 4, 3);

    @Override // com.qh.libexcavator.Calibration
    public int apply(Excavator excavator) {
        LibExcavator.Mode2Cali mode2Cali = new LibExcavator.Mode2Cali();
        GeoQuaternion.fillPointFromAngleZyx(mode2Cali.world_from_device, this.deviceRoll, this.devicePitch, this.deviceHeading);
        GeoQuaternion.fillPointFromAngleZyx(mode2Cali.world_from_sensor, this.sensorRoll, this.sensorPitch, this.sensorHeading);
        mode2Cali.HA = this.HA;
        mode2Cali.Hy = this.Hy;
        mode2Cali.Ay = this.Ay;
        mode2Cali.Ax = this.Ax;
        mode2Cali.Dx = this.Dx;
        mode2Cali.AD = this.AD;
        mode2Cali.BD = this.BD;
        mode2Cali.CD = this.CD;
        mode2Cali.BC = this.BC;
        mode2Cali.tool.AB = this.toolAB;
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            LibExcavator.Point[] pointArr = mode2Cali.tool.TT;
            if (i < pointArr.length) {
                LibExcavator.Point point = pointArr[i];
                double[] dArr = this.toolTeeth[i];
                point.x = dArr[0];
                point.y = dArr[1];
                point.z = dArr[2];
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
            } else {
                CalibrateLogToFile.i("模式2标定参数：CalibrationMode2.apply deviceRoll=" + this.deviceRoll + " devicePitch=" + this.devicePitch + " deviceHeading=" + this.deviceHeading + " world_from_device(qx,qy,qz)=(" + mode2Cali.world_from_device.x + "," + mode2Cali.world_from_device.y + "," + mode2Cali.world_from_device.z + ") sensorRoll=" + this.sensorRoll + " sensorPitch=" + this.sensorPitch + " sensorHeading=" + this.sensorHeading + " world_from_sensor(qx,qy,qz)=(" + mode2Cali.world_from_sensor.x + "," + mode2Cali.world_from_sensor.y + "," + mode2Cali.world_from_sensor.z + ") HA=" + this.HA + " Hy=" + this.Hy + " Ay=" + this.Ay + " Ax=" + this.Ax + " Dx=" + this.Dx + " AD=" + this.AD + " BD=" + this.BD + " CD=" + this.CD + " BC=" + this.BC + " toolAB=" + this.toolAB + ((Object) sb));
                return excavator.raw().libexcavator_cali_mode_2_0(excavator.handle(), mode2Cali);
            }
        }
    }
}
