package com.qianhe.yct.view;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedCallback;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$styleable;
import com.tencent.smtt.sdk.WebView;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PolyLinePreView extends View {
    private static final int DRAG = 1;
    private static final int NONE = 0;
    private static final int ZOOM = 2;
    private double INITSCALE;
    private OnBackPressedCallback backCallback;
    private Bitmap bucketBitmap;
    private boolean buttonTracking;
    private Bitmap collapseBitmap;
    private float contentHeight;
    private float contentWidth;
    private final List<double[]> coordsList;
    private double[] currentPoint;
    private Paint dottedLinePaint;
    private boolean drawLines;
    private Bitmap expandBitmap;
    private boolean fullscreen;
    private final RectF fullscreenButtonRect;
    private FrameLayout fullscreenHost;
    private double[] gaussL;
    private double[] gaussR;
    private boolean isWorkMode;
    private final float[] lastFingerPos1;
    private final float[] lastFingerPos2;
    private int lastNearestSegmentIndex;
    private final float[] lastPoint;
    private Paint linePaint;
    private final Matrix matrix;
    private float minX;
    private float minY;
    private int mode;
    private int nearestSegmentIndex;
    private boolean needTransform;
    private double offsetX;
    private double offsetY;
    private double originX;
    private double originY;
    private int originalIndex;
    private ViewGroup.LayoutParams originalLp;
    private ViewGroup originalParent;
    private View placeholder;
    private final List<double[]> points;
    private boolean reparenting;
    private boolean reverseDirection;
    private final Matrix savedMatrix;
    private double scaleRatio;
    private Paint textPaint;
    private double[] transformedCurrentPoint;
    private final List<double[]> transformedPoints;
    private double width;

    public PolyLinePreView(Context context) {
        this(context, null);
    }

    public PolyLinePreView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PolyLinePreView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.matrix = new Matrix();
        this.savedMatrix = new Matrix();
        this.lastPoint = new float[2];
        this.lastFingerPos1 = new float[2];
        this.lastFingerPos2 = new float[2];
        this.mode = 0;
        this.points = new ArrayList();
        this.coordsList = new ArrayList();
        this.contentWidth = 0.0f;
        this.contentHeight = 0.0f;
        this.minX = 0.0f;
        this.minY = 0.0f;
        this.originX = 0.0d;
        this.originY = 0.0d;
        this.INITSCALE = 1.0d;
        this.scaleRatio = 1.0d;
        this.isWorkMode = false;
        this.gaussL = new double[3];
        this.gaussR = new double[3];
        this.nearestSegmentIndex = -1;
        this.lastNearestSegmentIndex = -1;
        this.transformedPoints = new ArrayList();
        this.needTransform = false;
        this.reverseDirection = false;
        this.drawLines = true;
        this.fullscreenButtonRect = new RectF();
        this.originalIndex = -1;
        if (Build.VERSION.SDK_INT <= 23) {
            setLayerType(1, null);
        }
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PolyLinePreView);
            this.drawLines = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PolyLinePreView_drawLines, true);
            typedArrayObtainStyledAttributes.recycle();
        }
        init();
    }

    private void init() {
        this.bucketBitmap = BitmapFactory.decodeResource(getResources(), R$drawable.icon_work_center_tooth);
        Paint paint = new Paint(1);
        this.linePaint = paint;
        paint.setColor(ContextCompat.getColor(getContext(), R$color.map_line));
        this.linePaint.setStrokeWidth(dpToPx(4.0f));
        Paint paint2 = this.linePaint;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        Paint paint3 = this.linePaint;
        Paint.Cap cap = Paint.Cap.BUTT;
        paint3.setStrokeCap(cap);
        Paint paint4 = new Paint(1);
        this.dottedLinePaint = paint4;
        paint4.setColor(ContextCompat.getColor(getContext(), R$color.map_line));
        this.dottedLinePaint.setStrokeWidth(dpToPx(1.0f));
        this.dottedLinePaint.setStyle(style);
        this.dottedLinePaint.setStrokeCap(cap);
        this.dottedLinePaint.setPathEffect(new DashPathEffect(new float[]{dpToPx(20.0f), dpToPx(12.0f)}, 0.0f));
        Paint paint5 = new Paint(1);
        this.textPaint = paint5;
        paint5.setColor(ContextCompat.getColor(getContext(), R$color.map_line));
        this.textPaint.setTextSize(spToPx(14.0f));
    }

    private double distancePointToSegment(double[] dArr, double[] dArr2, double[] dArr3) {
        double d = dArr2[0];
        double d2 = dArr[0];
        double d3 = d - d2;
        double d4 = dArr2[1];
        double d5 = dArr[1];
        double d6 = d4 - d5;
        double d7 = dArr3[0] - d2;
        double d8 = dArr3[1] - d5;
        double d9 = (d3 * d3) + (d6 * d6);
        if (d9 == 0.0d) {
            return Math.sqrt((d7 * d7) + (d8 * d8));
        }
        double dMax = Math.max(0.0d, Math.min(1.0d, ((d7 * d3) + (d8 * d6)) / d9));
        double d10 = dArr[0] + (d3 * dMax);
        double d11 = dArr[1] + (dMax * d6);
        double d12 = dArr3[0] - d10;
        double d13 = dArr3[1] - d11;
        return Math.sqrt((d12 * d12) + (d13 * d13));
    }

    public void setCurrentPoint(double[] dArr, double[] dArr2) {
        if (dArr != null && dArr2 != null) {
            double[] dArr3 = this.gaussL;
            dArr3[0] = dArr[0];
            dArr3[1] = dArr[1];
            dArr3[2] = dArr[2];
            double[] dArr4 = this.gaussR;
            dArr4[0] = dArr2[0];
            dArr4[1] = dArr2[1];
            dArr4[2] = dArr2[2];
            this.currentPoint = new double[]{(dArr[0] + dArr2[0]) / 2.0d, (dArr[1] + dArr2[1]) / 2.0d};
            calculateNearestSegment();
        }
        invalidate();
    }

    private void calculateNearestSegment() {
        if (this.currentPoint == null || this.points.size() < 2) {
            this.nearestSegmentIndex = -1;
            this.needTransform = false;
            return;
        }
        this.nearestSegmentIndex = -1;
        double d = Double.MAX_VALUE;
        int i = 0;
        while (i < this.points.size() - 1) {
            int i2 = i + 1;
            double dDistancePointToSegment = distancePointToSegment(this.points.get(i), this.points.get(i2), this.currentPoint);
            if (dDistancePointToSegment < d) {
                this.nearestSegmentIndex = i;
                d = dDistancePointToSegment;
            }
            i = i2;
        }
        int i3 = this.nearestSegmentIndex;
        boolean z = i3 != this.lastNearestSegmentIndex;
        if (i3 != -1) {
            this.lastNearestSegmentIndex = i3;
        }
        if (i3 != -1) {
            calculateTransform();
            this.needTransform = true;
            if (this.isWorkMode && z) {
                centerToStartPointWithoutZoomReset();
                return;
            }
            return;
        }
        this.needTransform = false;
    }

    private double alignSegmentToNorthAngle(double d, double d2) {
        double dAtan2 = Math.atan2(-d, d2);
        return this.reverseDirection ? dAtan2 + 3.141592653589793d : dAtan2;
    }

    private void calculateTransform() {
        char c = 0;
        char c2 = 1;
        int i = this.nearestSegmentIndex;
        if (i == -1 || i >= this.points.size() - 1) {
            return;
        }
        double[] dArr = this.points.get(this.nearestSegmentIndex);
        double[] dArr2 = this.points.get(this.nearestSegmentIndex + 1);
        double dAlignSegmentToNorthAngle = alignSegmentToNorthAngle(dArr2[0] - dArr[0], dArr2[1] - dArr[1]);
        double d = dArr[0];
        double d2 = dArr[1];
        this.transformedPoints.clear();
        for (double[] dArr3 : this.points) {
            double d3 = dArr3[c] - d;
            double d4 = dArr3[c2] - d2;
            double d5 = -dAlignSegmentToNorthAngle;
            double dCos = Math.cos(d5);
            double dSin = Math.sin(d5);
            this.transformedPoints.add(new double[]{((d3 * dCos) - (d4 * dSin)) + d, (d3 * dSin) + (d4 * dCos) + d2});
            c = 0;
            c2 = 1;
        }
        double[] dArr4 = this.currentPoint;
        if (dArr4 != null) {
            double d6 = dArr4[0] - d;
            double d7 = dArr4[1] - d2;
            double d8 = -dAlignSegmentToNorthAngle;
            double dCos2 = Math.cos(d8);
            double dSin2 = Math.sin(d8);
            this.transformedCurrentPoint = new double[]{((d6 * dCos2) - (d7 * dSin2)) + d, (d6 * dSin2) + (d7 * dCos2) + d2};
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.isWorkMode) {
            return;
        }
        updateContentBounds();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.isWorkMode) {
            return;
        }
        updateContentBounds();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        PolyLinePreView polyLinePreView;
        Canvas canvas2 = canvas;
        super.onDraw(canvas);
        if (this.points.isEmpty()) {
            polyLinePreView = this;
        } else {
            float fDpToPx = dpToPx(5.0f);
            float fDpToPx2 = dpToPx(8.0f);
            int color = ContextCompat.getColor(getContext(), R$color.map_line);
            int color2 = ContextCompat.getColor(getContext(), R$color.red);
            List<double[]> list = (!this.needTransform || this.transformedPoints.isEmpty()) ? this.points : this.transformedPoints;
            int i = 0;
            while (true) {
                boolean z = true;
                if (i >= list.size()) {
                    break;
                }
                double[] dArr = list.get(i);
                float screenX = getScreenX(dArr[0]);
                float screenY = getScreenY(dArr[1]);
                int i2 = this.nearestSegmentIndex;
                if (i2 == -1 || (i != i2 && i != i2 + 1)) {
                    z = false;
                }
                this.textPaint.setColor(z ? color2 : color);
                canvas2.drawCircle(screenX, screenY, fDpToPx, this.textPaint);
                StringBuilder sb = new StringBuilder();
                sb.append("P");
                int i3 = i + 1;
                sb.append(i3);
                drawTextAboveCircle(canvas2, sb.toString(), screenX, screenY, (screenY - fDpToPx) - fDpToPx2);
                canvas2 = canvas;
                i = i3;
            }
            polyLinePreView = this;
            if (polyLinePreView.drawLines && list.size() > 1) {
                int i4 = 0;
                while (i4 < list.size() - 1) {
                    double[] dArr2 = list.get(i4);
                    int i5 = i4 + 1;
                    double[] dArr3 = list.get(i5);
                    float screenX2 = polyLinePreView.getScreenX(dArr2[0]);
                    float screenY2 = polyLinePreView.getScreenY(dArr2[1]);
                    float screenX3 = polyLinePreView.getScreenX(dArr3[0]);
                    float screenY3 = polyLinePreView.getScreenY(dArr3[1]);
                    boolean z2 = i4 == polyLinePreView.nearestSegmentIndex;
                    float f = screenX3 - screenX2;
                    float f2 = screenY3 - screenY2;
                    float fSqrt = (float) Math.sqrt((f * f) + (f2 * f2));
                    if (fSqrt > 0.0f) {
                        float f3 = (-f2) / fSqrt;
                        float f4 = f / fSqrt;
                        float f5 = (float) ((polyLinePreView.width / 2.0d) * polyLinePreView.scaleRatio);
                        float f6 = f3 * f5;
                        float f7 = screenX2 + f6;
                        float f8 = f4 * f5;
                        float f9 = screenY2 + f8;
                        float f10 = screenX3 + f6;
                        float f11 = screenY3 + f8;
                        float f12 = screenX2 - f6;
                        float f13 = screenY2 - f8;
                        float f14 = screenX3 - f6;
                        float f15 = screenY3 - f8;
                        polyLinePreView.dottedLinePaint.setColor(z2 ? color2 : color);
                        canvas.drawLine(f7, f9, f10, f11, polyLinePreView.dottedLinePaint);
                        canvas.drawLine(f12, f13, f14, f15, polyLinePreView.dottedLinePaint);
                    }
                    polyLinePreView.linePaint.setColor(z2 ? color2 : color);
                    canvas.drawLine(screenX2, screenY2, screenX3, screenY3, polyLinePreView.linePaint);
                    i4 = i5;
                }
            }
            if (!polyLinePreView.isWorkMode && polyLinePreView.points.size() > 1 && polyLinePreView.coordsList.size() > 1) {
                polyLinePreView.draw3DDistanceLabels(canvas, list, color);
            }
            if (polyLinePreView.isWorkMode) {
                drawBucketBitmap(canvas);
            }
            drawScaleBar(canvas);
        }
        if (polyLinePreView.isWorkMode) {
            return;
        }
        drawFullscreenButton(canvas);
    }

    private float dpToPx(float f) {
        return TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }

    private float spToPx(float f) {
        return TypedValue.applyDimension(2, f, getResources().getDisplayMetrics());
    }

    private float getScreenX(double d) {
        return (float) (((d - this.originX) * this.scaleRatio) + this.offsetX);
    }

    private float getScreenY(double d) {
        return (float) (this.offsetY - ((d - this.originY) * this.scaleRatio));
    }

    private void drawTextAboveCircle(Canvas canvas, String str, float f, float f2, float f3) {
        this.textPaint.getTextBounds(str, 0, str.length(), new Rect());
        canvas.drawText(str, f - (this.textPaint.measureText(str) / 2.0f), f3, this.textPaint);
    }

    private void draw3DDistanceLabels(Canvas canvas, List<double[]> list, int i) {
        Paint paint = new Paint(1);
        paint.setColor(i);
        paint.setTextSize(spToPx(12.0f));
        paint.setTextAlign(Paint.Align.CENTER);
        int i2 = 0;
        while (i2 < this.coordsList.size() - 1) {
            double[] dArr = this.coordsList.get(i2);
            int i3 = i2 + 1;
            double[] dArr2 = this.coordsList.get(i3);
            double d = dArr2[0] - dArr[0];
            double d2 = dArr2[1] - dArr[1];
            double d3 = dArr2[2] - dArr[2];
            double dSqrt = Math.sqrt((d * d) + (d2 * d2) + (d3 * d3));
            double[] dArr3 = list.get(i2);
            double[] dArr4 = list.get(i3);
            float screenX = getScreenX(dArr3[0]);
            float screenY = getScreenY(dArr3[1]);
            float screenX2 = getScreenX(dArr4[0]);
            float screenY2 = getScreenY(dArr4[1]);
            if (((float) Math.hypot(screenX2 - screenX, screenY2 - screenY)) >= dpToPx(16.0f)) {
                canvas.drawText(String.format(Locale.ROOT, "%.2fm", Double.valueOf(dSqrt)), (screenX + screenX2) / 2.0f, ((screenY + screenY2) / 2.0f) - dpToPx(3.0f), paint);
            }
            i2 = i3;
        }
    }

    private void drawScaleBar(Canvas canvas) {
        canvas.save();
        float fDpToPx = dpToPx(30.0f);
        float fDpToPx2 = dpToPx(3.0f);
        float fDpToPx3 = dpToPx(10.0f);
        float fDpToPx4 = dpToPx(10.0f);
        float f = (float) (fDpToPx / this.scaleRatio);
        Paint paint = new Paint();
        paint.setColor(WebView.NIGHT_MODE_COLOR);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawRect(fDpToPx3, (getHeight() - fDpToPx4) - fDpToPx2, fDpToPx3 + fDpToPx, getHeight() - fDpToPx4, paint);
        paint.setColor(WebView.NIGHT_MODE_COLOR);
        paint.setTextSize(dpToPx(10.0f));
        String str = String.format(Locale.ROOT, "%.2fm", Float.valueOf(f));
        canvas.drawText(str, fDpToPx3 + ((fDpToPx - paint.measureText(str)) / 2.0f), ((getHeight() - fDpToPx4) - fDpToPx2) - dpToPx(5.0f), paint);
        canvas.restore();
    }

    private float fullscreenButtonSize() {
        return dpToPx(22.0f);
    }

    private float fullscreenButtonMargin() {
        return dpToPx(8.0f);
    }

    private void updateFullscreenButtonRect() {
        float fFullscreenButtonSize = fullscreenButtonSize();
        float fFullscreenButtonMargin = fullscreenButtonMargin();
        this.fullscreenButtonRect.set((getWidth() - fFullscreenButtonMargin) - fFullscreenButtonSize, (getHeight() - fFullscreenButtonMargin) - fFullscreenButtonSize, getWidth() - fFullscreenButtonMargin, getHeight() - fFullscreenButtonMargin);
    }

    private void drawFullscreenButton(Canvas canvas) {
        ensureFullscreenIcons();
        if (getWidth() <= 0 || getHeight() <= 0) {
            return;
        }
        updateFullscreenButtonRect();
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(dpToPx(1.0f));
        paint.setColor(ContextCompat.getColor(getContext(), R$color.theme));
        canvas.drawRoundRect(this.fullscreenButtonRect, dpToPx(4.0f), dpToPx(4.0f), paint);
        Bitmap bitmap = this.fullscreen ? this.collapseBitmap : this.expandBitmap;
        if (bitmap != null) {
            float fDpToPx = dpToPx(3.0f);
            RectF rectF = this.fullscreenButtonRect;
            canvas.drawBitmap(bitmap, (Rect) null, new RectF(rectF.left + fDpToPx, rectF.top + fDpToPx, rectF.right - fDpToPx, rectF.bottom - fDpToPx), (Paint) null);
        }
    }

    private void ensureFullscreenIcons() {
        if (this.expandBitmap == null || this.collapseBitmap == null) {
            int iMax = Math.max(1, (int) dpToPx(16.0f));
            this.expandBitmap = drawableToBitmap(R$drawable.icon_preview_expand, iMax);
            this.collapseBitmap = drawableToBitmap(R$drawable.icon_preview_collapse, iMax);
        }
    }

    private Bitmap drawableToBitmap(int i, int i2) {
        Drawable drawable = AppCompatResources.getDrawable(getContext(), i);
        if (drawable == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, i2, i2);
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    private boolean hitFullscreenButton(float f, float f2) {
        if (!this.isWorkMode && getWidth() > 0 && getHeight() > 0) {
            if (this.fullscreenButtonRect.isEmpty()) {
                updateFullscreenButtonRect();
            }
            float fDpToPx = dpToPx(6.0f);
            RectF rectF = this.fullscreenButtonRect;
            if (f >= rectF.left - fDpToPx && f <= rectF.right + fDpToPx && f2 >= rectF.top - fDpToPx && f2 <= rectF.bottom + fDpToPx) {
                return true;
            }
        }
        return false;
    }

    private void toggleFullscreen() {
        if (this.fullscreen) {
            exitFullscreen();
        } else {
            enterFullscreen();
        }
    }

    private void enterFullscreen() {
        Activity activityFindActivity;
        if (this.fullscreen || this.isWorkMode || this.reparenting || !(getParent() instanceof ViewGroup) || (activityFindActivity = findActivity()) == null) {
            return;
        }
        View viewFindViewById = activityFindActivity.findViewById(R.id.content);
        if (viewFindViewById instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) getParent();
            this.originalParent = viewGroup;
            this.originalIndex = viewGroup.indexOfChild(this);
            this.originalLp = copyLayoutParams(getLayoutParams());
            View view = new View(getContext());
            this.placeholder = view;
            view.setLayoutParams(copyLayoutParams(this.originalLp));
            this.placeholder.setMinimumWidth(getWidth());
            this.placeholder.setMinimumHeight(getHeight());
            this.reparenting = true;
            this.originalParent.removeView(this);
            int i = this.originalIndex;
            if (i >= 0) {
                this.originalParent.addView(this.placeholder, i, this.originalLp);
            } else {
                this.originalParent.addView(this.placeholder, this.originalLp);
            }
            FrameLayout frameLayout = new FrameLayout(getContext());
            this.fullscreenHost = frameLayout;
            frameLayout.setClickable(true);
            this.fullscreenHost.setFocusable(true);
            this.fullscreenHost.setFocusableInTouchMode(true);
            this.fullscreenHost.setBackgroundColor(ContextCompat.getColor(getContext(), R$color.bg_base));
            this.fullscreenHost.setOnKeyListener(new View.OnKeyListener() { // from class: com.qianhe.yct.view.PolyLinePreView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view2, int i2, KeyEvent keyEvent) {
                    return PolyLinePreView.$r8$lambda$FiAL2LOjGaawyuGK_c5EnQDIXUQ(this.f$0, view2, i2, keyEvent);
                }
            });
            this.fullscreenHost.setElevation(dpToPx(8.0f));
            setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.fullscreenHost.addView(this);
            ((ViewGroup) viewFindViewById).addView(this.fullscreenHost, new FrameLayout.LayoutParams(-1, -1));
            this.fullscreenHost.requestFocus();
            this.reparenting = false;
            this.fullscreen = true;
            registerBackCallback(activityFindActivity);
            invalidate();
        }
    }

    public static /* synthetic */ boolean $r8$lambda$FiAL2LOjGaawyuGK_c5EnQDIXUQ(PolyLinePreView polyLinePreView, View view, int i, KeyEvent keyEvent) {
        polyLinePreView.getClass();
        if (i != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        polyLinePreView.exitFullscreen();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exitFullscreen() {
        View view;
        if (!this.fullscreen || this.reparenting) {
            return;
        }
        this.reparenting = true;
        FrameLayout frameLayout = this.fullscreenHost;
        if (frameLayout != null) {
            frameLayout.removeView(this);
            if (this.fullscreenHost.getParent() instanceof ViewGroup) {
                ((ViewGroup) this.fullscreenHost.getParent()).removeView(this.fullscreenHost);
            }
        }
        if (this.originalParent != null && (view = this.placeholder) != null) {
            ViewParent parent = view.getParent();
            ViewGroup viewGroup = this.originalParent;
            if (parent == viewGroup) {
                int iIndexOfChild = viewGroup.indexOfChild(this.placeholder);
                this.originalParent.removeView(this.placeholder);
                if (iIndexOfChild < 0) {
                    this.originalParent.addView(this, this.originalLp);
                } else {
                    this.originalParent.addView(this, iIndexOfChild, this.originalLp);
                }
            }
        }
        unregisterBackCallback();
        this.fullscreenHost = null;
        this.placeholder = null;
        this.originalParent = null;
        this.originalLp = null;
        this.originalIndex = -1;
        this.fullscreen = false;
        this.reparenting = false;
        invalidate();
    }

    private ViewGroup.LayoutParams copyLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new LinearLayout.LayoutParams((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            return new FrameLayout.LayoutParams((FrameLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new ViewGroup.MarginLayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new ViewGroup.LayoutParams(layoutParams);
    }

    private Activity findActivity() {
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    private void registerBackCallback(Activity activity) {
        unregisterBackCallback();
        if (activity instanceof ComponentActivity) {
            this.backCallback = new OnBackPressedCallback(true) { // from class: com.qianhe.yct.view.PolyLinePreView.1
                @Override // androidx.activity.OnBackPressedCallback
                public void handleOnBackPressed() {
                    PolyLinePreView.this.exitFullscreen();
                }
            };
            ((ComponentActivity) activity).getOnBackPressedDispatcher().addCallback(this.backCallback);
        }
    }

    private void unregisterBackCallback() {
        OnBackPressedCallback onBackPressedCallback = this.backCallback;
        if (onBackPressedCallback != null) {
            onBackPressedCallback.remove();
            this.backCallback = null;
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        if (!this.reparenting && this.fullscreen) {
            exitFullscreen();
        }
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001a, code lost:
    
        if (r2 != 6) goto L42;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0116  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r23) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.view.PolyLinePreView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    private double spacing(MotionEvent motionEvent, int i, int i2) {
        float x = motionEvent.getX(i) - motionEvent.getX(i2);
        float y = motionEvent.getY(i) - motionEvent.getY(i2);
        return Math.sqrt((x * x) + (y * y));
    }

    private double spacing(float[] fArr, float[] fArr2) {
        float f = fArr[0] - fArr2[0];
        float f2 = fArr[1] - fArr2[1];
        return Math.sqrt((f * f) + (f2 * f2));
    }

    public void addPoint(double[] dArr) {
        if (dArr == null || dArr.length < 2) {
            return;
        }
        this.points.add((double[]) dArr.clone());
        this.coordsList.add((double[]) dArr.clone());
        updateContentBounds();
        invalidate();
    }

    public void removePoint(int i) {
        if (i < 0 || i >= this.points.size()) {
            return;
        }
        this.points.remove(i);
        this.coordsList.remove(i);
        updateContentBounds();
        invalidate();
    }

    public void clearPoints() {
        this.points.clear();
        this.coordsList.clear();
        updateContentBounds();
        invalidate();
    }

    public int getPointCount() {
        return this.points.size();
    }

    public List<double[]> getPoints() {
        return new ArrayList(this.points);
    }

    private void updateContentBounds() {
        if (this.points.isEmpty()) {
            this.contentWidth = 0.0f;
            this.contentHeight = 0.0f;
            this.minX = 0.0f;
            this.minY = 0.0f;
            this.originX = 0.0d;
            this.originY = 0.0d;
            return;
        }
        double dMax = -1.7976931348623157E308d;
        double dMin = Double.MAX_VALUE;
        double dMin2 = Double.MAX_VALUE;
        double dMax2 = -1.7976931348623157E308d;
        for (double[] dArr : this.points) {
            dMin = Math.min(dMin, dArr[0]);
            dMax = Math.max(dMax, dArr[0]);
            dMin2 = Math.min(dMin2, dArr[1]);
            dMax2 = Math.max(dMax2, dArr[1]);
        }
        this.contentWidth = (float) (dMax - dMin);
        this.contentHeight = (float) (dMax2 - dMin2);
        this.minX = (float) dMin;
        this.minY = (float) dMin2;
        this.originX = dMin;
        this.originY = dMin2;
        float fDpToPx = dpToPx(20.0f) * 2.0f;
        this.contentWidth += fDpToPx;
        this.contentHeight += fDpToPx;
        float width = getWidth();
        float height = getHeight();
        if (width > 0.0f && height > 0.0f && this.contentWidth > 0.0f && this.contentHeight > 0.0f) {
            double d = ((dMin + dMax) / 2.0d) - this.originX;
            double d2 = this.scaleRatio;
            this.offsetX = (width / 2.0f) - (d * d2);
            this.offsetY = (height / 2.0f) + ((((dMin2 + dMax2) / 2.0d) - this.originY) * d2);
        } else {
            double d3 = this.contentWidth;
            double d4 = this.scaleRatio;
            this.offsetX = (width - (d3 * d4)) / 2.0d;
            this.offsetY = (height - (this.contentHeight * d4)) / 2.0d;
        }
        invalidate();
    }

    public void setProjectPoint(List<double[]> list, double d) {
        this.width = d;
        if (list == null || list.size() < 2) {
            return;
        }
        this.points.clear();
        this.coordsList.clear();
        for (double[] dArr : list) {
            this.points.add((double[]) dArr.clone());
            this.coordsList.add((double[]) dArr.clone());
        }
        if (this.isWorkMode) {
            setWorkMode(true);
        }
        updateContentBounds();
        postDelayed(new Runnable() { // from class: com.qianhe.yct.view.PolyLinePreView.2
            @Override // java.lang.Runnable
            public void run() {
                PolyLinePreView.this.locateToStartPoint();
            }
        }, 500L);
    }

    public void refreshToothType(int i) {
        setToothBitmap(i);
    }

    private void setToothBitmap(int i) {
        int i2;
        if (i == 0) {
            i2 = R$drawable.icon_work_left_tooth;
        } else if (i == 2) {
            i2 = R$drawable.icon_work_right_tooth;
        } else {
            i2 = R$drawable.icon_work_center_tooth;
        }
        this.bucketBitmap = BitmapFactory.decodeResource(getResources(), i2);
    }

    public void setWorkMode(boolean z) {
        this.isWorkMode = z;
        double d = z ? 30.0d : 1.0d;
        this.INITSCALE = d;
        this.scaleRatio = d;
        this.lastNearestSegmentIndex = -1;
    }

    public void locateToStartPoint() {
        int i;
        int i2;
        this.scaleRatio = this.INITSCALE;
        if (this.isWorkMode && !this.points.isEmpty()) {
            if (this.currentPoint != null && (i2 = this.nearestSegmentIndex) != -1 && i2 < this.points.size() - 1) {
                double[] dArr = this.points.get(this.nearestSegmentIndex);
                float width = getWidth();
                float height = getHeight();
                if (width > 0.0f && height > 0.0f) {
                    double d = width / 2.0f;
                    double d2 = dArr[0] - this.originX;
                    double d3 = this.scaleRatio;
                    this.offsetX = d - (d2 * d3);
                    this.offsetY = (height / 2.0f) + ((dArr[1] - this.originY) * d3);
                }
            } else {
                double[] dArr2 = this.points.get(0);
                float width2 = getWidth();
                float height2 = getHeight();
                if (width2 > 0.0f && height2 > 0.0f) {
                    double d4 = width2 / 2.0f;
                    double d5 = dArr2[0] - this.originX;
                    double d6 = this.scaleRatio;
                    this.offsetX = d4 - (d5 * d6);
                    this.offsetY = (height2 / 2.0f) + ((dArr2[1] - this.originY) * d6);
                }
            }
        } else if (this.needTransform && !this.transformedPoints.isEmpty() && (i = this.nearestSegmentIndex) != -1) {
            if (i < this.transformedPoints.size() - 1) {
                double[] dArr3 = this.transformedPoints.get(this.nearestSegmentIndex);
                float width3 = getWidth();
                float height3 = getHeight();
                if (width3 > 0.0f && height3 > 0.0f) {
                    double d7 = width3 / 2.0f;
                    double d8 = dArr3[0] - this.originX;
                    double d9 = this.scaleRatio;
                    this.offsetX = d7 - (d8 * d9);
                    this.offsetY = (height3 / 2.0f) + ((dArr3[1] - this.originY) * d9);
                }
            }
        } else {
            updateContentBounds();
        }
        invalidate();
    }

    private void centerToStartPointWithoutZoomReset() {
        int i;
        int i2;
        if (this.isWorkMode && !this.points.isEmpty() && this.gaussL != null && this.gaussR != null) {
            if (this.currentPoint != null && (i2 = this.nearestSegmentIndex) != -1 && i2 < this.points.size() - 1) {
                float width = getWidth();
                float height = getHeight();
                if (width > 0.0f && height > 0.0f) {
                    double[] transformedGaussLWithReverse = getTransformedGaussLWithReverse();
                    double[] transformedGaussRWithReverse = getTransformedGaussRWithReverse();
                    double d = (transformedGaussLWithReverse[0] + transformedGaussRWithReverse[0]) / 2.0d;
                    double d2 = (transformedGaussLWithReverse[1] + transformedGaussRWithReverse[1]) / 2.0d;
                    double d3 = d - this.originX;
                    double d4 = this.scaleRatio;
                    this.offsetX = (width / 2.0f) - (d3 * d4);
                    this.offsetY = (height / 2.0f) + ((d2 - this.originY) * d4);
                }
            }
        } else if (this.needTransform && !this.transformedPoints.isEmpty() && (i = this.nearestSegmentIndex) != -1 && this.gaussL != null && this.gaussR != null && i < this.transformedPoints.size() - 1) {
            float width2 = getWidth();
            float height2 = getHeight();
            if (width2 > 0.0f && height2 > 0.0f) {
                double[] transformedGaussLWithReverse2 = getTransformedGaussLWithReverse();
                double[] transformedGaussRWithReverse2 = getTransformedGaussRWithReverse();
                double d5 = (transformedGaussLWithReverse2[0] + transformedGaussRWithReverse2[0]) / 2.0d;
                double d6 = (transformedGaussLWithReverse2[1] + transformedGaussRWithReverse2[1]) / 2.0d;
                double d7 = d5 - this.originX;
                double d8 = this.scaleRatio;
                this.offsetX = (width2 / 2.0f) - (d7 * d8);
                this.offsetY = (height2 / 2.0f) + ((d6 - this.originY) * d8);
            }
        }
        invalidate();
    }

    public void locateToCurrentPoint() {
        double[] dArr;
        double d;
        double d2;
        double[] dArr2;
        double[] dArr3 = this.gaussL;
        if (dArr3 == null || (dArr = this.gaussR) == null || dArr3.length < 2 || dArr.length < 2) {
            return;
        }
        this.scaleRatio = this.INITSCALE;
        if (this.needTransform && (dArr2 = this.transformedCurrentPoint) != null) {
            d2 = dArr2[0];
            d = dArr2[1];
        } else {
            double d3 = (dArr3[0] + dArr[0]) / 2.0d;
            d = (dArr3[1] + dArr[1]) / 2.0d;
            d2 = d3;
        }
        float width = getWidth();
        float height = getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        double d4 = d2 - this.originX;
        double d5 = this.scaleRatio;
        this.offsetX = (width / 2.0f) - (d4 * d5);
        this.offsetY = (height / 2.0f) + ((d - this.originY) * d5);
        invalidate();
    }

    public void clearCurrentPoint() {
        this.currentPoint = null;
        this.nearestSegmentIndex = -1;
        this.lastNearestSegmentIndex = -1;
        this.transformedPoints.clear();
        this.transformedCurrentPoint = null;
        this.needTransform = false;
        this.reverseDirection = false;
        invalidate();
    }

    public void setTransformEnabled(boolean z) {
        this.needTransform = z;
        if (!z) {
            this.transformedPoints.clear();
            this.transformedCurrentPoint = null;
        }
        invalidate();
    }

    private void setDirectionReverse(boolean z) {
        this.reverseDirection = z;
        if (this.needTransform) {
            calculateTransform();
            invalidate();
        }
    }

    public boolean isDirectionReverse() {
        return this.reverseDirection;
    }

    private void drawBucketBitmap(Canvas canvas) {
        if (this.bucketBitmap == null || this.gaussL == null || this.gaussR == null) {
            return;
        }
        double[] transformedGaussLWithReverse = getTransformedGaussLWithReverse();
        double[] transformedGaussRWithReverse = getTransformedGaussRWithReverse();
        if (transformedGaussLWithReverse == null || transformedGaussRWithReverse == null) {
            return;
        }
        double dSqrt = Math.sqrt(Math.pow(this.gaussR[0] - this.gaussL[0], 2.0d) + Math.pow(this.gaussR[1] - this.gaussL[1], 2.0d));
        float f = (float) dSqrt;
        if (f < 0.01f) {
            f = 0.5f;
        }
        double d = f * this.scaleRatio;
        double height = (this.bucketBitmap.getHeight() / this.bucketBitmap.getWidth()) * d;
        if (dSqrt < 0.009999999776482582d) {
            float screenX = getScreenX(transformedGaussLWithReverse[0]);
            float screenY = getScreenY(transformedGaussLWithReverse[1]);
            if (this.reverseDirection) {
                canvas.save();
                canvas.translate(screenX, screenY);
                canvas.rotate(180.0f);
                canvas.drawBitmap(this.bucketBitmap, (Rect) null, new Rect((int) ((-d) / 2.0d), (int) (-height), (int) (d / 2.0d), 0), (Paint) null);
                canvas.restore();
                return;
            }
            double d2 = screenX - (d / 2.0d);
            double d3 = screenY - height;
            canvas.drawBitmap(this.bucketBitmap, (Rect) null, new Rect((int) d2, (int) d3, (int) (d2 + d), (int) (d3 + height)), (Paint) null);
            return;
        }
        int iRound = Math.round(getScreenX(transformedGaussLWithReverse[0]));
        int iRound2 = Math.round(getScreenY(transformedGaussLWithReverse[1]));
        float degrees = (float) Math.toDegrees(Math.atan2(Math.round(getScreenY(transformedGaussRWithReverse[1])) - iRound2, Math.round(getScreenX(transformedGaussRWithReverse[0])) - iRound));
        canvas.save();
        canvas.translate(iRound, iRound2);
        canvas.rotate(degrees);
        canvas.drawBitmap(this.bucketBitmap, (Rect) null, new Rect(0, 0, (int) Math.round(d), (int) Math.round(height)), (Paint) null);
        canvas.restore();
    }

    private double[] getTransformedGaussRWithReverse() {
        if (!this.needTransform || this.transformedPoints.isEmpty()) {
            double[] dArr = this.gaussR;
            return new double[]{dArr[0], dArr[1]};
        }
        double[] dArr2 = this.points.get(this.nearestSegmentIndex);
        double[] dArr3 = this.points.get(this.nearestSegmentIndex + 1);
        double d = dArr2[0];
        double d2 = dArr2[1];
        double[] dArr4 = this.gaussR;
        double d3 = dArr4[0] - d;
        double d4 = dArr4[1] - d2;
        double d5 = -alignSegmentToNorthAngle(dArr3[0] - d, dArr3[1] - d2);
        double dCos = Math.cos(d5);
        double dSin = Math.sin(d5);
        return new double[]{((d3 * dCos) - (d4 * dSin)) + d, (d3 * dSin) + (d4 * dCos) + d2};
    }

    private double[] getTransformedGaussLWithReverse() {
        if (!this.needTransform || this.transformedPoints.isEmpty()) {
            double[] dArr = this.gaussL;
            return new double[]{dArr[0], dArr[1]};
        }
        double[] dArr2 = this.points.get(this.nearestSegmentIndex);
        double[] dArr3 = this.points.get(this.nearestSegmentIndex + 1);
        double d = dArr2[0];
        double d2 = dArr2[1];
        double[] dArr4 = this.gaussL;
        double d3 = dArr4[0] - d;
        double d4 = dArr4[1] - d2;
        double d5 = -alignSegmentToNorthAngle(dArr3[0] - d, dArr3[1] - d2);
        double dCos = Math.cos(d5);
        double dSin = Math.sin(d5);
        return new double[]{((d3 * dCos) - (d4 * dSin)) + d, (d3 * dSin) + (d4 * dCos) + d2};
    }

    public void toggleDirection() {
        setDirectionReverse(!this.reverseDirection);
        locateToStartPoint();
        invalidate();
    }

    public boolean isDrawLines() {
        return this.drawLines;
    }

    public void setDrawLines(boolean z) {
        this.drawLines = z;
        invalidate();
    }
}
