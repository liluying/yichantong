package com.qianhe.rtkclientlib.event;

import com.qianhe.baselib.enums.DeviceType;
import org.locationtech.proj4j.units.AngleFormat;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class WifiStateResponse {
    public String SSID;
    public String address;
    public final DeviceType deviceType;
    public String dns;
    public String gateway;
    public String mask;
    public String mode;
    public String state;

    public WifiStateResponse(DeviceType deviceType, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.deviceType = deviceType;
        this.mode = str;
        this.SSID = str2;
        this.state = str3;
        this.address = str4;
        this.mask = str5;
        this.gateway = str6;
        this.dns = str7;
    }

    public String toString() {
        return "WifiStateResponse{SSID='" + this.SSID + AngleFormat.CH_MIN_SYMBOL + ", mode='" + this.mode + AngleFormat.CH_MIN_SYMBOL + ", state='" + this.state + AngleFormat.CH_MIN_SYMBOL + ", address='" + this.address + AngleFormat.CH_MIN_SYMBOL + ", mask='" + this.mask + AngleFormat.CH_MIN_SYMBOL + ", gateway='" + this.gateway + AngleFormat.CH_MIN_SYMBOL + ", dns='" + this.dns + AngleFormat.CH_MIN_SYMBOL + '}';
    }
}
