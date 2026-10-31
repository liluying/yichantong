package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.tencent.smtt.sdk.WebView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityPrivacyPolicyBinding {
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;
    public final WebView webview;

    private ActivityPrivacyPolicyBinding(LinearLayout linearLayout, TitlebarBinding titlebarBinding, WebView webView) {
        this.rootView = linearLayout;
        this.topBar = titlebarBinding;
        this.webview = webView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityPrivacyPolicyBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityPrivacyPolicyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_privacy_policy, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityPrivacyPolicyBinding bind(View view) {
        int i = R$id.topBar;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, i);
        if (viewFindChildViewById != null) {
            TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
            int i2 = R$id.webview;
            WebView webView = (WebView) ViewBindings.findChildViewById(view, i2);
            if (webView != null) {
                return new ActivityPrivacyPolicyBinding((LinearLayout) view, titlebarBindingBind, webView);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
