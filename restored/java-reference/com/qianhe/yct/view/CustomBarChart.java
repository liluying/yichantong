package com.qianhe.yct.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewConfiguration;
import com.github.mikephil.charting.charts.BarChart;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CustomBarChart extends BarChart {
    private float startX;
    private float startY;
    private int touchSlop;

    public CustomBarChart(Context context) {
        this(context, null);
    }

    public CustomBarChart(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CustomBarChart(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0093  */
    @Override // com.github.mikephil.charting.charts.BarLineChartBase, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            android.view.ViewParent r0 = r6.getParent()
            int r1 = r7.getActionMasked()
            if (r1 == 0) goto L99
            r2 = 0
            r3 = 1
            if (r1 == r3) goto L93
            r4 = 2
            if (r1 == r4) goto L26
            r4 = 3
            if (r1 == r4) goto L93
            r2 = 5
            if (r1 == r2) goto L19
            goto La5
        L19:
            if (r0 == 0) goto La5
            int r1 = r7.getPointerCount()
            if (r1 <= r3) goto La5
            r0.requestDisallowInterceptTouchEvent(r3)
            goto La5
        L26:
            if (r0 != 0) goto L2a
            goto La5
        L2a:
            int r1 = r7.getPointerCount()
            if (r1 <= r3) goto L35
            r0.requestDisallowInterceptTouchEvent(r3)
            goto La5
        L35:
            float r1 = r7.getX()
            float r4 = r6.startX
            float r1 = r1 - r4
            float r1 = java.lang.Math.abs(r1)
            float r4 = r7.getY()
            float r5 = r6.startY
            float r4 = r4 - r5
            float r4 = java.lang.Math.abs(r4)
            int r5 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r5 <= 0) goto L5a
            int r5 = r6.touchSlop
            float r5 = (float) r5
            int r5 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r5 <= 0) goto L5a
            r0.requestDisallowInterceptTouchEvent(r2)
            return r2
        L5a:
            int r4 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r4 <= 0) goto La5
            int r4 = r6.touchSlop
            float r4 = (float) r4
            int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r1 <= 0) goto La5
            com.github.mikephil.charting.utils.ViewPortHandler r1 = r6.getViewPortHandler()
            float r4 = r1.getTransX()
            float r5 = r1.getChartWidth()
            float r4 = r4 + r5
            float r5 = r6.getXChartMax()
            float r1 = r1.getScaleX()
            float r5 = r5 * r1
            int r1 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r1 < 0) goto L82
            r1 = 1
            goto L83
        L82:
            r1 = 0
        L83:
            boolean r4 = r6.isFullyZoomedOut()
            if (r4 != 0) goto L8f
            if (r1 != 0) goto L8f
            r0.requestDisallowInterceptTouchEvent(r3)
            goto La5
        L8f:
            r0.requestDisallowInterceptTouchEvent(r2)
            goto La5
        L93:
            if (r0 == 0) goto La5
            r0.requestDisallowInterceptTouchEvent(r2)
            goto La5
        L99:
            float r0 = r7.getX()
            r6.startX = r0
            float r0 = r7.getY()
            r6.startY = r0
        La5:
            boolean r7 = super.onTouchEvent(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.view.CustomBarChart.onTouchEvent(android.view.MotionEvent):boolean");
    }
}
