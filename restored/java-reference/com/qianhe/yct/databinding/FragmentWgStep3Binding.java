package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;
import com.qianhe.yct.view.UnitDropdownView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentWgStep3Binding {
    public final NumericEditText edtHeightDiff;
    public final NumericEditText edtLeftBottomWidth;
    public final NumericEditText edtLeftSlope;
    public final NumericEditText edtLength;
    public final NumericEditText edtRatio;
    public final NumericEditText edtRightBottomWidth;
    public final NumericEditText edtRightSlope;
    public final NumericEditText edtWidth;
    public final ImageView ivStep3;
    public final UnitDropdownView lengthDropdown;
    public final LinearLayout lltAdvanced;
    public final LinearLayout lltAdvancedBottomWidth;
    public final LinearLayout lltAdvancedSlope;
    public final LinearLayout lltCollect;
    public final LinearLayout lltHeightDiff;
    public final LinearLayout lltRatio;
    public final NestedScrollView nsv;
    public final RadioButton rbBottomWidth;
    public final RadioButton rbSlope;
    public final RadioGroup rgAdvanced;
    private final LinearLayout rootView;
    public final AppCompatTextView tvAdvanced;
    public final TextView tvContinue;
    public final TextView tvDitchType;
    public final TextView tvPrevious;

    private FragmentWgStep3Binding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, NumericEditText numericEditText4, NumericEditText numericEditText5, NumericEditText numericEditText6, NumericEditText numericEditText7, NumericEditText numericEditText8, ImageView imageView, UnitDropdownView unitDropdownView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, NestedScrollView nestedScrollView, RadioButton radioButton, RadioButton radioButton2, RadioGroup radioGroup, AppCompatTextView appCompatTextView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.edtHeightDiff = numericEditText;
        this.edtLeftBottomWidth = numericEditText2;
        this.edtLeftSlope = numericEditText3;
        this.edtLength = numericEditText4;
        this.edtRatio = numericEditText5;
        this.edtRightBottomWidth = numericEditText6;
        this.edtRightSlope = numericEditText7;
        this.edtWidth = numericEditText8;
        this.ivStep3 = imageView;
        this.lengthDropdown = unitDropdownView;
        this.lltAdvanced = linearLayout2;
        this.lltAdvancedBottomWidth = linearLayout3;
        this.lltAdvancedSlope = linearLayout4;
        this.lltCollect = linearLayout5;
        this.lltHeightDiff = linearLayout6;
        this.lltRatio = linearLayout7;
        this.nsv = nestedScrollView;
        this.rbBottomWidth = radioButton;
        this.rbSlope = radioButton2;
        this.rgAdvanced = radioGroup;
        this.tvAdvanced = appCompatTextView;
        this.tvContinue = textView;
        this.tvDitchType = textView2;
        this.tvPrevious = textView3;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentWgStep3Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentWgStep3Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_wg_step3, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentWgStep3Binding bind(View view) {
        int i = R$id.edtHeightDiff;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtLeftBottomWidth;
            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText2 != null) {
                i = R$id.edtLeftSlope;
                NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText3 != null) {
                    i = R$id.edtLength;
                    NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                    if (numericEditText4 != null) {
                        i = R$id.edtRatio;
                        NumericEditText numericEditText5 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                        if (numericEditText5 != null) {
                            i = R$id.edtRightBottomWidth;
                            NumericEditText numericEditText6 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                            if (numericEditText6 != null) {
                                i = R$id.edtRightSlope;
                                NumericEditText numericEditText7 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                if (numericEditText7 != null) {
                                    i = R$id.edtWidth;
                                    NumericEditText numericEditText8 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                    if (numericEditText8 != null) {
                                        i = R$id.ivStep3;
                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                                        if (imageView != null) {
                                            i = R$id.lengthDropdown;
                                            UnitDropdownView unitDropdownView = (UnitDropdownView) ViewBindings.findChildViewById(view, i);
                                            if (unitDropdownView != null) {
                                                i = R$id.lltAdvanced;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout != null) {
                                                    i = R$id.lltAdvancedBottomWidth;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayout2 != null) {
                                                        i = R$id.lltAdvancedSlope;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                        if (linearLayout3 != null) {
                                                            i = R$id.lltCollect;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                            if (linearLayout4 != null) {
                                                                i = R$id.lltHeightDiff;
                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                if (linearLayout5 != null) {
                                                                    i = R$id.lltRatio;
                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                    if (linearLayout6 != null) {
                                                                        i = R$id.nsv;
                                                                        NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                                                        if (nestedScrollView != null) {
                                                                            i = R$id.rbBottomWidth;
                                                                            RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, i);
                                                                            if (radioButton != null) {
                                                                                i = R$id.rbSlope;
                                                                                RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, i);
                                                                                if (radioButton2 != null) {
                                                                                    i = R$id.rgAdvanced;
                                                                                    RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, i);
                                                                                    if (radioGroup != null) {
                                                                                        i = R$id.tvAdvanced;
                                                                                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (appCompatTextView != null) {
                                                                                            i = R$id.tvContinue;
                                                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (textView != null) {
                                                                                                i = R$id.tvDitchType;
                                                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (textView2 != null) {
                                                                                                    i = R$id.tvPrevious;
                                                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (textView3 != null) {
                                                                                                        return new FragmentWgStep3Binding((LinearLayout) view, numericEditText, numericEditText2, numericEditText3, numericEditText4, numericEditText5, numericEditText6, numericEditText7, numericEditText8, imageView, unitDropdownView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, nestedScrollView, radioButton, radioButton2, radioGroup, appCompatTextView, textView, textView2, textView3);
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
