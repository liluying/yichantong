package com.qianhe.baselib.bean;

import com.qianhe.baselib.base.BaseProEntity;
import java.util.Arrays;
import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ZhaoPingEntity extends BaseProEntity {
    public double depth;
    public double east;

    @Deprecated
    public double[] fence;

    @Deprecated
    public double height;
    public double north;

    @Deprecated
    public int quality;
    public double targetElevation;
    public double targetLat;
    public double targetLon;

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            ZhaoPingEntity zhaoPingEntity = (ZhaoPingEntity) obj;
            if (Objects.equals(this.name, zhaoPingEntity.name) && Double.compare(this.targetLon, zhaoPingEntity.targetLon) == 0 && Double.compare(this.east, zhaoPingEntity.east) == 0 && Double.compare(this.targetLat, zhaoPingEntity.targetLat) == 0 && Double.compare(this.north, zhaoPingEntity.north) == 0 && Double.compare(this.targetElevation, zhaoPingEntity.targetElevation) == 0 && Double.compare(this.depth, zhaoPingEntity.depth) == 0 && Double.compare(this.height, zhaoPingEntity.height) == 0 && this.quality == zhaoPingEntity.quality && this.subType == zhaoPingEntity.subType && this.showUnit == zhaoPingEntity.showUnit && Objects.deepEquals(this.fence, zhaoPingEntity.fence) && this.createTime == zhaoPingEntity.createTime && this.updateTime == zhaoPingEntity.updateTime && this.version == zhaoPingEntity.version && this.baseStationLon == zhaoPingEntity.baseStationLon && this.baseStationLat == zhaoPingEntity.baseStationLat && this.baseStationElev == zhaoPingEntity.baseStationElev) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.name, Double.valueOf(this.targetLon), Double.valueOf(this.east), Double.valueOf(this.targetLat), Double.valueOf(this.north), Double.valueOf(this.targetElevation), Double.valueOf(this.depth), Double.valueOf(this.height), Integer.valueOf(Arrays.hashCode(this.fence)), Integer.valueOf(this.quality), Integer.valueOf(this.subType), Integer.valueOf(this.showUnit), Long.valueOf(this.createTime), Long.valueOf(this.updateTime), Long.valueOf(this.version), Double.valueOf(this.baseStationLon), Double.valueOf(this.baseStationLat), Double.valueOf(this.baseStationElev));
    }

    public String toString() {
        return "ZhaoPingEntity{id=" + this.id + ", project_uuid='" + this.projectUUid + AngleFormat.CH_MIN_SYMBOL + ", project_id=" + this.projectId + ", type=" + this.type + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", version=" + this.version + ", createTime=" + this.createTime + ", targetLon=" + this.targetLon + ", east=" + this.east + ", targetLat=" + this.targetLat + ", north=" + this.north + ", targetElevation=" + this.targetElevation + ", depth=" + this.depth + ", height=" + this.height + ", fence=" + Arrays.toString(this.fence) + ", quality=" + this.quality + ", coordinateSystem='" + this.coordinateSystem + AngleFormat.CH_MIN_SYMBOL + ", corsName='" + this.corsName + AngleFormat.CH_MIN_SYMBOL + ", corsHost='" + this.corsHost + AngleFormat.CH_MIN_SYMBOL + ", corsPort=" + this.corsPort + ", corsUserName=" + this.corsUserName + ", corsPassword=" + this.corsPassword + ", corsMount=" + this.corsMount + ", subType=" + this.subType + ", showUnit=" + this.showUnit + ", baseStationLon=" + this.baseStationLon + ", baseStationLat=" + this.baseStationLat + ", baseStationElev=" + this.baseStationElev + '}';
    }
}
