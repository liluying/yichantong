package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.DitchTypeDropdown;
import com.qianhe.yct.view.NumericEditText;
import com.qianhe.yct.view.UnitDropdownView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentPolylineStep1Binding {
    public final NumericEditText edtEndDepthValue;
    public final NumericEditText edtHeightDiff;
    public final NumericEditText edtRatio;
    public final NumericEditText edtStartDepthValue;
    public final NumericEditText edtWidth;
    public final DitchTypeDropdown fillDigTypeA;
    public final DitchTypeDropdown fillDigTypeB;
    public final ImageView ivStatus;
    public final LinearLayout lltFillDig;
    public final LinearLayout lltHeightDiff;
    public final LinearLayout lltRatio;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final Spinner spSlopeMode;
    public final TextView tvContinue;
    public final TextView tvPrevious;
    public final TextView tvSlopeTip;
    public final TextView tvUseFillDig;
    public final UnitDropdownView unitDropdown;

    private FragmentPolylineStep1Binding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, NumericEditText numericEditText4, NumericEditText numericEditText5, DitchTypeDropdown ditchTypeDropdown, DitchTypeDropdown ditchTypeDropdown2, ImageView imageView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, Spinner spinner, TextView textView, TextView textView2, TextView textView3, TextView textView4, UnitDropdownView unitDropdownView) {
        this.rootView = linearLayout;
        this.edtEndDepthValue = numericEditText;
        this.edtHeightDiff = numericEditText2;
        this.edtRatio = numericEditText3;
        this.edtStartDepthValue = numericEditText4;
        this.edtWidth = numericEditText5;
        this.fillDigTypeA = ditchTypeDropdown;
        this.fillDigTypeB = ditchTypeDropdown2;
        this.ivStatus = imageView;
        this.lltFillDig = linearLayout2;
        this.lltHeightDiff = linearLayout3;
        this.lltRatio = linearLayout4;
        this.main = linearLayout5;
        this.spSlopeMode = spinner;
        this.tvContinue = textView;
        this.tvPrevious = textView2;
        this.tvSlopeTip = textView3;
        this.tvUseFillDig = textView4;
        this.unitDropdown = unitDropdownView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentPolylineStep1Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentPolylineStep1Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_polyline_step1, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentPolylineStep1Binding bind(View view) {
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, R$id.edtEndDepthValue);
        NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, R$id.edtHeightDiff);
        int i = R$id.edtRatio;
        NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText3 != null) {
            NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, R$id.edtStartDepthValue);
            i = R$id.edtWidth;
            NumericEditText numericEditText5 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText5 != null) {
                DitchTypeDropdown ditchTypeDropdown = (DitchTypeDropdown) ViewBindings.findChildViewById(view, R$id.fillDigTypeA);
                DitchTypeDropdown ditchTypeDropdown2 = (DitchTypeDropdown) ViewBindings.findChildViewById(view, R$id.fillDigTypeB);
                i = R$id.ivStatus;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView != null) {
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R$id.lltFillDig);
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R$id.lltHeightDiff);
                    i = R$id.lltRatio;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout3 != null) {
                        LinearLayout linearLayout4 = (LinearLayout) view;
                        i = R$id.spSlopeMode;
                        Spinner spinner = (Spinner) ViewBindings.findChildViewById(view, i);
                        if (spinner != null) {
                            i = R$id.tvContinue;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView != null) {
                                i = R$id.tvPrevious;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView2 != null) {
                                    i = R$id.tvSlopeTip;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView3 != null) {
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R$id.tvUseFillDig);
                                        i = R$id.unitDropdown;
                                        UnitDropdownView unitDropdownView = (UnitDropdownView) ViewBindings.findChildViewById(view, i);
                                        if (unitDropdownView != null) {
                                            return new FragmentPolylineStep1Binding(linearLayout4, numericEditText, numericEditText2, numericEditText3, numericEditText4, numericEditText5, ditchTypeDropdown, ditchTypeDropdown2, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, spinner, textView, textView2, textView3, textView4, unitDropdownView);
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
