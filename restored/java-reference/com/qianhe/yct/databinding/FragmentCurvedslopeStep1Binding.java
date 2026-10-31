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
import com.qianhe.yct.view.DitchTypeDropdown;
import com.qianhe.yct.view.NumericEditText;
import com.qianhe.yct.view.ToothView;
import com.qianhe.yct.view.UnitDropdownView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentCurvedslopeStep1Binding {
    public final NumericEditText edtEast;
    public final NumericEditText edtElev;
    public final NumericEditText edtNorth;
    public final NumericEditText edtValue;
    public final DitchTypeDropdown fillDigType;
    public final ImageView ivDoubt;
    public final ImageView ivReset;
    public final ImageView ivType;
    public final LinearLayout lltCollect;
    public final LinearLayout lltValue;
    public final LinearLayout main;
    public final NestedScrollView nsv;
    private final LinearLayout rootView;
    public final ToothView toothView;
    public final TextView tvCadImport;
    public final TextView tvContinue;
    public final TextView tvPrevious;
    public final TextView tvType;
    public final UnitDropdownView unitDropdown;

    private FragmentCurvedslopeStep1Binding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, NumericEditText numericEditText4, DitchTypeDropdown ditchTypeDropdown, ImageView imageView, ImageView imageView2, ImageView imageView3, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, NestedScrollView nestedScrollView, ToothView toothView, TextView textView, TextView textView2, TextView textView3, TextView textView4, UnitDropdownView unitDropdownView) {
        this.rootView = linearLayout;
        this.edtEast = numericEditText;
        this.edtElev = numericEditText2;
        this.edtNorth = numericEditText3;
        this.edtValue = numericEditText4;
        this.fillDigType = ditchTypeDropdown;
        this.ivDoubt = imageView;
        this.ivReset = imageView2;
        this.ivType = imageView3;
        this.lltCollect = linearLayout2;
        this.lltValue = linearLayout3;
        this.main = linearLayout4;
        this.nsv = nestedScrollView;
        this.toothView = toothView;
        this.tvCadImport = textView;
        this.tvContinue = textView2;
        this.tvPrevious = textView3;
        this.tvType = textView4;
        this.unitDropdown = unitDropdownView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCurvedslopeStep1Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentCurvedslopeStep1Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_curvedslope_step1, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentCurvedslopeStep1Binding bind(View view) {
        int i = R$id.edtEast;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtElev;
            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText2 != null) {
                i = R$id.edtNorth;
                NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText3 != null) {
                    i = R$id.edtValue;
                    NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                    if (numericEditText4 != null) {
                        i = R$id.fillDigType;
                        DitchTypeDropdown ditchTypeDropdown = (DitchTypeDropdown) ViewBindings.findChildViewById(view, i);
                        if (ditchTypeDropdown != null) {
                            i = R$id.ivDoubt;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                            if (imageView != null) {
                                i = R$id.ivReset;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView2 != null) {
                                    i = R$id.ivType;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i);
                                    if (imageView3 != null) {
                                        i = R$id.lltCollect;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout != null) {
                                            i = R$id.lltValue;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout2 != null) {
                                                LinearLayout linearLayout3 = (LinearLayout) view;
                                                i = R$id.nsv;
                                                NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                                if (nestedScrollView != null) {
                                                    i = R$id.toothView;
                                                    ToothView toothView = (ToothView) ViewBindings.findChildViewById(view, i);
                                                    if (toothView != null) {
                                                        i = R$id.tvCadImport;
                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView != null) {
                                                            i = R$id.tvContinue;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView2 != null) {
                                                                i = R$id.tvPrevious;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                if (textView3 != null) {
                                                                    i = R$id.tvType;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                    if (textView4 != null) {
                                                                        i = R$id.unitDropdown;
                                                                        UnitDropdownView unitDropdownView = (UnitDropdownView) ViewBindings.findChildViewById(view, i);
                                                                        if (unitDropdownView != null) {
                                                                            return new FragmentCurvedslopeStep1Binding(linearLayout3, numericEditText, numericEditText2, numericEditText3, numericEditText4, ditchTypeDropdown, imageView, imageView2, imageView3, linearLayout, linearLayout2, linearLayout3, nestedScrollView, toothView, textView, textView2, textView3, textView4, unitDropdownView);
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
