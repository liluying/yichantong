package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Spinner;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentDemoCustomDataBinding {
    public final LinearLayout lltDataStaus;
    private final NestedScrollView rootView;
    public final Spinner spDataStatus;
    public final Spinner spH5Type;
    public final Spinner spQuality;
    public final NumericEditText tvEast;
    public final NumericEditText tvElev;
    public final NumericEditText tvLat;
    public final NumericEditText tvLon;
    public final NumericEditText tvNorth;

    private FragmentDemoCustomDataBinding(NestedScrollView nestedScrollView, LinearLayout linearLayout, Spinner spinner, Spinner spinner2, Spinner spinner3, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, NumericEditText numericEditText4, NumericEditText numericEditText5) {
        this.rootView = nestedScrollView;
        this.lltDataStaus = linearLayout;
        this.spDataStatus = spinner;
        this.spH5Type = spinner2;
        this.spQuality = spinner3;
        this.tvEast = numericEditText;
        this.tvElev = numericEditText2;
        this.tvLat = numericEditText3;
        this.tvLon = numericEditText4;
        this.tvNorth = numericEditText5;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static FragmentDemoCustomDataBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentDemoCustomDataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_demo_custom_data, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentDemoCustomDataBinding bind(View view) {
        int i = R$id.lltDataStaus;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
        if (linearLayout != null) {
            i = R$id.spDataStatus;
            Spinner spinner = (Spinner) ViewBindings.findChildViewById(view, i);
            if (spinner != null) {
                i = R$id.spH5Type;
                Spinner spinner2 = (Spinner) ViewBindings.findChildViewById(view, i);
                if (spinner2 != null) {
                    i = R$id.spQuality;
                    Spinner spinner3 = (Spinner) ViewBindings.findChildViewById(view, i);
                    if (spinner3 != null) {
                        i = R$id.tvEast;
                        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
                        if (numericEditText != null) {
                            i = R$id.tvElev;
                            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                            if (numericEditText2 != null) {
                                i = R$id.tvLat;
                                NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                if (numericEditText3 != null) {
                                    i = R$id.tvLon;
                                    NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                    if (numericEditText4 != null) {
                                        i = R$id.tvNorth;
                                        NumericEditText numericEditText5 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                        if (numericEditText5 != null) {
                                            return new FragmentDemoCustomDataBinding((NestedScrollView) view, linearLayout, spinner, spinner2, spinner3, numericEditText, numericEditText2, numericEditText3, numericEditText4, numericEditText5);
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
