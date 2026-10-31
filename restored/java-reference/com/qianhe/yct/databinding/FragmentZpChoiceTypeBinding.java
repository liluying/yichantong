package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentZpChoiceTypeBinding {
    public final View ivDig;
    public final View ivFill;
    public final View ivLeveling;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TextView tvContinue;
    public final TextView tvPrevious;
    public final TextView tvTitle;

    private FragmentZpChoiceTypeBinding(LinearLayout linearLayout, View view, View view2, View view3, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.ivDig = view;
        this.ivFill = view2;
        this.ivLeveling = view3;
        this.main = linearLayout2;
        this.tvContinue = textView;
        this.tvPrevious = textView2;
        this.tvTitle = textView3;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentZpChoiceTypeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentZpChoiceTypeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_zp_choice_type, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentZpChoiceTypeBinding bind(View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        int i = R$id.ivDig;
        View viewFindChildViewById3 = ViewBindings.findChildViewById(view, i);
        if (viewFindChildViewById3 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.ivFill))) != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i = R$id.ivLeveling))) != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i = R$id.tvContinue;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R$id.tvPrevious;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    i = R$id.tvTitle;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView3 != null) {
                        return new FragmentZpChoiceTypeBinding(linearLayout, viewFindChildViewById3, viewFindChildViewById, viewFindChildViewById2, linearLayout, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
