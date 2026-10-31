package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;
import com.qianhe.yct.view.UnitDropdownView;
import pl.droidsonroids.gif.GifImageView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentExcavatorStep2Binding {
    public final NumericEditText edtAB;
    public final NumericEditText edtG1;
    public final NumericEditText edtG2;
    public final NumericEditText edtG3;
    public final NumericEditText edtLR;
    public final AppCompatEditText edtShovelName;
    public final NumericEditText edtValue;
    public final GifImageView ivStep2;
    public final AppCompatImageView ivStep2CloseUp;
    public final LinearLayout lltExistingHint;
    public final LinearLayout lltMode1;
    public final LinearLayout lltMode23;
    public final LinearLayout lltRowAb;
    public final LinearLayout lltRowG1G2;
    public final LinearLayout lltRowG3Lr;
    public final LinearLayout lltShovelManager;
    public final LinearLayout lltUnitRow;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TextView tvCancelExisting;
    public final TextView tvContinue;
    public final AppCompatTextView tvDoubt;
    public final TextView tvExistingHint;
    public final TextView tvPrevious;
    public final AppCompatTextView tvShovelManager;
    public final TextView tvTips;
    public final TextView tvUnitValue;
    public final UnitDropdownView unitDropdownSensor;

    private FragmentExcavatorStep2Binding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, NumericEditText numericEditText4, NumericEditText numericEditText5, AppCompatEditText appCompatEditText, NumericEditText numericEditText6, GifImageView gifImageView, AppCompatImageView appCompatImageView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8, LinearLayout linearLayout9, LinearLayout linearLayout10, TextView textView, TextView textView2, AppCompatTextView appCompatTextView, TextView textView3, TextView textView4, AppCompatTextView appCompatTextView2, TextView textView5, TextView textView6, UnitDropdownView unitDropdownView) {
        this.rootView = linearLayout;
        this.edtAB = numericEditText;
        this.edtG1 = numericEditText2;
        this.edtG2 = numericEditText3;
        this.edtG3 = numericEditText4;
        this.edtLR = numericEditText5;
        this.edtShovelName = appCompatEditText;
        this.edtValue = numericEditText6;
        this.ivStep2 = gifImageView;
        this.ivStep2CloseUp = appCompatImageView;
        this.lltExistingHint = linearLayout2;
        this.lltMode1 = linearLayout3;
        this.lltMode23 = linearLayout4;
        this.lltRowAb = linearLayout5;
        this.lltRowG1G2 = linearLayout6;
        this.lltRowG3Lr = linearLayout7;
        this.lltShovelManager = linearLayout8;
        this.lltUnitRow = linearLayout9;
        this.main = linearLayout10;
        this.tvCancelExisting = textView;
        this.tvContinue = textView2;
        this.tvDoubt = appCompatTextView;
        this.tvExistingHint = textView3;
        this.tvPrevious = textView4;
        this.tvShovelManager = appCompatTextView2;
        this.tvTips = textView5;
        this.tvUnitValue = textView6;
        this.unitDropdownSensor = unitDropdownView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentExcavatorStep2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentExcavatorStep2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_excavator_step2, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentExcavatorStep2Binding bind(View view) {
        int i = R$id.edtAB;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtG1;
            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText2 != null) {
                i = R$id.edtG2;
                NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText3 != null) {
                    i = R$id.edtG3;
                    NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                    if (numericEditText4 != null) {
                        i = R$id.edtLR;
                        NumericEditText numericEditText5 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                        if (numericEditText5 != null) {
                            i = R$id.edtShovelName;
                            AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
                            if (appCompatEditText != null) {
                                i = R$id.edtValue;
                                NumericEditText numericEditText6 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                if (numericEditText6 != null) {
                                    i = R$id.ivStep2;
                                    GifImageView gifImageView = (GifImageView) ViewBindings.findChildViewById(view, i);
                                    if (gifImageView != null) {
                                        i = R$id.ivStep2CloseUp;
                                        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                        if (appCompatImageView != null) {
                                            i = R$id.lltExistingHint;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout != null) {
                                                i = R$id.lltMode1;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout2 != null) {
                                                    i = R$id.lltMode23;
                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayout3 != null) {
                                                        i = R$id.lltRowAb;
                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                        if (linearLayout4 != null) {
                                                            i = R$id.lltRowG1G2;
                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                            if (linearLayout5 != null) {
                                                                i = R$id.lltRowG3Lr;
                                                                LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                if (linearLayout6 != null) {
                                                                    i = R$id.lltShovelManager;
                                                                    LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                    if (linearLayout7 != null) {
                                                                        i = R$id.lltUnitRow;
                                                                        LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                        if (linearLayout8 != null) {
                                                                            LinearLayout linearLayout9 = (LinearLayout) view;
                                                                            i = R$id.tvCancelExisting;
                                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                            if (textView != null) {
                                                                                i = R$id.tvContinue;
                                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                if (textView2 != null) {
                                                                                    i = R$id.tvDoubt;
                                                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (appCompatTextView != null) {
                                                                                        i = R$id.tvExistingHint;
                                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (textView3 != null) {
                                                                                            i = R$id.tvPrevious;
                                                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (textView4 != null) {
                                                                                                i = R$id.tvShovelManager;
                                                                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (appCompatTextView2 != null) {
                                                                                                    i = R$id.tvTips;
                                                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (textView5 != null) {
                                                                                                        i = R$id.tvUnitValue;
                                                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (textView6 != null) {
                                                                                                            i = R$id.unitDropdownSensor;
                                                                                                            UnitDropdownView unitDropdownView = (UnitDropdownView) ViewBindings.findChildViewById(view, i);
                                                                                                            if (unitDropdownView != null) {
                                                                                                                return new FragmentExcavatorStep2Binding(linearLayout9, numericEditText, numericEditText2, numericEditText3, numericEditText4, numericEditText5, appCompatEditText, numericEditText6, gifImageView, appCompatImageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, linearLayout8, linearLayout9, textView, textView2, appCompatTextView, textView3, textView4, appCompatTextView2, textView5, textView6, unitDropdownView);
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
