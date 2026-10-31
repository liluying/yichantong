package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityCurvedSlopeCreateBinding {
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TopbarBinding topBar;
    public final ViewPager2 viewPager2;

    private ActivityCurvedSlopeCreateBinding(LinearLayout linearLayout, LinearLayout linearLayout2, TopbarBinding topbarBinding, ViewPager2 viewPager2) {
        this.rootView = linearLayout;
        this.main = linearLayout2;
        this.topBar = topbarBinding;
        this.viewPager2 = viewPager2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityCurvedSlopeCreateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCurvedSlopeCreateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_curved_slope_create, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityCurvedSlopeCreateBinding bind(View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i = R$id.topBar;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, i);
        if (viewFindChildViewById != null) {
            TopbarBinding topbarBindingBind = TopbarBinding.bind(viewFindChildViewById);
            int i2 = R$id.viewPager2;
            ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, i2);
            if (viewPager2 != null) {
                return new ActivityCurvedSlopeCreateBinding(linearLayout, linearLayout, topbarBindingBind, viewPager2);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
