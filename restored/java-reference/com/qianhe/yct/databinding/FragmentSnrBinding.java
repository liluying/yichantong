package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.CustomBarChart;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentSnrBinding {
    public final CustomBarChart chartBDS;
    public final CustomBarChart chartGAL;
    public final CustomBarChart chartGLN;
    public final CustomBarChart chartGPS;
    public final CustomBarChart chartIRNSS;
    public final CustomBarChart chartQZSS;
    public final CustomBarChart chartSBAS;
    public final NestedScrollView main;
    private final NestedScrollView rootView;

    private FragmentSnrBinding(NestedScrollView nestedScrollView, CustomBarChart customBarChart, CustomBarChart customBarChart2, CustomBarChart customBarChart3, CustomBarChart customBarChart4, CustomBarChart customBarChart5, CustomBarChart customBarChart6, CustomBarChart customBarChart7, NestedScrollView nestedScrollView2) {
        this.rootView = nestedScrollView;
        this.chartBDS = customBarChart;
        this.chartGAL = customBarChart2;
        this.chartGLN = customBarChart3;
        this.chartGPS = customBarChart4;
        this.chartIRNSS = customBarChart5;
        this.chartQZSS = customBarChart6;
        this.chartSBAS = customBarChart7;
        this.main = nestedScrollView2;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static FragmentSnrBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentSnrBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_snr, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentSnrBinding bind(View view) {
        int i = R$id.chartBDS;
        CustomBarChart customBarChart = (CustomBarChart) ViewBindings.findChildViewById(view, i);
        if (customBarChart != null) {
            i = R$id.chartGAL;
            CustomBarChart customBarChart2 = (CustomBarChart) ViewBindings.findChildViewById(view, i);
            if (customBarChart2 != null) {
                i = R$id.chartGLN;
                CustomBarChart customBarChart3 = (CustomBarChart) ViewBindings.findChildViewById(view, i);
                if (customBarChart3 != null) {
                    i = R$id.chartGPS;
                    CustomBarChart customBarChart4 = (CustomBarChart) ViewBindings.findChildViewById(view, i);
                    if (customBarChart4 != null) {
                        i = R$id.chartIRNSS;
                        CustomBarChart customBarChart5 = (CustomBarChart) ViewBindings.findChildViewById(view, i);
                        if (customBarChart5 != null) {
                            i = R$id.chartQZSS;
                            CustomBarChart customBarChart6 = (CustomBarChart) ViewBindings.findChildViewById(view, i);
                            if (customBarChart6 != null) {
                                i = R$id.chartSBAS;
                                CustomBarChart customBarChart7 = (CustomBarChart) ViewBindings.findChildViewById(view, i);
                                if (customBarChart7 != null) {
                                    NestedScrollView nestedScrollView = (NestedScrollView) view;
                                    return new FragmentSnrBinding(nestedScrollView, customBarChart, customBarChart2, customBarChart3, customBarChart4, customBarChart5, customBarChart6, customBarChart7, nestedScrollView);
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
