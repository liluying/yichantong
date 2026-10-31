package com.qh.libexcavator;

import com.qh.libexcavator.nativelib.LibExcavator;
import com.qianhe.baselib.utils.CalibrateLogToFile;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CalibrationMode1 implements Calibration {
    public double GL;
    public double GR;
    public double HG;
    public double LR;
    public double deviceHeading;
    public double devicePitch;
    public double deviceRoll;

    @Override // com.qh.libexcavator.Calibration
    public int apply(Excavator excavator) {
        LibExcavator.Mode1Cali mode1Cali = new LibExcavator.Mode1Cali();
        GeoQuaternion.fillPointFromAngleZyx(mode1Cali.world_from_device, this.deviceRoll, this.devicePitch, this.deviceHeading);
        mode1Cali.GL = this.GL;
        mode1Cali.GR = this.GR;
        mode1Cali.LR = this.LR;
        mode1Cali.HG = this.HG;
        CalibrateLogToFile.i("模式1标定参数：CalibrationMode1.apply deviceRoll=" + this.deviceRoll + " devicePitch=" + this.devicePitch + " deviceHeading=" + this.deviceHeading + " world_from_device(qx,qy,qz)=(" + mode1Cali.world_from_device.x + "," + mode1Cali.world_from_device.y + "," + mode1Cali.world_from_device.z + ") GL=" + this.GL + " GR=" + this.GR + " LR=" + this.LR + " HG=" + this.HG);
        return excavator.raw().libexcavator_cali_mode_1_0(excavator.handle(), mode1Cali);
    }
}
