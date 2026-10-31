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
import com.qianhe.yct.view.NumericEditText;
import com.qianhe.yct.view.ToothView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentSpStep2Binding {
    public final NumericEditText edtEast;
    public final NumericEditText edtElev;
    public final EditText edtHLat;
    public final EditText edtHLon;
    public final NumericEditText edtNorth;
    public final ImageView ivReset;
    public final ImageView ivSelB;
    public final ImageView ivStep2;
    public final LinearLayout lleColl;
    public final LinearLayout lltCollect;
    public final LinearLayout lltSel;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final ToothView toothView;
    public final TextView tvCadImport;
    public final TextView tvContinue;
    public final TextView tvMeasure;
    public final TextView tvPointLib;
    public final TextView tvPrevious;
    public final TextView tvSpType;

    private FragmentSpStep2Binding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, EditText editText, EditText editText2, NumericEditText numericEditText3, ImageView imageView, ImageView imageView2, ImageView imageView3, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, ToothView toothView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = linearLayout;
        this.edtEast = numericEditText;
        this.edtElev = numericEditText2;
        this.edtHLat = editText;
        this.edtHLon = editText2;
        this.edtNorth = numericEditText3;
        this.ivReset = imageView;
        this.ivSelB = imageView2;
        this.ivStep2 = imageView3;
        this.lleColl = linearLayout2;
        this.lltCollect = linearLayout3;
        this.lltSel = linearLayout4;
        this.main = linearLayout5;
        this.toothView = toothView;
        this.tvCadImport = textView;
        this.tvContinue = textView2;
        this.tvMeasure = textView3;
        this.tvPointLib = textView4;
        this.tvPrevious = textView5;
        this.tvSpType = textView6;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentSpStep2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentSpStep2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_sp_step2, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentSpStep2Binding bind(View view) {
        int i = R$id.edtEast;
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
                            i = R$id.ivReset;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                            if (imageView != null) {
                                i = R$id.ivSelB;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView2 != null) {
                                    i = R$id.ivStep2;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i);
                                    if (imageView3 != null) {
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R$id.lleColl);
                                        i = R$id.lltCollect;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout2 != null) {
                                            i = R$id.lltSel;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout3 != null) {
                                                LinearLayout linearLayout4 = (LinearLayout) view;
                                                i = R$id.toothView;
                                                ToothView toothView = (ToothView) ViewBindings.findChildViewById(view, i);
                                                if (toothView != null) {
                                                    i = R$id.tvCadImport;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView != null) {
                                                        i = R$id.tvContinue;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView2 != null) {
                                                            i = R$id.tvMeasure;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView3 != null) {
                                                                i = R$id.tvPointLib;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                if (textView4 != null) {
                                                                    i = R$id.tvPrevious;
                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                    if (textView5 != null) {
                                                                        i = R$id.tvSpType;
                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                        if (textView6 != null) {
                                                                            return new FragmentSpStep2Binding(linearLayout4, numericEditText, numericEditText2, editText, editText2, numericEditText3, imageView, imageView2, imageView3, linearLayout, linearLayout2, linearLayout3, linearLayout4, toothView, textView, textView2, textView3, textView4, textView5, textView6);
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
