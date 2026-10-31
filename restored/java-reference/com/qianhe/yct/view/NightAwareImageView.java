package com.qianhe.yct.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.qianhe.yct.utils.NightImageBackgroundHelper;
import pl.droidsonroids.gif.GifImageView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class NightAwareImageView extends GifImageView {
    private Bitmap buffer;
    private int remapKey;
    private Boolean shouldRemap;

    public NightAwareImageView(Context context) {
        super(context);
    }

    public NightAwareImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NightAwareImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.shouldRemap = null;
        super.setImageDrawable(drawable);
    }

    @Override // pl.droidsonroids.gif.GifImageView, android.widget.ImageView
    public void setImageResource(int i) {
        this.shouldRemap = null;
        super.setImageResource(i);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.shouldRemap = null;
        super.setImageBitmap(bitmap);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        this.shouldRemap = null;
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (!NightImageBackgroundHelper.isNight(getContext())) {
            super.onDraw(canvas);
            return;
        }
        int width = getWidth();
        int height = getHeight();
        if (width <= 0 || height <= 0) {
            super.onDraw(canvas);
            return;
        }
        int iRemapCacheKey = remapCacheKey();
        if (Boolean.FALSE.equals(this.shouldRemap) && iRemapCacheKey == this.remapKey) {
            super.onDraw(canvas);
            return;
        }
        ensureBuffer(width, height);
        this.buffer.eraseColor(0);
        super.onDraw(new Canvas(this.buffer));
        if (this.shouldRemap == null || iRemapCacheKey != this.remapKey) {
            this.remapKey = iRemapCacheKey;
            this.shouldRemap = Boolean.valueOf(NightImageBackgroundHelper.isWhiteBackground(this.buffer));
        }
        if (Boolean.TRUE.equals(this.shouldRemap)) {
            NightImageBackgroundHelper.remap(getContext(), this.buffer);
            canvas.drawBitmap(this.buffer, 0.0f, 0.0f, (Paint) null);
        } else {
            super.onDraw(canvas);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        recycleBuffer();
    }

    private int remapCacheKey() {
        Drawable drawable = getDrawable();
        int i = 0;
        int iIdentityHashCode = drawable == null ? 0 : System.identityHashCode(drawable);
        int[] drawableState = getDrawableState();
        if (drawableState != null) {
            int length = drawableState.length;
            int i2 = 0;
            while (i < length) {
                i2 = (i2 * 31) + drawableState[i];
                i++;
            }
            i = i2;
        }
        return (iIdentityHashCode * 31) + i;
    }

    private void ensureBuffer(int i, int i2) {
        Bitmap bitmap = this.buffer;
        if (bitmap == null || bitmap.isRecycled() || this.buffer.getWidth() != i || this.buffer.getHeight() != i2) {
            recycleBuffer();
            this.buffer = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        }
    }

    private void recycleBuffer() {
        Bitmap bitmap = this.buffer;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.buffer.recycle();
        }
        this.buffer = null;
        this.shouldRemap = null;
    }
}
