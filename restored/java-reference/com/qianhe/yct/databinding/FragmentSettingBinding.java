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
public final class FragmentSettingBinding {
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final AppCompatTextView tvAboutApp;
    public final AppCompatTextView tvBaseInfo;
    public final AppCompatTextView tvConfig;
    public final AppCompatTextView tvDealer;
    public final AppCompatTextView tvDeviceManage;
    public final AppCompatTextView tvRtkInfo;
    public final AppCompatTextView tvUserManage;
    public final TextView tvVersion;
    public final AppCompatTextView tvZeroing;

    private FragmentSettingBinding(LinearLayout linearLayout, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, TextView textView, AppCompatTextView appCompatTextView8) {
        this.rootView = linearLayout;
        this.main = linearLayout2;
        this.tvAboutApp = appCompatTextView;
        this.tvBaseInfo = appCompatTextView2;
        this.tvConfig = appCompatTextView3;
        this.tvDealer = appCompatTextView4;
        this.tvDeviceManage = appCompatTextView5;
        this.tvRtkInfo = appCompatTextView6;
        this.tvUserManage = appCompatTextView7;
        this.tvVersion = textView;
        this.tvZeroing = appCompatTextView8;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentSettingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentSettingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_setting, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentSettingBinding bind(View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i = R$id.tvAboutApp;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
        if (appCompatTextView != null) {
            i = R$id.tvBaseInfo;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView2 != null) {
                i = R$id.tvConfig;
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView3 != null) {
                    i = R$id.tvDealer;
                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView4 != null) {
                        i = R$id.tvDeviceManage;
                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView5 != null) {
                            i = R$id.tvRtkInfo;
                            AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView6 != null) {
                                i = R$id.tvUserManage;
                                AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                if (appCompatTextView7 != null) {
                                    i = R$id.tvVersion;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null) {
                                        i = R$id.tvZeroing;
                                        AppCompatTextView appCompatTextView8 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                        if (appCompatTextView8 != null) {
                                            return new FragmentSettingBinding(linearLayout, linearLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, textView, appCompatTextView8);
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
