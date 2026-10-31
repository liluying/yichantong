package com.qianhe.yct.view;

import android.content.Context;
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
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DitchTypeDropdown extends RelativeLayout {
    public static final int DIG = 0;
    public static final int FILL = 1;
    private Context context;
    private boolean isExpanded;
    private TextView[] items;
    private ImageView ivArrow;
    private int lastType;
    private OnTypeSelectedListener listener;
    private PopupWindow popupWindow;
    private TextView tvSelected;
    private List<String> typeList;

    public interface OnTypeSelectedListener {
        void onTypeSelected(int i);
    }

    public DitchTypeDropdown(Context context) {
        this(context, null);
    }

    public DitchTypeDropdown(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DitchTypeDropdown(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isExpanded = false;
        ArrayList arrayList = new ArrayList();
        this.typeList = arrayList;
        this.lastType = 0;
        arrayList.add(context.getString(R$string.dig));
        this.typeList.add(context.getString(R$string.fill));
        initView(context);
    }

    private void initView(Context context) {
        this.context = context;
        setLayoutDirection(0);
        LayoutInflater.from(context).inflate(R$layout.view_dithtype_dropdown, (ViewGroup) this, true);
        this.tvSelected = (TextView) findViewById(R$id.tvSelected);
        this.ivArrow = (ImageView) findViewById(R$id.ivArrow);
        this.tvSelected.setTextDirection(3);
        findViewById(R$id.root).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.view.DitchTypeDropdown$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.toggleDropdown();
            }
        });
        setClickable(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
        initPopupWindow();
    }

    private void setSelectedTypeText(String str) {
        this.tvSelected.setText("\u200e" + str);
    }

    private void initPopupWindow() {
        this.items = new TextView[this.typeList.size()];
        final int i = 0;
        while (true) {
            boolean z = true;
            if (i >= this.typeList.size()) {
                break;
            }
            this.items[i] = (TextView) LayoutInflater.from(this.context).inflate(R$layout.item_dropdown, (ViewGroup) null);
            this.items[i].setText("\u200e" + this.typeList.get(i));
            this.items[i].setTextDirection(3);
            TextView textView = this.items[i];
            if (this.lastType != i) {
                z = false;
            }
            textView.setSelected(z);
            this.items[i].setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.view.DitchTypeDropdown$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DitchTypeDropdown.$r8$lambda$MSH2iillRsUZsG7LvmriupQFXEo(this.f$0, i, view);
                }
            });
            i++;
        }
        setSelectedTypeText(this.typeList.get(this.lastType));
        View viewInflate = LayoutInflater.from(this.context).inflate(R$layout.popup_window, (ViewGroup) null);
        ViewGroup viewGroup = (ViewGroup) viewInflate.findViewById(R$id.container);
        for (TextView textView2 : this.items) {
            viewGroup.addView(textView2);
        }
        measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        this.popupWindow = popupWindow;
        popupWindow.setOutsideTouchable(true);
        this.popupWindow.setBackgroundDrawable(ContextCompat.getDrawable(this.context, R$drawable.bg_round_white));
        this.popupWindow.setElevation(8.0f);
        this.popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.qianhe.yct.view.DitchTypeDropdown$$ExternalSyntheticLambda2
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                this.f$0.collapseDropdown();
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$MSH2iillRsUZsG7LvmriupQFXEo(DitchTypeDropdown ditchTypeDropdown, int i, View view) {
        ditchTypeDropdown.setSelectedTypeText(ditchTypeDropdown.typeList.get(i));
        ditchTypeDropdown.lastType = i;
        OnTypeSelectedListener onTypeSelectedListener = ditchTypeDropdown.listener;
        if (onTypeSelectedListener != null) {
            onTypeSelectedListener.onTypeSelected(i);
        }
        ditchTypeDropdown.collapseDropdown();
    }

    public void setCurrentType(int i) {
        setCurrentType(i, true);
    }

    public void setCurrentType(int i, boolean z) {
        OnTypeSelectedListener onTypeSelectedListener;
        this.lastType = i;
        if (this.tvSelected != null && i >= 0 && i < this.typeList.size()) {
            setSelectedTypeText(this.typeList.get(this.lastType));
        }
        if (this.items != null) {
            int i2 = 0;
            while (true) {
                TextView[] textViewArr = this.items;
                if (i2 >= textViewArr.length) {
                    break;
                }
                textViewArr[i2].setSelected(this.lastType == i2);
                i2++;
            }
        }
        if (!z || (onTypeSelectedListener = this.listener) == null) {
            return;
        }
        onTypeSelectedListener.onTypeSelected(this.lastType);
    }

    public int getCurrentType() {
        return this.lastType;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleDropdown() {
        if (this.isExpanded) {
            collapseDropdown();
        } else {
            expandDropdown();
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
                int i = 0;
                while (i < this.typeList.size()) {
                    this.items[i].setSelected(this.lastType == i);
                    i++;
                }
            }
        }
        this.isExpanded = false;
        this.ivArrow.setImageResource(R$drawable.icon_arrow_down);
    }

    public void setOnTypetSelectedListener(OnTypeSelectedListener onTypeSelectedListener) {
        this.listener = onTypeSelectedListener;
    }
}
