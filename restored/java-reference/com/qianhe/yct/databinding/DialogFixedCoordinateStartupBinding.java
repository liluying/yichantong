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
public final class DialogFixedCoordinateStartupBinding {
    public final ProgressBar pregressbar;
    private final LinearLayout rootView;
    public final TextView tvClose;
    public final TextView tvCount;
    public final TextView tvPdop;
    public final TextView tvSolutionStatus;
    public final TextView tvTip;

    private DialogFixedCoordinateStartupBinding(LinearLayout linearLayout, ProgressBar progressBar, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.pregressbar = progressBar;
        this.tvClose = textView;
        this.tvCount = textView2;
        this.tvPdop = textView3;
        this.tvSolutionStatus = textView4;
        this.tvTip = textView5;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogFixedCoordinateStartupBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogFixedCoordinateStartupBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_fixed_coordinate_startup, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogFixedCoordinateStartupBinding bind(View view) {
        int i = R$id.pregressbar;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
        if (progressBar != null) {
            i = R$id.tvClose;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R$id.tvCount;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    i = R$id.tvPdop;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView3 != null) {
                        i = R$id.tvSolutionStatus;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView4 != null) {
                            i = R$id.tvTip;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView5 != null) {
                                return new DialogFixedCoordinateStartupBinding((LinearLayout) view, progressBar, textView, textView2, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
