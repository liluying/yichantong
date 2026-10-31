package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class DialogBucketSelectBinding {
    public final RecyclerView rcv;
    public final LinearLayout root;
    private final LinearLayout rootView;
    public final TextView tvCancel;
    public final TextView tvCreate;
    public final TextView tvTitle;

    private DialogBucketSelectBinding(LinearLayout linearLayout, RecyclerView recyclerView, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.rcv = recyclerView;
        this.root = linearLayout2;
        this.tvCancel = textView;
        this.tvCreate = textView2;
        this.tvTitle = textView3;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogBucketSelectBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogBucketSelectBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_bucket_select, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogBucketSelectBinding bind(View view) {
        int i = R$id.rcv;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i = R$id.tvCancel;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R$id.tvCreate;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    i = R$id.tv_title;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView3 != null) {
                        return new DialogBucketSelectBinding(linearLayout, recyclerView, linearLayout, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
