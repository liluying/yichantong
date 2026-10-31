package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityZeroingBinding {
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;
    public final TextView tvCancelZero;
    public final AppCompatTextView tvLimit;
    public final TextView tvRange;
    public final TextView tvRangeState;
    public final TextView tvRangeZero;
    public final TextView tvStatus;
    public final AppCompatTextView tvTiltDisplay;
    public final TextView tvZero;

    private ActivityZeroingBinding(LinearLayout linearLayout, LinearLayout linearLayout2, TitlebarBinding titlebarBinding, TextView textView, AppCompatTextView appCompatTextView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, AppCompatTextView appCompatTextView2, TextView textView6) {
        this.rootView = linearLayout;
        this.main = linearLayout2;
        this.topBar = titlebarBinding;
        this.tvCancelZero = textView;
        this.tvLimit = appCompatTextView;
        this.tvRange = textView2;
        this.tvRangeState = textView3;
        this.tvRangeZero = textView4;
        this.tvStatus = textView5;
        this.tvTiltDisplay = appCompatTextView2;
        this.tvZero = textView6;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityZeroingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityZeroingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_zeroing, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityZeroingBinding bind(View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i = R$id.topBar;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, i);
        if (viewFindChildViewById != null) {
            TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
            i = R$id.tvCancelZero;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R$id.tvLimit;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView != null) {
                    i = R$id.tvRange;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        i = R$id.tvRangeState;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            i = R$id.tvRangeZero;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView4 != null) {
                                i = R$id.tvStatus;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView5 != null) {
                                    i = R$id.tvTiltDisplay;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatTextView2 != null) {
                                        i = R$id.tvZero;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView6 != null) {
                                            return new ActivityZeroingBinding(linearLayout, linearLayout, titlebarBindingBind, textView, appCompatTextView, textView2, textView3, textView4, textView5, appCompatTextView2, textView6);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
