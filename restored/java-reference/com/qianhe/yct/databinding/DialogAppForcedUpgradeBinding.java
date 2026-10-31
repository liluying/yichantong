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
public final class DialogAppForcedUpgradeBinding {
    public final ProgressBar pb;
    private final LinearLayout rootView;
    public final TextView tvInstall;
    public final TextView tvTip;

    private DialogAppForcedUpgradeBinding(LinearLayout linearLayout, ProgressBar progressBar, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.pb = progressBar;
        this.tvInstall = textView;
        this.tvTip = textView2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogAppForcedUpgradeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogAppForcedUpgradeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_app_forced_upgrade, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogAppForcedUpgradeBinding bind(View view) {
        int i = R$id.pb;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
        if (progressBar != null) {
            i = R$id.tvInstall;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R$id.tvTip;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    return new DialogAppForcedUpgradeBinding((LinearLayout) view, progressBar, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
