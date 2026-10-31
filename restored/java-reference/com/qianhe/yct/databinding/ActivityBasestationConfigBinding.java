package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityBasestationConfigBinding {
    public final FrameLayout flt;
    public final ImageView ivVPN;
    public final LinearLayout main;
    public final ProgressBar progressBar;
    public final RelativeLayout rltDataLink;
    public final RelativeLayout rltNetwork;
    public final RelativeLayout rltReset;
    public final RelativeLayout rltVPN;
    public final RelativeLayout rltWorkMode;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;
    public final TextView tv2;
    public final TextView tv3;
    public final TextView tv4;
    public final TextView tv5;
    public final TextView tvSimStaus;
    public final TextView tvVpn;

    private ActivityBasestationConfigBinding(LinearLayout linearLayout, FrameLayout frameLayout, ImageView imageView, LinearLayout linearLayout2, ProgressBar progressBar, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, TitlebarBinding titlebarBinding, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = linearLayout;
        this.flt = frameLayout;
        this.ivVPN = imageView;
        this.main = linearLayout2;
        this.progressBar = progressBar;
        this.rltDataLink = relativeLayout;
        this.rltNetwork = relativeLayout2;
        this.rltReset = relativeLayout3;
        this.rltVPN = relativeLayout4;
        this.rltWorkMode = relativeLayout5;
        this.topBar = titlebarBinding;
        this.tv2 = textView;
        this.tv3 = textView2;
        this.tv4 = textView3;
        this.tv5 = textView4;
        this.tvSimStaus = textView5;
        this.tvVpn = textView6;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityBasestationConfigBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityBasestationConfigBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_basestation_config, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityBasestationConfigBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.flt;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = R$id.ivVPN;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i = R$id.progressBar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
                if (progressBar != null) {
                    i = R$id.rltDataLink;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                    if (relativeLayout != null) {
                        i = R$id.rltNetwork;
                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                        if (relativeLayout2 != null) {
                            i = R$id.rltReset;
                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                            if (relativeLayout3 != null) {
                                i = R$id.rltVPN;
                                RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                if (relativeLayout4 != null) {
                                    i = R$id.rltWorkMode;
                                    RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                    if (relativeLayout5 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                        TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
                                        i = R$id.tv2;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView != null) {
                                            i = R$id.tv3;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView2 != null) {
                                                i = R$id.tv4;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView3 != null) {
                                                    i = R$id.tv5;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView4 != null) {
                                                        i = R$id.tvSimStaus;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView5 != null) {
                                                            i = R$id.tvVpn;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView6 != null) {
                                                                return new ActivityBasestationConfigBinding(linearLayout, frameLayout, imageView, linearLayout, progressBar, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, titlebarBindingBind, textView, textView2, textView3, textView4, textView5, textView6);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
