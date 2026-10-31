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
public final class DialogFineTuneHeightInputBinding {
    public final NumericEditText edtHeight;
    public final LinearLayout lltInput;
    public final LinearLayout lltSource;
    private final RelativeLayout rootView;
    public final TextView tvCancel;
    public final TextView tvConfirm;
    public final TextView tvInstrumentCollect;
    public final TextView tvPointLib;
    public final TextView tvTip;
    public final TextView tvTitle;
    public final TextView tvUnit;

    private DialogFineTuneHeightInputBinding(RelativeLayout relativeLayout, NumericEditText numericEditText, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.rootView = relativeLayout;
        this.edtHeight = numericEditText;
        this.lltInput = linearLayout;
        this.lltSource = linearLayout2;
        this.tvCancel = textView;
        this.tvConfirm = textView2;
        this.tvInstrumentCollect = textView3;
        this.tvPointLib = textView4;
        this.tvTip = textView5;
        this.tvTitle = textView6;
        this.tvUnit = textView7;
    }

    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DialogFineTuneHeightInputBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogFineTuneHeightInputBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_fine_tune_height_input, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogFineTuneHeightInputBinding bind(View view) {
        int i = R$id.edtHeight;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.lltInput;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                i = R$id.lltSource;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout2 != null) {
                    i = R$id.tvCancel;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        i = R$id.tvConfirm;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            i = R$id.tvInstrumentCollect;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView3 != null) {
                                i = R$id.tvPointLib;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView4 != null) {
                                    i = R$id.tvTip;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView5 != null) {
                                        i = R$id.tvTitle;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView6 != null) {
                                            i = R$id.tvUnit;
                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView7 != null) {
                                                return new DialogFineTuneHeightInputBinding((RelativeLayout) view, numericEditText, linearLayout, linearLayout2, textView, textView2, textView3, textView4, textView5, textView6, textView7);
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
