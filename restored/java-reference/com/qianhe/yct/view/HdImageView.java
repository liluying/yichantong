package com.qianhe.yct.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.content.res.AppCompatResources;
import com.qianhe.yct.R$styleable;
import java.util.Arrays;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class HdImageView extends View {
    private static final int MAX_SOURCE_EDGE = 4096;
    private static final int UNSPECIFIED_GRAVITY = -1;
    private int[] cachedDrawableState;
    private final RectF destRect;
    private int imageResId;
    private int maxDisplayHeight;
    private final Paint paint;
    private Bitmap sourceBitmap;
    private int srcHeight;
    private final Rect srcRect;
    private int srcWidth;

    public HdImageView(Context context) {
        super(context);
        this.paint = new Paint(7);
        this.srcRect = new Rect();
        this.destRect = new RectF();
        init(context, null);
    }

    public HdImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint(7);
        this.srcRect = new Rect();
        this.destRect = new RectF();
        init(context, attributeSet);
    }

    public HdImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.paint = new Paint(7);
        this.srcRect = new Rect();
        this.destRect = new RectF();
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.HdImageView);
            try {
                this.maxDisplayHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.HdImageView_maxDisplayHeight, 0);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.HdImageView_src, 0);
                if (resourceId != 0) {
                    setImageResource(resourceId);
                }
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    public void setMaxDisplayHeight(int i) {
        if (this.maxDisplayHeight == i) {
            return;
        }
        this.maxDisplayHeight = i;
        requestLayout();
        invalidate();
    }

    public void setImageResource(int i) {
        if (this.imageResId != i || this.sourceBitmap == null) {
            this.imageResId = i;
            recycleSourceBitmap();
            this.cachedDrawableState = null;
            this.srcWidth = 0;
            this.srcHeight = 0;
            if (i == 0) {
                requestLayout();
                invalidate();
            } else {
                resolveSourceSize(i);
                ensureSourceBitmapLoaded();
                requestLayout();
                invalidate();
            }
        }
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.imageResId == 0) {
            return;
        }
        ensureSourceBitmapLoaded();
        invalidate();
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        ensureDefaultLayoutGravity(layoutParams);
        super.setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null && ensureDefaultLayoutGravity(layoutParams)) {
            requestLayout();
        }
        if (this.imageResId != 0) {
            ensureSourceBitmapLoaded();
        }
    }

    private static boolean ensureDefaultLayoutGravity(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            if (layoutParams2.gravity != -1) {
                return false;
            }
            layoutParams2.gravity = 17;
            return true;
        }
        if (!(layoutParams instanceof LinearLayout.LayoutParams)) {
            return false;
        }
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams;
        if (layoutParams3.gravity != -1) {
            return false;
        }
        layoutParams3.gravity = 17;
        return true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        Bitmap bitmap = this.sourceBitmap;
        int width = bitmap != null ? bitmap.getWidth() : this.srcWidth;
        Bitmap bitmap2 = this.sourceBitmap;
        int height = bitmap2 != null ? bitmap2.getHeight() : this.srcHeight;
        if (width <= 0 || height <= 0) {
            setMeasuredDimension(0, 0);
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        if (mode == 0 || size <= 0) {
            size = width;
        }
        float f = height;
        float f2 = width;
        int iRound = Math.round((size * f) / f2);
        int i3 = this.maxDisplayHeight;
        if (i3 > 0 && iRound > i3) {
            size = Math.round((i3 * f2) / f);
            iRound = i3;
        }
        int size2 = View.MeasureSpec.getSize(i2);
        if (View.MeasureSpec.getMode(i2) != 0 && size2 > 0 && iRound > size2) {
            size = Math.round((size2 * f2) / f);
            iRound = size2;
        }
        if (mode == Integer.MIN_VALUE && size > View.MeasureSpec.getSize(i)) {
            size = View.MeasureSpec.getSize(i);
            iRound = Math.round((size * f) / f2);
        }
        setMeasuredDimension(Math.max(size, 0), Math.max(iRound, 0));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.sourceBitmap;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        int width2 = this.sourceBitmap.getWidth();
        int height2 = this.sourceBitmap.getHeight();
        if (width <= 0 || height <= 0 || width2 <= 0 || height2 <= 0) {
            return;
        }
        int[] iArrCalculateFitCenterSize = calculateFitCenterSize(width2, height2, width, height);
        int i = iArrCalculateFitCenterSize[0];
        int i2 = iArrCalculateFitCenterSize[1];
        if (i <= 0 || i2 <= 0) {
            return;
        }
        float f = (width - i) / 2.0f;
        float f2 = (height - i2) / 2.0f;
        this.srcRect.set(0, 0, width2, height2);
        this.destRect.set(f, f2, i + f, i2 + f2);
        canvas.drawBitmap(this.sourceBitmap, this.srcRect, this.destRect, this.paint);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        recycleSourceBitmap();
    }

    private void ensureSourceBitmapLoaded() {
        int[] iArr;
        if (this.imageResId == 0) {
            return;
        }
        int[] drawableState = getDrawableState();
        if (this.sourceBitmap == null || (iArr = this.cachedDrawableState) == null || !Arrays.equals(drawableState, iArr)) {
            recycleSourceBitmap();
            Bitmap bitmapDecodeSourceBitmap = decodeSourceBitmap(this.imageResId);
            this.sourceBitmap = bitmapDecodeSourceBitmap;
            if (bitmapDecodeSourceBitmap != null) {
                this.cachedDrawableState = (int[]) drawableState.clone();
                this.srcWidth = this.sourceBitmap.getWidth();
                this.srcHeight = this.sourceBitmap.getHeight();
            }
        }
    }

    private Bitmap decodeSourceBitmap(int i) {
        int i2;
        int i3;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(getResources(), i, options);
        int i4 = options.outWidth;
        if (i4 > 0 && (i3 = options.outHeight) > 0) {
            int iCalculateInSampleSize = calculateInSampleSize(i4, i3, 4096, 4096);
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inSampleSize = iCalculateInSampleSize;
            options2.inScaled = false;
            options2.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return BitmapFactory.decodeResource(getResources(), i, options2);
        }
        Drawable drawable = AppCompatResources.getDrawable(getContext(), i);
        if (drawable == null) {
            return null;
        }
        Drawable drawableMutate = drawable.mutate();
        drawableMutate.setState(getDrawableState());
        int iMax = Math.max(drawableMutate.getIntrinsicWidth(), 1);
        int iMax2 = Math.max(drawableMutate.getIntrinsicHeight(), 1);
        int i5 = this.srcWidth;
        if (i5 > 0 && (i2 = this.srcHeight) > 0) {
            iMax = i5;
            iMax2 = i2;
        }
        return drawableToBitmap(drawableMutate, iMax, iMax2);
    }

    private void resolveSourceSize(int i) {
        int i2;
        int i3;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(getResources(), i, options);
        int i4 = options.outWidth;
        if (i4 > 0 && (i2 = options.outHeight) > 0) {
            this.srcWidth = i4;
            this.srcHeight = i2;
            int i5 = options.inDensity;
            if (i5 <= 0 || (i3 = options.inTargetDensity) <= 0) {
                return;
            }
            float f = i3 / i5;
            this.srcWidth = Math.round(i4 * f);
            this.srcHeight = Math.round(options.outHeight * f);
            return;
        }
        Drawable drawable = AppCompatResources.getDrawable(getContext(), i);
        if (drawable == null) {
            return;
        }
        Drawable drawableMutate = drawable.mutate();
        drawableMutate.setState(getDrawableState());
        this.srcWidth = Math.max(drawableMutate.getIntrinsicWidth(), 0);
        this.srcHeight = Math.max(drawableMutate.getIntrinsicHeight(), 0);
    }

    private static Bitmap drawableToBitmap(Drawable drawable, int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, i, i2);
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    private static int[] calculateFitCenterSize(int i, int i2, int i3, int i4) {
        if (i <= 0 || i2 <= 0 || i3 <= 0 || i4 <= 0) {
            return new int[]{0, 0};
        }
        float f = i;
        float f2 = i2;
        float fMin = Math.min(i3 / f, i4 / f2);
        return new int[]{Math.round(f * fMin), Math.round(f2 * fMin)};
    }

    private static int calculateInSampleSize(int i, int i2, int i3, int i4) {
        int i5 = 1;
        if (i2 <= i4 && i <= i3) {
            return 1;
        }
        int i6 = i2 / 2;
        int i7 = i / 2;
        while (i6 / i5 >= i4 && i7 / i5 >= i3) {
            i5 *= 2;
        }
        return i5;
    }

    private void recycleSourceBitmap() {
        Bitmap bitmap = this.sourceBitmap;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.sourceBitmap.recycle();
        }
        this.sourceBitmap = null;
    }
}
