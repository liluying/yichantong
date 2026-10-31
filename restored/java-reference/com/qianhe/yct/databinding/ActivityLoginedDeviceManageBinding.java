package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityLoginedDeviceManageBinding {
    public final RecyclerView rcv;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;

    private ActivityLoginedDeviceManageBinding(LinearLayout linearLayout, RecyclerView recyclerView, TitlebarBinding titlebarBinding) {
        this.rootView = linearLayout;
        this.rcv = recyclerView;
        this.topBar = titlebarBinding;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityLoginedDeviceManageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityLoginedDeviceManageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_logined_device_manage, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityLoginedDeviceManageBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.rcv;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
            return new ActivityLoginedDeviceManageBinding((LinearLayout) view, recyclerView, TitlebarBinding.bind(viewFindChildViewById));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
