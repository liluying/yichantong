package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityLogviewBinding {
    public final Button btn;
    public final ProgressBar progress;
    public final RecyclerView rcv;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;

    private ActivityLogviewBinding(LinearLayout linearLayout, Button button, ProgressBar progressBar, RecyclerView recyclerView, TitlebarBinding titlebarBinding) {
        this.rootView = linearLayout;
        this.btn = button;
        this.progress = progressBar;
        this.rcv = recyclerView;
        this.topBar = titlebarBinding;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityLogviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityLogviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_logview, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityLogviewBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.btn;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R$id.progress;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
            if (progressBar != null) {
                i = R$id.rcv;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                if (recyclerView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                    return new ActivityLogviewBinding((LinearLayout) view, button, progressBar, recyclerView, TitlebarBinding.bind(viewFindChildViewById));
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
