package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityBluetoothBinding {
    public final FrameLayout fltBottom;
    public final LinearLayout lltBtn;
    public final LinearLayout lltDemo;
    public final RelativeLayout main;
    public final ProgressBar progressBar;
    public final RelativeLayout rltScan;
    private final RelativeLayout rootView;
    public final TabLayout tabLayout;
    public final TitlebarBinding topBar;
    public final TextView tvClearPair;
    public final TextView tvDisconnectNow;
    public final TextView tvScan;
    public final TextView tvStopDemo;
    public final ViewPager2 viewPager2;

    private ActivityBluetoothBinding(RelativeLayout relativeLayout, FrameLayout frameLayout, LinearLayout linearLayout, LinearLayout linearLayout2, RelativeLayout relativeLayout2, ProgressBar progressBar, RelativeLayout relativeLayout3, TabLayout tabLayout, TitlebarBinding titlebarBinding, TextView textView, TextView textView2, TextView textView3, TextView textView4, ViewPager2 viewPager2) {
        this.rootView = relativeLayout;
        this.fltBottom = frameLayout;
        this.lltBtn = linearLayout;
        this.lltDemo = linearLayout2;
        this.main = relativeLayout2;
        this.progressBar = progressBar;
        this.rltScan = relativeLayout3;
        this.tabLayout = tabLayout;
        this.topBar = titlebarBinding;
        this.tvClearPair = textView;
        this.tvDisconnectNow = textView2;
        this.tvScan = textView3;
        this.tvStopDemo = textView4;
        this.viewPager2 = viewPager2;
    }

    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ActivityBluetoothBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityBluetoothBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_bluetooth, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityBluetoothBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.fltBottom;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = R$id.lltBtn;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                i = R$id.lltDemo;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout2 != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) view;
                    i = R$id.progressBar;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
                    if (progressBar != null) {
                        i = R$id.rltScan;
                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                        if (relativeLayout2 != null) {
                            i = R$id.tabLayout;
                            TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, i);
                            if (tabLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
                                i = R$id.tvClearPair;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView != null) {
                                    i = R$id.tvDisconnectNow;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView2 != null) {
                                        i = R$id.tvScan;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView3 != null) {
                                            i = R$id.tvStopDemo;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView4 != null) {
                                                i = R$id.viewPager2;
                                                ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, i);
                                                if (viewPager2 != null) {
                                                    return new ActivityBluetoothBinding(relativeLayout, frameLayout, linearLayout, linearLayout2, relativeLayout, progressBar, relativeLayout2, tabLayout, titlebarBindingBind, textView, textView2, textView3, textView4, viewPager2);
                                                }
                                            }
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
