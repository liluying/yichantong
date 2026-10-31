package com.qianhe.baselib.bean;

import com.qianhe.baselib.base.BaseProEntity;
import java.util.Arrays;
import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShuaPoEntity extends BaseProEntity {

    @Deprecated
    public double ditchC;
    public double east1;
    public double east2;
    public double east3;

    @Deprecated
    public double[] fence;
    public double flatDistance;
    public double heigth;
    public double north1;
    public double north2;
    public double north3;

    @Deprecated
    public int quality1;

    @Deprecated
    public int quality2;

    @Deprecated
    public int quality3;
    public double ratio;
    public double targetElevation1;
    public double targetElevation2;
    public double targetElevation3;

    @Deprecated
    public double targetElevationBenchmark;
    public double targetLat1;
    public double targetLat2;
    public double targetLat3;

    @Deprecated
    public double targetLatBenchmark;
    public double targetLon1;
    public double targetLon2;
    public double targetLon3;

    @Deprecated
    public double targetLonBenchmark;
    public int tickA;
    public int tickB;

    @Deprecated
    public int tickC;
    public double width;

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            ShuaPoEntity shuaPoEntity = (ShuaPoEntity) obj;
            if (Objects.equals(this.name, shuaPoEntity.name) && Double.compare(this.targetLon1, shuaPoEntity.targetLon1) == 0 && Double.compare(this.targetLat1, shuaPoEntity.targetLat1) == 0 && Double.compare(this.east1, shuaPoEntity.east1) == 0 && Double.compare(this.north1, shuaPoEntity.north1) == 0 && Double.compare(this.targetElevation1, shuaPoEntity.targetElevation1) == 0 && Double.compare(this.targetLon2, shuaPoEntity.targetLon2) == 0 && Double.compare(this.targetLat2, shuaPoEntity.targetLat2) == 0 && Double.compare(this.east2, shuaPoEntity.east2) == 0 && Double.compare(this.north2, shuaPoEntity.north2) == 0 && Double.compare(this.targetElevation2, shuaPoEntity.targetElevation2) == 0 && Double.compare(this.targetLon3, shuaPoEntity.targetLon3) == 0 && Double.compare(this.targetLat3, shuaPoEntity.targetLat3) == 0 && Double.compare(this.east3, shuaPoEntity.east3) == 0 && Double.compare(this.north3, shuaPoEntity.north3) == 0 && Double.compare(this.ditchC, shuaPoEntity.ditchC) == 0 && Double.compare(this.width, shuaPoEntity.width) == 0 && Double.compare(this.heigth, shuaPoEntity.heigth) == 0 && Double.compare(this.flatDistance, shuaPoEntity.flatDistance) == 0 && Double.compare(this.ratio, shuaPoEntity.ratio) == 0 && Double.compare(this.targetElevation3, shuaPoEntity.targetElevation3) == 0 && Double.compare(this.targetLonBenchmark, shuaPoEntity.targetLonBenchmark) == 0 && Double.compare(this.targetLatBenchmark, shuaPoEntity.targetLatBenchmark) == 0 && Double.compare(this.targetElevationBenchmark, shuaPoEntity.targetElevationBenchmark) == 0 && this.quality1 == shuaPoEntity.quality1 && this.quality2 == shuaPoEntity.quality2 && this.quality3 == shuaPoEntity.quality3 && Objects.deepEquals(this.fence, shuaPoEntity.fence) && this.subType == shuaPoEntity.subType && this.tickA == shuaPoEntity.tickA && this.tickB == shuaPoEntity.tickB && this.tickC == shuaPoEntity.tickC && this.showUnit == shuaPoEntity.showUnit && this.createTime == shuaPoEntity.createTime && this.updateTime == shuaPoEntity.updateTime && this.version == shuaPoEntity.version && this.baseStationLon == shuaPoEntity.baseStationLon && this.baseStationLat == shuaPoEntity.baseStationLat && this.baseStationElev == shuaPoEntity.baseStationElev) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.name, Double.valueOf(this.targetLon1), Double.valueOf(this.targetLat1), Double.valueOf(this.east1), Double.valueOf(this.north1), Double.valueOf(this.targetElevation1), Double.valueOf(this.targetLon2), Double.valueOf(this.targetLat2), Double.valueOf(this.east2), Double.valueOf(this.north2), Double.valueOf(this.targetElevation2), Double.valueOf(this.targetLon3), Double.valueOf(this.targetLat3), Double.valueOf(this.east3), Double.valueOf(this.north3), Double.valueOf(this.targetElevation3), Double.valueOf(this.targetLonBenchmark), Double.valueOf(this.targetLatBenchmark), Double.valueOf(this.targetElevationBenchmark), Integer.valueOf(this.quality1), Integer.valueOf(this.quality2), Integer.valueOf(this.quality3), Integer.valueOf(Arrays.hashCode(this.fence)), Double.valueOf(this.heigth), Double.valueOf(this.flatDistance), Double.valueOf(this.width), Double.valueOf(this.ratio), Integer.valueOf(this.tickA), Integer.valueOf(this.tickB), Integer.valueOf(this.tickC), Double.valueOf(this.ditchC), Integer.valueOf(this.subType), Integer.valueOf(this.showUnit), Long.valueOf(this.createTime), Long.valueOf(this.updateTime), Long.valueOf(this.version), Double.valueOf(this.baseStationLon), Double.valueOf(this.baseStationLat), Double.valueOf(this.baseStationElev));
    }

    public String toString() {
        return "ShuaPoEntity{id=" + this.id + ", project_uuid='" + this.projectUUid + AngleFormat.CH_MIN_SYMBOL + ", project_id=" + this.projectId + ", type=" + this.type + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", version=" + this.version + ", createTime=" + this.createTime + ", targetLon1=" + this.targetLon1 + ", targetLat1=" + this.targetLat1 + ", east1=" + this.east1 + ", north1=" + this.north1 + ", targetElevation1=" + this.targetElevation1 + ", targetLon2=" + this.targetLon2 + ", targetLat2=" + this.targetLat2 + ", east2=" + this.east2 + ", north2=" + this.north2 + ", targetElevation2=" + this.targetElevation2 + ", targetLon3=" + this.targetLon3 + ", targetLat3=" + this.targetLat3 + ", east3=" + this.east3 + ", north3=" + this.north3 + ", targetElevation3=" + this.targetElevation3 + ", targetLonBenchmark=" + this.targetLonBenchmark + ", targetLatBenchmark=" + this.targetLatBenchmark + ", targetElevationBenchmark=" + this.targetElevationBenchmark + ", quality1=" + this.quality1 + ", quality2=" + this.quality2 + ", quality3=" + this.quality3 + ", fence=" + Arrays.toString(this.fence) + ", coordinateSystem='" + this.coordinateSystem + AngleFormat.CH_MIN_SYMBOL + ", corsName='" + this.corsName + AngleFormat.CH_MIN_SYMBOL + ", corsHost='" + this.corsHost + AngleFormat.CH_MIN_SYMBOL + ", corsPort=" + this.corsPort + ", corsUserName=" + this.corsUserName + ", corsPassword=" + this.corsPassword + ", corsMount=" + this.corsMount + ", tickA=" + this.tickA + ", tickB=" + this.tickB + ", tickC=" + this.tickC + ", ditchC=" + this.ditchC + ", width=" + this.width + ", heigth=" + this.heigth + ", flatDistance=" + this.flatDistance + ", ratio=" + this.ratio + ", subType=" + this.subType + ", showUnit=" + this.showUnit + ", baseStationLon=" + this.baseStationLon + ", baseStationLat=" + this.baseStationLat + ", baseStationElev=" + this.baseStationElev + '}';
    }
}
