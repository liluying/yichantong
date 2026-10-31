package com.qianhe.baselib.utils.parser;

import com.qianhe.baselib.bean.SAVEntity;
import com.qianhe.baselib.bean.SAVListEntity;
import com.qianhe.baselib.enums.StarTypeEnum;
import com.qianhe.baselib.utils.LogToFile;
import com.tencent.smtt.sdk.ProxyConfig;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class StarDataParser {
    private static int getStartId(int i) {
        if (i >= 1 && i <= 32) {
            return i;
        }
        if (i >= 65 && i <= 96) {
            return i - 64;
        }
        if (i >= 120 && i <= 160) {
            return i - 119;
        }
        if (i >= 161 && i <= 224) {
            return i - 160;
        }
        if (i >= 262 && i <= 299) {
            return i - 261;
        }
        if (i >= 331 && i <= 360) {
            return i - 330;
        }
        if (i < 361 || i > 399) {
            return 0;
        }
        return i - 360;
    }

    public static SAVListEntity parseSAV(String str) {
        SAVListEntity sAVListEntity = new SAVListEntity();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            String[] strArrSplit = str.substring(0, str.indexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",");
            for (int i = 4; i < strArrSplit.length - 1; i += 3) {
                SAVEntity sAVEntity = new SAVEntity();
                int[] iArr = {Integer.parseInt(strArrSplit[i].trim()), Integer.parseInt(strArrSplit[i + 1].trim()), Integer.parseInt(strArrSplit[i + 2].trim())};
                int i2 = iArr[0];
                sAVEntity.PRN = i2;
                sAVEntity.starId = getStartId(i2);
                sAVEntity.type = getStartType(iArr[0]);
                sAVEntity.elevationAngle = iArr[1];
                sAVEntity.azimuthAngle = iArr[2];
                arrayList.add(sAVEntity);
                arrayList2.add(Integer.valueOf(iArr[0]));
            }
            sAVListEntity.entityList = arrayList;
            sAVListEntity.prnList = arrayList2;
            return sAVListEntity;
        } catch (Exception e) {
            LogToFile.e("StarDataParser.parseSAV():" + e);
            return sAVListEntity;
        }
    }

    public static List<Integer> parseSAU(String str) {
        String[] strArrSplit = str.substring(0, str.indexOf(ProxyConfig.MATCH_ALL_SCHEMES)).split(",");
        ArrayList arrayList = new ArrayList();
        for (int i = 4; i < strArrSplit.length - 1; i++) {
            try {
                arrayList.add(Integer.valueOf(Integer.parseInt(strArrSplit[i].trim())));
            } catch (Exception e) {
                LogToFile.e("StarDataParser.parseSAU():" + e);
            }
        }
        return arrayList;
    }

    private static int getStartType(int i) {
        if (i >= 1 && i <= 32) {
            return StarTypeEnum.GPS.getType();
        }
        if (i >= 65 && i <= 96) {
            return StarTypeEnum.GLN.getType();
        }
        if (i >= 120 && i <= 160) {
            return StarTypeEnum.SBAS.getType();
        }
        if (i >= 161 && i <= 224) {
            return StarTypeEnum.BDS.getType();
        }
        if (i >= 262 && i <= 299) {
            return StarTypeEnum.GAL.getType();
        }
        if (i >= 331 && i <= 360) {
            return StarTypeEnum.QZSS.getType();
        }
        if (i < 361 || i > 399) {
            return 0;
        }
        return StarTypeEnum.IRNSS.getType();
    }
}
