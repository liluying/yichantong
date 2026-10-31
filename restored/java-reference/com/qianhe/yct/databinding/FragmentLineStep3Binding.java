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
import com.qianhe.yct.view.LinePreView;
import com.qianhe.yct.view.NumericEditText;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentLineStep3Binding {
    public final NumericEditText edtHeightDiff;
    public final NumericEditText edtLeftItems;
    public final NumericEditText edtLength;
    public final NumericEditText edtRatio;
    public final NumericEditText edtRightItems;
    public final NumericEditText edtSpacing;
    public final NumericEditText edtValueA;
    public final NumericEditText edtValueB;
    public final ImageView ivToggle;
    public final LinePreView linePreView;
    public final LinearLayout lltCollect;
    public final LinearLayout lltParallelLine;
    public final LinearLayout lltToggle;
    public final LinearLayout lltValue;
    public final LinearLayout lltValueB;
    public final LinearLayout main;
    public final NestedScrollView nsv;
    private final LinearLayout rootView;
    public final TextView tvContinue;
    public final TextView tvPrevious;
    public final TextView tvTypeDes;
    public final TextView tvTypeDesB;
    public final TextView tvUnitHeightDiff;
    public final TextView tvUnitLength;
    public final TextView tvUnitSpacing;
    public final TextView tvUnitValueA;
    public final TextView tvUnitValueB;
    public final DitchTypeDropdown typeDropdownA;
    public final DitchTypeDropdown typeDropdownB;

    private FragmentLineStep3Binding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, NumericEditText numericEditText4, NumericEditText numericEditText5, NumericEditText numericEditText6, NumericEditText numericEditText7, NumericEditText numericEditText8, ImageView imageView, LinePreView linePreView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, NestedScrollView nestedScrollView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, DitchTypeDropdown ditchTypeDropdown, DitchTypeDropdown ditchTypeDropdown2) {
        this.rootView = linearLayout;
        this.edtHeightDiff = numericEditText;
        this.edtLeftItems = numericEditText2;
        this.edtLength = numericEditText3;
        this.edtRatio = numericEditText4;
        this.edtRightItems = numericEditText5;
        this.edtSpacing = numericEditText6;
        this.edtValueA = numericEditText7;
        this.edtValueB = numericEditText8;
        this.ivToggle = imageView;
        this.linePreView = linePreView;
        this.lltCollect = linearLayout2;
        this.lltParallelLine = linearLayout3;
        this.lltToggle = linearLayout4;
        this.lltValue = linearLayout5;
        this.lltValueB = linearLayout6;
        this.main = linearLayout7;
        this.nsv = nestedScrollView;
        this.tvContinue = textView;
        this.tvPrevious = textView2;
        this.tvTypeDes = textView3;
        this.tvTypeDesB = textView4;
        this.tvUnitHeightDiff = textView5;
        this.tvUnitLength = textView6;
        this.tvUnitSpacing = textView7;
        this.tvUnitValueA = textView8;
        this.tvUnitValueB = textView9;
        this.typeDropdownA = ditchTypeDropdown;
        this.typeDropdownB = ditchTypeDropdown2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentLineStep3Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentLineStep3Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_line_step3, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentLineStep3Binding bind(View view) {
        int i = R$id.edtHeightDiff;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtLeftItems;
            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText2 != null) {
                i = R$id.edtLength;
                NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText3 != null) {
                    i = R$id.edtRatio;
                    NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                    if (numericEditText4 != null) {
                        i = R$id.edtRightItems;
                        NumericEditText numericEditText5 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                        if (numericEditText5 != null) {
                            i = R$id.edtSpacing;
                            NumericEditText numericEditText6 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                            if (numericEditText6 != null) {
                                i = R$id.edtValueA;
                                NumericEditText numericEditText7 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                if (numericEditText7 != null) {
                                    i = R$id.edtValueB;
                                    NumericEditText numericEditText8 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                    if (numericEditText8 != null) {
                                        i = R$id.ivToggle;
                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                                        if (imageView != null) {
                                            i = R$id.linePreView;
                                            LinePreView linePreView = (LinePreView) ViewBindings.findChildViewById(view, i);
                                            if (linePreView != null) {
                                                i = R$id.lltCollect;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout != null) {
                                                    i = R$id.lltParallelLine;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayout2 != null) {
                                                        i = R$id.lltToggle;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                        if (linearLayout3 != null) {
                                                            i = R$id.lltValue;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                            if (linearLayout4 != null) {
                                                                i = R$id.lltValueB;
                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                if (linearLayout5 != null) {
                                                                    LinearLayout linearLayout6 = (LinearLayout) view;
                                                                    i = R$id.nsv;
                                                                    NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                                                    if (nestedScrollView != null) {
                                                                        i = R$id.tvContinue;
                                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                        if (textView != null) {
                                                                            i = R$id.tvPrevious;
                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                            if (textView2 != null) {
                                                                                i = R$id.tvTypeDes;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                if (textView3 != null) {
                                                                                    i = R$id.tvTypeDesB;
                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (textView4 != null) {
                                                                                        i = R$id.tvUnitHeightDiff;
                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (textView5 != null) {
                                                                                            i = R$id.tvUnitLength;
                                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (textView6 != null) {
                                                                                                i = R$id.tvUnitSpacing;
                                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (textView7 != null) {
                                                                                                    i = R$id.tvUnitValueA;
                                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (textView8 != null) {
                                                                                                        i = R$id.tvUnitValueB;
                                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (textView9 != null) {
                                                                                                            i = R$id.typeDropdownA;
                                                                                                            DitchTypeDropdown ditchTypeDropdown = (DitchTypeDropdown) ViewBindings.findChildViewById(view, i);
                                                                                                            if (ditchTypeDropdown != null) {
                                                                                                                i = R$id.typeDropdownB;
                                                                                                                DitchTypeDropdown ditchTypeDropdown2 = (DitchTypeDropdown) ViewBindings.findChildViewById(view, i);
                                                                                                                if (ditchTypeDropdown2 != null) {
                                                                                                                    return new FragmentLineStep3Binding(linearLayout6, numericEditText, numericEditText2, numericEditText3, numericEditText4, numericEditText5, numericEditText6, numericEditText7, numericEditText8, imageView, linePreView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, nestedScrollView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, ditchTypeDropdown, ditchTypeDropdown2);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
