package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;
import com.qianhe.yct.view.UnitDropdownView;
import pl.droidsonroids.gif.GifImageView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentExcavatorMode4Step4Binding {
    public final NumericEditText edtDx;
    public final GifImageView ivStep;
    public final LinearLayout main;
    public final RadioButton rbPlumbLeft;
    public final RadioButton rbPlumbRight;
    public final RadioGroup rgPlumbSide;
    private final LinearLayout rootView;
    public final TextView tvContinue;
    public final AppCompatTextView tvDoubt;
    public final TextView tvPrevious;
    public final TextView tvTips;
    public final UnitDropdownView unitDropdownSensor;

    private FragmentExcavatorMode4Step4Binding(LinearLayout linearLayout, NumericEditText numericEditText, GifImageView gifImageView, LinearLayout linearLayout2, RadioButton radioButton, RadioButton radioButton2, RadioGroup radioGroup, TextView textView, AppCompatTextView appCompatTextView, TextView textView2, TextView textView3, UnitDropdownView unitDropdownView) {
        this.rootView = linearLayout;
        this.edtDx = numericEditText;
        this.ivStep = gifImageView;
        this.main = linearLayout2;
        this.rbPlumbLeft = radioButton;
        this.rbPlumbRight = radioButton2;
        this.rgPlumbSide = radioGroup;
        this.tvContinue = textView;
        this.tvDoubt = appCompatTextView;
        this.tvPrevious = textView2;
        this.tvTips = textView3;
        this.unitDropdownSensor = unitDropdownView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentExcavatorMode4Step4Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentExcavatorMode4Step4Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_excavator_mode4_step4, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentExcavatorMode4Step4Binding bind(View view) {
        int i = R$id.edtDx;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.ivStep;
            GifImageView gifImageView = (GifImageView) ViewBindings.findChildViewById(view, i);
            if (gifImageView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i = R$id.rbPlumbLeft;
                RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, i);
                if (radioButton != null) {
                    i = R$id.rbPlumbRight;
                    RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, i);
                    if (radioButton2 != null) {
                        i = R$id.rgPlumbSide;
                        RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, i);
                        if (radioGroup != null) {
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
                                            i = R$id.unitDropdownSensor;
                                            UnitDropdownView unitDropdownView = (UnitDropdownView) ViewBindings.findChildViewById(view, i);
                                            if (unitDropdownView != null) {
                                                return new FragmentExcavatorMode4Step4Binding(linearLayout, numericEditText, gifImageView, linearLayout, radioButton, radioButton2, radioGroup, textView, appCompatTextView, textView2, textView3, unitDropdownView);
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
