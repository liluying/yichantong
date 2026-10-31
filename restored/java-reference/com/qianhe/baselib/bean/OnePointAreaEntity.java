package com.qianhe.baselib.bean;

import com.qianhe.baselib.base.BaseProEntity;
import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class OnePointAreaEntity extends BaseProEntity {
    public double depth;
    public double east;
    public double elev;
    public double lat;
    public double lon;
    public double north;
    public double ratioE;
    public double ratioN;

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            OnePointAreaEntity onePointAreaEntity = (OnePointAreaEntity) obj;
            if (Objects.equals(this.name, onePointAreaEntity.name) && Double.compare(this.lon, onePointAreaEntity.lon) == 0 && Double.compare(this.east, onePointAreaEntity.east) == 0 && Double.compare(this.lat, onePointAreaEntity.lat) == 0 && Double.compare(this.north, onePointAreaEntity.north) == 0 && Double.compare(this.elev, onePointAreaEntity.elev) == 0 && Double.compare(this.depth, onePointAreaEntity.depth) == 0 && this.subType == onePointAreaEntity.subType && this.showUnit == onePointAreaEntity.showUnit && Double.compare(this.ratioN, onePointAreaEntity.ratioN) == 0 && Double.compare(this.ratioE, onePointAreaEntity.ratioE) == 0 && this.createTime == onePointAreaEntity.createTime && this.updateTime == onePointAreaEntity.updateTime && this.version == onePointAreaEntity.version && this.baseStationLon == onePointAreaEntity.baseStationLon && this.baseStationLat == onePointAreaEntity.baseStationLat && this.baseStationElev == onePointAreaEntity.baseStationElev) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.name, Double.valueOf(this.lon), Double.valueOf(this.east), Double.valueOf(this.lat), Double.valueOf(this.north), Double.valueOf(this.elev), Double.valueOf(this.depth), Integer.valueOf(this.subType), Integer.valueOf(this.showUnit), Double.valueOf(this.ratioN), Double.valueOf(this.ratioE), Long.valueOf(this.createTime), Long.valueOf(this.updateTime), Long.valueOf(this.version), Double.valueOf(this.baseStationLon), Double.valueOf(this.baseStationLat), Double.valueOf(this.baseStationElev));
    }

    public String toString() {
        return "OnePointAreaEntity{lon=" + this.lon + ", east=" + this.east + ", lat=" + this.lat + ", north=" + this.north + ", elev=" + this.elev + ", depth=" + this.depth + ", ratioN=" + this.ratioN + ", ratioE=" + this.ratioE + ", id=" + this.id + ", projectUUid='" + this.projectUUid + AngleFormat.CH_MIN_SYMBOL + ", projectId=" + this.projectId + ", type=" + this.type + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", version=" + this.version + ", createTime=" + this.createTime + ", updateTime=" + this.updateTime + ", coordinateSystem='" + this.coordinateSystem + AngleFormat.CH_MIN_SYMBOL + ", corsName='" + this.corsName + AngleFormat.CH_MIN_SYMBOL + ", corsHost='" + this.corsHost + AngleFormat.CH_MIN_SYMBOL + ", corsPort=" + this.corsPort + ", corsUserName='" + this.corsUserName + AngleFormat.CH_MIN_SYMBOL + ", corsPassword='" + this.corsPassword + AngleFormat.CH_MIN_SYMBOL + ", corsMount='" + this.corsMount + AngleFormat.CH_MIN_SYMBOL + ", editState=" + this.editState + ", subType=" + this.subType + ", showUnit=" + this.showUnit + ", baseStationLon=" + this.baseStationLon + ", baseStationLat=" + this.baseStationLat + ", baseStationElev=" + this.baseStationElev + '}';
    }
}
