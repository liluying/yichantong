package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityCorsRenewBinding {
    public final LinearLayout lltAfterRenewal;
    public final LinearLayout lltScanPay;
    public final LinearLayout main;
    public final RecyclerView rcv;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;
    public final AppCompatTextView tvAccountExpire;
    public final AppCompatTextView tvExpireAfterRenewal;
    public final AppCompatTextView tvHostNum;
    public final AppCompatTextView tvPayment;

    private ActivityCorsRenewBinding(LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, RecyclerView recyclerView, TitlebarBinding titlebarBinding, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.rootView = linearLayout;
        this.lltAfterRenewal = linearLayout2;
        this.lltScanPay = linearLayout3;
        this.main = linearLayout4;
        this.rcv = recyclerView;
        this.topBar = titlebarBinding;
        this.tvAccountExpire = appCompatTextView;
        this.tvExpireAfterRenewal = appCompatTextView2;
        this.tvHostNum = appCompatTextView3;
        this.tvPayment = appCompatTextView4;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityCorsRenewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCorsRenewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_cors_renew, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityCorsRenewBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.lltAfterRenewal;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
        if (linearLayout != null) {
            i = R$id.lltScanPay;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout2 != null) {
                LinearLayout linearLayout3 = (LinearLayout) view;
                i = R$id.rcv;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                if (recyclerView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                    TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
                    i = R$id.tvAccountExpire;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView != null) {
                        i = R$id.tvExpireAfterRenewal;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView2 != null) {
                            i = R$id.tvHostNum;
                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView3 != null) {
                                i = R$id.tvPayment;
                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView4 != null) {
                                    return new ActivityCorsRenewBinding(linearLayout3, linearLayout, linearLayout2, linearLayout3, recyclerView, titlebarBindingBind, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
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
