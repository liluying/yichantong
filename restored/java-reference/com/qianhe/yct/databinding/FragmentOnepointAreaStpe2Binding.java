package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentOnepointAreaStpe2Binding {
    public final NumericEditText edtRatioE;
    public final NumericEditText edtRatioN;
    public final ImageView iv;
    public final LinearLayout main;
    public final NestedScrollView nsv;
    private final LinearLayout rootView;
    public final TextView tvContinue;
    public final AppCompatTextView tvNorth;
    public final TextView tvPrevious;

    private FragmentOnepointAreaStpe2Binding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, ImageView imageView, LinearLayout linearLayout2, NestedScrollView nestedScrollView, TextView textView, AppCompatTextView appCompatTextView, TextView textView2) {
        this.rootView = linearLayout;
        this.edtRatioE = numericEditText;
        this.edtRatioN = numericEditText2;
        this.iv = imageView;
        this.main = linearLayout2;
        this.nsv = nestedScrollView;
        this.tvContinue = textView;
        this.tvNorth = appCompatTextView;
        this.tvPrevious = textView2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentOnepointAreaStpe2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentOnepointAreaStpe2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_onepoint_area_stpe2, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentOnepointAreaStpe2Binding bind(View view) {
        int i = R$id.edtRatioE;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtRatioN;
            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText2 != null) {
                i = R$id.iv;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i = R$id.nsv;
                    NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                    if (nestedScrollView != null) {
                        i = R$id.tvContinue;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView != null) {
                            i = R$id.tvNorth;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView != null) {
                                i = R$id.tvPrevious;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView2 != null) {
                                    return new FragmentOnepointAreaStpe2Binding(linearLayout, numericEditText, numericEditText2, imageView, linearLayout, nestedScrollView, textView, appCompatTextView, textView2);
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
