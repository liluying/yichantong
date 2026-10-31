package com.qianhe.yct.databinding;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class TitlebarBinding {
    public final ImageView ivBack;
    public final LinearLayout lltBackTb;
    private final FrameLayout rootView;
    public final TextView tvGotoConnect;
    public final TextView tvTitle;

    private TitlebarBinding(FrameLayout frameLayout, ImageView imageView, LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.rootView = frameLayout;
        this.ivBack = imageView;
        this.lltBackTb = linearLayout;
        this.tvGotoConnect = textView;
        this.tvTitle = textView2;
    }

    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static TitlebarBinding bind(View view) {
        int i = R$id.ivBack;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = R$id.lltBackTb;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                i = R$id.tvGotoConnect;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R$id.tvTitle;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        return new TitlebarBinding((FrameLayout) view, imageView, linearLayout, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
