package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBindings;
import com.github.mikephil.charting.charts.RadarChart;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentStarmapBinding {
    public final ImageView ivBDS;
    public final ImageView ivGAL;
    public final ImageView ivGLN;
    public final ImageView ivGPS;
    public final ImageView ivIRNSS;
    public final ImageView ivQZSS;
    public final ImageView ivSBAS;
    public final LinearLayout lltBDS;
    public final LinearLayout lltGAL;
    public final LinearLayout lltGLN;
    public final LinearLayout lltGPS;
    public final LinearLayout lltIRNSS;
    public final LinearLayout lltQZSS;
    public final LinearLayout lltSBAS;
    public final NestedScrollView main;
    public final RadarChart radarChart;
    private final NestedScrollView rootView;
    public final TextView tvBDS;
    public final TextView tvGAL;
    public final TextView tvGLN;
    public final TextView tvGPS;
    public final TextView tvIRNSS;
    public final TextView tvQZSS;
    public final TextView tvSBAS;
    public final TextView tvUseNum;
    public final TextView tvVisNum;

    private FragmentStarmapBinding(NestedScrollView nestedScrollView, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ImageView imageView7, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, NestedScrollView nestedScrollView2, RadarChart radarChart, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9) {
        this.rootView = nestedScrollView;
        this.ivBDS = imageView;
        this.ivGAL = imageView2;
        this.ivGLN = imageView3;
        this.ivGPS = imageView4;
        this.ivIRNSS = imageView5;
        this.ivQZSS = imageView6;
        this.ivSBAS = imageView7;
        this.lltBDS = linearLayout;
        this.lltGAL = linearLayout2;
        this.lltGLN = linearLayout3;
        this.lltGPS = linearLayout4;
        this.lltIRNSS = linearLayout5;
        this.lltQZSS = linearLayout6;
        this.lltSBAS = linearLayout7;
        this.main = nestedScrollView2;
        this.radarChart = radarChart;
        this.tvBDS = textView;
        this.tvGAL = textView2;
        this.tvGLN = textView3;
        this.tvGPS = textView4;
        this.tvIRNSS = textView5;
        this.tvQZSS = textView6;
        this.tvSBAS = textView7;
        this.tvUseNum = textView8;
        this.tvVisNum = textView9;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static FragmentStarmapBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentStarmapBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_starmap, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentStarmapBinding bind(View view) {
        int i = R$id.ivBDS;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = R$id.ivGAL;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView2 != null) {
                i = R$id.ivGLN;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView3 != null) {
                    i = R$id.ivGPS;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i);
                    if (imageView4 != null) {
                        i = R$id.ivIRNSS;
                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, i);
                        if (imageView5 != null) {
                            i = R$id.ivQZSS;
                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, i);
                            if (imageView6 != null) {
                                i = R$id.ivSBAS;
                                ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView7 != null) {
                                    i = R$id.lltBDS;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (linearLayout != null) {
                                        i = R$id.lltGAL;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout2 != null) {
                                            i = R$id.lltGLN;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout3 != null) {
                                                i = R$id.lltGPS;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout4 != null) {
                                                    i = R$id.lltIRNSS;
                                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayout5 != null) {
                                                        i = R$id.lltQZSS;
                                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                        if (linearLayout6 != null) {
                                                            i = R$id.lltSBAS;
                                                            LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                            if (linearLayout7 != null) {
                                                                NestedScrollView nestedScrollView = (NestedScrollView) view;
                                                                i = R$id.radarChart;
                                                                RadarChart radarChart = (RadarChart) ViewBindings.findChildViewById(view, i);
                                                                if (radarChart != null) {
                                                                    i = R$id.tvBDS;
                                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                    if (textView != null) {
                                                                        i = R$id.tvGAL;
                                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                        if (textView2 != null) {
                                                                            i = R$id.tvGLN;
                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                            if (textView3 != null) {
                                                                                i = R$id.tvGPS;
                                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                if (textView4 != null) {
                                                                                    i = R$id.tvIRNSS;
                                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (textView5 != null) {
                                                                                        i = R$id.tvQZSS;
                                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (textView6 != null) {
                                                                                            i = R$id.tvSBAS;
                                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (textView7 != null) {
                                                                                                i = R$id.tvUseNum;
                                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (textView8 != null) {
                                                                                                    i = R$id.tvVisNum;
                                                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (textView9 != null) {
                                                                                                        return new FragmentStarmapBinding(nestedScrollView, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, nestedScrollView, radarChart, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
