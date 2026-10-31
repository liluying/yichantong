package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityBasestationWorkmodeBinding {
    public final EditText edtBaseName;
    public final NumericEditText edtDiffAge;
    public final NumericEditText edtLat;
    public final NumericEditText edtLon;
    public final NumericEditText edtMeasureEllipsoidHeight;
    public final NumericEditText edtPDOP;
    public final ImageView ivCurrent;
    public final LinearLayout lltAdvanced;
    public final LinearLayout lltBase;
    public final LinearLayout lltCurrentCoord;
    public final LinearLayout lltFixedStartup;
    public final LinearLayout lltRover;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;
    public final AppCompatTextView tvAdvanced;
    public final NumericEditText tvAntennaHeigth;
    public final AppCompatTextView tvAntennaHeigthType;
    public final AppCompatTextView tvCutoffAngle;
    public final AppCompatTextView tvDiffType;
    public final TextView tvSave;
    public final AppCompatTextView tvStartMode;
    public final AppCompatTextView tvWorkMode;

    private ActivityBasestationWorkmodeBinding(LinearLayout linearLayout, EditText editText, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, NumericEditText numericEditText4, NumericEditText numericEditText5, ImageView imageView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, TitlebarBinding titlebarBinding, AppCompatTextView appCompatTextView, NumericEditText numericEditText6, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, TextView textView, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6) {
        this.rootView = linearLayout;
        this.edtBaseName = editText;
        this.edtDiffAge = numericEditText;
        this.edtLat = numericEditText2;
        this.edtLon = numericEditText3;
        this.edtMeasureEllipsoidHeight = numericEditText4;
        this.edtPDOP = numericEditText5;
        this.ivCurrent = imageView;
        this.lltAdvanced = linearLayout2;
        this.lltBase = linearLayout3;
        this.lltCurrentCoord = linearLayout4;
        this.lltFixedStartup = linearLayout5;
        this.lltRover = linearLayout6;
        this.topBar = titlebarBinding;
        this.tvAdvanced = appCompatTextView;
        this.tvAntennaHeigth = numericEditText6;
        this.tvAntennaHeigthType = appCompatTextView2;
        this.tvCutoffAngle = appCompatTextView3;
        this.tvDiffType = appCompatTextView4;
        this.tvSave = textView;
        this.tvStartMode = appCompatTextView5;
        this.tvWorkMode = appCompatTextView6;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityBasestationWorkmodeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityBasestationWorkmodeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_basestation_workmode, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityBasestationWorkmodeBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.edtBaseName;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
        if (editText != null) {
            i = R$id.edtDiffAge;
            NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText != null) {
                i = R$id.edtLat;
                NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText2 != null) {
                    i = R$id.edtLon;
                    NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                    if (numericEditText3 != null) {
                        i = R$id.edtMeasureEllipsoidHeight;
                        NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                        if (numericEditText4 != null) {
                            i = R$id.edtPDOP;
                            NumericEditText numericEditText5 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                            if (numericEditText5 != null) {
                                i = R$id.ivCurrent;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView != null) {
                                    i = R$id.lltAdvanced;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (linearLayout != null) {
                                        i = R$id.lltBase;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout2 != null) {
                                            i = R$id.lltCurrentCoord;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout3 != null) {
                                                i = R$id.lltFixedStartup;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout4 != null) {
                                                    i = R$id.lltRover;
                                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayout5 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                                        TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
                                                        i = R$id.tvAdvanced;
                                                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                        if (appCompatTextView != null) {
                                                            i = R$id.tvAntennaHeigth;
                                                            NumericEditText numericEditText6 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                            if (numericEditText6 != null) {
                                                                i = R$id.tvAntennaHeigthType;
                                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                if (appCompatTextView2 != null) {
                                                                    i = R$id.tvCutoffAngle;
                                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                    if (appCompatTextView3 != null) {
                                                                        i = R$id.tvDiffType;
                                                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                        if (appCompatTextView4 != null) {
                                                                            i = R$id.tvSave;
                                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                            if (textView != null) {
                                                                                i = R$id.tvStartMode;
                                                                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                if (appCompatTextView5 != null) {
                                                                                    i = R$id.tvWorkMode;
                                                                                    AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (appCompatTextView6 != null) {
                                                                                        return new ActivityBasestationWorkmodeBinding((LinearLayout) view, editText, numericEditText, numericEditText2, numericEditText3, numericEditText4, numericEditText5, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, titlebarBindingBind, appCompatTextView, numericEditText6, appCompatTextView2, appCompatTextView3, appCompatTextView4, textView, appCompatTextView5, appCompatTextView6);
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
