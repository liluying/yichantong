package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityCollectCoordsBinding {
    public final View bar1;
    public final View bar2;
    public final View bar3;
    public final View bar4;
    public final View bar5;
    public final AppCompatImageView ivAngleStatus;
    public final LinearLayout lltAngle;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TopbarBinding topBar;
    public final TextView tvArmAngle;
    public final TextView tvCollect;
    public final TextView tvH5proTips;
    public final TextView tvTimer;
    public final TextView tvToothTips;

    private ActivityCollectCoordsBinding(LinearLayout linearLayout, View view, View view2, View view3, View view4, View view5, AppCompatImageView appCompatImageView, LinearLayout linearLayout2, LinearLayout linearLayout3, TopbarBinding topbarBinding, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.bar1 = view;
        this.bar2 = view2;
        this.bar3 = view3;
        this.bar4 = view4;
        this.bar5 = view5;
        this.ivAngleStatus = appCompatImageView;
        this.lltAngle = linearLayout2;
        this.main = linearLayout3;
        this.topBar = topbarBinding;
        this.tvArmAngle = textView;
        this.tvCollect = textView2;
        this.tvH5proTips = textView3;
        this.tvTimer = textView4;
        this.tvToothTips = textView5;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityCollectCoordsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCollectCoordsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_collect_coords, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityCollectCoordsBinding bind(View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        View viewFindChildViewById3;
        View viewFindChildViewById4;
        int i = R$id.bar1;
        View viewFindChildViewById5 = ViewBindings.findChildViewById(view, i);
        if (viewFindChildViewById5 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.bar2))) != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i = R$id.bar3))) != null && (viewFindChildViewById3 = ViewBindings.findChildViewById(view, (i = R$id.bar4))) != null && (viewFindChildViewById4 = ViewBindings.findChildViewById(view, (i = R$id.bar5))) != null) {
            i = R$id.ivAngleStatus;
            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView != null) {
                i = R$id.lltAngle;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    LinearLayout linearLayout2 = (LinearLayout) view;
                    i = R$id.topBar;
                    View viewFindChildViewById6 = ViewBindings.findChildViewById(view, i);
                    if (viewFindChildViewById6 != null) {
                        TopbarBinding topbarBindingBind = TopbarBinding.bind(viewFindChildViewById6);
                        i = R$id.tvArmAngle;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView != null) {
                            i = R$id.tvCollect;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView2 != null) {
                                i = R$id.tvH5proTips;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView3 != null) {
                                    i = R$id.tvTimer;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView4 != null) {
                                        i = R$id.tvToothTips;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView5 != null) {
                                            return new ActivityCollectCoordsBinding(linearLayout2, viewFindChildViewById5, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3, viewFindChildViewById4, appCompatImageView, linearLayout, linearLayout2, topbarBindingBind, textView, textView2, textView3, textView4, textView5);
                                        }
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
