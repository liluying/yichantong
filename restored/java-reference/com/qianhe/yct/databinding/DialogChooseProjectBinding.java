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
public final class DialogChooseProjectBinding {
    public final EditText edtName;
    public final ImageView ivAll;
    public final LinearLayout lltAll;
    public final LinearLayout lltBottom;
    public final RecyclerView rcv;
    public final LinearLayout root;
    private final LinearLayout rootView;
    public final TextView tvCancel;
    public final TextView tvConfirm;
    public final TextView tvDike;
    public final TextView tvLine;
    public final TextView tvSP;
    public final TextView tvTitle;
    public final TextView tvWG;
    public final TextView tvZP;

    private DialogChooseProjectBinding(LinearLayout linearLayout, EditText editText, ImageView imageView, LinearLayout linearLayout2, LinearLayout linearLayout3, RecyclerView recyclerView, LinearLayout linearLayout4, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = linearLayout;
        this.edtName = editText;
        this.ivAll = imageView;
        this.lltAll = linearLayout2;
        this.lltBottom = linearLayout3;
        this.rcv = recyclerView;
        this.root = linearLayout4;
        this.tvCancel = textView;
        this.tvConfirm = textView2;
        this.tvDike = textView3;
        this.tvLine = textView4;
        this.tvSP = textView5;
        this.tvTitle = textView6;
        this.tvWG = textView7;
        this.tvZP = textView8;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogChooseProjectBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogChooseProjectBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_choose_project, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogChooseProjectBinding bind(View view) {
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
                            i = R$id.tvCancel;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView != null) {
                                i = R$id.tvConfirm;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView2 != null) {
                                    i = R$id.tvDike;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView3 != null) {
                                        i = R$id.tvLine;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView4 != null) {
                                            i = R$id.tvSP;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView5 != null) {
                                                i = R$id.tv_title;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView6 != null) {
                                                    i = R$id.tvWG;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView7 != null) {
                                                        i = R$id.tvZP;
                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView8 != null) {
                                                            return new DialogChooseProjectBinding(linearLayout3, editText, imageView, linearLayout, linearLayout2, recyclerView, linearLayout3, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
