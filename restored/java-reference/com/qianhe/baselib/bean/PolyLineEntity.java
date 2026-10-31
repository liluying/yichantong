package com.qianhe.baselib.bean;

import com.qianhe.baselib.base.BaseProEntity;
import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PolyLineEntity extends BaseProEntity {
    public static final int SLOPE_MODE_NONE = 0;
    public static final int SLOPE_MODE_OVERALL = 1;
    public static final int SLOPE_MODE_SEGMENT = 2;
    public String coordsListJson;

    @Deprecated
    public double depthA;

    @Deprecated
    public double depthB;

    @Deprecated
    public double heightDiff;
    public double ratio;

    @Deprecated
    public int tickA;

    @Deprecated
    public int tickB;
    public double width;

    public boolean isOverallSlopeMode() {
        int i = this.subType;
        if (i == 1) {
            return true;
        }
        return (i == 2 || this.ratio == 0.0d) ? false : true;
    }

    public boolean isSegmentSlopeMode() {
        return this.subType == 2;
    }

    public boolean isNoSlopeMode() {
        return (isOverallSlopeMode() || isSegmentSlopeMode()) ? false : true;
    }

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            PolyLineEntity polyLineEntity = (PolyLineEntity) obj;
            if (Objects.equals(this.name, polyLineEntity.name) && Double.compare(this.width, polyLineEntity.width) == 0 && Double.compare(this.ratio, polyLineEntity.ratio) == 0 && Double.compare(this.heightDiff, polyLineEntity.heightDiff) == 0 && Double.compare(this.depthA, polyLineEntity.depthA) == 0 && Double.compare(this.depthB, polyLineEntity.depthB) == 0 && this.tickA == polyLineEntity.tickA && this.tickB == polyLineEntity.tickB && this.subType == polyLineEntity.subType && this.showUnit == polyLineEntity.showUnit && this.createTime == polyLineEntity.createTime && this.updateTime == polyLineEntity.updateTime && this.version == polyLineEntity.version && this.baseStationLon == polyLineEntity.baseStationLon && this.baseStationLat == polyLineEntity.baseStationLat && this.baseStationElev == polyLineEntity.baseStationElev && Objects.equals(this.coordsListJson, polyLineEntity.coordsListJson)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.name, Double.valueOf(this.width), Double.valueOf(this.ratio), Double.valueOf(this.heightDiff), Double.valueOf(this.depthA), Double.valueOf(this.depthB), Integer.valueOf(this.tickA), Integer.valueOf(this.tickB), Integer.valueOf(this.subType), Integer.valueOf(this.showUnit), Long.valueOf(this.createTime), Long.valueOf(this.updateTime), Long.valueOf(this.version), Double.valueOf(this.baseStationLon), Double.valueOf(this.baseStationLat), Double.valueOf(this.baseStationElev), this.coordsListJson);
    }

    public String toString() {
        return "PolyLineEntity{id=" + this.id + ", project_uuid='" + this.projectUUid + AngleFormat.CH_MIN_SYMBOL + ", project_id=" + this.projectId + ", type=" + this.type + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", version=" + this.version + ", createTime=" + this.createTime + ", width=" + this.width + ", ratio=" + this.ratio + ", heightDiff=" + this.heightDiff + ", coordinateSystem='" + this.coordinateSystem + AngleFormat.CH_MIN_SYMBOL + ", corsName='" + this.corsName + AngleFormat.CH_MIN_SYMBOL + ", corsHost='" + this.corsHost + AngleFormat.CH_MIN_SYMBOL + ", corsPort=" + this.corsPort + ", corsUserName=" + this.corsUserName + ", corsPassword=" + this.corsPassword + ", corsMount=" + this.corsMount + ", depthA=" + this.depthA + ", depthB=" + this.depthB + ", tickA=" + this.tickA + ", tickB=" + this.tickB + ", subType=" + this.subType + ", showUnit=" + this.showUnit + ", baseStationLon=" + this.baseStationLon + ", baseStationLat=" + this.baseStationLat + ", baseStationElev=" + this.baseStationElev + ", coordsListJson=" + this.coordsListJson + '}';
    }
}
