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
public final class FragmentExcavatorChoiceTypeBinding {
    public final AppCompatImageView ivType1;
    public final AppCompatImageView ivType2;
    public final LinearLayout lltType1;
    public final LinearLayout lltType2;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TextView tvContinue;
    public final TextView tvPrevious;
    public final TextView tvTitle;
    public final TextView tvTypeDes1;
    public final TextView tvTypeDes2;

    private FragmentExcavatorChoiceTypeBinding(LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.ivType1 = appCompatImageView;
        this.ivType2 = appCompatImageView2;
        this.lltType1 = linearLayout2;
        this.lltType2 = linearLayout3;
        this.main = linearLayout4;
        this.tvContinue = textView;
        this.tvPrevious = textView2;
        this.tvTitle = textView3;
        this.tvTypeDes1 = textView4;
        this.tvTypeDes2 = textView5;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentExcavatorChoiceTypeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentExcavatorChoiceTypeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_excavator_choice_type, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentExcavatorChoiceTypeBinding bind(View view) {
        int i = R$id.ivType1;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = R$id.ivType2;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView2 != null) {
                i = R$id.lltType1;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = R$id.lltType2;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout2 != null) {
                        LinearLayout linearLayout3 = (LinearLayout) view;
                        i = R$id.tvContinue;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView != null) {
                            i = R$id.tvPrevious;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView2 != null) {
                                i = R$id.tvTitle;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView3 != null) {
                                    i = R$id.tvTypeDes1;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView4 != null) {
                                        i = R$id.tvTypeDes2;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView5 != null) {
                                            return new FragmentExcavatorChoiceTypeBinding(linearLayout3, appCompatImageView, appCompatImageView2, linearLayout, linearLayout2, linearLayout3, textView, textView2, textView3, textView4, textView5);
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
