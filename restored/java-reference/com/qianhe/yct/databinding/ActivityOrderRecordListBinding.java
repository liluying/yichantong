package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityOrderRecordListBinding {
    public final RelativeLayout main;
    public final RecyclerView rcv;
    private final RelativeLayout rootView;
    public final TitlebarBinding topBar;

    private ActivityOrderRecordListBinding(RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RecyclerView recyclerView, TitlebarBinding titlebarBinding) {
        this.rootView = relativeLayout;
        this.main = relativeLayout2;
        this.rcv = recyclerView;
        this.topBar = titlebarBinding;
    }

    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ActivityOrderRecordListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityOrderRecordListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_order_record_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityOrderRecordListBinding bind(View view) {
        View viewFindChildViewById;
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i = R$id.rcv;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
            return new ActivityOrderRecordListBinding(relativeLayout, relativeLayout, recyclerView, TitlebarBinding.bind(viewFindChildViewById));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
