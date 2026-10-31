package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityUserLoginBinding {
    public final EditText edtAccount;
    public final EditText edtCaptcha;
    public final EditText edtPassword;
    public final LinearLayout lltCaptcha;
    public final LinearLayout lltPassword;
    public final LinearLayout lltSend;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;
    public final TextView tvCaptcha;
    public final TextView tvCreate;
    public final TextView tvLogin;
    public final TextView tvSwitchMethod;

    private ActivityUserLoginBinding(LinearLayout linearLayout, EditText editText, EditText editText2, EditText editText3, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, TitlebarBinding titlebarBinding, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.edtAccount = editText;
        this.edtCaptcha = editText2;
        this.edtPassword = editText3;
        this.lltCaptcha = linearLayout2;
        this.lltPassword = linearLayout3;
        this.lltSend = linearLayout4;
        this.topBar = titlebarBinding;
        this.tvCaptcha = textView;
        this.tvCreate = textView2;
        this.tvLogin = textView3;
        this.tvSwitchMethod = textView4;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityUserLoginBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityUserLoginBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_user_login, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityUserLoginBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.edtAccount;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
        if (editText != null) {
            i = R$id.edtCaptcha;
            EditText editText2 = (EditText) ViewBindings.findChildViewById(view, i);
            if (editText2 != null) {
                i = R$id.edtPassword;
                EditText editText3 = (EditText) ViewBindings.findChildViewById(view, i);
                if (editText3 != null) {
                    i = R$id.lltCaptcha;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout != null) {
                        i = R$id.lltPassword;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout2 != null) {
                            i = R$id.lltSend;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout3 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
                                i = R$id.tvCaptcha;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView != null) {
                                    i = R$id.tvCreate;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView2 != null) {
                                        i = R$id.tvLogin;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView3 != null) {
                                            i = R$id.tvSwitchMethod;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView4 != null) {
                                                return new ActivityUserLoginBinding((LinearLayout) view, editText, editText2, editText3, linearLayout, linearLayout2, linearLayout3, titlebarBindingBind, textView, textView2, textView3, textView4);
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
