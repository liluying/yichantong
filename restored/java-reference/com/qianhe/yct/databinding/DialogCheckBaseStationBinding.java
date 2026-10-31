package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class DialogCheckBaseStationBinding {
    private final RelativeLayout rootView;
    public final TextView tvCancel;
    public final TextView tvContent;
    public final AppCompatTextView tvDiffDistance;
    public final AppCompatTextView tvHint;
    public final AppCompatTextView tvNewCoords;
    public final AppCompatTextView tvOldCoords;
    public final TextView tvSure;

    private DialogCheckBaseStationBinding(RelativeLayout relativeLayout, TextView textView, TextView textView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, TextView textView3) {
        this.rootView = relativeLayout;
        this.tvCancel = textView;
        this.tvContent = textView2;
        this.tvDiffDistance = appCompatTextView;
        this.tvHint = appCompatTextView2;
        this.tvNewCoords = appCompatTextView3;
        this.tvOldCoords = appCompatTextView4;
        this.tvSure = textView3;
    }

    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DialogCheckBaseStationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogCheckBaseStationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_check_base_station, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogCheckBaseStationBinding bind(View view) {
        int i = R$id.tvCancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R$id.tvContent;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView2 != null) {
                i = R$id.tvDiffDistance;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView != null) {
                    i = R$id.tvHint;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView2 != null) {
                        i = R$id.tvNewCoords;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView3 != null) {
                            i = R$id.tvOldCoords;
                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView4 != null) {
                                i = R$id.tvSure;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView3 != null) {
                                    return new DialogCheckBaseStationBinding((RelativeLayout) view, textView, textView2, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, textView3);
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
