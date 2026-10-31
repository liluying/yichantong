package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityDebugUpgradefmwBinding {
    private final RelativeLayout rootView;
    public final TitlebarBinding topBar;
    public final TextView tvChooseFmw;
    public final TextView tvPath;
    public final TextView tvUpgrade;

    private ActivityDebugUpgradefmwBinding(RelativeLayout relativeLayout, TitlebarBinding titlebarBinding, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = relativeLayout;
        this.topBar = titlebarBinding;
        this.tvChooseFmw = textView;
        this.tvPath = textView2;
        this.tvUpgrade = textView3;
    }

    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ActivityDebugUpgradefmwBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityDebugUpgradefmwBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_debug_upgradefmw, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityDebugUpgradefmwBinding bind(View view) {
        int i = R$id.topBar;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, i);
        if (viewFindChildViewById != null) {
            TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
            i = R$id.tvChooseFmw;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R$id.tvPath;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    i = R$id.tvUpgrade;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView3 != null) {
                        return new ActivityDebugUpgradefmwBinding((RelativeLayout) view, titlebarBindingBind, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
