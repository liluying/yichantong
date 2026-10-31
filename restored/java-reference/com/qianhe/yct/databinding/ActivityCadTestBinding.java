package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityCadTestBinding {
    public final Button btn;
    private final LinearLayout rootView;

    private ActivityCadTestBinding(LinearLayout linearLayout, Button button) {
        this.rootView = linearLayout;
        this.btn = button;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityCadTestBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCadTestBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_cad_test, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityCadTestBinding bind(View view) {
        int i = R$id.btn;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            return new ActivityCadTestBinding((LinearLayout) view, button);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
