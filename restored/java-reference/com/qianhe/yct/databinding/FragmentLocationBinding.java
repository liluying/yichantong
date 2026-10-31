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
public final class FragmentLocationBinding {
    public final LinearLayout lltDataStaus;
    private final NestedScrollView rootView;
    public final TextView tvCentralMeridian;
    public final TextView tvDataStatus;
    public final TextView tvDiffDelay;
    public final TextView tvEast;
    public final TextView tvElev;
    public final TextView tvGeoHeight;
    public final TextView tvHDOP;
    public final TextView tvHRMS;
    public final TextView tvHeading;
    public final TextView tvLat;
    public final TextView tvLocalTime;
    public final TextView tvLon;
    public final TextView tvNorth;
    public final TextView tvQuality;
    public final TextView tvUTC;
    public final TextView tvVDOP;
    public final TextView tvVRMS;

    private FragmentLocationBinding(NestedScrollView nestedScrollView, LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, TextView textView14, TextView textView15, TextView textView16, TextView textView17) {
        this.rootView = nestedScrollView;
        this.lltDataStaus = linearLayout;
        this.tvCentralMeridian = textView;
        this.tvDataStatus = textView2;
        this.tvDiffDelay = textView3;
        this.tvEast = textView4;
        this.tvElev = textView5;
        this.tvGeoHeight = textView6;
        this.tvHDOP = textView7;
        this.tvHRMS = textView8;
        this.tvHeading = textView9;
        this.tvLat = textView10;
        this.tvLocalTime = textView11;
        this.tvLon = textView12;
        this.tvNorth = textView13;
        this.tvQuality = textView14;
        this.tvUTC = textView15;
        this.tvVDOP = textView16;
        this.tvVRMS = textView17;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static FragmentLocationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentLocationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_location, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentLocationBinding bind(View view) {
        int i = R$id.lltDataStaus;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
        if (linearLayout != null) {
            i = R$id.tvCentralMeridian;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R$id.tvDataStatus;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    i = R$id.tvDiffDelay;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView3 != null) {
                        i = R$id.tvEast;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView4 != null) {
                            i = R$id.tvElev;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView5 != null) {
                                i = R$id.tvGeoHeight;
                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView6 != null) {
                                    i = R$id.tvHDOP;
                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView7 != null) {
                                        i = R$id.tvHRMS;
                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView8 != null) {
                                            i = R$id.tvHeading;
                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView9 != null) {
                                                i = R$id.tvLat;
                                                TextView textView10 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView10 != null) {
                                                    i = R$id.tvLocalTime;
                                                    TextView textView11 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView11 != null) {
                                                        i = R$id.tvLon;
                                                        TextView textView12 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView12 != null) {
                                                            i = R$id.tvNorth;
                                                            TextView textView13 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView13 != null) {
                                                                i = R$id.tvQuality;
                                                                TextView textView14 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                if (textView14 != null) {
                                                                    i = R$id.tvUTC;
                                                                    TextView textView15 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                    if (textView15 != null) {
                                                                        i = R$id.tvVDOP;
                                                                        TextView textView16 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                        if (textView16 != null) {
                                                                            i = R$id.tvVRMS;
                                                                            TextView textView17 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                            if (textView17 != null) {
                                                                                return new FragmentLocationBinding((NestedScrollView) view, linearLayout, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
