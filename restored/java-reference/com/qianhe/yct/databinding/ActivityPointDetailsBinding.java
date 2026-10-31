package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityPointDetailsBinding {
    public final LinearLayout main;
    public final NestedScrollView nsv;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;
    public final AppCompatTextView tvEast;
    public final AppCompatTextView tvElev;
    public final TextView tvFinish;
    public final AppCompatTextView tvGauss;
    public final AppCompatTextView tvGeodetic;
    public final AppCompatTextView tvLat;
    public final AppCompatTextView tvLon;
    public final TextView tvName;
    public final AppCompatTextView tvNorth;

    private ActivityPointDetailsBinding(LinearLayout linearLayout, LinearLayout linearLayout2, NestedScrollView nestedScrollView, TitlebarBinding titlebarBinding, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, TextView textView2, AppCompatTextView appCompatTextView7) {
        this.rootView = linearLayout;
        this.main = linearLayout2;
        this.nsv = nestedScrollView;
        this.topBar = titlebarBinding;
        this.tvEast = appCompatTextView;
        this.tvElev = appCompatTextView2;
        this.tvFinish = textView;
        this.tvGauss = appCompatTextView3;
        this.tvGeodetic = appCompatTextView4;
        this.tvLat = appCompatTextView5;
        this.tvLon = appCompatTextView6;
        this.tvName = textView2;
        this.tvNorth = appCompatTextView7;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityPointDetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityPointDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_point_details, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityPointDetailsBinding bind(View view) {
        View viewFindChildViewById;
        LinearLayout linearLayout = (LinearLayout) view;
        int i = R$id.nsv;
        NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
        if (nestedScrollView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
            TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
            i = R$id.tvEast;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                i = R$id.tvElev;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView2 != null) {
                    i = R$id.tvFinish;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        i = R$id.tvGauss;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView3 != null) {
                            i = R$id.tvGeodetic;
                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView4 != null) {
                                i = R$id.tvLat;
                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView5 != null) {
                                    i = R$id.tvLon;
                                    AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatTextView6 != null) {
                                        i = R$id.tvName;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView2 != null) {
                                            i = R$id.tvNorth;
                                            AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                            if (appCompatTextView7 != null) {
                                                return new ActivityPointDetailsBinding(linearLayout, linearLayout, nestedScrollView, titlebarBindingBind, appCompatTextView, appCompatTextView2, textView, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, textView2, appCompatTextView7);
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
