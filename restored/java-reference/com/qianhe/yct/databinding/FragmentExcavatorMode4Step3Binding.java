package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentExcavatorMode4Step3Binding {
    public final AppCompatImageView ivStep;
    public final LinearLayout lltProgress;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TextView tvArmAngle;
    public final TextView tvContinue;
    public final TextView tvHeadingError;
    public final TextView tvPrevious;
    public final TextView tvTipsLine1;

    private FragmentExcavatorMode4Step3Binding(LinearLayout linearLayout, AppCompatImageView appCompatImageView, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.ivStep = appCompatImageView;
        this.lltProgress = linearLayout2;
        this.main = linearLayout3;
        this.tvArmAngle = textView;
        this.tvContinue = textView2;
        this.tvHeadingError = textView3;
        this.tvPrevious = textView4;
        this.tvTipsLine1 = textView5;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentExcavatorMode4Step3Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentExcavatorMode4Step3Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_excavator_mode4_step3, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentExcavatorMode4Step3Binding bind(View view) {
        int i = R$id.ivStep;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = R$id.lltProgress;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                LinearLayout linearLayout2 = (LinearLayout) view;
                i = R$id.tvArmAngle;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R$id.tvContinue;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        i = R$id.tvHeadingError;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            i = R$id.tvPrevious;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView4 != null) {
                                i = R$id.tvTipsLine1;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView5 != null) {
                                    return new FragmentExcavatorMode4Step3Binding(linearLayout2, appCompatImageView, linearLayout, linearLayout2, textView, textView2, textView3, textView4, textView5);
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
