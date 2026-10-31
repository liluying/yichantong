package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class DialogUnregisterBinding {
    public final AppCompatEditText edtPassword;
    public final TextView error;
    private final RelativeLayout rootView;
    public final AppCompatTextView tvAccount;
    public final TextView tvClose;
    public final TextView tvConfirm;
    public final TextView tvTitle;

    private DialogUnregisterBinding(RelativeLayout relativeLayout, AppCompatEditText appCompatEditText, TextView textView, AppCompatTextView appCompatTextView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = relativeLayout;
        this.edtPassword = appCompatEditText;
        this.error = textView;
        this.tvAccount = appCompatTextView;
        this.tvClose = textView2;
        this.tvConfirm = textView3;
        this.tvTitle = textView4;
    }

    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DialogUnregisterBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogUnregisterBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_unregister, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogUnregisterBinding bind(View view) {
        int i = R$id.edtPassword;
        AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
        if (appCompatEditText != null) {
            i = R$id.error;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R$id.tvAccount;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView != null) {
                    i = R$id.tvClose;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        i = R$id.tvConfirm;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            i = R$id.tv_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView4 != null) {
                                return new DialogUnregisterBinding((RelativeLayout) view, appCompatEditText, textView, appCompatTextView, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
