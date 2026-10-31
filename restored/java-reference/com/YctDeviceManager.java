package com;

import com.qh.yctdevice.YctDevice;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class YctDeviceManager {
    private static YctDevice INSTANCE_BASE;
    private static YctDevice INSTANCE_H5;

    public static synchronized YctDevice getInstanceH5() {
        try {
            if (INSTANCE_H5 == null) {
                INSTANCE_H5 = new YctDevice();
            }
        } catch (Throwable th) {
            throw th;
        }
        return INSTANCE_H5;
    }

    public static synchronized YctDevice getInstanceBase() {
        try {
            if (INSTANCE_BASE == null) {
                INSTANCE_BASE = new YctDevice();
            }
        } catch (Throwable th) {
            throw th;
        }
        return INSTANCE_BASE;
    }
}
