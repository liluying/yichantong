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
import com.qianhe.yct.view.NumericEditText;
import com.qianhe.yct.view.UnitDropdownView;
import pl.droidsonroids.gif.GifImageView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentExcavatorStep3Binding {
    public final NumericEditText edtAy;
    public final NumericEditText edtValue;
    public final GifImageView ivStep3;
    public final LinearLayout lltMode1;
    public final LinearLayout lltMode23;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TextView tvContinue;
    public final TextView tvCustomParam;
    public final AppCompatTextView tvDoubt;
    public final TextView tvPrevious;
    public final TextView tvStep3Tips;
    public final TextView tvTips;
    public final TextView tvUnitValue;
    public final UnitDropdownView unitDropdownSensor;

    private FragmentExcavatorStep3Binding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, GifImageView gifImageView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, TextView textView, TextView textView2, AppCompatTextView appCompatTextView, TextView textView3, TextView textView4, TextView textView5, TextView textView6, UnitDropdownView unitDropdownView) {
        this.rootView = linearLayout;
        this.edtAy = numericEditText;
        this.edtValue = numericEditText2;
        this.ivStep3 = gifImageView;
        this.lltMode1 = linearLayout2;
        this.lltMode23 = linearLayout3;
        this.main = linearLayout4;
        this.tvContinue = textView;
        this.tvCustomParam = textView2;
        this.tvDoubt = appCompatTextView;
        this.tvPrevious = textView3;
        this.tvStep3Tips = textView4;
        this.tvTips = textView5;
        this.tvUnitValue = textView6;
        this.unitDropdownSensor = unitDropdownView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentExcavatorStep3Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentExcavatorStep3Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_excavator_step3, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentExcavatorStep3Binding bind(View view) {
        int i = R$id.edtAy;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtValue;
            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText2 != null) {
                i = R$id.ivStep3;
                GifImageView gifImageView = (GifImageView) ViewBindings.findChildViewById(view, i);
                if (gifImageView != null) {
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
                                i = R$id.tvCustomParam;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView2 != null) {
                                    i = R$id.tvDoubt;
                                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatTextView != null) {
                                        i = R$id.tvPrevious;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView3 != null) {
                                            i = R$id.tvStep3Tips;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView4 != null) {
                                                i = R$id.tvTips;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView5 != null) {
                                                    i = R$id.tvUnitValue;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView6 != null) {
                                                        i = R$id.unitDropdownSensor;
                                                        UnitDropdownView unitDropdownView = (UnitDropdownView) ViewBindings.findChildViewById(view, i);
                                                        if (unitDropdownView != null) {
                                                            return new FragmentExcavatorStep3Binding(linearLayout3, numericEditText, numericEditText2, gifImageView, linearLayout, linearLayout2, linearLayout3, textView, textView2, appCompatTextView, textView3, textView4, textView5, textView6, unitDropdownView);
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
