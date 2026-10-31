package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NightAwareImageView;
import com.qianhe.yct.view.UnitDropdownView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentBucketCreateBinding {
    public final AppCompatEditText edtName;
    public final ImageView ivReset;
    public final NightAwareImageView ivStep;
    public final ViewCustomEditItemBinding layoutAB;
    public final ViewCustomEditItemBinding layoutAutoAB;
    public final LinearLayout layoutAutoGenerateParams;
    public final LinearLayout layoutAutoT0Module;
    public final ViewCustomEditItemBinding layoutAutoT0x;
    public final ViewCustomEditItemBinding layoutAutoT0y;
    public final ViewCustomEditItemBinding layoutAutoT0z;
    public final LinearLayout layoutAutoT1Module;
    public final ViewCustomEditItemBinding layoutAutoT1x;
    public final ViewCustomEditItemBinding layoutAutoT1y;
    public final ViewCustomEditItemBinding layoutAutoT1z;
    public final LinearLayout layoutAutoT2Module;
    public final ViewCustomEditItemBinding layoutAutoT2x;
    public final ViewCustomEditItemBinding layoutAutoT2y;
    public final ViewCustomEditItemBinding layoutAutoT2z;
    public final LinearLayout layoutAutoT3Module;
    public final ViewCustomEditItemBinding layoutAutoT3x;
    public final ViewCustomEditItemBinding layoutAutoT3y;
    public final ViewCustomEditItemBinding layoutAutoT3z;
    public final ViewCustomEditItemBinding layoutG1;
    public final ViewCustomEditItemBinding layoutG2;
    public final ViewCustomEditItemBinding layoutG3;
    public final ViewCustomEditItemBinding layoutLR;
    public final LinearLayout layoutManualParams;
    public final LinearLayout layoutMeasureType;
    public final RadioButton rbReadingMeasure;
    public final RadioButton rbTriangleMeasure;
    public final RadioGroup rgMeasureType;
    private final LinearLayout rootView;
    public final TextView tvApply;
    public final AppCompatTextView tvDoubt;
    public final TextView tvFineTune;
    public final TextView tvPrevious;
    public final UnitDropdownView unitDropdown;

    private FragmentBucketCreateBinding(LinearLayout linearLayout, AppCompatEditText appCompatEditText, ImageView imageView, NightAwareImageView nightAwareImageView, ViewCustomEditItemBinding viewCustomEditItemBinding, ViewCustomEditItemBinding viewCustomEditItemBinding2, LinearLayout linearLayout2, LinearLayout linearLayout3, ViewCustomEditItemBinding viewCustomEditItemBinding3, ViewCustomEditItemBinding viewCustomEditItemBinding4, ViewCustomEditItemBinding viewCustomEditItemBinding5, LinearLayout linearLayout4, ViewCustomEditItemBinding viewCustomEditItemBinding6, ViewCustomEditItemBinding viewCustomEditItemBinding7, ViewCustomEditItemBinding viewCustomEditItemBinding8, LinearLayout linearLayout5, ViewCustomEditItemBinding viewCustomEditItemBinding9, ViewCustomEditItemBinding viewCustomEditItemBinding10, ViewCustomEditItemBinding viewCustomEditItemBinding11, LinearLayout linearLayout6, ViewCustomEditItemBinding viewCustomEditItemBinding12, ViewCustomEditItemBinding viewCustomEditItemBinding13, ViewCustomEditItemBinding viewCustomEditItemBinding14, ViewCustomEditItemBinding viewCustomEditItemBinding15, ViewCustomEditItemBinding viewCustomEditItemBinding16, ViewCustomEditItemBinding viewCustomEditItemBinding17, ViewCustomEditItemBinding viewCustomEditItemBinding18, LinearLayout linearLayout7, LinearLayout linearLayout8, RadioButton radioButton, RadioButton radioButton2, RadioGroup radioGroup, TextView textView, AppCompatTextView appCompatTextView, TextView textView2, TextView textView3, UnitDropdownView unitDropdownView) {
        this.rootView = linearLayout;
        this.edtName = appCompatEditText;
        this.ivReset = imageView;
        this.ivStep = nightAwareImageView;
        this.layoutAB = viewCustomEditItemBinding;
        this.layoutAutoAB = viewCustomEditItemBinding2;
        this.layoutAutoGenerateParams = linearLayout2;
        this.layoutAutoT0Module = linearLayout3;
        this.layoutAutoT0x = viewCustomEditItemBinding3;
        this.layoutAutoT0y = viewCustomEditItemBinding4;
        this.layoutAutoT0z = viewCustomEditItemBinding5;
        this.layoutAutoT1Module = linearLayout4;
        this.layoutAutoT1x = viewCustomEditItemBinding6;
        this.layoutAutoT1y = viewCustomEditItemBinding7;
        this.layoutAutoT1z = viewCustomEditItemBinding8;
        this.layoutAutoT2Module = linearLayout5;
        this.layoutAutoT2x = viewCustomEditItemBinding9;
        this.layoutAutoT2y = viewCustomEditItemBinding10;
        this.layoutAutoT2z = viewCustomEditItemBinding11;
        this.layoutAutoT3Module = linearLayout6;
        this.layoutAutoT3x = viewCustomEditItemBinding12;
        this.layoutAutoT3y = viewCustomEditItemBinding13;
        this.layoutAutoT3z = viewCustomEditItemBinding14;
        this.layoutG1 = viewCustomEditItemBinding15;
        this.layoutG2 = viewCustomEditItemBinding16;
        this.layoutG3 = viewCustomEditItemBinding17;
        this.layoutLR = viewCustomEditItemBinding18;
        this.layoutManualParams = linearLayout7;
        this.layoutMeasureType = linearLayout8;
        this.rbReadingMeasure = radioButton;
        this.rbTriangleMeasure = radioButton2;
        this.rgMeasureType = radioGroup;
        this.tvApply = textView;
        this.tvDoubt = appCompatTextView;
        this.tvFineTune = textView2;
        this.tvPrevious = textView3;
        this.unitDropdown = unitDropdownView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentBucketCreateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentBucketCreateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_bucket_create, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentBucketCreateBinding bind(View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        View viewFindChildViewById3;
        View viewFindChildViewById4;
        View viewFindChildViewById5;
        int i = R$id.edtName;
        AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
        if (appCompatEditText != null) {
            i = R$id.ivReset;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                i = R$id.ivStep;
                NightAwareImageView nightAwareImageView = (NightAwareImageView) ViewBindings.findChildViewById(view, i);
                if (nightAwareImageView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.layoutAB))) != null) {
                    ViewCustomEditItemBinding viewCustomEditItemBindingBind = ViewCustomEditItemBinding.bind(viewFindChildViewById);
                    i = R$id.layoutAutoAB;
                    View viewFindChildViewById6 = ViewBindings.findChildViewById(view, i);
                    if (viewFindChildViewById6 != null) {
                        ViewCustomEditItemBinding viewCustomEditItemBindingBind2 = ViewCustomEditItemBinding.bind(viewFindChildViewById6);
                        i = R$id.layoutAutoGenerateParams;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout != null) {
                            i = R$id.layoutAutoT0Module;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout2 != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i = R$id.layoutAutoT0x))) != null) {
                                ViewCustomEditItemBinding viewCustomEditItemBindingBind3 = ViewCustomEditItemBinding.bind(viewFindChildViewById2);
                                i = R$id.layoutAutoT0y;
                                View viewFindChildViewById7 = ViewBindings.findChildViewById(view, i);
                                if (viewFindChildViewById7 != null) {
                                    ViewCustomEditItemBinding viewCustomEditItemBindingBind4 = ViewCustomEditItemBinding.bind(viewFindChildViewById7);
                                    i = R$id.layoutAutoT0z;
                                    View viewFindChildViewById8 = ViewBindings.findChildViewById(view, i);
                                    if (viewFindChildViewById8 != null) {
                                        ViewCustomEditItemBinding viewCustomEditItemBindingBind5 = ViewCustomEditItemBinding.bind(viewFindChildViewById8);
                                        i = R$id.layoutAutoT1Module;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout3 != null && (viewFindChildViewById3 = ViewBindings.findChildViewById(view, (i = R$id.layoutAutoT1x))) != null) {
                                            ViewCustomEditItemBinding viewCustomEditItemBindingBind6 = ViewCustomEditItemBinding.bind(viewFindChildViewById3);
                                            i = R$id.layoutAutoT1y;
                                            View viewFindChildViewById9 = ViewBindings.findChildViewById(view, i);
                                            if (viewFindChildViewById9 != null) {
                                                ViewCustomEditItemBinding viewCustomEditItemBindingBind7 = ViewCustomEditItemBinding.bind(viewFindChildViewById9);
                                                i = R$id.layoutAutoT1z;
                                                View viewFindChildViewById10 = ViewBindings.findChildViewById(view, i);
                                                if (viewFindChildViewById10 != null) {
                                                    ViewCustomEditItemBinding viewCustomEditItemBindingBind8 = ViewCustomEditItemBinding.bind(viewFindChildViewById10);
                                                    i = R$id.layoutAutoT2Module;
                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayout4 != null && (viewFindChildViewById4 = ViewBindings.findChildViewById(view, (i = R$id.layoutAutoT2x))) != null) {
                                                        ViewCustomEditItemBinding viewCustomEditItemBindingBind9 = ViewCustomEditItemBinding.bind(viewFindChildViewById4);
                                                        i = R$id.layoutAutoT2y;
                                                        View viewFindChildViewById11 = ViewBindings.findChildViewById(view, i);
                                                        if (viewFindChildViewById11 != null) {
                                                            ViewCustomEditItemBinding viewCustomEditItemBindingBind10 = ViewCustomEditItemBinding.bind(viewFindChildViewById11);
                                                            i = R$id.layoutAutoT2z;
                                                            View viewFindChildViewById12 = ViewBindings.findChildViewById(view, i);
                                                            if (viewFindChildViewById12 != null) {
                                                                ViewCustomEditItemBinding viewCustomEditItemBindingBind11 = ViewCustomEditItemBinding.bind(viewFindChildViewById12);
                                                                i = R$id.layoutAutoT3Module;
                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                if (linearLayout5 != null && (viewFindChildViewById5 = ViewBindings.findChildViewById(view, (i = R$id.layoutAutoT3x))) != null) {
                                                                    ViewCustomEditItemBinding viewCustomEditItemBindingBind12 = ViewCustomEditItemBinding.bind(viewFindChildViewById5);
                                                                    i = R$id.layoutAutoT3y;
                                                                    View viewFindChildViewById13 = ViewBindings.findChildViewById(view, i);
                                                                    if (viewFindChildViewById13 != null) {
                                                                        ViewCustomEditItemBinding viewCustomEditItemBindingBind13 = ViewCustomEditItemBinding.bind(viewFindChildViewById13);
                                                                        i = R$id.layoutAutoT3z;
                                                                        View viewFindChildViewById14 = ViewBindings.findChildViewById(view, i);
                                                                        if (viewFindChildViewById14 != null) {
                                                                            ViewCustomEditItemBinding viewCustomEditItemBindingBind14 = ViewCustomEditItemBinding.bind(viewFindChildViewById14);
                                                                            i = R$id.layoutG1;
                                                                            View viewFindChildViewById15 = ViewBindings.findChildViewById(view, i);
                                                                            if (viewFindChildViewById15 != null) {
                                                                                ViewCustomEditItemBinding viewCustomEditItemBindingBind15 = ViewCustomEditItemBinding.bind(viewFindChildViewById15);
                                                                                i = R$id.layoutG2;
                                                                                View viewFindChildViewById16 = ViewBindings.findChildViewById(view, i);
                                                                                if (viewFindChildViewById16 != null) {
                                                                                    ViewCustomEditItemBinding viewCustomEditItemBindingBind16 = ViewCustomEditItemBinding.bind(viewFindChildViewById16);
                                                                                    i = R$id.layoutG3;
                                                                                    View viewFindChildViewById17 = ViewBindings.findChildViewById(view, i);
                                                                                    if (viewFindChildViewById17 != null) {
                                                                                        ViewCustomEditItemBinding viewCustomEditItemBindingBind17 = ViewCustomEditItemBinding.bind(viewFindChildViewById17);
                                                                                        i = R$id.layoutLR;
                                                                                        View viewFindChildViewById18 = ViewBindings.findChildViewById(view, i);
                                                                                        if (viewFindChildViewById18 != null) {
                                                                                            ViewCustomEditItemBinding viewCustomEditItemBindingBind18 = ViewCustomEditItemBinding.bind(viewFindChildViewById18);
                                                                                            i = R$id.layoutManualParams;
                                                                                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                                            if (linearLayout6 != null) {
                                                                                                i = R$id.layoutMeasureType;
                                                                                                LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                                                if (linearLayout7 != null) {
                                                                                                    i = R$id.rbReadingMeasure;
                                                                                                    RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, i);
                                                                                                    if (radioButton != null) {
                                                                                                        i = R$id.rbTriangleMeasure;
                                                                                                        RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, i);
                                                                                                        if (radioButton2 != null) {
                                                                                                            i = R$id.rgMeasureType;
                                                                                                            RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, i);
                                                                                                            if (radioGroup != null) {
                                                                                                                i = R$id.tvApply;
                                                                                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                if (textView != null) {
                                                                                                                    i = R$id.tvDoubt;
                                                                                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                                    if (appCompatTextView != null) {
                                                                                                                        i = R$id.tvFineTune;
                                                                                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                        if (textView2 != null) {
                                                                                                                            i = R$id.tvPrevious;
                                                                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                            if (textView3 != null) {
                                                                                                                                i = R$id.unitDropdown;
                                                                                                                                UnitDropdownView unitDropdownView = (UnitDropdownView) ViewBindings.findChildViewById(view, i);
                                                                                                                                if (unitDropdownView != null) {
                                                                                                                                    return new FragmentBucketCreateBinding((LinearLayout) view, appCompatEditText, imageView, nightAwareImageView, viewCustomEditItemBindingBind, viewCustomEditItemBindingBind2, linearLayout, linearLayout2, viewCustomEditItemBindingBind3, viewCustomEditItemBindingBind4, viewCustomEditItemBindingBind5, linearLayout3, viewCustomEditItemBindingBind6, viewCustomEditItemBindingBind7, viewCustomEditItemBindingBind8, linearLayout4, viewCustomEditItemBindingBind9, viewCustomEditItemBindingBind10, viewCustomEditItemBindingBind11, linearLayout5, viewCustomEditItemBindingBind12, viewCustomEditItemBindingBind13, viewCustomEditItemBindingBind14, viewCustomEditItemBindingBind15, viewCustomEditItemBindingBind16, viewCustomEditItemBindingBind17, viewCustomEditItemBindingBind18, linearLayout6, linearLayout7, radioButton, radioButton2, radioGroup, textView, appCompatTextView, textView2, textView3, unitDropdownView);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
