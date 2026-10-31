package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.ScrollStableNestedScrollView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentBluetoothBinding {
    public final LinearLayout main;
    public final ScrollStableNestedScrollView nsv;
    public final RecyclerView rcv;
    public final RecyclerView rcvMatched;
    public final RelativeLayout rltBle;
    private final LinearLayout rootView;

    private FragmentBluetoothBinding(LinearLayout linearLayout, LinearLayout linearLayout2, ScrollStableNestedScrollView scrollStableNestedScrollView, RecyclerView recyclerView, RecyclerView recyclerView2, RelativeLayout relativeLayout) {
        this.rootView = linearLayout;
        this.main = linearLayout2;
        this.nsv = scrollStableNestedScrollView;
        this.rcv = recyclerView;
        this.rcvMatched = recyclerView2;
        this.rltBle = relativeLayout;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentBluetoothBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentBluetoothBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_bluetooth, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentBluetoothBinding bind(View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i = R$id.nsv;
        ScrollStableNestedScrollView scrollStableNestedScrollView = (ScrollStableNestedScrollView) ViewBindings.findChildViewById(view, i);
        if (scrollStableNestedScrollView != null) {
            i = R$id.rcv;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
            if (recyclerView != null) {
                i = R$id.rcvMatched;
                RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, i);
                if (recyclerView2 != null) {
                    i = R$id.rltBle;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                    if (relativeLayout != null) {
                        return new FragmentBluetoothBinding(linearLayout, linearLayout, scrollStableNestedScrollView, recyclerView, recyclerView2, relativeLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
