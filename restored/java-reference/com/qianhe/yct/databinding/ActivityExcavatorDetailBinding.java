package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.HdImageView;
import com.qianhe.yct.view.NumericEditText;
import com.qianhe.yct.view.UnitDropdownView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityExcavatorDetailBinding {
    public final LayoutExcavatorDetailBucketParamsBinding bucketParams;
    public final AppCompatEditText edtName;
    public final HdImageView iv;
    public final ImageView ivReset;
    public final LinearLayout lltAx;
    public final LinearLayout lltAy;
    public final LinearLayout lltBD;
    public final LinearLayout lltDx;
    public final LinearLayout lltMode1;
    public final LinearLayout lltMode23;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final TopbarBinding topBar;
    public final NumericEditText tvAD;
    public final NumericEditText tvAH;
    public final NumericEditText tvAL;
    public final NumericEditText tvAR;
    public final NumericEditText tvAx;
    public final NumericEditText tvAy;
    public final NumericEditText tvBC;
    public final NumericEditText tvBD;
    public final NumericEditText tvCD;
    public final NumericEditText tvDx;
    public final NumericEditText tvHA;
    public final NumericEditText tvLRMode1;
    public final NumericEditText tvPq;
    public final TextView tvSave;
    public final UnitDropdownView unitDropdownSensor;

    private ActivityExcavatorDetailBinding(LinearLayout linearLayout, LayoutExcavatorDetailBucketParamsBinding layoutExcavatorDetailBucketParamsBinding, AppCompatEditText appCompatEditText, HdImageView hdImageView, ImageView imageView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8, TopbarBinding topbarBinding, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, NumericEditText numericEditText4, NumericEditText numericEditText5, NumericEditText numericEditText6, NumericEditText numericEditText7, NumericEditText numericEditText8, NumericEditText numericEditText9, NumericEditText numericEditText10, NumericEditText numericEditText11, NumericEditText numericEditText12, NumericEditText numericEditText13, TextView textView, UnitDropdownView unitDropdownView) {
        this.rootView = linearLayout;
        this.bucketParams = layoutExcavatorDetailBucketParamsBinding;
        this.edtName = appCompatEditText;
        this.iv = hdImageView;
        this.ivReset = imageView;
        this.lltAx = linearLayout2;
        this.lltAy = linearLayout3;
        this.lltBD = linearLayout4;
        this.lltDx = linearLayout5;
        this.lltMode1 = linearLayout6;
        this.lltMode23 = linearLayout7;
        this.main = linearLayout8;
        this.topBar = topbarBinding;
        this.tvAD = numericEditText;
        this.tvAH = numericEditText2;
        this.tvAL = numericEditText3;
        this.tvAR = numericEditText4;
        this.tvAx = numericEditText5;
        this.tvAy = numericEditText6;
        this.tvBC = numericEditText7;
        this.tvBD = numericEditText8;
        this.tvCD = numericEditText9;
        this.tvDx = numericEditText10;
        this.tvHA = numericEditText11;
        this.tvLRMode1 = numericEditText12;
        this.tvPq = numericEditText13;
        this.tvSave = textView;
        this.unitDropdownSensor = unitDropdownView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityExcavatorDetailBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityExcavatorDetailBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_excavator_detail, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityExcavatorDetailBinding bind(View view) {
        int i = R$id.bucketParams;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, i);
        if (viewFindChildViewById != null) {
            LayoutExcavatorDetailBucketParamsBinding layoutExcavatorDetailBucketParamsBindingBind = LayoutExcavatorDetailBucketParamsBinding.bind(viewFindChildViewById);
            i = R$id.edtName;
            AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
            if (appCompatEditText != null) {
                i = R$id.iv;
                HdImageView hdImageView = (HdImageView) ViewBindings.findChildViewById(view, i);
                if (hdImageView != null) {
                    i = R$id.ivReset;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                    if (imageView != null) {
                        i = R$id.lltAx;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout != null) {
                            i = R$id.lltAy;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout2 != null) {
                                i = R$id.lltBD;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout3 != null) {
                                    i = R$id.lltDx;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (linearLayout4 != null) {
                                        i = R$id.lltMode1;
                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout5 != null) {
                                            i = R$id.lltMode23;
                                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout6 != null) {
                                                LinearLayout linearLayout7 = (LinearLayout) view;
                                                i = R$id.topBar;
                                                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, i);
                                                if (viewFindChildViewById2 != null) {
                                                    TopbarBinding topbarBindingBind = TopbarBinding.bind(viewFindChildViewById2);
                                                    i = R$id.tvAD;
                                                    NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                    if (numericEditText != null) {
                                                        i = R$id.tvAH;
                                                        NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                        if (numericEditText2 != null) {
                                                            i = R$id.tvAL;
                                                            NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                            if (numericEditText3 != null) {
                                                                i = R$id.tvAR;
                                                                NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                                if (numericEditText4 != null) {
                                                                    i = R$id.tvAx;
                                                                    NumericEditText numericEditText5 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                                    if (numericEditText5 != null) {
                                                                        i = R$id.tvAy;
                                                                        NumericEditText numericEditText6 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                                        if (numericEditText6 != null) {
                                                                            i = R$id.tvBC;
                                                                            NumericEditText numericEditText7 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                                            if (numericEditText7 != null) {
                                                                                i = R$id.tvBD;
                                                                                NumericEditText numericEditText8 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                                                if (numericEditText8 != null) {
                                                                                    i = R$id.tvCD;
                                                                                    NumericEditText numericEditText9 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                                                    if (numericEditText9 != null) {
                                                                                        i = R$id.tvDx;
                                                                                        NumericEditText numericEditText10 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                                                        if (numericEditText10 != null) {
                                                                                            i = R$id.tvHA;
                                                                                            NumericEditText numericEditText11 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                                                            if (numericEditText11 != null) {
                                                                                                i = R$id.tvLR_mode1;
                                                                                                NumericEditText numericEditText12 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                                                                if (numericEditText12 != null) {
                                                                                                    i = R$id.tvPq;
                                                                                                    NumericEditText numericEditText13 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                                                                    if (numericEditText13 != null) {
                                                                                                        i = R$id.tvSave;
                                                                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (textView != null) {
                                                                                                            i = R$id.unitDropdownSensor;
                                                                                                            UnitDropdownView unitDropdownView = (UnitDropdownView) ViewBindings.findChildViewById(view, i);
                                                                                                            if (unitDropdownView != null) {
                                                                                                                return new ActivityExcavatorDetailBinding(linearLayout7, layoutExcavatorDetailBucketParamsBindingBind, appCompatEditText, hdImageView, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, topbarBindingBind, numericEditText, numericEditText2, numericEditText3, numericEditText4, numericEditText5, numericEditText6, numericEditText7, numericEditText8, numericEditText9, numericEditText10, numericEditText11, numericEditText12, numericEditText13, textView, unitDropdownView);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
