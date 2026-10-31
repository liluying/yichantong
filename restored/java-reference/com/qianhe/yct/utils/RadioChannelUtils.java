package com.qianhe.yct.utils;

import android.content.Context;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.yct.R$string;
import java.util.ArrayList;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class RadioChannelUtils {
    public static ArrayList<String> buildChannelLabelList(Context context, String[] strArr) {
        if (strArr == null) {
            return new ArrayList<>();
        }
        ArrayList<String> arrayList = new ArrayList<>(strArr.length);
        for (int i = 0; i < strArr.length; i++) {
            arrayList.add(getChannelLabel(context, i, strArr));
        }
        return arrayList;
    }

    public static String getChannelLabel(Context context, int i, String[] strArr) {
        String str;
        String string = LanguagePrefs.getString(context, R$string.channel_number, Integer.valueOf(i + 1));
        if (strArr == null || i < 0 || i >= strArr.length || (str = strArr[i]) == null || str.isEmpty()) {
            return string;
        }
        return string + " (" + str + ")";
    }

    public static int getChannelIndex(Context context, String str, String[] strArr) {
        if (strArr == null) {
            return -1;
        }
        for (int i = 0; i < strArr.length; i++) {
            if (str.equals(getChannelLabel(context, i, strArr))) {
                return i;
            }
        }
        int i2 = 0;
        while (i2 < strArr.length) {
            int i3 = i2 + 1;
            if (str.equals(LanguagePrefs.getString(context, R$string.channel_number, Integer.valueOf(i3)))) {
                return i2;
            }
            i2 = i3;
        }
        return -1;
    }
}
