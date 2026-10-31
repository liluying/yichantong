package com.qianhe.baselib.bean;

import com.qianhe.baselib.base.BaseProEntity;
import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CurvedSlopeEntity extends BaseProEntity {
    public String coordsListJson;
    public double depthA;
    public double depthB;
    public double east1;
    public double east2;
    public double elev1;
    public double elev2;
    public double lat1;
    public double lat2;
    public double lon1;
    public double lon2;
    public double north1;
    public double north2;

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            CurvedSlopeEntity curvedSlopeEntity = (CurvedSlopeEntity) obj;
            if (Objects.equals(this.name, curvedSlopeEntity.name) && Double.compare(this.lon1, curvedSlopeEntity.lon1) == 0 && Double.compare(this.east1, curvedSlopeEntity.east1) == 0 && Double.compare(this.lat1, curvedSlopeEntity.lat1) == 0 && Double.compare(this.north1, curvedSlopeEntity.north1) == 0 && Double.compare(this.elev1, curvedSlopeEntity.elev1) == 0 && Double.compare(this.depthA, curvedSlopeEntity.depthA) == 0 && Double.compare(this.lon2, curvedSlopeEntity.lon2) == 0 && Double.compare(this.east2, curvedSlopeEntity.east2) == 0 && Double.compare(this.lat2, curvedSlopeEntity.lat2) == 0 && Double.compare(this.north2, curvedSlopeEntity.north2) == 0 && Double.compare(this.elev2, curvedSlopeEntity.elev2) == 0 && Double.compare(this.depthB, curvedSlopeEntity.depthB) == 0 && Objects.equals(this.coordsListJson, curvedSlopeEntity.coordsListJson) && this.subType == curvedSlopeEntity.subType && this.showUnit == curvedSlopeEntity.showUnit && this.createTime == curvedSlopeEntity.createTime && this.updateTime == curvedSlopeEntity.updateTime && this.version == curvedSlopeEntity.version && this.baseStationLon == curvedSlopeEntity.baseStationLon && this.baseStationLat == curvedSlopeEntity.baseStationLat && this.baseStationElev == curvedSlopeEntity.baseStationElev) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.name, Double.valueOf(this.lon1), Double.valueOf(this.east1), Double.valueOf(this.lat1), Double.valueOf(this.north1), Double.valueOf(this.elev1), this.coordsListJson, Integer.valueOf(this.subType), Integer.valueOf(this.showUnit), Double.valueOf(this.depthA), Double.valueOf(this.depthB), Long.valueOf(this.createTime), Long.valueOf(this.updateTime), Long.valueOf(this.version), Double.valueOf(this.baseStationLon), Double.valueOf(this.baseStationLat), Double.valueOf(this.baseStationElev));
    }

    public String toString() {
        return "ArbitraryLineEntity{lon1=" + this.lon1 + ", east1=" + this.east1 + ", lat1=" + this.lat1 + ", north1=" + this.north1 + ", elev1=" + this.elev1 + ", depthA=" + this.depthA + ", lon2=" + this.lon2 + ", east2=" + this.east2 + ", lat2=" + this.lat2 + ", north2=" + this.north2 + ", elev2=" + this.elev2 + ", depthB=" + this.depthB + ", coordsListJson=" + this.coordsListJson + ", id=" + this.id + ", projectUUid='" + this.projectUUid + AngleFormat.CH_MIN_SYMBOL + ", projectId=" + this.projectId + ", type=" + this.type + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", version=" + this.version + ", createTime=" + this.createTime + ", updateTime=" + this.updateTime + ", coordinateSystem='" + this.coordinateSystem + AngleFormat.CH_MIN_SYMBOL + ", corsName='" + this.corsName + AngleFormat.CH_MIN_SYMBOL + ", corsHost='" + this.corsHost + AngleFormat.CH_MIN_SYMBOL + ", corsPort=" + this.corsPort + ", corsUserName='" + this.corsUserName + AngleFormat.CH_MIN_SYMBOL + ", corsPassword='" + this.corsPassword + AngleFormat.CH_MIN_SYMBOL + ", corsMount='" + this.corsMount + AngleFormat.CH_MIN_SYMBOL + ", editState=" + this.editState + ", subType=" + this.subType + ", showUnit=" + this.showUnit + ", baseStationLon=" + this.baseStationLon + ", baseStationLat=" + this.baseStationLat + ", baseStationElev=" + this.baseStationElev + '}';
    }
}
