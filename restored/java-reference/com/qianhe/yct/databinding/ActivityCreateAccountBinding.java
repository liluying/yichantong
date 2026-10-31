package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityCreateAccountBinding {
    public final AppCompatEditText edtAccount;
    public final EditText edtCaptcha;
    public final EditText edtConfirmPassword;
    public final EditText edtName;
    public final EditText edtPassword;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;
    public final TextView tvCaptcha;
    public final TextView tvCreate;

    private ActivityCreateAccountBinding(LinearLayout linearLayout, AppCompatEditText appCompatEditText, EditText editText, EditText editText2, EditText editText3, EditText editText4, TitlebarBinding titlebarBinding, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.edtAccount = appCompatEditText;
        this.edtCaptcha = editText;
        this.edtConfirmPassword = editText2;
        this.edtName = editText3;
        this.edtPassword = editText4;
        this.topBar = titlebarBinding;
        this.tvCaptcha = textView;
        this.tvCreate = textView2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityCreateAccountBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCreateAccountBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_create_account, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityCreateAccountBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.edtAccount;
        AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
        if (appCompatEditText != null) {
            i = R$id.edtCaptcha;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
            if (editText != null) {
                i = R$id.edtConfirmPassword;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, i);
                if (editText2 != null) {
                    i = R$id.edtName;
                    EditText editText3 = (EditText) ViewBindings.findChildViewById(view, i);
                    if (editText3 != null) {
                        i = R$id.edtPassword;
                        EditText editText4 = (EditText) ViewBindings.findChildViewById(view, i);
                        if (editText4 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                            TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
                            i = R$id.tvCaptcha;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView != null) {
                                i = R$id.tvCreate;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView2 != null) {
                                    return new ActivityCreateAccountBinding((LinearLayout) view, appCompatEditText, editText, editText2, editText3, editText4, titlebarBindingBind, textView, textView2);
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
