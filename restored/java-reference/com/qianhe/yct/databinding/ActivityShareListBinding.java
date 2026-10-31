package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.ShareBottomView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityShareListBinding {
    public final ShareBottomView bottomBtn;
    public final FrameLayout flt;
    public final ImageView ivAll;
    public final ImageView ivEmpty;
    public final LinearLayout lltAll;
    public final LinearLayout lltEmpty;
    public final RelativeLayout main;
    public final RecyclerView rcvShare;
    private final RelativeLayout rootView;
    public final TitlebarBinding topBar;
    public final TextView tvEmptyDesc;

    private ActivityShareListBinding(RelativeLayout relativeLayout, ShareBottomView shareBottomView, FrameLayout frameLayout, ImageView imageView, ImageView imageView2, LinearLayout linearLayout, LinearLayout linearLayout2, RelativeLayout relativeLayout2, RecyclerView recyclerView, TitlebarBinding titlebarBinding, TextView textView) {
        this.rootView = relativeLayout;
        this.bottomBtn = shareBottomView;
        this.flt = frameLayout;
        this.ivAll = imageView;
        this.ivEmpty = imageView2;
        this.lltAll = linearLayout;
        this.lltEmpty = linearLayout2;
        this.main = relativeLayout2;
        this.rcvShare = recyclerView;
        this.topBar = titlebarBinding;
        this.tvEmptyDesc = textView;
    }

    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ActivityShareListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityShareListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_share_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityShareListBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.bottomBtn;
        ShareBottomView shareBottomView = (ShareBottomView) ViewBindings.findChildViewById(view, i);
        if (shareBottomView != null) {
            i = R$id.flt;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
            if (frameLayout != null) {
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
                                RelativeLayout relativeLayout = (RelativeLayout) view;
                                i = R$id.rcvShare;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                if (recyclerView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                    TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
                                    i = R$id.tvEmptyDesc;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null) {
                                        return new ActivityShareListBinding(relativeLayout, shareBottomView, frameLayout, imageView, imageView2, linearLayout, linearLayout2, relativeLayout, recyclerView, titlebarBindingBind, textView);
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
