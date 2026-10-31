package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;
import com.qianhe.yct.view.UnitDropdownView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentLineStep4Binding {
    public final UnitDropdownView customDropdownSpacing;
    public final NumericEditText edtSpacing;
    public final ImageView ivToggle;
    public final LinearLayout lltSpacing;
    public final LinearLayout lltToggle;
    public final LinearLayout main;
    public final NestedScrollView nsv;
    private final LinearLayout rootView;
    public final TextView tvContinue;
    public final TextView tvPrevious;

    private FragmentLineStep4Binding(LinearLayout linearLayout, UnitDropdownView unitDropdownView, NumericEditText numericEditText, ImageView imageView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, NestedScrollView nestedScrollView, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.customDropdownSpacing = unitDropdownView;
        this.edtSpacing = numericEditText;
        this.ivToggle = imageView;
        this.lltSpacing = linearLayout2;
        this.lltToggle = linearLayout3;
        this.main = linearLayout4;
        this.nsv = nestedScrollView;
        this.tvContinue = textView;
        this.tvPrevious = textView2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentLineStep4Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentLineStep4Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_line_step4, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentLineStep4Binding bind(View view) {
        int i = R$id.customDropdownSpacing;
        UnitDropdownView unitDropdownView = (UnitDropdownView) ViewBindings.findChildViewById(view, i);
        if (unitDropdownView != null) {
            i = R$id.edtSpacing;
            NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText != null) {
                i = R$id.ivToggle;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView != null) {
                    i = R$id.lltSpacing;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout != null) {
                        i = R$id.lltToggle;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout2 != null) {
                            LinearLayout linearLayout3 = (LinearLayout) view;
                            i = R$id.nsv;
                            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                            if (nestedScrollView != null) {
                                i = R$id.tvContinue;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView != null) {
                                    i = R$id.tvPrevious;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView2 != null) {
                                        return new FragmentLineStep4Binding(linearLayout3, unitDropdownView, numericEditText, imageView, linearLayout, linearLayout2, linearLayout3, nestedScrollView, textView, textView2);
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
