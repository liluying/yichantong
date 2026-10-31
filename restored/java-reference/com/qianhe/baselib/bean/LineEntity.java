package com.qianhe.baselib.bean;

import com.qianhe.baselib.base.BaseProEntity;
import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LineEntity extends BaseProEntity {
    public double depthA;
    public double depthB;
    public double east1;
    public double east2;
    public int leftItems;
    public double length;
    public double north1;
    public double north2;
    public double pileSpacing;
    public double ratio;
    public int rigthItems;
    public double spacing;
    public double targetElevation1;
    public double targetElevation2;
    public double targetLat1;
    public double targetLat2;
    public double targetLon1;
    public double targetLon2;
    public double width = 1.0d;

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            LineEntity lineEntity = (LineEntity) obj;
            if (Objects.equals(this.name, lineEntity.name) && Double.compare(this.targetLon1, lineEntity.targetLon1) == 0 && Double.compare(this.targetLat1, lineEntity.targetLat1) == 0 && Double.compare(this.east1, lineEntity.east1) == 0 && Double.compare(this.north1, lineEntity.north1) == 0 && Double.compare(this.targetElevation1, lineEntity.targetElevation1) == 0 && Double.compare(this.targetLon2, lineEntity.targetLon2) == 0 && Double.compare(this.targetLat2, lineEntity.targetLat2) == 0 && Double.compare(this.east2, lineEntity.east2) == 0 && Double.compare(this.north2, lineEntity.north2) == 0 && Double.compare(this.targetElevation2, lineEntity.targetElevation2) == 0 && Double.compare(this.width, lineEntity.width) == 0 && Double.compare(this.ratio, lineEntity.ratio) == 0 && Double.compare(this.length, lineEntity.length) == 0 && Double.compare(this.depthA, lineEntity.depthA) == 0 && Double.compare(this.depthB, lineEntity.depthB) == 0 && this.spacing == lineEntity.spacing && this.pileSpacing == lineEntity.pileSpacing && this.rigthItems == lineEntity.rigthItems && this.leftItems == lineEntity.leftItems && this.subType == lineEntity.subType && this.showUnit == lineEntity.showUnit && this.createTime == lineEntity.createTime && this.updateTime == lineEntity.updateTime && this.version == lineEntity.version && this.baseStationLon == lineEntity.baseStationLon && this.baseStationLat == lineEntity.baseStationLat && this.baseStationElev == lineEntity.baseStationElev) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.name, Double.valueOf(this.targetLon1), Double.valueOf(this.targetLat1), Double.valueOf(this.east1), Double.valueOf(this.north1), Double.valueOf(this.targetElevation1), Double.valueOf(this.targetLon2), Double.valueOf(this.targetLat2), Double.valueOf(this.east2), Double.valueOf(this.north2), Double.valueOf(this.targetElevation2), Double.valueOf(this.width), Double.valueOf(this.ratio), Double.valueOf(this.length), Double.valueOf(this.depthA), Double.valueOf(this.depthB), Double.valueOf(this.spacing), Double.valueOf(this.pileSpacing), Integer.valueOf(this.rigthItems), Integer.valueOf(this.leftItems), Integer.valueOf(this.subType), Integer.valueOf(this.showUnit), Long.valueOf(this.createTime), Long.valueOf(this.updateTime), Long.valueOf(this.version), Double.valueOf(this.baseStationLon), Double.valueOf(this.baseStationLat), Double.valueOf(this.baseStationElev));
    }

    public String toString() {
        return "LineEntity{id=" + this.id + ", project_uuid='" + this.projectUUid + AngleFormat.CH_MIN_SYMBOL + ", project_id=" + this.projectId + ", type=" + this.type + ", name='" + this.name + AngleFormat.CH_MIN_SYMBOL + ", version=" + this.version + ", createTime=" + this.createTime + ", targetLon1=" + this.targetLon1 + ", targetLat1=" + this.targetLat1 + ", east1=" + this.east1 + ", north1=" + this.north1 + ", targetElevation1=" + this.targetElevation1 + ", targetLon2=" + this.targetLon2 + ", targetLat2=" + this.targetLat2 + ", east2=" + this.east2 + ", north2=" + this.north2 + ", targetElevation2=" + this.targetElevation2 + ", width=" + this.width + ", ratio=" + this.ratio + ", coordinateSystem='" + this.coordinateSystem + AngleFormat.CH_MIN_SYMBOL + ", corsName='" + this.corsName + AngleFormat.CH_MIN_SYMBOL + ", corsHost='" + this.corsHost + AngleFormat.CH_MIN_SYMBOL + ", corsPort=" + this.corsPort + ", corsUserName=" + this.corsUserName + ", corsPassword=" + this.corsPassword + ", corsMount=" + this.corsMount + ", length=" + this.length + ", depthA=" + this.depthA + ", depthB=" + this.depthB + ", spacing=" + this.spacing + ", pileSpacing=" + this.pileSpacing + ", rigthItems=" + this.rigthItems + ", leftItems=" + this.leftItems + ", subType=" + this.subType + ", showUnit=" + this.showUnit + ", baseStationLon=" + this.baseStationLon + ", baseStationLat=" + this.baseStationLat + ", baseStationElev=" + this.baseStationElev + '}';
    }
}
