package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NightAwareImageView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentSitelevelingChoiceTypeBinding {
    public final NightAwareImageView ivLeveling;
    public final NightAwareImageView ivSlope;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TextView tvContinue;
    public final TextView tvPrevious;
    public final TextView tvTitle;

    private FragmentSitelevelingChoiceTypeBinding(LinearLayout linearLayout, NightAwareImageView nightAwareImageView, NightAwareImageView nightAwareImageView2, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.ivLeveling = nightAwareImageView;
        this.ivSlope = nightAwareImageView2;
        this.main = linearLayout2;
        this.tvContinue = textView;
        this.tvPrevious = textView2;
        this.tvTitle = textView3;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentSitelevelingChoiceTypeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentSitelevelingChoiceTypeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_siteleveling_choice_type, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentSitelevelingChoiceTypeBinding bind(View view) {
        int i = R$id.ivLeveling;
        NightAwareImageView nightAwareImageView = (NightAwareImageView) ViewBindings.findChildViewById(view, i);
        if (nightAwareImageView != null) {
            i = R$id.ivSlope;
            NightAwareImageView nightAwareImageView2 = (NightAwareImageView) ViewBindings.findChildViewById(view, i);
            if (nightAwareImageView2 != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i = R$id.tvContinue;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R$id.tvPrevious;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        i = R$id.tvTitle;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            return new FragmentSitelevelingChoiceTypeBinding(linearLayout, nightAwareImageView, nightAwareImageView2, linearLayout, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
