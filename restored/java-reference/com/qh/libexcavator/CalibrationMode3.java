package com.qh.libexcavator;

import com.qh.libexcavator.nativelib.LibExcavator;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import java.lang.reflect.Array;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CalibrationMode3 implements Calibration {
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
    public double toolAB;
    public double[][] toolTeeth = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 4, 3);

    @Override // com.qh.libexcavator.Calibration
    public int apply(Excavator excavator) {
        LibExcavator.Mode3Cali mode3Cali = new LibExcavator.Mode3Cali();
        GeoQuaternion.fillPointFromAngleZyx(mode3Cali.world_from_device, this.deviceRoll, this.devicePitch, this.deviceHeading);
        mode3Cali.HA = this.HA;
        mode3Cali.Hy = this.Hy;
        mode3Cali.Ay = this.Ay;
        mode3Cali.Ax = this.Ax;
        mode3Cali.Dx = this.Dx;
        mode3Cali.AD = this.AD;
        mode3Cali.BD = this.BD;
        mode3Cali.CD = this.CD;
        mode3Cali.BC = this.BC;
        mode3Cali.tool.AB = this.toolAB;
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            LibExcavator.Point[] pointArr = mode3Cali.tool.TT;
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
                CalibrateLogToFile.i("模式3标定参数：CalibrationMode3.apply deviceRoll=" + this.deviceRoll + " devicePitch=" + this.devicePitch + " deviceHeading=" + this.deviceHeading + " world_from_device(qx,qy,qz)=(" + mode3Cali.world_from_device.x + "," + mode3Cali.world_from_device.y + "," + mode3Cali.world_from_device.z + ") HA=" + this.HA + " Hy=" + this.Hy + " Ay=" + this.Ay + " Ax=" + this.Ax + " Dx=" + this.Dx + " AD=" + this.AD + " BD=" + this.BD + " CD=" + this.CD + " BC=" + this.BC + " toolAB=" + this.toolAB + ((Object) sb));
                return excavator.raw().libexcavator_cali_mode_3_0(excavator.handle(), mode3Cali);
            }
        }
    }
}
