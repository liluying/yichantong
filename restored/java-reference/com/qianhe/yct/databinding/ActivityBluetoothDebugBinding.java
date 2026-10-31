package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityBluetoothDebugBinding {
    public final Button btnScan;
    public final LinearLayout main;
    public final RecyclerView rcv;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;

    private ActivityBluetoothDebugBinding(LinearLayout linearLayout, Button button, LinearLayout linearLayout2, RecyclerView recyclerView, TitlebarBinding titlebarBinding) {
        this.rootView = linearLayout;
        this.btnScan = button;
        this.main = linearLayout2;
        this.rcv = recyclerView;
        this.topBar = titlebarBinding;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityBluetoothDebugBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityBluetoothDebugBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_bluetooth_debug, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityBluetoothDebugBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.btnScan;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i = R$id.rcv;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
            if (recyclerView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                return new ActivityBluetoothDebugBinding(linearLayout, button, linearLayout, recyclerView, TitlebarBinding.bind(viewFindChildViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
