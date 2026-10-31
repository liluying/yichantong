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
import com.qianhe.yct.view.PolyLinePreView;
import com.qianhe.yct.view.ToothView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentPolylineStep2Binding {
    public final LinearLayout lltCadActions;
    public final LinearLayout main;
    public final PolyLinePreView polyLineView;
    public final RecyclerView rcvCoords;
    private final LinearLayout rootView;
    public final ToothView toothView;
    public final TextView tvCadImport;
    public final TextView tvClearCoords;
    public final TextView tvContinue;
    public final TextView tvExplanation;
    public final TextView tvPrevious;

    private FragmentPolylineStep2Binding(LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, PolyLinePreView polyLinePreView, RecyclerView recyclerView, ToothView toothView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.lltCadActions = linearLayout2;
        this.main = linearLayout3;
        this.polyLineView = polyLinePreView;
        this.rcvCoords = recyclerView;
        this.toothView = toothView;
        this.tvCadImport = textView;
        this.tvClearCoords = textView2;
        this.tvContinue = textView3;
        this.tvExplanation = textView4;
        this.tvPrevious = textView5;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentPolylineStep2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentPolylineStep2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_polyline_step2, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentPolylineStep2Binding bind(View view) {
        int i = R$id.lltCadActions;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
        if (linearLayout != null) {
            LinearLayout linearLayout2 = (LinearLayout) view;
            i = R$id.polyLineView;
            PolyLinePreView polyLinePreView = (PolyLinePreView) ViewBindings.findChildViewById(view, i);
            if (polyLinePreView != null) {
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
                                    i = R$id.tvExplanation;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView4 != null) {
                                        i = R$id.tvPrevious;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView5 != null) {
                                            return new FragmentPolylineStep2Binding(linearLayout2, linearLayout, linearLayout2, polyLinePreView, recyclerView, toothView, textView, textView2, textView3, textView4, textView5);
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
