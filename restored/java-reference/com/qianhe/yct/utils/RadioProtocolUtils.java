package com.qianhe.yct.utils;

import android.text.TextUtils;
import com.qianhe.baselib.enums.DeviceType;
import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class RadioProtocolUtils {
    public static String getProtocolNumber(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String[] strArrSplit = str.split("\\|");
        return strArrSplit.length > 0 ? strArrSplit[0] : "";
    }

    public static String getProtocolName(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String[] strArrSplit = str.split("\\|");
        return strArrSplit.length > 1 ? strArrSplit[1] : str;
    }

    public static String findProtocolNameByNumber(String[] strArr, String str) {
        if (strArr != null && !TextUtils.isEmpty(str)) {
            for (String str2 : strArr) {
                if (str.equals(getProtocolNumber(str2))) {
                    return getProtocolName(str2);
                }
            }
        }
        return "";
    }

    public static ArrayList<String> buildProtocolNameList(String[] strArr) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (strArr != null) {
            for (String str : strArr) {
                arrayList.add(getProtocolName(str));
            }
        }
        return arrayList;
    }

    public static DeviceType getPeerDeviceType(DeviceType deviceType) {
        DeviceType deviceType2 = DeviceType.BASE;
        return deviceType == deviceType2 ? DeviceType.ZPY : deviceType2;
    }

    public static String[] getSelectableProtocols(String[] strArr, String[] strArr2, boolean z) {
        if (strArr == null) {
            return new String[0];
        }
        if (z && strArr2 != null) {
            HashSet hashSet = new HashSet();
            for (String str : strArr2) {
                String protocolNumber = getProtocolNumber(str);
                if (!TextUtils.isEmpty(protocolNumber)) {
                    hashSet.add(protocolNumber);
                }
            }
            ArrayList arrayList = new ArrayList();
            for (String str2 : strArr) {
                String protocolNumber2 = getProtocolNumber(str2);
                if (!TextUtils.isEmpty(protocolNumber2) && hashSet.contains(protocolNumber2)) {
                    arrayList.add(str2);
                }
            }
            strArr = (String[]) arrayList.toArray(new String[0]);
        }
        return hideUnsupportedProtocols(strArr);
    }

    static boolean isHiddenProtocol(String str) {
        String protocolName = getProtocolName(str);
        return !TextUtils.isEmpty(protocolName) && protocolName.endsWith("11000");
    }

    private static String[] hideUnsupportedProtocols(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        if (strArr == null) {
            return new String[0];
        }
        for (String str : strArr) {
            if (!isHiddenProtocol(str)) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }
}
