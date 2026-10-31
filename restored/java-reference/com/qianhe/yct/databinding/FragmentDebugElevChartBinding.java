package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBindings;
import com.github.mikephil.charting.charts.LineChart;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentDebugElevChartBinding {
    public final NumericEditText edtBaseElev;
    public final LineChart lineChart;
    public final NestedScrollView main;
    private final NestedScrollView rootView;
    public final ImageView tvCurrent;
    public final TextView tvDiff;
    public final TextView tvElev;
    public final TextView tvSure;

    private FragmentDebugElevChartBinding(NestedScrollView nestedScrollView, NumericEditText numericEditText, LineChart lineChart, NestedScrollView nestedScrollView2, ImageView imageView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = nestedScrollView;
        this.edtBaseElev = numericEditText;
        this.lineChart = lineChart;
        this.main = nestedScrollView2;
        this.tvCurrent = imageView;
        this.tvDiff = textView;
        this.tvElev = textView2;
        this.tvSure = textView3;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static FragmentDebugElevChartBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentDebugElevChartBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_debug_elev_chart, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentDebugElevChartBinding bind(View view) {
        int i = R$id.edtBaseElev;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.lineChart;
            LineChart lineChart = (LineChart) ViewBindings.findChildViewById(view, i);
            if (lineChart != null) {
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                i = R$id.tvCurrent;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView != null) {
                    i = R$id.tvDiff;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        i = R$id.tvElev;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            i = R$id.tvSure;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView3 != null) {
                                return new FragmentDebugElevChartBinding(nestedScrollView, numericEditText, lineChart, nestedScrollView, imageView, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
