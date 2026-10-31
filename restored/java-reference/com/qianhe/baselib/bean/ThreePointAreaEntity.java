package com.qianhe.baselib.bean;

import com.qianhe.baselib.base.BaseProEntity;
import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ThreePointAreaEntity extends BaseProEntity {
    public double depthA;
    public double depthB;
    public double depthC;
    public double east1;
    public double east2;
    public double east3;
    public double elev1;
    public double elev2;
    public double elev3;
    public double lat1;
    public double lat2;
    public double lat3;
    public double lon1;
    public double lon2;
    public double lon3;
    public double north1;
    public double north2;
    public double north3;

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            ThreePointAreaEntity threePointAreaEntity = (ThreePointAreaEntity) obj;
            if (Objects.equals(this.name, threePointAreaEntity.name) && Double.compare(this.lon1, threePointAreaEntity.lon1) == 0 && Double.compare(this.lat1, threePointAreaEntity.lat1) == 0 && Double.compare(this.east1, threePointAreaEntity.east1) == 0 && Double.compare(this.north1, threePointAreaEntity.north1) == 0 && Double.compare(this.elev1, threePointAreaEntity.elev1) == 0 && Double.compare(this.lon2, threePointAreaEntity.lon2) == 0 && Double.compare(this.lat2, threePointAreaEntity.lat2) == 0 && Double.compare(this.east2, threePointAreaEntity.east2) == 0 && Double.compare(this.north2, threePointAreaEntity.north2) == 0 && Double.compare(this.elev2, threePointAreaEntity.elev2) == 0 && Double.compare(this.lon3, threePointAreaEntity.lon3) == 0 && Double.compare(this.lat3, threePointAreaEntity.lat3) == 0 && Double.compare(this.east3, threePointAreaEntity.east3) == 0 && Double.compare(this.north3, threePointAreaEntity.north3) == 0 && Double.compare(this.elev3, threePointAreaEntity.elev3) == 0 && Double.compare(this.depthA, threePointAreaEntity.depthA) == 0 && Double.compare(this.depthB, threePointAreaEntity.depthB) == 0 && Double.compare(this.depthC, threePointAreaEntity.depthC) == 0 && this.subType == threePointAreaEntity.subType && this.showUnit == threePointAreaEntity.showUnit && this.createTime == threePointAreaEntity.createTime && this.updateTime == threePointAreaEntity.updateTime && this.version == threePointAreaEntity.version && this.baseStationLon == threePointAreaEntity.baseStationLon && this.baseStationLat == threePointAreaEntity.baseStationLat && this.baseStationElev == threePointAreaEntity.baseStationElev) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.name, Double.valueOf(this.lon1), Double.valueOf(this.lat1), Double.valueOf(this.east1), Double.valueOf(this.north1), Double.valueOf(this.elev1), Double.valueOf(this.lon2), Double.valueOf(this.lat2), Double.valueOf(this.east2), Double.valueOf(this.north2), Double.valueOf(this.elev2), Double.valueOf(this.lon3), Double.valueOf(this.lat3), Double.valueOf(this.east3), Double.valueOf(this.north3), Double.valueOf(this.elev3), Double.valueOf(this.depthA), Double.valueOf(this.depthB), Double.valueOf(this.depthC), Integer.valueOf(this.subType), Integer.valueOf(this.showUnit), Long.valueOf(this.createTime), Long.valueOf(this.updateTime), Long.valueOf(this.version), Double.valueOf(this.baseStationLon), Double.valueOf(this.baseStationLat), Double.valueOf(this.baseStationElev));
    }

    public String toString() {
        return "ThreePointAreaEntity{id=" + this.id + ", lon1=" + this.lon1 + ", lat1=" + this.lat1 + ", east1=" + this.east1 + ", north1=" + this.north1 + ", elev1=" + this.elev1 + ", lon2=" + this.lon2 + ", lat2=" + this.lat2 + ", east2=" + this.east2 + ", north2=" + this.north2 + ", elev2=" + this.elev2 + ", lon3=" + this.lon3 + ", lat3=" + this.lat3 + ", east3=" + this.east3 + ", north3=" + this.north3 + ", elev3=" + this.elev3 + ", depthA=" + this.depthA + ", depthB=" + this.depthB + ", depthC=" + this.depthC + ", projectUUid='" + this.projectUUid + AngleFormat.CH_MIN_SYMBOL + ", projectId=" + this.projectId + ", type=" + this.type + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", version=" + this.version + ", createTime=" + this.createTime + ", updateTime=" + this.updateTime + ", coordinateSystem='" + this.coordinateSystem + AngleFormat.CH_MIN_SYMBOL + ", corsName='" + this.corsName + AngleFormat.CH_MIN_SYMBOL + ", corsHost='" + this.corsHost + AngleFormat.CH_MIN_SYMBOL + ", corsPort=" + this.corsPort + ", corsUserName='" + this.corsUserName + AngleFormat.CH_MIN_SYMBOL + ", corsPassword='" + this.corsPassword + AngleFormat.CH_MIN_SYMBOL + ", corsMount='" + this.corsMount + AngleFormat.CH_MIN_SYMBOL + ", editState=" + this.editState + ", subType=" + this.subType + ", showUnit=" + this.showUnit + ", baseStationLon=" + this.baseStationLon + ", baseStationLat=" + this.baseStationLat + ", baseStationElev=" + this.baseStationElev + '}';
    }
}
