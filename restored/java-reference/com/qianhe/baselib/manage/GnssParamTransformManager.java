package com.qianhe.baselib.manage;

import com.qh.yctdevice.GnssParamTransform;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.bean.GnssTransParamEntity;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class GnssParamTransformManager {
    private static GnssParamTransformManager instance;
    private GnssParamTransform gnssParamTransform = new GnssParamTransform();

    private GnssParamTransformManager() {
    }

    public static synchronized GnssParamTransformManager getInstance() {
        try {
            if (instance == null) {
                instance = new GnssParamTransformManager();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    public GnssParamTransform getGnssParamTransform() {
        if (this.gnssParamTransform == null) {
            this.gnssParamTransform = new GnssParamTransform();
        }
        return this.gnssParamTransform;
    }

    public void clearTransformParams() {
        getGnssParamTransform().clearParameters();
    }

    public void applyEngineeringTransform(EngineeringEntity engineeringEntity, GnssTransParamEntity gnssTransParamEntity) {
        if (engineeringEntity == null || engineeringEntity.conversionParamsType <= 0 || gnssTransParamEntity == null || !gnssTransParamEntity.hasParamsDetail()) {
            clearTransformParams();
        } else {
            gnssTransParamEntity.applyToTransform(getGnssParamTransform());
        }
    }
}
