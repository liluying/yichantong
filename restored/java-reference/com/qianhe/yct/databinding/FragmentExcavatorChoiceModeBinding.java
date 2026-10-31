package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.HdImageView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentExcavatorChoiceModeBinding {
    public final TextView ivDoubtMode1;
    public final TextView ivDoubtMode3;
    public final TextView ivDoubtMode4;
    public final HdImageView ivMode1;
    public final HdImageView ivMode3;
    public final HdImageView ivMode4;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TextView tvContinue;
    public final TextView tvDoubtSensor;
    public final TextView tvDoubtSensor4;
    public final AppCompatTextView tvModeDes1;
    public final AppCompatTextView tvModeDes3;
    public final AppCompatTextView tvModeDes4;
    public final TextView tvPrevious;
    public final TextView tvTitle;

    private FragmentExcavatorChoiceModeBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, HdImageView hdImageView, HdImageView hdImageView2, HdImageView hdImageView3, LinearLayout linearLayout2, TextView textView4, TextView textView5, TextView textView6, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, TextView textView7, TextView textView8) {
        this.rootView = linearLayout;
        this.ivDoubtMode1 = textView;
        this.ivDoubtMode3 = textView2;
        this.ivDoubtMode4 = textView3;
        this.ivMode1 = hdImageView;
        this.ivMode3 = hdImageView2;
        this.ivMode4 = hdImageView3;
        this.main = linearLayout2;
        this.tvContinue = textView4;
        this.tvDoubtSensor = textView5;
        this.tvDoubtSensor4 = textView6;
        this.tvModeDes1 = appCompatTextView;
        this.tvModeDes3 = appCompatTextView2;
        this.tvModeDes4 = appCompatTextView3;
        this.tvPrevious = textView7;
        this.tvTitle = textView8;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentExcavatorChoiceModeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentExcavatorChoiceModeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_excavator_choice_mode, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentExcavatorChoiceModeBinding bind(View view) {
        int i = R$id.ivDoubtMode1;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R$id.ivDoubtMode3;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView2 != null) {
                i = R$id.ivDoubtMode4;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView3 != null) {
                    i = R$id.ivMode1;
                    HdImageView hdImageView = (HdImageView) ViewBindings.findChildViewById(view, i);
                    if (hdImageView != null) {
                        i = R$id.ivMode3;
                        HdImageView hdImageView2 = (HdImageView) ViewBindings.findChildViewById(view, i);
                        if (hdImageView2 != null) {
                            i = R$id.ivMode4;
                            HdImageView hdImageView3 = (HdImageView) ViewBindings.findChildViewById(view, i);
                            if (hdImageView3 != null) {
                                LinearLayout linearLayout = (LinearLayout) view;
                                i = R$id.tvContinue;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView4 != null) {
                                    i = R$id.tvDoubtSensor;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView5 != null) {
                                        i = R$id.tvDoubtSensor4;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView6 != null) {
                                            i = R$id.tvModeDes1;
                                            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                            if (appCompatTextView != null) {
                                                i = R$id.tvModeDes3;
                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                if (appCompatTextView2 != null) {
                                                    i = R$id.tvModeDes4;
                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                    if (appCompatTextView3 != null) {
                                                        i = R$id.tvPrevious;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView7 != null) {
                                                            i = R$id.tvTitle;
                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView8 != null) {
                                                                return new FragmentExcavatorChoiceModeBinding(linearLayout, textView, textView2, textView3, hdImageView, hdImageView2, hdImageView3, linearLayout, textView4, textView5, textView6, appCompatTextView, appCompatTextView2, appCompatTextView3, textView7, textView8);
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
