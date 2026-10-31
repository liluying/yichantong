package com.qh.xcad;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.LruCache;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.qh.xcad.XCadItemAreaPoint;
import com.qh.xcad.XCadParseClient;
import com.qh.xcad.XCadView;
import com.tencent.smtt.sdk.WebView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class XCadView extends View {
    private static final long DOUBLE_TAP_TIMEOUT = 300;
    private static final int MAX_LABELS = 1500;
    private static final String TAG = "XCadView";
    private ValueAnimator alphaAnimator;
    private int backgroundColor;
    private Bitmap cacheBitmap;
    private Canvas cacheCanvas;
    private boolean cacheDirty;
    private boolean cadTouchEnable;
    private int carHighlightColor;
    private final Set<Integer> carSelectedIndices;
    private Paint compassPaint;
    private Path compassPath;
    private volatile String currentPath;
    private double cx;
    private double cy;
    private final float density;
    private boolean doubleClickResetViewStatus;
    private boolean drawScaleBarEnable;
    private boolean drawSelectedLineNumText;
    private final Paint emptyTextPaint;
    private OnEntityClickListener entityClickListener;
    private Paint excavatorBucketPaint;
    private Path excavatorBucketPath;
    private Path excavatorBucketTeethPath;
    private final Map<Integer, Path> fillByColor;
    private final Paint fillPaint;
    private final Paint fitBtnBgPaint;
    private final Paint fitBtnIconPaint;
    private double fitScale;
    private boolean fitted;
    private boolean followVehicle;
    private final Paint glowPaint;
    private int highlightColorP;
    private final Paint highlightCore;
    private final Paint highlightHalo;
    private Path highlightPath;
    private final float highlightWidth;
    private double[] hitBounds;
    private int[] hitIndices;
    private final float hitTolPx;
    private Paint itemAreaPointPaint;
    private Path itemAreaPointPath;
    private int lastH;
    private long lastTapTime;
    private float lastTapX;
    private float lastTapY;
    private int lastW;
    private LayerSnappable layerSnappable;
    private Thread loadCadFileThread;
    private float loadingAlpha;
    private final Paint loadingBgPaint;
    private final Paint loadingPaint;
    private float loadingProgress;
    private boolean loadingVisible;
    private int lockEntityLineIndex;
    private int lockHighlightColor;
    private float mapRotateDeg;
    private final List<MarkerHit> markerHits;
    private boolean moved;
    private OnCarSelectedEntityListener onCarSelectedEntityListener;
    private OnExcavatorBucketSelectedEntityListener onExcavatorBucketSelectedEntityListener;
    public OnLoadCadFileListener onLoadCadFileListener;
    private OnMarkerClickListener onMarkerClickListener;
    private boolean pressingFit;
    private ValueAnimator progressAnimator;
    private boolean restoreState;
    private double scale;
    private float scaleBarLenMinUnit;
    private final Paint scaleBarPaint;
    private double scaleRestoreState;
    private final Paint scaleTextPaint;
    private XCadScene scene;
    private boolean selectSingleLine;
    private final Map<Integer, Map<Integer, IndicePointStyle>> selectedIndicePoints;
    private final Set<Integer> selectedIndices;
    private final Map<Integer, Set<Integer>> selectedLightPoints;
    private OnSelectionChangedListener selectionListener;
    private boolean showControls;
    private final Runnable singleTapRunnable;
    private float startFocalX;
    private float startFocalY;
    private double startScale;
    private float startSpan;
    private double startTx;
    private double startTy;
    private final Map<Integer, Path> strokeByColor;
    private final Paint strokePaint;
    private final Paint textPaint;
    private final List<XCadEntity> texts;
    private double toleranceWorld;
    private int touchHighlightCheckColor;
    private int touchHighlightColor;
    private final int touchSlop;
    private double tx;
    private double txRestoreState;
    private double ty;
    private double tyRestoreState;
    private Paint vehiclePaint;
    private Path vehiclePath;
    private XCadVehiclePoint vehiclePoint;
    private float vehiclePulse;
    private ValueAnimator vehiclePulseAnimator;
    private XCadExcavatorBucket xCadExcavatorBucket;
    private XCadItemAreaPoint xCadItemAreaPoint;
    private static final LruCache<String, XCadScene> SCENE_CACHE = new LruCache<>(1);
    private static final String[] AUX_LAYER_KEYWORDS = {"defpoints", "dim", "dimension", "leader", "mleader", "border", "frame", Proj4Keyword.title, "note", "annot", "text", "mtext", "标注", "尺寸", "图框", "图签", "标题栏", "边框", "外框", "图幅", "引线", "注释", "说明", "文字"};
    private static final Handler mainHandler = new Handler(Looper.getMainLooper());

    public interface LayerSnappable {
        boolean isSnappable(String str);
    }

    public interface OnCarSelectedEntityListener {
        void onEntitySelect(int i, XCadEntity xCadEntity);
    }

    public interface OnEntityClickListener {
        void onEntityCancel(int i, XCadEntity xCadEntity);

        void onEntityClear();

        void onEntityClick(int i, XCadEntity xCadEntity);
    }

    public interface OnExcavatorBucketSelectedEntityListener {
        void onEntitySelect(int i, XCadEntity xCadEntity, int i2, XCadEntity xCadEntity2);
    }

    public interface OnLoadCadFileListener {
        void onLoadCadFileFinished(boolean z);
    }

    public interface OnMarkerClickListener {
        void onMarkerClick(int i, int i2);
    }

    public interface OnSelectionChangedListener {
        void onSelectionChanged(Set<Integer> set);
    }

    private static double clamp(double d, double d2, double d3) {
        return d < d2 ? d2 : d > d3 ? d3 : d;
    }

    private static double segDist2(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d3 - d;
        double d8 = d4 - d2;
        double d9 = (d7 * d7) + (d8 * d8);
        double d10 = d9 <= 0.0d ? 0.0d : (((d5 - d) * d7) + ((d6 - d2) * d8)) / d9;
        double d11 = d10 >= 0.0d ? d10 : 0.0d;
        if (d11 > 1.0d) {
            d11 = 1.0d;
        }
        double d12 = d5 - (d + (d7 * d11));
        double d13 = d6 - (d2 + (d11 * d8));
        return (d12 * d12) + (d13 * d13);
    }

    public void setVehicleHeading(float f) {
        XCadVehiclePoint xCadVehiclePoint = this.vehiclePoint;
        if (xCadVehiclePoint != null) {
            xCadVehiclePoint.heading = f;
            invalidate();
        }
    }

    private static final class IndicePointStyle {
        final int color;
        final Integer displayNumber;

        IndicePointStyle(int i, Integer num) {
            this.color = i;
            this.displayNumber = num;
        }
    }

    public XCadView(Context context) {
        this(context, null);
    }

    public XCadView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.loadingProgress = 0.0f;
        this.loadingAlpha = 0.0f;
        this.loadingVisible = false;
        Paint paint = new Paint(1);
        this.loadingBgPaint = paint;
        Paint paint2 = new Paint(1);
        this.loadingPaint = paint2;
        this.strokeByColor = new LinkedHashMap();
        this.fillByColor = new LinkedHashMap();
        this.texts = new ArrayList();
        this.hitIndices = new int[0];
        this.hitBounds = new double[0];
        this.selectedIndices = new LinkedHashSet();
        this.selectedIndicePoints = new HashMap();
        this.selectedLightPoints = new HashMap();
        this.carSelectedIndices = new LinkedHashSet();
        this.lockEntityLineIndex = -1;
        this.scale = 1.0d;
        this.tx = 0.0d;
        this.ty = 0.0d;
        this.fitScale = 1.0d;
        this.scaleRestoreState = 1.0d;
        this.txRestoreState = 0.0d;
        this.tyRestoreState = 0.0d;
        this.restoreState = false;
        this.fitted = false;
        this.lastW = 0;
        this.lastH = 0;
        this.mapRotateDeg = 0.0f;
        this.startScale = 1.0d;
        this.startTx = 0.0d;
        this.startTy = 0.0d;
        this.startFocalX = 0.0f;
        this.startFocalY = 0.0f;
        this.startSpan = 0.0f;
        this.moved = false;
        this.pressingFit = false;
        Paint paint3 = new Paint(1);
        this.strokePaint = paint3;
        Paint paint4 = new Paint(1);
        this.fillPaint = paint4;
        this.textPaint = new Paint(1);
        Paint paint5 = new Paint(1);
        this.highlightHalo = paint5;
        Paint paint6 = new Paint(1);
        this.highlightCore = paint6;
        Paint paint7 = new Paint(1);
        this.emptyTextPaint = paint7;
        Paint paint8 = new Paint(1);
        this.fitBtnBgPaint = paint8;
        Paint paint9 = new Paint(1);
        this.fitBtnIconPaint = paint9;
        this.backgroundColor = -14803426;
        this.touchHighlightColor = -13769985;
        this.touchHighlightCheckColor = -14101924;
        this.carHighlightColor = -14101924;
        this.lockHighlightColor = -14101924;
        this.highlightColorP = -2382022;
        this.cadTouchEnable = false;
        this.doubleClickResetViewStatus = false;
        this.showControls = false;
        this.drawSelectedLineNumText = true;
        this.selectSingleLine = true;
        this.drawScaleBarEnable = true;
        this.followVehicle = false;
        this.lastTapTime = 0L;
        this.lastTapX = 0.0f;
        this.lastTapY = 0.0f;
        this.singleTapRunnable = new Runnable() { // from class: com.qh.xcad.XCadView.2
            @Override // java.lang.Runnable
            public void run() {
                XCadView xCadView = XCadView.this;
                if (xCadView.handleMarkerTap(xCadView.startFocalX, XCadView.this.startFocalY)) {
                    return;
                }
                XCadView xCadView2 = XCadView.this;
                xCadView2.handleTap(xCadView2.startFocalX, XCadView.this.startFocalY);
            }
        };
        this.cacheDirty = true;
        this.itemAreaPointPaint = new Paint(1);
        this.itemAreaPointPath = new Path();
        this.scaleBarPaint = new Paint(1);
        this.scaleTextPaint = new Paint(1);
        this.scaleBarLenMinUnit = 70.0f;
        this.compassPaint = new Paint(1);
        this.compassPath = new Path();
        this.vehiclePulse = 0.0f;
        this.glowPaint = new Paint(1);
        this.vehiclePaint = new Paint(1);
        this.vehiclePath = new Path();
        this.excavatorBucketPaint = new Paint(1);
        this.excavatorBucketPath = new Path();
        this.excavatorBucketTeethPath = new Path();
        this.highlightPath = new Path();
        this.toleranceWorld = 0.2d;
        this.markerHits = new ArrayList();
        float f = getResources().getDisplayMetrics().density;
        this.density = f;
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.hitTolPx = 10.0f * f;
        this.highlightWidth = 3.0f * f;
        Paint.Style style = Paint.Style.STROKE;
        paint3.setStyle(style);
        paint3.setStrokeWidth(0.0f);
        paint4.setStyle(Paint.Style.FILL);
        paint5.setStyle(style);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint5.setStrokeCap(cap);
        Paint.Join join = Paint.Join.ROUND;
        paint5.setStrokeJoin(join);
        paint6.setStyle(style);
        paint6.setStrokeCap(cap);
        paint6.setStrokeJoin(join);
        paint7.setColor(-1275068417);
        paint7.setTextSize(14.0f * f);
        paint7.setTextAlign(Paint.Align.CENTER);
        paint8.setColor(Color.argb(40, 255, 255, 255));
        paint9.setColor(-1);
        paint9.setStyle(style);
        paint9.setStrokeWidth(f * 2.0f);
        paint9.setStrokeCap(cap);
        paint.setColor(872415231);
        paint2.setColor(-15695416);
        setBackgroundColor(this.backgroundColor);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Handler handler = mainHandler;
        if (handler != null) {
            handler.removeCallbacks(this.singleTapRunnable);
            handler.removeCallbacksAndMessages(null);
        }
        this.currentPath = null;
        stopLoadCadFileThread();
        ValueAnimator valueAnimator = this.vehiclePulseAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.vehiclePulseAnimator = null;
        }
        ValueAnimator valueAnimator2 = this.progressAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
    }

    private void stopLoadCadFileThread() {
        Thread thread = this.loadCadFileThread;
        if (thread == null || thread.isInterrupted()) {
            return;
        }
        this.loadCadFileThread.interrupt();
    }

    public void setCadFilePath(final String str) {
        if (str == null || str.isEmpty()) {
            setScene(null);
            return;
        }
        if (str.equals(this.currentPath)) {
            return;
        }
        stopLoadCadFileThread();
        this.currentPath = str;
        XCadScene xCadScene = SCENE_CACHE.get(str);
        if (xCadScene != null) {
            DxfTextSupplement.mergeMissingTexts(xCadScene, str);
            setScene(xCadScene);
            OnLoadCadFileListener onLoadCadFileListener = this.onLoadCadFileListener;
            if (onLoadCadFileListener != null) {
                onLoadCadFileListener.onLoadCadFileFinished(true);
                return;
            }
            return;
        }
        mainHandler.post(new Runnable() { // from class: com.qh.xcad.XCadView$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.startLoading();
            }
        });
        Thread thread = new Thread(new Runnable() { // from class: com.qh.xcad.XCadView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                XCadView.$r8$lambda$G0isJ8w5B05zxAIF3sAJMZ4hXYE(this.f$0, str, str);
            }
        }, "xcad-parse");
        this.loadCadFileThread = thread;
        thread.start();
    }

    public static /* synthetic */ void $r8$lambda$G0isJ8w5B05zxAIF3sAJMZ4hXYE(final XCadView xCadView, String str, final String str2) {
        XCadParseClient.Result blocking = XCadParseClient.parseBlocking(xCadView.getContext(), str);
        final XCadScene xCadSceneDecode = null;
        if (blocking.ok()) {
            try {
                xCadSceneDecode = XCadBinary.decode(blocking.data);
                DxfTextSupplement.mergeMissingTexts(xCadSceneDecode, str);
            } catch (Exception e) {
                String str3 = "decode failed: " + ("解码失败：" + e.getMessage());
            } catch (OutOfMemoryError unused) {
                String str4 = "decode OOM: " + str + ",文件过大，内存不足（渲染阶段）";
            }
        } else {
            String str5 = blocking.message;
            String str6 = "parse failed(status=" + blocking.status + "): " + blocking.message + " path=" + str + ":" + ((str5 == null || str5.isEmpty()) ? "解析失败" : blocking.message);
        }
        mainHandler.post(new Runnable() { // from class: com.qh.xcad.XCadView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                XCadView.m1008$r8$lambda$ko1jylEJpNhbYZU0p5VWjtEYaM(this.f$0, xCadSceneDecode, str2);
            }
        });
    }

    /* renamed from: $r8$lambda$ko1jylEJpNhbYZU0p5V-WjtEYaM, reason: not valid java name */
    public static /* synthetic */ void m1008$r8$lambda$ko1jylEJpNhbYZU0p5VWjtEYaM(final XCadView xCadView, XCadScene xCadScene, String str) {
        if (xCadScene == null) {
            xCadView.getClass();
            mainHandler.post(new Runnable() { // from class: com.qh.xcad.XCadView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    XCadView.$r8$lambda$sesjN0LUO9ruzQ5xKdMc9dFm7hY(this.f$0);
                }
            });
            return;
        }
        if (str.equals(xCadView.currentPath) && xCadView.currentPath != null) {
            xCadView.setScene(xCadScene);
            if (xCadView.currentPath == null) {
                return;
            }
            OnLoadCadFileListener onLoadCadFileListener = xCadView.onLoadCadFileListener;
            if (onLoadCadFileListener != null) {
                onLoadCadFileListener.onLoadCadFileFinished(true);
            }
            xCadView.finishLoading();
            SCENE_CACHE.put(str, xCadScene);
        }
    }

    public static /* synthetic */ void $r8$lambda$sesjN0LUO9ruzQ5xKdMc9dFm7hY(XCadView xCadView) {
        if (xCadView.currentPath == null) {
            return;
        }
        xCadView.setScene(null);
        xCadView.finishLoading();
        OnLoadCadFileListener onLoadCadFileListener = xCadView.onLoadCadFileListener;
        if (onLoadCadFileListener != null) {
            onLoadCadFileListener.onLoadCadFileFinished(false);
        }
    }

    private void drawLoading(Canvas canvas) {
        if (this.loadingVisible) {
            int i = (int) (this.density * 8.0f);
            float width = getWidth();
            float height = getHeight() - i;
            float height2 = getHeight();
            this.loadingBgPaint.setAlpha((int) (this.loadingAlpha * 80.0f));
            this.loadingPaint.setAlpha((int) (this.loadingAlpha * 255.0f));
            canvas.drawRect(0.0f, height, width, height2, this.loadingBgPaint);
            canvas.drawRect(0.0f, height, (width * this.loadingProgress) + 0.0f, height2, this.loadingPaint);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoading() {
        this.loadingVisible = true;
        this.loadingAlpha = 1.0f;
        this.loadingProgress = 0.0f;
        ValueAnimator valueAnimator = this.progressAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 0.5f);
        this.progressAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(250L);
        this.progressAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.qh.xcad.XCadView$$ExternalSyntheticLambda7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                XCadView.m1006$r8$lambda$MwmpWCAI3klcNcwBP_gEnw6t6A(this.f$0, valueAnimator2);
            }
        });
        this.progressAnimator.start();
    }

    /* renamed from: $r8$lambda$MwmpWCAI3klcNcwBP-_gEnw6t6A, reason: not valid java name */
    public static /* synthetic */ void m1006$r8$lambda$MwmpWCAI3klcNcwBP_gEnw6t6A(XCadView xCadView, ValueAnimator valueAnimator) {
        xCadView.getClass();
        xCadView.loadingProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        xCadView.invalidate();
    }

    private void finishLoading() {
        ValueAnimator valueAnimator = this.progressAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.loadingProgress, 1.0f);
        this.progressAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(180L);
        this.progressAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.qh.xcad.XCadView$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                XCadView.m1007$r8$lambda$OizAzLC0kuPPMqMWf1fpZVLME(this.f$0, valueAnimator2);
            }
        });
        this.progressAnimator.start();
        this.progressAnimator.addListener(new AnonymousClass1());
    }

    /* renamed from: $r8$lambda$OizAzLC0kuPPMqMWf-1fpZVL-ME, reason: not valid java name */
    public static /* synthetic */ void m1007$r8$lambda$OizAzLC0kuPPMqMWf1fpZVLME(XCadView xCadView, ValueAnimator valueAnimator) {
        xCadView.getClass();
        xCadView.loadingProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        xCadView.invalidate();
    }

    /* renamed from: com.qh.xcad.XCadView$1, reason: invalid class name */
    class AnonymousClass1 extends AnimatorListenerAdapter {
        AnonymousClass1() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            XCadView.this.alphaAnimator = ValueAnimator.ofFloat(1.0f, 0.0f);
            XCadView.this.alphaAnimator.setDuration(350L);
            XCadView.this.alphaAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.qh.xcad.XCadView$1$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    XCadView.AnonymousClass1.$r8$lambda$SUndb1cYGEvTpgrxauhDRwms9KA(this.f$0, valueAnimator);
                }
            });
            XCadView.this.alphaAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.qh.xcad.XCadView.1.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    XCadView.this.loadingVisible = false;
                    XCadView.this.invalidate();
                }
            });
            XCadView.this.alphaAnimator.start();
        }

        public static /* synthetic */ void $r8$lambda$SUndb1cYGEvTpgrxauhDRwms9KA(AnonymousClass1 anonymousClass1, ValueAnimator valueAnimator) {
            XCadView.this.loadingAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            XCadView.this.invalidate();
        }
    }

    public void setScene(XCadScene xCadScene) {
        int i;
        this.scene = xCadScene;
        this.selectedIndices.clear();
        this.selectedIndicePoints.clear();
        this.selectedLightPoints.clear();
        this.carSelectedIndices.clear();
        this.lockEntityLineIndex = -1;
        this.fitted = false;
        build();
        int i2 = this.lastW;
        if (i2 > 0 && (i = this.lastH) > 0) {
            fit(i2, i);
            this.fitted = true;
        }
        this.cacheDirty = true;
        invalidate();
        notifySelection();
    }

    public XCadScene getScene() {
        return this.scene;
    }

    public XCadPoint getScenePoint(int i, int i2) {
        XCadScene xCadScene;
        List<XCadEntity> list;
        XCadEntity xCadEntity;
        if (i < 0 || i2 < 0 || (xCadScene = this.scene) == null || (list = xCadScene.entities) == null || i >= list.size() || (xCadEntity = list.get(i)) == null || i2 >= xCadEntity.pointCount()) {
            return null;
        }
        return new XCadPoint(xCadEntity.pointX(i2), xCadEntity.pointY(i2));
    }

    public void fitToScreen() {
        int i;
        int i2 = this.lastW;
        if (i2 <= 0 || (i = this.lastH) <= 0 || this.scene == null) {
            return;
        }
        fit(i2, i);
        invalidate();
    }

    public void setTouchHighlightColor(int i) {
        this.touchHighlightColor = i;
        invalidate();
    }

    public void setCarHighlightColor(int i) {
        this.carHighlightColor = i;
        invalidate();
    }

    public void setCadBackgroundColor(int i) {
        this.backgroundColor = i;
        setBackgroundColor(i);
        invalidate();
    }

    public void setCadTouchEnable(boolean z) {
        this.cadTouchEnable = z;
    }

    public void setDoubleClickResetViewStatus(boolean z) {
        this.doubleClickResetViewStatus = z;
        Handler handler = mainHandler;
        if (handler == null || z) {
            return;
        }
        handler.removeCallbacks(this.singleTapRunnable);
    }

    public void setShowControls(boolean z) {
        this.showControls = z;
        invalidate();
    }

    public void setDrawSelectedLineNumText(boolean z) {
        this.drawSelectedLineNumText = z;
        invalidate();
    }

    public void setSelectSingleLine(boolean z) {
        this.selectSingleLine = z;
    }

    public void setOnSelectionChangedListener(OnSelectionChangedListener onSelectionChangedListener) {
        this.selectionListener = onSelectionChangedListener;
    }

    public void setLayerSnappable(LayerSnappable layerSnappable) {
        this.layerSnappable = layerSnappable;
    }

    public Set<Integer> getSelectedIndices() {
        return new LinkedHashSet(this.selectedIndices);
    }

    public HashMap<Integer, Map<Integer, Integer>> getSelectedIndicePoints() {
        HashMap<Integer, Map<Integer, Integer>> map = new HashMap<>();
        for (Map.Entry<Integer, Map<Integer, IndicePointStyle>> entry : this.selectedIndicePoints.entrySet()) {
            HashMap map2 = new HashMap();
            for (Map.Entry<Integer, IndicePointStyle> entry2 : entry.getValue().entrySet()) {
                map2.put(entry2.getKey(), Integer.valueOf(entry2.getValue().color));
            }
            map.put(entry.getKey(), map2);
        }
        return map;
    }

    public void addSelectLine(int i) {
        XCadScene xCadScene = this.scene;
        if (xCadScene != null && i >= 0 && i <= xCadScene.entities.size() && !this.selectedIndices.contains(Integer.valueOf(i))) {
            this.selectedIndices.add(Integer.valueOf(i));
            invalidate();
        }
    }

    public void addSelectIndicePoint(int i, int i2) {
        addSelectIndicePoint(i, i2, this.touchHighlightColor, null);
    }

    public void addSelectIndicePointCheck(int i, int i2) {
        addSelectIndicePoint(i, i2, this.touchHighlightCheckColor, null);
    }

    public void addSelectIndicePointCheck(int i, int i2, Integer num) {
        addSelectIndicePoint(i, i2, this.touchHighlightCheckColor, num);
    }

    public void addSelectIndicePoint(int i, int i2, int i3) {
        addSelectIndicePoint(i, i2, i3, null);
    }

    public void addSelectIndicePoint(int i, int i2, int i3, Integer num) {
        Map<Integer, IndicePointStyle> map = this.selectedIndicePoints.get(Integer.valueOf(i));
        if (map == null) {
            map = new HashMap<>();
            this.selectedIndicePoints.put(Integer.valueOf(i), map);
        }
        map.put(Integer.valueOf(i2), new IndicePointStyle(i3, num));
        invalidate();
    }

    public void removeSelectIndicePoint(int i, int i2) {
        Map<Integer, IndicePointStyle> map = this.selectedIndicePoints.get(Integer.valueOf(i));
        if (map == null || !map.containsKey(Integer.valueOf(i2))) {
            return;
        }
        map.remove(Integer.valueOf(i2));
        if (map.isEmpty()) {
            this.selectedIndicePoints.remove(Integer.valueOf(i));
        }
        invalidate();
    }

    public void clearSelectIndicePoint() {
        if (this.selectedIndicePoints.size() > 0) {
            this.selectedIndicePoints.clear();
            invalidate();
        }
    }

    public void retainCheckedSelectIndicePoints() {
        if (this.selectedIndicePoints.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Integer, Map<Integer, IndicePointStyle>> entry : this.selectedIndicePoints.entrySet()) {
            Map<Integer, IndicePointStyle> value = entry.getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Map.Entry<Integer, IndicePointStyle> entry2 : value.entrySet()) {
                if (entry2.getValue().color != this.touchHighlightCheckColor) {
                    arrayList2.add(entry2.getKey());
                }
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                value.remove((Integer) it.next());
            }
            if (value.isEmpty()) {
                arrayList.add(entry.getKey());
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.selectedIndicePoints.remove((Integer) it2.next());
        }
        invalidate();
    }

    public void addSelectLightPoint(int i, int i2) {
        List<XCadEntity> list;
        XCadScene xCadScene = this.scene;
        if (xCadScene == null || (list = xCadScene.entities) == null || i < 0 || i >= list.size()) {
            return;
        }
        Set<Integer> hashSet = this.selectedLightPoints.get(Integer.valueOf(i));
        if (hashSet == null) {
            hashSet = new HashSet<>();
            this.selectedLightPoints.put(Integer.valueOf(i), hashSet);
        }
        if (hashSet.contains(Integer.valueOf(i2))) {
            return;
        }
        hashSet.add(Integer.valueOf(i2));
        invalidate();
    }

    public void removeSelectLightPoint(int i, int i2) {
        Set<Integer> set = this.selectedLightPoints.get(Integer.valueOf(i));
        if (set == null || !set.contains(Integer.valueOf(i2))) {
            return;
        }
        set.remove(Integer.valueOf(i2));
        invalidate();
    }

    public void clearSelectLightPoint() {
        if (this.selectedLightPoints.size() > 0) {
            this.selectedLightPoints.clear();
            invalidate();
        }
    }

    public void setLockEntityLineIndex(int i) {
        this.lockEntityLineIndex = i;
        invalidate();
    }

    public void unLockEntityLineIndex() {
        setLockEntityLineIndex(-1);
    }

    private List<Double> buildEpsilons() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 6; i++) {
            arrayList.add(Double.valueOf(0.5d * Math.pow(2.0d, i)));
        }
        return arrayList;
    }

    private List<XCadPoint> simplifyDP(List<XCadPoint> list, double d) {
        if (list == null) {
            return list;
        }
        boolean[] zArr = new boolean[list.size()];
        zArr[list.size() - 1] = true;
        zArr[0] = true;
        simplifyDPRec(list, zArr, 0, list.size() - 1, d * d);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            if (zArr[i]) {
                arrayList.add(list.get(i));
            }
        }
        return arrayList;
    }

    private void simplifyDPRec(List<XCadPoint> list, boolean[] zArr, int i, int i2, double d) {
        XCadPoint xCadPoint = list.get(i);
        XCadPoint xCadPoint2 = list.get(i2);
        double d2 = xCadPoint.x;
        double d3 = xCadPoint.y;
        double d4 = xCadPoint2.x;
        double d5 = xCadPoint2.y;
        int i3 = i + 1;
        int i4 = -1;
        double d6 = 0.0d;
        while (i3 < i2) {
            XCadPoint xCadPoint3 = list.get(i3);
            double d7 = d4;
            double d8 = d5;
            double d9 = d3;
            double dPointSegDist2 = pointSegDist2(xCadPoint3.x, xCadPoint3.y, d2, d9, d7, d8);
            if (dPointSegDist2 > d6) {
                i4 = i3;
                d6 = dPointSegDist2;
            }
            i3++;
            d3 = d9;
            d4 = d7;
            d5 = d8;
        }
        if (d6 > d) {
            zArr[i4] = true;
            int i5 = i4;
            simplifyDPRec(list, zArr, i, i5, d);
            simplifyDPRec(list, zArr, i5, i2, d);
        }
    }

    private double pointSegDist2(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7;
        double d8;
        double d9 = d5 - d3;
        double d10 = d6 - d4;
        if (d9 == 0.0d && d10 == 0.0d) {
            d7 = d - d3;
            d8 = d2 - d4;
        } else {
            double dMax = Math.max(0.0d, Math.min(1.0d, (((d - d3) * d9) + ((d2 - d4) * d10)) / ((d9 * d9) + (d10 * d10))));
            d7 = d - (d3 + (d9 * dMax));
            d8 = d2 - (d4 + (dMax * d10));
        }
        return (d7 * d7) + (d8 * d8);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0166  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void build() {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qh.xcad.XCadView.build():void");
    }

    private Path strokeFor(int i) {
        Path path = this.strokeByColor.get(Integer.valueOf(i));
        if (path != null) {
            return path;
        }
        Path path2 = new Path();
        this.strokeByColor.put(Integer.valueOf(i), path2);
        return path2;
    }

    private Path fillFor(int i) {
        Path path = this.fillByColor.get(Integer.valueOf(i));
        if (path != null) {
            return path;
        }
        Path path2 = new Path();
        this.fillByColor.put(Integer.valueOf(i), path2);
        return path2;
    }

    private void addPolyline(Path path, XCadEntity xCadEntity) {
        path.moveTo((float) (xCadEntity.pointX(0) - this.cx), (float) (-(xCadEntity.pointY(0) - this.cy)));
        int iPointCount = xCadEntity.pointCount();
        for (int i = 1; i < iPointCount; i++) {
            path.lineTo((float) (xCadEntity.pointX(i) - this.cx), (float) (-(xCadEntity.pointY(i) - this.cy)));
        }
        if (xCadEntity.isClosed()) {
            path.close();
        }
    }

    private void addPolygon(Path path, XCadEntity xCadEntity) {
        path.moveTo((float) (xCadEntity.pointX(0) - this.cx), (float) (-(xCadEntity.pointY(0) - this.cy)));
        int iPointCount = xCadEntity.pointCount();
        for (int i = 1; i < iPointCount; i++) {
            path.lineTo((float) (xCadEntity.pointX(i) - this.cx), (float) (-(xCadEntity.pointY(i) - this.cy)));
        }
        path.close();
    }

    public void addEndPoint(Path path, XCadEntity xCadEntity, double d) {
        float fPointX = (float) (xCadEntity.pointX(0) - this.cx);
        float f = (float) (-(xCadEntity.pointY(0) - this.cy));
        float f2 = (float) d;
        path.moveTo(fPointX - f2, f);
        path.lineTo(fPointX + f2, f);
        path.moveTo(fPointX, f - f2);
        path.lineTo(fPointX, f + f2);
    }

    private void addDashed(Path path, XCadEntity xCadEntity, double d, double d2) {
        double d3;
        double d4;
        XCadEntity xCadEntity2 = xCadEntity;
        int iPointCount = xCadEntity2.pointCount();
        double d5 = d + d2;
        int i = xCadEntity2.isClosed() ? iPointCount : iPointCount - 1;
        int i2 = 0;
        while (i2 < i) {
            int i3 = i2 + 1;
            int i4 = i3 % iPointCount;
            double dPointX = xCadEntity2.pointX(i2) - this.cx;
            double d6 = -(xCadEntity2.pointY(i2) - this.cy);
            int i5 = iPointCount;
            double d7 = d5;
            double dPointX2 = xCadEntity2.pointX(i4) - this.cx;
            double d8 = -(xCadEntity2.pointY(i4) - this.cy);
            double d9 = dPointX2 - dPointX;
            double d10 = d8 - d6;
            double dSqrt = Math.sqrt((d9 * d9) + (d10 * d10));
            double d11 = 0.0d;
            if (dSqrt > 0.0d) {
                if (dSqrt / d7 > 4000.0d) {
                    path.moveTo((float) dPointX, (float) d6);
                    path.lineTo((float) dPointX2, (float) d8);
                } else {
                    double d12 = d9 / dSqrt;
                    double d13 = d10 / dSqrt;
                    boolean z = true;
                    while (d11 < dSqrt) {
                        double dMin = Math.min(d11 + (z ? d : d2), dSqrt);
                        if (z) {
                            d3 = d12;
                            d4 = dSqrt;
                            path.moveTo((float) (dPointX + (d12 * d11)), (float) (d6 + (d11 * d13)));
                            path.lineTo((float) ((d3 * dMin) + dPointX), (float) ((d13 * dMin) + d6));
                        } else {
                            d3 = d12;
                            d4 = dSqrt;
                        }
                        z = !z;
                        d11 = dMin;
                        dSqrt = d4;
                        d12 = d3;
                    }
                }
            }
            xCadEntity2 = xCadEntity;
            iPointCount = i5;
            i2 = i3;
            d5 = d7;
        }
    }

    private void fit(int i, int i2) {
        XCadScene xCadScene = this.scene;
        if (xCadScene == null) {
            return;
        }
        double[] dArr = xCadScene.bbox;
        double d = this.density * 24.0f;
        double d2 = dArr[3] - dArr[0];
        double d3 = dArr[4] - dArr[1];
        if (d2 <= 0.0d) {
            d2 = 1.0d;
        }
        if (d3 <= 0.0d) {
            d3 = 1.0d;
        }
        double d4 = i;
        double d5 = d * 2.0d;
        double d6 = i2;
        double dMin = Math.min((d4 - d5) / d2, (d6 - d5) / d3);
        if (!XCadView$$ExternalSyntheticBackport0.m(dMin) || dMin <= 0.0d) {
            dMin = 1.0d;
        }
        this.fitScale = dMin;
        this.scale = dMin;
        this.tx = d4 / 2.0d;
        this.ty = d6 / 2.0d;
        this.cacheDirty = true;
    }

    private double minScale() {
        return this.fitScale * 0.1d;
    }

    private double maxScale() {
        return this.fitScale * 800000.0d;
    }

    private void zoomAt(float f, float f2, double d) {
        if ((this.scaleBarLenMinUnit * this.density) / (this.startScale * d) > 0.02d) {
            maxScale();
        }
        maxScale();
        maxScale();
        double dClamp = clamp(this.scale * d, minScale(), maxScale());
        double d2 = this.scale;
        if (dClamp == d2) {
            return;
        }
        double d3 = f;
        double d4 = (d3 - this.tx) / d2;
        double d5 = f2;
        double d6 = (d5 - this.ty) / d2;
        this.scale = dClamp;
        this.tx = d3 - (d4 * dClamp);
        this.ty = d5 - (d6 * dClamp);
        this.cacheDirty = true;
        invalidate();
    }

    private void handleTapOrDoubleTap(float f, float f2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        float f3 = f - this.lastTapX;
        float f4 = f2 - this.lastTapY;
        if (jCurrentTimeMillis - this.lastTapTime <= DOUBLE_TAP_TIMEOUT) {
            float f5 = (f3 * f3) + (f4 * f4);
            int i = this.touchSlop;
            if (f5 <= i * i * 4.0f) {
                mainHandler.removeCallbacks(this.singleTapRunnable);
                this.lastTapTime = 0L;
                fitToScreen();
                return;
            }
        }
        this.lastTapTime = jCurrentTimeMillis;
        this.lastTapX = f;
        this.lastTapY = f2;
        Handler handler = mainHandler;
        handler.removeCallbacks(this.singleTapRunnable);
        handler.postDelayed(this.singleTapRunnable, DOUBLE_TAP_TIMEOUT);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.showControls && actionMasked == 0 && insideFitButton(motionEvent.getX(), motionEvent.getY())) {
            this.pressingFit = true;
            return true;
        }
        if (this.pressingFit) {
            if (actionMasked == 1) {
                if (insideFitButton(motionEvent.getX(), motionEvent.getY())) {
                    fitToScreen();
                }
                this.pressingFit = false;
            } else if (actionMasked == 3) {
                this.pressingFit = false;
            }
            return true;
        }
        if (actionMasked == 0) {
            startGesture(motionEvent, -1);
            this.moved = false;
            return true;
        }
        if (actionMasked == 1) {
            if (!this.moved && this.cadTouchEnable) {
                if (this.doubleClickResetViewStatus) {
                    handleTapOrDoubleTap(this.startFocalX, this.startFocalY);
                    return true;
                }
                if (handleMarkerTap(this.startFocalX, this.startFocalY)) {
                    return true;
                }
                handleTap(this.startFocalX, this.startFocalY);
            }
            return true;
        }
        if (actionMasked != 2) {
            if (actionMasked != 3) {
                if (actionMasked != 5) {
                    if (actionMasked == 6) {
                        startGesture(motionEvent, motionEvent.getActionIndex());
                        return true;
                    }
                    return super.onTouchEvent(motionEvent);
                }
                startGesture(motionEvent, -1);
                this.moved = true;
            }
            return true;
        }
        float[] fArrFocalSpan = focalSpan(motionEvent, -1);
        float f = fArrFocalSpan[0];
        float f2 = fArrFocalSpan[1];
        float f3 = fArrFocalSpan[2];
        if (!this.moved) {
            boolean z = Math.hypot((double) (f - this.startFocalX), (double) (f2 - this.startFocalY)) > ((double) this.touchSlop);
            if (motionEvent.getPointerCount() <= 1 && !z) {
                return true;
            }
            this.moved = true;
        }
        double d = (this.startSpan <= 0.0f || f3 <= 0.0f) ? 1.0d : f3 / r15;
        if ((this.scaleBarLenMinUnit * this.density) / (this.startScale * d) > 0.02d) {
            maxScale();
        }
        maxScale();
        maxScale();
        double dClamp = clamp(this.startScale * d, minScale(), maxScale());
        double d2 = this.startFocalX - this.startTx;
        double d3 = this.startScale;
        double d4 = (this.startFocalY - this.startTy) / d3;
        this.scale = dClamp;
        this.tx = f - ((d2 / d3) * dClamp);
        this.ty = f2 - (d4 * dClamp);
        this.cacheDirty = true;
        invalidate();
        return true;
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (action == 1 || action == 3) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    private void startGesture(MotionEvent motionEvent, int i) {
        float[] fArrFocalSpan = focalSpan(motionEvent, i);
        this.startFocalX = fArrFocalSpan[0];
        this.startFocalY = fArrFocalSpan[1];
        this.startSpan = fArrFocalSpan[2];
        this.startScale = this.scale;
        this.startTx = this.tx;
        this.startTy = this.ty;
    }

    private float[] focalSpan(MotionEvent motionEvent, int i) {
        int pointerCount = motionEvent.getPointerCount();
        float fHypot = 0.0f;
        int i2 = 0;
        float x = 0.0f;
        float y = 0.0f;
        for (int i3 = 0; i3 < pointerCount; i3++) {
            if (i3 != i) {
                x += motionEvent.getX(i3);
                y += motionEvent.getY(i3);
                i2++;
            }
        }
        if (i2 == 0) {
            i2 = 1;
        }
        float f = i2;
        float f2 = x / f;
        float f3 = y / f;
        for (int i4 = 0; i4 < pointerCount; i4++) {
            if (i4 != i) {
                fHypot += (float) Math.hypot(motionEvent.getX(i4) - f2, motionEvent.getY(i4) - f3);
            }
        }
        return new float[]{f2, f3, fHypot / f};
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 8) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue != 0.0f) {
                zoomAt(motionEvent.getX(), motionEvent.getY(), Math.pow(1.2d, axisValue));
                return true;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMarkerTap(float f, float f2) {
        if (this.markerHits.isEmpty()) {
            return false;
        }
        for (MarkerHit markerHit : this.markerHits) {
            float f3 = f - markerHit.bubbleX;
            float f4 = f2 - markerHit.bubbleY;
            float f5 = (f3 * f3) + (f4 * f4);
            float f6 = markerHit.bubbleRadius;
            if (f5 <= f6 * f6) {
                OnMarkerClickListener onMarkerClickListener = this.onMarkerClickListener;
                if (onMarkerClickListener != null) {
                    onMarkerClickListener.onMarkerClick(markerHit.entityIndex, markerHit.pointIndex);
                }
                return true;
            }
            float f7 = f - markerHit.sx;
            float f8 = f2 - markerHit.sy;
            float f9 = this.density * 10.0f;
            if ((f7 * f7) + (f8 * f8) <= f9 * f9) {
                OnMarkerClickListener onMarkerClickListener2 = this.onMarkerClickListener;
                if (onMarkerClickListener2 != null) {
                    onMarkerClickListener2.onMarkerClick(markerHit.entityIndex, markerHit.pointIndex);
                }
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTap(float f, float f2) {
        XCadScene xCadScene;
        int i;
        double d;
        double d2;
        int i2;
        int i3;
        double d3 = this.scale;
        if (d3 <= 0.0d || this.hitIndices.length == 0 || (xCadScene = this.scene) == null) {
            return;
        }
        double d4 = (f - this.tx) / d3;
        double d5 = (f2 - this.ty) / d3;
        double d6 = this.hitTolPx / d3;
        double d7 = d6 * d6;
        List<XCadEntity> list = xCadScene.entities;
        int i4 = -1;
        double d8 = Double.POSITIVE_INFINITY;
        int i5 = 0;
        while (true) {
            int[] iArr = this.hitIndices;
            if (i5 >= iArr.length) {
                break;
            }
            int i6 = i5 * 4;
            int i7 = i5;
            double[] dArr = this.hitBounds;
            if (d4 < dArr[i6] - d6 || d4 > dArr[i6 + 2] + d6 || d5 < dArr[i6 + 1] - d6 || d5 > dArr[i6 + 3] + d6) {
                i = i4;
                d = d4;
                d2 = d5;
                i2 = i7;
            } else {
                i3 = iArr[i7];
                i = i4;
                d = d4;
                d2 = d5;
                i2 = i7;
                double dEntityDist2 = entityDist2(list.get(i3), d, d2);
                if (dEntityDist2 < d8) {
                    d8 = dEntityDist2;
                }
                i5 = i2 + 1;
                d5 = d2;
                d4 = d;
                i4 = i3;
            }
            i3 = i;
            i5 = i2 + 1;
            d5 = d2;
            d4 = d;
            i4 = i3;
        }
        int i8 = i4;
        if (i8 < 0 || d8 > d7) {
            if (this.selectedIndices.isEmpty()) {
                return;
            }
            this.selectedIndices.clear();
            retainCheckedSelectIndicePoints();
            OnEntityClickListener onEntityClickListener = this.entityClickListener;
            if (onEntityClickListener != null) {
                onEntityClickListener.onEntityClear();
            }
        } else if (!this.selectedIndices.remove(Integer.valueOf(i8))) {
            if (this.selectSingleLine) {
                this.selectedIndices.clear();
                retainCheckedSelectIndicePoints();
            }
            this.selectedIndices.add(Integer.valueOf(i8));
            Map<Integer, IndicePointStyle> map = this.selectedIndicePoints.get(Integer.valueOf(i8));
            if (map == null) {
                map = new HashMap<>();
                this.selectedIndicePoints.put(Integer.valueOf(i8), map);
            }
            XCadEntity xCadEntity = list.get(i8);
            if (xCadEntity.points != null) {
                for (int i9 = 0; i9 < xCadEntity.pointCount(); i9++) {
                    IndicePointStyle indicePointStyle = map.get(Integer.valueOf(i9));
                    if (indicePointStyle == null || indicePointStyle.color != this.touchHighlightCheckColor) {
                        map.put(Integer.valueOf(i9), new IndicePointStyle(this.touchHighlightColor, null));
                    }
                }
            }
            OnEntityClickListener onEntityClickListener2 = this.entityClickListener;
            if (onEntityClickListener2 != null && i8 >= 0) {
                onEntityClickListener2.onEntityClick(i8, xCadEntity);
            }
        } else {
            Map<Integer, IndicePointStyle> map2 = this.selectedIndicePoints.get(Integer.valueOf(i8));
            if (map2 != null) {
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<Integer, IndicePointStyle> entry : map2.entrySet()) {
                    if (entry.getValue().color != this.touchHighlightCheckColor) {
                        arrayList.add(entry.getKey());
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    map2.remove((Integer) it.next());
                }
                if (map2.isEmpty()) {
                    this.selectedIndicePoints.remove(Integer.valueOf(i8));
                }
            }
            OnEntityClickListener onEntityClickListener3 = this.entityClickListener;
            if (onEntityClickListener3 != null && i8 >= 0) {
                onEntityClickListener3.onEntityCancel(i8, list.get(i8));
            }
        }
        invalidate();
        notifySelection();
    }

    private double entityDist2(XCadEntity xCadEntity, double d, double d2) {
        int iPointCount = xCadEntity.pointCount();
        int i = 1;
        if (iPointCount == 1) {
            double dPointX = (xCadEntity.pointX(0) - this.cx) - d;
            double d3 = (-(xCadEntity.pointY(0) - this.cy)) - d2;
            return (dPointX * dPointX) + (d3 * d3);
        }
        double dPointX2 = xCadEntity.pointX(0) - this.cx;
        double d4 = -(xCadEntity.pointY(0) - this.cy);
        double d5 = Double.POSITIVE_INFINITY;
        while (i < iPointCount) {
            double dPointX3 = xCadEntity.pointX(i) - this.cx;
            double d6 = -(xCadEntity.pointY(i) - this.cy);
            double dSegDist2 = segDist2(dPointX2, d4, dPointX3, d6, d, d2);
            if (dSegDist2 < d5) {
                d5 = dSegDist2;
            }
            i++;
            dPointX2 = dPointX3;
            d4 = d6;
        }
        if (xCadEntity.isClosed() && iPointCount > 2) {
            double dSegDist22 = segDist2(dPointX2, d4, xCadEntity.pointX(0) - this.cx, -(xCadEntity.pointY(0) - this.cy), d, d2);
            if (dSegDist22 < d5) {
                return dSegDist22;
            }
        }
        return d5;
    }

    private boolean isSnappable(String str) {
        LayerSnappable layerSnappable = this.layerSnappable;
        if (layerSnappable != null) {
            return layerSnappable.isSnappable(str);
        }
        if (str != null && !str.isEmpty()) {
            String lowerCase = str.trim().toLowerCase(Locale.ROOT);
            if (lowerCase.isEmpty()) {
                return true;
            }
            for (String str2 : AUX_LAYER_KEYWORDS) {
                if (lowerCase.contains(str2)) {
                    return false;
                }
            }
        }
        return true;
    }

    private void notifySelection() {
        OnSelectionChangedListener onSelectionChangedListener = this.selectionListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onSelectionChanged(new LinkedHashSet(this.selectedIndices));
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.lastW = i;
        this.lastH = i2;
        if (this.scene == null) {
            return;
        }
        fit(i, i2);
        this.fitted = true;
        if (!this.restoreState || i <= 0 || i2 <= 0) {
            return;
        }
        this.tx = this.txRestoreState;
        this.ty = this.tyRestoreState;
        this.scale = this.scaleRestoreState;
        this.restoreState = false;
    }

    public double getTx() {
        return this.tx;
    }

    public void setTxRestoreState(double d) {
        this.txRestoreState = d;
        this.restoreState = true;
        invalidate();
    }

    public double getTy() {
        return this.ty;
    }

    public void setTyRestoreState(double d) {
        this.tyRestoreState = d;
        this.restoreState = true;
        invalidate();
    }

    public double getScale() {
        return this.scale;
    }

    public void setScaleRestoreState(double d) {
        this.scaleRestoreState = d;
        this.restoreState = true;
        invalidate();
    }

    private void buildCache() {
        if (this.scene == null) {
            return;
        }
        Bitmap bitmap = this.cacheBitmap;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.cacheBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.cacheBitmap);
        this.cacheCanvas = canvas;
        canvas.translate((float) this.tx, (float) this.ty);
        Canvas canvas2 = this.cacheCanvas;
        double d = this.scale;
        canvas2.scale((float) d, (float) d);
        for (Map.Entry<Integer, Path> entry : this.fillByColor.entrySet()) {
            this.fillPaint.setColor(entry.getKey().intValue());
            this.cacheCanvas.drawPath(entry.getValue(), this.fillPaint);
        }
        for (Map.Entry<Integer, Path> entry2 : this.strokeByColor.entrySet()) {
            this.strokePaint.setColor(entry2.getKey().intValue());
            this.cacheCanvas.drawPath(entry2.getValue(), this.strokePaint);
        }
        this.cacheDirty = false;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawColor(this.backgroundColor);
        if (this.scene == null || !hasContent()) {
            drawFitButton(canvas);
            drawLoading(canvas);
            return;
        }
        if (this.cacheBitmap == null || this.cacheDirty) {
            buildCache();
        }
        canvas.drawBitmap(this.cacheBitmap, 0.0f, 0.0f, (Paint) null);
        drawXCadItemAreaPoint(canvas);
        drawTexts(canvas);
        drawHighlights(canvas, this.selectedIndices, this.touchHighlightColor);
        drawHighlights(canvas, this.carSelectedIndices, this.carHighlightColor);
        drawLockEntityLine(canvas, this.lockHighlightColor);
        drawVisLinePoints(canvas);
        drawPointLight(canvas);
        drawExcavatorBucket(canvas);
        drawVehicle(canvas);
        drawFitButton(canvas);
        drawCompass(canvas);
        drawLoading(canvas);
        drawScaleBar(canvas);
    }

    private void drawXCadItemAreaPoint(Canvas canvas) {
        XCadItemAreaPoint.XCadItemPointInfo[] xCadItemPointInfoArr;
        int length;
        XCadView xCadView;
        XCadItemAreaPoint xCadItemAreaPoint = this.xCadItemAreaPoint;
        if (xCadItemAreaPoint == null || (xCadItemPointInfoArr = xCadItemAreaPoint.itemAreaPosition) == null || !xCadItemAreaPoint.visible || (length = xCadItemPointInfoArr.length) == 0) {
            return;
        }
        float f = this.density * 8.0f;
        int i = 0;
        if (length == 1) {
            XCadItemAreaPoint.XCadItemPointInfo xCadItemPointInfo = xCadItemPointInfoArr[0];
            if (xCadItemPointInfo != null) {
                drawXCadItemAreaCicle(canvas, xCadItemPointInfo.x, xCadItemPointInfo.y, f);
                if (xCadItemPointInfo.infoVis) {
                    drawXCadItemAreaText(canvas, xCadItemPointInfo.x, xCadItemPointInfo.y, f, xCadItemPointInfo.info);
                    return;
                }
            }
            return;
        }
        XCadView xCadView2 = this;
        xCadView2.itemAreaPointPath.reset();
        boolean z = true;
        for (int i2 = 0; i2 < length; i2++) {
            XCadItemAreaPoint.XCadItemPointInfo xCadItemPointInfo2 = xCadView2.xCadItemAreaPoint.itemAreaPosition[i2];
            if (xCadItemPointInfo2 != null) {
                float[] fArrWorldToScreen = worldToScreen(xCadItemPointInfo2.x, xCadItemPointInfo2.y);
                if (z) {
                    xCadView2.itemAreaPointPath.moveTo(fArrWorldToScreen[0], fArrWorldToScreen[1]);
                    z = false;
                } else {
                    xCadView2.itemAreaPointPath.lineTo(fArrWorldToScreen[0], fArrWorldToScreen[1]);
                }
            }
        }
        if (xCadView2.xCadItemAreaPoint.xCadItemAreaStyle.closed) {
            xCadView2.itemAreaPointPath.close();
        }
        if (xCadView2.xCadItemAreaPoint.xCadItemAreaStyle.fill) {
            xCadView2.itemAreaPointPaint.setStyle(Paint.Style.FILL);
            xCadView2.itemAreaPointPaint.setColor(1428738652);
            canvas.drawPath(xCadView2.itemAreaPointPath, xCadView2.itemAreaPointPaint);
        }
        xCadView2.itemAreaPointPaint.setStyle(Paint.Style.STROKE);
        xCadView2.itemAreaPointPaint.setColor(1294520924);
        xCadView2.itemAreaPointPaint.setStrokeWidth(xCadView2.density * 8.0f);
        canvas.drawPath(xCadView2.itemAreaPointPath, xCadView2.itemAreaPointPaint);
        xCadView2.itemAreaPointPaint.setColor(-14101924);
        xCadView2.itemAreaPointPaint.setStrokeWidth(xCadView2.density * 3.0f);
        canvas.drawPath(xCadView2.itemAreaPointPath, xCadView2.itemAreaPointPaint);
        if (xCadView2.xCadItemAreaPoint.xCadItemAreaStyle.drawPointCircle) {
            int i3 = 0;
            while (i3 < length) {
                XCadItemAreaPoint.XCadItemPointInfo xCadItemPointInfo3 = xCadView2.xCadItemAreaPoint.itemAreaPosition[i3];
                if (xCadItemPointInfo3 == null) {
                    xCadView = xCadView2;
                } else {
                    xCadView = xCadView2;
                    xCadView.drawXCadItemAreaCicle(canvas, xCadItemPointInfo3.x, xCadItemPointInfo3.y, f);
                }
                i3++;
                xCadView2 = xCadView;
            }
        }
        XCadView xCadView3 = xCadView2;
        while (i < length) {
            XCadItemAreaPoint.XCadItemPointInfo xCadItemPointInfo4 = xCadView3.xCadItemAreaPoint.itemAreaPosition[i];
            if (xCadItemPointInfo4 != null && xCadItemPointInfo4.infoVis) {
                xCadView3.drawXCadItemAreaText(canvas, xCadItemPointInfo4.x, xCadItemPointInfo4.y, f, xCadItemPointInfo4.info);
            }
            i++;
            xCadView3 = this;
        }
    }

    private void drawXCadItemAreaText(Canvas canvas, double d, double d2, float f, String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        float[] fArrWorldToScreen = worldToScreen(d, d2);
        float f2 = fArrWorldToScreen[0];
        float f3 = fArrWorldToScreen[1];
        canvas.save();
        this.itemAreaPointPaint.setStyle(Paint.Style.FILL);
        this.itemAreaPointPaint.setColor(-1);
        this.itemAreaPointPaint.setTextSize(this.density * 14.0f);
        this.itemAreaPointPaint.setTextAlign(Paint.Align.CENTER);
        canvas.drawText(str, f2, ((f3 - f) - (this.density * 5.0f)) - this.itemAreaPointPaint.getFontMetrics().bottom, this.itemAreaPointPaint);
        canvas.restore();
    }

    private void drawXCadItemAreaCicle(Canvas canvas, double d, double d2, float f) {
        float[] fArrWorldToScreen = worldToScreen(d, d2);
        float f2 = fArrWorldToScreen[0];
        float f3 = fArrWorldToScreen[1];
        canvas.save();
        canvas.translate(f2, f3);
        this.itemAreaPointPaint.setStyle(Paint.Style.FILL);
        this.itemAreaPointPaint.setColor(-14101924);
        canvas.drawCircle(0.0f, 0.0f, f, this.itemAreaPointPaint);
        this.itemAreaPointPaint.setStyle(Paint.Style.STROKE);
        this.itemAreaPointPaint.setColor(-1);
        this.itemAreaPointPaint.setStrokeWidth(this.density * 2.0f);
        canvas.drawCircle(0.0f, 0.0f, f, this.itemAreaPointPaint);
        canvas.restore();
    }

    public void setDrawScaleBarEnable(boolean z) {
        this.drawScaleBarEnable = z;
        invalidate();
    }

    private void drawScaleBar(Canvas canvas) {
        String str;
        if (this.drawScaleBarEnable) {
            float f = this.scaleBarLenMinUnit * this.density;
            float width = (getWidth() - f) / 2.0f;
            float f2 = width + f;
            float height = getHeight() - (this.density * 10.0f);
            double d = f / this.scale;
            if (d >= 1000.0d) {
                str = String.format(Locale.US, "%.1f km", Double.valueOf(d / 1000.0d));
            } else {
                str = String.format(Locale.US, "%.2f m", Double.valueOf(d));
            }
            this.scaleBarPaint.setColor(-1);
            this.scaleBarPaint.setStrokeWidth(this.density * 2.0f);
            canvas.drawLine(width, height, f2, height, this.scaleBarPaint);
            canvas.drawLine(width, height - (this.density * 8.0f), width, height, this.scaleBarPaint);
            canvas.drawLine(f2, height - (this.density * 8.0f), f2, height, this.scaleBarPaint);
            this.scaleTextPaint.setColor(-1);
            this.scaleTextPaint.setTextSize(this.density * 13.0f);
            this.scaleTextPaint.setTextAlign(Paint.Align.CENTER);
            canvas.drawText(str, (width + f2) / 2.0f, height - (this.density * 6.0f), this.scaleTextPaint);
        }
    }

    private void drawLockEntityLine(Canvas canvas, int i) {
        int i2;
        List<XCadEntity> list;
        XCadScene xCadScene = this.scene;
        if (xCadScene != null && (i2 = this.lockEntityLineIndex) >= 0 && (list = xCadScene.entities) != null && i2 < list.size()) {
            paintHighlight(canvas, this.scene.entities.get(this.lockEntityLineIndex), i, this.lockEntityLineIndex);
        }
    }

    private void drawCompass(Canvas canvas) {
        float f = this.density;
        float f2 = f * 30.0f;
        float f3 = 30.0f * f;
        float f4 = f * 12.0f;
        this.compassPaint.setStyle(Paint.Style.STROKE);
        this.compassPaint.setColor(-1);
        this.compassPaint.setStrokeWidth(this.density * 3.0f);
        canvas.save();
        canvas.rotate(-this.mapRotateDeg, f2, f3);
        this.compassPath.reset();
        this.compassPath.moveTo(f2, f3 - f4);
        float f5 = 0.6f * f4;
        float f6 = f3 + f4;
        this.compassPath.lineTo(f2 - f5, f6);
        this.compassPath.lineTo(f5 + f2, f6);
        this.compassPath.close();
        this.compassPaint.setStyle(Paint.Style.FILL);
        this.compassPaint.setColor(-1);
        canvas.drawPath(this.compassPath, this.compassPaint);
        Paint paint = new Paint(1);
        paint.setColor(-1);
        paint.setTextSize(this.density * 12.0f);
        paint.setTextAlign(Paint.Align.CENTER);
        canvas.drawText("N", f2, f6 + (this.density * 15.0f), paint);
        canvas.restore();
    }

    private void startVehiclePulse() {
        ValueAnimator valueAnimator = this.vehiclePulseAnimator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.vehiclePulseAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(1200L);
            this.vehiclePulseAnimator.setRepeatCount(-1);
            this.vehiclePulseAnimator.setRepeatMode(2);
            this.vehiclePulseAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
            this.vehiclePulseAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.qh.xcad.XCadView$$ExternalSyntheticLambda6
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    XCadView.m1005$r8$lambda$94UJtPgg5UAgtemmgVfjLuG1uI(this.f$0, valueAnimator2);
                }
            });
            this.vehiclePulseAnimator.start();
        }
    }

    /* renamed from: $r8$lambda$94UJtPgg5UAg-temmgVfjLuG1uI, reason: not valid java name */
    public static /* synthetic */ void m1005$r8$lambda$94UJtPgg5UAgtemmgVfjLuG1uI(XCadView xCadView, ValueAnimator valueAnimator) {
        xCadView.getClass();
        xCadView.vehiclePulse = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        xCadView.invalidate();
    }

    public void setFollowVehicle(boolean z) {
        this.followVehicle = z;
        invalidate();
    }

    public void centerVehiclePointLocation() {
        float[] fArrWorldToScreen;
        if (this.lastW <= 0 || this.lastH <= 0) {
            return;
        }
        XCadVehiclePoint xCadVehiclePoint = this.vehiclePoint;
        if (xCadVehiclePoint != null) {
            fArrWorldToScreen = worldToScreen(xCadVehiclePoint.x, xCadVehiclePoint.y);
        } else {
            XCadExcavatorBucket xCadExcavatorBucket = this.xCadExcavatorBucket;
            fArrWorldToScreen = xCadExcavatorBucket != null ? worldToScreen(xCadExcavatorBucket.xL, xCadExcavatorBucket.yL) : null;
        }
        if (fArrWorldToScreen == null) {
            return;
        }
        float f = this.lastW / 2.0f;
        float f2 = this.lastH / 2.0f;
        this.tx += f - fArrWorldToScreen[0];
        this.ty += f2 - fArrWorldToScreen[1];
        this.cacheDirty = true;
        invalidate();
    }

    public void centerXCadItemAreaPointLocation() {
        float[] fArrWorldToScreen;
        XCadItemAreaPoint.XCadItemPointInfo[] xCadItemPointInfoArr;
        if (this.lastW <= 0 || this.lastH <= 0) {
            return;
        }
        XCadItemAreaPoint xCadItemAreaPoint = this.xCadItemAreaPoint;
        if (xCadItemAreaPoint == null || (xCadItemPointInfoArr = xCadItemAreaPoint.itemAreaPosition) == null || xCadItemPointInfoArr.length <= 0) {
            fArrWorldToScreen = null;
        } else {
            XCadItemAreaPoint.XCadItemPointInfo xCadItemPointInfo = xCadItemPointInfoArr[0];
            fArrWorldToScreen = worldToScreen(xCadItemPointInfo.x, xCadItemPointInfo.y);
        }
        if (fArrWorldToScreen == null) {
            return;
        }
        float f = this.lastW / 2.0f;
        float f2 = this.lastH / 2.0f;
        this.tx += f - fArrWorldToScreen[0];
        this.ty += f2 - fArrWorldToScreen[1];
        this.cacheDirty = true;
        invalidate();
    }

    private void drawVehicle(Canvas canvas) {
        XCadVehiclePoint xCadVehiclePoint = this.vehiclePoint;
        if (xCadVehiclePoint != null && xCadVehiclePoint.visible) {
            float[] fArrWorldToScreen = worldToScreen(xCadVehiclePoint.x, xCadVehiclePoint.y);
            float f = fArrWorldToScreen[0];
            float f2 = fArrWorldToScreen[1];
            XCadVehiclePoint xCadVehiclePoint2 = this.vehiclePoint;
            if (xCadVehiclePoint2.drawAxis) {
                double radians = Math.toRadians(xCadVehiclePoint2.heading);
                double dCos = Math.cos(radians);
                double dSin = Math.sin(radians);
                Paint paint = new Paint(1);
                paint.setColor(-1);
                paint.setStrokeWidth(this.density * 2.0f);
                paint.setStyle(Paint.Style.STROKE);
                drawInfiniteLine(canvas, f, f2, dCos, dSin, paint);
                drawInfiniteLine(canvas, f, f2, -dSin, dCos, paint);
            }
            canvas.save();
            canvas.translate(f, f2);
            float f3 = this.density;
            float f4 = (f3 * 18.0f) + (this.vehiclePulse * 8.0f * f3);
            Paint paint2 = this.glowPaint;
            Paint.Style style = Paint.Style.FILL;
            paint2.setStyle(style);
            this.glowPaint.setColor(872349696);
            canvas.drawCircle(0.0f, 0.0f, f4, this.glowPaint);
            float f5 = this.density * 10.0f;
            this.vehiclePaint.setStyle(style);
            this.vehiclePaint.setColor(-65536);
            canvas.drawCircle(0.0f, 0.0f, f5, this.vehiclePaint);
            Paint paint3 = this.vehiclePaint;
            Paint.Style style2 = Paint.Style.STROKE;
            paint3.setStyle(style2);
            this.vehiclePaint.setColor(-1);
            this.vehiclePaint.setStrokeWidth(this.density * 2.0f);
            canvas.drawCircle(0.0f, 0.0f, f5, this.vehiclePaint);
            if (!Double.isNaN(this.vehiclePoint.heading)) {
                canvas.rotate((float) this.vehiclePoint.heading);
                float f6 = this.density;
                float f7 = f6 * 18.0f;
                float f8 = 14.0f * f6;
                float f9 = f6 * 18.0f;
                this.vehiclePaint.setStyle(style2);
                this.vehiclePaint.setColor(-65536);
                this.vehiclePaint.setStrokeWidth(this.density * 3.0f);
                this.vehiclePaint.setStrokeCap(Paint.Cap.ROUND);
                this.vehiclePaint.setStrokeJoin(Paint.Join.ROUND);
                this.vehiclePath.reset();
                float f10 = -f9;
                float f11 = -f7;
                this.vehiclePath.moveTo(f10, f11);
                float f12 = f11 - (0.4f * f8);
                float f13 = f11 - f8;
                this.vehiclePath.quadTo(f10 * 1.2f, f12, 0.0f, f13);
                this.vehiclePath.quadTo(1.2f * f9, f12, f9, f11);
                canvas.drawPath(this.vehiclePath, this.vehiclePaint);
                this.vehiclePaint.setStyle(style);
                this.vehiclePaint.setColor(-65536);
                this.vehiclePaint.setStrokeCap(Paint.Cap.BUTT);
                this.vehiclePaint.setStrokeJoin(Paint.Join.MITER);
                this.vehiclePath.reset();
                this.vehiclePath.moveTo(0.0f, f13);
                Path path = this.vehiclePath;
                float f14 = this.density;
                path.lineTo((-6.0f) * f14, (f14 * 8.0f) + f13);
                Path path2 = this.vehiclePath;
                float f15 = this.density;
                path2.lineTo(6.0f * f15, f13 + (f15 * 8.0f));
                this.vehiclePath.close();
                canvas.drawPath(this.vehiclePath, this.vehiclePaint);
            }
            canvas.restore();
        }
    }

    public void drawExcavatorBucket(Canvas canvas) {
        XCadExcavatorBucket xCadExcavatorBucket = this.xCadExcavatorBucket;
        if (xCadExcavatorBucket == null || !xCadExcavatorBucket.visible) {
            return;
        }
        double d = xCadExcavatorBucket.xL;
        double d2 = xCadExcavatorBucket.yL;
        double d3 = xCadExcavatorBucket.xR;
        double d4 = xCadExcavatorBucket.yR;
        double d5 = d3 - d;
        double d6 = d4 - d2;
        double dHypot = Math.hypot(d5, d6);
        if (dHypot < 1.0E-6d) {
            return;
        }
        double d7 = d5 / dHypot;
        double d8 = d6 / dHypot;
        double d9 = -d7;
        double d10 = d8 * 1.0d;
        double d11 = 1.0d * d9;
        double d12 = d2 + d11;
        double d13 = d7 * 0.05d;
        double d14 = d8 * 0.05d;
        double d15 = d4 + d11 + d14;
        float[] fArrWorldToScreen = worldToScreen(d, d2);
        float[] fArrWorldToScreen2 = worldToScreen(d3, d4);
        float[] fArrWorldToScreen3 = worldToScreen((d + d10) - d13, d12 - d14);
        float[] fArrWorldToScreen4 = worldToScreen(d3 + d10 + d13, d15);
        this.excavatorBucketPaint.setStyle(Paint.Style.FILL);
        this.excavatorBucketPaint.setColor(-2030053632);
        this.excavatorBucketPath.reset();
        this.excavatorBucketPath.moveTo(fArrWorldToScreen[0], fArrWorldToScreen[1]);
        this.excavatorBucketPath.lineTo(fArrWorldToScreen2[0], fArrWorldToScreen2[1]);
        this.excavatorBucketPath.lineTo(fArrWorldToScreen4[0], fArrWorldToScreen4[1]);
        this.excavatorBucketPath.lineTo(fArrWorldToScreen3[0], fArrWorldToScreen3[1]);
        this.excavatorBucketPath.close();
        canvas.drawPath(this.excavatorBucketPath, this.excavatorBucketPaint);
        this.excavatorBucketTeethPath.reset();
        double d16 = dHypot / 10;
        float[] fArrWorldToScreen5 = worldToScreen(d, d2);
        this.excavatorBucketTeethPath.moveTo(fArrWorldToScreen5[0], fArrWorldToScreen5[1]);
        int i = 0;
        for (int i2 = 10; i < i2; i2 = 10) {
            double d17 = i * d16;
            int i3 = i + 1;
            double d18 = d16;
            double d19 = i3 * d18;
            double d20 = (d17 + d19) * 0.5d;
            double d21 = d;
            float[] fArrWorldToScreen6 = worldToScreen(d + (d7 * d17), (d17 * d8) + d2);
            float[] fArrWorldToScreen7 = worldToScreen(d + (d7 * d20) + (d8 * 0.2d), d2 + (d20 * d8) + (d9 * 0.2d));
            float[] fArrWorldToScreen8 = worldToScreen(d + (d7 * d19), d2 + (d8 * d19));
            this.excavatorBucketTeethPath.lineTo(fArrWorldToScreen6[0], fArrWorldToScreen6[1]);
            this.excavatorBucketTeethPath.lineTo(fArrWorldToScreen7[0], fArrWorldToScreen7[1]);
            this.excavatorBucketTeethPath.lineTo(fArrWorldToScreen8[0], fArrWorldToScreen8[1]);
            i = i3;
            d16 = d18;
            d3 = d3;
            d = d21;
            d2 = d2;
        }
        double d22 = d;
        double d23 = d2;
        double d24 = d3;
        float[] fArrWorldToScreen9 = worldToScreen(d24, d4);
        this.excavatorBucketTeethPath.lineTo(fArrWorldToScreen9[0], fArrWorldToScreen9[1]);
        this.excavatorBucketTeethPath.close();
        this.excavatorBucketPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.excavatorBucketPaint.setColor(-12303292);
        this.excavatorBucketPaint.setStrokeWidth(0.0f);
        canvas.drawPath(this.excavatorBucketTeethPath, this.excavatorBucketPaint);
        Paint paint = this.excavatorBucketPaint;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.excavatorBucketPaint.setColor(-256);
        this.excavatorBucketPaint.setStrokeWidth(this.density * 2.0f);
        canvas.drawPath(this.excavatorBucketPath, this.excavatorBucketPaint);
        if (this.xCadExcavatorBucket.drawAxis) {
            Paint paint2 = new Paint(1);
            paint2.setColor(-1);
            paint2.setStrokeWidth(this.density * 2.0f);
            paint2.setStyle(style);
            float[] fArrWorldToScreen10 = worldToScreen(d22, d23);
            float[] fArrWorldToScreen11 = worldToScreen(d24, d4);
            drawInfiniteLine(canvas, fArrWorldToScreen10[0], fArrWorldToScreen10[1], d7, d8, paint2);
            drawInfiniteLine(canvas, fArrWorldToScreen10[0], fArrWorldToScreen10[1], d8, d9, paint2);
            drawInfiniteLine(canvas, fArrWorldToScreen11[0], fArrWorldToScreen11[1], d7, d8, paint2);
            drawInfiniteLine(canvas, fArrWorldToScreen11[0], fArrWorldToScreen11[1], d8, d9, paint2);
        }
    }

    private void drawInfiniteLine(Canvas canvas, float f, float f2, double d, double d2, Paint paint) {
        canvas.getClipBounds(new Rect());
        float fMax = -3.4028235E38f;
        float fMin = Float.MAX_VALUE;
        if (d != 0.0d) {
            float f3 = (float) d;
            float f4 = (r4.left - f) / f3;
            float f5 = (r4.right - f) / f3;
            fMax = Math.max(-3.4028235E38f, Math.min(f4, f5));
            fMin = Math.min(Float.MAX_VALUE, Math.max(f4, f5));
        }
        if (d2 != 0.0d) {
            float f6 = (float) d2;
            float f7 = (r4.top - f2) / f6;
            float f8 = (r4.bottom - f2) / f6;
            fMax = Math.max(fMax, Math.min(f7, f8));
            fMin = Math.min(fMin, Math.max(f7, f8));
        }
        float f9 = (float) d;
        float f10 = (float) d2;
        canvas.drawLine((f9 * fMax) + f, (fMax * f10) + f2, f + (f9 * fMin), f2 + (f10 * fMin), paint);
    }

    private boolean hasContent() {
        XCadScene xCadScene = this.scene;
        if (xCadScene == null) {
            return false;
        }
        Iterator<XCadEntity> it = xCadScene.entities.iterator();
        while (it.hasNext()) {
            if (it.next().pointCount() > 0) {
                return true;
            }
        }
        return false;
    }

    private int getCADColor(int i) {
        int i2;
        if (i == 256) {
            i = 7;
        }
        switch (i) {
            case 0:
                i2 = this.backgroundColor;
                break;
            case 1:
                return -65536;
            case 2:
                return -256;
            case 3:
                return -16711936;
            case 4:
                return -16711681;
            case 5:
                return -16776961;
            case 6:
                return -65281;
            case 7:
                i2 = this.backgroundColor;
                break;
            default:
                return i;
        }
        return ((~i2) & 16777215) | WebView.NIGHT_MODE_COLOR;
    }

    private void drawTexts(Canvas canvas) {
        if (this.texts.isEmpty()) {
            return;
        }
        float f = this.density * 4.0f;
        getWidth();
        getHeight();
        int i = 0;
        for (XCadEntity xCadEntity : this.texts) {
            double d = xCadEntity.textHeight;
            boolean z = d > 0.0d;
            double d2 = z ? d * this.scale : this.density * 12.0f;
            if (!z || d2 >= f) {
                double dPointX = ((xCadEntity.pointX(0) - this.cx) * this.scale) + this.tx;
                double d3 = ((-(xCadEntity.pointY(0) - this.cy)) * this.scale) + this.ty;
                this.textPaint.setColor(getCADColor(xCadEntity.color));
                this.textPaint.setTextSize((float) d2);
                canvas.save();
                canvas.translate((float) dPointX, (float) d3);
                if (z) {
                    if (xCadEntity.textRotation != 0.0f) {
                        canvas.rotate((float) (((-r5) * 180.0d) / 3.141592653589793d));
                    }
                }
                drawAlignedText(canvas, xCadEntity);
                canvas.restore();
                i++;
                if (i >= MAX_LABELS) {
                    return;
                }
            }
        }
    }

    private void drawAlignedText(Canvas canvas, XCadEntity xCadEntity) {
        float f;
        String[] strArrSplit = xCadEntity.text.indexOf(10) >= 0 ? xCadEntity.text.split("\n", -1) : new String[]{xCadEntity.text};
        if (strArrSplit.length == 0) {
            return;
        }
        float textSize = this.textPaint.getTextSize();
        if (textSize > 0.0f) {
            this.textPaint.getTextBounds("H", 0, 1, new Rect());
            this.textPaint.setTextSize(textSize * (textSize / Math.max(1.0f, -r7.top)));
        }
        Paint.FontMetrics fontMetrics = this.textPaint.getFontMetrics();
        float f2 = fontMetrics.descent - fontMetrics.ascent;
        Rect rect = new Rect();
        int length = strArrSplit.length;
        float fMax = Float.NEGATIVE_INFINITY;
        int i = 0;
        float fMin = Float.POSITIVE_INFINITY;
        float fMax2 = 0.0f;
        while (true) {
            String str = "";
            if (i >= length) {
                break;
            }
            String str2 = strArrSplit[i];
            if (str2 != null) {
                str = str2;
            }
            fMax2 = Math.max(fMax2, this.textPaint.measureText(str));
            this.textPaint.getTextBounds(str, 0, str.length(), rect);
            fMin = Math.min(fMin, rect.left);
            fMax = Math.max(fMax, rect.right);
            i++;
        }
        if (fMin == Float.POSITIVE_INFINITY) {
            fMax = fMax2;
            f = 0.0f;
        } else {
            f = fMin;
        }
        Paint paint = this.textPaint;
        String str3 = strArrSplit[0];
        paint.getTextBounds(str3, 0, str3.length(), rect);
        float f3 = rect.top;
        String str4 = strArrSplit[strArrSplit.length - 1] != null ? strArrSplit[strArrSplit.length - 1] : "";
        this.textPaint.getTextBounds(str4, 0, str4.length(), rect);
        float f4 = rect.bottom;
        int i2 = xCadEntity.textAttachment;
        if (i2 < 1 || i2 > 9) {
            i2 = xCadEntity.type == 6 ? 1 : 7;
        }
        int i3 = i2 - 1;
        int i4 = i3 / 3;
        int i5 = i3 % 3;
        float f5 = i5 == 1 ? (-(f + fMax)) * 0.5f : i5 == 2 ? -fMax : -f;
        float length2 = ((strArrSplit.length - 1) * f2) + f4;
        float f6 = i4 == 0 ? -f3 : i4 == 1 ? (-(f3 + length2)) * 0.5f : -length2;
        for (int i6 = 0; i6 < strArrSplit.length; i6++) {
            String str5 = strArrSplit[i6];
            if (str5 == null) {
                str5 = "";
            }
            canvas.drawText(str5, f5, (i6 * f2) + f6, this.textPaint);
        }
    }

    private void drawHighlights(Canvas canvas, Set<Integer> set, int i) {
        XCadScene xCadScene;
        if (set.isEmpty() || (xCadScene = this.scene) == null) {
            return;
        }
        List<XCadEntity> list = xCadScene.entities;
        Iterator<Integer> it = set.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            if (iIntValue >= 0 && iIntValue < list.size()) {
                paintHighlight(canvas, list.get(iIntValue), i, i2);
                i2++;
            }
        }
    }

    private void paintHighlight(Canvas canvas, XCadEntity xCadEntity, int i, int i2) {
        int iPointCount = xCadEntity.pointCount();
        if (iPointCount < 1) {
            return;
        }
        if (iPointCount == 1 || xCadEntity.type == 4) {
            float[] fArrWorldToScreen = worldToScreen(xCadEntity.pointX(0), xCadEntity.pointY(0));
            float f = fArrWorldToScreen[0];
            float f2 = fArrWorldToScreen[1];
            this.highlightCore.setStyle(Paint.Style.FILL);
            this.highlightCore.setColor((i & 16777215) | 1493172224);
            canvas.drawCircle(f, f2, this.highlightWidth * 1.8f, this.highlightCore);
            this.highlightCore.setColor(i);
            canvas.drawCircle(f, f2, this.highlightWidth, this.highlightCore);
            this.highlightCore.setStyle(Paint.Style.STROKE);
            return;
        }
        float[] fArrWorldToScreen2 = worldToScreen(xCadEntity.pointX(0), xCadEntity.pointY(0));
        this.highlightPath.reset();
        this.highlightPath.moveTo(fArrWorldToScreen2[0], fArrWorldToScreen2[1]);
        for (int i3 = 1; i3 < iPointCount; i3++) {
            float[] fArrWorldToScreen3 = worldToScreen(xCadEntity.pointX(i3), xCadEntity.pointY(i3));
            this.highlightPath.lineTo(fArrWorldToScreen3[0], fArrWorldToScreen3[1]);
        }
        if (xCadEntity.isClosed()) {
            this.highlightPath.close();
        }
        this.highlightHalo.setColor((i & 16777215) | 1291845632);
        this.highlightHalo.setStrokeWidth(this.highlightWidth + (this.density * 5.0f));
        canvas.drawPath(this.highlightPath, this.highlightHalo);
        this.highlightCore.setColor(i);
        this.highlightCore.setStrokeWidth(this.highlightWidth);
        canvas.drawPath(this.highlightPath, this.highlightCore);
        if (this.drawSelectedLineNumText) {
            drawSelectedLinePointLabel(canvas, xCadEntity, i, i2);
        }
    }

    private void drawSelectedLinePointLabel(Canvas canvas, XCadEntity xCadEntity, int i, int i2) {
        drawPointLabel(canvas, xCadEntity.pointX(0), xCadEntity.pointY(0), i, i2);
    }

    private void drawPointLabel(Canvas canvas, double d, double d2, int i, int i2) {
        float f = this.density;
        double d3 = d - this.cx;
        double d4 = this.scale;
        float f2 = (float) ((d3 * d4) + this.tx);
        float f3 = (float) (((-(d2 - this.cy)) * d4) + this.ty);
        float f4 = (20.0f * f) + f2;
        float f5 = (f * (-20.0f)) + f3;
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(i);
        float f6 = this.density * 14.0f;
        canvas.drawCircle(f4, f5, f6, paint);
        Path path = new Path();
        path.moveTo(f2, f3);
        path.lineTo(f4 - (0.3f * f6), f5);
        path.lineTo(f4, (f6 * 0.6f) + f5);
        path.close();
        canvas.drawPath(path, paint);
        Paint paint2 = new Paint(1);
        paint2.setColor(-1);
        paint2.setTextSize(this.density * 10.0f);
        paint2.setTextAlign(Paint.Align.CENTER);
        Paint.FontMetrics fontMetrics = paint2.getFontMetrics();
        canvas.drawText(String.valueOf(i2 + 1), f4, f5 - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), paint2);
    }

    private void drawVisLinePoints(Canvas canvas) {
        XCadScene xCadScene;
        Integer numValueOf;
        this.markerHits.clear();
        if (this.selectedIndicePoints.isEmpty() || (xCadScene = this.scene) == null) {
            return;
        }
        List<XCadEntity> list = xCadScene.entities;
        for (Map.Entry<Integer, Map<Integer, IndicePointStyle>> entry : this.selectedIndicePoints.entrySet()) {
            int iIntValue = entry.getKey().intValue();
            if (iIntValue >= 0 && iIntValue < list.size()) {
                XCadEntity xCadEntity = list.get(iIntValue);
                if (xCadEntity.points != null) {
                    for (Map.Entry<Integer, IndicePointStyle> entry2 : entry.getValue().entrySet()) {
                        Integer key = entry2.getKey();
                        int iIntValue2 = key.intValue();
                        if (iIntValue2 >= 0 && iIntValue2 < xCadEntity.pointCount()) {
                            IndicePointStyle value = entry2.getValue();
                            int i = value.color;
                            Integer num = value.displayNumber;
                            if (num == null) {
                                numValueOf = key;
                            } else {
                                numValueOf = num.intValue() > 0 ? Integer.valueOf(value.displayNumber.intValue() - 1) : null;
                            }
                            float[] fArrWorldToScreen = worldToScreen(xCadEntity.pointX(iIntValue2), xCadEntity.pointY(iIntValue2));
                            float f = this.density;
                            this.markerHits.add(new MarkerHit(iIntValue, iIntValue2, fArrWorldToScreen, 35.0f * f, 14.0f * f) { // from class: com.qh.xcad.XCadView.3
                                final /* synthetic */ int val$idx;
                                final /* synthetic */ float val$offsetY;
                                final /* synthetic */ int val$pointIdx;
                                final /* synthetic */ float val$radius;
                                final /* synthetic */ float[] val$sp;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super();
                                    this.val$idx = iIntValue;
                                    this.val$pointIdx = iIntValue2;
                                    this.val$sp = fArrWorldToScreen;
                                    this.val$offsetY = f;
                                    this.val$radius = f;
                                    this.entityIndex = iIntValue;
                                    this.pointIndex = iIntValue2;
                                    float f2 = fArrWorldToScreen[0];
                                    this.sx = f2;
                                    float f3 = fArrWorldToScreen[1];
                                    this.sy = f3;
                                    this.bubbleX = f2;
                                    this.bubbleY = f3 - f;
                                    this.bubbleRadius = f;
                                }
                            });
                            paintVisLinePoint(canvas, xCadEntity.pointX(iIntValue2), xCadEntity.pointY(iIntValue2), numValueOf, i);
                            iIntValue = iIntValue;
                        }
                    }
                }
            }
        }
    }

    private void paintVisLinePoint(Canvas canvas, double d, double d2, Integer num, int i) {
        drawPointMarcker(canvas, d, d2, num, i);
    }

    private void drawPointMarcker(Canvas canvas, double d, double d2, Integer num, int i) {
        float f = this.density * 30.0f;
        float[] fArrWorldToScreen = worldToScreen(d, d2);
        float f2 = fArrWorldToScreen[0];
        float f3 = fArrWorldToScreen[1];
        float f4 = f3 - f;
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(i);
        float f5 = this.density * 14.0f;
        canvas.drawCircle(f2, f4, f5, paint);
        Path path = new Path();
        path.moveTo(f2, f3);
        float f6 = 0.4f * f5;
        float f7 = (f5 * 0.8f) + f4;
        path.lineTo(f2 - f6, f7);
        path.lineTo(f6 + f2, f7);
        path.close();
        canvas.drawPath(path, paint);
        if (num == null) {
            return;
        }
        Paint paint2 = new Paint(1);
        paint2.setColor(-1);
        paint2.setTextSize(this.density * 10.0f);
        paint2.setTextAlign(Paint.Align.CENTER);
        Paint.FontMetrics fontMetrics = paint2.getFontMetrics();
        canvas.drawText(String.valueOf(num.intValue() + 1), f2, f4 - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), paint2);
    }

    private void drawPointLight(Canvas canvas) {
        XCadScene xCadScene;
        if (this.selectedLightPoints.isEmpty() || (xCadScene = this.scene) == null) {
            return;
        }
        List<XCadEntity> list = xCadScene.entities;
        for (Map.Entry<Integer, Set<Integer>> entry : this.selectedLightPoints.entrySet()) {
            int iIntValue = entry.getKey().intValue();
            if (iIntValue >= 0 && iIntValue < list.size()) {
                XCadEntity xCadEntity = list.get(iIntValue);
                if (xCadEntity.points != null) {
                    Iterator<Integer> it = entry.getValue().iterator();
                    int i = 0;
                    while (it.hasNext()) {
                        int iIntValue2 = it.next().intValue();
                        if (iIntValue2 < 0 || iIntValue2 >= xCadEntity.pointCount()) {
                            canvas = canvas;
                        } else {
                            drawPointLightMarker(canvas, xCadEntity.pointX(iIntValue2), xCadEntity.pointY(iIntValue2), i);
                            i++;
                        }
                    }
                }
            }
            canvas = canvas;
        }
    }

    private void drawPointLightMarker(Canvas canvas, double d, double d2, int i) {
        double d3 = d - this.cx;
        double d4 = this.scale;
        float f = (float) ((d3 * d4) + this.tx);
        float f2 = (float) (((-(d2 - this.cy)) * d4) + this.ty);
        float f3 = this.density;
        float f4 = 18.0f * f3;
        float f5 = f3 * 10.0f;
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.density * 3.0f);
        paint.setColor(this.highlightColorP);
        paint.setShadowLayer(this.density * 12.0f, 0.0f, 0.0f, this.highlightColorP);
        canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
        canvas.drawCircle(f, f2, f4, paint);
        Paint paint2 = new Paint(1);
        Paint.Style style = Paint.Style.FILL;
        paint2.setStyle(style);
        paint2.setColor(this.highlightColorP);
        canvas.drawCircle(f, f2, f5, paint2);
        Paint paint3 = new Paint(1);
        paint3.setStyle(style);
        paint3.setColor(-1);
        canvas.drawCircle(f, f2, f5 * 0.35f, paint3);
        Paint paint4 = new Paint(1);
        paint4.setColor(-1);
        paint4.setTextSize(this.density * 10.0f);
        paint4.setTextAlign(Paint.Align.CENTER);
        Paint.FontMetrics fontMetrics = paint4.getFontMetrics();
        canvas.drawText(String.valueOf(i + 1), f, f2 - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), paint4);
    }

    private float fitBtnRadius() {
        return this.density * 23.0f;
    }

    private float fitBtnCx() {
        return (getWidth() - (this.density * 16.0f)) - fitBtnRadius();
    }

    private float fitBtnCy() {
        return (getHeight() - (this.density * 16.0f)) - fitBtnRadius();
    }

    private boolean insideFitButton(float f, float f2) {
        if (!this.showControls) {
            return false;
        }
        float fFitBtnCx = f - fitBtnCx();
        float fFitBtnCy = f2 - fitBtnCy();
        float fFitBtnRadius = fitBtnRadius();
        return (fFitBtnCx * fFitBtnCx) + (fFitBtnCy * fFitBtnCy) <= fFitBtnRadius * fFitBtnRadius;
    }

    private void drawFitButton(Canvas canvas) {
        if (this.showControls) {
            float fFitBtnCx = fitBtnCx();
            float fFitBtnCy = fitBtnCy();
            float fFitBtnRadius = fitBtnRadius();
            canvas.drawCircle(fFitBtnCx, fFitBtnCy, fFitBtnRadius, this.fitBtnBgPaint);
            float f = fFitBtnRadius * 0.5f;
            float f2 = 0.45f * f;
            float f3 = fFitBtnCx - f;
            float f4 = fFitBtnCy - f;
            float f5 = fFitBtnCx + f;
            float f6 = fFitBtnCy + f;
            Paint paint = this.fitBtnIconPaint;
            float f7 = f3 + f2;
            canvas.drawLine(f3, f4, f7, f4, paint);
            float f8 = f4 + f2;
            canvas.drawLine(f3, f4, f3, f8, paint);
            float f9 = f5 - f2;
            canvas.drawLine(f5, f4, f9, f4, paint);
            canvas.drawLine(f5, f4, f5, f8, paint);
            canvas.drawLine(f3, f6, f7, f6, paint);
            float f10 = f6 - f2;
            canvas.drawLine(f3, f6, f3, f10, paint);
            canvas.drawLine(f5, f6, f9, f6, paint);
            canvas.drawLine(f5, f6, f5, f10, paint);
        }
    }

    public void setToleranceWorld(double d) {
        this.toleranceWorld = d;
    }

    public int selectByWorldPoint(double d, double d2) {
        if (this.scene == null || this.hitIndices.length == 0) {
            return -1;
        }
        this.carSelectedIndices.clear();
        double d3 = d - this.cx;
        double d4 = -(d2 - this.cy);
        double d5 = this.toleranceWorld;
        double d6 = d5 * d5;
        List<XCadEntity> list = this.scene.entities;
        double d7 = Double.POSITIVE_INFINITY;
        int i = 0;
        int i2 = -1;
        while (true) {
            int[] iArr = this.hitIndices;
            if (i >= iArr.length) {
                break;
            }
            int i3 = i * 4;
            double[] dArr = this.hitBounds;
            if (d3 >= dArr[i3] - d5 && d3 <= dArr[i3 + 2] + d5 && d4 >= dArr[i3 + 1] - d5 && d4 <= dArr[i3 + 3] + d5) {
                int i4 = iArr[i];
                double dEntityDist2 = entityDist2(list.get(i4), d3, d4);
                if (dEntityDist2 < d7) {
                    i2 = i4;
                    d7 = dEntityDist2;
                }
            }
            i++;
        }
        if (i2 < 0 || d7 > d6) {
            return -1;
        }
        this.carSelectedIndices.add(Integer.valueOf(i2));
        invalidate();
        return i2;
    }

    private float[] worldToScreen(double d, double d2) {
        double d3 = d - this.cx;
        double d4 = this.scale;
        return new float[]{(float) ((d3 * d4) + this.tx), (float) (((-(d2 - this.cy)) * d4) + this.ty)};
    }

    private double[] screenToWorld(double d, double d2) {
        double d3 = d - this.tx;
        double d4 = this.scale;
        return new double[]{d3 / d4, (d2 - this.ty) / d4};
    }

    public void setXCadVehiclePosition(double d, double d2, double d3) {
        setXCadVehiclePosition(d, d2, d3, false);
    }

    public void setXCadVehiclePosition(double d, double d2, double d3, boolean z) {
        if (this.vehiclePoint == null) {
            XCadVehiclePoint xCadVehiclePoint = new XCadVehiclePoint();
            this.vehiclePoint = xCadVehiclePoint;
            xCadVehiclePoint.color = -65536;
        }
        XCadVehiclePoint xCadVehiclePoint2 = this.vehiclePoint;
        xCadVehiclePoint2.x = d;
        xCadVehiclePoint2.y = d2;
        xCadVehiclePoint2.heading = d3;
        xCadVehiclePoint2.drawAxis = z;
        startVehiclePulse();
        if (this.followVehicle && this.lastW > 0 && this.lastH > 0) {
            float[] fArrWorldToScreen = worldToScreen(d, d2);
            float f = this.lastW / 2.0f;
            float f2 = this.lastH / 2.0f;
            this.tx += f - fArrWorldToScreen[0];
            this.ty += f2 - fArrWorldToScreen[1];
            this.cacheDirty = true;
        }
        if (this.scene == null) {
            return;
        }
        if (this.onCarSelectedEntityListener != null) {
            int iSelectByWorldPoint = selectByWorldPoint(d, d2);
            List<XCadEntity> list = this.scene.entities;
            if (iSelectByWorldPoint >= 0 && list != null && iSelectByWorldPoint < list.size()) {
                this.onCarSelectedEntityListener.onEntitySelect(iSelectByWorldPoint, list.get(iSelectByWorldPoint));
            }
        }
        invalidate();
    }

    public void showVehicle() {
        XCadVehiclePoint xCadVehiclePoint = this.vehiclePoint;
        if (xCadVehiclePoint == null) {
            return;
        }
        xCadVehiclePoint.visible = true;
        startVehiclePulse();
        invalidate();
    }

    public void hideVehicle() {
        XCadVehiclePoint xCadVehiclePoint = this.vehiclePoint;
        if (xCadVehiclePoint == null) {
            return;
        }
        xCadVehiclePoint.visible = false;
        ValueAnimator valueAnimator = this.vehiclePulseAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.vehiclePulseAnimator = null;
        }
        invalidate();
    }

    public void setXCadExcavatorBucketPosition(double d, double d2, double d3, double d4, double d5) {
        setXCadExcavatorBucketPosition(d, d2, d3, d4, d5, false);
    }

    public void setXCadExcavatorBucketPosition(double d, double d2, double d3, double d4, double d5, boolean z) {
        if (this.xCadExcavatorBucket == null) {
            this.xCadExcavatorBucket = new XCadExcavatorBucket();
        }
        XCadExcavatorBucket xCadExcavatorBucket = this.xCadExcavatorBucket;
        xCadExcavatorBucket.xL = d;
        xCadExcavatorBucket.yL = d2;
        xCadExcavatorBucket.xR = d3;
        xCadExcavatorBucket.yR = d4;
        xCadExcavatorBucket.heading = d5;
        xCadExcavatorBucket.drawAxis = z;
        if (this.scene == null) {
            return;
        }
        if (this.onExcavatorBucketSelectedEntityListener != null) {
            int iSelectByWorldPoint = selectByWorldPoint(d, d2);
            int iSelectByWorldPoint2 = selectByWorldPoint(d3, d4);
            List<XCadEntity> list = this.scene.entities;
            XCadEntity xCadEntity = null;
            XCadEntity xCadEntity2 = (iSelectByWorldPoint < 0 || list == null || iSelectByWorldPoint >= list.size()) ? null : list.get(iSelectByWorldPoint);
            if (iSelectByWorldPoint2 >= 0 && list != null && iSelectByWorldPoint2 < list.size()) {
                xCadEntity = list.get(iSelectByWorldPoint2);
            }
            this.onExcavatorBucketSelectedEntityListener.onEntitySelect(iSelectByWorldPoint, xCadEntity2, iSelectByWorldPoint2, xCadEntity);
        }
        invalidate();
    }

    public void showExcavatorBucket() {
        XCadExcavatorBucket xCadExcavatorBucket = this.xCadExcavatorBucket;
        if (xCadExcavatorBucket == null) {
            return;
        }
        xCadExcavatorBucket.visible = true;
        invalidate();
    }

    public void hideExcavatorBucket() {
        XCadExcavatorBucket xCadExcavatorBucket = this.xCadExcavatorBucket;
        if (xCadExcavatorBucket == null) {
            return;
        }
        xCadExcavatorBucket.visible = false;
        invalidate();
    }

    public void setXCadItemAreaPoint(double d, double d2) {
        setXCadItemAreaPoint(new double[]{d, d2}, false, false);
    }

    public void setXCadItemAreaPoint(double... dArr) {
        setXCadItemAreaPoint(dArr, false, false);
    }

    public void setXCadItemAreaPoint(double[] dArr, boolean z) {
        setXCadItemAreaPoint(dArr, z, false, false);
    }

    public void setXCadItemAreaPoint(double[] dArr, boolean z, boolean z2) {
        setXCadItemAreaPoint(dArr, false, z, z2);
    }

    public void setXCadItemAreaPoint(double[] dArr, boolean z, boolean z2, boolean z3) {
        XCadItemAreaPoint.XCadItemPointInfo[] xCadItemPointInfoArr;
        if (dArr != null) {
            int length = dArr.length / 2;
            if (dArr.length % 2 != 0) {
                String str = "setXCadItemAreaPoint: point array length (" + dArr.length + ") is odd, last coordinate ignored.";
            }
            xCadItemPointInfoArr = new XCadItemAreaPoint.XCadItemPointInfo[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 2;
                xCadItemPointInfoArr[i] = new XCadItemAreaPoint.XCadItemPointInfo(dArr[i2], dArr[i2 + 1]);
            }
        } else {
            xCadItemPointInfoArr = null;
        }
        setXCadItemAreaPoint(xCadItemPointInfoArr, z, z2, z3);
    }

    public void setXCadItemAreaPoint(XCadItemAreaPoint.XCadItemPointInfo[] xCadItemPointInfoArr, boolean z, boolean z2, boolean z3) {
        setXCadItemAreaPoint(xCadItemPointInfoArr, new XCadItemAreaPoint.XCadItemAreaStyle(z, z2, z3));
    }

    public void setXCadItemAreaPoint(XCadItemAreaPoint.XCadItemPointInfo[] xCadItemPointInfoArr, XCadItemAreaPoint.XCadItemAreaStyle xCadItemAreaStyle) {
        XCadItemAreaPoint xCadItemAreaPoint = new XCadItemAreaPoint();
        xCadItemAreaPoint.itemAreaPosition = xCadItemPointInfoArr;
        xCadItemAreaPoint.xCadItemAreaStyle.setXCadItemAreaStyle(xCadItemAreaStyle);
        setXCadItemAreaPoint(xCadItemAreaPoint);
    }

    public void setXCadItemAreaPoint(XCadItemAreaPoint xCadItemAreaPoint) {
        XCadItemAreaPoint.XCadItemPointInfo[] xCadItemPointInfoArr;
        if (this.xCadItemAreaPoint == null) {
            this.xCadItemAreaPoint = new XCadItemAreaPoint();
        }
        if (xCadItemAreaPoint == null) {
            this.xCadItemAreaPoint.reset();
            invalidate();
            return;
        }
        XCadItemAreaPoint.XCadItemPointInfo[] xCadItemPointInfoArr2 = xCadItemAreaPoint.itemAreaPosition;
        if (xCadItemPointInfoArr2 != null) {
            xCadItemPointInfoArr = new XCadItemAreaPoint.XCadItemPointInfo[xCadItemPointInfoArr2.length];
            int i = 0;
            while (true) {
                XCadItemAreaPoint.XCadItemPointInfo[] xCadItemPointInfoArr3 = xCadItemAreaPoint.itemAreaPosition;
                if (i >= xCadItemPointInfoArr3.length) {
                    break;
                }
                XCadItemAreaPoint.XCadItemPointInfo xCadItemPointInfo = xCadItemPointInfoArr3[i];
                if (xCadItemPointInfo != null) {
                    try {
                        xCadItemPointInfoArr[i] = xCadItemPointInfo.m1003clone();
                    } catch (CloneNotSupportedException unused) {
                    }
                }
                i++;
            }
        } else {
            xCadItemPointInfoArr = null;
        }
        XCadItemAreaPoint xCadItemAreaPoint2 = this.xCadItemAreaPoint;
        xCadItemAreaPoint2.itemAreaPosition = xCadItemPointInfoArr;
        xCadItemAreaPoint2.xCadItemAreaStyle.setXCadItemAreaStyle(xCadItemAreaPoint.xCadItemAreaStyle);
        this.xCadItemAreaPoint.visible = xCadItemAreaPoint.visible;
        invalidate();
    }

    public XCadItemAreaPoint getCadItemAreaPoint() {
        XCadItemAreaPoint xCadItemAreaPoint = this.xCadItemAreaPoint;
        if (xCadItemAreaPoint == null) {
            return new XCadItemAreaPoint();
        }
        try {
            return xCadItemAreaPoint.m1001clone();
        } catch (CloneNotSupportedException unused) {
            return new XCadItemAreaPoint();
        }
    }

    public void showXCadItemAreaPoint() {
        XCadItemAreaPoint xCadItemAreaPoint = this.xCadItemAreaPoint;
        if (xCadItemAreaPoint == null) {
            return;
        }
        xCadItemAreaPoint.visible = true;
        invalidate();
    }

    public void hideXCadItemAreaPoint() {
        XCadItemAreaPoint xCadItemAreaPoint = this.xCadItemAreaPoint;
        if (xCadItemAreaPoint == null) {
            return;
        }
        xCadItemAreaPoint.visible = false;
        invalidate();
    }

    private static class MarkerHit {
        float bubbleRadius;
        float bubbleX;
        float bubbleY;
        int entityIndex;
        int pointIndex;
        float sx;
        float sy;

        private MarkerHit() {
            this.entityIndex = -1;
            this.pointIndex = -1;
            this.sx = 0.0f;
            this.sy = 0.0f;
        }
    }

    private static class LinePoint {
        int color;
        int index;

        public LinePoint(int i, int i2) {
            this.index = i;
            this.color = i2;
        }
    }

    public void setOnLoadCadFileListener(OnLoadCadFileListener onLoadCadFileListener) {
        this.onLoadCadFileListener = onLoadCadFileListener;
    }

    public void setOnEntityClickListener(OnEntityClickListener onEntityClickListener) {
        this.entityClickListener = onEntityClickListener;
    }

    public void setOnCarSelectedEntityListener(OnCarSelectedEntityListener onCarSelectedEntityListener) {
        this.onCarSelectedEntityListener = onCarSelectedEntityListener;
    }

    public void setOnExcavatorBucketSelectedEntityListener(OnExcavatorBucketSelectedEntityListener onExcavatorBucketSelectedEntityListener) {
        this.onExcavatorBucketSelectedEntityListener = onExcavatorBucketSelectedEntityListener;
    }

    public void setOnMarkerClickListener(OnMarkerClickListener onMarkerClickListener) {
        this.onMarkerClickListener = onMarkerClickListener;
    }
}
