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
import androidx.core.content.ContextCompat;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$mipmap;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LinePreView extends View {
    private static final int DRAG = 1;
    private static final int NONE = 0;
    private static final int ZOOM = 2;
    private final float MAX_SCALE;
    private final float MIN_SCALE;
    private double baseX;
    private double baseY;
    private Bitmap carBitmap;
    private float centerX;
    private float centerY;
    private Paint circlePaint;
    private PointF currentPoint;
    private PointF currentPoint0;
    private int direction;
    private Paint dottedLinePaint;
    private final float[] lastPoint;
    private Paint linePaint;
    private int mAlpha;
    private ValueAnimator mBreathAnimator;
    private Paint mOuterPaint;
    private float mOuterRadius;
    private final float mScale;
    private final Matrix matrix;
    private final float[] matrixValues;
    private int mode;
    private float offsetX;
    private float offsetY;
    private PointF point1;
    private PointF point2;
    private PointF pointA0;
    private PointF pointB0;
    private final Matrix savedMatrix;
    private float startDistance;
    private Paint textPaint;
    private boolean useExcavatorIcon;

    public LinePreView(Context context) {
        this(context, null);
    }

    public LinePreView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinePreView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.matrix = new Matrix();
        this.matrixValues = new float[9];
        this.savedMatrix = new Matrix();
        this.lastPoint = new float[2];
        this.mode = 0;
        this.mScale = 50.0f;
        this.MIN_SCALE = 0.01f;
        this.MAX_SCALE = 200.0f;
        this.useExcavatorIcon = false;
        this.direction = 0;
        if (Build.VERSION.SDK_INT <= 23) {
            setLayerType(1, null);
        }
        init();
    }

    private void init() {
        this.carBitmap = BitmapFactory.decodeResource(getResources(), R$mipmap.icon_app);
        Paint paint = new Paint(1);
        this.linePaint = paint;
        paint.setColor(ContextCompat.getColor(getContext(), R$color.red));
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
        this.dottedLinePaint.setStrokeWidth(dpToPx(4.0f));
        this.dottedLinePaint.setStyle(style);
        this.dottedLinePaint.setStrokeCap(cap);
        this.dottedLinePaint.setPathEffect(new DashPathEffect(new float[]{dpToPx(20.0f), dpToPx(12.0f)}, 0.0f));
        initCircleParam();
        Paint paint5 = new Paint(1);
        this.textPaint = paint5;
        paint5.setColor(ContextCompat.getColor(getContext(), R$color.red));
        initTouchListener();
    }

    private void initCircleParam() {
        Paint paint = new Paint(1);
        this.mOuterPaint = paint;
        paint.setColor(ContextCompat.getColor(getContext(), R$color.red_alpha));
        Paint paint2 = this.mOuterPaint;
        Paint.Style style = Paint.Style.FILL;
        paint2.setStyle(style);
        Paint paint3 = new Paint(1);
        this.circlePaint = paint3;
        paint3.setColor(ContextCompat.getColor(getContext(), R$color.red));
        this.circlePaint.setStyle(style);
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
    protected void onMeasure(int i, int i2) {
        int iCeil = (int) Math.ceil(dpToPx(60.0f));
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            iCeil = size;
        } else if (mode == Integer.MIN_VALUE) {
            iCeil = Math.min(iCeil, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), iCeil);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float fDpToPx;
        float height;
        super.onDraw(canvas);
        this.matrix.getValues(this.matrixValues);
        float fDpToPx2 = dpToPx(5.0f);
        if (this.point1 != null) {
            fDpToPx = dpToPx(45.0f);
            height = this.point1.y + (getHeight() / 2.0f);
            canvas.drawCircle(fDpToPx, height, fDpToPx2, this.circlePaint);
            drawHorizontalText(canvas, "A", (fDpToPx - fDpToPx2) - dpToPx(5.0f), height);
        } else {
            fDpToPx = 0.0f;
            height = 0.0f;
        }
        PointF pointF = this.point2;
        if (pointF == null || pointF.x == 0.0f) {
            return;
        }
        float width = getWidth() - dpToPx(45.0f);
        float height2 = this.point2.y + (getHeight() / 2.0f);
        this.circlePaint.setColor(ContextCompat.getColor(getContext(), R$color.green));
        this.linePaint.setColor(ContextCompat.getColor(getContext(), R$color.green));
        this.textPaint.setColor(ContextCompat.getColor(getContext(), R$color.green));
        canvas.drawCircle(fDpToPx, height, fDpToPx2, this.circlePaint);
        drawHorizontalText(canvas, "A", (fDpToPx - fDpToPx2) - dpToPx(5.0f), height);
        canvas.drawCircle(width, height2, fDpToPx2, this.circlePaint);
        drawHorizontalText(canvas, "B", fDpToPx2 + width + dpToPx(5.0f), height2);
        if (fDpToPx != 0.0f) {
            canvas.drawLine(fDpToPx, height, width, height2, this.linePaint);
        }
    }

    private void drawDashedSegment(Canvas canvas, float f, float f2, float f3, float f4) {
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
        canvas.drawPath(path, this.dottedLinePaint);
    }

    private float dpToPx(float f) {
        return TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    private void getParentContainerDimensions() {
        post(new Runnable() { // from class: com.qianhe.yct.view.LinePreView.1
            @Override // java.lang.Runnable
            public void run() {
                ViewParent parent = LinePreView.this.getParent();
                if (parent instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) parent;
                    LinePreView.this.centerX = viewGroup.getWidth() / 2.0f;
                    LinePreView.this.centerY = viewGroup.getHeight() / 2.0f;
                    if (LinePreView.this.currentPoint != null) {
                        LinePreView linePreView = LinePreView.this;
                        linePreView.offsetX = linePreView.centerX - LinePreView.this.currentPoint.x;
                        LinePreView linePreView2 = LinePreView.this;
                        linePreView2.offsetY = linePreView2.centerY - LinePreView.this.currentPoint.y;
                        LinePreView.this.currentPoint.set(LinePreView.this.currentPoint.x + LinePreView.this.offsetX, LinePreView.this.currentPoint.y + LinePreView.this.offsetY);
                    }
                    if (LinePreView.this.point1 != null && LinePreView.this.point2 != null) {
                        LinePreView.this.point1.set(LinePreView.this.point1.x + LinePreView.this.offsetX, LinePreView.this.point1.y + LinePreView.this.offsetY);
                        LinePreView.this.point2.set(LinePreView.this.point2.x + LinePreView.this.offsetX, LinePreView.this.point2.y + LinePreView.this.offsetY);
                    }
                    LinePreView.this.matrix.reset();
                    LinePreView.this.matrix.setScale(1.0f, 1.0f, LinePreView.this.centerX, LinePreView.this.centerY);
                    LinePreView.this.invalidate();
                }
            }
        });
    }

    public void resetLocation() {
        if (this.centerX == 0.0f || this.centerY == 0.0f || this.pointA0 == null || this.pointB0 == null) {
            return;
        }
        PointF pointF = this.pointA0;
        this.point1 = new PointF(pointF.x * 50.0f, (-pointF.y) * 50.0f);
        PointF pointF2 = this.pointB0;
        this.point2 = new PointF(pointF2.x * 50.0f, (-pointF2.y) * 50.0f);
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
        if (this.centerX == 0.0f || this.centerY == 0.0f || this.pointA0 == null || this.pointB0 == null || this.currentPoint0 == null) {
            return;
        }
        PointF pointF = this.pointA0;
        this.point1 = new PointF(pointF.x * 50.0f, (-pointF.y) * 50.0f);
        PointF pointF2 = this.pointB0;
        this.point2 = new PointF(pointF2.x * 50.0f, (-pointF2.y) * 50.0f);
        float f = this.centerX;
        PointF pointF3 = this.point1;
        float f2 = pointF3.x;
        float f3 = f - f2;
        this.offsetX = f3;
        float f4 = this.centerY;
        float f5 = pointF3.y;
        float f6 = f4 - f5;
        this.offsetY = f6;
        pointF3.set(f2 + f3, f5 + f6);
        PointF pointF4 = this.point2;
        pointF4.set(pointF4.x + this.offsetX, pointF4.y + this.offsetY);
        PointF pointF5 = this.currentPoint;
        PointF pointF6 = this.currentPoint0;
        pointF5.set(pointF6.x + this.offsetX, pointF6.y + this.offsetY);
        Matrix matrix = this.matrix;
        PointF pointF7 = this.point1;
        matrix.setScale(1.0f, 1.0f, pointF7.x, pointF7.y);
        invalidate();
    }

    public void setPointA(double[] dArr) {
        this.baseX = dArr[0];
        this.baseY = dArr[1];
        this.pointA0 = new PointF((float) (dArr[0] - this.baseX), (float) (dArr[1] - this.baseY));
        measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        if (this.pointA0 != null) {
            PointF pointF = this.pointA0;
            this.point1 = new PointF(pointF.x * 50.0f, (-pointF.y) * 50.0f);
            this.textPaint.setTextSize(dpToPx(14.0f));
        }
    }

    public void setPointAB(double[] dArr, double[] dArr2) {
        if (dArr[0] != 0.0d && dArr2[0] == 0.0d) {
            setPointA(dArr);
        }
        if (dArr2[0] != 0.0d) {
            this.baseX = dArr[0];
            this.baseY = dArr[1];
            this.pointA0 = new PointF((float) (dArr[0] - this.baseX), (float) (dArr[1] - this.baseY));
            this.pointB0 = new PointF((float) (dArr2[0] - this.baseX), (float) (dArr2[1] - this.baseY));
            measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            if (this.pointA0 != null && this.pointB0 != null) {
                PointF pointF = this.pointA0;
                this.point1 = new PointF(pointF.x * 50.0f, (-pointF.y) * 50.0f);
                PointF pointF2 = this.pointB0;
                this.point2 = new PointF(pointF2.x * 50.0f, (-pointF2.y) * 50.0f);
                this.textPaint.setTextSize(dpToPx(14.0f));
            }
            invalidate();
        }
    }

    public void setLocationPoint(double[] dArr, boolean z) {
        PointF pointF = new PointF((float) (dArr[0] - this.baseX), (float) (dArr[1] - this.baseY));
        if (z) {
            this.mOuterPaint.setColor(ContextCompat.getColor(getContext(), R$color.theme_alpha));
            this.circlePaint.setColor(ContextCompat.getColor(getContext(), R$color.theme));
        } else {
            this.mOuterPaint.setColor(ContextCompat.getColor(getContext(), R$color.red_alpha));
            this.circlePaint.setColor(ContextCompat.getColor(getContext(), R$color.red));
        }
        this.currentPoint0 = new PointF(pointF.x * 50.0f, (-pointF.y) * 50.0f);
        PointF pointF2 = this.currentPoint0;
        PointF pointF3 = new PointF(pointF2.x, pointF2.y);
        this.currentPoint = pointF3;
        float f = this.offsetX;
        if (f != 0.0f) {
            float f2 = this.offsetY;
            if (f2 != 0.0f) {
                pointF3.set(pointF3.x + f, pointF3.y + f2);
                invalidate();
            }
        }
    }

    private void drawHorizontalText(Canvas canvas, String str, float f, float f2) {
        this.textPaint.getTextBounds(str, 0, str.length(), new Rect());
        Paint.FontMetrics fontMetrics = this.textPaint.getFontMetrics();
        float f3 = fontMetrics.descent;
        float f4 = ((f3 - fontMetrics.ascent) / 2.0f) - f3;
        float fMeasureText = this.textPaint.measureText(str);
        if (!str.equals("A")) {
            fMeasureText = (-fMeasureText) / 2.0f;
        }
        canvas.drawText(str, f - fMeasureText, f2 + f4, this.textPaint);
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
        setOnTouchListener(new View.OnTouchListener() { // from class: com.qianhe.yct.view.LinePreView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return LinePreView.$r8$lambda$lcwe0QWcsqtfiMD_1O4Uw94SF6E(this.f$0, view, motionEvent);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ boolean $r8$lambda$lcwe0QWcsqtfiMD_1O4Uw94SF6E(com.qianhe.yct.view.LinePreView r5, android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5.getClass()
            int r6 = r7.getAction()
            r6 = r6 & 255(0xff, float:3.57E-43)
            r0 = 0
            r1 = 1
            if (r6 == 0) goto Lab
            if (r6 == r1) goto La8
            r2 = 1092616192(0x41200000, float:10.0)
            r3 = 2
            if (r6 == r3) goto L36
            r4 = 5
            if (r6 == r4) goto L1c
            r7 = 6
            if (r6 == r7) goto La8
            goto Lc4
        L1c:
            float r6 = r5.spacing(r7)
            r5.startDistance = r6
            int r6 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r6 <= 0) goto Lc4
            android.graphics.Matrix r6 = r5.savedMatrix
            android.graphics.Matrix r0 = r5.matrix
            r6.set(r0)
            float[] r6 = r5.lastPoint
            r5.midPoint(r6, r7)
            r5.mode = r3
            goto Lc4
        L36:
            int r6 = r5.mode
            if (r6 != r1) goto L59
            android.graphics.Matrix r6 = r5.matrix
            android.graphics.Matrix r2 = r5.savedMatrix
            r6.set(r2)
            android.graphics.Matrix r6 = r5.matrix
            float r2 = r7.getX()
            float[] r3 = r5.lastPoint
            r0 = r3[r0]
            float r2 = r2 - r0
            float r7 = r7.getY()
            float[] r0 = r5.lastPoint
            r0 = r0[r1]
            float r7 = r7 - r0
            r6.postTranslate(r2, r7)
            goto Lc4
        L59:
            if (r6 != r3) goto Lc4
            float r6 = r5.spacing(r7)
            int r7 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r7 <= 0) goto Lc4
            android.graphics.Matrix r7 = r5.matrix
            android.graphics.Matrix r2 = r5.savedMatrix
            r7.set(r2)
            float r7 = r5.startDistance
            float r6 = r6 / r7
            android.graphics.Matrix r7 = r5.matrix
            float r7 = r5.getMatrixScale(r7)
            float r2 = r7 * r6
            r3 = 1008981770(0x3c23d70a, float:0.01)
            int r4 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r4 > 0) goto L89
            android.graphics.Matrix r6 = r5.matrix
            float r3 = r3 / r7
            float[] r7 = r5.lastPoint
            r0 = r7[r0]
            r7 = r7[r1]
            r6.postScale(r3, r3, r0, r7)
            goto Lc4
        L89:
            r3 = 1128792064(0x43480000, float:200.0)
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 < 0) goto L9c
            android.graphics.Matrix r6 = r5.matrix
            float r3 = r3 / r7
            float[] r7 = r5.lastPoint
            r0 = r7[r0]
            r7 = r7[r1]
            r6.postScale(r3, r3, r0, r7)
            goto Lc4
        L9c:
            android.graphics.Matrix r7 = r5.matrix
            float[] r2 = r5.lastPoint
            r0 = r2[r0]
            r2 = r2[r1]
            r7.postScale(r6, r6, r0, r2)
            goto Lc4
        La8:
            r5.mode = r0
            goto Lc4
        Lab:
            android.graphics.Matrix r6 = r5.savedMatrix
            android.graphics.Matrix r2 = r5.matrix
            r6.set(r2)
            float[] r6 = r5.lastPoint
            float r2 = r7.getX()
            r6[r0] = r2
            float[] r6 = r5.lastPoint
            float r7 = r7.getY()
            r6[r1] = r7
            r5.mode = r1
        Lc4:
            r5.invalidate()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.view.LinePreView.$r8$lambda$lcwe0QWcsqtfiMD_1O4Uw94SF6E(com.qianhe.yct.view.LinePreView, android.view.View, android.view.MotionEvent):boolean");
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

    private class ScaleListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private ScaleListener() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            LinePreView.this.matrix.postScale(scaleFactor, scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
            return true;
        }
    }

    public void setUseExcavatorIcon(boolean z) {
        this.useExcavatorIcon = z;
        invalidate();
    }

    public boolean isUseExcavatorIcon() {
        return this.useExcavatorIcon;
    }
}
