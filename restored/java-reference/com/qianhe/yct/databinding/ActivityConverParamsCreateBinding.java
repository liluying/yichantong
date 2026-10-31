package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityConverParamsCreateBinding {
    public final NumericEditText edtManualDx;
    public final NumericEditText edtManualDy;
    public final NumericEditText edtManualDz;
    public final NumericEditText edtManualRotation;
    public final NumericEditText edtManualRx;
    public final NumericEditText edtManualRy;
    public final NumericEditText edtManualRz;
    public final NumericEditText edtManualScale;
    public final EditText edtName;
    public final ImageView ivImportCsvDoubt;
    public final LinearLayout llControlPointSection;
    public final LinearLayout llManualParams;
    public final LinearLayout lltManualDz;
    public final LinearLayout lltManualRotation;
    public final LinearLayout lltManualRx;
    public final LinearLayout lltManualRy;
    public final LinearLayout lltManualRz;
    public final LinearLayout lltResult;
    public final LinearLayout main;
    public final NestedScrollView nsv;
    public final RadioButton rbControlPoint;
    public final RadioButton rbManualInput;
    public final RecyclerView rcvControlPoints;
    public final RadioGroup rgCreateMode;
    private final LinearLayout rootView;
    public final Spinner spParamType;
    public final TitlebarBinding topBar;
    public final TextView tvCalculate;
    public final TextView tvImportCsv;
    public final TextView tvResult;
    public final TextView tvSave;

    private ActivityConverParamsCreateBinding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, NumericEditText numericEditText4, NumericEditText numericEditText5, NumericEditText numericEditText6, NumericEditText numericEditText7, NumericEditText numericEditText8, EditText editText, ImageView imageView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8, LinearLayout linearLayout9, LinearLayout linearLayout10, NestedScrollView nestedScrollView, RadioButton radioButton, RadioButton radioButton2, RecyclerView recyclerView, RadioGroup radioGroup, Spinner spinner, TitlebarBinding titlebarBinding, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.edtManualDx = numericEditText;
        this.edtManualDy = numericEditText2;
        this.edtManualDz = numericEditText3;
        this.edtManualRotation = numericEditText4;
        this.edtManualRx = numericEditText5;
        this.edtManualRy = numericEditText6;
        this.edtManualRz = numericEditText7;
        this.edtManualScale = numericEditText8;
        this.edtName = editText;
        this.ivImportCsvDoubt = imageView;
        this.llControlPointSection = linearLayout2;
        this.llManualParams = linearLayout3;
        this.lltManualDz = linearLayout4;
        this.lltManualRotation = linearLayout5;
        this.lltManualRx = linearLayout6;
        this.lltManualRy = linearLayout7;
        this.lltManualRz = linearLayout8;
        this.lltResult = linearLayout9;
        this.main = linearLayout10;
        this.nsv = nestedScrollView;
        this.rbControlPoint = radioButton;
        this.rbManualInput = radioButton2;
        this.rcvControlPoints = recyclerView;
        this.rgCreateMode = radioGroup;
        this.spParamType = spinner;
        this.topBar = titlebarBinding;
        this.tvCalculate = textView;
        this.tvImportCsv = textView2;
        this.tvResult = textView3;
        this.tvSave = textView4;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityConverParamsCreateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityConverParamsCreateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_conver_params_create, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityConverParamsCreateBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.edtManualDx;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtManualDy;
            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText2 != null) {
                i = R$id.edtManualDz;
                NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText3 != null) {
                    i = R$id.edtManualRotation;
                    NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                    if (numericEditText4 != null) {
                        i = R$id.edtManualRx;
                        NumericEditText numericEditText5 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                        if (numericEditText5 != null) {
                            i = R$id.edtManualRy;
                            NumericEditText numericEditText6 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                            if (numericEditText6 != null) {
                                i = R$id.edtManualRz;
                                NumericEditText numericEditText7 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                if (numericEditText7 != null) {
                                    i = R$id.edtManualScale;
                                    NumericEditText numericEditText8 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                    if (numericEditText8 != null) {
                                        i = R$id.edtName;
                                        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
                                        if (editText != null) {
                                            i = R$id.ivImportCsvDoubt;
                                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                                            if (imageView != null) {
                                                i = R$id.llControlPointSection;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout != null) {
                                                    i = R$id.llManualParams;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayout2 != null) {
                                                        i = R$id.lltManualDz;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                        if (linearLayout3 != null) {
                                                            i = R$id.lltManualRotation;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                            if (linearLayout4 != null) {
                                                                i = R$id.lltManualRx;
                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                if (linearLayout5 != null) {
                                                                    i = R$id.lltManualRy;
                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                    if (linearLayout6 != null) {
                                                                        i = R$id.lltManualRz;
                                                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                        if (linearLayout7 != null) {
                                                                            i = R$id.lltResult;
                                                                            LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                            if (linearLayout8 != null) {
                                                                                LinearLayout linearLayout9 = (LinearLayout) view;
                                                                                i = R$id.nsv;
                                                                                NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                                                                if (nestedScrollView != null) {
                                                                                    i = R$id.rbControlPoint;
                                                                                    RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, i);
                                                                                    if (radioButton != null) {
                                                                                        i = R$id.rbManualInput;
                                                                                        RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, i);
                                                                                        if (radioButton2 != null) {
                                                                                            i = R$id.rcvControlPoints;
                                                                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                                                                            if (recyclerView != null) {
                                                                                                i = R$id.rgCreateMode;
                                                                                                RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, i);
                                                                                                if (radioGroup != null) {
                                                                                                    i = R$id.spParamType;
                                                                                                    Spinner spinner = (Spinner) ViewBindings.findChildViewById(view, i);
                                                                                                    if (spinner != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                                                                                        TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
                                                                                                        i = R$id.tvCalculate;
                                                                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (textView != null) {
                                                                                                            i = R$id.tvImportCsv;
                                                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                            if (textView2 != null) {
                                                                                                                i = R$id.tvResult;
                                                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                if (textView3 != null) {
                                                                                                                    i = R$id.tvSave;
                                                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                    if (textView4 != null) {
                                                                                                                        return new ActivityConverParamsCreateBinding(linearLayout9, numericEditText, numericEditText2, numericEditText3, numericEditText4, numericEditText5, numericEditText6, numericEditText7, numericEditText8, editText, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, linearLayout8, linearLayout9, nestedScrollView, radioButton, radioButton2, recyclerView, radioGroup, spinner, titlebarBindingBind, textView, textView2, textView3, textView4);
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
