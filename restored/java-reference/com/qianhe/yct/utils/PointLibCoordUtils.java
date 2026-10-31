package com.qianhe.yct.utils;

import com.qianhe.baselib.bean.PointlibEntity;
import java.math.BigDecimal;
import java.math.RoundingMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class PointLibCoordUtils {
    public static double roundLonLat(double d) {
        return round(d, 8);
    }

    public static double roundElev(double d) {
        return round(d, 3);
    }

    public static double roundDop(double d) {
        return round(d, 3);
    }

    public static double round(double d, int i) {
        if (d == 0.0d) {
            return 0.0d;
        }
        return new BigDecimal(String.valueOf(d)).setScale(i, RoundingMode.HALF_UP).doubleValue();
    }

    public static void normalizeGeodetic(PointlibEntity pointlibEntity) {
        if (pointlibEntity == null) {
            return;
        }
        pointlibEntity.lon = roundLonLat(pointlibEntity.lon);
        pointlibEntity.lat = roundLonLat(pointlibEntity.lat);
        pointlibEntity.geodeticLon = roundLonLat(pointlibEntity.geodeticLon);
        pointlibEntity.geodeticLat = roundLonLat(pointlibEntity.geodeticLat);
        pointlibEntity.alt = roundElev(pointlibEntity.alt);
        pointlibEntity.elev = roundElev(pointlibEntity.elev);
        pointlibEntity.geodeticElev = roundElev(pointlibEntity.geodeticElev);
        pointlibEntity.hdop = roundDop(pointlibEntity.hdop);
        pointlibEntity.vdop = roundDop(pointlibEntity.vdop);
    }
}
