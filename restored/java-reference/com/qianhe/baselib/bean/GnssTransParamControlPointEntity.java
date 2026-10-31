package com.qianhe.baselib.bean;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.Objects;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GnssTransParamControlPointEntity implements Serializable {

    @SerializedName("dst_x")
    public double dstX;

    @SerializedName("dst_y")
    public double dstY;

    @SerializedName("dst_z")
    public double dstZ;

    @SerializedName("src_x")
    public double srcX;

    @SerializedName("src_y")
    public double srcY;

    @SerializedName("src_z")
    public double srcZ;

    public void applyParamType(int i) {
        if (i == 1) {
            this.srcZ = 0.0d;
            this.dstZ = 0.0d;
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            GnssTransParamControlPointEntity gnssTransParamControlPointEntity = (GnssTransParamControlPointEntity) obj;
            if (Double.compare(this.srcX, gnssTransParamControlPointEntity.srcX) == 0 && Double.compare(this.srcY, gnssTransParamControlPointEntity.srcY) == 0 && Double.compare(this.srcZ, gnssTransParamControlPointEntity.srcZ) == 0 && Double.compare(this.dstX, gnssTransParamControlPointEntity.dstX) == 0 && Double.compare(this.dstY, gnssTransParamControlPointEntity.dstY) == 0 && Double.compare(this.dstZ, gnssTransParamControlPointEntity.dstZ) == 0) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Double.valueOf(this.srcX), Double.valueOf(this.srcY), Double.valueOf(this.srcZ), Double.valueOf(this.dstX), Double.valueOf(this.dstY), Double.valueOf(this.dstZ));
    }

    public String toString() {
        return "GnssTransParamControlPointEntity{srcX=" + this.srcX + ", srcY=" + this.srcY + ", srcZ=" + this.srcZ + ", dstX=" + this.dstX + ", dstY=" + this.dstY + ", dstZ=" + this.dstZ + '}';
    }
}
