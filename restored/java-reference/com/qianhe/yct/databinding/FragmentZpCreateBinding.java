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
import com.qianhe.yct.view.NumericEditText;
import com.qianhe.yct.view.ToothView;
import com.qianhe.yct.view.UnitDropdownView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentZpCreateBinding {
    public final UnitDropdownView customDropdown;
    public final NumericEditText edtEast;
    public final NumericEditText edtElev;
    public final NumericEditText edtNorth;
    public final NumericEditText edtValue;
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
    public final TextView tvTypeDes;

    private FragmentZpCreateBinding(LinearLayout linearLayout, UnitDropdownView unitDropdownView, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, NumericEditText numericEditText4, ImageView imageView, ImageView imageView2, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, NestedScrollView nestedScrollView, ToothView toothView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.customDropdown = unitDropdownView;
        this.edtEast = numericEditText;
        this.edtElev = numericEditText2;
        this.edtNorth = numericEditText3;
        this.edtValue = numericEditText4;
        this.ivReset = imageView;
        this.ivType = imageView2;
        this.lltCollect = linearLayout2;
        this.lltValue = linearLayout3;
        this.main = linearLayout4;
        this.nsv = nestedScrollView;
        this.toothView = toothView;
        this.tvCadImport = textView;
        this.tvContinue = textView2;
        this.tvPrevious = textView3;
        this.tvType = textView4;
        this.tvTypeDes = textView5;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentZpCreateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentZpCreateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_zp_create, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentZpCreateBinding bind(View view) {
        int i = R$id.customDropdown;
        UnitDropdownView unitDropdownView = (UnitDropdownView) ViewBindings.findChildViewById(view, i);
        if (unitDropdownView != null) {
            i = R$id.edtEast;
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
                            i = R$id.ivReset;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                            if (imageView != null) {
                                i = R$id.ivType;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView2 != null) {
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
                                                                    i = R$id.tvTypeDes;
                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                    if (textView5 != null) {
                                                                        return new FragmentZpCreateBinding(linearLayout3, unitDropdownView, numericEditText, numericEditText2, numericEditText3, numericEditText4, imageView, imageView2, linearLayout, linearLayout2, linearLayout3, nestedScrollView, toothView, textView, textView2, textView3, textView4, textView5);
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
