package com.qianhe.yct.utils;

import android.graphics.RectF;
import android.text.Layout;
import android.text.Spannable;
import android.text.method.BaseMovementMethod;
import android.text.style.ClickableSpan;
import android.view.MotionEvent;
import android.widget.TextView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PreciseClickMovementMethod extends BaseMovementMethod {
    private static PreciseClickMovementMethod instance;

    public static PreciseClickMovementMethod getInstance() {
        if (instance == null) {
            instance = new PreciseClickMovementMethod();
        }
        return instance;
    }

    @Override // android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int totalPaddingLeft = x - textView.getTotalPaddingLeft();
            int totalPaddingTop = y - textView.getTotalPaddingTop();
            int scrollX = totalPaddingLeft + textView.getScrollX();
            int scrollY = totalPaddingTop + textView.getScrollY();
            Layout layout = textView.getLayout();
            int lineForVertical = layout.getLineForVertical(scrollY);
            float lineLeft = layout.getLineLeft(lineForVertical);
            float lineRight = layout.getLineRight(lineForVertical);
            float f = scrollX;
            if (f >= lineLeft && f <= lineRight) {
                int offsetForHorizontal = layout.getOffsetForHorizontal(lineForVertical, f);
                ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
                if (clickableSpanArr.length > 0 && getSpanRect(layout, spannable.getSpanStart(clickableSpanArr[0]), spannable.getSpanEnd(clickableSpanArr[0])).contains(f, scrollY)) {
                    clickableSpanArr[0].onClick(textView);
                    return true;
                }
            }
        }
        return false;
    }

    private RectF getSpanRect(Layout layout, int i, int i2) {
        RectF rectF = new RectF();
        int lineForOffset = layout.getLineForOffset(i);
        layout.getLineForOffset(i2);
        float primaryHorizontal = layout.getPrimaryHorizontal(i);
        float primaryHorizontal2 = layout.getPrimaryHorizontal(i2);
        float lineTop = layout.getLineTop(lineForOffset);
        float lineBottom = layout.getLineBottom(lineForOffset);
        rectF.left = primaryHorizontal;
        rectF.right = primaryHorizontal2;
        rectF.top = lineTop;
        rectF.bottom = lineBottom;
        return rectF;
    }
}
