package com.qianhe.yct.utils;

import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.TextView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class SpannableUtils {
    public static void setClickableSpan(TextView textView, String str, String str2, final int i, final View.OnClickListener onClickListener) {
        SpannableString spannableString = new SpannableString(str);
        int iIndexOf = str.indexOf(str2);
        if (iIndexOf == -1) {
            return;
        }
        spannableString.setSpan(new ClickableSpan() { // from class: com.qianhe.yct.utils.SpannableUtils.1
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                View.OnClickListener onClickListener2 = onClickListener;
                if (onClickListener2 != null) {
                    onClickListener2.onClick(view);
                }
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                super.updateDrawState(textPaint);
                textPaint.setColor(i);
                textPaint.setUnderlineText(false);
            }
        }, iIndexOf, str2.length() + iIndexOf, 33);
        textView.setText(spannableString);
        textView.setMovementMethod(PreciseClickMovementMethod.getInstance());
        textView.setHighlightColor(0);
    }
}
