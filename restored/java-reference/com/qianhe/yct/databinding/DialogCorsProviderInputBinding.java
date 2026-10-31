package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class DialogCorsProviderInputBinding {
    public final AppCompatEditText edtProviderName;
    public final FrameLayout fltClear;
    private final RelativeLayout rootView;
    public final TextView tvCancel;
    public final TextView tvConfirm;
    public final TextView tvTitle;

    private DialogCorsProviderInputBinding(RelativeLayout relativeLayout, AppCompatEditText appCompatEditText, FrameLayout frameLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = relativeLayout;
        this.edtProviderName = appCompatEditText;
        this.fltClear = frameLayout;
        this.tvCancel = textView;
        this.tvConfirm = textView2;
        this.tvTitle = textView3;
    }

    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DialogCorsProviderInputBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogCorsProviderInputBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_cors_provider_input, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogCorsProviderInputBinding bind(View view) {
        int i = R$id.edtProviderName;
        AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
        if (appCompatEditText != null) {
            i = R$id.fltClear;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
            if (frameLayout != null) {
                i = R$id.tvCancel;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R$id.tvConfirm;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        i = R$id.tvTitle;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            return new DialogCorsProviderInputBinding((RelativeLayout) view, appCompatEditText, frameLayout, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
