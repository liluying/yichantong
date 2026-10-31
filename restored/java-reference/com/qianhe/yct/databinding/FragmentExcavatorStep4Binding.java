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
public final class FragmentExcavatorStep4Binding {
    public final NumericEditText edtAD;
    public final NumericEditText edtAx;
    public final NumericEditText edtBC;
    public final NumericEditText edtBD;
    public final NumericEditText edtCD;
    public final NumericEditText edtDx;
    public final NumericEditText edtValue;
    public final GifImageView ivStep4;
    public final LinearLayout lltDx;
    public final LinearLayout lltMode1;
    public final LinearLayout lltMode23;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TextView tvContinue;
    public final AppCompatTextView tvDoubt;
    public final TextView tvPrevious;
    public final TextView tvTips;
    public final TextView tvUnitValue;
    public final UnitDropdownView unitDropdownSensor;

    private FragmentExcavatorStep4Binding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, NumericEditText numericEditText4, NumericEditText numericEditText5, NumericEditText numericEditText6, NumericEditText numericEditText7, GifImageView gifImageView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, TextView textView, AppCompatTextView appCompatTextView, TextView textView2, TextView textView3, TextView textView4, UnitDropdownView unitDropdownView) {
        this.rootView = linearLayout;
        this.edtAD = numericEditText;
        this.edtAx = numericEditText2;
        this.edtBC = numericEditText3;
        this.edtBD = numericEditText4;
        this.edtCD = numericEditText5;
        this.edtDx = numericEditText6;
        this.edtValue = numericEditText7;
        this.ivStep4 = gifImageView;
        this.lltDx = linearLayout2;
        this.lltMode1 = linearLayout3;
        this.lltMode23 = linearLayout4;
        this.main = linearLayout5;
        this.tvContinue = textView;
        this.tvDoubt = appCompatTextView;
        this.tvPrevious = textView2;
        this.tvTips = textView3;
        this.tvUnitValue = textView4;
        this.unitDropdownSensor = unitDropdownView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentExcavatorStep4Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentExcavatorStep4Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_excavator_step4, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentExcavatorStep4Binding bind(View view) {
        int i = R$id.edtAD;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtAx;
            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText2 != null) {
                i = R$id.edtBC;
                NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText3 != null) {
                    i = R$id.edtBD;
                    NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                    if (numericEditText4 != null) {
                        i = R$id.edtCD;
                        NumericEditText numericEditText5 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                        if (numericEditText5 != null) {
                            i = R$id.edtDx;
                            NumericEditText numericEditText6 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                            if (numericEditText6 != null) {
                                i = R$id.edtValue;
                                NumericEditText numericEditText7 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                if (numericEditText7 != null) {
                                    i = R$id.ivStep4;
                                    GifImageView gifImageView = (GifImageView) ViewBindings.findChildViewById(view, i);
                                    if (gifImageView != null) {
                                        i = R$id.lltDx;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout != null) {
                                            i = R$id.lltMode1;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout2 != null) {
                                                i = R$id.lltMode23;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout3 != null) {
                                                    LinearLayout linearLayout4 = (LinearLayout) view;
                                                    i = R$id.tvContinue;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView != null) {
                                                        i = R$id.tvDoubt;
                                                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                        if (appCompatTextView != null) {
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
                                                                            return new FragmentExcavatorStep4Binding(linearLayout4, numericEditText, numericEditText2, numericEditText3, numericEditText4, numericEditText5, numericEditText6, numericEditText7, gifImageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView, appCompatTextView, textView2, textView3, textView4, unitDropdownView);
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
