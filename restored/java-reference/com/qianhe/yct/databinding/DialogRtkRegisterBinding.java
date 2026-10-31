package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class DialogRtkRegisterBinding {
    public final EditText edtCode;
    public final FrameLayout fltSaoma;
    private final RelativeLayout rootView;
    public final TextView tvClose;
    public final TextView tvError;
    public final TextView tvRegister;

    private DialogRtkRegisterBinding(RelativeLayout relativeLayout, EditText editText, FrameLayout frameLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = relativeLayout;
        this.edtCode = editText;
        this.fltSaoma = frameLayout;
        this.tvClose = textView;
        this.tvError = textView2;
        this.tvRegister = textView3;
    }

    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DialogRtkRegisterBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogRtkRegisterBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_rtk_register, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogRtkRegisterBinding bind(View view) {
        int i = R$id.edtCode;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
        if (editText != null) {
            i = R$id.fltSaoma;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
            if (frameLayout != null) {
                i = R$id.tvClose;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R$id.tvError;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        i = R$id.tvRegister;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            return new DialogRtkRegisterBinding((RelativeLayout) view, editText, frameLayout, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
