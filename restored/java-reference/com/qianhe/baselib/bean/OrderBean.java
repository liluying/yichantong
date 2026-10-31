package com.qianhe.baselib.bean;

import com.qianhe.baselib.enums.DeviceType;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class OrderBean {
    public byte[] array;
    public DeviceType deviceType;
    public String str;

    public OrderBean(String str) {
        this.str = str;
    }

    public OrderBean(DeviceType deviceType, String str) {
        this.deviceType = deviceType;
        this.str = str;
    }

    public OrderBean(byte[] bArr) {
        this.array = bArr;
    }

    public OrderBean(DeviceType deviceType, byte[] bArr) {
        this.deviceType = deviceType;
        this.array = bArr;
    }
}
