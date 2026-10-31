package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityShareJoinBinding {
    public final EditText edtCode;
    public final FrameLayout fltClearCode;
    public final LinearLayout llt;
    public final LinearLayout lltBottom;
    public final RelativeLayout lltname;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;
    public final TextView tvJoin;

    private ActivityShareJoinBinding(LinearLayout linearLayout, EditText editText, FrameLayout frameLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, RelativeLayout relativeLayout, LinearLayout linearLayout4, TitlebarBinding titlebarBinding, TextView textView) {
        this.rootView = linearLayout;
        this.edtCode = editText;
        this.fltClearCode = frameLayout;
        this.llt = linearLayout2;
        this.lltBottom = linearLayout3;
        this.lltname = relativeLayout;
        this.main = linearLayout4;
        this.topBar = titlebarBinding;
        this.tvJoin = textView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityShareJoinBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityShareJoinBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_share_join, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityShareJoinBinding bind(View view) {
        int i = R$id.edtCode;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
        if (editText != null) {
            i = R$id.fltClearCode;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
            if (frameLayout != null) {
                i = R$id.llt;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = R$id.lltBottom;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout2 != null) {
                        i = R$id.lltname;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                        if (relativeLayout != null) {
                            LinearLayout linearLayout3 = (LinearLayout) view;
                            i = R$id.topBar;
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, i);
                            if (viewFindChildViewById != null) {
                                TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
                                i = R$id.tvJoin;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView != null) {
                                    return new ActivityShareJoinBinding(linearLayout3, editText, frameLayout, linearLayout, linearLayout2, relativeLayout, linearLayout3, titlebarBindingBind, textView);
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
