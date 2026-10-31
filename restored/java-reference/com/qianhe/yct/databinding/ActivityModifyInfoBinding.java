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
public final class ActivityModifyInfoBinding {
    public final EditText edtAccount;
    public final EditText edtCaptcha;
    public final EditText edtName;
    public final EditText edtNewPassword;
    public final EditText edtPassword;
    public final LinearLayout lltCaptcha;
    public final LinearLayout lltName;
    public final LinearLayout lltNewPassword;
    public final LinearLayout lltPassword;
    public final LinearLayout lltPhone;
    public final LinearLayout lltSend;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;
    public final TextView tvAccountDes;
    public final TextView tvCaptcha;
    public final TextView tvConfirm;
    public final TextView tvSwitchMethod;

    private ActivityModifyInfoBinding(LinearLayout linearLayout, EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, TitlebarBinding titlebarBinding, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.edtAccount = editText;
        this.edtCaptcha = editText2;
        this.edtName = editText3;
        this.edtNewPassword = editText4;
        this.edtPassword = editText5;
        this.lltCaptcha = linearLayout2;
        this.lltName = linearLayout3;
        this.lltNewPassword = linearLayout4;
        this.lltPassword = linearLayout5;
        this.lltPhone = linearLayout6;
        this.lltSend = linearLayout7;
        this.topBar = titlebarBinding;
        this.tvAccountDes = textView;
        this.tvCaptcha = textView2;
        this.tvConfirm = textView3;
        this.tvSwitchMethod = textView4;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityModifyInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityModifyInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_modify_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityModifyInfoBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.edtAccount;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
        if (editText != null) {
            i = R$id.edtCaptcha;
            EditText editText2 = (EditText) ViewBindings.findChildViewById(view, i);
            if (editText2 != null) {
                i = R$id.edtName;
                EditText editText3 = (EditText) ViewBindings.findChildViewById(view, i);
                if (editText3 != null) {
                    i = R$id.edtNewPassword;
                    EditText editText4 = (EditText) ViewBindings.findChildViewById(view, i);
                    if (editText4 != null) {
                        i = R$id.edtPassword;
                        EditText editText5 = (EditText) ViewBindings.findChildViewById(view, i);
                        if (editText5 != null) {
                            i = R$id.lltCaptcha;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout != null) {
                                i = R$id.lltName;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout2 != null) {
                                    i = R$id.lltNewPassword;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (linearLayout3 != null) {
                                        i = R$id.lltPassword;
                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout4 != null) {
                                            i = R$id.lltPhone;
                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout5 != null) {
                                                i = R$id.lltSend;
                                                LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout6 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                                    TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
                                                    i = R$id.tvAccountDes;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView != null) {
                                                        i = R$id.tvCaptcha;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView2 != null) {
                                                            i = R$id.tvConfirm;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView3 != null) {
                                                                i = R$id.tvSwitchMethod;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                if (textView4 != null) {
                                                                    return new ActivityModifyInfoBinding((LinearLayout) view, editText, editText2, editText3, editText4, editText5, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, titlebarBindingBind, textView, textView2, textView3, textView4);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
