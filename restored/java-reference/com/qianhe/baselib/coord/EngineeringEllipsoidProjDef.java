package com.qianhe.baselib.coord;

import com.qianhe.baselib.bean.EngineeringEntity;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class EngineeringEllipsoidProjDef {
    public static String ellipsoidLabel(int i) {
        if (i == 0) {
            return "自定义";
        }
        if (i == 1) {
            return "WGS-84";
        }
        if (i == 2) {
            return "CGCS2000";
        }
        if (i == 3) {
            return "西安80";
        }
        if (i == 4) {
            return "北京54";
        }
        return "未知(" + i + ")";
    }

    public static String projectionLabel(int i) {
        if (i == 1) {
            return "高斯投影";
        }
        if (i == 2) {
            return "UTM投影";
        }
        if (i == 3) {
            return "横轴墨卡托投影";
        }
        return "未知(" + i + ")";
    }

    public static final class EllipsoidParams {
        public final double a;
        public final double f;

        public EllipsoidParams(double d, double d2) {
            this.a = d;
            this.f = d2;
        }
    }

    public static EllipsoidParams resolveEllipsoidParams(EngineeringEntity engineeringEntity) {
        EngineeringEntity.CustomEllipsoidParams customEllipsoidParams;
        if (engineeringEntity == null) {
            return null;
        }
        int i = engineeringEntity.ellipsoidType;
        if (i == 0 && (customEllipsoidParams = engineeringEntity.customEllipsoidParams) != null) {
            double d = customEllipsoidParams.a;
            if (d <= 0.0d) {
                return null;
            }
            double d2 = customEllipsoidParams.f;
            if (d2 > 1.0d) {
                d2 = 1.0d / d2;
            }
            return new EllipsoidParams(d, d2);
        }
        if (i == 1) {
            return new EllipsoidParams(6378137.0d, 0.0033528106647474805d);
        }
        if (i == 2) {
            return new EllipsoidParams(6378137.0d, 0.003352810681182319d);
        }
        if (i == 3) {
            return new EllipsoidParams(6378140.0d, 0.0033528131778969143d);
        }
        if (i == 4) {
            return new EllipsoidParams(6378245.0d, 0.003352329869259135d);
        }
        return new EllipsoidParams(6378137.0d, 0.003352810681182319d);
    }
}
