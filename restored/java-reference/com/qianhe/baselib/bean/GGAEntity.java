package com.qianhe.baselib.bean;

import com.qianhe.baselib.enums.DeviceType;
import java.io.Serializable;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GGAEntity implements Serializable {
    public DeviceType deviceType;
    public String utc;
    public String ggaStr = "";
    public double latitude = 0.0d;
    public double longitude = 0.0d;
    public double elevation = 0.0d;
    public int quality = -1;
    public int useStarNum = -1;
    public double hdop = 0.0d;
    public double geodeticHeight = 0.0d;
    public float age = -1.0f;

    public String toString() {
        return "GGAEntity{ggaStr='" + this.ggaStr + AngleFormat.CH_MIN_SYMBOL + ", utc=" + this.utc + ", latitude=" + this.latitude + ", longitude=" + this.longitude + ", elevation=" + this.elevation + ", quality=" + this.quality + ", useStarNum=" + this.useStarNum + ", hdop=" + this.hdop + ", geodeticHeight=" + this.geodeticHeight + ", age=" + this.age + '}';
    }
}
