package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityUserManageBinding {
    public final LinearLayout lltInfoUser;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;
    public final AppCompatTextView tvAccount;
    public final AppCompatTextView tvDeviceManage;
    public final TextView tvGotoLogin;
    public final TextView tvLogout;
    public final AppCompatTextView tvModifyName;
    public final AppCompatTextView tvModifyPhone;
    public final AppCompatTextView tvModifyPsw;
    public final AppCompatTextView tvName;
    public final AppCompatTextView tvUnregisterAccount;

    private ActivityUserManageBinding(LinearLayout linearLayout, LinearLayout linearLayout2, TitlebarBinding titlebarBinding, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView, TextView textView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7) {
        this.rootView = linearLayout;
        this.lltInfoUser = linearLayout2;
        this.topBar = titlebarBinding;
        this.tvAccount = appCompatTextView;
        this.tvDeviceManage = appCompatTextView2;
        this.tvGotoLogin = textView;
        this.tvLogout = textView2;
        this.tvModifyName = appCompatTextView3;
        this.tvModifyPhone = appCompatTextView4;
        this.tvModifyPsw = appCompatTextView5;
        this.tvName = appCompatTextView6;
        this.tvUnregisterAccount = appCompatTextView7;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityUserManageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityUserManageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_user_manage, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityUserManageBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.lltInfoUser;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
        if (linearLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
            TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
            i = R$id.tvAccount;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                i = R$id.tvDeviceManage;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView2 != null) {
                    i = R$id.tvGotoLogin;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        i = R$id.tvLogout;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            i = R$id.tvModifyName;
                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView3 != null) {
                                i = R$id.tvModifyPhone;
                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView4 != null) {
                                    i = R$id.tvModifyPsw;
                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                    if (appCompatTextView5 != null) {
                                        i = R$id.tvName;
                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                        if (appCompatTextView6 != null) {
                                            i = R$id.tvUnregisterAccount;
                                            AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                            if (appCompatTextView7 != null) {
                                                return new ActivityUserManageBinding((LinearLayout) view, linearLayout, titlebarBindingBind, appCompatTextView, appCompatTextView2, textView, textView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7);
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
