package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityDiffDataConfigBinding {
    public final EditText edtHost;
    public final EditText edtMountpoint;
    public final EditText edtPassword;
    public final EditText edtPort;
    public final EditText edtUsername;
    public final FrameLayout fltChoosePort;
    public final FrameLayout fltMountpoint;
    public final LinearLayout lltChannel;
    public final LinearLayout lltChooseCors;
    public final LinearLayout lltContent;
    public final LinearLayout lltCorsAccountExpire;
    public final LinearLayout lltCorsConfig;
    public final LinearLayout lltProtocol;
    public final LinearLayout lltRadioItem;
    public final LinearLayout lltReceptionData;
    public final LinearLayout lltSendPower;
    public final LinearLayout main;
    public final RelativeLayout rltOrderList;
    public final RelativeLayout rltRenew;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;
    public final AppCompatTextView tvChannel;
    public final TextView tvCorsAccountExpire;
    public final TextView tvCorsName;
    public final AppCompatTextView tvDiffSource;
    public final TextView tvLength;
    public final AppCompatTextView tvProtocol;
    public final TextView tvSave;
    public final AppCompatTextView tvSendPower;

    private ActivityDiffDataConfigBinding(LinearLayout linearLayout, EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, FrameLayout frameLayout, FrameLayout frameLayout2, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8, LinearLayout linearLayout9, LinearLayout linearLayout10, LinearLayout linearLayout11, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, TitlebarBinding titlebarBinding, AppCompatTextView appCompatTextView, TextView textView, TextView textView2, AppCompatTextView appCompatTextView2, TextView textView3, AppCompatTextView appCompatTextView3, TextView textView4, AppCompatTextView appCompatTextView4) {
        this.rootView = linearLayout;
        this.edtHost = editText;
        this.edtMountpoint = editText2;
        this.edtPassword = editText3;
        this.edtPort = editText4;
        this.edtUsername = editText5;
        this.fltChoosePort = frameLayout;
        this.fltMountpoint = frameLayout2;
        this.lltChannel = linearLayout2;
        this.lltChooseCors = linearLayout3;
        this.lltContent = linearLayout4;
        this.lltCorsAccountExpire = linearLayout5;
        this.lltCorsConfig = linearLayout6;
        this.lltProtocol = linearLayout7;
        this.lltRadioItem = linearLayout8;
        this.lltReceptionData = linearLayout9;
        this.lltSendPower = linearLayout10;
        this.main = linearLayout11;
        this.rltOrderList = relativeLayout;
        this.rltRenew = relativeLayout2;
        this.topBar = titlebarBinding;
        this.tvChannel = appCompatTextView;
        this.tvCorsAccountExpire = textView;
        this.tvCorsName = textView2;
        this.tvDiffSource = appCompatTextView2;
        this.tvLength = textView3;
        this.tvProtocol = appCompatTextView3;
        this.tvSave = textView4;
        this.tvSendPower = appCompatTextView4;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityDiffDataConfigBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityDiffDataConfigBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_diff_data_config, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityDiffDataConfigBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.edtHost;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
        if (editText != null) {
            i = R$id.edtMountpoint;
            EditText editText2 = (EditText) ViewBindings.findChildViewById(view, i);
            if (editText2 != null) {
                i = R$id.edtPassword;
                EditText editText3 = (EditText) ViewBindings.findChildViewById(view, i);
                if (editText3 != null) {
                    i = R$id.edtPort;
                    EditText editText4 = (EditText) ViewBindings.findChildViewById(view, i);
                    if (editText4 != null) {
                        i = R$id.edtUsername;
                        EditText editText5 = (EditText) ViewBindings.findChildViewById(view, i);
                        if (editText5 != null) {
                            i = R$id.fltChoosePort;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                            if (frameLayout != null) {
                                i = R$id.fltMountpoint;
                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i);
                                if (frameLayout2 != null) {
                                    i = R$id.lltChannel;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (linearLayout != null) {
                                        i = R$id.lltChooseCors;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout2 != null) {
                                            i = R$id.lltContent;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout3 != null) {
                                                i = R$id.lltCorsAccountExpire;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout4 != null) {
                                                    i = R$id.lltCorsConfig;
                                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayout5 != null) {
                                                        i = R$id.lltProtocol;
                                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                        if (linearLayout6 != null) {
                                                            i = R$id.lltRadioItem;
                                                            LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                            if (linearLayout7 != null) {
                                                                i = R$id.lltReceptionData;
                                                                LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                if (linearLayout8 != null) {
                                                                    i = R$id.lltSendPower;
                                                                    LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                    if (linearLayout9 != null) {
                                                                        LinearLayout linearLayout10 = (LinearLayout) view;
                                                                        i = R$id.rltOrderList;
                                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                                                        if (relativeLayout != null) {
                                                                            i = R$id.rltRenew;
                                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                                                            if (relativeLayout2 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                                                                TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
                                                                                i = R$id.tvChannel;
                                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                if (appCompatTextView != null) {
                                                                                    i = R$id.tvCorsAccountExpire;
                                                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (textView != null) {
                                                                                        i = R$id.tvCorsName;
                                                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (textView2 != null) {
                                                                                            i = R$id.tvDiffSource;
                                                                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (appCompatTextView2 != null) {
                                                                                                i = R$id.tvLength;
                                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (textView3 != null) {
                                                                                                    i = R$id.tvProtocol;
                                                                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (appCompatTextView3 != null) {
                                                                                                        i = R$id.tvSave;
                                                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (textView4 != null) {
                                                                                                            i = R$id.tvSendPower;
                                                                                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                            if (appCompatTextView4 != null) {
                                                                                                                return new ActivityDiffDataConfigBinding(linearLayout10, editText, editText2, editText3, editText4, editText5, frameLayout, frameLayout2, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, linearLayout8, linearLayout9, linearLayout10, relativeLayout, relativeLayout2, titlebarBindingBind, appCompatTextView, textView, textView2, appCompatTextView2, textView3, appCompatTextView3, textView4, appCompatTextView4);
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
