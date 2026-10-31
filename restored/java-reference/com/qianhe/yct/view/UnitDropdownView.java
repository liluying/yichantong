package com.qianhe.yct.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.qianhe.baselib.enums.UnitEnum;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$styleable;
import com.qianhe.yct.manage.AppConfigManager;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class UnitDropdownView extends LinearLayout {
    private boolean enabled;
    private boolean isExpanded;
    private TextView[] items;
    private ImageView ivArrow;
    private int lastUnitType;
    private OnUnitSelectedListener listener;
    private PopupWindow popupWindow;
    private TextView tvSelectedUnit;
    private final List<String> unitList;

    public interface OnUnitSelectedListener {
        void onUnitSelected(int i);
    }

    public UnitDropdownView(Context context) {
        this(context, null);
    }

    public UnitDropdownView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UnitDropdownView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isExpanded = false;
        this.unitList = new ArrayList<String>() { // from class: com.qianhe.yct.view.UnitDropdownView.1
            {
                for (int i2 : UnitEnum.getSelectableTypes()) {
                    add(UnitEnum.getSymbol(i2));
                }
            }
        };
        this.lastUnitType = AppConfigManager.getInstance().getUnitPreference();
        initView(context, attributeSet);
    }

    private void initView(Context context, AttributeSet attributeSet) {
        setOrientation(0);
        setGravity(16);
        setLayoutDirection(0);
        int i = (int) (getResources().getDisplayMetrics().density * 15.0f);
        int i2 = (int) (getResources().getDisplayMetrics().density * 10.0f);
        setPadding(i, i2, i, i2);
        LayoutInflater.from(context).inflate(R$layout.view_custom_dropdown, (ViewGroup) this, true);
        this.tvSelectedUnit = (TextView) findViewById(R$id.tvSelected);
        this.ivArrow = (ImageView) findViewById(R$id.ivArrow);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.UnitDropdownView);
            try {
                boolean z = typedArrayObtainStyledAttributes.getBoolean(R$styleable.UnitDropdownView_enabled, false);
                this.enabled = z;
                setEnabled(z);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        this.tvSelectedUnit.setFocusable(false);
        this.ivArrow.setFocusable(false);
        setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.view.UnitDropdownView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.toggleDropdown();
            }
        });
        setClickable(true);
        initPopupWindow(context);
    }

    private void setSelectedUnitText(String str) {
        this.tvSelectedUnit.setText("\u200e" + str);
    }

    private void initPopupWindow(Context context) {
        PopupWindow popupWindow = this.popupWindow;
        if (popupWindow != null && popupWindow.isShowing()) {
            this.popupWindow.dismiss();
        }
        this.items = new TextView[this.unitList.size()];
        int iTypeToSelectableIndex = UnitEnum.typeToSelectableIndex(this.lastUnitType);
        final int i = 0;
        while (true) {
            boolean z = true;
            if (i >= this.unitList.size()) {
                break;
            }
            this.items[i] = (TextView) LayoutInflater.from(context).inflate(R$layout.item_dropdown, (ViewGroup) null);
            this.items[i].setText("\u200e" + this.unitList.get(i));
            this.items[i].setTextDirection(3);
            TextView textView = this.items[i];
            if (iTypeToSelectableIndex != i) {
                z = false;
            }
            textView.setSelected(z);
            this.items[i].setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.view.UnitDropdownView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) throws JSONException {
                    UnitDropdownView.m2988$r8$lambda$XiCQwtOcgvnAAR4DTvvHN6qMc(this.f$0, i, view);
                }
            });
            i++;
        }
        setSelectedUnitText(this.unitList.get(iTypeToSelectableIndex));
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.popup_window, (ViewGroup) null);
        ViewGroup viewGroup = (ViewGroup) viewInflate.findViewById(R$id.container);
        for (TextView textView2 : this.items) {
            viewGroup.addView(textView2);
        }
        measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        PopupWindow popupWindow2 = new PopupWindow(viewInflate, -2, -2, true);
        this.popupWindow = popupWindow2;
        popupWindow2.setOutsideTouchable(true);
        this.popupWindow.setBackgroundDrawable(ContextCompat.getDrawable(context, R$drawable.bg_round_white));
        this.popupWindow.setElevation(8.0f);
        this.popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.qianhe.yct.view.UnitDropdownView$$ExternalSyntheticLambda2
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                this.f$0.collapseDropdown();
            }
        });
    }

    /* renamed from: $r8$lambda$Xi-C-QwtOcgvnAAR4DTvvHN6qMc, reason: not valid java name */
    public static /* synthetic */ void m2988$r8$lambda$XiCQwtOcgvnAAR4DTvvHN6qMc(UnitDropdownView unitDropdownView, int i, View view) throws JSONException {
        unitDropdownView.setSelectedUnitText(unitDropdownView.unitList.get(i));
        unitDropdownView.lastUnitType = UnitEnum.selectableIndexToType(i);
        AppConfigManager.getInstance().setUnitPreference(unitDropdownView.lastUnitType);
        unitDropdownView.collapseDropdown();
        OnUnitSelectedListener onUnitSelectedListener = unitDropdownView.listener;
        if (onUnitSelectedListener != null) {
            onUnitSelectedListener.onUnitSelected(unitDropdownView.lastUnitType);
        }
    }

    public void initUnit(Context context, int i) {
        this.lastUnitType = UnitEnum.normalize(i);
        initPopupWindow(context);
        OnUnitSelectedListener onUnitSelectedListener = this.listener;
        if (onUnitSelectedListener != null) {
            onUnitSelectedListener.onUnitSelected(this.lastUnitType);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        this.enabled = z;
        super.setEnabled(z);
        setClickable(z);
        TextView textView = this.tvSelectedUnit;
        if (textView != null) {
            textView.setEnabled(z);
        }
        this.ivArrow.setVisibility(z ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleDropdown() {
        if (this.enabled) {
            if (this.isExpanded) {
                collapseDropdown();
            } else {
                expandDropdown();
            }
        }
    }

    private void expandDropdown() {
        PopupWindow popupWindow = this.popupWindow;
        if (popupWindow == null || popupWindow.isShowing()) {
            return;
        }
        View contentView = this.popupWindow.getContentView();
        contentView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredHeight = contentView.getMeasuredHeight();
        this.popupWindow.setWidth(getWidth());
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        int height = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getHeight();
        Rect rect = new Rect();
        getWindowVisibleDisplayFrame(rect);
        int i = rect.top;
        int height2 = (height - (iArr[1] + getHeight())) - i;
        int i2 = iArr[1];
        int i3 = i2 - i;
        if (height2 >= measuredHeight) {
            this.popupWindow.showAsDropDown(this, 0, 10);
        } else if (i3 < measuredHeight && height2 >= i3) {
            this.popupWindow.showAsDropDown(this, 0, 10);
        } else {
            this.popupWindow.showAtLocation(this, 8388659, iArr[0], i2 - measuredHeight);
        }
        this.isExpanded = true;
        this.ivArrow.setImageResource(R$drawable.icon_arrow_up);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void collapseDropdown() {
        PopupWindow popupWindow = this.popupWindow;
        if (popupWindow != null && popupWindow.isShowing()) {
            this.popupWindow.dismiss();
            if (this.items != null) {
                int iTypeToSelectableIndex = UnitEnum.typeToSelectableIndex(this.lastUnitType);
                int i = 0;
                while (i < this.unitList.size()) {
                    this.items[i].setSelected(iTypeToSelectableIndex == i);
                    i++;
                }
            }
        }
        this.isExpanded = false;
        this.ivArrow.setImageResource(R$drawable.icon_arrow_down);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        forceHorizontalParentLtr();
        normalizeMarginStartToLeft();
    }

    private void forceHorizontalParentLtr() {
        ViewParent parent = getParent();
        if (parent instanceof LinearLayout) {
            LinearLayout linearLayout = (LinearLayout) parent;
            if (linearLayout.getOrientation() == 0) {
                linearLayout.setLayoutDirection(0);
            }
        }
    }

    private void normalizeMarginStartToLeft() {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        int marginStart;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if ((layoutParams instanceof ViewGroup.MarginLayoutParams) && (marginStart = (marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams).getMarginStart()) > 0 && marginLayoutParams.leftMargin == 0) {
            marginLayoutParams.leftMargin = marginStart;
            marginLayoutParams.setMarginStart(0);
            setLayoutParams(marginLayoutParams);
        }
    }

    public void setOnUnitSelectedListener(OnUnitSelectedListener onUnitSelectedListener) {
        this.listener = onUnitSelectedListener;
    }

    public void setCurrnetUnit(Context context, int i) {
        int iNormalize = UnitEnum.normalize(i);
        this.lastUnitType = iNormalize;
        int iTypeToSelectableIndex = UnitEnum.typeToSelectableIndex(iNormalize);
        if (iTypeToSelectableIndex < 0 || iTypeToSelectableIndex >= this.unitList.size()) {
            return;
        }
        setSelectedUnitText(this.unitList.get(iTypeToSelectableIndex));
        if (this.items != null) {
            int i2 = 0;
            while (i2 < this.unitList.size()) {
                this.items[i2].setSelected(iTypeToSelectableIndex == i2);
                i2++;
            }
        }
    }

    public int getCurrnetUnit() {
        return this.lastUnitType;
    }

    public String getSelectedUnitText() {
        int iTypeToSelectableIndex = UnitEnum.typeToSelectableIndex(this.lastUnitType);
        if (iTypeToSelectableIndex >= 0 && iTypeToSelectableIndex < this.unitList.size()) {
            return this.unitList.get(iTypeToSelectableIndex);
        }
        return this.unitList.get(0);
    }
}
