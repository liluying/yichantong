package com.qianhe.baselib.bean;

import com.qianhe.baselib.base.BaseProEntity;
import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SiteLevelingEntity extends BaseProEntity {
    public double compactionCoeff = 1.0d;
    public String coordsListJson;
    public double ratio;

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            SiteLevelingEntity siteLevelingEntity = (SiteLevelingEntity) obj;
            if (Objects.equals(this.name, siteLevelingEntity.name) && Objects.equals(this.coordsListJson, siteLevelingEntity.coordsListJson) && this.subType == siteLevelingEntity.subType && this.showUnit == siteLevelingEntity.showUnit && Double.compare(this.ratio, siteLevelingEntity.ratio) == 0 && Double.compare(this.compactionCoeff, siteLevelingEntity.compactionCoeff) == 0 && this.createTime == siteLevelingEntity.createTime && this.updateTime == siteLevelingEntity.updateTime && this.version == siteLevelingEntity.version && this.baseStationLon == siteLevelingEntity.baseStationLon && this.baseStationLat == siteLevelingEntity.baseStationLat && this.baseStationElev == siteLevelingEntity.baseStationElev) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.name, this.coordsListJson, Integer.valueOf(this.subType), Integer.valueOf(this.showUnit), Double.valueOf(this.ratio), Double.valueOf(this.compactionCoeff), Long.valueOf(this.createTime), Long.valueOf(this.updateTime), Long.valueOf(this.version), Double.valueOf(this.baseStationLon), Double.valueOf(this.baseStationLat), Double.valueOf(this.baseStationElev));
    }

    public String toString() {
        return "SiteLevelingEntity{name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", coordsListJson=" + this.coordsListJson + ", ratio=" + this.ratio + ", compactionCoeff=" + this.compactionCoeff + ", id=" + this.id + ", projectUUid='" + this.projectUUid + AngleFormat.CH_MIN_SYMBOL + ", projectId=" + this.projectId + ", type=" + this.type + ", version=" + this.version + ", createTime=" + this.createTime + ", updateTime=" + this.updateTime + ", coordinateSystem='" + this.coordinateSystem + AngleFormat.CH_MIN_SYMBOL + ", corsName='" + this.corsName + AngleFormat.CH_MIN_SYMBOL + ", corsHost='" + this.corsHost + AngleFormat.CH_MIN_SYMBOL + ", corsPort=" + this.corsPort + ", corsUserName='" + this.corsUserName + AngleFormat.CH_MIN_SYMBOL + ", corsPassword='" + this.corsPassword + AngleFormat.CH_MIN_SYMBOL + ", corsMount='" + this.corsMount + AngleFormat.CH_MIN_SYMBOL + ", editState=" + this.editState + ", subType=" + this.subType + ", showUnit=" + this.showUnit + ", baseStationLon=" + this.baseStationLon + ", baseStationLat=" + this.baseStationLat + ", baseStationElev=" + this.baseStationElev + '}';
    }
}
