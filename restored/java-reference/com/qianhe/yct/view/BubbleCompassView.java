package com.qianhe.yct.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.qianhe.baselib.utils.DpUtils;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$string;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BubbleCompassView extends View {
    private static final long IDLE_STOP_NS = 300000000;
    private static final int MAX_CIRCLE_DP = 280;
    private static final float MAX_DEGREES = 30.0f;
    private static final int MIN_CIRCLE_DP = 168;
    private static final float REDRAW_EPSILON_DEG = 0.01f;
    private static final float SMOOTHING_SPEED = 14.0f;
    private float baseTextSizePx;
    private final Runnable bubbleAnimateRunnable;
    private boolean bubbleAnimating;
    private final Paint bubblePaint;
    private float bubbleRadiusPx;
    private float centerRingRadiusPx;
    private final Paint circlePaint;
    private final Paint crossPaint;
    private float displayPitchDegrees;
    private float displayRollDegrees;
    private float labelInsetPx;
    private long lastFrameTimeNs;
    private long lastTargetUpdateNs;
    private float minTextSizePx;
    private String pitchLabel;
    private float rollBelowAxisPx;
    private String rollLabel;
    private float strokeWidthPx;
    private float targetPitchDegrees;
    private float targetRollDegrees;
    private final Rect textBounds;
    private final Paint textPaint;
    private float valueGapPx;

    private static final class LabelLayout {
        float pitchBandHeight;
        float pitchLabelWidth;
        float pitchTextHeight;
        boolean pitchValueBelow;
        float pitchValueWidth;
        float rollLabelWidth;
        float rollValueHeight;
        float rollValueWidth;
        float textSize;

        private LabelLayout() {
        }
    }

    public BubbleCompassView(Context context) {
        this(context, null);
    }

    public BubbleCompassView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BubbleCompassView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.circlePaint = new Paint(1);
        this.crossPaint = new Paint(1);
        this.bubblePaint = new Paint(1);
        this.textPaint = new Paint(1);
        this.textBounds = new Rect();
        this.pitchLabel = "";
        this.rollLabel = "";
        this.bubbleAnimateRunnable = new Runnable() { // from class: com.qianhe.yct.view.BubbleCompassView.1
            @Override // java.lang.Runnable
            public void run() {
                if (!BubbleCompassView.this.bubbleAnimating || !BubbleCompassView.this.isAttachedToWindow()) {
                    BubbleCompassView.this.bubbleAnimating = false;
                    return;
                }
                long jNanoTime = System.nanoTime();
                float f = BubbleCompassView.this.lastFrameTimeNs == 0 ? 0.016f : (jNanoTime - BubbleCompassView.this.lastFrameTimeNs) / 1.0E9f;
                BubbleCompassView.this.lastFrameTimeNs = jNanoTime;
                if (f > 0.05f) {
                    f = 0.05f;
                }
                if (BubbleCompassView.this.stepBubbleSmooth(f)) {
                    BubbleCompassView.this.invalidate();
                }
                if (Math.abs(BubbleCompassView.this.targetRollDegrees - BubbleCompassView.this.displayRollDegrees) < BubbleCompassView.REDRAW_EPSILON_DEG && Math.abs(BubbleCompassView.this.targetPitchDegrees - BubbleCompassView.this.displayPitchDegrees) < BubbleCompassView.REDRAW_EPSILON_DEG && jNanoTime - BubbleCompassView.this.lastTargetUpdateNs > BubbleCompassView.IDLE_STOP_NS) {
                    BubbleCompassView bubbleCompassView = BubbleCompassView.this;
                    bubbleCompassView.displayRollDegrees = bubbleCompassView.targetRollDegrees;
                    BubbleCompassView bubbleCompassView2 = BubbleCompassView.this;
                    bubbleCompassView2.displayPitchDegrees = bubbleCompassView2.targetPitchDegrees;
                    BubbleCompassView.this.bubbleAnimating = false;
                    BubbleCompassView.this.lastFrameTimeNs = 0L;
                    return;
                }
                BubbleCompassView.this.postOnAnimation(this);
            }
        };
        init(context);
    }

    private void init(Context context) {
        int color = ContextCompat.getColor(context, R$color.text_black);
        int color2 = ContextCompat.getColor(context, R$color.gray_bar);
        this.strokeWidthPx = DpUtils.dp2px(context, 2.0f);
        float fDp2px = DpUtils.dp2px(context, SMOOTHING_SPEED);
        this.bubbleRadiusPx = fDp2px;
        this.centerRingRadiusPx = fDp2px + DpUtils.dp2px(context, 5.0f);
        this.labelInsetPx = DpUtils.dp2px(context, 4.0f);
        this.valueGapPx = DpUtils.dp2px(context, 4.0f);
        this.rollBelowAxisPx = DpUtils.dp2px(context, 5.0f);
        Paint paint = this.circlePaint;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.circlePaint.setStrokeWidth(this.strokeWidthPx);
        this.circlePaint.setColor(color);
        this.crossPaint.setStyle(style);
        this.crossPaint.setStrokeWidth(this.strokeWidthPx);
        this.crossPaint.setColor(color);
        this.bubblePaint.setStyle(Paint.Style.FILL);
        this.bubblePaint.setColor(color2);
        this.textPaint.setColor(color);
        this.baseTextSizePx = DpUtils.dp2px(context, SMOOTHING_SPEED);
        this.minTextSizePx = DpUtils.dp2px(context, 10.0f);
        this.textPaint.setTextSize(this.baseTextSizePx);
        this.textPaint.setTextAlign(Paint.Align.CENTER);
        this.pitchLabel = context.getString(R$string.pitch_angle);
        this.rollLabel = context.getString(R$string.roll_angle);
    }

    public void setAngles(double d, double d2) {
        this.targetRollDegrees = (float) d;
        this.targetPitchDegrees = (float) d2;
        this.lastTargetUpdateNs = System.nanoTime();
        invalidate();
        startBubbleAnimationIfNeeded();
    }

    private void startBubbleAnimationIfNeeded() {
        if (this.bubbleAnimating) {
            return;
        }
        this.bubbleAnimating = true;
        this.lastFrameTimeNs = 0L;
        postOnAnimation(this.bubbleAnimateRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean stepBubbleSmooth(float f) {
        float fExp = 1.0f - ((float) Math.exp(f * (-14.0f)));
        float f2 = this.displayRollDegrees;
        float f3 = this.displayPitchDegrees;
        float f4 = ((this.targetRollDegrees - f2) * fExp) + f2;
        this.displayRollDegrees = f4;
        this.displayPitchDegrees = ((this.targetPitchDegrees - f3) * fExp) + f3;
        return Math.abs(f4 - f2) >= REDRAW_EPSILON_DEG || Math.abs(this.displayPitchDegrees - f3) >= REDRAW_EPSILON_DEG;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.lastTargetUpdateNs = System.nanoTime();
        startBubbleAnimationIfNeeded();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        this.bubbleAnimating = false;
        this.lastFrameTimeNs = 0L;
        removeCallbacks(this.bubbleAnimateRunnable);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i) == 0 || size <= 0) {
            size = resolveAdaptiveMaxCirclePx();
        }
        LabelLayout labelLayoutMeasureLabelLayout = measureLabelLayout(this.baseTextSizePx, size);
        int iMax = Math.max(Math.min(size, resolveAdaptiveMaxCirclePx()), DpUtils.dp2px(getContext(), 168.0f));
        setMeasuredDimension(iMax, Math.round(labelLayoutMeasureLabelLayout.pitchBandHeight) + iMax);
    }

    private int resolveAdaptiveMaxCirclePx() {
        return DpUtils.dp2px(getContext(), 280.0f);
    }

    private LabelLayout measureLabelLayout(float f, float f2) {
        LabelLayout labelLayout = new LabelLayout();
        labelLayout.textSize = f;
        this.textPaint.setTextSize(f);
        String degrees = formatDegrees(this.targetPitchDegrees);
        String degrees2 = formatDegrees(this.targetRollDegrees);
        labelLayout.pitchLabelWidth = measureTextWidth(this.pitchLabel);
        labelLayout.pitchValueWidth = measureTextWidth(degrees);
        labelLayout.rollLabelWidth = measureTextWidth(this.rollLabel);
        labelLayout.rollValueWidth = measureTextWidth(degrees2);
        labelLayout.rollValueHeight = measureTextHeight(degrees2);
        Paint.FontMetrics fontMetrics = this.textPaint.getFontMetrics();
        labelLayout.pitchTextHeight = fontMetrics.descent - fontMetrics.ascent;
        float f3 = labelLayout.pitchLabelWidth + this.valueGapPx + labelLayout.pitchValueWidth;
        float fMax = Math.max(f2, 1.0f);
        float f4 = this.labelInsetPx;
        boolean z = f3 > fMax - (f4 * 2.0f);
        labelLayout.pitchValueBelow = z;
        if (z) {
            labelLayout.pitchBandHeight = (labelLayout.pitchTextHeight * 2.0f) + f4 + this.valueGapPx + f4;
            return labelLayout;
        }
        labelLayout.pitchBandHeight = labelLayout.pitchTextHeight + f4 + f4;
        return labelLayout;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        super.onDraw(canvas);
        float width = getWidth();
        float height = getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        LabelLayout labelLayoutMeasureLabelLayout = measureLabelLayout(this.baseTextSizePx, width);
        float f2 = this.strokeWidthPx / 2.0f;
        float f3 = width / 2.0f;
        float f4 = f3 - f2;
        LabelLayout labelLayoutMeasureLabelLayout2 = labelLayoutMeasureLabelLayout;
        while (labelLayoutMeasureLabelLayout2.textSize > this.minTextSizePx && isRollTextOverflowInside(f4, labelLayoutMeasureLabelLayout2)) {
            labelLayoutMeasureLabelLayout2 = measureLabelLayout(labelLayoutMeasureLabelLayout2.textSize - 1.0f, width);
        }
        this.textPaint.setTextSize(labelLayoutMeasureLabelLayout2.textSize);
        Paint.FontMetrics fontMetrics = this.textPaint.getFontMetrics();
        if (f4 <= this.bubbleRadiusPx) {
            return;
        }
        float f5 = labelLayoutMeasureLabelLayout2.pitchBandHeight + f3;
        canvas.drawCircle(f3, f5, f4, this.circlePaint);
        canvas.drawCircle(f3, f5, this.centerRingRadiusPx, this.circlePaint);
        canvas.drawLine(f3 - f4, f5, f3 - this.centerRingRadiusPx, f5, this.crossPaint);
        float f6 = f3 + f4;
        canvas.drawLine(f3 + this.centerRingRadiusPx, f5, f6, f5, this.crossPaint);
        canvas.drawLine(f3, f5 - f4, f3, f5 - this.centerRingRadiusPx, this.crossPaint);
        canvas.drawLine(f3, f5 + this.centerRingRadiusPx, f3, f5 + f4, this.crossPaint);
        String degrees = formatDegrees(this.targetPitchDegrees);
        String degrees2 = formatDegrees(this.targetRollDegrees);
        Paint paint = this.textPaint;
        Paint.Align align = Paint.Align.CENTER;
        paint.setTextAlign(align);
        if (labelLayoutMeasureLabelLayout2.pitchValueBelow) {
            float f7 = labelLayoutMeasureLabelLayout2.pitchBandHeight / 2.0f;
            f = 1.0f;
            canvas.drawText(this.pitchLabel, f3, (f7 - (this.valueGapPx / 2.0f)) - fontMetrics.descent, this.textPaint);
            canvas.drawText(degrees, f3, ((f7 + labelLayoutMeasureLabelLayout2.pitchTextHeight) + (this.valueGapPx / 2.0f)) - fontMetrics.descent, this.textPaint);
        } else {
            f = 1.0f;
            float f8 = (labelLayoutMeasureLabelLayout2.pitchBandHeight - this.labelInsetPx) - fontMetrics.descent;
            canvas.drawText(this.pitchLabel, f3, f8, this.textPaint);
            this.textPaint.setTextAlign(Paint.Align.LEFT);
            canvas.drawText(degrees, f3 + (labelLayoutMeasureLabelLayout2.pitchLabelWidth / 2.0f) + this.valueGapPx, f8, this.textPaint);
            this.textPaint.setTextAlign(align);
        }
        float f9 = f6 - this.labelInsetPx;
        float f10 = (this.rollBelowAxisPx + f5) - fontMetrics.ascent;
        this.textPaint.setTextAlign(Paint.Align.RIGHT);
        canvas.drawText(this.rollLabel, f9, f10, this.textPaint);
        canvas.drawText(degrees2, f9, f10 + this.valueGapPx + labelLayoutMeasureLabelLayout2.rollValueHeight, this.textPaint);
        this.textPaint.setTextAlign(align);
        float fMax = Math.max(0.0f, (f4 - this.bubbleRadiusPx) - f2);
        float f11 = this.displayRollDegrees / MAX_DEGREES;
        float f12 = this.displayPitchDegrees / MAX_DEGREES;
        float fHypot = (float) Math.hypot(f11, f12);
        if (fHypot > f) {
            f11 /= fHypot;
            f12 /= fHypot;
        }
        canvas.drawCircle(f3 + (f11 * fMax), f5 - (f12 * fMax), this.bubbleRadiusPx, this.bubblePaint);
    }

    private boolean isRollTextOverflowInside(float f, LabelLayout labelLayout) {
        return Math.max(labelLayout.rollLabelWidth, labelLayout.rollValueWidth) > f - this.labelInsetPx;
    }

    private float measureTextWidth(String str) {
        this.textPaint.getTextBounds(str, 0, str.length(), this.textBounds);
        return this.textBounds.width();
    }

    private float measureTextHeight(String str) {
        this.textPaint.getTextBounds(str, 0, str.length(), this.textBounds);
        return this.textBounds.height();
    }

    private static String formatDegrees(float f) {
        return String.format(Locale.ROOT, "%.2f°", Float.valueOf(f));
    }
}
