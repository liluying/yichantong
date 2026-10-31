package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityCadpreviewBinding {
    public final LinearLayout main;
    public final ProgressBar progressBar;
    private final LinearLayout rootView;
    public final TopbarBinding topBar;
    public final TextView tvChooseCad;
    public final TextView tvFileName;

    private ActivityCadpreviewBinding(LinearLayout linearLayout, LinearLayout linearLayout2, ProgressBar progressBar, TopbarBinding topbarBinding, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.main = linearLayout2;
        this.progressBar = progressBar;
        this.topBar = topbarBinding;
        this.tvChooseCad = textView;
        this.tvFileName = textView2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityCadpreviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCadpreviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_cadpreview, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityCadpreviewBinding bind(View view) {
        View viewFindChildViewById;
        LinearLayout linearLayout = (LinearLayout) view;
        int i = R$id.progressBar;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
        if (progressBar != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
            TopbarBinding topbarBindingBind = TopbarBinding.bind(viewFindChildViewById);
            i = R$id.tvChooseCad;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R$id.tvFileName;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    return new ActivityCadpreviewBinding(linearLayout, linearLayout, progressBar, topbarBindingBind, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
