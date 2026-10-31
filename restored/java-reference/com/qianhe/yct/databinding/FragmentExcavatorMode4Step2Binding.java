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
public final class FragmentExcavatorMode4Step2Binding {
    public final NumericEditText edtAD;
    public final NumericEditText edtBC;
    public final NumericEditText edtCD;
    public final NumericEditText edtHA;
    public final NumericEditText edtPq;
    public final GifImageView ivStep;
    public final AppCompatImageView ivStepCloseUp;
    public final LinearLayout lltExistingHint;
    public final LinearLayout lltForearmSelect;
    public final LinearLayout lltRowAdBc;
    public final LinearLayout lltRowCd;
    public final LinearLayout lltRowHaPq;
    public final LinearLayout lltUnitRow;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TextView tvCancelExisting;
    public final TextView tvContinue;
    public final AppCompatTextView tvDoubt;
    public final TextView tvExistingHint;
    public final AppCompatTextView tvForearmSelect;
    public final AppCompatTextView tvInstallDoubt;
    public final TextView tvPrevious;
    public final UnitDropdownView unitDropdownSensor;

    private FragmentExcavatorMode4Step2Binding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, NumericEditText numericEditText4, NumericEditText numericEditText5, GifImageView gifImageView, AppCompatImageView appCompatImageView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8, TextView textView, TextView textView2, AppCompatTextView appCompatTextView, TextView textView3, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, TextView textView4, UnitDropdownView unitDropdownView) {
        this.rootView = linearLayout;
        this.edtAD = numericEditText;
        this.edtBC = numericEditText2;
        this.edtCD = numericEditText3;
        this.edtHA = numericEditText4;
        this.edtPq = numericEditText5;
        this.ivStep = gifImageView;
        this.ivStepCloseUp = appCompatImageView;
        this.lltExistingHint = linearLayout2;
        this.lltForearmSelect = linearLayout3;
        this.lltRowAdBc = linearLayout4;
        this.lltRowCd = linearLayout5;
        this.lltRowHaPq = linearLayout6;
        this.lltUnitRow = linearLayout7;
        this.main = linearLayout8;
        this.tvCancelExisting = textView;
        this.tvContinue = textView2;
        this.tvDoubt = appCompatTextView;
        this.tvExistingHint = textView3;
        this.tvForearmSelect = appCompatTextView2;
        this.tvInstallDoubt = appCompatTextView3;
        this.tvPrevious = textView4;
        this.unitDropdownSensor = unitDropdownView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentExcavatorMode4Step2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentExcavatorMode4Step2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_excavator_mode4_step2, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentExcavatorMode4Step2Binding bind(View view) {
        int i = R$id.edtAD;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtBC;
            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText2 != null) {
                i = R$id.edtCD;
                NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText3 != null) {
                    i = R$id.edtHA;
                    NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                    if (numericEditText4 != null) {
                        i = R$id.edtPq;
                        NumericEditText numericEditText5 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                        if (numericEditText5 != null) {
                            i = R$id.ivStep;
                            GifImageView gifImageView = (GifImageView) ViewBindings.findChildViewById(view, i);
                            if (gifImageView != null) {
                                i = R$id.ivStepCloseUp;
                                AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                                if (appCompatImageView != null) {
                                    i = R$id.lltExistingHint;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (linearLayout != null) {
                                        i = R$id.lltForearmSelect;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout2 != null) {
                                            i = R$id.lltRowAdBc;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout3 != null) {
                                                i = R$id.lltRowCd;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout4 != null) {
                                                    i = R$id.lltRowHaPq;
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
                                                                            i = R$id.tvForearmSelect;
                                                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                            if (appCompatTextView2 != null) {
                                                                                i = R$id.tvInstallDoubt;
                                                                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                if (appCompatTextView3 != null) {
                                                                                    i = R$id.tvPrevious;
                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (textView4 != null) {
                                                                                        i = R$id.unitDropdownSensor;
                                                                                        UnitDropdownView unitDropdownView = (UnitDropdownView) ViewBindings.findChildViewById(view, i);
                                                                                        if (unitDropdownView != null) {
                                                                                            return new FragmentExcavatorMode4Step2Binding(linearLayout7, numericEditText, numericEditText2, numericEditText3, numericEditText4, numericEditText5, gifImageView, appCompatImageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, textView, textView2, appCompatTextView, textView3, appCompatTextView2, appCompatTextView3, textView4, unitDropdownView);
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
