package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import pl.droidsonroids.gif.GifImageView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class DialogCalibrateBinding {
    public final GifImageView gifIv;
    private final RelativeLayout rootView;
    public final TextView tvCancel;
    public final TextView tvContent;
    public final TextView tvHeadingAccuracy;
    public final TextView tvHint;
    public final TextView tvSure;

    private DialogCalibrateBinding(RelativeLayout relativeLayout, GifImageView gifImageView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = relativeLayout;
        this.gifIv = gifImageView;
        this.tvCancel = textView;
        this.tvContent = textView2;
        this.tvHeadingAccuracy = textView3;
        this.tvHint = textView4;
        this.tvSure = textView5;
    }

    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DialogCalibrateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogCalibrateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_calibrate, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogCalibrateBinding bind(View view) {
        int i = R$id.gifIv;
        GifImageView gifImageView = (GifImageView) ViewBindings.findChildViewById(view, i);
        if (gifImageView != null) {
            i = R$id.tvCancel;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R$id.tvContent;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    i = R$id.tvHeadingAccuracy;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView3 != null) {
                        i = R$id.tvHint;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView4 != null) {
                            i = R$id.tvSure;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView5 != null) {
                                return new DialogCalibrateBinding((RelativeLayout) view, gifImageView, textView, textView2, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
