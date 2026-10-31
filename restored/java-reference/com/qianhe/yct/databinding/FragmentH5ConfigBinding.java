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
import com.qianhe.yct.view.NumericEditText;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentH5ConfigBinding {
    public final NumericEditText edtBaseMobilityThreshold;
    public final NumericEditText edtBestpos;
    public final NumericEditText edtDop;
    public final NumericEditText edtExtsensor1;
    public final NumericEditText edtGGa;
    public final NumericEditText edtGst;
    public final NumericEditText edtHRMS;
    public final NumericEditText edtIns;
    public final NumericEditText edtInsUnavailableCount;
    public final NumericEditText edtPoleHeight;
    public final NumericEditText edtRefstation;
    public final NumericEditText edtSau;
    public final NumericEditText edtSav;
    public final NumericEditText edtSnr;
    public final NumericEditText edtVRMS;
    public final NumericEditText edtWorktolerance;
    public final LinearLayout lltAdmin;
    public final LinearLayout lltBaseMobilityThreshold;
    public final LinearLayout lltContent;
    public final LinearLayout lltDataSmooth;
    public final LinearLayout lltDistanceProjectSarting;
    public final LinearLayout lltVerifyAccuracyHorizontalError;
    public final LinearLayout main;
    private final LinearLayout rootView;
    public final AppCompatTextView tvDataSmoot;
    public final AppCompatTextView tvDiffDataSource;
    public final AppCompatTextView tvDistanceProjectStarting;
    public final AppCompatTextView tvLanguage;
    public final TextView tvPoleHeightUnit;
    public final TextView tvReset;
    public final AppCompatTextView tvSolutionMode;
    public final AppCompatTextView tvThemeModeValues;
    public final AppCompatTextView tvUnitPreference;
    public final AppCompatTextView tvVerifyAccuracyHorizontalError;

    private FragmentH5ConfigBinding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, NumericEditText numericEditText4, NumericEditText numericEditText5, NumericEditText numericEditText6, NumericEditText numericEditText7, NumericEditText numericEditText8, NumericEditText numericEditText9, NumericEditText numericEditText10, NumericEditText numericEditText11, NumericEditText numericEditText12, NumericEditText numericEditText13, NumericEditText numericEditText14, NumericEditText numericEditText15, NumericEditText numericEditText16, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, TextView textView, TextView textView2, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8) {
        this.rootView = linearLayout;
        this.edtBaseMobilityThreshold = numericEditText;
        this.edtBestpos = numericEditText2;
        this.edtDop = numericEditText3;
        this.edtExtsensor1 = numericEditText4;
        this.edtGGa = numericEditText5;
        this.edtGst = numericEditText6;
        this.edtHRMS = numericEditText7;
        this.edtIns = numericEditText8;
        this.edtInsUnavailableCount = numericEditText9;
        this.edtPoleHeight = numericEditText10;
        this.edtRefstation = numericEditText11;
        this.edtSau = numericEditText12;
        this.edtSav = numericEditText13;
        this.edtSnr = numericEditText14;
        this.edtVRMS = numericEditText15;
        this.edtWorktolerance = numericEditText16;
        this.lltAdmin = linearLayout2;
        this.lltBaseMobilityThreshold = linearLayout3;
        this.lltContent = linearLayout4;
        this.lltDataSmooth = linearLayout5;
        this.lltDistanceProjectSarting = linearLayout6;
        this.lltVerifyAccuracyHorizontalError = linearLayout7;
        this.main = linearLayout8;
        this.tvDataSmoot = appCompatTextView;
        this.tvDiffDataSource = appCompatTextView2;
        this.tvDistanceProjectStarting = appCompatTextView3;
        this.tvLanguage = appCompatTextView4;
        this.tvPoleHeightUnit = textView;
        this.tvReset = textView2;
        this.tvSolutionMode = appCompatTextView5;
        this.tvThemeModeValues = appCompatTextView6;
        this.tvUnitPreference = appCompatTextView7;
        this.tvVerifyAccuracyHorizontalError = appCompatTextView8;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentH5ConfigBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentH5ConfigBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_h5_config, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentH5ConfigBinding bind(View view) {
        int i = R$id.edtBaseMobilityThreshold;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtBestpos;
            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText2 != null) {
                i = R$id.edtDop;
                NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText3 != null) {
                    i = R$id.edtExtsensor1;
                    NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                    if (numericEditText4 != null) {
                        i = R$id.edtGGa;
                        NumericEditText numericEditText5 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                        if (numericEditText5 != null) {
                            i = R$id.edtGst;
                            NumericEditText numericEditText6 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                            if (numericEditText6 != null) {
                                i = R$id.edtHRMS;
                                NumericEditText numericEditText7 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                if (numericEditText7 != null) {
                                    i = R$id.edtIns;
                                    NumericEditText numericEditText8 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                    if (numericEditText8 != null) {
                                        i = R$id.edtInsUnavailableCount;
                                        NumericEditText numericEditText9 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                        if (numericEditText9 != null) {
                                            i = R$id.edtPoleHeight;
                                            NumericEditText numericEditText10 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                            if (numericEditText10 != null) {
                                                i = R$id.edtRefstation;
                                                NumericEditText numericEditText11 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                if (numericEditText11 != null) {
                                                    i = R$id.edtSau;
                                                    NumericEditText numericEditText12 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                    if (numericEditText12 != null) {
                                                        i = R$id.edtSav;
                                                        NumericEditText numericEditText13 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                        if (numericEditText13 != null) {
                                                            i = R$id.edtSnr;
                                                            NumericEditText numericEditText14 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                            if (numericEditText14 != null) {
                                                                i = R$id.edtVRMS;
                                                                NumericEditText numericEditText15 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                                if (numericEditText15 != null) {
                                                                    i = R$id.edtWorktolerance;
                                                                    NumericEditText numericEditText16 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                                                    if (numericEditText16 != null) {
                                                                        i = R$id.lltAdmin;
                                                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                        if (linearLayout != null) {
                                                                            i = R$id.lltBaseMobilityThreshold;
                                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                            if (linearLayout2 != null) {
                                                                                i = R$id.lltContent;
                                                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                                if (linearLayout3 != null) {
                                                                                    i = R$id.lltDataSmooth;
                                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                                    if (linearLayout4 != null) {
                                                                                        i = R$id.lltDistanceProjectSarting;
                                                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                                        if (linearLayout5 != null) {
                                                                                            i = R$id.lltVerifyAccuracyHorizontalError;
                                                                                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                                            if (linearLayout6 != null) {
                                                                                                LinearLayout linearLayout7 = (LinearLayout) view;
                                                                                                i = R$id.tvDataSmoot;
                                                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (appCompatTextView != null) {
                                                                                                    i = R$id.tvDiffDataSource;
                                                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (appCompatTextView2 != null) {
                                                                                                        i = R$id.tvDistanceProjectStarting;
                                                                                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (appCompatTextView3 != null) {
                                                                                                            i = R$id.tvLanguage;
                                                                                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                            if (appCompatTextView4 != null) {
                                                                                                                i = R$id.tvPoleHeightUnit;
                                                                                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                if (textView != null) {
                                                                                                                    i = R$id.tvReset;
                                                                                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                    if (textView2 != null) {
                                                                                                                        i = R$id.tvSolutionMode;
                                                                                                                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                                        if (appCompatTextView5 != null) {
                                                                                                                            i = R$id.tvThemeModeValues;
                                                                                                                            AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                                            if (appCompatTextView6 != null) {
                                                                                                                                i = R$id.tvUnitPreference;
                                                                                                                                AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                if (appCompatTextView7 != null) {
                                                                                                                                    i = R$id.tvVerifyAccuracyHorizontalError;
                                                                                                                                    AppCompatTextView appCompatTextView8 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                    if (appCompatTextView8 != null) {
                                                                                                                                        return new FragmentH5ConfigBinding(linearLayout7, numericEditText, numericEditText2, numericEditText3, numericEditText4, numericEditText5, numericEditText6, numericEditText7, numericEditText8, numericEditText9, numericEditText10, numericEditText11, numericEditText12, numericEditText13, numericEditText14, numericEditText15, numericEditText16, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, textView, textView2, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8);
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
