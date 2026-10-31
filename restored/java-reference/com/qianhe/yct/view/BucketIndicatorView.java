package com.qianhe.yct.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BucketIndicatorView extends View {
    private static final int DEFAULT_DOT_COLOR = -65536;
    private static final int DEFAULT_TEXT_COLOR = -16777216;
    private static final float DEFAULT_TEXT_SIZE_CM = 0.3f;
    private static final float MAX_OFFSET_RATIO = 3.0f;
    private static final int RESET_DELAY = 1000;
    private float mContentPadding;
    private String mDiffText;
    private Paint mDotPaint;
    private float mDotRadius;
    private float mDotX;
    private float mDotY;
    private Handler mHandler;
    private Bitmap mIconBitmap;
    private Matrix mIconMatrix;
    private double mIconWidthCm;
    private float mIconX;
    private double mIconXOffset;
    private float mIconY;
    private final AtomicBoolean mResetOffsetScheduled;
    private float mScaledIconHeight;
    private float mScaledIconWidth;
    private Paint mTextPaint;
    private float mTextSize;
    private float mTextX;
    private float mTextY;
    private float mTotalContentHeight;
    private float mTotalContentWidth;

    public BucketIndicatorView(Context context) {
        super(context);
        this.mIconWidthCm = 100.0d;
        this.mDiffText = "";
        this.mIconXOffset = 0.0d;
        this.mResetOffsetScheduled = new AtomicBoolean(false);
        init(context, null);
    }

    public BucketIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIconWidthCm = 100.0d;
        this.mDiffText = "";
        this.mIconXOffset = 0.0d;
        this.mResetOffsetScheduled = new AtomicBoolean(false);
        init(context, attributeSet);
    }

    public BucketIndicatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIconWidthCm = 100.0d;
        this.mDiffText = "";
        this.mIconXOffset = 0.0d;
        this.mResetOffsetScheduled = new AtomicBoolean(false);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        Paint paint = new Paint(1);
        this.mDotPaint = paint;
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint(1);
        this.mTextPaint = paint2;
        paint2.setTextAlign(Paint.Align.CENTER);
        this.mIconMatrix = new Matrix();
        this.mHandler = new Handler();
        try {
            this.mIconBitmap = ((BitmapDrawable) context.getResources().getDrawable(R$drawable.icon_bucket)).getBitmap();
        } catch (Exception unused) {
        }
        this.mDotPaint.setColor(DEFAULT_DOT_COLOR);
        this.mTextPaint.setColor(-16777216);
        float fCmToPixels = cmToPixels(context, DEFAULT_TEXT_SIZE_CM);
        this.mTextSize = fCmToPixels;
        this.mTextPaint.setTextSize(fCmToPixels);
        this.mContentPadding = cmToPixels(context, 0.2f);
        updateIconDimensions(context);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        calculateContentDimensions();
        setMeasuredDimension(View.resolveSize((int) Math.ceil(this.mTotalContentWidth), i), View.resolveSize((int) Math.ceil(this.mTotalContentHeight), i2));
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            updateElementPositions();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mIconBitmap != null && this.mScaledIconWidth > 0.0f && this.mScaledIconHeight > 0.0f) {
            canvas.save();
            canvas.translate((float) (this.mIconX + this.mIconXOffset), this.mIconY);
            canvas.drawBitmap(this.mIconBitmap, this.mIconMatrix, null);
            canvas.restore();
        }
        canvas.drawCircle(this.mDotX, this.mDotY, this.mDotRadius, this.mDotPaint);
        if (this.mDiffText.isEmpty()) {
            return;
        }
        canvas.drawText(this.mDiffText, this.mTextX, this.mTextY, this.mTextPaint);
    }

    public void setIconWidth(double d) {
        this.mIconWidthCm = d;
        updateIconDimensions(getContext());
        requestLayout();
    }

    public double getIconWidth() {
        return this.mIconWidthCm;
    }

    public void setContentPadding(float f) {
        this.mContentPadding = cmToPixels(getContext(), f);
        requestLayout();
    }

    public float getContentPadding() {
        return pixelsToCm(getContext(), this.mContentPadding);
    }

    public void setDotColor(int i) throws Resources.NotFoundException {
        this.mDotPaint.setColor(getContext().getResources().getColor(i));
        invalidate();
    }

    public void setTextColor(int i) throws Resources.NotFoundException {
        this.mTextPaint.setColor(getContext().getResources().getColor(i));
        invalidate();
    }

    public void setTextSize(float f) {
        float fCmToPixels = cmToPixels(getContext(), f);
        this.mTextSize = fCmToPixels;
        this.mTextPaint.setTextSize(fCmToPixels);
        requestLayout();
    }

    public void setDiffValue(int i, double d) throws Resources.NotFoundException {
        setDiffValue(i, d, true);
    }

    public void setDiffValue(int i, double d, boolean z) throws Resources.NotFoundException {
        setDotColor((i == 0 && z) ? R$color.green : R$color.red_dark);
        setTextColor((i == 0 && z) ? R$color.green : R$color.red_dark);
        if (i == 1) {
            d = -d;
        }
        this.mDiffText = z ? String.format(Locale.ROOT, "%.0fcm", Double.valueOf(d)) : getContext().getString(R$string.data_unavailable);
        double d2 = this.mIconWidthCm;
        if (d2 <= 0.0d) {
            d2 = 10.0d;
        }
        double d3 = d / d2;
        float f = this.mScaledIconWidth;
        double d4 = d3 * f;
        this.mIconXOffset = Math.min(Math.max(d4, -r5), f * MAX_OFFSET_RATIO);
        invalidate();
    }

    public void setIconResource(int i) {
        try {
            this.mIconBitmap = ((BitmapDrawable) getContext().getResources().getDrawable(i)).getBitmap();
            updateIconDimensions(getContext());
            requestLayout();
        } catch (Exception unused) {
        }
    }

    private float cmToPixels(Context context, float f) {
        return (f * context.getResources().getDisplayMetrics().densityDpi) / 2.54f;
    }

    private float pixelsToCm(Context context, float f) {
        return (f * 2.54f) / context.getResources().getDisplayMetrics().densityDpi;
    }

    private void updateIconDimensions(Context context) {
        if (this.mIconBitmap == null) {
            this.mScaledIconWidth = 0.0f;
            this.mScaledIconHeight = 0.0f;
            this.mDotRadius = cmToPixels(context, 0.2f);
        } else {
            this.mScaledIconWidth = r0.getWidth();
            this.mScaledIconHeight = this.mIconBitmap.getHeight();
            this.mIconMatrix.reset();
            this.mDotRadius = this.mScaledIconWidth * 0.1f;
        }
    }

    private void calculateContentDimensions() {
        float f = this.mScaledIconWidth;
        float fMax = Math.max(f, this.mDotRadius * 2.0f) + (MAX_OFFSET_RATIO * f * 2.0f);
        float f2 = this.mContentPadding;
        this.mTotalContentWidth = fMax + (f2 * 2.0f);
        this.mTotalContentHeight = this.mScaledIconHeight + f2 + 0.0f + (this.mDotRadius * 2.0f) + f2 + this.mTextSize + f2;
    }

    private void updateElementPositions() {
        float width = getWidth() / 2.0f;
        float f = this.mTotalContentHeight / 2.0f;
        this.mIconX = width - (this.mScaledIconWidth / 2.0f);
        float height = (getHeight() / 2.0f) - f;
        float f2 = this.mContentPadding;
        float f3 = height + f2;
        this.mIconY = f3;
        this.mDotX = width;
        float f4 = f3 + this.mScaledIconHeight;
        float f5 = this.mDotRadius;
        float f6 = f4 + (f5 / 2.0f);
        this.mDotY = f6;
        this.mTextX = width;
        this.mTextY = f6 + f5 + f2 + (this.mTextSize * 0.75f);
    }

    private void scheduleResetOffset() {
        if (this.mResetOffsetScheduled.compareAndSet(false, true)) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.qianhe.yct.view.BucketIndicatorView.1
                @Override // java.lang.Runnable
                public void run() {
                    BucketIndicatorView.this.resetIconPosition();
                    BucketIndicatorView.this.mResetOffsetScheduled.set(false);
                }
            }, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetIconPosition() {
        this.mIconXOffset = 0.0d;
        invalidate();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }
}
