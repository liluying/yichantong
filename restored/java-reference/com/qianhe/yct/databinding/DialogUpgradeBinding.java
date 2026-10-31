package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class DialogUpgradeBinding {
    private final RelativeLayout rootView;
    public final TextView tvCancel;
    public final ImageView tvClose;
    public final TextView tvFileSize;
    public final TextView tvIgnore;
    public final TextView tvSure;
    public final TextView tvTest;
    public final TextView tvTip;
    public final TextView tvUpgradeLog;
    public final TextView tvVersionNew;
    public final TextView tvVersionOld;

    private DialogUpgradeBinding(RelativeLayout relativeLayout, TextView textView, ImageView imageView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9) {
        this.rootView = relativeLayout;
        this.tvCancel = textView;
        this.tvClose = imageView;
        this.tvFileSize = textView2;
        this.tvIgnore = textView3;
        this.tvSure = textView4;
        this.tvTest = textView5;
        this.tvTip = textView6;
        this.tvUpgradeLog = textView7;
        this.tvVersionNew = textView8;
        this.tvVersionOld = textView9;
    }

    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DialogUpgradeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogUpgradeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_upgrade, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogUpgradeBinding bind(View view) {
        int i = R$id.tvCancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R$id.tvClose;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                i = R$id.tvFileSize;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    i = R$id.tvIgnore;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView3 != null) {
                        i = R$id.tvSure;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView4 != null) {
                            i = R$id.tvTest;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView5 != null) {
                                i = R$id.tvTip;
                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView6 != null) {
                                    i = R$id.tvUpgradeLog;
                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView7 != null) {
                                        i = R$id.tvVersionNew;
                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView8 != null) {
                                            i = R$id.tvVersionOld;
                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView9 != null) {
                                                return new DialogUpgradeBinding((RelativeLayout) view, textView, imageView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9);
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
