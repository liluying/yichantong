package com.qianhe.yct.databinding;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.view.NumericEditText;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ViewCustomEditItemBinding {
    public final NumericEditText etValue;
    private final LinearLayout rootView;
    public final TextView tvTitle;

    private ViewCustomEditItemBinding(LinearLayout linearLayout, NumericEditText numericEditText, TextView textView) {
        this.rootView = linearLayout;
        this.etValue = numericEditText;
        this.tvTitle = textView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ViewCustomEditItemBinding bind(View view) {
        int i = R$id.etValue;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.tvTitle;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                return new ViewCustomEditItemBinding((LinearLayout) view, numericEditText, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
