package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;
import java.io.Serializable;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GetBaseStationResponse implements Serializable {
    public double PDOP;
    public String antennaOrder;
    public int cutoffAngle;
    public String dataformatList;
    public DeviceType deviceType;
    public String diffFormat;
    public double elev;
    public String id;
    public double lat;
    public double lon;
    public String startMode = "";
}
