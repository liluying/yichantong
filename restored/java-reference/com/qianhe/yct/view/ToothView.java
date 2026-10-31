package com.qianhe.yct.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$styleable;
import com.qianhe.yct.application.YCTApplication;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ToothView extends FrameLayout {
    private static final int DEFAULT_MAX_VISIBLE_COUNT = 3;
    public static final int INSTRUMENT_COLLECT = 5;
    public static final int LEFT = 0;
    public static final int MIDDLE = 1;
    public static final int NONE = -1;
    public static final int POINT_LIB = 3;
    public static final int RIGTH = 2;
    public static final int START_COLLECT = 4;
    private int cachedUniformItemHeight;
    private int cachedUniformWidth;
    private boolean isH5pro;
    private ImageView ivLeft;
    private ImageView ivMiddle;
    private ImageView ivRigth;
    private OnToothClickListener listener;
    private LinearLayout lltInstrumentCollect;
    private LinearLayout lltLeftTooth;
    private LinearLayout lltMiddleTooth;
    private LinearLayout lltPointLib;
    private LinearLayout lltRigthTooth;
    private LinearLayout lltStartCollect;
    private OnToothLongClickListener longClickListener;
    private int maxVisibleCount;
    private final AppCompatTextView[] optionTextViews;
    private LinearLayout optionsContainer;
    private NestedScrollView scrollView;
    private boolean showPointLib;
    private AppCompatTextView tvInstrumentCollect;
    private AppCompatTextView tvLeft;
    private AppCompatTextView tvMiddle;
    private AppCompatTextView tvPointsLib;
    private AppCompatTextView tvRigth;
    private AppCompatTextView tvStartCollect;

    public interface OnToothClickListener {
        void onToothClick(int i);
    }

    public interface OnToothLongClickListener {
        void onToothLongClick(int i);
    }

    public void setCurrentType(int i) {
    }

    public ToothView(Context context) {
        super(context);
        this.showPointLib = true;
        this.maxVisibleCount = 3;
        this.cachedUniformItemHeight = -1;
        this.cachedUniformWidth = -1;
        this.optionTextViews = new AppCompatTextView[6];
        initView(context);
    }

    public ToothView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.showPointLib = true;
        this.maxVisibleCount = 3;
        this.cachedUniformItemHeight = -1;
        this.cachedUniformWidth = -1;
        this.optionTextViews = new AppCompatTextView[6];
        initAttrs(context, attributeSet);
        initView(context);
    }

    public ToothView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.showPointLib = true;
        this.maxVisibleCount = 3;
        this.cachedUniformItemHeight = -1;
        this.cachedUniformWidth = -1;
        this.optionTextViews = new AppCompatTextView[6];
        initAttrs(context, attributeSet);
        initView(context);
    }

    private void initAttrs(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ToothView);
            this.showPointLib = typedArrayObtainStyledAttributes.getBoolean(R$styleable.ToothView_showPointLib, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void initView(Context context) {
        LayoutInflater.from(context).inflate(R$layout.tooth_view, (ViewGroup) this, true);
        this.isH5pro = YCTApplication.getInstance().isH5Pro();
        this.scrollView = (NestedScrollView) findViewById(R$id.scrollView);
        this.optionsContainer = (LinearLayout) findViewById(R$id.lltOptionsContainer);
        this.scrollView.setScrollBarFadeDuration(0);
        this.scrollView.setScrollBarDefaultDelayBeforeFade(Integer.MAX_VALUE);
        this.scrollView.setNestedScrollingEnabled(false);
        this.lltLeftTooth = (LinearLayout) findViewById(R$id.lltLeftTooth);
        this.lltMiddleTooth = (LinearLayout) findViewById(R$id.lltMiddleTooth);
        this.lltRigthTooth = (LinearLayout) findViewById(R$id.lltRigthTooth);
        this.lltPointLib = (LinearLayout) findViewById(R$id.lltPointLib);
        this.lltStartCollect = (LinearLayout) findViewById(R$id.lltStartCollect);
        this.lltInstrumentCollect = (LinearLayout) findViewById(R$id.lltInstrumentCollect);
        this.tvLeft = (AppCompatTextView) findViewById(R$id.tvLeft);
        this.tvMiddle = (AppCompatTextView) findViewById(R$id.tvMiddle);
        this.tvRigth = (AppCompatTextView) findViewById(R$id.tvRigth);
        this.tvPointsLib = (AppCompatTextView) findViewById(R$id.tvPointsLib);
        this.tvStartCollect = (AppCompatTextView) findViewById(R$id.tvStartCollect);
        AppCompatTextView appCompatTextView = (AppCompatTextView) findViewById(R$id.tvInstrumentCollect);
        this.tvInstrumentCollect = appCompatTextView;
        AppCompatTextView[] appCompatTextViewArr = this.optionTextViews;
        appCompatTextViewArr[0] = this.tvLeft;
        appCompatTextViewArr[1] = this.tvMiddle;
        appCompatTextViewArr[2] = this.tvRigth;
        appCompatTextViewArr[3] = this.tvStartCollect;
        appCompatTextViewArr[4] = appCompatTextView;
        appCompatTextViewArr[5] = this.tvPointsLib;
        updateVisibility();
        setClickListeners();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0010  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0015  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r4) {
        /*
            r3 = this;
            int r0 = r4.getActionMasked()
            r1 = 1
            if (r0 == 0) goto L15
            if (r0 == r1) goto L10
            r2 = 2
            if (r0 == r2) goto L15
            r1 = 3
            if (r0 == r1) goto L10
            goto L18
        L10:
            r0 = 0
            r3.requestAllParentsDisallowIntercept(r0)
            goto L18
        L15:
            r3.requestAllParentsDisallowIntercept(r1)
        L18:
            boolean r4 = super.dispatchTouchEvent(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.view.ToothView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    private void requestAllParentsDisallowIntercept(boolean z) {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        applyScrollMaxHeight(View.MeasureSpec.getSize(i));
        super.onMeasure(i, i2);
    }

    private void applyScrollMaxHeight(int i) {
        int i2;
        if (this.scrollView == null || this.optionsContainer == null) {
            return;
        }
        List<View> visibleOptionViews = getVisibleOptionViews();
        int iEnsureUniformItemHeight = ensureUniformItemHeight(i);
        int iMin = Math.min(this.maxVisibleCount, visibleOptionViews.size());
        boolean z = false;
        if (iEnsureUniformItemHeight <= 0 || iMin <= 0) {
            i2 = 0;
        } else {
            i2 = 0;
            for (int i3 = 0; i3 < iMin; i3++) {
                if (i3 > 0) {
                    i2 += ((LinearLayout.LayoutParams) visibleOptionViews.get(i3).getLayoutParams()).topMargin;
                }
                i2 += iEnsureUniformItemHeight;
            }
        }
        ViewGroup.LayoutParams layoutParams = this.scrollView.getLayoutParams();
        boolean z2 = visibleOptionViews.size() > this.maxVisibleCount;
        if (!z2) {
            i2 = -2;
        } else if (i <= 0) {
            i2 = 0;
        }
        if (layoutParams.height != i2) {
            layoutParams.height = i2;
            this.scrollView.setLayoutParams(layoutParams);
        }
        NestedScrollView nestedScrollView = this.scrollView;
        if (z2 && i > 0) {
            z = true;
        }
        nestedScrollView.setVerticalScrollBarEnabled(z);
        this.scrollView.setScrollbarFadingEnabled(!z2);
    }

    private List<View> getVisibleOptionViews() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.optionsContainer.getChildCount(); i++) {
            View childAt = this.optionsContainer.getChildAt(i);
            if (childAt.getVisibility() == 0) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    private int ensureUniformItemHeight(int i) {
        int i2;
        if (i <= 0) {
            return 0;
        }
        int optionsContentWidth = getOptionsContentWidth(i);
        if (optionsContentWidth == this.cachedUniformWidth && (i2 = this.cachedUniformItemHeight) > 0) {
            applyItemHeightToRows(i2);
            return this.cachedUniformItemHeight;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMax = 0;
        for (AppCompatTextView appCompatTextView : this.optionTextViews) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) appCompatTextView.getLayoutParams();
            appCompatTextView.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, (optionsContentWidth - layoutParams.getMarginStart()) - layoutParams.getMarginEnd()), 1073741824), iMakeMeasureSpec);
            iMax = Math.max(iMax, appCompatTextView.getMeasuredHeight());
        }
        this.cachedUniformWidth = optionsContentWidth;
        this.cachedUniformItemHeight = iMax;
        applyItemHeightToRows(iMax);
        return iMax;
    }

    private int getOptionsContentWidth(int i) {
        return Math.max(0, (i - (this.scrollView.getPaddingStart() + this.scrollView.getPaddingEnd())) - (this.optionsContainer.getPaddingStart() + this.optionsContainer.getPaddingEnd()));
    }

    private void applyItemHeightToRows(int i) {
        for (int i2 = 0; i2 < this.optionsContainer.getChildCount(); i2++) {
            View childAt = this.optionsContainer.getChildAt(i2);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if (layoutParams.height != i) {
                layoutParams.height = i;
                childAt.setLayoutParams(layoutParams);
            }
        }
    }

    private void updateVisibility() {
        if (this.isH5pro) {
            this.lltLeftTooth.setVisibility(0);
            this.lltMiddleTooth.setVisibility(0);
            this.lltRigthTooth.setVisibility(0);
            this.lltPointLib.setVisibility(this.showPointLib ? 0 : 8);
            this.lltStartCollect.setVisibility(8);
        } else {
            this.lltLeftTooth.setVisibility(8);
            this.lltMiddleTooth.setVisibility(8);
            this.lltRigthTooth.setVisibility(8);
            this.lltPointLib.setVisibility(this.showPointLib ? 0 : 8);
            this.lltStartCollect.setVisibility(0);
        }
        this.cachedUniformItemHeight = -1;
        this.cachedUniformWidth = -1;
        requestLayout();
    }

    private void setClickListeners() {
        this.lltLeftTooth.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.view.ToothView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToothView.$r8$lambda$UPDalRXHifgAI6D4FfxH7UxmJXM(this.f$0, view);
            }
        });
        this.lltMiddleTooth.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.view.ToothView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToothView.m2986$r8$lambda$q_w8B8VZp0OtIF9unJqnfZQdbM(this.f$0, view);
            }
        });
        this.lltRigthTooth.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.view.ToothView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToothView.m2984$r8$lambda$URQ2qEDGxwe2cJ0cihPHsEoi70(this.f$0, view);
            }
        });
        this.lltPointLib.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.view.ToothView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToothView.$r8$lambda$DtHijuZfqmr3LnYKAuXmxPcHqPg(this.f$0, view);
            }
        });
        this.lltStartCollect.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.view.ToothView$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToothView.m2985$r8$lambda$mhwIV0hSHoaJJHOFUwTUZyr2kQ(this.f$0, view);
            }
        });
        this.lltInstrumentCollect.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.view.ToothView$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToothView.m2983$r8$lambda$PrdAGvNUP2wwpt2ximjXuawiY(this.f$0, view);
            }
        });
        this.lltInstrumentCollect.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.view.ToothView$$ExternalSyntheticLambda6
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return ToothView.$r8$lambda$AQTUd3uDhcI3foijOpE2GWj4wUA(this.f$0, view);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$UPDalRXHifgAI6D4FfxH7UxmJXM(ToothView toothView, View view) {
        OnToothClickListener onToothClickListener = toothView.listener;
        if (onToothClickListener != null) {
            onToothClickListener.onToothClick(0);
        }
    }

    /* renamed from: $r8$lambda$q_w8-B8VZp0OtIF9unJqnfZQdbM, reason: not valid java name */
    public static /* synthetic */ void m2986$r8$lambda$q_w8B8VZp0OtIF9unJqnfZQdbM(ToothView toothView, View view) {
        OnToothClickListener onToothClickListener = toothView.listener;
        if (onToothClickListener != null) {
            onToothClickListener.onToothClick(1);
        }
    }

    /* renamed from: $r8$lambda$URQ2qEDGxwe2cJ0cihPHs-Eoi70, reason: not valid java name */
    public static /* synthetic */ void m2984$r8$lambda$URQ2qEDGxwe2cJ0cihPHsEoi70(ToothView toothView, View view) {
        OnToothClickListener onToothClickListener = toothView.listener;
        if (onToothClickListener != null) {
            onToothClickListener.onToothClick(2);
        }
    }

    public static /* synthetic */ void $r8$lambda$DtHijuZfqmr3LnYKAuXmxPcHqPg(ToothView toothView, View view) {
        OnToothClickListener onToothClickListener = toothView.listener;
        if (onToothClickListener != null) {
            onToothClickListener.onToothClick(3);
        }
    }

    /* renamed from: $r8$lambda$mhwIV0hSHoaJJH-OFUwTUZyr2kQ, reason: not valid java name */
    public static /* synthetic */ void m2985$r8$lambda$mhwIV0hSHoaJJHOFUwTUZyr2kQ(ToothView toothView, View view) {
        OnToothClickListener onToothClickListener = toothView.listener;
        if (onToothClickListener != null) {
            onToothClickListener.onToothClick(4);
        }
    }

    /* renamed from: $r8$lambda$P-rdAGvNUP2wwpt2ximj-XuawiY, reason: not valid java name */
    public static /* synthetic */ void m2983$r8$lambda$PrdAGvNUP2wwpt2ximjXuawiY(ToothView toothView, View view) {
        OnToothClickListener onToothClickListener = toothView.listener;
        if (onToothClickListener != null) {
            onToothClickListener.onToothClick(5);
        }
    }

    public static /* synthetic */ boolean $r8$lambda$AQTUd3uDhcI3foijOpE2GWj4wUA(ToothView toothView, View view) {
        OnToothLongClickListener onToothLongClickListener = toothView.longClickListener;
        if (onToothLongClickListener == null) {
            return false;
        }
        onToothLongClickListener.onToothLongClick(5);
        return true;
    }

    public void setOnToothClickListener(OnToothClickListener onToothClickListener) {
        this.listener = onToothClickListener;
    }

    public void setOnToothLongClickListener(OnToothLongClickListener onToothLongClickListener) {
        this.longClickListener = onToothLongClickListener;
    }
}
