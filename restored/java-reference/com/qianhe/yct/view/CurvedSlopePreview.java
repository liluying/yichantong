package com.qianhe.yct.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.qianhe.baselib.utils.workchecker.CurvedSlopeChecker;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$styleable;
import com.tencent.smtt.sdk.TbsListener;
import com.tencent.smtt.sdk.WebView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CurvedSlopePreview extends View {
    private static final int DRAG = 1;
    private static final int NONE = 0;
    private static final int ZOOM = 2;
    private float INITSCALE;
    private Paint arcStrokePaint;
    private Paint arcTransitionPaint;
    private final List<CurvedSlopeChecker.ArcTransition> arcTransitions;
    private Bitmap bucketBitmap;
    private Paint bucketPaint;
    private float contentHeight;
    private float contentWidth;
    private double[] currentPoint;
    private Paint dottedLinePaint;
    private boolean drawLines;
    private double[] gaussL;
    private double[] gaussR;
    private final float[] lastFingerPos1;
    private final float[] lastFingerPos2;
    private int lastNearestSegmentIndex;
    private final float[] lastPoint;
    private Paint linePaint;
    private float minX;
    private float minY;
    private int mode;
    private int nearestSegmentIndex;
    private boolean needTransform;
    private double offsetX;
    private double offsetY;
    private final List<double[]> openingCurvePoints;
    private float scaleRatio;
    private Paint slopeFacePaint;
    private final List<CurvedSlopeChecker.SlopeFace> slopeFaces;
    private Paint slopeRibPaint;
    private Paint textPaint;
    private double[] transformedCurrentPoint;
    private final List<double[]> transformedOpeningPoints;
    private double width;

    public CurvedSlopePreview(Context context) {
        this(context, null);
    }

    public CurvedSlopePreview(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CurvedSlopePreview(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.lastPoint = new float[2];
        this.lastFingerPos1 = new float[2];
        this.lastFingerPos2 = new float[2];
        this.mode = 0;
        this.openingCurvePoints = new ArrayList();
        this.slopeFaces = new ArrayList();
        this.arcTransitions = new ArrayList();
        this.contentWidth = 0.0f;
        this.contentHeight = 0.0f;
        this.minX = 0.0f;
        this.minY = 0.0f;
        this.INITSCALE = 1.0f;
        this.scaleRatio = 1.0f;
        this.gaussL = new double[3];
        this.gaussR = new double[3];
        this.transformedOpeningPoints = new ArrayList();
        this.needTransform = false;
        this.nearestSegmentIndex = -1;
        this.lastNearestSegmentIndex = -1;
        this.drawLines = true;
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
        this.dottedLinePaint.setPathEffect(new DashPathEffect(new float[]{dpToPx(4.0f), dpToPx(4.0f)}, 0.0f));
        Paint paint5 = new Paint(1);
        this.textPaint = paint5;
        paint5.setColor(ContextCompat.getColor(getContext(), R$color.map_line));
        this.textPaint.setTextSize(spToPx(14.0f));
        this.bucketPaint = new Paint(1);
        Paint paint6 = new Paint(1);
        this.slopeFacePaint = paint6;
        Paint.Style style2 = Paint.Style.FILL;
        paint6.setStyle(style2);
        this.slopeFacePaint.setColor(Color.argb(40, 100, 149, TbsListener.ErrorCode.DECOUPLE_TPATCH_INSTALL_SUCCESS));
        Paint paint7 = new Paint(1);
        this.arcTransitionPaint = paint7;
        paint7.setStyle(style2);
        this.arcTransitionPaint.setColor(Color.argb(50, 100, 149, TbsListener.ErrorCode.DECOUPLE_TPATCH_INSTALL_SUCCESS));
        Paint paint8 = new Paint(1);
        this.arcStrokePaint = paint8;
        paint8.setStyle(style);
        this.arcStrokePaint.setStrokeWidth(dpToPx(2.0f));
        this.arcStrokePaint.setColor(ContextCompat.getColor(getContext(), R$color.map_line));
        this.arcStrokePaint.setAlpha(180);
        Paint paint9 = new Paint(1);
        this.slopeRibPaint = paint9;
        paint9.setColor(ContextCompat.getColor(getContext(), R$color.map_line));
        this.slopeRibPaint.setStrokeWidth(dpToPx(1.0f));
        this.slopeRibPaint.setStyle(style);
        this.slopeRibPaint.setAlpha(140);
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
        if (this.currentPoint == null || this.openingCurvePoints.size() < 2) {
            this.nearestSegmentIndex = -1;
            this.needTransform = false;
            return;
        }
        this.nearestSegmentIndex = -1;
        double d = Double.MAX_VALUE;
        int i = 0;
        while (i < this.openingCurvePoints.size() - 1) {
            int i2 = i + 1;
            double dDistancePointToSegment = distancePointToSegment(this.openingCurvePoints.get(i), this.openingCurvePoints.get(i2), this.currentPoint);
            if (dDistancePointToSegment < d) {
                this.nearestSegmentIndex = i;
                d = dDistancePointToSegment;
            }
            i = i2;
        }
        int i3 = this.nearestSegmentIndex;
        if (i3 != -1) {
            this.lastNearestSegmentIndex = i3;
        }
        this.needTransform = false;
    }

    private void calculateTransform() {
        char c = 0;
        char c2 = 1;
        int i = this.nearestSegmentIndex;
        if (i == -1 || i >= this.openingCurvePoints.size() - 1) {
            return;
        }
        double[] dArr = this.openingCurvePoints.get(this.nearestSegmentIndex);
        double[] dArr2 = this.openingCurvePoints.get(this.nearestSegmentIndex + 1);
        double dAtan2 = Math.atan2(dArr2[0] - dArr[0], dArr2[1] - dArr[1]);
        double d = dArr[0];
        double d2 = dArr[1];
        this.transformedOpeningPoints.clear();
        for (double[] dArr3 : this.openingCurvePoints) {
            double d3 = dArr3[c] - d;
            double d4 = dArr3[c2] - d2;
            double d5 = -dAtan2;
            double dCos = Math.cos(d5);
            double dSin = Math.sin(d5);
            this.transformedOpeningPoints.add(new double[]{((d3 * dCos) - (d4 * dSin)) + d, (d3 * dSin) + (d4 * dCos) + d2});
            c = 0;
            c2 = 1;
        }
        double[] dArr4 = this.currentPoint;
        if (dArr4 != null) {
            double d6 = dArr4[0] - d;
            double d7 = dArr4[1] - d2;
            double d8 = -dAtan2;
            double dCos2 = Math.cos(d8);
            double dSin2 = Math.sin(d8);
            this.transformedCurrentPoint = new double[]{((d6 * dCos2) - (d7 * dSin2)) + d, (d6 * dSin2) + (d7 * dCos2) + d2};
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        updateContentBounds();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        updateContentBounds();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        CurvedSlopePreview curvedSlopePreview = this;
        Canvas canvas2 = canvas;
        super.onDraw(canvas);
        if (curvedSlopePreview.openingCurvePoints.isEmpty()) {
            return;
        }
        float fDpToPx = curvedSlopePreview.dpToPx(5.0f);
        float fDpToPx2 = curvedSlopePreview.dpToPx(8.0f);
        int color = ContextCompat.getColor(curvedSlopePreview.getContext(), R$color.red);
        int color2 = ContextCompat.getColor(curvedSlopePreview.getContext(), R$color.brown);
        List<double[]> list = (!curvedSlopePreview.needTransform || curvedSlopePreview.transformedOpeningPoints.isEmpty()) ? curvedSlopePreview.openingCurvePoints : curvedSlopePreview.transformedOpeningPoints;
        for (Iterator<CurvedSlopeChecker.SlopeFace> it = curvedSlopePreview.slopeFaces.iterator(); it.hasNext(); it = it) {
            CurvedSlopeChecker.SlopeFace next = it.next();
            Path path = new Path();
            CurvedSlopeChecker.Point3D point3D = next.opening0;
            double d = point3D.x;
            float f = curvedSlopePreview.scaleRatio;
            path.moveTo((float) ((d * f) + curvedSlopePreview.offsetX), (float) ((point3D.y * f) + curvedSlopePreview.offsetY));
            CurvedSlopeChecker.Point3D point3D2 = next.opening1;
            double d2 = point3D2.x;
            float f2 = curvedSlopePreview.scaleRatio;
            path.lineTo((float) ((d2 * f2) + curvedSlopePreview.offsetX), (float) ((point3D2.y * f2) + curvedSlopePreview.offsetY));
            CurvedSlopeChecker.Point3D point3D3 = next.far1;
            double d3 = point3D3.x;
            float f3 = curvedSlopePreview.scaleRatio;
            path.lineTo((float) ((d3 * f3) + curvedSlopePreview.offsetX), (float) ((point3D3.y * f3) + curvedSlopePreview.offsetY));
            CurvedSlopeChecker.Point3D point3D4 = next.far0;
            double d4 = point3D4.x;
            float f4 = curvedSlopePreview.scaleRatio;
            path.lineTo((float) ((d4 * f4) + curvedSlopePreview.offsetX), (float) ((point3D4.y * f4) + curvedSlopePreview.offsetY));
            path.close();
            canvas2.drawPath(path, curvedSlopePreview.slopeFacePaint);
        }
        Iterator<CurvedSlopeChecker.ArcTransition> it2 = curvedSlopePreview.arcTransitions.iterator();
        while (it2.hasNext()) {
            CurvedSlopeChecker.ArcTransition next2 = it2.next();
            CurvedSlopeChecker.Point3D point3D5 = next2.corner;
            double d5 = point3D5.x;
            float f5 = curvedSlopePreview.scaleRatio;
            double d6 = curvedSlopePreview.offsetX;
            float f6 = fDpToPx2;
            int i = color;
            double d7 = f5 * point3D5.y;
            double d8 = curvedSlopePreview.offsetY;
            float f7 = (float) (d7 + d8);
            CurvedSlopeChecker.Point3D point3D6 = next2.edgePrev;
            float f8 = (float) ((f5 * point3D6.x) + d6);
            int i2 = color2;
            float f9 = (float) ((f5 * point3D6.y) + d8);
            CurvedSlopeChecker.Point3D point3D7 = next2.edgeNext;
            float f10 = (float) ((f5 * point3D7.x) + d6);
            Iterator<CurvedSlopeChecker.ArcTransition> it3 = it2;
            float f11 = (float) ((point3D7.y * f5) + d8);
            Path path2 = new Path();
            path2.moveTo((float) ((d5 * f5) + d6), f7);
            path2.lineTo(f8, f9);
            path2.lineTo(f10, f11);
            path2.close();
            canvas2.drawPath(path2, curvedSlopePreview.slopeFacePaint);
            it2 = it3;
            fDpToPx2 = f6;
            color = i;
            color2 = i2;
        }
        float f12 = fDpToPx2;
        int i3 = color;
        int i4 = color2;
        char c = 0;
        if (curvedSlopePreview.drawLines && list.size() > 1) {
            int i5 = 0;
            for (int i6 = 1; i5 < list.size() - i6; i6 = 1) {
                double[] dArr = list.get(i5);
                int i7 = i5 + 1;
                double[] dArr2 = list.get(i7);
                double d9 = dArr[c];
                float f13 = curvedSlopePreview.scaleRatio;
                double d10 = curvedSlopePreview.offsetX;
                float f14 = (float) ((d9 * f13) + d10);
                double d11 = dArr[i6] * f13;
                double d12 = curvedSlopePreview.offsetY;
                float f15 = (float) (d11 + d12);
                float f16 = (float) ((dArr2[0] * f13) + d10);
                float f17 = (float) ((dArr2[1] * f13) + d12);
                curvedSlopePreview.linePaint.setColor(i5 == curvedSlopePreview.nearestSegmentIndex ? i3 : i4);
                canvas2.drawLine(f14, f15, f16, f17, curvedSlopePreview.linePaint);
                i5 = i7;
                c = 0;
            }
        }
        int i8 = 0;
        while (i8 < list.size()) {
            double[] dArr3 = list.get(i8);
            double d13 = dArr3[0];
            float f18 = curvedSlopePreview.scaleRatio;
            float f19 = (float) ((d13 * f18) + curvedSlopePreview.offsetX);
            float f20 = (float) ((dArr3[1] * f18) + curvedSlopePreview.offsetY);
            int i9 = curvedSlopePreview.nearestSegmentIndex;
            curvedSlopePreview.textPaint.setColor(i9 != -1 && (i8 == i9 || i8 == i9 + 1) ? i3 : i4);
            canvas2.drawCircle(f19, f20, fDpToPx, curvedSlopePreview.textPaint);
            int i10 = i8 + 1;
            curvedSlopePreview.drawTextAboveCircle(canvas2, String.valueOf(i10), f19, f20, (f20 - fDpToPx) - f12);
            curvedSlopePreview = this;
            canvas2 = canvas;
            i8 = i10;
        }
        drawBucketBitmap(canvas);
        drawScaleBar(canvas);
    }

    private float dpToPx(float f) {
        return TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }

    private float spToPx(float f) {
        return TypedValue.applyDimension(2, f, getResources().getDisplayMetrics());
    }

    private void drawTextAboveCircle(Canvas canvas, String str, float f, float f2, float f3) {
        this.textPaint.getTextBounds(str, 0, str.length(), new Rect());
        canvas.drawText(str, f - (this.textPaint.measureText(str) / 2.0f), f3, this.textPaint);
    }

    private void drawBucketBitmap(Canvas canvas) {
        if (this.bucketBitmap == null || this.gaussL == null || this.gaussR == null) {
            return;
        }
        double[] transformedGaussL = getTransformedGaussL();
        double[] transformedGaussR = getTransformedGaussR();
        if (transformedGaussL == null || transformedGaussR == null) {
            return;
        }
        float f = this.scaleRatio * 0.5f;
        float height = (this.bucketBitmap.getHeight() / this.bucketBitmap.getWidth()) * f;
        double[] transformedGaussL2 = getTransformedGaussL();
        double[] transformedGaussR2 = getTransformedGaussR();
        double d = transformedGaussL2[0];
        double d2 = transformedGaussR2[0];
        double d3 = transformedGaussL2[1];
        double d4 = transformedGaussR2[1];
        double d5 = (d3 + d4) / 2.0d;
        float degrees = (float) Math.toDegrees(Math.atan2(d4 - d3, d2 - d));
        canvas.save();
        float f2 = this.scaleRatio;
        canvas.translate((float) ((((d + d2) / 2.0d) * f2) + this.offsetX), (float) ((d5 * f2) + this.offsetY));
        canvas.rotate(degrees);
        float f3 = (-f) / 2.0f;
        float f4 = -height;
        canvas.drawBitmap(this.bucketBitmap, (Rect) null, new Rect(Math.round(f3), Math.round(f4), Math.round(f3 + f), Math.round(f4 + height)), (Paint) null);
        canvas.restore();
    }

    private double[] getTransformedGaussL() {
        if (!this.needTransform || this.transformedOpeningPoints.isEmpty()) {
            double[] dArr = this.gaussL;
            return new double[]{dArr[0], dArr[1]};
        }
        double[] dArr2 = this.openingCurvePoints.get(this.nearestSegmentIndex);
        double[] dArr3 = this.openingCurvePoints.get(this.nearestSegmentIndex + 1);
        double d = dArr2[0];
        double d2 = dArr2[1];
        double dAtan2 = Math.atan2(dArr3[0] - d, dArr3[1] - d2);
        double[] dArr4 = this.gaussL;
        double d3 = dArr4[0] - d;
        double d4 = dArr4[1] - d2;
        double d5 = -dAtan2;
        double dCos = Math.cos(d5);
        double dSin = Math.sin(d5);
        return new double[]{((d3 * dCos) - (d4 * dSin)) + d, (d3 * dSin) + (d4 * dCos) + d2};
    }

    private double[] getTransformedGaussR() {
        if (!this.needTransform || this.transformedOpeningPoints.isEmpty()) {
            double[] dArr = this.gaussR;
            return new double[]{dArr[0], dArr[1]};
        }
        double[] dArr2 = this.openingCurvePoints.get(this.nearestSegmentIndex);
        double[] dArr3 = this.openingCurvePoints.get(this.nearestSegmentIndex + 1);
        double d = dArr2[0];
        double d2 = dArr2[1];
        double dAtan2 = Math.atan2(dArr3[0] - d, dArr3[1] - d2);
        double[] dArr4 = this.gaussR;
        double d3 = dArr4[0] - d;
        double d4 = dArr4[1] - d2;
        double d5 = -dAtan2;
        double dCos = Math.cos(d5);
        double dSin = Math.sin(d5);
        return new double[]{((d3 * dCos) - (d4 * dSin)) + d, (d3 * dSin) + (d4 * dCos) + d2};
    }

    private void drawScaleBar(Canvas canvas) {
        canvas.save();
        float fDpToPx = dpToPx(30.0f);
        float fDpToPx2 = dpToPx(3.0f);
        float fDpToPx3 = dpToPx(10.0f);
        float fDpToPx4 = dpToPx(10.0f);
        float f = fDpToPx / this.scaleRatio;
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

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0016, code lost:
    
        if (r0 != 6) goto L32;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.view.CurvedSlopePreview.onTouchEvent(android.view.MotionEvent):boolean");
    }

    private float spacing(MotionEvent motionEvent, int i, int i2) {
        float x = motionEvent.getX(i) - motionEvent.getX(i2);
        float y = motionEvent.getY(i) - motionEvent.getY(i2);
        return (float) Math.sqrt((x * x) + (y * y));
    }

    private float spacing(float[] fArr, float[] fArr2) {
        float f = fArr[0] - fArr2[0];
        float f2 = fArr[1] - fArr2[1];
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    public void setSlopeData(List<CurvedSlopeChecker.Point3D> list, List<CurvedSlopeChecker.SlopeFace> list2) {
        setSlopeData(list, list2, null);
    }

    public void setSlopeData(List<CurvedSlopeChecker.Point3D> list, List<CurvedSlopeChecker.SlopeFace> list2, List<CurvedSlopeChecker.ArcTransition> list3) {
        this.openingCurvePoints.clear();
        this.slopeFaces.clear();
        this.arcTransitions.clear();
        this.transformedOpeningPoints.clear();
        if (list != null) {
            for (CurvedSlopeChecker.Point3D point3D : list) {
                this.openingCurvePoints.add(new double[]{point3D.x, point3D.y, point3D.z});
            }
        }
        if (list2 != null) {
            this.slopeFaces.addAll(list2);
        }
        if (list3 != null) {
            this.arcTransitions.addAll(list3);
        }
        updateContentBounds();
        invalidate();
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

    private void updateContentBounds() {
        if (this.openingCurvePoints.isEmpty()) {
            this.contentWidth = 0.0f;
            this.contentHeight = 0.0f;
            this.minX = 0.0f;
            this.minY = 0.0f;
            return;
        }
        double dMax = -1.7976931348623157E308d;
        double dMin = Double.MAX_VALUE;
        double dMin2 = Double.MAX_VALUE;
        double dMax2 = -1.7976931348623157E308d;
        for (double[] dArr : this.openingCurvePoints) {
            dMin = Math.min(dMin, dArr[0]);
            dMax = Math.max(dMax, dArr[0]);
            dMin2 = Math.min(dMin2, dArr[1]);
            dMax2 = Math.max(dMax2, dArr[1]);
        }
        for (CurvedSlopeChecker.SlopeFace slopeFace : this.slopeFaces) {
            dMin = Math.min(dMin, Math.min(slopeFace.far0.x, slopeFace.far1.x));
            dMax = Math.max(dMax, Math.max(slopeFace.far0.x, slopeFace.far1.x));
            dMin2 = Math.min(dMin2, Math.min(slopeFace.far0.y, slopeFace.far1.y));
            dMax2 = Math.max(dMax2, Math.max(slopeFace.far0.y, slopeFace.far1.y));
        }
        for (CurvedSlopeChecker.ArcTransition arcTransition : this.arcTransitions) {
            dMin = Math.min(dMin, Math.min(arcTransition.edgePrev.x, arcTransition.edgeNext.x));
            dMax = Math.max(dMax, Math.max(arcTransition.edgePrev.x, arcTransition.edgeNext.x));
            dMin2 = Math.min(dMin2, Math.min(arcTransition.edgePrev.y, arcTransition.edgeNext.y));
            dMax2 = Math.max(dMax2, Math.max(arcTransition.edgePrev.y, arcTransition.edgeNext.y));
        }
        this.contentWidth = (float) (dMax - dMin);
        this.contentHeight = (float) (dMax2 - dMin2);
        this.minX = (float) dMin;
        this.minY = (float) dMin2;
        float fDpToPx = dpToPx(20.0f) * 2.0f;
        this.contentWidth += fDpToPx;
        this.contentHeight += fDpToPx;
        float width = getWidth();
        float height = getHeight();
        if (width > 0.0f && height > 0.0f && this.contentWidth > 0.0f && this.contentHeight > 0.0f) {
            double d = (dMin + dMax) / 2.0d;
            float f = this.scaleRatio;
            this.offsetX = (width / 2.0f) - (d * f);
            this.offsetY = (height / 2.0f) - (((dMin2 + dMax2) / 2.0d) * f);
        } else {
            float f2 = this.contentWidth;
            float f3 = this.scaleRatio;
            this.offsetX = (width - (f2 * f3)) / 2.0d;
            this.offsetY = (height - (this.contentHeight * f3)) / 2.0d;
        }
        invalidate();
    }

    public void locateToStartPoint() {
        this.scaleRatio = this.INITSCALE;
        if (!this.openingCurvePoints.isEmpty()) {
            double[] dArr = this.openingCurvePoints.get(0);
            float width = getWidth();
            float height = getHeight();
            if (width > 0.0f && height > 0.0f) {
                double d = dArr[0];
                float f = this.scaleRatio;
                this.offsetX = (width / 2.0f) - (d * f);
                this.offsetY = (height / 2.0f) - (dArr[1] * f);
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
        double d4 = width / 2.0f;
        float f = this.scaleRatio;
        this.offsetX = d4 - (d2 * f);
        this.offsetY = (height / 2.0f) - (d * f);
        invalidate();
    }
}
