package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentSitelevelingStep2Binding {
    public final NumericEditText edtRatio;
    public final ImageView ivStatus;
    public final LinearLayout lltRatio;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TextView tvContinue;
    public final TextView tvPrevious;

    private FragmentSitelevelingStep2Binding(LinearLayout linearLayout, NumericEditText numericEditText, ImageView imageView, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.edtRatio = numericEditText;
        this.ivStatus = imageView;
        this.lltRatio = linearLayout2;
        this.main = linearLayout3;
        this.tvContinue = textView;
        this.tvPrevious = textView2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentSitelevelingStep2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentSitelevelingStep2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_siteleveling_step2, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentSitelevelingStep2Binding bind(View view) {
        int i = R$id.edtRatio;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.ivStatus;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                i = R$id.lltRatio;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    LinearLayout linearLayout2 = (LinearLayout) view;
                    i = R$id.tvContinue;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        i = R$id.tvPrevious;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            return new FragmentSitelevelingStep2Binding(linearLayout2, numericEditText, imageView, linearLayout, linearLayout2, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
