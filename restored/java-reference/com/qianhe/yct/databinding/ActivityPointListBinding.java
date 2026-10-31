package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.PointBottomView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityPointListBinding {
    public final PointBottomView bottomBtn;
    public final ImageView ivAll;
    public final ImageView ivEmpty;
    public final LinearLayout lltAll;
    public final LinearLayout lltEmpty;
    public final LinearLayout main;
    public final RecyclerView rcvPointList;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;
    public final TextView tvEmptyDesc;

    private ActivityPointListBinding(LinearLayout linearLayout, PointBottomView pointBottomView, ImageView imageView, ImageView imageView2, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, RecyclerView recyclerView, TitlebarBinding titlebarBinding, TextView textView) {
        this.rootView = linearLayout;
        this.bottomBtn = pointBottomView;
        this.ivAll = imageView;
        this.ivEmpty = imageView2;
        this.lltAll = linearLayout2;
        this.lltEmpty = linearLayout3;
        this.main = linearLayout4;
        this.rcvPointList = recyclerView;
        this.topBar = titlebarBinding;
        this.tvEmptyDesc = textView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityPointListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityPointListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_point_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityPointListBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.bottomBtn;
        PointBottomView pointBottomView = (PointBottomView) ViewBindings.findChildViewById(view, i);
        if (pointBottomView != null) {
            i = R$id.ivAll;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                i = R$id.ivEmpty;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView2 != null) {
                    i = R$id.lltAll;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout != null) {
                        i = R$id.lltEmpty;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout2 != null) {
                            LinearLayout linearLayout3 = (LinearLayout) view;
                            i = R$id.rcvPointList;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                            if (recyclerView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
                                i = R$id.tvEmptyDesc;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView != null) {
                                    return new ActivityPointListBinding(linearLayout3, pointBottomView, imageView, imageView2, linearLayout, linearLayout2, linearLayout3, recyclerView, titlebarBindingBind, textView);
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
