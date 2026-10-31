package com.qianhe.baselib.bean;

import java.util.Objects;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CorsEntity {
    public int cgcs2000_port;
    public String corsName;
    public String host;
    public long id;
    public int itrf2008_port;
    public String mount;
    public int ntripType;
    public String password;
    public int port;
    public long timeStamp;
    public String userName;
    public int wgs84_port;

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            CorsEntity corsEntity = (CorsEntity) obj;
            if (this.id == corsEntity.id && this.timeStamp == corsEntity.timeStamp && this.ntripType == corsEntity.ntripType && this.port == corsEntity.port && this.cgcs2000_port == corsEntity.cgcs2000_port && this.wgs84_port == corsEntity.wgs84_port && this.itrf2008_port == corsEntity.itrf2008_port && Objects.equals(this.corsName, corsEntity.corsName) && Objects.equals(this.host, corsEntity.host) && Objects.equals(this.userName, corsEntity.userName) && Objects.equals(this.password, corsEntity.password) && Objects.equals(this.mount, corsEntity.mount)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.id), Long.valueOf(this.timeStamp), Integer.valueOf(this.ntripType), this.corsName, this.host, Integer.valueOf(this.port), this.userName, this.password, this.mount, Integer.valueOf(this.cgcs2000_port), Integer.valueOf(this.wgs84_port), Integer.valueOf(this.itrf2008_port));
    }

    public static class PortEntity {
        public String coordinateSystem;
        public int port;

        public PortEntity(String str, int i) {
            this.coordinateSystem = str;
            this.port = i;
        }
    }

    public String toString() {
        return "CorsBean{id=" + this.id + ", timeStamp=" + this.timeStamp + ", ntripType=" + this.ntripType + ", name='" + this.corsName + AngleFormat.CH_MIN_SYMBOL + ", host='" + this.host + AngleFormat.CH_MIN_SYMBOL + ", port=" + this.port + ", userName='" + this.userName + AngleFormat.CH_MIN_SYMBOL + ", password='" + this.password + AngleFormat.CH_MIN_SYMBOL + ", mount='" + this.mount + AngleFormat.CH_MIN_SYMBOL + ", cgcs2000_port=" + this.cgcs2000_port + ", wgs84_port=" + this.wgs84_port + ", itrf2008_port=" + this.itrf2008_port + '}';
    }
}
