package com.qianhe.baselib.bean;

import com.qianhe.baselib.base.BaseProEntity;
import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ArbitraryLineEntity extends BaseProEntity {
    public double depth;
    public double east;
    public double elev;
    public double lat;
    public double lon;
    public double north;
    public double ratio;

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            ArbitraryLineEntity arbitraryLineEntity = (ArbitraryLineEntity) obj;
            if (Objects.equals(this.name, arbitraryLineEntity.name) && Double.compare(this.lon, arbitraryLineEntity.lon) == 0 && Double.compare(this.east, arbitraryLineEntity.east) == 0 && Double.compare(this.lat, arbitraryLineEntity.lat) == 0 && Double.compare(this.north, arbitraryLineEntity.north) == 0 && Double.compare(this.elev, arbitraryLineEntity.elev) == 0 && this.subType == arbitraryLineEntity.subType && this.showUnit == arbitraryLineEntity.showUnit && Double.compare(this.depth, arbitraryLineEntity.depth) == 0 && Double.compare(this.ratio, arbitraryLineEntity.ratio) == 0 && this.createTime == arbitraryLineEntity.createTime && this.updateTime == arbitraryLineEntity.updateTime && this.version == arbitraryLineEntity.version && this.baseStationLon == arbitraryLineEntity.baseStationLon && this.baseStationLat == arbitraryLineEntity.baseStationLat && this.baseStationElev == arbitraryLineEntity.baseStationElev) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.name, Double.valueOf(this.lon), Double.valueOf(this.east), Double.valueOf(this.lat), Double.valueOf(this.north), Double.valueOf(this.elev), Integer.valueOf(this.subType), Integer.valueOf(this.showUnit), Double.valueOf(this.depth), Double.valueOf(this.ratio), Long.valueOf(this.createTime), Long.valueOf(this.updateTime), Long.valueOf(this.version), Double.valueOf(this.baseStationLon), Double.valueOf(this.baseStationLat), Double.valueOf(this.baseStationElev));
    }

    public String toString() {
        return "ArbitraryLineEntity{lon=" + this.lon + ", east=" + this.east + ", lat=" + this.lat + ", north=" + this.north + ", elev=" + this.elev + ", depth=" + this.depth + ", ratio=" + this.ratio + ", id=" + this.id + ", projectUUid='" + this.projectUUid + AngleFormat.CH_MIN_SYMBOL + ", projectId=" + this.projectId + ", type=" + this.type + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", version=" + this.version + ", createTime=" + this.createTime + ", updateTime=" + this.updateTime + ", coordinateSystem='" + this.coordinateSystem + AngleFormat.CH_MIN_SYMBOL + ", corsName='" + this.corsName + AngleFormat.CH_MIN_SYMBOL + ", corsHost='" + this.corsHost + AngleFormat.CH_MIN_SYMBOL + ", corsPort=" + this.corsPort + ", corsUserName='" + this.corsUserName + AngleFormat.CH_MIN_SYMBOL + ", corsPassword='" + this.corsPassword + AngleFormat.CH_MIN_SYMBOL + ", corsMount='" + this.corsMount + AngleFormat.CH_MIN_SYMBOL + ", editState=" + this.editState + ", subType=" + this.subType + ", showUnit=" + this.showUnit + ", baseStationLon=" + this.baseStationLon + ", baseStationLat=" + this.baseStationLat + ", baseStationElev=" + this.baseStationElev + '}';
    }
}
