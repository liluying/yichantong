package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class DialogChooseMultipleProjectBinding {
    public final EditText edtName;
    public final ImageView ivAll;
    public final LinearLayout lltAll;
    public final LinearLayout lltBottom;
    public final RecyclerView rcv;
    public final LinearLayout root;
    private final LinearLayout rootView;
    public final RecyclerView rvCategory;
    public final TextView tvCancel;
    public final TextView tvConfirm;
    public final TextView tvTitle;

    private DialogChooseMultipleProjectBinding(LinearLayout linearLayout, EditText editText, ImageView imageView, LinearLayout linearLayout2, LinearLayout linearLayout3, RecyclerView recyclerView, LinearLayout linearLayout4, RecyclerView recyclerView2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.edtName = editText;
        this.ivAll = imageView;
        this.lltAll = linearLayout2;
        this.lltBottom = linearLayout3;
        this.rcv = recyclerView;
        this.root = linearLayout4;
        this.rvCategory = recyclerView2;
        this.tvCancel = textView;
        this.tvConfirm = textView2;
        this.tvTitle = textView3;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogChooseMultipleProjectBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogChooseMultipleProjectBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_choose_multiple_project, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogChooseMultipleProjectBinding bind(View view) {
        int i = R$id.edtName;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
        if (editText != null) {
            i = R$id.ivAll;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                i = R$id.lltAll;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = R$id.lltBottom;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout2 != null) {
                        i = R$id.rcv;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                        if (recyclerView != null) {
                            LinearLayout linearLayout3 = (LinearLayout) view;
                            i = R$id.rvCategory;
                            RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, i);
                            if (recyclerView2 != null) {
                                i = R$id.tvCancel;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView != null) {
                                    i = R$id.tvConfirm;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView2 != null) {
                                        i = R$id.tv_title;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView3 != null) {
                                            return new DialogChooseMultipleProjectBinding(linearLayout3, editText, imageView, linearLayout, linearLayout2, recyclerView, linearLayout3, recyclerView2, textView, textView2, textView3);
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
