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
import com.qianhe.yct.view.UnitDropdownView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentDikeStep3Binding {
    public final NumericEditText edtLength;
    public final NumericEditText edtRatio;
    public final NumericEditText edtWidth;
    public final ImageView ivStep1;
    public final UnitDropdownView lengthDropdown;
    public final LinearLayout lltCollect;
    public final LinearLayout lltRatio;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TextView tvContinue;
    public final TextView tvDitchType;
    public final TextView tvPrevious;

    private FragmentDikeStep3Binding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, ImageView imageView, UnitDropdownView unitDropdownView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.edtLength = numericEditText;
        this.edtRatio = numericEditText2;
        this.edtWidth = numericEditText3;
        this.ivStep1 = imageView;
        this.lengthDropdown = unitDropdownView;
        this.lltCollect = linearLayout2;
        this.lltRatio = linearLayout3;
        this.main = linearLayout4;
        this.tvContinue = textView;
        this.tvDitchType = textView2;
        this.tvPrevious = textView3;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentDikeStep3Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentDikeStep3Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_dike_step3, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentDikeStep3Binding bind(View view) {
        int i = R$id.edtLength;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtRatio;
            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText2 != null) {
                i = R$id.edtWidth;
                NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText3 != null) {
                    i = R$id.ivStep1;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                    if (imageView != null) {
                        i = R$id.lengthDropdown;
                        UnitDropdownView unitDropdownView = (UnitDropdownView) ViewBindings.findChildViewById(view, i);
                        if (unitDropdownView != null) {
                            i = R$id.lltCollect;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout != null) {
                                i = R$id.lltRatio;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout2 != null) {
                                    LinearLayout linearLayout3 = (LinearLayout) view;
                                    i = R$id.tvContinue;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null) {
                                        i = R$id.tvDitchType;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView2 != null) {
                                            i = R$id.tvPrevious;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView3 != null) {
                                                return new FragmentDikeStep3Binding(linearLayout3, numericEditText, numericEditText2, numericEditText3, imageView, unitDropdownView, linearLayout, linearLayout2, linearLayout3, textView, textView2, textView3);
                                            }
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
