package com.qianhe.yct.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.qianhe.baselib.utils.DpUtils;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$string;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ArmAngleScaleBarView extends View {
    private static final float MAX_DEG = 90.0f;
    private static final float MIN_DEG = -90.0f;
    private float arm1Deg;
    private float arm2Deg;
    private float bottomPadPx;
    private float currentDeg;
    private float endLabelTopGapPx;
    private float greenCenterDeg;
    private float greenHalfWidthDeg;
    private final Paint greenPaint;
    private float hPadPx;
    private boolean hasReference;
    private float labelGapPx;
    private final Paint markerPaint;
    private float markerRadiusPx;
    private final Paint midPaint;
    private float pointerGapPx;
    private final Paint pointerPaint;
    private final Path pointerPath;
    private float pointerSizePx;
    private final Rect textBounds;
    private final Paint textPaint;
    private String titleText;
    private float trackHeightPx;
    private final Paint trackPaint;

    public ArmAngleScaleBarView(Context context) {
        this(context, null);
    }

    public ArmAngleScaleBarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ArmAngleScaleBarView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.trackPaint = new Paint(1);
        this.greenPaint = new Paint(1);
        this.textPaint = new Paint(1);
        this.markerPaint = new Paint(1);
        this.pointerPaint = new Paint(1);
        this.midPaint = new Paint(1);
        this.pointerPath = new Path();
        this.textBounds = new Rect();
        this.arm1Deg = Float.NaN;
        this.arm2Deg = Float.NaN;
        this.greenCenterDeg = Float.NaN;
        this.currentDeg = 0.0f;
        init(context);
    }

    private void init(Context context) {
        this.trackHeightPx = DpUtils.dp2px(context, 10.0f);
        this.pointerSizePx = DpUtils.dp2px(context, 10.0f);
        this.markerRadiusPx = DpUtils.dp2px(context, 4.0f);
        this.hPadPx = DpUtils.dp2px(context, 10.0f);
        this.labelGapPx = DpUtils.dp2px(context, 6.0f);
        this.pointerGapPx = DpUtils.dp2px(context, 2.0f);
        this.endLabelTopGapPx = DpUtils.dp2px(context, 5.0f);
        this.bottomPadPx = DpUtils.dp2px(context, 4.0f);
        this.titleText = context.getString(R$string.arm_angle_scale_bar_title);
        Paint paint = this.trackPaint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.trackPaint.setColor(ContextCompat.getColor(context, R$color.gray_light));
        this.greenPaint.setStyle(style);
        this.greenPaint.setColor(ContextCompat.getColor(context, R$color.green_alpha));
        this.textPaint.setTextSize(DpUtils.dp2px(context, 16.0f));
        this.textPaint.setColor(ContextCompat.getColor(context, R$color.text_black));
        this.textPaint.setTextAlign(Paint.Align.CENTER);
        this.markerPaint.setStyle(style);
        this.markerPaint.setColor(ContextCompat.getColor(context, R$color.text_black));
        this.pointerPaint.setStyle(style);
        this.pointerPaint.setColor(ContextCompat.getColor(context, R$color.theme));
        this.midPaint.setStyle(Paint.Style.STROKE);
        this.midPaint.setStrokeWidth(DpUtils.dp2px(context, 1.5f));
        this.midPaint.setColor(ContextCompat.getColor(context, R$color.green_drak));
    }

    public void setReferenceAngles(float f, float f2, float f3, float f4) {
        this.arm1Deg = f;
        this.arm2Deg = f2;
        this.greenCenterDeg = f3;
        this.greenHalfWidthDeg = Math.max(0.0f, f4);
        this.hasReference = true;
        invalidate();
    }

    public void clearReference() {
        this.hasReference = false;
        this.arm1Deg = Float.NaN;
        this.arm2Deg = Float.NaN;
        this.greenCenterDeg = Float.NaN;
        this.greenHalfWidthDeg = 0.0f;
        invalidate();
    }

    public void setCurrentAngle(float f) {
        if (Float.compare(this.currentDeg, f) == 0) {
            return;
        }
        this.currentDeg = f;
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        Paint.FontMetrics fontMetrics = this.textPaint.getFontMetrics();
        float paddingTop = getPaddingTop() + getPaddingBottom() + (fontMetrics.descent - fontMetrics.ascent);
        float f = this.labelGapPx;
        setMeasuredDimension(View.resolveSize(getSuggestedMinimumWidth(), i), View.resolveSize((int) Math.ceil(paddingTop + f + r1 + f + this.trackHeightPx + this.pointerGapPx + this.pointerSizePx + f + r1 + this.bottomPadPx), i2));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        Canvas canvas2 = canvas;
        super.onDraw(canvas);
        float width = getWidth();
        float height = getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float paddingLeft = getPaddingLeft() + this.hPadPx;
        float paddingRight = (width - getPaddingRight()) - this.hPadPx;
        if (paddingRight <= paddingLeft) {
            return;
        }
        Paint.FontMetrics fontMetrics = this.textPaint.getFontMetrics();
        float f4 = fontMetrics.descent - fontMetrics.ascent;
        float paddingTop = getPaddingTop() + f4;
        float f5 = this.labelGapPx;
        float f6 = paddingTop + f5 + f4;
        float f7 = f5 + f6;
        float f8 = this.trackHeightPx;
        float f9 = f7 + f8;
        float f10 = (f7 + f9) / 2.0f;
        float f11 = f8 / 2.0f;
        float f12 = (this.endLabelTopGapPx + f9) - fontMetrics.ascent;
        Paint paint = this.textPaint;
        Paint.Align align = Paint.Align.CENTER;
        paint.setTextAlign(align);
        canvas2.drawText(this.titleText, (paddingLeft + paddingRight) / 2.0f, paddingTop, this.textPaint);
        canvas2.drawRoundRect(paddingLeft, f7, paddingRight, f9, f11, f11, this.trackPaint);
        this.textPaint.setTextAlign(Paint.Align.LEFT);
        canvas2.drawText("-90°", paddingLeft, f12, this.textPaint);
        this.textPaint.setTextAlign(Paint.Align.RIGHT);
        canvas2.drawText("90°", paddingRight, f12, this.textPaint);
        this.textPaint.setTextAlign(align);
        if (!this.hasReference || Float.isNaN(this.arm1Deg) || Float.isNaN(this.arm2Deg)) {
            f = f9;
            f2 = paddingLeft;
            f3 = paddingRight;
        } else {
            float fAngleToX = angleToX(this.arm1Deg, paddingLeft, paddingRight);
            float fAngleToX2 = angleToX(this.arm2Deg, paddingLeft, paddingRight);
            if (!Float.isNaN(this.greenCenterDeg)) {
                float f13 = this.greenHalfWidthDeg;
                if (f13 > 0.0f) {
                    float f14 = this.greenCenterDeg;
                    float f15 = f14 - f13;
                    float f16 = f14 + f13;
                    float fAngleToX3 = angleToX(f15, paddingLeft, paddingRight);
                    float fAngleToX4 = angleToX(f16, paddingLeft, paddingRight);
                    canvas2.drawRect(Math.min(fAngleToX3, fAngleToX4), f7, Math.max(fAngleToX3, fAngleToX4), f9, this.greenPaint);
                }
            }
            f = f9;
            float fAngleToX5 = angleToX((this.arm1Deg + this.arm2Deg) / 2.0f, paddingLeft, paddingRight);
            float fDp2px = DpUtils.dp2px(getContext(), 3.0f);
            canvas.drawLine(fAngleToX5, f7 - fDp2px, fAngleToX5, f + fDp2px, this.midPaint);
            f2 = paddingLeft;
            drawMarker(canvas, fAngleToX, f10, formatDeg(this.arm1Deg), f6, f2, paddingRight);
            canvas2 = canvas;
            drawMarker(canvas2, fAngleToX2, f10, formatDeg(this.arm2Deg), f6, f2, paddingRight);
            f3 = paddingRight;
        }
        float fAngleToX6 = angleToX(this.currentDeg, f2, f3);
        float f17 = f + this.pointerGapPx;
        this.pointerPath.reset();
        this.pointerPath.moveTo(fAngleToX6, f17);
        Path path = this.pointerPath;
        float f18 = this.pointerSizePx;
        path.lineTo(fAngleToX6 - (f18 / 2.0f), f18 + f17);
        Path path2 = this.pointerPath;
        float f19 = this.pointerSizePx;
        path2.lineTo((f19 / 2.0f) + fAngleToX6, f19 + f17);
        this.pointerPath.close();
        canvas2.drawPath(this.pointerPath, this.pointerPaint);
        String deg = formatDeg(this.currentDeg);
        this.textPaint.getTextBounds(deg, 0, deg.length(), this.textBounds);
        canvas2.drawText(deg, Math.max(f2 + (this.textBounds.width() / 2.0f), Math.min(f3 - (this.textBounds.width() / 2.0f), fAngleToX6)), ((f17 + this.pointerSizePx) + this.labelGapPx) - fontMetrics.ascent, this.textPaint);
    }

    private void drawMarker(Canvas canvas, float f, float f2, String str, float f3, float f4, float f5) {
        canvas.drawCircle(f, f2, this.markerRadiusPx, this.markerPaint);
        float fMeasureText = this.textPaint.measureText(str) / 2.0f;
        canvas.drawText(str, Math.max(f4 + fMeasureText, Math.min(f5 - fMeasureText, f)), f3, this.textPaint);
    }

    private float angleToX(float f, float f2, float f3) {
        return f2 + (((Math.max(MIN_DEG, Math.min(MAX_DEG, f)) - MIN_DEG) / 180.0f) * (f3 - f2));
    }

    private static String formatDeg(float f) {
        return String.format(Locale.ROOT, "%.1f°", Float.valueOf(f));
    }
}
