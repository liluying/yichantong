package com.qianhe.yct.activity.cad;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.qianhe.yct.activity.CADEntityChooseActivity;
import java.io.File;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class CadEntityChooseIntent {
    public static Intent create(Context context, String str, int i, double[] dArr) {
        Intent intent = new Intent(context, (Class<?>) CADEntityChooseActivity.class);
        intent.putExtra("cad_file_path", str);
        intent.putExtra("cad_choose_max_count", i);
        if (dArr != null && dArr.length >= 3) {
            intent.putExtra("cad_initial_points", dArr);
        }
        return intent;
    }

    public static boolean isCadFileAvailable(String str) {
        return !TextUtils.isEmpty(str) && new File(str).isFile();
    }

    public static double[] singlePoint(double d, double d2, double d3) {
        if (d == 0.0d && d2 == 0.0d) {
            return null;
        }
        return new double[]{d, d2, d3};
    }

    public static double[] flattenPoints(List<double[]> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        int size = list.size() * 3;
        double[] dArr = new double[size];
        int i = 0;
        for (double[] dArr2 : list) {
            if (dArr2 != null && dArr2.length >= 3) {
                dArr[i] = dArr2[0];
                int i2 = i + 2;
                dArr[i + 1] = dArr2[1];
                i += 3;
                dArr[i2] = dArr2[2];
            }
        }
        if (i < 3) {
            return null;
        }
        if (i == size) {
            return dArr;
        }
        double[] dArr3 = new double[i];
        System.arraycopy(dArr, 0, dArr3, 0, i);
        return dArr3;
    }
}
