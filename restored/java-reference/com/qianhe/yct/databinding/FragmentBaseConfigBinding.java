package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentBaseConfigBinding {
    public final NumericEditText edtHeightCutoffAngle;
    public final AppCompatEditText edtHost;
    public final NumericEditText edtPDOP;
    public final NumericEditText edtPort;
    public final LinearLayout lltContent;
    public final LinearLayout main;
    private final LinearLayout rootView;

    private FragmentBaseConfigBinding(LinearLayout linearLayout, NumericEditText numericEditText, AppCompatEditText appCompatEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, LinearLayout linearLayout2, LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.edtHeightCutoffAngle = numericEditText;
        this.edtHost = appCompatEditText;
        this.edtPDOP = numericEditText2;
        this.edtPort = numericEditText3;
        this.lltContent = linearLayout2;
        this.main = linearLayout3;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentBaseConfigBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentBaseConfigBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_base_config, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentBaseConfigBinding bind(View view) {
        int i = R$id.edtHeightCutoffAngle;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtHost;
            AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
            if (appCompatEditText != null) {
                i = R$id.edtPDOP;
                NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText2 != null) {
                    i = R$id.edtPort;
                    NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                    if (numericEditText3 != null) {
                        i = R$id.lltContent;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout != null) {
                            LinearLayout linearLayout2 = (LinearLayout) view;
                            return new FragmentBaseConfigBinding(linearLayout2, numericEditText, appCompatEditText, numericEditText2, numericEditText3, linearLayout, linearLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
