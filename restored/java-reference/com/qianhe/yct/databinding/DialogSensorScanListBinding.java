package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class DialogSensorScanListBinding {
    public final LinearLayout lltBottom;
    public final ProgressBar progressBar;
    public final RecyclerView rcv;
    public final RelativeLayout rltInfo;
    public final RelativeLayout rltScan;
    public final RelativeLayout root;
    private final RelativeLayout rootView;
    public final TextView tvCancel;
    public final TextView tvScan;
    public final TextView tvTitle;

    private DialogSensorScanListBinding(RelativeLayout relativeLayout, LinearLayout linearLayout, ProgressBar progressBar, RecyclerView recyclerView, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = relativeLayout;
        this.lltBottom = linearLayout;
        this.progressBar = progressBar;
        this.rcv = recyclerView;
        this.rltInfo = relativeLayout2;
        this.rltScan = relativeLayout3;
        this.root = relativeLayout4;
        this.tvCancel = textView;
        this.tvScan = textView2;
        this.tvTitle = textView3;
    }

    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DialogSensorScanListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogSensorScanListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_sensor_scan_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogSensorScanListBinding bind(View view) {
        int i = R$id.lltBottom;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
        if (linearLayout != null) {
            i = R$id.progressBar;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
            if (progressBar != null) {
                i = R$id.rcv;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                if (recyclerView != null) {
                    i = R$id.rltInfo;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                    if (relativeLayout != null) {
                        i = R$id.rltScan;
                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                        if (relativeLayout2 != null) {
                            RelativeLayout relativeLayout3 = (RelativeLayout) view;
                            i = R$id.tvCancel;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView != null) {
                                i = R$id.tvScan;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView2 != null) {
                                    i = R$id.tvTitle;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView3 != null) {
                                        return new DialogSensorScanListBinding(relativeLayout3, linearLayout, progressBar, recyclerView, relativeLayout, relativeLayout2, relativeLayout3, textView, textView2, textView3);
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
