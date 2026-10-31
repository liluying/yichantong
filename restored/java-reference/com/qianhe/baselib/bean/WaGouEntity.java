package com.qianhe.baselib.bean;

import com.qianhe.baselib.base.BaseProEntity;
import java.util.Arrays;
import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class WaGouEntity extends BaseProEntity {
    public int advancedType = -1;

    @Deprecated
    public int collectType;

    @Deprecated
    public double depth;
    public double depthA;
    public double depthB;
    public double east1;
    public double east2;

    @Deprecated
    public double eastH;

    @Deprecated
    public double[] fence;
    public double leftBottomWidth;
    public double leftSlopeRatio;
    public double length;
    public double north1;
    public double north2;

    @Deprecated
    public double northH;

    @Deprecated
    public double openlineType;

    @Deprecated
    public int quality1;

    @Deprecated
    public int quality2;

    @Deprecated
    public int qualityH;
    public double ratio;
    public double rightBottomWidth;
    public double rightSlopeRatio;
    public double targetElevation1;
    public double targetElevation2;

    @Deprecated
    public double targetElevationBenchmark;

    @Deprecated
    public double targetElevationH;
    public double targetLat1;
    public double targetLat2;

    @Deprecated
    public double targetLatBenchmark;

    @Deprecated
    public double targetLatH;
    public double targetLon1;
    public double targetLon2;

    @Deprecated
    public double targetLonBenchmark;

    @Deprecated
    public double targetLonH;
    public int tickA;
    public int tickB;
    public double width;

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            WaGouEntity waGouEntity = (WaGouEntity) obj;
            if (Objects.equals(this.name, waGouEntity.name) && Double.compare(this.targetLon1, waGouEntity.targetLon1) == 0 && Double.compare(this.targetLat1, waGouEntity.targetLat1) == 0 && Double.compare(this.east1, waGouEntity.east1) == 0 && Double.compare(this.north1, waGouEntity.north1) == 0 && Double.compare(this.targetElevation1, waGouEntity.targetElevation1) == 0 && Double.compare(this.targetLon2, waGouEntity.targetLon2) == 0 && Double.compare(this.targetLat2, waGouEntity.targetLat2) == 0 && Double.compare(this.east2, waGouEntity.east2) == 0 && Double.compare(this.north2, waGouEntity.north2) == 0 && Double.compare(this.targetElevation2, waGouEntity.targetElevation2) == 0 && Double.compare(this.targetLonH, waGouEntity.targetLonH) == 0 && Double.compare(this.targetLatH, waGouEntity.targetLatH) == 0 && Double.compare(this.eastH, waGouEntity.eastH) == 0 && Double.compare(this.northH, waGouEntity.northH) == 0 && Double.compare(this.targetElevationH, waGouEntity.targetElevationH) == 0 && Double.compare(this.targetLonBenchmark, waGouEntity.targetLonBenchmark) == 0 && Double.compare(this.targetLatBenchmark, waGouEntity.targetLatBenchmark) == 0 && Double.compare(this.targetElevationBenchmark, waGouEntity.targetElevationBenchmark) == 0 && this.quality1 == waGouEntity.quality1 && this.quality2 == waGouEntity.quality2 && this.qualityH == waGouEntity.qualityH && Double.compare(this.openlineType, waGouEntity.openlineType) == 0 && this.collectType == waGouEntity.collectType && Double.compare(this.depth, waGouEntity.depth) == 0 && Double.compare(this.width, waGouEntity.width) == 0 && Double.compare(this.ratio, waGouEntity.ratio) == 0 && Objects.deepEquals(this.fence, waGouEntity.fence) && Double.compare(this.length, waGouEntity.length) == 0 && Double.compare(this.depthA, waGouEntity.depthA) == 0 && Double.compare(this.depthB, waGouEntity.depthB) == 0 && this.tickA == waGouEntity.tickA && this.tickB == waGouEntity.tickB && this.subType == waGouEntity.subType && this.showUnit == waGouEntity.showUnit && this.createTime == waGouEntity.createTime && this.updateTime == waGouEntity.updateTime && this.version == waGouEntity.version && this.baseStationLon == waGouEntity.baseStationLon && this.baseStationLat == waGouEntity.baseStationLat && this.baseStationElev == waGouEntity.baseStationElev && Double.compare(this.leftSlopeRatio, waGouEntity.leftSlopeRatio) == 0 && Double.compare(this.rightSlopeRatio, waGouEntity.rightSlopeRatio) == 0 && Double.compare(this.leftBottomWidth, waGouEntity.leftBottomWidth) == 0 && Double.compare(this.rightBottomWidth, waGouEntity.rightBottomWidth) == 0 && this.advancedType == waGouEntity.advancedType) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.name, Double.valueOf(this.targetLon1), Double.valueOf(this.targetLat1), Double.valueOf(this.east1), Double.valueOf(this.north1), Double.valueOf(this.targetElevation1), Double.valueOf(this.targetLon2), Double.valueOf(this.targetLat2), Double.valueOf(this.east2), Double.valueOf(this.north2), Double.valueOf(this.targetElevation2), Double.valueOf(this.targetLonH), Double.valueOf(this.targetLatH), Double.valueOf(this.eastH), Double.valueOf(this.northH), Double.valueOf(this.targetElevationH), Double.valueOf(this.targetLonBenchmark), Double.valueOf(this.targetLatBenchmark), Double.valueOf(this.targetElevationBenchmark), Integer.valueOf(this.quality1), Integer.valueOf(this.quality2), Integer.valueOf(this.qualityH), Integer.valueOf(Arrays.hashCode(this.fence)), Double.valueOf(this.openlineType), Integer.valueOf(this.collectType), Double.valueOf(this.depth), Double.valueOf(this.width), Double.valueOf(this.ratio), Double.valueOf(this.length), Double.valueOf(this.depthA), Double.valueOf(this.depthB), Integer.valueOf(this.tickA), Integer.valueOf(this.tickB), Integer.valueOf(this.subType), Integer.valueOf(this.showUnit), Long.valueOf(this.createTime), Long.valueOf(this.updateTime), Long.valueOf(this.version), Double.valueOf(this.baseStationLon), Double.valueOf(this.baseStationLat), Double.valueOf(this.baseStationElev), Double.valueOf(this.leftSlopeRatio), Double.valueOf(this.rightSlopeRatio), Double.valueOf(this.leftBottomWidth), Double.valueOf(this.rightBottomWidth), Integer.valueOf(this.advancedType));
    }

    public String toString() {
        return "WaGouEntity{id=" + this.id + ", project_uuid='" + this.projectUUid + AngleFormat.CH_MIN_SYMBOL + ", project_id=" + this.projectId + ", type=" + this.type + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", version=" + this.version + ", createTime=" + this.createTime + ", targetLon1=" + this.targetLon1 + ", targetLat1=" + this.targetLat1 + ", east1=" + this.east1 + ", north1=" + this.north1 + ", targetElevation1=" + this.targetElevation1 + ", targetLon2=" + this.targetLon2 + ", targetLat2=" + this.targetLat2 + ", east2=" + this.east2 + ", north2=" + this.north2 + ", targetElevation2=" + this.targetElevation2 + ", targetLonH=" + this.targetLonH + ", targetLatH=" + this.targetLatH + ", eastH=" + this.eastH + ", northH=" + this.northH + ", targetElevationH=" + this.targetElevationH + ", targetLonBenchmark=" + this.targetLonBenchmark + ", targetLatBenchmark=" + this.targetLatBenchmark + ", targetElevationBenchmark=" + this.targetElevationBenchmark + ", quality1=" + this.quality1 + ", quality2=" + this.quality2 + ", qualityH=" + this.qualityH + ", fence=" + Arrays.toString(this.fence) + ", openlineType=" + this.openlineType + ", collectType=" + this.collectType + ", depth=" + this.depth + ", width=" + this.width + ", ratio=" + this.ratio + ", coordinateSystem='" + this.coordinateSystem + AngleFormat.CH_MIN_SYMBOL + ", corsName='" + this.corsName + AngleFormat.CH_MIN_SYMBOL + ", corsHost='" + this.corsHost + AngleFormat.CH_MIN_SYMBOL + ", corsPort=" + this.corsPort + ", corsUserName=" + this.corsUserName + ", corsPassword=" + this.corsPassword + ", corsMount=" + this.corsMount + ", length=" + this.length + ", depthA=" + this.depthA + ", depthB=" + this.depthB + ", tickA=" + this.tickA + ", tickB=" + this.tickB + ", subType=" + this.subType + ", showUnit=" + this.showUnit + ", baseStationLon=" + this.baseStationLon + ", baseStationLat=" + this.baseStationLat + ", baseStationElev=" + this.baseStationElev + ", leftSlopeRatio=" + this.leftSlopeRatio + ", rightSlopeRatio=" + this.rightSlopeRatio + ", leftBottomWidth=" + this.leftBottomWidth + ", rightBottomWidth=" + this.rightBottomWidth + ", advancedType=" + this.advancedType + '}';
    }
}
