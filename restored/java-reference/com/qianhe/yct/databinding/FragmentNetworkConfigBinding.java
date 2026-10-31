package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentNetworkConfigBinding {
    public final EditText edtAPNPsw;
    public final EditText edtAPNname;
    public final EditText edtAPNuser;
    public final EditText edtWifiName;
    public final EditText edtWifiPassword;
    public final ImageView ivScanWifi;
    public final LinearLayout lltMobileConfig;
    public final LinearLayout lltMobileItem;
    public final LinearLayout lltWifiConfig;
    public final LinearLayout lltWifiItem;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final AppCompatTextView tvMobileNet;
    public final TextView tvSave;
    public final AppCompatTextView tvWifiRole;

    private FragmentNetworkConfigBinding(LinearLayout linearLayout, EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, ImageView imageView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, AppCompatTextView appCompatTextView, TextView textView, AppCompatTextView appCompatTextView2) {
        this.rootView = linearLayout;
        this.edtAPNPsw = editText;
        this.edtAPNname = editText2;
        this.edtAPNuser = editText3;
        this.edtWifiName = editText4;
        this.edtWifiPassword = editText5;
        this.ivScanWifi = imageView;
        this.lltMobileConfig = linearLayout2;
        this.lltMobileItem = linearLayout3;
        this.lltWifiConfig = linearLayout4;
        this.lltWifiItem = linearLayout5;
        this.main = linearLayout6;
        this.tvMobileNet = appCompatTextView;
        this.tvSave = textView;
        this.tvWifiRole = appCompatTextView2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentNetworkConfigBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentNetworkConfigBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_network_config, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentNetworkConfigBinding bind(View view) {
        int i = R$id.edtAPNPsw;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
        if (editText != null) {
            i = R$id.edtAPNname;
            EditText editText2 = (EditText) ViewBindings.findChildViewById(view, i);
            if (editText2 != null) {
                i = R$id.edtAPNuser;
                EditText editText3 = (EditText) ViewBindings.findChildViewById(view, i);
                if (editText3 != null) {
                    i = R$id.edtWifiName;
                    EditText editText4 = (EditText) ViewBindings.findChildViewById(view, i);
                    if (editText4 != null) {
                        i = R$id.edtWifiPassword;
                        EditText editText5 = (EditText) ViewBindings.findChildViewById(view, i);
                        if (editText5 != null) {
                            i = R$id.ivScanWifi;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                            if (imageView != null) {
                                i = R$id.lltMobileConfig;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout != null) {
                                    i = R$id.lltMobileItem;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (linearLayout2 != null) {
                                        i = R$id.lltWifiConfig;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout3 != null) {
                                            i = R$id.lltWifiItem;
                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout4 != null) {
                                                LinearLayout linearLayout5 = (LinearLayout) view;
                                                i = R$id.tvMobileNet;
                                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                if (appCompatTextView != null) {
                                                    i = R$id.tvSave;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView != null) {
                                                        i = R$id.tvWifiRole;
                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                        if (appCompatTextView2 != null) {
                                                            return new FragmentNetworkConfigBinding(linearLayout5, editText, editText2, editText3, editText4, editText5, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, appCompatTextView, textView, appCompatTextView2);
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
