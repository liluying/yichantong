package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class DialogChooseExportFolderBinding {
    public final AppCompatEditText edtFolderName;
    public final FrameLayout fltClear;
    public final LinearLayout lltNewFolder;
    public final LinearLayout lltPicker;
    public final RecyclerView rcv;
    public final LinearLayout root;
    private final LinearLayout rootView;
    public final TextView tvCancel;
    public final TextView tvConfirm;
    public final TextView tvEmpty;
    public final TextView tvNewCancel;
    public final TextView tvNewConfirm;
    public final TextView tvNewFolder;
    public final TextView tvPath;
    public final TextView tvTitle;
    public final TextView tvUp;

    private DialogChooseExportFolderBinding(LinearLayout linearLayout, AppCompatEditText appCompatEditText, FrameLayout frameLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, RecyclerView recyclerView, LinearLayout linearLayout4, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9) {
        this.rootView = linearLayout;
        this.edtFolderName = appCompatEditText;
        this.fltClear = frameLayout;
        this.lltNewFolder = linearLayout2;
        this.lltPicker = linearLayout3;
        this.rcv = recyclerView;
        this.root = linearLayout4;
        this.tvCancel = textView;
        this.tvConfirm = textView2;
        this.tvEmpty = textView3;
        this.tvNewCancel = textView4;
        this.tvNewConfirm = textView5;
        this.tvNewFolder = textView6;
        this.tvPath = textView7;
        this.tvTitle = textView8;
        this.tvUp = textView9;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogChooseExportFolderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogChooseExportFolderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_choose_export_folder, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogChooseExportFolderBinding bind(View view) {
        int i = R$id.edtFolderName;
        AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
        if (appCompatEditText != null) {
            i = R$id.fltClear;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
            if (frameLayout != null) {
                i = R$id.lltNewFolder;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = R$id.lltPicker;
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
                                    i = R$id.tvEmpty;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView3 != null) {
                                        i = R$id.tvNewCancel;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView4 != null) {
                                            i = R$id.tvNewConfirm;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView5 != null) {
                                                i = R$id.tvNewFolder;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView6 != null) {
                                                    i = R$id.tvPath;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView7 != null) {
                                                        i = R$id.tvTitle;
                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView8 != null) {
                                                            i = R$id.tvUp;
                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView9 != null) {
                                                                return new DialogChooseExportFolderBinding(linearLayout3, appCompatEditText, frameLayout, linearLayout, linearLayout2, recyclerView, linearLayout3, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
