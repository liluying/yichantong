package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.MulPointAreaPreView;
import com.qianhe.yct.view.ToothView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentMultiPointAreaStep1Binding {
    public final MulPointAreaPreView areaPreview;
    public final LinearLayout lltCadActions;
    public final LinearLayout main;
    public final RecyclerView rcvCoords;
    private final LinearLayout rootView;
    public final ToothView toothView;
    public final TextView tvCadImport;
    public final TextView tvClearCoords;
    public final TextView tvContinue;
    public final TextView tvPrevious;

    private FragmentMultiPointAreaStep1Binding(LinearLayout linearLayout, MulPointAreaPreView mulPointAreaPreView, LinearLayout linearLayout2, LinearLayout linearLayout3, RecyclerView recyclerView, ToothView toothView, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.areaPreview = mulPointAreaPreView;
        this.lltCadActions = linearLayout2;
        this.main = linearLayout3;
        this.rcvCoords = recyclerView;
        this.toothView = toothView;
        this.tvCadImport = textView;
        this.tvClearCoords = textView2;
        this.tvContinue = textView3;
        this.tvPrevious = textView4;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentMultiPointAreaStep1Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentMultiPointAreaStep1Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_multi_point_area_step1, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentMultiPointAreaStep1Binding bind(View view) {
        int i = R$id.areaPreview;
        MulPointAreaPreView mulPointAreaPreView = (MulPointAreaPreView) ViewBindings.findChildViewById(view, i);
        if (mulPointAreaPreView != null) {
            i = R$id.lltCadActions;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                LinearLayout linearLayout2 = (LinearLayout) view;
                i = R$id.rcvCoords;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                if (recyclerView != null) {
                    i = R$id.toothView;
                    ToothView toothView = (ToothView) ViewBindings.findChildViewById(view, i);
                    if (toothView != null) {
                        i = R$id.tvCadImport;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView != null) {
                            i = R$id.tvClearCoords;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView2 != null) {
                                i = R$id.tvContinue;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView3 != null) {
                                    i = R$id.tvPrevious;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView4 != null) {
                                        return new FragmentMultiPointAreaStep1Binding(linearLayout2, mulPointAreaPreView, linearLayout, linearLayout2, recyclerView, toothView, textView, textView2, textView3, textView4);
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
