package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityEngineeringCreateBinding {
    public final CheckBox cbIsNorth;
    public final NumericEditText edtA;
    public final NumericEditText edtF;
    public final NumericEditText edtFalseEasting;
    public final NumericEditText edtFalseNorthing;
    public final NumericEditText edtLat0;
    public final NumericEditText edtLon0;
    public final AppCompatEditText edtName;
    public final NumericEditText edtProjHeight;
    public final NumericEditText edtScaleFactor;
    public final NumericEditText edtUtmZone;
    public final ImageView ivConversionSelectArrow;
    public final ImageView ivConversionTypeArrow;
    public final ImageView ivDeformationArrow;
    public final ImageView ivEllipsoidArrow;
    public final ImageView ivProjectionArrow;
    public final ImageView ivRefresh;
    public final ImageView ivReset;
    public final ImageView ivUtmRefresh;
    public final FrameLayout llConversionSelect;
    public final LinearLayout llCustomEllipsoid;
    public final LinearLayout llGaussParams;
    public final LinearLayout llUtmParams;
    public final NestedScrollView nsvContent;
    private final LinearLayout rootView;
    public final Spinner spConversionType;
    public final Spinner spDeformation;
    public final Spinner spEllipsoid;
    public final Spinner spProjectionType;
    public final TitlebarBinding topBar;
    public final AppCompatTextView tvApply;
    public final TextView tvCentralMeridian;
    public final TextView tvConversionParams;
    public final TextView tvDefaultEngineeringTip;

    private ActivityEngineeringCreateBinding(LinearLayout linearLayout, CheckBox checkBox, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, NumericEditText numericEditText4, NumericEditText numericEditText5, NumericEditText numericEditText6, AppCompatEditText appCompatEditText, NumericEditText numericEditText7, NumericEditText numericEditText8, NumericEditText numericEditText9, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ImageView imageView7, ImageView imageView8, FrameLayout frameLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, NestedScrollView nestedScrollView, Spinner spinner, Spinner spinner2, Spinner spinner3, Spinner spinner4, TitlebarBinding titlebarBinding, AppCompatTextView appCompatTextView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.cbIsNorth = checkBox;
        this.edtA = numericEditText;
        this.edtF = numericEditText2;
        this.edtFalseEasting = numericEditText3;
        this.edtFalseNorthing = numericEditText4;
        this.edtLat0 = numericEditText5;
        this.edtLon0 = numericEditText6;
        this.edtName = appCompatEditText;
        this.edtProjHeight = numericEditText7;
        this.edtScaleFactor = numericEditText8;
        this.edtUtmZone = numericEditText9;
        this.ivConversionSelectArrow = imageView;
        this.ivConversionTypeArrow = imageView2;
        this.ivDeformationArrow = imageView3;
        this.ivEllipsoidArrow = imageView4;
        this.ivProjectionArrow = imageView5;
        this.ivRefresh = imageView6;
        this.ivReset = imageView7;
        this.ivUtmRefresh = imageView8;
        this.llConversionSelect = frameLayout;
        this.llCustomEllipsoid = linearLayout2;
        this.llGaussParams = linearLayout3;
        this.llUtmParams = linearLayout4;
        this.nsvContent = nestedScrollView;
        this.spConversionType = spinner;
        this.spDeformation = spinner2;
        this.spEllipsoid = spinner3;
        this.spProjectionType = spinner4;
        this.topBar = titlebarBinding;
        this.tvApply = appCompatTextView;
        this.tvCentralMeridian = textView;
        this.tvConversionParams = textView2;
        this.tvDefaultEngineeringTip = textView3;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityEngineeringCreateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityEngineeringCreateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_engineering_create, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityEngineeringCreateBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.cbIsNorth;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, i);
        if (checkBox != null) {
            i = R$id.edtA;
            NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText != null) {
                i = R$id.edtF;
                NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText2 != null) {
                    i = R$id.edtFalseEasting;
                    NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                    if (numericEditText3 != null) {
                        i = R$id.edtFalseNorthing;
                        NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                        if (numericEditText4 != null) {
                            i = R$id.edtLat0;
                            NumericEditText numericEditText5 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                            if (numericEditText5 != null) {
                                i = R$id.edtLon0;
                                NumericEditText numericEditText6 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                if (numericEditText6 != null) {
                                    i = R$id.edtName;
                                    AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, i);
                                    if (appCompatEditText != null) {
                                        i = R$id.edtProjHeight;
                                        NumericEditText numericEditText7 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                        if (numericEditText7 != null) {
                                            i = R$id.edtScaleFactor;
                                            NumericEditText numericEditText8 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                            if (numericEditText8 != null) {
                                                i = R$id.edtUtmZone;
                                                NumericEditText numericEditText9 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                if (numericEditText9 != null) {
                                                    i = R$id.ivConversionSelectArrow;
                                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                                                    if (imageView != null) {
                                                        i = R$id.ivConversionTypeArrow;
                                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                        if (imageView2 != null) {
                                                            i = R$id.ivDeformationArrow;
                                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                            if (imageView3 != null) {
                                                                i = R$id.ivEllipsoidArrow;
                                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                                if (imageView4 != null) {
                                                                    i = R$id.ivProjectionArrow;
                                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                                    if (imageView5 != null) {
                                                                        i = R$id.ivRefresh;
                                                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                                        if (imageView6 != null) {
                                                                            i = R$id.ivReset;
                                                                            ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                                            if (imageView7 != null) {
                                                                                i = R$id.ivUtmRefresh;
                                                                                ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                                                if (imageView8 != null) {
                                                                                    i = R$id.llConversionSelect;
                                                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                                                                                    if (frameLayout != null) {
                                                                                        i = R$id.llCustomEllipsoid;
                                                                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                                        if (linearLayout != null) {
                                                                                            i = R$id.llGaussParams;
                                                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                                            if (linearLayout2 != null) {
                                                                                                i = R$id.llUtmParams;
                                                                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                                                if (linearLayout3 != null) {
                                                                                                    i = R$id.nsvContent;
                                                                                                    NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (nestedScrollView != null) {
                                                                                                        i = R$id.spConversionType;
                                                                                                        Spinner spinner = (Spinner) ViewBindings.findChildViewById(view, i);
                                                                                                        if (spinner != null) {
                                                                                                            i = R$id.spDeformation;
                                                                                                            Spinner spinner2 = (Spinner) ViewBindings.findChildViewById(view, i);
                                                                                                            if (spinner2 != null) {
                                                                                                                i = R$id.spEllipsoid;
                                                                                                                Spinner spinner3 = (Spinner) ViewBindings.findChildViewById(view, i);
                                                                                                                if (spinner3 != null) {
                                                                                                                    i = R$id.spProjectionType;
                                                                                                                    Spinner spinner4 = (Spinner) ViewBindings.findChildViewById(view, i);
                                                                                                                    if (spinner4 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                                                                                                        TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
                                                                                                                        i = R$id.tvApply;
                                                                                                                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                                        if (appCompatTextView != null) {
                                                                                                                            i = R$id.tvCentralMeridian;
                                                                                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                            if (textView != null) {
                                                                                                                                i = R$id.tvConversionParams;
                                                                                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                if (textView2 != null) {
                                                                                                                                    i = R$id.tvDefaultEngineeringTip;
                                                                                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                    if (textView3 != null) {
                                                                                                                                        return new ActivityEngineeringCreateBinding((LinearLayout) view, checkBox, numericEditText, numericEditText2, numericEditText3, numericEditText4, numericEditText5, numericEditText6, appCompatEditText, numericEditText7, numericEditText8, numericEditText9, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, frameLayout, linearLayout, linearLayout2, linearLayout3, nestedScrollView, spinner, spinner2, spinner3, spinner4, titlebarBindingBind, appCompatTextView, textView, textView2, textView3);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
