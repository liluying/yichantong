package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentBasestationInfoBinding {
    public final LinearLayout lltCorsAccountExpire;
    public final NestedScrollView main;
    private final NestedScrollView rootView;
    public final TextView tvBaseStationHigh;
    public final TextView tvBaseStationId;
    public final TextView tvBaseStationLat;
    public final TextView tvBaseStationLon;
    public final TextView tvCorsAccountExpire;
    public final TextView tvCorsConnectType;
    public final TextView tvDistance;
    public final TextView tvEast;
    public final TextView tvElev;
    public final TextView tvNorth;
    public final TextView tvReceptionData;

    private FragmentBasestationInfoBinding(NestedScrollView nestedScrollView, LinearLayout linearLayout, NestedScrollView nestedScrollView2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11) {
        this.rootView = nestedScrollView;
        this.lltCorsAccountExpire = linearLayout;
        this.main = nestedScrollView2;
        this.tvBaseStationHigh = textView;
        this.tvBaseStationId = textView2;
        this.tvBaseStationLat = textView3;
        this.tvBaseStationLon = textView4;
        this.tvCorsAccountExpire = textView5;
        this.tvCorsConnectType = textView6;
        this.tvDistance = textView7;
        this.tvEast = textView8;
        this.tvElev = textView9;
        this.tvNorth = textView10;
        this.tvReceptionData = textView11;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static FragmentBasestationInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentBasestationInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_basestation_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentBasestationInfoBinding bind(View view) {
        int i = R$id.lltCorsAccountExpire;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
        if (linearLayout != null) {
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            i = R$id.tvBaseStationHigh;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R$id.tvBaseStationId;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    i = R$id.tvBaseStationLat;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView3 != null) {
                        i = R$id.tvBaseStationLon;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView4 != null) {
                            i = R$id.tvCorsAccountExpire;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView5 != null) {
                                i = R$id.tvCorsConnectType;
                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView6 != null) {
                                    i = R$id.tvDistance;
                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView7 != null) {
                                        i = R$id.tvEast;
                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView8 != null) {
                                            i = R$id.tvElev;
                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView9 != null) {
                                                i = R$id.tvNorth;
                                                TextView textView10 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView10 != null) {
                                                    i = R$id.tvReceptionData;
                                                    TextView textView11 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView11 != null) {
                                                        return new FragmentBasestationInfoBinding(nestedScrollView, linearLayout, nestedScrollView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11);
                                                    }
                                                }
                                            }
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
