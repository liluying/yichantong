package com.qianhe.yct.utils;

import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.yct.R$id;
import com.qianhe.yct.view.NumericEditText;
import com.tencent.smtt.sdk.TbsListener;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class ConfigLayoutHelper {
    public static void applyContentDirectionByLanguage(View view) {
        if (view == null) {
            return;
        }
        boolean zIsArOrFa = LanguagePrefs.isArOrFa(view.getContext());
        view.setLayoutDirection(zIsArOrFa ? 1 : 0);
        applyTextAlignment(view, zIsArOrFa);
    }

    private static void applyTextAlignment(View view, boolean z) {
        if (view.getId() == R$id.tvReset) {
            return;
        }
        if (view instanceof NumericEditText) {
            applyHorizontalGravity((TextView) view, z);
            return;
        }
        if (view instanceof EditText) {
            EditText editText = (EditText) view;
            editText.setLayoutDirection(0);
            editText.setTextDirection(3);
            applyHorizontalGravity(editText, z);
            return;
        }
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            if (keepLtrText(textView)) {
                textView.setLayoutDirection(0);
                textView.setTextDirection(3);
                applyHorizontalGravity(textView, z);
                return;
            } else {
                textView.setLayoutDirection(z ? 1 : 0);
                textView.setTextDirection(z ? 4 : 3);
                textView.setTextAlignment(5);
                applyHorizontalGravity(textView, z, 8388611);
                return;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                applyTextAlignment(viewGroup.getChildAt(i), z);
            }
        }
    }

    private static boolean keepLtrText(TextView textView) {
        return textView.getId() == R$id.tvUnitPreference;
    }

    private static void applyHorizontalGravity(TextView textView, boolean z) {
        applyHorizontalGravity(textView, z, z ? 8388613 : 8388611);
    }

    private static void applyHorizontalGravity(TextView textView, boolean z, int i) {
        int gravity = textView.getGravity() & TbsListener.ErrorCode.DOWNLOAD_OVER_FLOW;
        if (gravity == 0) {
            gravity = 16;
        }
        textView.setGravity(gravity | i);
    }

    public static void applySpinnerItemStyle(TextView textView) {
        if (textView == null) {
            return;
        }
        boolean zIsArOrFa = LanguagePrefs.isArOrFa(textView.getContext());
        textView.setLayoutDirection(zIsArOrFa ? 1 : 0);
        textView.setTextDirection(5);
        textView.setTextAlignment(5);
        applyHorizontalGravity(textView, zIsArOrFa, 8388611);
    }

    public static void applyLocaleNameStyle(TextView textView) {
        if (textView == null) {
            return;
        }
        textView.setTextDirection(5);
        textView.setTextAlignment(5);
        int gravity = textView.getGravity() & TbsListener.ErrorCode.DOWNLOAD_OVER_FLOW;
        if (gravity == 0) {
            gravity = 16;
        }
        textView.setGravity(gravity | 8388611);
    }
}
