package com.qianhe.yct.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.TypedValue;
import androidx.core.content.ContextCompat;
import com.github.mikephil.charting.charts.RadarChart;
import com.github.mikephil.charting.renderer.RadarChartRenderer;
import com.qianhe.baselib.bean.SAVEntity;
import com.qianhe.yct.R$color;
import com.tencent.smtt.sdk.TbsListener;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class StarMapRadarRenderer extends RadarChartRenderer {
    private static final String[] ANGLE_LABELS = {"0°", "30°", "60°", "90°", "120°", "150°", "180°", "210°", "240°", "270°", "300°", "330°"};
    private float angleLabelBaseline;
    private int bgColor;
    private int colorBds;
    private int colorGal;
    private int colorGln;
    private int colorGps;
    private int colorGray;
    private int colorIrnss;
    private int colorQzss;
    private int colorSbas;
    private final Set<String> hideSet;
    private final boolean isPad;
    private Paint mAngleLabelPaint;
    private Paint mAngleLinePaint;
    private float mContentHeight;
    private final Context mContext;
    private Paint mOrbitPaint;
    private Paint mSatellitePaint;
    private final List<SAVEntity> mSavList;
    private Paint mStarIdPaint;
    private float satelliteRadius;
    private final Set<Integer> sauPrnSet;
    private float starIdBaseline;

    public StarMapRadarRenderer(Context context, boolean z, RadarChart radarChart) {
        super(radarChart, radarChart.getAnimator(), radarChart.getViewPortHandler());
        this.mContentHeight = 0.0f;
        this.mSavList = new ArrayList();
        this.sauPrnSet = new HashSet();
        this.hideSet = new HashSet();
        this.mContext = context;
        this.isPad = z;
        initPaints();
    }

    private void initPaints() {
        this.bgColor = ContextCompat.getColor(this.mContext, R$color.bg_base);
        this.colorGray = ContextCompat.getColor(this.mContext, R$color.gray);
        this.colorGps = ContextCompat.getColor(this.mContext, R$color.blue_light);
        this.colorGln = ContextCompat.getColor(this.mContext, R$color.red_light);
        this.colorSbas = ContextCompat.getColor(this.mContext, R$color.orange);
        this.colorBds = ContextCompat.getColor(this.mContext, R$color.green_light);
        this.colorGal = ContextCompat.getColor(this.mContext, R$color.purple_200);
        this.colorQzss = ContextCompat.getColor(this.mContext, R$color.teal_200);
        this.colorIrnss = ContextCompat.getColor(this.mContext, R$color.yellow);
        this.satelliteRadius = dpToPx(20.0f);
        Paint paint = new Paint(1);
        this.mOrbitPaint = paint;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.mOrbitPaint.setColor(-7829368);
        this.mOrbitPaint.setStrokeWidth(2.0f);
        Paint paint2 = new Paint(1);
        this.mSatellitePaint = paint2;
        paint2.setColor(this.colorGray);
        this.mSatellitePaint.setAlpha(TbsListener.ErrorCode.STARTDOWNLOAD_API_LEVEL_BELOW_FROYO);
        Paint paint3 = new Paint(1);
        this.mStarIdPaint = paint3;
        paint3.setColor(ContextCompat.getColor(this.mContext, R$color.text_black));
        this.mStarIdPaint.setTextSize(dpToPx(20.0f));
        Paint paint4 = this.mStarIdPaint;
        Typeface typeface = Typeface.DEFAULT_BOLD;
        paint4.setTypeface(typeface);
        Paint paint5 = this.mStarIdPaint;
        Paint.Align align = Paint.Align.CENTER;
        paint5.setTextAlign(align);
        Paint.FontMetrics fontMetrics = this.mStarIdPaint.getFontMetrics();
        float f = fontMetrics.descent;
        this.starIdBaseline = ((f - fontMetrics.ascent) / 2.0f) - f;
        Paint paint6 = new Paint(1);
        this.mAngleLinePaint = paint6;
        paint6.setColor(-7829368);
        this.mAngleLinePaint.setStrokeWidth(2.0f);
        this.mAngleLinePaint.setStyle(style);
        Paint paint7 = new Paint(1);
        this.mAngleLabelPaint = paint7;
        paint7.setColor(-16776961);
        this.mAngleLabelPaint.setTextSize(dpToPx(20.0f));
        this.mAngleLabelPaint.setTypeface(typeface);
        this.mAngleLabelPaint.setTextAlign(align);
        Paint.FontMetrics fontMetrics2 = this.mAngleLabelPaint.getFontMetrics();
        float f2 = fontMetrics2.descent;
        this.angleLabelBaseline = ((f2 - fontMetrics2.ascent) / 2.0f) - f2;
    }

    public float getContentHeight() {
        return this.mContentHeight;
    }

    @Override // com.github.mikephil.charting.renderer.RadarChartRenderer, com.github.mikephil.charting.renderer.DataRenderer
    public void drawExtras(Canvas canvas) {
        canvas.drawColor(this.bgColor);
        RectF contentRect = this.mViewPortHandler.getContentRect();
        float fCenterX = contentRect.centerX();
        float fCenterY = contentRect.centerY();
        float fHeight = ((this.isPad ? contentRect.height() : contentRect.width()) / 2.0f) * 0.8f;
        float f = fHeight * 0.5f;
        float f2 = f + (0.75f * f);
        canvas.drawCircle(fCenterX, fCenterY, fHeight, this.mOrbitPaint);
        canvas.drawCircle(fCenterX, fCenterY, f2, this.mOrbitPaint);
        canvas.drawCircle(fCenterX, fCenterY, f, this.mOrbitPaint);
        int i = 0;
        while (i < 12) {
            double radians = (float) Math.toRadians((i * 30.0f) - 90.0f);
            float fCos = (float) Math.cos(radians);
            float fSin = (float) Math.sin(radians);
            float f3 = fCenterY;
            float f4 = fCenterX;
            Canvas canvas2 = canvas;
            canvas2.drawLine(f4, f3, fCenterX + (fHeight * fCos), (fHeight * fSin) + fCenterY, this.mAngleLinePaint);
            fCenterX = f4;
            fCenterY = f3;
            float f5 = 1.06f * fHeight;
            canvas2.drawText(ANGLE_LABELS[i], fCenterX + (fCos * f5), (f5 * fSin) + fCenterY + this.angleLabelBaseline, this.mAngleLabelPaint);
            i++;
            canvas = canvas2;
        }
        Canvas canvas3 = canvas;
        drawAziTxt("30°", canvas3, f2, fCenterX, fCenterY);
        drawAziTxt("60°", canvas3, f, fCenterX, fCenterY);
        this.mContentHeight = ((this.mAngleLinePaint.descent() - this.mAngleLinePaint.ascent()) + fHeight) * 2.0f;
        drawStar(canvas3, fCenterX, fCenterY, fHeight, f, f2);
    }

    private float dpToPx(float f) {
        return TypedValue.applyDimension(1, f, this.mContext.getResources().getDisplayMetrics());
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawStar(android.graphics.Canvas r14, float r15, float r16, float r17, float r18, float r19) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.view.StarMapRadarRenderer.drawStar(android.graphics.Canvas, float, float, float, float, float):void");
    }

    private void drawAziTxt(String str, Canvas canvas, float f, float f2, float f3) {
        float f4 = f * 1.05f;
        canvas.drawText(str, f2 + (((float) Math.cos(Math.toRadians(-90.0d))) * f4), f3 + (f4 * ((float) Math.sin(Math.toRadians(-90.0d)))) + this.angleLabelBaseline, this.mAngleLabelPaint);
    }

    public void refreshSAV(List<SAVEntity> list) {
        this.mSavList.clear();
        this.mSavList.addAll(list);
    }

    public void refreshSAU(List<Integer> list) {
        this.sauPrnSet.clear();
        this.sauPrnSet.addAll(list);
    }

    public void refreshShowType(List<String> list) {
        this.hideSet.clear();
        if (list != null) {
            this.hideSet.addAll(list);
        }
    }
}
