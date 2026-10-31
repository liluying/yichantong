package com.qianhe.yct.view;

import android.content.Context;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class VerifyAccuracyView extends View {
    private static final long MIN_ADD_INTERVAL = 1000;
    private float RValue;
    private Paint borderPaint;
    private float centerX;
    private float centerY;
    private Paint circlePaint;
    private Paint connectorPaint;
    private List<CoordinatePoint> coordinatePoints;
    private CoordinatePoint currentPoint;
    private float fixedCircleRadius;
    private float hValue;
    private long lastAddTime;
    private Paint linePaint;
    private final Context mContext;
    private double maxEast;
    private float maxHValue;
    private double maxHeight;
    private double maxNorth;
    private int maxPointCount;
    private double minEast;
    private double minHeight;
    private double minNorth;
    private Paint pathPaint;
    private Paint pointPaint;
    private OnProgressUpdateListener progressUpdateListener;
    private Paint textPaint;

    public interface OnProgressUpdateListener {
        void onCollectionComplete(double d, double d2, double d3, double d4, double d5, double d6, float f, float f2);

        void onProgressUpdate(int i, int i2);
    }

    public void setOnProgressUpdateListener(OnProgressUpdateListener onProgressUpdateListener) {
        this.progressUpdateListener = onProgressUpdateListener;
    }

    public VerifyAccuracyView(Context context) {
        this(context, null);
    }

    public VerifyAccuracyView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VerifyAccuracyView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.RValue = 0.0f;
        this.hValue = 0.0f;
        this.maxPointCount = 20;
        this.fixedCircleRadius = 0.0f;
        this.lastAddTime = 0L;
        this.minEast = Double.MAX_VALUE;
        this.maxEast = Double.MIN_VALUE;
        this.minNorth = Double.MAX_VALUE;
        this.maxNorth = Double.MIN_VALUE;
        this.minHeight = Double.MAX_VALUE;
        this.maxHeight = Double.MIN_VALUE;
        this.maxHValue = 0.0f;
        this.mContext = context;
        init();
    }

    private void init() {
        this.coordinatePoints = new ArrayList();
        Paint paint = new Paint(1);
        this.circlePaint = paint;
        paint.setColor(-65536);
        Paint paint2 = this.circlePaint;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        this.circlePaint.setStrokeWidth(dpToPx(2.0f));
        Paint paint3 = new Paint(1);
        this.pointPaint = paint3;
        paint3.setColor(-1);
        this.pointPaint.setStyle(Paint.Style.FILL);
        Paint paint4 = new Paint(1);
        this.linePaint = paint4;
        paint4.setColor(-65536);
        this.linePaint.setStyle(style);
        this.linePaint.setStrokeWidth(dpToPx(2.0f));
        Paint paint5 = new Paint(1);
        this.textPaint = paint5;
        paint5.setColor(-1);
        this.textPaint.setTextSize(dpToPx(14.0f));
        Paint paint6 = new Paint(1);
        this.pathPaint = paint6;
        paint6.setColor(-1);
        this.pathPaint.setStyle(style);
        this.pathPaint.setStrokeWidth(dpToPx(2.0f));
        Paint paint7 = new Paint(1);
        this.borderPaint = paint7;
        paint7.setColor(-65536);
        this.borderPaint.setStyle(style);
        this.borderPaint.setStrokeWidth(dpToPx(1.0f));
        Paint paint8 = new Paint(1);
        this.connectorPaint = paint8;
        paint8.setColor(-256);
        this.connectorPaint.setStyle(style);
        this.connectorPaint.setStrokeWidth(dpToPx(1.5f));
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        float f = size;
        float fDpToPx = dpToPx(15.0f);
        float fDpToPx2 = dpToPx(80.0f);
        setMeasuredDimension(size, Math.max((int) (dpToPx(15.0f) + (0.5f * f) + fDpToPx + fDpToPx2 + dpToPx(15.0f) + dpToPx(20.0f) + dpToPx(15.0f)), (int) (f * 0.9f)));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float fDpToPx = dpToPx(15.0f);
        float f = i;
        this.centerX = f / 2.0f;
        float f2 = (0.5f * f) / 2.0f;
        this.centerY = fDpToPx + f2;
        this.fixedCircleRadius = f2 - dpToPx(5.0f);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x01a2  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onDraw(android.graphics.Canvas r19) {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.view.VerifyAccuracyView.onDraw(android.graphics.Canvas):void");
    }

    public void updateCurrentPosition(double d, double d2, double d3) {
        double[] dArrConvertToGAUSSXY = GnssCoordConvertManager.getInstance().convertToGAUSSXY(new double[]{d, d2, d3});
        double d4 = dArrConvertToGAUSSXY[0];
        double d5 = dArrConvertToGAUSSXY[1];
        if (this.coordinatePoints.size() >= this.maxPointCount) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastAddTime < MIN_ADD_INTERVAL) {
            this.currentPoint = new CoordinatePoint(d2, d, d3, d4, d5);
            return;
        }
        CoordinatePoint coordinatePoint = new CoordinatePoint(d2, d, d3, d4, d5);
        this.currentPoint = coordinatePoint;
        this.coordinatePoints.add(coordinatePoint);
        this.lastAddTime = jCurrentTimeMillis;
        updateExtremes(d4, d5, d3);
        calculateRValue();
        calculateHValue();
        invalidate();
        int size = this.coordinatePoints.size();
        OnProgressUpdateListener onProgressUpdateListener = this.progressUpdateListener;
        if (onProgressUpdateListener != null) {
            onProgressUpdateListener.onProgressUpdate(size, this.maxPointCount);
            if (size >= this.maxPointCount) {
                this.progressUpdateListener.onCollectionComplete(this.minEast, this.maxEast, this.minNorth, this.maxNorth, this.minHeight, this.maxHeight, this.maxHValue, this.RValue);
            }
        }
    }

    private void updateExtremes(double d, double d2, double d3) {
        if (d < this.minEast) {
            this.minEast = d;
        }
        if (d > this.maxEast) {
            this.maxEast = d;
        }
        if (d2 < this.minNorth) {
            this.minNorth = d2;
        }
        if (d2 > this.maxNorth) {
            this.maxNorth = d2;
        }
        if (d3 < this.minHeight) {
            this.minHeight = d3;
        }
        if (d3 > this.maxHeight) {
            this.maxHeight = d3;
        }
    }

    public void setMaxPointCount(int i) {
        if (i > 0) {
            this.maxPointCount = i;
            while (this.coordinatePoints.size() > i) {
                this.coordinatePoints.remove(0);
            }
            invalidate();
        }
    }

    public int getPointCount() {
        return this.coordinatePoints.size();
    }

    private void calculateRValue() {
        if (this.coordinatePoints.isEmpty()) {
            this.RValue = 0.0f;
            return;
        }
        double averageEast = getAverageEast();
        double averageNorth = getAverageNorth();
        double d = 0.0d;
        for (CoordinatePoint coordinatePoint : this.coordinatePoints) {
            double d2 = coordinatePoint.east - averageEast;
            double d3 = coordinatePoint.north - averageNorth;
            double dSqrt = Math.sqrt((d2 * d2) + (d3 * d3));
            if (dSqrt > d) {
                d = dSqrt;
            }
        }
        this.RValue = (float) (Math.round((d * 100.0d) * 100.0d) / 100.0d);
    }

    private void calculateHValue() {
        float f = 0.0f;
        if (this.coordinatePoints.isEmpty()) {
            this.hValue = 0.0f;
            return;
        }
        double averageHeight = getAverageHeight();
        Iterator<CoordinatePoint> it = this.coordinatePoints.iterator();
        while (it.hasNext()) {
            float fAbs = ((float) Math.abs(it.next().height - averageHeight)) * 100.0f;
            if (fAbs > f) {
                f = fAbs;
            }
        }
        this.hValue = f;
        if (f > this.maxHValue) {
            this.maxHValue = f;
        }
    }

    private double getAverageHeight() {
        double d = 0.0d;
        if (this.coordinatePoints.isEmpty()) {
            return 0.0d;
        }
        Iterator<CoordinatePoint> it = this.coordinatePoints.iterator();
        while (it.hasNext()) {
            d += it.next().height;
        }
        return d / this.coordinatePoints.size();
    }

    private double getAverageEast() {
        double d = 0.0d;
        if (this.coordinatePoints.isEmpty()) {
            return 0.0d;
        }
        Iterator<CoordinatePoint> it = this.coordinatePoints.iterator();
        while (it.hasNext()) {
            d += it.next().east;
        }
        return d / this.coordinatePoints.size();
    }

    private double getAverageNorth() {
        double d = 0.0d;
        if (this.coordinatePoints.isEmpty()) {
            return 0.0d;
        }
        Iterator<CoordinatePoint> it = this.coordinatePoints.iterator();
        while (it.hasNext()) {
            d += it.next().north;
        }
        return d / this.coordinatePoints.size();
    }

    private double getMaxHeight() {
        if (this.coordinatePoints.isEmpty()) {
            return 0.0d;
        }
        double d = this.coordinatePoints.get(0).height;
        Iterator<CoordinatePoint> it = this.coordinatePoints.iterator();
        while (it.hasNext()) {
            double d2 = it.next().height;
            if (d2 > d) {
                d = d2;
            }
        }
        return d;
    }

    private double getMinHeight() {
        if (this.coordinatePoints.isEmpty()) {
            return 0.0d;
        }
        double d = this.coordinatePoints.get(0).height;
        Iterator<CoordinatePoint> it = this.coordinatePoints.iterator();
        while (it.hasNext()) {
            double d2 = it.next().height;
            if (d2 < d) {
                d = d2;
            }
        }
        return d;
    }

    public void clearCoordinates() {
        this.coordinatePoints.clear();
        this.currentPoint = null;
        this.RValue = 0.0f;
        this.hValue = 0.0f;
        this.minEast = Double.MAX_VALUE;
        this.maxEast = Double.MIN_VALUE;
        this.minNorth = Double.MAX_VALUE;
        this.maxNorth = Double.MIN_VALUE;
        this.minHeight = Double.MAX_VALUE;
        this.maxHeight = Double.MIN_VALUE;
        this.maxHValue = 0.0f;
        invalidate();
    }

    private float dpToPx(float f) {
        return TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }

    private static class CoordinatePoint {
        double east;
        double height;
        double latitude;
        double longitude;
        double north;

        CoordinatePoint(double d, double d2, double d3, double d4, double d5) {
            this.latitude = d;
            this.longitude = d2;
            this.height = d3;
            this.east = d4;
            this.north = d5;
        }
    }
}
