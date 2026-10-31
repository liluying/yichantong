package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityBasestationNetworkLinkBinding {
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TabLayout tabLayout;
    public final TitlebarBinding topBar;
    public final ViewPager2 viewPager;

    private ActivityBasestationNetworkLinkBinding(LinearLayout linearLayout, LinearLayout linearLayout2, TabLayout tabLayout, TitlebarBinding titlebarBinding, ViewPager2 viewPager2) {
        this.rootView = linearLayout;
        this.main = linearLayout2;
        this.tabLayout = tabLayout;
        this.topBar = titlebarBinding;
        this.viewPager = viewPager2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityBasestationNetworkLinkBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityBasestationNetworkLinkBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_basestation_network_link, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityBasestationNetworkLinkBinding bind(View view) {
        View viewFindChildViewById;
        LinearLayout linearLayout = (LinearLayout) view;
        int i = R$id.tabLayout;
        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, i);
        if (tabLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
            TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
            i = R$id.viewPager;
            ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, i);
            if (viewPager2 != null) {
                return new ActivityBasestationNetworkLinkBinding(linearLayout, linearLayout, tabLayout, titlebarBindingBind, viewPager2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
