package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;
import com.qianhe.yct.view.UnitDropdownView;
import pl.droidsonroids.gif.GifImageView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentExcavatorMode4BucketBinding {
    public final NumericEditText edtAB;
    public final NumericEditText edtAT;
    public final NumericEditText edtLR;
    public final NumericEditText edtNA;
    public final NumericEditText edtNT;
    public final AppCompatEditText edtShovelName;
    public final GifImageView ivStep;
    public final LinearLayout lltExistingHint;
    public final LinearLayout lltRowLr;
    public final LinearLayout lltRowNaAb;
    public final LinearLayout lltRowNtAt;
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
    public final UnitDropdownView unitDropdownSensor;

    private FragmentExcavatorMode4BucketBinding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, NumericEditText numericEditText4, NumericEditText numericEditText5, AppCompatEditText appCompatEditText, GifImageView gifImageView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8, TextView textView, TextView textView2, AppCompatTextView appCompatTextView, TextView textView3, TextView textView4, AppCompatTextView appCompatTextView2, UnitDropdownView unitDropdownView) {
        this.rootView = linearLayout;
        this.edtAB = numericEditText;
        this.edtAT = numericEditText2;
        this.edtLR = numericEditText3;
        this.edtNA = numericEditText4;
        this.edtNT = numericEditText5;
        this.edtShovelName = appCompatEditText;
        this.ivStep = gifImageView;
        this.lltExistingHint = linearLayout2;
        this.lltRowLr = linearLayout3;
        this.lltRowNaAb = linearLayout4;
        this.lltRowNtAt = linearLayout5;
        this.lltShovelManager = linearLayout6;
        this.lltUnitRow = linearLayout7;
        this.main = linearLayout8;
        this.tvCancelExisting = textView;
        this.tvContinue = textView2;
        this.tvDoubt = appCompatTextView;
        this.tvExistingHint = textView3;
        this.tvPrevious = textView4;
        this.tvShovelManager = appCompatTextView2;
        this.unitDropdownSensor = unitDropdownView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentExcavatorMode4BucketBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentExcavatorMode4BucketBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_excavator_mode4_bucket, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentExcavatorMode4BucketBinding bind(View view) {
        int i = R$id.edtAB;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtAT;
            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText2 != null) {
                i = R$id.edtLR;
                NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText3 != null) {
                    i = R$id.edtNA;
                    NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                    if (numericEditText4 != null) {
                        i = R$id.edtNT;
                        NumericEditText numericEditText5 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                        if (numericEditText5 != null) {
                            i = R$id.edtShovelName;
                            AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
                            if (appCompatEditText != null) {
                                i = R$id.ivStep;
                                GifImageView gifImageView = (GifImageView) ViewBindings.findChildViewById(view, i);
                                if (gifImageView != null) {
                                    i = R$id.lltExistingHint;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (linearLayout != null) {
                                        i = R$id.lltRowLr;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout2 != null) {
                                            i = R$id.lltRowNaAb;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout3 != null) {
                                                i = R$id.lltRowNtAt;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout4 != null) {
                                                    i = R$id.lltShovelManager;
                                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayout5 != null) {
                                                        i = R$id.lltUnitRow;
                                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                        if (linearLayout6 != null) {
                                                            LinearLayout linearLayout7 = (LinearLayout) view;
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
                                                                                    i = R$id.unitDropdownSensor;
                                                                                    UnitDropdownView unitDropdownView = (UnitDropdownView) ViewBindings.findChildViewById(view, i);
                                                                                    if (unitDropdownView != null) {
                                                                                        return new FragmentExcavatorMode4BucketBinding(linearLayout7, numericEditText, numericEditText2, numericEditText3, numericEditText4, numericEditText5, appCompatEditText, gifImageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, textView, textView2, appCompatTextView, textView3, textView4, appCompatTextView2, unitDropdownView);
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
