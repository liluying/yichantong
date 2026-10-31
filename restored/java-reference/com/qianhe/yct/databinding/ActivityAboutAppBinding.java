package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityAboutAppBinding {
    public final AppCompatImageView ivIcon;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;
    public final AppCompatTextView tvAppUpgrade;
    public final TextView tvCopyright;
    public final AppCompatTextView tvPrivacyPolicy;
    public final TextView tvVersion;

    private ActivityAboutAppBinding(LinearLayout linearLayout, AppCompatImageView appCompatImageView, TitlebarBinding titlebarBinding, AppCompatTextView appCompatTextView, TextView textView, AppCompatTextView appCompatTextView2, TextView textView2) {
        this.rootView = linearLayout;
        this.ivIcon = appCompatImageView;
        this.topBar = titlebarBinding;
        this.tvAppUpgrade = appCompatTextView;
        this.tvCopyright = textView;
        this.tvPrivacyPolicy = appCompatTextView2;
        this.tvVersion = textView2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityAboutAppBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityAboutAppBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_about_app, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityAboutAppBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.ivIcon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
            TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
            i = R$id.tvAppUpgrade;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                i = R$id.tvCopyright;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R$id.tvPrivacyPolicy;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView2 != null) {
                        i = R$id.tvVersion;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            return new ActivityAboutAppBinding((LinearLayout) view, appCompatImageView, titlebarBindingBind, appCompatTextView, textView, appCompatTextView2, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
