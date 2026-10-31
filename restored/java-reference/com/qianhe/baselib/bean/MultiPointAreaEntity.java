package com.qianhe.baselib.bean;

import com.qianhe.baselib.base.BaseProEntity;
import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class MultiPointAreaEntity extends BaseProEntity {
    public String coordsListJson;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            MultiPointAreaEntity multiPointAreaEntity = (MultiPointAreaEntity) obj;
            if (this.shovelTipType == multiPointAreaEntity.shovelTipType && Objects.equals(this.coordsListJson, multiPointAreaEntity.coordsListJson) && Objects.equals(this.name, multiPointAreaEntity.name) && this.subType == multiPointAreaEntity.subType && this.showUnit == multiPointAreaEntity.showUnit && this.createTime == multiPointAreaEntity.createTime && this.updateTime == multiPointAreaEntity.updateTime && this.version == multiPointAreaEntity.version && this.baseStationLon == multiPointAreaEntity.baseStationLon && this.baseStationLat == multiPointAreaEntity.baseStationLat && this.baseStationElev == multiPointAreaEntity.baseStationElev) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.name, Integer.valueOf(this.shovelTipType), this.coordsListJson, Integer.valueOf(this.subType), Integer.valueOf(this.showUnit), Long.valueOf(this.createTime), Long.valueOf(this.updateTime), Long.valueOf(this.version), Double.valueOf(this.baseStationLon), Double.valueOf(this.baseStationLat), Double.valueOf(this.baseStationElev));
    }

    public String toString() {
        return "MultiPointAreaEntity{id=" + this.id + ", projectUUid='" + this.projectUUid + AngleFormat.CH_MIN_SYMBOL + ", projectId=" + this.projectId + ", type=" + this.type + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", shovelTipType=" + this.shovelTipType + ", coordsListJson='" + this.coordsListJson + AngleFormat.CH_MIN_SYMBOL + ", subType=" + this.subType + ", showUnit=" + this.showUnit + ", createTime=" + this.createTime + ", updateTime=" + this.updateTime + '}';
    }
}
