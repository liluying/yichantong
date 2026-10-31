package com.qianhe.yct.utils;

import android.text.InputFilter;
import android.text.Spanned;
import java.lang.Character;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ChineseEnglishLengthFilter implements InputFilter {
    private int maxLength;

    private boolean isEnglish(char c) {
        if (c < 'a' || c > 'z') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    public ChineseEnglishLengthFilter(int i) {
        this.maxLength = i;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        int iCalculateLength = calculateLength(spanned.toString());
        if ((iCalculateLength - calculateLength(spanned.subSequence(i3, i4).toString())) + calculateLength(charSequence.toString()) > this.maxLength) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i5 = i; i5 < i2; i5++) {
            char cCharAt = charSequence.charAt(i5);
            if (isValidCharacter(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        if (sb.length() == i2 - i) {
            return null;
        }
        return sb.toString();
    }

    private boolean isValidCharacter(char c) {
        return isChinese(c) || isEnglish(c);
    }

    private boolean isChinese(char c) {
        Character.UnicodeBlock unicodeBlockOf = Character.UnicodeBlock.of(c);
        return unicodeBlockOf == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeBlockOf == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeBlockOf == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || unicodeBlockOf == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B;
    }

    private int calculateLength(String str) {
        return str.length();
    }
}
