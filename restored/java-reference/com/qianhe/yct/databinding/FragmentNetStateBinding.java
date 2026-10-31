package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentNetStateBinding {
    public final LinearLayout lltWifiStatus;
    private final NestedScrollView rootView;
    public final AppCompatTextView tvAddress;
    public final AppCompatTextView tvDNS;
    public final AppCompatTextView tvGateway;
    public final AppCompatTextView tvMask;
    public final AppCompatTextView tvMobileState;
    public final AppCompatTextView tvMode;
    public final AppCompatTextView tvSIMiccid;
    public final AppCompatTextView tvSIMimei;
    public final AppCompatTextView tvSIMtype;
    public final AppCompatTextView tvState;
    public final AppCompatTextView tvWifiName;

    private FragmentNetStateBinding(NestedScrollView nestedScrollView, LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10, AppCompatTextView appCompatTextView11) {
        this.rootView = nestedScrollView;
        this.lltWifiStatus = linearLayout;
        this.tvAddress = appCompatTextView;
        this.tvDNS = appCompatTextView2;
        this.tvGateway = appCompatTextView3;
        this.tvMask = appCompatTextView4;
        this.tvMobileState = appCompatTextView5;
        this.tvMode = appCompatTextView6;
        this.tvSIMiccid = appCompatTextView7;
        this.tvSIMimei = appCompatTextView8;
        this.tvSIMtype = appCompatTextView9;
        this.tvState = appCompatTextView10;
        this.tvWifiName = appCompatTextView11;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static FragmentNetStateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentNetStateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_net_state, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentNetStateBinding bind(View view) {
        int i = R$id.lltWifiStatus;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
        if (linearLayout != null) {
            i = R$id.tvAddress;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                i = R$id.tvDNS;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView2 != null) {
                    i = R$id.tvGateway;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView3 != null) {
                        i = R$id.tvMask;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView4 != null) {
                            i = R$id.tvMobileState;
                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView5 != null) {
                                i = R$id.tvMode;
                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView6 != null) {
                                    i = R$id.tvSIMiccid;
                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatTextView7 != null) {
                                        i = R$id.tvSIMimei;
                                        AppCompatTextView appCompatTextView8 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                        if (appCompatTextView8 != null) {
                                            i = R$id.tvSIMtype;
                                            AppCompatTextView appCompatTextView9 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                            if (appCompatTextView9 != null) {
                                                i = R$id.tvState;
                                                AppCompatTextView appCompatTextView10 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                if (appCompatTextView10 != null) {
                                                    i = R$id.tvWifiName;
                                                    AppCompatTextView appCompatTextView11 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                    if (appCompatTextView11 != null) {
                                                        return new FragmentNetStateBinding((NestedScrollView) view, linearLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10, appCompatTextView11);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
