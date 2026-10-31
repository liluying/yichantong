package com.qianhe.yct.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.core.content.ContextCompat;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$mipmap;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import com.tencent.smtt.sdk.WebView;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class WorkView extends View {
    private static final int DRAG = 1;
    private static final float INNER_RADIUS = 20.0f;
    private static final float MAX_OUTER_RADIUS = 20.0f;
    private static final float MIN_OUTER_RADIUS = 20.0f;
    private static final int NONE = 0;
    private static final int ZOOM = 2;
    private final float MAX_SCALE;
    private final float MIN_SCALE;
    private Bitmap bucketBitmap;
    private double bucketWidth;
    private Bitmap carBitmap;
    private float centerX;
    private float centerY;
    private PointF currentPoint;
    private PointF currentPoint0;
    private PointF currentPointR;
    private int direction;
    private Paint dottedLinePaint;
    private final float[] lastPoint;
    private Paint linePaint;
    private int mAlpha;
    private ValueAnimator mBreathAnimator;
    private final Context mContext;
    private Paint mInnerPaint;
    private Paint mOuterPaint;
    private float mOuterRadius;
    private final float mScale;
    private final Matrix matrix;
    private final float[] matrixValues;
    private int mode;
    private float offsetX;
    private float offsetY;
    private Paint parallelLinePaint;
    private boolean pendingLocateToStart;
    private double pileSpacing;
    private PointF point1;
    private PointF point2;
    private PointF pointA0;
    private PointF pointB0;
    private double projectWidth;
    private Paint redDotPaint;
    private final Matrix savedMatrix;
    private float startDistance;
    private Paint textPaint;
    private boolean useBucketIcon;

    public WorkView(Context context) {
        this(context, null);
    }

    public WorkView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WorkView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.matrix = new Matrix();
        this.matrixValues = new float[9];
        this.savedMatrix = new Matrix();
        this.lastPoint = new float[2];
        this.mode = 0;
        this.mScale = 20.0f;
        this.MIN_SCALE = 0.01f;
        this.MAX_SCALE = 200.0f;
        this.useBucketIcon = false;
        this.direction = 0;
        this.mContext = context;
        if (Build.VERSION.SDK_INT <= 23) {
            setLayerType(1, null);
        }
        init();
    }

    private void init() {
        this.carBitmap = BitmapFactory.decodeResource(getResources(), R$mipmap.icon_app);
        this.bucketBitmap = BitmapFactory.decodeResource(getResources(), R$drawable.icon_work_center_tooth);
        Paint paint = new Paint(1);
        this.linePaint = paint;
        paint.setColor(ContextCompat.getColor(this.mContext, R$color.map_line));
        this.linePaint.setStrokeWidth(dpToPx(2.0f));
        Paint paint2 = this.linePaint;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        Paint paint3 = this.linePaint;
        Paint.Cap cap = Paint.Cap.BUTT;
        paint3.setStrokeCap(cap);
        Paint paint4 = new Paint(1);
        this.dottedLinePaint = paint4;
        paint4.setColor(ContextCompat.getColor(this.mContext, R$color.map_line));
        this.dottedLinePaint.setStrokeWidth(dpToPx(2.0f));
        this.dottedLinePaint.setStyle(style);
        this.dottedLinePaint.setStrokeCap(cap);
        this.dottedLinePaint.setPathEffect(new DashPathEffect(new float[]{dpToPx(20.0f), dpToPx(12.0f)}, 0.0f));
        Paint paint5 = new Paint(1);
        this.parallelLinePaint = paint5;
        paint5.setColor(ContextCompat.getColor(this.mContext, R$color.map_line));
        this.parallelLinePaint.setStrokeWidth(dpToPx(1.0f));
        this.parallelLinePaint.setStyle(style);
        this.parallelLinePaint.setStrokeCap(cap);
        this.parallelLinePaint.setAlpha(128);
        initCircleParam();
        Paint paint6 = new Paint(1);
        this.textPaint = paint6;
        paint6.setColor(WebView.NIGHT_MODE_COLOR);
        Paint paint7 = new Paint(1);
        this.redDotPaint = paint7;
        paint7.setColor(-65536);
        this.redDotPaint.setStyle(Paint.Style.FILL);
        initTouchListener();
    }

    private void initCircleParam() {
        Paint paint = new Paint(1);
        this.mOuterPaint = paint;
        paint.setColor(ContextCompat.getColor(this.mContext, R$color.red_alpha));
        Paint paint2 = this.mOuterPaint;
        Paint.Style style = Paint.Style.FILL;
        paint2.setStyle(style);
        Paint paint3 = new Paint(1);
        this.mInnerPaint = paint3;
        paint3.setColor(ContextCompat.getColor(this.mContext, R$color.red));
        this.mInnerPaint.setStyle(style);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mBreathAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(2000L);
        this.mBreathAnimator.setRepeatMode(1);
        this.mBreathAnimator.setRepeatCount(-1);
        this.mBreathAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        this.mBreathAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.qianhe.yct.view.WorkView$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                WorkView.m2989$r8$lambda$qOsKpZUzuVEKpE76aljD22DlxA(this.f$0, valueAnimator);
            }
        });
    }

    /* renamed from: $r8$lambda$qOsK-pZUzuVEKpE76aljD22DlxA, reason: not valid java name */
    public static /* synthetic */ void m2989$r8$lambda$qOsKpZUzuVEKpE76aljD22DlxA(WorkView workView, ValueAnimator valueAnimator) {
        workView.getClass();
        float animatedFraction = valueAnimator.getAnimatedFraction();
        workView.mOuterRadius = (0.0f * animatedFraction) + 20.0f;
        workView.mAlpha = (int) ((1.0f - animatedFraction) * 160.0f);
        workView.invalidate();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ValueAnimator valueAnimator = this.mBreathAnimator;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.mBreathAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        WorkView workView;
        Canvas canvas2;
        Canvas canvas3;
        WorkView workView2;
        PointF pointF;
        Bitmap bitmap;
        super.onDraw(canvas);
        this.matrix.getValues(this.matrixValues);
        float fCalculateRotationAngle = calculateRotationAngle();
        PointF pointF2 = this.currentPoint;
        if (pointF2 == null || this.mOuterPaint == null) {
            workView = this;
            canvas2 = canvas;
        } else {
            float[] rotatePointWithMatrix = getRotatePointWithMatrix(pointF2.x, pointF2.y, fCalculateRotationAngle);
            PointF pointF3 = this.currentPointR;
            float[] rotatePointWithMatrix2 = getRotatePointWithMatrix(pointF3.x, pointF3.y, fCalculateRotationAngle);
            if (!this.useBucketIcon || (bitmap = this.bucketBitmap) == null || bitmap.isRecycled()) {
                workView = this;
                canvas2 = canvas;
                workView.mOuterPaint.setAlpha(workView.mAlpha);
                canvas2.drawCircle(rotatePointWithMatrix[0], rotatePointWithMatrix[1], workView.mOuterRadius, workView.mOuterPaint);
                canvas2.drawCircle(rotatePointWithMatrix[0], rotatePointWithMatrix[1], 20.0f, workView.mInnerPaint);
            } else if (this.bucketWidth <= 0.0d) {
                drawBitmapByTwoPoints(canvas, this.bucketBitmap, rotatePointWithMatrix2[0] - (r2.getWidth() / 2.0f), rotatePointWithMatrix2[1], rotatePointWithMatrix2[0] + (this.bucketBitmap.getWidth() / 2.0f), rotatePointWithMatrix2[1], null);
                workView = this;
                canvas2 = canvas;
            } else {
                drawBitmapByTwoPoints(canvas, this.bucketBitmap, rotatePointWithMatrix[0], rotatePointWithMatrix[1], rotatePointWithMatrix2[0], rotatePointWithMatrix2[1], null);
                workView = this;
                canvas2 = canvas;
            }
        }
        PointF pointF4 = workView.point1;
        if (pointF4 == null || workView.point2 == null) {
            canvas3 = canvas2;
            workView2 = workView;
        } else {
            float[] rotatePointWithMatrix3 = workView.getRotatePointWithMatrix(pointF4.x, pointF4.y, fCalculateRotationAngle);
            PointF pointF5 = workView.point2;
            float[] rotatePointWithMatrix4 = workView.getRotatePointWithMatrix(pointF5.x, pointF5.y, fCalculateRotationAngle);
            canvas2.drawLine(rotatePointWithMatrix3[0], rotatePointWithMatrix3[1], rotatePointWithMatrix4[0], rotatePointWithMatrix4[1], workView.linePaint);
            float f = rotatePointWithMatrix3[0];
            workView2 = workView;
            canvas3 = canvas;
            workView2.drawExtendLines(canvas3, f, rotatePointWithMatrix3[1], f, rotatePointWithMatrix4[1], workView2.dottedLinePaint);
            workView2.drawHorizontalText(canvas3, workView2.mContext.getString(R$string.starting_point), rotatePointWithMatrix3[0], rotatePointWithMatrix3[1]);
            workView2.drawHorizontalText(canvas3, workView2.mContext.getString(R$string.ending_point), rotatePointWithMatrix4[0], rotatePointWithMatrix4[1]);
            double d = workView2.projectWidth;
            if (d > 0.0d) {
                workView2.drawParallelLines(canvas3, fCalculateRotationAngle, d);
            }
        }
        PointF pointF6 = workView2.pointA0;
        if (pointF6 != null && (pointF = workView2.pointB0) != null && workView2.pileSpacing > 0.0d) {
            double d2 = pointF.x - pointF6.x;
            double d3 = pointF.y - pointF6.y;
            double dSqrt = Math.sqrt((d2 * d2) + (d3 * d3));
            if (dSqrt > 0.0d) {
                double d4 = d3 / dSqrt;
                Math.sqrt((workView2.getWidth() * workView2.getWidth()) + (workView2.getHeight() * workView2.getHeight()));
                PointF pointF7 = workView2.pointA0;
                workView2.drawEquidistantDots(canvas3, fCalculateRotationAngle, pointF7.x, pointF7.y, d2 / dSqrt, d4, 0.0d, dSqrt, workView2.pileSpacing);
            }
        }
        drawScaleBar(canvas);
    }

    private void drawBitmapByTwoPoints(Canvas canvas, Bitmap bitmap, float f, float f2, float f3, float f4, Paint paint) {
        float f5 = f4 - f2;
        float fSqrt = (float) Math.sqrt((r8 * r8) + (f5 * f5));
        float degrees = (float) Math.toDegrees(Math.atan2(f5, f3 - f));
        float width = fSqrt / bitmap.getWidth();
        Matrix matrix = new Matrix();
        matrix.postTranslate(0.0f, 0.0f);
        matrix.postScale(width, width);
        matrix.postRotate(degrees);
        matrix.postTranslate(f, f2);
        canvas.drawBitmap(bitmap, matrix, paint);
    }

    private void drawParallelLines(Canvas canvas, float f, double d) {
        PointF pointF;
        PointF pointF2 = this.point1;
        if (pointF2 == null || (pointF = this.point2) == null) {
            return;
        }
        float f2 = pointF.x - pointF2.x;
        float f3 = pointF.y - pointF2.y;
        double dSqrt = Math.sqrt((f2 * f2) + (f3 * f3));
        if (dSqrt == 0.0d) {
            return;
        }
        float f4 = -f3;
        float f5 = (float) dSqrt;
        float f6 = f4 / f5;
        float f7 = f2 / f5;
        float f8 = (float) ((20.0d * d) / 2.0d);
        PointF pointF3 = this.point1;
        float f9 = f6 * f8;
        float f10 = f7 * f8;
        PointF pointF4 = new PointF(pointF3.x + f9, pointF3.y + f10);
        PointF pointF5 = this.point2;
        PointF pointF6 = new PointF(pointF5.x + f9, pointF5.y + f10);
        PointF pointF7 = this.point1;
        PointF pointF8 = new PointF(pointF7.x - f9, pointF7.y - f10);
        PointF pointF9 = this.point2;
        PointF pointF10 = new PointF(pointF9.x - f9, pointF9.y - f10);
        float[] rotatePointWithMatrix = getRotatePointWithMatrix(pointF4.x, pointF4.y, f);
        float[] rotatePointWithMatrix2 = getRotatePointWithMatrix(pointF6.x, pointF6.y, f);
        float[] rotatePointWithMatrix3 = getRotatePointWithMatrix(pointF8.x, pointF8.y, f);
        float[] rotatePointWithMatrix4 = getRotatePointWithMatrix(pointF10.x, pointF10.y, f);
        canvas.drawLine(rotatePointWithMatrix[0], rotatePointWithMatrix[1], rotatePointWithMatrix2[0], rotatePointWithMatrix2[1], this.parallelLinePaint);
        canvas.drawLine(rotatePointWithMatrix3[0], rotatePointWithMatrix3[1], rotatePointWithMatrix4[0], rotatePointWithMatrix4[1], this.parallelLinePaint);
        drawExtendLines(canvas, rotatePointWithMatrix[0], rotatePointWithMatrix[1], rotatePointWithMatrix2[0], rotatePointWithMatrix2[1], this.parallelLinePaint);
        drawExtendLines(canvas, rotatePointWithMatrix3[0], rotatePointWithMatrix3[1], rotatePointWithMatrix4[0], rotatePointWithMatrix4[1], this.parallelLinePaint);
    }

    private float[] getRotatePointWithMatrix(float f, float f2, float f3) {
        float[] fArr = this.matrixValues;
        float f4 = fArr[0];
        float f5 = fArr[4];
        float f6 = fArr[2];
        float f7 = fArr[5];
        Matrix matrix = new Matrix();
        matrix.setRotate(f3, (this.centerX * f4) + f6, (this.centerY * f5) + f7);
        float[] fArr2 = {(f * f4) + f6, (f2 * f5) + f7};
        matrix.mapPoints(fArr2);
        return fArr2;
    }

    private void drawEquidistantDots(Canvas canvas, float f, double d, double d2, double d3, double d4, double d5, double d6, double d7) {
        double d8 = d5;
        while (d8 <= d6) {
            PointF pointF = new PointF(((float) ((d3 * d8) + d)) * 20.0f, ((float) (-((d4 * d8) + d2))) * 20.0f);
            pointF.set(pointF.x + this.offsetX, pointF.y + this.offsetY);
            float[] rotatePointWithMatrix = getRotatePointWithMatrix(pointF.x, pointF.y, f);
            canvas.drawCircle(rotatePointWithMatrix[0], rotatePointWithMatrix[1], this.linePaint.getStrokeWidth() * 2.0f, this.redDotPaint);
            d8 += d7;
        }
    }

    private void drawExtendLines(Canvas canvas, float f, float f2, float f3, float f4, Paint paint) {
        Paint paint2;
        float f5;
        Canvas canvas2;
        float f6;
        float f7;
        float f8 = f3 - f;
        float f9 = f4 - f2;
        float fSqrt = (float) Math.sqrt((f8 * f8) + (f9 * f9));
        if (fSqrt == 0.0f) {
            return;
        }
        float f10 = f8 / fSqrt;
        float f11 = f9 / fSqrt;
        int width = getWidth();
        int height = getHeight();
        float fSqrt2 = ((float) Math.sqrt((width * width) + (height * height))) * 200.0f;
        float f12 = f10 * fSqrt2;
        float f13 = f - f12;
        float f14 = f11 * fSqrt2;
        float f15 = f2 - f14;
        float f16 = f3 + f12;
        float f17 = f4 + f14;
        if (!isPad()) {
            paint2 = paint;
            f5 = f17;
            canvas2 = canvas;
            f6 = f;
            f7 = f2;
        } else if (paint != this.parallelLinePaint) {
            drawDashedSegment(canvas, f13, f15, f, f2, paint);
            drawDashedSegment(canvas, f16, f17, f3, f4, paint);
            return;
        } else {
            paint2 = paint;
            canvas2 = canvas;
            f6 = f;
            f7 = f2;
            f5 = f17;
        }
        canvas2.drawLine(f13, f15, f6, f7, paint2);
        canvas2.drawLine(f16, f5, f3, f4, paint2);
    }

    private void drawDashedSegment(Canvas canvas, float f, float f2, float f3, float f4, Paint paint) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        float fHypot = (float) Math.hypot(f5, f6);
        float fDpToPx = dpToPx(20.0f) + dpToPx(8.0f);
        int i = (int) (fHypot / fDpToPx);
        Path path = new Path();
        for (int i2 = 0; i2 < i; i2++) {
            float f7 = i2 * fDpToPx;
            float fDpToPx2 = dpToPx(20.0f) + f7;
            if (fDpToPx2 > fHypot) {
                fDpToPx2 = fHypot;
            }
            path.moveTo(((f5 * f7) / fHypot) + f, ((f7 * f6) / fHypot) + f2);
            path.lineTo(((f5 * fDpToPx2) / fHypot) + f, ((fDpToPx2 * f6) / fHypot) + f2);
        }
        canvas.drawPath(path, paint);
    }

    private boolean isPad() {
        return YCTApplication.getInstance().isPad();
    }

    private void drawScaleBar(Canvas canvas) {
        float f = this.matrixValues[0];
        canvas.save();
        float fDpToPx = dpToPx(30.0f);
        float fDpToPx2 = dpToPx(3.0f);
        float fDpToPx3 = dpToPx(10.0f);
        float fDpToPx4 = dpToPx(10.0f);
        Paint paint = new Paint();
        paint.setColor(WebView.NIGHT_MODE_COLOR);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawRect(fDpToPx3, (getHeight() - fDpToPx4) - fDpToPx2, fDpToPx3 + fDpToPx, getHeight() - fDpToPx4, paint);
        paint.setColor(WebView.NIGHT_MODE_COLOR);
        paint.setTextSize(dpToPx(10.0f));
        String str = String.format(Locale.ROOT, "%.2fm", Float.valueOf(fDpToPx / (f * 20.0f)));
        canvas.drawText(str, fDpToPx3 + ((fDpToPx - paint.measureText(str)) / 2.0f), ((getHeight() - fDpToPx4) - fDpToPx2) - dpToPx(5.0f), paint);
        canvas.restore();
    }

    private float dpToPx(float f) {
        return TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.pendingLocateToStart) {
            tryLocateToStartPoint();
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.pendingLocateToStart) {
            tryLocateToStartPoint();
        }
    }

    public void requestLocateToStartPoint() {
        this.pendingLocateToStart = true;
        post(new Runnable() { // from class: com.qianhe.yct.view.WorkView$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.tryLocateToStartPoint();
            }
        });
    }

    public void getParentContainerDimensions() {
        requestLocateToStartPoint();
    }

    private void updateParentCenter() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            int width = viewGroup.getWidth();
            int height = viewGroup.getHeight();
            if (width <= 0 || height <= 0) {
                return;
            }
            this.centerX = width / 2.0f;
            this.centerY = height / 2.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryLocateToStartPoint() {
        updateParentCenter();
        if (this.centerX == 0.0f || this.centerY == 0.0f || this.pointA0 == null || this.pointB0 == null) {
            this.pendingLocateToStart = true;
        } else {
            this.pendingLocateToStart = false;
            locateToStartPoint();
        }
    }

    public void resetLocation() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            this.centerX = viewGroup.getWidth() / 2.0f;
            this.centerY = viewGroup.getHeight() / 2.0f;
        }
        if (this.centerX == 0.0f || this.centerY == 0.0f || this.point1 == null || this.point2 == null || this.pointA0 == null || this.pointB0 == null) {
            return;
        }
        PointF pointF = this.pointA0;
        this.point1 = new PointF(pointF.x * 20.0f, (-pointF.y) * 20.0f);
        PointF pointF2 = this.pointB0;
        this.point2 = new PointF(pointF2.x * 20.0f, (-pointF2.y) * 20.0f);
        PointF pointF3 = this.currentPoint0;
        if (pointF3 != null) {
            float f = this.centerX - pointF3.x;
            this.offsetX = f;
            float f2 = this.centerY - pointF3.y;
            this.offsetY = f2;
            PointF pointF4 = this.point1;
            pointF4.set(pointF4.x + f, pointF4.y + f2);
            PointF pointF5 = this.point2;
            pointF5.set(pointF5.x + this.offsetX, pointF5.y + this.offsetY);
            PointF pointF6 = this.currentPoint;
            PointF pointF7 = this.currentPoint0;
            pointF6.set(pointF7.x + this.offsetX, pointF7.y + this.offsetY);
            this.matrix.setScale(1.0f, 1.0f, this.centerX, this.centerY);
            invalidate();
        }
    }

    public void locateToStartPoint() {
        PointF pointF;
        updateParentCenter();
        if (this.centerX == 0.0f || this.centerY == 0.0f || this.pointA0 == null || this.pointB0 == null) {
            this.pendingLocateToStart = true;
            return;
        }
        PointF pointF2 = this.pointA0;
        this.point1 = new PointF(pointF2.x * 20.0f, (-pointF2.y) * 20.0f);
        PointF pointF3 = this.pointB0;
        this.point2 = new PointF(pointF3.x * 20.0f, (-pointF3.y) * 20.0f);
        float f = this.centerX;
        PointF pointF4 = this.point1;
        float f2 = pointF4.x;
        float f3 = f - f2;
        this.offsetX = f3;
        float f4 = this.centerY;
        float f5 = pointF4.y;
        float f6 = f4 - f5;
        this.offsetY = f6;
        pointF4.set(f2 + f3, f5 + f6);
        PointF pointF5 = this.point2;
        pointF5.set(pointF5.x + this.offsetX, pointF5.y + this.offsetY);
        PointF pointF6 = this.currentPoint0;
        if (pointF6 != null && (pointF = this.currentPoint) != null) {
            pointF.set(pointF6.x + this.offsetX, pointF6.y + this.offsetY);
        }
        Matrix matrix = this.matrix;
        PointF pointF7 = this.point1;
        matrix.setScale(1.0f, 1.0f, pointF7.x, pointF7.y);
        invalidate();
    }

    public void setProjectData(PointF pointF, PointF pointF2, double d) {
        this.pointA0 = pointF;
        this.pointB0 = pointF2;
        this.projectWidth = d;
        measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        if (pointF != null && pointF2 != null) {
            this.point1 = new PointF(pointF.x * 20.0f, (-pointF.y) * 20.0f);
            this.point2 = new PointF(pointF2.x * 20.0f, (-pointF2.y) * 20.0f);
            this.textPaint.setTextSize(dpToPx(14.0f));
        }
        getParentContainerDimensions();
    }

    public void setPileSpacing(double d) {
        this.pileSpacing = d;
        invalidate();
    }

    public void setLocationPoint(PointF pointF, PointF pointF2, double d, boolean z) {
        this.bucketWidth = d;
        if (z) {
            this.mOuterPaint.setColor(ContextCompat.getColor(this.mContext, R$color.theme_alpha));
            this.mInnerPaint.setColor(ContextCompat.getColor(this.mContext, R$color.theme));
        } else {
            this.mOuterPaint.setColor(ContextCompat.getColor(this.mContext, R$color.red_alpha));
            this.mInnerPaint.setColor(ContextCompat.getColor(this.mContext, R$color.red));
        }
        if (pointF == null || pointF2 == null) {
            return;
        }
        this.currentPoint0 = new PointF(pointF.x * 20.0f, (-pointF.y) * 20.0f);
        PointF pointF3 = this.currentPoint0;
        PointF pointF4 = new PointF(pointF3.x, pointF3.y);
        this.currentPoint = pointF4;
        float f = this.offsetX;
        if (f != 0.0f) {
            float f2 = this.offsetY;
            if (f2 != 0.0f) {
                pointF4.set(pointF4.x + f, pointF4.y + f2);
            }
        }
        PointF pointF5 = new PointF(pointF2.x * 20.0f, (-pointF2.y) * 20.0f);
        PointF pointF6 = new PointF(pointF5.x, pointF5.y);
        this.currentPointR = pointF6;
        float f3 = this.offsetX;
        if (f3 != 0.0f) {
            float f4 = this.offsetY;
            if (f4 != 0.0f) {
                pointF6.set(pointF6.x + f3, pointF6.y + f4);
            }
        }
        invalidate();
    }

    private void drawHorizontalText(Canvas canvas, String str, float f, float f2) {
        this.textPaint.getTextBounds(str, 0, str.length(), new Rect());
        Paint.FontMetrics fontMetrics = this.textPaint.getFontMetrics();
        float f3 = fontMetrics.descent - fontMetrics.ascent;
        if (this.direction != 0 ? str.equals(this.mContext.getString(R$string.starting_point)) : !str.equals(this.mContext.getString(R$string.starting_point))) {
            f3 = 0.0f;
        }
        canvas.drawText(str, f - (this.textPaint.measureText(str) / 2.0f), f2 + (f3 - fontMetrics.descent), this.textPaint);
    }

    private float calculateRotationAngle() {
        PointF pointF;
        if (this.point1 == null || (pointF = this.point2) == null) {
            return 0.0f;
        }
        return (90.0f - ((float) Math.toDegrees((float) Math.atan2(r0.y - pointF.y, r0.x - pointF.x)))) + (this.direction == 0 ? 0 : 180);
    }

    private void initTouchListener() {
        new ScaleGestureDetector(getContext(), new ScaleListener());
        setOnTouchListener(new View.OnTouchListener() { // from class: com.qianhe.yct.view.WorkView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return WorkView.$r8$lambda$cnoeIGxzDcg8ajAP7l9n77hYhR8(this.f$0, view, motionEvent);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ boolean $r8$lambda$cnoeIGxzDcg8ajAP7l9n77hYhR8(com.qianhe.yct.view.WorkView r5, android.view.View r6, android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.view.WorkView.$r8$lambda$cnoeIGxzDcg8ajAP7l9n77hYhR8(com.qianhe.yct.view.WorkView, android.view.View, android.view.MotionEvent):boolean");
    }

    private float getMatrixScale(Matrix matrix) {
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        return fArr[0];
    }

    private float spacing(MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((x * x) + (y * y));
    }

    private void midPoint(float[] fArr, MotionEvent motionEvent) {
        float x = motionEvent.getX(0) + motionEvent.getX(1);
        float y = motionEvent.getY(0) + motionEvent.getY(1);
        fArr[0] = x / 2.0f;
        fArr[1] = y / 2.0f;
    }

    public void resfreshDirection(int i) {
        this.direction = i;
        locateToStartPoint();
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

    private class ScaleListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private ScaleListener() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            WorkView.this.matrix.postScale(scaleFactor, scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
            return true;
        }
    }

    public void setUseBitmap(boolean z) {
        this.useBucketIcon = z;
        invalidate();
    }

    public boolean isUseBucketIcon() {
        return this.useBucketIcon;
    }
}
