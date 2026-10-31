package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
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
public final class FragmentSpStep3Binding {
    public final NumericEditText edtDis;
    public final NumericEditText edtEast;
    public final NumericEditText edtElev;
    public final EditText edtHLat;
    public final EditText edtHLon;
    public final NumericEditText edtHeight;
    public final NumericEditText edtNorth;
    public final NumericEditText edtRatio;
    public final NumericEditText edtWidth;
    public final UnitDropdownView heightDropdown;
    public final ImageView ivReset;
    public final ImageView ivSelC;
    public final ImageView ivSelNoWidth;
    public final ImageView ivStep3Collect;
    public final LinearLayout lleColl;
    public final LinearLayout lltCollect;
    public final LinearLayout lltHeight;
    public final LinearLayout lltNoWidth;
    public final LinearLayout lltRadio;
    public final LinearLayout lltSel;
    public final LinearLayout lltWidth;
    public final LinearLayout main;
    public final NestedScrollView nsv;
    private final LinearLayout rootView;
    public final ToothView toothView;
    public final TextView tvCadImport;
    public final TextView tvCdes;
    public final TextView tvContinue;
    public final TextView tvMeasure;
    public final TextView tvPointLib;
    public final TextView tvPrevious;

    private FragmentSpStep3Binding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, EditText editText, EditText editText2, NumericEditText numericEditText4, NumericEditText numericEditText5, NumericEditText numericEditText6, NumericEditText numericEditText7, UnitDropdownView unitDropdownView, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8, LinearLayout linearLayout9, NestedScrollView nestedScrollView, ToothView toothView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = linearLayout;
        this.edtDis = numericEditText;
        this.edtEast = numericEditText2;
        this.edtElev = numericEditText3;
        this.edtHLat = editText;
        this.edtHLon = editText2;
        this.edtHeight = numericEditText4;
        this.edtNorth = numericEditText5;
        this.edtRatio = numericEditText6;
        this.edtWidth = numericEditText7;
        this.heightDropdown = unitDropdownView;
        this.ivReset = imageView;
        this.ivSelC = imageView2;
        this.ivSelNoWidth = imageView3;
        this.ivStep3Collect = imageView4;
        this.lleColl = linearLayout2;
        this.lltCollect = linearLayout3;
        this.lltHeight = linearLayout4;
        this.lltNoWidth = linearLayout5;
        this.lltRadio = linearLayout6;
        this.lltSel = linearLayout7;
        this.lltWidth = linearLayout8;
        this.main = linearLayout9;
        this.nsv = nestedScrollView;
        this.toothView = toothView;
        this.tvCadImport = textView;
        this.tvCdes = textView2;
        this.tvContinue = textView3;
        this.tvMeasure = textView4;
        this.tvPointLib = textView5;
        this.tvPrevious = textView6;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentSpStep3Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentSpStep3Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_sp_step3, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentSpStep3Binding bind(View view) {
        int i = R$id.edtDis;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtEast;
            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText2 != null) {
                i = R$id.edtElev;
                NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText3 != null) {
                    i = R$id.edtHLat;
                    EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
                    if (editText != null) {
                        i = R$id.edtHLon;
                        EditText editText2 = (EditText) ViewBindings.findChildViewById(view, i);
                        if (editText2 != null) {
                            i = R$id.edtHeight;
                            NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                            if (numericEditText4 != null) {
                                i = R$id.edtNorth;
                                NumericEditText numericEditText5 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                if (numericEditText5 != null) {
                                    i = R$id.edtRatio;
                                    NumericEditText numericEditText6 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                    if (numericEditText6 != null) {
                                        i = R$id.edtWidth;
                                        NumericEditText numericEditText7 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                        if (numericEditText7 != null) {
                                            i = R$id.heightDropdown;
                                            UnitDropdownView unitDropdownView = (UnitDropdownView) ViewBindings.findChildViewById(view, i);
                                            if (unitDropdownView != null) {
                                                i = R$id.ivReset;
                                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                                                if (imageView != null) {
                                                    i = R$id.ivSelC;
                                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                    if (imageView2 != null) {
                                                        i = R$id.ivSelNoWidth;
                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                        if (imageView3 != null) {
                                                            i = R$id.ivStep3Collect;
                                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                            if (imageView4 != null) {
                                                                i = R$id.lleColl;
                                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                if (linearLayout != null) {
                                                                    i = R$id.lltCollect;
                                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                    if (linearLayout2 != null) {
                                                                        i = R$id.lltHeight;
                                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                        if (linearLayout3 != null) {
                                                                            i = R$id.lltNoWidth;
                                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                            if (linearLayout4 != null) {
                                                                                i = R$id.lltRadio;
                                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                                if (linearLayout5 != null) {
                                                                                    i = R$id.lltSel;
                                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                                    if (linearLayout6 != null) {
                                                                                        i = R$id.lltWidth;
                                                                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                                        if (linearLayout7 != null) {
                                                                                            LinearLayout linearLayout8 = (LinearLayout) view;
                                                                                            i = R$id.nsv;
                                                                                            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                                                                            if (nestedScrollView != null) {
                                                                                                i = R$id.toothView;
                                                                                                ToothView toothView = (ToothView) ViewBindings.findChildViewById(view, i);
                                                                                                if (toothView != null) {
                                                                                                    i = R$id.tvCadImport;
                                                                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (textView != null) {
                                                                                                        i = R$id.tvCdes;
                                                                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (textView2 != null) {
                                                                                                            i = R$id.tvContinue;
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
                                                                                                                            return new FragmentSpStep3Binding(linearLayout8, numericEditText, numericEditText2, numericEditText3, editText, editText2, numericEditText4, numericEditText5, numericEditText6, numericEditText7, unitDropdownView, imageView, imageView2, imageView3, imageView4, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, linearLayout8, nestedScrollView, toothView, textView, textView2, textView3, textView4, textView5, textView6);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
