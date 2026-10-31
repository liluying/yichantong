package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityBasestationDatalinkBinding {
    public final EditText edtAPNPsw;
    public final EditText edtAPNname;
    public final EditText edtAPNuser;
    public final EditText edtHost;
    public final EditText edtMountPoint;
    public final EditText edtPassword;
    public final NumericEditText edtPort;
    public final EditText edtUserName;
    public final LinearLayout lltNetworkItem;
    public final LinearLayout lltNtripItem;
    public final LinearLayout lltRadioItem;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;
    public final AppCompatTextView tvChannel;
    public final AppCompatTextView tvConnectType;
    public final AppCompatTextView tvDataLink;
    public final AppCompatTextView tvProtocol;
    public final TextView tvSave;
    public final AppCompatTextView tvSendPower;

    private ActivityBasestationDatalinkBinding(LinearLayout linearLayout, EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, EditText editText6, NumericEditText numericEditText, EditText editText7, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, TitlebarBinding titlebarBinding, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, TextView textView, AppCompatTextView appCompatTextView5) {
        this.rootView = linearLayout;
        this.edtAPNPsw = editText;
        this.edtAPNname = editText2;
        this.edtAPNuser = editText3;
        this.edtHost = editText4;
        this.edtMountPoint = editText5;
        this.edtPassword = editText6;
        this.edtPort = numericEditText;
        this.edtUserName = editText7;
        this.lltNetworkItem = linearLayout2;
        this.lltNtripItem = linearLayout3;
        this.lltRadioItem = linearLayout4;
        this.topBar = titlebarBinding;
        this.tvChannel = appCompatTextView;
        this.tvConnectType = appCompatTextView2;
        this.tvDataLink = appCompatTextView3;
        this.tvProtocol = appCompatTextView4;
        this.tvSave = textView;
        this.tvSendPower = appCompatTextView5;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityBasestationDatalinkBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityBasestationDatalinkBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_basestation_datalink, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityBasestationDatalinkBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.edtAPNPsw;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
        if (editText != null) {
            i = R$id.edtAPNname;
            EditText editText2 = (EditText) ViewBindings.findChildViewById(view, i);
            if (editText2 != null) {
                i = R$id.edtAPNuser;
                EditText editText3 = (EditText) ViewBindings.findChildViewById(view, i);
                if (editText3 != null) {
                    i = R$id.edtHost;
                    EditText editText4 = (EditText) ViewBindings.findChildViewById(view, i);
                    if (editText4 != null) {
                        i = R$id.edtMountPoint;
                        EditText editText5 = (EditText) ViewBindings.findChildViewById(view, i);
                        if (editText5 != null) {
                            i = R$id.edtPassword;
                            EditText editText6 = (EditText) ViewBindings.findChildViewById(view, i);
                            if (editText6 != null) {
                                i = R$id.edtPort;
                                NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                if (numericEditText != null) {
                                    i = R$id.edtUserName;
                                    EditText editText7 = (EditText) ViewBindings.findChildViewById(view, i);
                                    if (editText7 != null) {
                                        i = R$id.lltNetworkItem;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout != null) {
                                            i = R$id.lltNtripItem;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout2 != null) {
                                                i = R$id.lltRadioItem;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout3 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                                    TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
                                                    i = R$id.tvChannel;
                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                    if (appCompatTextView != null) {
                                                        i = R$id.tvConnectType;
                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                        if (appCompatTextView2 != null) {
                                                            i = R$id.tvDataLink;
                                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                            if (appCompatTextView3 != null) {
                                                                i = R$id.tvProtocol;
                                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                if (appCompatTextView4 != null) {
                                                                    i = R$id.tvSave;
                                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                    if (textView != null) {
                                                                        i = R$id.tvSendPower;
                                                                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                        if (appCompatTextView5 != null) {
                                                                            return new ActivityBasestationDatalinkBinding((LinearLayout) view, editText, editText2, editText3, editText4, editText5, editText6, numericEditText, editText7, linearLayout, linearLayout2, linearLayout3, titlebarBindingBind, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, textView, appCompatTextView5);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
