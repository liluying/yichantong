package com.qianhe.baselib.bean;

import java.io.Serializable;
import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PointlibEntity implements Serializable {
    public double alt;
    public String coordinateSystem;
    public String corsHost;
    public String corsMount;
    public String corsName;
    public String corsPassword;
    public int corsPort;
    public String corsUserName;
    public long createTime;
    public double east;
    public double elev;
    public int encod;
    public double geodeticElev;
    public double geodeticLat;
    public double geodeticLon;
    public long groupId;
    public long groupLocalId;
    public double hdop;
    public long id;
    public double lat;
    public double lon;
    public String name = "";
    public double north;
    public long pointId;
    public int pointType;
    public int quality;
    public String systemType;
    public double vdop;

    public boolean hasGeodeticCoords() {
        return (this.geodeticLon == 0.0d && this.geodeticLat == 0.0d && this.geodeticElev == 0.0d) ? false : true;
    }

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            PointlibEntity pointlibEntity = (PointlibEntity) obj;
            if (this.id == pointlibEntity.id && this.createTime == pointlibEntity.createTime && this.pointType == pointlibEntity.pointType && Double.compare(this.lon, pointlibEntity.lon) == 0 && Double.compare(this.lat, pointlibEntity.lat) == 0 && Double.compare(this.elev, pointlibEntity.elev) == 0 && Double.compare(this.east, pointlibEntity.east) == 0 && Double.compare(this.north, pointlibEntity.north) == 0 && this.quality == pointlibEntity.quality && Double.compare(this.hdop, pointlibEntity.hdop) == 0 && Double.compare(this.vdop, pointlibEntity.vdop) == 0 && this.encod == pointlibEntity.encod && Objects.equals(this.name, pointlibEntity.name) && Objects.equals(this.systemType, pointlibEntity.systemType)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.id), Long.valueOf(this.createTime), Integer.valueOf(this.pointType), this.name, this.systemType, Double.valueOf(this.lon), Double.valueOf(this.lat), Double.valueOf(this.elev), Double.valueOf(this.east), Double.valueOf(this.north), Integer.valueOf(this.quality), Double.valueOf(this.hdop), Double.valueOf(this.vdop), Integer.valueOf(this.encod));
    }

    public String toString() {
        return "PointlibEntity{id=" + this.id + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", groupLocalId=" + this.groupLocalId + '}';
    }
}
