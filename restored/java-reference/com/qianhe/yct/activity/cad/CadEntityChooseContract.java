package com.qianhe.yct.activity.cad;

import android.content.Intent;
import com.qh.xcad.XCadView$$ExternalSyntheticBackport0;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class CadEntityChooseContract {
    public static double[] parsePickResult(Intent intent) {
        double[] doubleArrayExtra;
        if (intent == null || (doubleArrayExtra = intent.getDoubleArrayExtra("cad_result_choose_point")) == null || doubleArrayExtra.length == 0 || doubleArrayExtra.length % 3 != 0) {
            return null;
        }
        for (double d : doubleArrayExtra) {
            if (!XCadView$$ExternalSyntheticBackport0.m(d)) {
                return null;
            }
        }
        return doubleArrayExtra;
    }
}
