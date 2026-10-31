package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.ArmAngleScaleBarView;
import com.qianhe.yct.view.NightAwareImageView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityVerrifyAccuracyBinding {
    public final ArmAngleScaleBarView armAngleScaleBar;
    public final CardView cvStep;
    public final NightAwareImageView ivStep;
    public final LinearLayout lltElevations;
    public final LinearLayout lltErrors;
    public final LinearLayout lltProgress;
    public final NestedScrollView nsvResult;
    public final NestedScrollView nsvStepText;
    private final LinearLayout rootView;
    public final TopbarBinding topBar;
    public final TextView tvArmAngleBestTip;
    public final AppCompatTextView tvCalibrationPointInput;
    public final TextView tvCommonTips;
    public final TextView tvHeadingError;
    public final TextView tvNext;
    public final TextView tvPrevious;
    public final TextView tvResultHint;
    public final TextView tvStepAction;

    private ActivityVerrifyAccuracyBinding(LinearLayout linearLayout, ArmAngleScaleBarView armAngleScaleBarView, CardView cardView, NightAwareImageView nightAwareImageView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, NestedScrollView nestedScrollView, NestedScrollView nestedScrollView2, TopbarBinding topbarBinding, TextView textView, AppCompatTextView appCompatTextView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.rootView = linearLayout;
        this.armAngleScaleBar = armAngleScaleBarView;
        this.cvStep = cardView;
        this.ivStep = nightAwareImageView;
        this.lltElevations = linearLayout2;
        this.lltErrors = linearLayout3;
        this.lltProgress = linearLayout4;
        this.nsvResult = nestedScrollView;
        this.nsvStepText = nestedScrollView2;
        this.topBar = topbarBinding;
        this.tvArmAngleBestTip = textView;
        this.tvCalibrationPointInput = appCompatTextView;
        this.tvCommonTips = textView2;
        this.tvHeadingError = textView3;
        this.tvNext = textView4;
        this.tvPrevious = textView5;
        this.tvResultHint = textView6;
        this.tvStepAction = textView7;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityVerrifyAccuracyBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityVerrifyAccuracyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_verrify_accuracy, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityVerrifyAccuracyBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.armAngleScaleBar;
        ArmAngleScaleBarView armAngleScaleBarView = (ArmAngleScaleBarView) ViewBindings.findChildViewById(view, i);
        if (armAngleScaleBarView != null) {
            i = R$id.cvStep;
            CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
            if (cardView != null) {
                i = R$id.ivStep;
                NightAwareImageView nightAwareImageView = (NightAwareImageView) ViewBindings.findChildViewById(view, i);
                if (nightAwareImageView != null) {
                    i = R$id.lltElevations;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout != null) {
                        i = R$id.lltErrors;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout2 != null) {
                            i = R$id.lltProgress;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout3 != null) {
                                i = R$id.nsvResult;
                                NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                if (nestedScrollView != null) {
                                    i = R$id.nsvStepText;
                                    NestedScrollView nestedScrollView2 = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                    if (nestedScrollView2 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                        TopbarBinding topbarBindingBind = TopbarBinding.bind(viewFindChildViewById);
                                        i = R$id.tvArmAngleBestTip;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView != null) {
                                            i = R$id.tvCalibrationPointInput;
                                            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                            if (appCompatTextView != null) {
                                                i = R$id.tvCommonTips;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView2 != null) {
                                                    i = R$id.tvHeadingError;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView3 != null) {
                                                        i = R$id.tvNext;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView4 != null) {
                                                            i = R$id.tvPrevious;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView5 != null) {
                                                                i = R$id.tvResultHint;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                if (textView6 != null) {
                                                                    i = R$id.tvStepAction;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                    if (textView7 != null) {
                                                                        return new ActivityVerrifyAccuracyBinding((LinearLayout) view, armAngleScaleBarView, cardView, nightAwareImageView, linearLayout, linearLayout2, linearLayout3, nestedScrollView, nestedScrollView2, topbarBindingBind, textView, appCompatTextView, textView2, textView3, textView4, textView5, textView6, textView7);
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
