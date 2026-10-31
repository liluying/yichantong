package com.qianhe.yct.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
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
public class ToothTipDropdownView extends RelativeLayout {
    public static final int LEFT = 0;
    public static final int MIDDLE = 1;
    public static final int NONE = -1;
    public static final int RIGHTH = 2;
    private Context context;
    private boolean isExpanded;
    private TextView[] items;
    private ImageView ivArrow;
    private ImageView ivICon;
    private int lastType;
    private OnSelectedListener listener;
    private PopupWindow popupWindow;
    private final List<Integer> resList;
    private final List<String> tvList;
    private TextView tvTooth;

    public interface OnSelectedListener {
        void onTypeSelected(int i);
    }

    public ToothTipDropdownView(Context context) {
        this(context, null);
    }

    public ToothTipDropdownView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ToothTipDropdownView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isExpanded = false;
        this.tvList = new ArrayList();
        this.resList = new ArrayList();
        this.lastType = -1;
        initView(context);
    }

    private void initView(Context context) {
        this.context = context;
        this.tvList.add(context.getString(R$string.left_tooth));
        this.tvList.add(context.getString(R$string.center_tooth));
        this.tvList.add(context.getString(R$string.rigth_tooth));
        this.resList.add(Integer.valueOf(R$drawable.icon_tooth_left_sel));
        this.resList.add(Integer.valueOf(R$drawable.icon_tooth_middle_sel));
        this.resList.add(Integer.valueOf(R$drawable.icon_tooth_rigth_sel));
        LayoutInflater.from(context).inflate(R$layout.tooth_tip_dropdown, (ViewGroup) this, true);
        this.ivICon = (ImageView) findViewById(R$id.ivICon);
        this.tvTooth = (TextView) findViewById(R$id.tvTooth);
        this.ivArrow = (ImageView) findViewById(R$id.ivArrow);
        findViewById(R$id.root).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.view.ToothTipDropdownView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.toggleDropdown();
            }
        });
        setClickable(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
        initPopupWindow(context);
    }

    private void initPopupWindow(Context context) {
        this.items = new TextView[this.tvList.size()];
        final int i = 0;
        while (true) {
            boolean z = true;
            if (i >= this.tvList.size()) {
                break;
            }
            this.items[i] = (TextView) LayoutInflater.from(context).inflate(R$layout.item_tooth_dropdown, (ViewGroup) null);
            this.items[i].setText(this.tvList.get(i));
            TextView textView = this.items[i];
            if (this.lastType != i) {
                z = false;
            }
            textView.setSelected(z);
            this.items[i].setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.view.ToothTipDropdownView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ToothTipDropdownView.m2982$r8$lambda$IgdKygr63rE2tqs4CIFMW4CEvI(this.f$0, i, view);
                }
            });
            i++;
        }
        int i2 = this.lastType;
        if (i2 != -1) {
            this.ivICon.setImageResource(this.resList.get(i2).intValue());
            this.tvTooth.setText(this.tvList.get(this.lastType));
        }
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.roll_popup_window, (ViewGroup) null);
        ViewGroup viewGroup = (ViewGroup) viewInflate.findViewById(R$id.container);
        for (TextView textView2 : this.items) {
            viewGroup.addView(textView2);
        }
        measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        this.popupWindow = popupWindow;
        popupWindow.setOutsideTouchable(true);
        this.popupWindow.setBackgroundDrawable(ContextCompat.getDrawable(context, R$drawable.bg_round_white));
        this.popupWindow.setElevation(30.0f);
        this.popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.qianhe.yct.view.ToothTipDropdownView$$ExternalSyntheticLambda2
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                this.f$0.collapseDropdown();
            }
        });
    }

    /* renamed from: $r8$lambda$IgdKygr63rE2tqs4CI-FMW4CEvI, reason: not valid java name */
    public static /* synthetic */ void m2982$r8$lambda$IgdKygr63rE2tqs4CIFMW4CEvI(ToothTipDropdownView toothTipDropdownView, int i, View view) {
        toothTipDropdownView.ivICon.setImageResource(toothTipDropdownView.resList.get(i).intValue());
        toothTipDropdownView.tvTooth.setText(toothTipDropdownView.tvList.get(i));
        toothTipDropdownView.lastType = i;
        OnSelectedListener onSelectedListener = toothTipDropdownView.listener;
        if (onSelectedListener != null) {
            onSelectedListener.onTypeSelected(i);
        }
        toothTipDropdownView.collapseDropdown();
    }

    public void init(Context context, double d) {
        if (this.lastType == -1) {
            if (d > -1.0d && d < 1.0d) {
                this.lastType = 1;
            } else if (d <= -1.0d) {
                this.lastType = 0;
            } else if (d >= 1.0d) {
                this.lastType = 2;
            }
            initPopupWindow(context);
            OnSelectedListener onSelectedListener = this.listener;
            if (onSelectedListener != null) {
                onSelectedListener.onTypeSelected(this.lastType);
            }
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
        this.ivArrow.setImageResource(R$drawable.icon_arrow_up_big);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void collapseDropdown() {
        PopupWindow popupWindow = this.popupWindow;
        if (popupWindow != null && popupWindow.isShowing()) {
            this.popupWindow.dismiss();
            if (this.items != null) {
                int i = 0;
                while (i < this.tvList.size()) {
                    this.items[i].setSelected(this.lastType == i);
                    i++;
                }
            }
        }
        this.isExpanded = false;
        this.ivArrow.setImageResource(R$drawable.icon_arrow_down_big);
    }

    public void setOnSelectedListener(OnSelectedListener onSelectedListener) {
        this.listener = onSelectedListener;
    }

    public int getToothType() {
        return this.lastType;
    }

    public void setToothType(int i) {
        if (i > this.resList.size() - 1) {
            i = 0;
        }
        this.lastType = i;
        initPopupWindow(this.context);
    }
}
