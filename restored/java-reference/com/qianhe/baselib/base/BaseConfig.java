package com.qianhe.baselib.base;

import java.io.Serializable;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class BaseConfig implements Serializable {
    public String deviceId;
    public boolean isInit;
    public String mount_point;
    public String password;
    public String username;
    public String ntrip_host = "";
    public int ntrip_port = 6060;
    public String coordinateSystem = "";
    public int updateGGA_period = 10000;
    public int ntripType = 0;

    public String getHost() {
        return this.ntrip_host;
    }

    public void setHost(String str) {
        this.ntrip_host = str;
    }

    public int getPort() {
        return this.ntrip_port;
    }

    public void setPort(int i) {
        this.ntrip_port = i;
    }

    public String getCoordinateSystem() {
        return this.coordinateSystem;
    }

    public void setCoordinateSystem(String str) {
        this.coordinateSystem = str;
    }

    public String getMountPoint() {
        return this.mount_point;
    }

    public void setMountPoint(String str) {
        this.mount_point = str;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String str) {
        this.username = str;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public int getUpdatePeriod() {
        return this.updateGGA_period;
    }

    public void setUpdatePeriod(int i) {
        this.updateGGA_period = i;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public int getNtripType() {
        return this.ntripType;
    }

    public void setNtripType(int i) {
        this.ntripType = i;
    }

    public void setIsInit(boolean z) {
        this.isInit = z;
    }

    public String toString() {
        return "BaseConfig{ntrip_host='" + this.ntrip_host + AngleFormat.CH_MIN_SYMBOL + ", ntrip_port=" + this.ntrip_port + ", coordinateSystem=" + this.coordinateSystem + ", mount_point='" + this.mount_point + AngleFormat.CH_MIN_SYMBOL + ", username='" + this.username + AngleFormat.CH_MIN_SYMBOL + ", password='" + this.password + AngleFormat.CH_MIN_SYMBOL + ", updateGGA_period=" + this.updateGGA_period + ", deviceId='" + this.deviceId + AngleFormat.CH_MIN_SYMBOL + ", isInit=" + this.isInit + ", ntripType=" + this.ntripType + '}';
    }
}
