package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ItemHomeBinding {
    public final ImageView ivIcon;
    public final LinearLayout lltItemContent;
    private final CardView rootView;
    public final AppCompatTextView tvTitle;

    private ItemHomeBinding(CardView cardView, ImageView imageView, LinearLayout linearLayout, AppCompatTextView appCompatTextView) {
        this.rootView = cardView;
        this.ivIcon = imageView;
        this.lltItemContent = linearLayout;
        this.tvTitle = appCompatTextView;
    }

    public CardView getRoot() {
        return this.rootView;
    }

    public static ItemHomeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.item_home, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemHomeBinding bind(View view) {
        int i = R$id.ivIcon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = R$id.lltItemContent;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                i = R$id.tvTitle;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView != null) {
                    return new ItemHomeBinding((CardView) view, imageView, linearLayout, appCompatTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
