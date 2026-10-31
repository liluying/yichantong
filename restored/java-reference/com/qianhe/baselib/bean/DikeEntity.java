package com.qianhe.baselib.bean;

import com.qianhe.baselib.base.BaseProEntity;
import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DikeEntity extends BaseProEntity {
    public double depthA;
    public double depthB;
    public double east1;
    public double east2;
    public double length;
    public double north1;
    public double north2;
    public double ratio;
    public double targetElevation1;
    public double targetElevation2;
    public double targetLat1;
    public double targetLat2;
    public double targetLon1;
    public double targetLon2;
    public int tickA;
    public int tickB;
    public double width;

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            DikeEntity dikeEntity = (DikeEntity) obj;
            if (Objects.equals(this.name, dikeEntity.name) && Double.compare(this.targetLon1, dikeEntity.targetLon1) == 0 && Double.compare(this.targetLat1, dikeEntity.targetLat1) == 0 && Double.compare(this.east1, dikeEntity.east1) == 0 && Double.compare(this.north1, dikeEntity.north1) == 0 && Double.compare(this.targetElevation1, dikeEntity.targetElevation1) == 0 && Double.compare(this.targetLon2, dikeEntity.targetLon2) == 0 && Double.compare(this.targetLat2, dikeEntity.targetLat2) == 0 && Double.compare(this.east2, dikeEntity.east2) == 0 && Double.compare(this.north2, dikeEntity.north2) == 0 && Double.compare(this.targetElevation2, dikeEntity.targetElevation2) == 0 && Double.compare(this.width, dikeEntity.width) == 0 && Double.compare(this.length, dikeEntity.length) == 0 && Double.compare(this.depthA, dikeEntity.depthA) == 0 && Double.compare(this.depthB, dikeEntity.depthB) == 0 && Double.compare(this.ratio, dikeEntity.ratio) == 0 && this.tickA == dikeEntity.tickA && this.tickB == dikeEntity.tickB && this.subType == dikeEntity.subType && this.showUnit == dikeEntity.showUnit && this.createTime == dikeEntity.createTime && this.updateTime == dikeEntity.updateTime && this.version == dikeEntity.version && this.baseStationLon == dikeEntity.baseStationLon && this.baseStationLat == dikeEntity.baseStationLat && this.baseStationElev == dikeEntity.baseStationElev) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.name, Double.valueOf(this.targetLon1), Double.valueOf(this.targetLat1), Double.valueOf(this.east1), Double.valueOf(this.north1), Double.valueOf(this.targetElevation1), Double.valueOf(this.targetLon2), Double.valueOf(this.targetLat2), Double.valueOf(this.east2), Double.valueOf(this.north2), Double.valueOf(this.targetElevation2), Double.valueOf(this.width), Double.valueOf(this.length), Double.valueOf(this.depthA), Double.valueOf(this.depthB), Double.valueOf(this.ratio), Integer.valueOf(this.tickA), Integer.valueOf(this.tickB), Integer.valueOf(this.subType), Integer.valueOf(this.showUnit), Long.valueOf(this.createTime), Long.valueOf(this.updateTime), Long.valueOf(this.version), Double.valueOf(this.baseStationLon), Double.valueOf(this.baseStationLat), Double.valueOf(this.baseStationElev));
    }

    public String toString() {
        return "DikeEntity{id=" + this.id + ", project_uuid='" + this.projectUUid + AngleFormat.CH_MIN_SYMBOL + ", project_id=" + this.projectId + ", type=" + this.type + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", version=" + this.version + ", createTime=" + this.createTime + ", targetLon1=" + this.targetLon1 + ", targetLat1=" + this.targetLat1 + ", east1=" + this.east1 + ", north1=" + this.north1 + ", targetElevation1=" + this.targetElevation1 + ", targetLon2=" + this.targetLon2 + ", targetLat2=" + this.targetLat2 + ", east2=" + this.east2 + ", north2=" + this.north2 + ", targetElevation2=" + this.targetElevation2 + ", targetLonH=, targetElevationH=, width=" + this.width + ", coordinateSystem='" + this.coordinateSystem + AngleFormat.CH_MIN_SYMBOL + ", corsName='" + this.corsName + AngleFormat.CH_MIN_SYMBOL + ", corsHost='" + this.corsHost + AngleFormat.CH_MIN_SYMBOL + ", corsPort=" + this.corsPort + ", corsUserName=" + this.corsUserName + ", corsPassword=" + this.corsPassword + ", corsMount=" + this.corsMount + ", length=" + this.length + ", depthA=" + this.depthA + ", depthB=" + this.depthB + ", ratio=" + this.ratio + ", tickA=" + this.tickA + ", tickB=" + this.tickB + ", subType=" + this.subType + ", showUnit=" + this.showUnit + ", baseStationLon=" + this.baseStationLon + ", baseStationLat=" + this.baseStationLat + ", baseStationElev=" + this.baseStationElev + '}';
    }
}
