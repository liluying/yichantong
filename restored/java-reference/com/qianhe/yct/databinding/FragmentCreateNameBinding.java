package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentCreateNameBinding {
    public final EditText edtName;
    public final FrameLayout flt;
    public final ImageView ivReset;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TextView tvContinue;
    public final TextView tvNameDes;
    public final TextView tvPrevious;

    private FragmentCreateNameBinding(LinearLayout linearLayout, EditText editText, FrameLayout frameLayout, ImageView imageView, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.edtName = editText;
        this.flt = frameLayout;
        this.ivReset = imageView;
        this.main = linearLayout2;
        this.tvContinue = textView;
        this.tvNameDes = textView2;
        this.tvPrevious = textView3;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCreateNameBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentCreateNameBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_create_name, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentCreateNameBinding bind(View view) {
        int i = R$id.edtName;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
        if (editText != null) {
            i = R$id.flt;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
            if (frameLayout != null) {
                i = R$id.ivReset;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i = R$id.tvContinue;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        i = R$id.tvNameDes;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            i = R$id.tvPrevious;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView3 != null) {
                                return new FragmentCreateNameBinding(linearLayout, editText, frameLayout, imageView, linearLayout, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
