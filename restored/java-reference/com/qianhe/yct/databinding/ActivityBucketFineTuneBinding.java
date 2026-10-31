package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NightAwareImageView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityBucketFineTuneBinding {
    public final CardView cvCollectStep;
    public final CardView cvNameStep;
    public final AppCompatEditText edtName;
    public final FrameLayout fltName;
    public final NightAwareImageView ivReset;
    public final NightAwareImageView ivStep;
    public final LinearLayout lltProgress;
    private final LinearLayout rootView;
    public final TopbarBinding topBar;
    public final TextView tvNameDes;
    public final TextView tvNext;
    public final TextView tvPrevious;
    public final TextView tvStepAction;
    public final TextView tvStepNumber;

    private ActivityBucketFineTuneBinding(LinearLayout linearLayout, CardView cardView, CardView cardView2, AppCompatEditText appCompatEditText, FrameLayout frameLayout, NightAwareImageView nightAwareImageView, NightAwareImageView nightAwareImageView2, LinearLayout linearLayout2, TopbarBinding topbarBinding, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.cvCollectStep = cardView;
        this.cvNameStep = cardView2;
        this.edtName = appCompatEditText;
        this.fltName = frameLayout;
        this.ivReset = nightAwareImageView;
        this.ivStep = nightAwareImageView2;
        this.lltProgress = linearLayout2;
        this.topBar = topbarBinding;
        this.tvNameDes = textView;
        this.tvNext = textView2;
        this.tvPrevious = textView3;
        this.tvStepAction = textView4;
        this.tvStepNumber = textView5;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityBucketFineTuneBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityBucketFineTuneBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_bucket_fine_tune, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityBucketFineTuneBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.cvCollectStep;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
        if (cardView != null) {
            i = R$id.cvNameStep;
            CardView cardView2 = (CardView) ViewBindings.findChildViewById(view, i);
            if (cardView2 != null) {
                i = R$id.edtName;
                AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
                if (appCompatEditText != null) {
                    i = R$id.fltName;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                    if (frameLayout != null) {
                        i = R$id.ivReset;
                        NightAwareImageView nightAwareImageView = (NightAwareImageView) ViewBindings.findChildViewById(view, i);
                        if (nightAwareImageView != null) {
                            i = R$id.ivStep;
                            NightAwareImageView nightAwareImageView2 = (NightAwareImageView) ViewBindings.findChildViewById(view, i);
                            if (nightAwareImageView2 != null) {
                                i = R$id.lltProgress;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                    TopbarBinding topbarBindingBind = TopbarBinding.bind(viewFindChildViewById);
                                    i = R$id.tvNameDes;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null) {
                                        i = R$id.tvNext;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView2 != null) {
                                            i = R$id.tvPrevious;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView3 != null) {
                                                i = R$id.tvStepAction;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView4 != null) {
                                                    i = R$id.tvStepNumber;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView5 != null) {
                                                        return new ActivityBucketFineTuneBinding((LinearLayout) view, cardView, cardView2, appCompatEditText, frameLayout, nightAwareImageView, nightAwareImageView2, linearLayout, topbarBindingBind, textView, textView2, textView3, textView4, textView5);
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
