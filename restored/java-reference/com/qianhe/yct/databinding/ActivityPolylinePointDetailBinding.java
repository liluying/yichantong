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

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityPolylinePointDetailBinding {
    public final NumericEditText edtEast;
    public final NumericEditText edtElev;
    public final NumericEditText edtNorth;
    public final ImageView ivDoubt;
    public final LinearLayout lleColl;
    public final LinearLayout main;
    public final NestedScrollView nsv;
    private final LinearLayout rootView;
    public final ToothView toothView;
    public final TopbarBinding topBar;
    public final TextView tvCadImport;
    public final TextView tvConfirm;
    public final TextView tvMeasure;
    public final TextView tvName;
    public final TextView tvPointLib;
    public final TextView tvReset;

    private ActivityPolylinePointDetailBinding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, ImageView imageView, LinearLayout linearLayout2, LinearLayout linearLayout3, NestedScrollView nestedScrollView, ToothView toothView, TopbarBinding topbarBinding, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = linearLayout;
        this.edtEast = numericEditText;
        this.edtElev = numericEditText2;
        this.edtNorth = numericEditText3;
        this.ivDoubt = imageView;
        this.lleColl = linearLayout2;
        this.main = linearLayout3;
        this.nsv = nestedScrollView;
        this.toothView = toothView;
        this.topBar = topbarBinding;
        this.tvCadImport = textView;
        this.tvConfirm = textView2;
        this.tvMeasure = textView3;
        this.tvName = textView4;
        this.tvPointLib = textView5;
        this.tvReset = textView6;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityPolylinePointDetailBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityPolylinePointDetailBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_polyline_point_detail, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityPolylinePointDetailBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.edtEast;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtElev;
            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText2 != null) {
                i = R$id.edtNorth;
                NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText3 != null) {
                    i = R$id.ivDoubt;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                    if (imageView != null) {
                        i = R$id.lleColl;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout != null) {
                            LinearLayout linearLayout2 = (LinearLayout) view;
                            i = R$id.nsv;
                            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                            if (nestedScrollView != null) {
                                i = R$id.toothView;
                                ToothView toothView = (ToothView) ViewBindings.findChildViewById(view, i);
                                if (toothView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                    TopbarBinding topbarBindingBind = TopbarBinding.bind(viewFindChildViewById);
                                    i = R$id.tvCadImport;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null) {
                                        i = R$id.tvConfirm;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView2 != null) {
                                            i = R$id.tvMeasure;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView3 != null) {
                                                i = R$id.tvName;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView4 != null) {
                                                    i = R$id.tvPointLib;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView5 != null) {
                                                        i = R$id.tvReset;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView6 != null) {
                                                            return new ActivityPolylinePointDetailBinding(linearLayout2, numericEditText, numericEditText2, numericEditText3, imageView, linearLayout, linearLayout2, nestedScrollView, toothView, topbarBindingBind, textView, textView2, textView3, textView4, textView5, textView6);
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
