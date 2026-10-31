package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class DialogCorsChangesBinding {
    private final RelativeLayout rootView;
    public final TextView tvClose;
    public final AppCompatTextView tvNewCors;
    public final AppCompatTextView tvOldCors;
    public final TextView tvSure;

    private DialogCorsChangesBinding(RelativeLayout relativeLayout, TextView textView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView2) {
        this.rootView = relativeLayout;
        this.tvClose = textView;
        this.tvNewCors = appCompatTextView;
        this.tvOldCors = appCompatTextView2;
        this.tvSure = textView2;
    }

    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DialogCorsChangesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogCorsChangesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_cors_changes, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogCorsChangesBinding bind(View view) {
        int i = R$id.tvClose;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R$id.tvNewCors;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                i = R$id.tvOldCors;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView2 != null) {
                    i = R$id.tvSure;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        return new DialogCorsChangesBinding((RelativeLayout) view, textView, appCompatTextView, appCompatTextView2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
