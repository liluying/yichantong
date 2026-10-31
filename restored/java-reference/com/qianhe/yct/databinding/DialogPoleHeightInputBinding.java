package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class DialogPoleHeightInputBinding {
    public final NumericEditText edtPoleHeight;
    public final LinearLayout lltInput;
    private final RelativeLayout rootView;
    public final TextView tvCancel;
    public final TextView tvConfirm;
    public final TextView tvTitle;
    public final TextView tvUnit;

    private DialogPoleHeightInputBinding(RelativeLayout relativeLayout, NumericEditText numericEditText, LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = relativeLayout;
        this.edtPoleHeight = numericEditText;
        this.lltInput = linearLayout;
        this.tvCancel = textView;
        this.tvConfirm = textView2;
        this.tvTitle = textView3;
        this.tvUnit = textView4;
    }

    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DialogPoleHeightInputBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogPoleHeightInputBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_pole_height_input, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogPoleHeightInputBinding bind(View view) {
        int i = R$id.edtPoleHeight;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.lltInput;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                i = R$id.tvCancel;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R$id.tvConfirm;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        i = R$id.tvTitle;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            i = R$id.tvUnit;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView4 != null) {
                                return new DialogPoleHeightInputBinding((RelativeLayout) view, numericEditText, linearLayout, textView, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
