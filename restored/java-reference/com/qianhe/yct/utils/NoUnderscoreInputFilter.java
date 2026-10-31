package com.qianhe.yct.utils;

import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.widget.EditText;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class NoUnderscoreInputFilter implements InputFilter {
    public static final NoUnderscoreInputFilter INSTANCE = new NoUnderscoreInputFilter();

    private NoUnderscoreInputFilter() {
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        if (charSequence == null || i >= i2) {
            return null;
        }
        boolean z = false;
        StringBuilder sb = null;
        for (int i5 = i; i5 < i2; i5++) {
            char cCharAt = charSequence.charAt(i5);
            if (cCharAt == '_') {
                z = true;
                if (sb == null) {
                    sb = new StringBuilder(i2 - i);
                    sb.append(charSequence, i, i5);
                }
            } else if (sb != null) {
                sb.append(cCharAt);
            }
        }
        if (z) {
            return sb != null ? sb.toString() : "";
        }
        return null;
    }

    public static void apply(EditText editText) {
        if (editText == null) {
            return;
        }
        InputFilter[] filters = editText.getFilters();
        if (filters != null) {
            for (InputFilter inputFilter : filters) {
                if (inputFilter instanceof NoUnderscoreInputFilter) {
                    return;
                }
            }
            InputFilter[] inputFilterArr = new InputFilter[filters.length + 1];
            System.arraycopy(filters, 0, inputFilterArr, 0, filters.length);
            inputFilterArr[filters.length] = INSTANCE;
            editText.setFilters(inputFilterArr);
            return;
        }
        editText.setFilters(new InputFilter[]{INSTANCE});
    }

    public static boolean containsUnderscore(CharSequence charSequence) {
        return !TextUtils.isEmpty(charSequence) && charSequence.toString().contains("_");
    }
}
