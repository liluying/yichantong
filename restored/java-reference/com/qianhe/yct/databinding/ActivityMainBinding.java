package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.SimpleBottomNav;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityMainBinding {
    public final SimpleBottomNav bottomNav;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TopbarBinding topBar;
    public final ViewPager2 viewPager;

    private ActivityMainBinding(LinearLayout linearLayout, SimpleBottomNav simpleBottomNav, LinearLayout linearLayout2, TopbarBinding topbarBinding, ViewPager2 viewPager2) {
        this.rootView = linearLayout;
        this.bottomNav = simpleBottomNav;
        this.main = linearLayout2;
        this.topBar = topbarBinding;
        this.viewPager = viewPager2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityMainBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityMainBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_main, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityMainBinding bind(View view) {
        int i = R$id.bottomNav;
        SimpleBottomNav simpleBottomNav = (SimpleBottomNav) ViewBindings.findChildViewById(view, i);
        if (simpleBottomNav != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i = R$id.topBar;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, i);
            if (viewFindChildViewById != null) {
                TopbarBinding topbarBindingBind = TopbarBinding.bind(viewFindChildViewById);
                i = R$id.view_pager;
                ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, i);
                if (viewPager2 != null) {
                    return new ActivityMainBinding(linearLayout, simpleBottomNav, linearLayout, topbarBindingBind, viewPager2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
