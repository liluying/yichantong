package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.ExcavatorBottomView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityExcavatorListBinding {
    public final ExcavatorBottomView bottomBtn;
    public final ImageView ivAll;
    public final LinearLayout lltAll;
    public final LinearLayout main;
    public final RecyclerView rcv;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;

    private ActivityExcavatorListBinding(LinearLayout linearLayout, ExcavatorBottomView excavatorBottomView, ImageView imageView, LinearLayout linearLayout2, LinearLayout linearLayout3, RecyclerView recyclerView, TitlebarBinding titlebarBinding) {
        this.rootView = linearLayout;
        this.bottomBtn = excavatorBottomView;
        this.ivAll = imageView;
        this.lltAll = linearLayout2;
        this.main = linearLayout3;
        this.rcv = recyclerView;
        this.topBar = titlebarBinding;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityExcavatorListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityExcavatorListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_excavator_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityExcavatorListBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.bottomBtn;
        ExcavatorBottomView excavatorBottomView = (ExcavatorBottomView) ViewBindings.findChildViewById(view, i);
        if (excavatorBottomView != null) {
            i = R$id.ivAll;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                i = R$id.lltAll;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    LinearLayout linearLayout2 = (LinearLayout) view;
                    i = R$id.rcv;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                    if (recyclerView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                        return new ActivityExcavatorListBinding(linearLayout2, excavatorBottomView, imageView, linearLayout, linearLayout2, recyclerView, TitlebarBinding.bind(viewFindChildViewById));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
