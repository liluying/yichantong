package com.qianhe.baselib.bean;

import com.qianhe.baselib.enums.DeviceType;
import java.io.Serializable;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BaseStationEntity implements Serializable {
    public float UtcTime;
    public String antennaNo;
    public int baseStationId = 0;
    public DeviceType deviceType;
    public double ecefX;
    public double ecefY;
    public double ecefZ;
    public double elev;
    public double lat;
    public String line;
    public double lon;
    public String port;
    public String signalQuality;
    public int stateCode;
    public float timeOffset;

    public String toString() {
        return "RefstationEntity{port='" + this.port + AngleFormat.CH_MIN_SYMBOL + ", stateCode=" + this.stateCode + ", timeOffset=" + this.timeOffset + ", signalQuality='" + this.signalQuality + AngleFormat.CH_MIN_SYMBOL + ", baseStationId=" + this.baseStationId + ", ecefX=" + this.ecefX + ", ecefY=" + this.ecefY + ", ecefZ=" + this.ecefZ + ", lon=" + this.lon + ", lat=" + this.lat + ", elev=" + this.elev + '}';
    }
}
