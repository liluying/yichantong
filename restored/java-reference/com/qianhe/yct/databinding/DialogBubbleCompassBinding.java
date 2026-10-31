package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.BubbleCompassView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class DialogBubbleCompassBinding {
    public final BubbleCompassView bubbleCompassView;
    private final LinearLayout rootView;
    public final TextView tvCollect;
    public final TextView tvTip;

    private DialogBubbleCompassBinding(LinearLayout linearLayout, BubbleCompassView bubbleCompassView, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.bubbleCompassView = bubbleCompassView;
        this.tvCollect = textView;
        this.tvTip = textView2;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogBubbleCompassBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogBubbleCompassBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_bubble_compass, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogBubbleCompassBinding bind(View view) {
        int i = R$id.bubbleCompassView;
        BubbleCompassView bubbleCompassView = (BubbleCompassView) ViewBindings.findChildViewById(view, i);
        if (bubbleCompassView != null) {
            i = R$id.tvCollect;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R$id.tvTip;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    return new DialogBubbleCompassBinding((LinearLayout) view, bubbleCompassView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
