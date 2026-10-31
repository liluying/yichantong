package com.qianhe.baselib.utils.parser;

import android.text.TextUtils;
import com.qianhe.baselib.bean.SNREntity;
import com.qianhe.baselib.enums.StarTypeEnum;
import com.qianhe.baselib.utils.LogToFile;
import com.tencent.smtt.sdk.ProxyConfig;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class SNRParser {
    public static int getStarId(int i) {
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

    public static List<SNREntity> parser(String str) throws NumberFormatException {
        int iIndexOf = str.indexOf(ProxyConfig.MATCH_ALL_SCHEMES);
        ArrayList arrayList = new ArrayList();
        if (iIndexOf != -1) {
            try {
                String[] strArrSplit = str.substring(0, iIndexOf).split(",");
                for (int i = 4; i < strArrSplit.length - 1; i += 4) {
                    int i2 = Integer.parseInt(strArrSplit[i].trim());
                    int starId = getStarId(i2);
                    int starType = getStarType(i2);
                    SNREntity sNREntity = new SNREntity();
                    sNREntity.PNR = i2;
                    sNREntity.id = starId;
                    sNREntity.type = starType;
                    int i3 = i + 1;
                    String strTrim = i3 < strArrSplit.length ? strArrSplit[i3].trim() : "";
                    int i4 = i + 2;
                    String strTrim2 = i4 < strArrSplit.length ? strArrSplit[i4].trim() : "";
                    int i5 = i + 3;
                    String strTrim3 = i5 < strArrSplit.length ? strArrSplit[i5].trim() : "";
                    if (!TextUtils.isEmpty(strTrim)) {
                        sNREntity.L1 = Float.parseFloat(strTrim);
                    }
                    if (!TextUtils.isEmpty(strTrim2)) {
                        sNREntity.L2 = Float.parseFloat(strTrim2);
                    }
                    if (!TextUtils.isEmpty(strTrim3)) {
                        sNREntity.L5 = Float.parseFloat(strTrim3);
                    }
                    arrayList.add(sNREntity);
                }
                EventBus.getDefault().post(arrayList);
                return arrayList;
            } catch (Exception e) {
                LogToFile.e("SNRParser.parser" + e);
            }
        }
        return arrayList;
    }

    public static int getStarType(int i) {
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
