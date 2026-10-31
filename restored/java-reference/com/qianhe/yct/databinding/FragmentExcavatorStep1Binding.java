package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;
import com.qianhe.yct.view.UnitDropdownView;
import pl.droidsonroids.gif.GifImageView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentExcavatorStep1Binding {
    public final NumericEditText edtHA;
    public final NumericEditText edtPq;
    public final NumericEditText edtValue;
    public final GifImageView ivStep1;
    public final AppCompatImageView ivStep1CloseUp;
    public final LinearLayout lltMode1;
    public final LinearLayout lltMode23;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TextView tvContinue;
    public final AppCompatTextView tvDoubt;
    public final AppCompatTextView tvInstallDoubt;
    public final TextView tvPrevious;
    public final TextView tvTips;
    public final TextView tvUnitValue;
    public final UnitDropdownView unitDropdownSensor;

    private FragmentExcavatorStep1Binding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, GifImageView gifImageView, AppCompatImageView appCompatImageView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, TextView textView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView2, TextView textView3, TextView textView4, UnitDropdownView unitDropdownView) {
        this.rootView = linearLayout;
        this.edtHA = numericEditText;
        this.edtPq = numericEditText2;
        this.edtValue = numericEditText3;
        this.ivStep1 = gifImageView;
        this.ivStep1CloseUp = appCompatImageView;
        this.lltMode1 = linearLayout2;
        this.lltMode23 = linearLayout3;
        this.main = linearLayout4;
        this.tvContinue = textView;
        this.tvDoubt = appCompatTextView;
        this.tvInstallDoubt = appCompatTextView2;
        this.tvPrevious = textView2;
        this.tvTips = textView3;
        this.tvUnitValue = textView4;
        this.unitDropdownSensor = unitDropdownView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentExcavatorStep1Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentExcavatorStep1Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_excavator_step1, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentExcavatorStep1Binding bind(View view) {
        int i = R$id.edtHA;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtPq;
            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText2 != null) {
                i = R$id.edtValue;
                NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText3 != null) {
                    i = R$id.ivStep1;
                    GifImageView gifImageView = (GifImageView) ViewBindings.findChildViewById(view, i);
                    if (gifImageView != null) {
                        i = R$id.ivStep1CloseUp;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                        if (appCompatImageView != null) {
                            i = R$id.lltMode1;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout != null) {
                                i = R$id.lltMode23;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout2 != null) {
                                    LinearLayout linearLayout3 = (LinearLayout) view;
                                    i = R$id.tvContinue;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null) {
                                        i = R$id.tvDoubt;
                                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                        if (appCompatTextView != null) {
                                            i = R$id.tvInstallDoubt;
                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                            if (appCompatTextView2 != null) {
                                                i = R$id.tvPrevious;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView2 != null) {
                                                    i = R$id.tvTips;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView3 != null) {
                                                        i = R$id.tvUnitValue;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView4 != null) {
                                                            i = R$id.unitDropdownSensor;
                                                            UnitDropdownView unitDropdownView = (UnitDropdownView) ViewBindings.findChildViewById(view, i);
                                                            if (unitDropdownView != null) {
                                                                return new FragmentExcavatorStep1Binding(linearLayout3, numericEditText, numericEditText2, numericEditText3, gifImageView, appCompatImageView, linearLayout, linearLayout2, linearLayout3, textView, appCompatTextView, appCompatTextView2, textView2, textView3, textView4, unitDropdownView);
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
