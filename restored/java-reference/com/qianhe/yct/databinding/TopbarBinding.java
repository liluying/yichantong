package com.qianhe.yct.databinding;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import pl.droidsonroids.gif.GifImageView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class TopbarBinding {
    public final FrameLayout fltIvbatt;
    public final GifImageView gifCharging;
    public final ImageView ivBackTb;
    public final ImageView ivBattIcon;
    public final ImageView ivLogo;
    public final ImageView ivSensorBattIcon;
    public final LinearLayout lltBackTb;
    public final View lltBatt;
    public final View lltInsState;
    public final LinearLayout lltLocate;
    public final LinearLayout lltStar;
    public final RelativeLayout rltRMS;
    public final RelativeLayout rltSensorBatt;
    private final FrameLayout rootView;
    public final AppCompatTextView tvAngle;
    public final TextView tvDemoTip;
    public final TextView tvDiffDelay;
    public final TextView tvGotoConnect;
    public final AppCompatTextView tvHRMS;
    public final AppCompatTextView tvInsState;
    public final AppCompatTextView tvRtkState;
    public final AppCompatTextView tvSensorBatt;
    public final TextView tvSn;
    public final TextView tvTitle;
    public final AppCompatTextView tvUseStars;
    public final AppCompatTextView tvVRMS;
    public final AppCompatTextView tvZpyBatt;

    private TopbarBinding(FrameLayout frameLayout, FrameLayout frameLayout2, GifImageView gifImageView, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, LinearLayout linearLayout, View view, View view2, LinearLayout linearLayout2, LinearLayout linearLayout3, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, AppCompatTextView appCompatTextView, TextView textView, TextView textView2, TextView textView3, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, TextView textView4, TextView textView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8) {
        this.rootView = frameLayout;
        this.fltIvbatt = frameLayout2;
        this.gifCharging = gifImageView;
        this.ivBackTb = imageView;
        this.ivBattIcon = imageView2;
        this.ivLogo = imageView3;
        this.ivSensorBattIcon = imageView4;
        this.lltBackTb = linearLayout;
        this.lltBatt = view;
        this.lltInsState = view2;
        this.lltLocate = linearLayout2;
        this.lltStar = linearLayout3;
        this.rltRMS = relativeLayout;
        this.rltSensorBatt = relativeLayout2;
        this.tvAngle = appCompatTextView;
        this.tvDemoTip = textView;
        this.tvDiffDelay = textView2;
        this.tvGotoConnect = textView3;
        this.tvHRMS = appCompatTextView2;
        this.tvInsState = appCompatTextView3;
        this.tvRtkState = appCompatTextView4;
        this.tvSensorBatt = appCompatTextView5;
        this.tvSn = textView4;
        this.tvTitle = textView5;
        this.tvUseStars = appCompatTextView6;
        this.tvVRMS = appCompatTextView7;
        this.tvZpyBatt = appCompatTextView8;
    }

    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static TopbarBinding bind(View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R$id.fltIvbatt);
        int i = R$id.gifCharging;
        GifImageView gifImageView = (GifImageView) ViewBindings.findChildViewById(view, i);
        if (gifImageView != null) {
            i = R$id.ivBackTb;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                i = R$id.ivBattIcon;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView2 != null) {
                    i = R$id.ivLogo;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i);
                    if (imageView3 != null) {
                        i = R$id.ivSensorBattIcon;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i);
                        if (imageView4 != null) {
                            i = R$id.lltBackTb;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.lltBatt))) != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i = R$id.lltInsState))) != null) {
                                i = R$id.lltLocate;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout2 != null) {
                                    i = R$id.lltStar;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (linearLayout3 != null) {
                                        i = R$id.rltRMS;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                        if (relativeLayout != null) {
                                            i = R$id.rltSensorBatt;
                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                            if (relativeLayout2 != null) {
                                                i = R$id.tvAngle;
                                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                if (appCompatTextView != null) {
                                                    i = R$id.tvDemoTip;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView != null) {
                                                        i = R$id.tvDiffDelay;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView2 != null) {
                                                            i = R$id.tvGotoConnect;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView3 != null) {
                                                                i = R$id.tvHRMS;
                                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                if (appCompatTextView2 != null) {
                                                                    i = R$id.tvInsState;
                                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                    if (appCompatTextView3 != null) {
                                                                        i = R$id.tvRtkState;
                                                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                        if (appCompatTextView4 != null) {
                                                                            i = R$id.tvSensorBatt;
                                                                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                            if (appCompatTextView5 != null) {
                                                                                i = R$id.tvSn;
                                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                if (textView4 != null) {
                                                                                    i = R$id.tvTitle;
                                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (textView5 != null) {
                                                                                        i = R$id.tvUseStars;
                                                                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (appCompatTextView6 != null) {
                                                                                            i = R$id.tvVRMS;
                                                                                            AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (appCompatTextView7 != null) {
                                                                                                i = R$id.tvZpyBatt;
                                                                                                AppCompatTextView appCompatTextView8 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (appCompatTextView8 != null) {
                                                                                                    return new TopbarBinding((FrameLayout) view, frameLayout, gifImageView, imageView, imageView2, imageView3, imageView4, linearLayout, viewFindChildViewById, viewFindChildViewById2, linearLayout2, linearLayout3, relativeLayout, relativeLayout2, appCompatTextView, textView, textView2, textView3, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, textView4, textView5, appCompatTextView6, appCompatTextView7, appCompatTextView8);
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
