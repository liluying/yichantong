package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.DitchTypeDropdown;
import com.qianhe.yct.view.NumericEditText;
import com.qianhe.yct.view.ToothView;
import com.qianhe.yct.view.UnitDropdownView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentWgStep2Binding {
    public final UnitDropdownView customDropdown;
    public final NumericEditText edtEast;
    public final NumericEditText edtElev;
    public final EditText edtHLat;
    public final EditText edtHLon;
    public final NumericEditText edtNorth;
    public final NumericEditText edtValue;
    public final ImageView ivReset;
    public final ImageView ivSelB;
    public final ImageView ivStep1;
    public final LinearLayout lleColl;
    public final LinearLayout lltCollect;
    public final LinearLayout lltSel;
    public final LinearLayout lltValue;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final ToothView toothView;
    public final TextView tvCadImport;
    public final TextView tvContinue;
    public final TextView tvDitchType;
    public final TextView tvMeasure;
    public final TextView tvPointLib;
    public final TextView tvPrevious;
    public final TextView tvTypeDes;
    public final DitchTypeDropdown typeDropdown;

    private FragmentWgStep2Binding(LinearLayout linearLayout, UnitDropdownView unitDropdownView, NumericEditText numericEditText, NumericEditText numericEditText2, EditText editText, EditText editText2, NumericEditText numericEditText3, NumericEditText numericEditText4, ImageView imageView, ImageView imageView2, ImageView imageView3, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, ToothView toothView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, DitchTypeDropdown ditchTypeDropdown) {
        this.rootView = linearLayout;
        this.customDropdown = unitDropdownView;
        this.edtEast = numericEditText;
        this.edtElev = numericEditText2;
        this.edtHLat = editText;
        this.edtHLon = editText2;
        this.edtNorth = numericEditText3;
        this.edtValue = numericEditText4;
        this.ivReset = imageView;
        this.ivSelB = imageView2;
        this.ivStep1 = imageView3;
        this.lleColl = linearLayout2;
        this.lltCollect = linearLayout3;
        this.lltSel = linearLayout4;
        this.lltValue = linearLayout5;
        this.main = linearLayout6;
        this.toothView = toothView;
        this.tvCadImport = textView;
        this.tvContinue = textView2;
        this.tvDitchType = textView3;
        this.tvMeasure = textView4;
        this.tvPointLib = textView5;
        this.tvPrevious = textView6;
        this.tvTypeDes = textView7;
        this.typeDropdown = ditchTypeDropdown;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentWgStep2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentWgStep2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_wg_step2, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentWgStep2Binding bind(View view) {
        int i = R$id.customDropdown;
        UnitDropdownView unitDropdownView = (UnitDropdownView) ViewBindings.findChildViewById(view, i);
        if (unitDropdownView != null) {
            i = R$id.edtEast;
            NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText != null) {
                i = R$id.edtElev;
                NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText2 != null) {
                    i = R$id.edtHLat;
                    EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
                    if (editText != null) {
                        i = R$id.edtHLon;
                        EditText editText2 = (EditText) ViewBindings.findChildViewById(view, i);
                        if (editText2 != null) {
                            i = R$id.edtNorth;
                            NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                            if (numericEditText3 != null) {
                                i = R$id.edtValue;
                                NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                if (numericEditText4 != null) {
                                    i = R$id.ivReset;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                                    if (imageView != null) {
                                        i = R$id.ivSelB;
                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                                        if (imageView2 != null) {
                                            i = R$id.ivStep1;
                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i);
                                            if (imageView3 != null) {
                                                i = R$id.lleColl;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout != null) {
                                                    i = R$id.lltCollect;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayout2 != null) {
                                                        i = R$id.lltSel;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                        if (linearLayout3 != null) {
                                                            i = R$id.lltValue;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                            if (linearLayout4 != null) {
                                                                LinearLayout linearLayout5 = (LinearLayout) view;
                                                                i = R$id.toothView;
                                                                ToothView toothView = (ToothView) ViewBindings.findChildViewById(view, i);
                                                                if (toothView != null) {
                                                                    i = R$id.tvCadImport;
                                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                    if (textView != null) {
                                                                        i = R$id.tvContinue;
                                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                        if (textView2 != null) {
                                                                            i = R$id.tvDitchType;
                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                            if (textView3 != null) {
                                                                                i = R$id.tvMeasure;
                                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                if (textView4 != null) {
                                                                                    i = R$id.tvPointLib;
                                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (textView5 != null) {
                                                                                        i = R$id.tvPrevious;
                                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (textView6 != null) {
                                                                                            i = R$id.tvTypeDes;
                                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (textView7 != null) {
                                                                                                i = R$id.typeDropdown;
                                                                                                DitchTypeDropdown ditchTypeDropdown = (DitchTypeDropdown) ViewBindings.findChildViewById(view, i);
                                                                                                if (ditchTypeDropdown != null) {
                                                                                                    return new FragmentWgStep2Binding(linearLayout5, unitDropdownView, numericEditText, numericEditText2, editText, editText2, numericEditText3, numericEditText4, imageView, imageView2, imageView3, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, toothView, textView, textView2, textView3, textView4, textView5, textView6, textView7, ditchTypeDropdown);
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
