package com.qianhe.yct.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.tencent.smtt.sdk.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class MulPointAreaPreView extends View {
    private static final int DRAG = 1;
    private static final int NONE = 0;
    private static final int ZOOM = 2;
    private double INITSCALE;
    private final List<double[]> baseBoundaryCoords;
    private Bitmap bucketBitmap;
    private final List<double[]> coordsList;
    private double[] currentPoint;
    private double[] gaussL;
    private double[] gaussR;
    private boolean isManualOperated;
    private boolean isWorkMode;
    private final float[] lastFingerPos1;
    private final float[] lastFingerPos2;
    private float lastTouchX;
    private float lastTouchY;
    private Paint linePaint;
    private int mode;
    private double offsetX;
    private double offsetY;
    private Paint pointPaint;
    private double scaleRatio;
    private float smoothedDist;
    private Paint textPaint;

    public MulPointAreaPreView(Context context) {
        this(context, null);
    }

    public MulPointAreaPreView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MulPointAreaPreView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.offsetX = 0.0d;
        this.offsetY = 0.0d;
        this.lastFingerPos1 = new float[2];
        this.lastFingerPos2 = new float[2];
        this.mode = 0;
        this.isManualOperated = false;
        this.coordsList = new ArrayList();
        this.baseBoundaryCoords = new ArrayList();
        this.INITSCALE = 1.0d;
        this.scaleRatio = 1.0d;
        this.isWorkMode = false;
        this.gaussL = new double[3];
        this.gaussR = new double[3];
        this.smoothedDist = 0.0f;
        init();
    }

    private void init() {
        this.bucketBitmap = BitmapFactory.decodeResource(getResources(), R$drawable.icon_work_center_tooth);
        Paint paint = new Paint(1);
        this.linePaint = paint;
        paint.setColor(ContextCompat.getColor(getContext(), R$color.map_line));
        this.linePaint.setStrokeWidth(dpToPx(2.0f));
        this.linePaint.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint(1);
        this.pointPaint = paint2;
        paint2.setColor(ContextCompat.getColor(getContext(), R$color.red));
        this.pointPaint.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint(1);
        this.textPaint = paint3;
        paint3.setColor(ContextCompat.getColor(getContext(), R$color.map_line));
        this.textPaint.setTextSize(spToPx(14.0f));
    }

    private float dpToPx(float f) {
        return TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }

    private float spToPx(float f) {
        return TypedValue.applyDimension(2, f, getResources().getDisplayMetrics());
    }

    private float getScreenX(double d) {
        return (float) ((d * this.scaleRatio) + this.offsetX);
    }

    private float getScreenY(double d) {
        return (float) (this.offsetY - (d * this.scaleRatio));
    }

    public void setWorkMode(boolean z) {
        this.isWorkMode = z;
        double d = z ? 30.0d : 1.0d;
        this.INITSCALE = d;
        this.scaleRatio = d;
        invalidate();
    }

    public void setProjectPoint(List<double[]> list) {
        if (list == null) {
            return;
        }
        this.isManualOperated = false;
        this.coordsList.clear();
        Iterator<double[]> it = list.iterator();
        while (it.hasNext()) {
            this.coordsList.add((double[]) it.next().clone());
        }
        updateBaseBoundary();
        if (getWidth() > 0 && getHeight() > 0) {
            updateContentBounds();
        } else {
            post(new Runnable() { // from class: com.qianhe.yct.view.MulPointAreaPreView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.updateContentBounds();
                }
            });
        }
        invalidate();
    }

    public void addPoint(double[] dArr) {
        if (dArr == null || dArr.length < 2) {
            return;
        }
        this.coordsList.add((double[]) dArr.clone());
        updateBaseBoundary();
        updateContentBounds();
        invalidate();
    }

    public void removePoint(int i) {
        if (i < 0 || i >= this.coordsList.size()) {
            return;
        }
        this.coordsList.remove(i);
        updateBaseBoundary();
        updateContentBounds();
        invalidate();
    }

    public void clearPoints() {
        this.coordsList.clear();
        this.baseBoundaryCoords.clear();
        this.offsetX = 0.0d;
        this.offsetY = 0.0d;
        this.scaleRatio = this.INITSCALE;
        this.smoothedDist = 0.0f;
        this.isManualOperated = false;
        invalidate();
    }

    public void setCurrentPoint(double[] dArr, double[] dArr2) {
        if (dArr != null && dArr2 != null) {
            this.gaussL = (double[]) dArr.clone();
            this.gaussR = (double[]) dArr2.clone();
            this.currentPoint = new double[]{(dArr[0] + dArr2[0]) / 2.0d, (dArr[1] + dArr2[1]) / 2.0d};
        }
        invalidate();
    }

    public void refreshToothType(int i) {
        int i2;
        if (i == 0) {
            i2 = R$drawable.icon_work_left_tooth;
        } else if (i == 2) {
            i2 = R$drawable.icon_work_right_tooth;
        } else {
            i2 = R$drawable.icon_work_center_tooth;
        }
        this.bucketBitmap = BitmapFactory.decodeResource(getResources(), i2);
        invalidate();
    }

    public void locateToStartPoint() {
        if (this.coordsList.isEmpty() || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        this.isManualOperated = true;
        this.scaleRatio = this.INITSCALE;
        double[] dArr = this.coordsList.get(0);
        this.offsetX = (getWidth() / 2.0d) - (dArr[0] * this.scaleRatio);
        this.offsetY = (getHeight() / 2.0d) + (dArr[1] * this.scaleRatio);
        invalidate();
    }

    public void locateToCurrentPoint() {
        if (this.currentPoint == null || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        this.isManualOperated = true;
        this.scaleRatio = this.INITSCALE;
        this.offsetX = (getWidth() / 2.0d) - (this.currentPoint[0] * this.scaleRatio);
        this.offsetY = (getHeight() / 2.0d) + (this.currentPoint[1] * this.scaleRatio);
        invalidate();
    }

    private void updateBaseBoundary() {
        this.baseBoundaryCoords.clear();
        if (this.coordsList.size() < 2) {
            return;
        }
        for (int i = 1; i < this.coordsList.size(); i++) {
            this.baseBoundaryCoords.add(this.coordsList.get(i));
        }
        if (this.baseBoundaryCoords.size() < 2) {
            return;
        }
        double d = 0.0d;
        double d2 = 0.0d;
        for (double[] dArr : this.baseBoundaryCoords) {
            d += dArr[0];
            d2 += dArr[1];
        }
        final double size = d / this.baseBoundaryCoords.size();
        final double size2 = d2 / this.baseBoundaryCoords.size();
        Collections.sort(this.baseBoundaryCoords, new Comparator<double[]>() { // from class: com.qianhe.yct.view.MulPointAreaPreView.1
            @Override // java.util.Comparator
            public int compare(double[] dArr2, double[] dArr3) {
                return Double.compare(Math.atan2(dArr2[1] - size2, dArr2[0] - size), Math.atan2(dArr3[1] - size2, dArr3[0] - size));
            }
        });
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.isManualOperated) {
            return;
        }
        updateContentBounds();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateContentBounds() {
        if (this.coordsList.isEmpty() || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        double dMax = -1.7976931348623157E308d;
        double dMin = Double.MAX_VALUE;
        double dMin2 = Double.MAX_VALUE;
        double dMax2 = -1.7976931348623157E308d;
        for (double[] dArr : this.coordsList) {
            dMin = Math.min(dMin, dArr[0]);
            dMax = Math.max(dMax, dArr[0]);
            dMin2 = Math.min(dMin2, dArr[1]);
            dMax2 = Math.max(dMax2, dArr[1]);
        }
        this.offsetX = (getWidth() / 2.0d) - (((dMin + dMax) / 2.0d) * this.scaleRatio);
        this.offsetY = (getHeight() / 2.0d) + (((dMin2 + dMax2) / 2.0d) * this.scaleRatio);
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.coordsList.isEmpty()) {
            return;
        }
        int size = this.coordsList.size();
        if (size >= 2) {
            double[] dArr = this.coordsList.get(0);
            float screenX = getScreenX(dArr[0]);
            float screenY = getScreenY(dArr[1]);
            for (int i = 1; i < size; i++) {
                double[] dArr2 = this.coordsList.get(i);
                canvas.drawLine(screenX, screenY, getScreenX(dArr2[0]), getScreenY(dArr2[1]), this.linePaint);
            }
            if (this.baseBoundaryCoords.size() >= 2) {
                int i2 = 0;
                while (i2 < this.baseBoundaryCoords.size()) {
                    double[] dArr3 = this.baseBoundaryCoords.get(i2);
                    List<double[]> list = this.baseBoundaryCoords;
                    int i3 = i2 + 1;
                    double[] dArr4 = list.get(i3 % list.size());
                    if (this.baseBoundaryCoords.size() == 2 && i2 == 1) {
                        break;
                    }
                    canvas.drawLine(getScreenX(dArr3[0]), getScreenY(dArr3[1]), getScreenX(dArr4[0]), getScreenY(dArr4[1]), this.linePaint);
                    i2 = i3;
                }
            }
        }
        float fDpToPx = dpToPx(5.0f);
        int i4 = 0;
        while (i4 < size) {
            double[] dArr5 = this.coordsList.get(i4);
            float screenX2 = getScreenX(dArr5[0]);
            float screenY2 = getScreenY(dArr5[1]);
            this.pointPaint.setColor(i4 == 0 ? -16776961 : -65536);
            canvas.drawCircle(screenX2, screenY2, fDpToPx, this.pointPaint);
            StringBuilder sb = new StringBuilder();
            sb.append("P");
            i4++;
            sb.append(i4);
            canvas.drawText(sb.toString(), screenX2 + fDpToPx, screenY2 - fDpToPx, this.textPaint);
        }
        if (this.isWorkMode) {
            drawBucket(canvas);
        }
        drawScaleBar(canvas);
    }

    private void drawBucket(Canvas canvas) {
        double[] dArr;
        if (this.bucketBitmap == null || (dArr = this.gaussL) == null || this.gaussR == null) {
            return;
        }
        float screenX = getScreenX(dArr[0]);
        float screenY = getScreenY(this.gaussL[1]);
        float screenX2 = getScreenX(this.gaussR[0]) - screenX;
        float degrees = (float) Math.toDegrees(Math.atan2(getScreenY(this.gaussR[1]) - screenY, screenX2));
        float fSqrt = (float) Math.sqrt((screenX2 * screenX2) + (r3 * r3));
        if (fSqrt < 0.1f) {
            return;
        }
        float f = this.smoothedDist;
        if (f == 0.0f || Math.abs(fSqrt - f) > 100.0f) {
            this.smoothedDist = fSqrt;
        } else {
            this.smoothedDist = (this.smoothedDist * 0.9f) + (fSqrt * 0.1f);
        }
        canvas.save();
        canvas.translate(screenX, screenY);
        canvas.rotate(degrees);
        float f2 = this.smoothedDist;
        canvas.drawBitmap(this.bucketBitmap, (Rect) null, new RectF(0.0f, 0.0f, f2, (this.bucketBitmap.getHeight() / this.bucketBitmap.getWidth()) * f2), (Paint) null);
        canvas.restore();
    }

    private void drawScaleBar(Canvas canvas) {
        float fDpToPx = dpToPx(40.0f);
        String str = String.format(Locale.ROOT, "%.2fm", Double.valueOf(fDpToPx / this.scaleRatio));
        Paint paint = new Paint(1);
        paint.setColor(WebView.NIGHT_MODE_COLOR);
        paint.setStrokeWidth(dpToPx(2.0f));
        float fDpToPx2 = dpToPx(10.0f);
        float height = getHeight() - dpToPx(10.0f);
        canvas.drawLine(fDpToPx2, height, fDpToPx2 + fDpToPx, height, paint);
        canvas.drawText(str, fDpToPx2, height - dpToPx(5.0f), this.textPaint);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001c  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r21) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.view.MulPointAreaPreView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    private double spacing(MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return Math.sqrt((x * x) + (y * y));
    }

    private double spacing(float[] fArr, float[] fArr2) {
        float f = fArr[0] - fArr2[0];
        float f2 = fArr[1] - fArr2[1];
        return Math.sqrt((f * f) + (f2 * f2));
    }
}
