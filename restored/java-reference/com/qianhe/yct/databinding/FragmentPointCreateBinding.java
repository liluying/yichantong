package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.NumericEditText;
import com.qianhe.yct.view.ToothView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentPointCreateBinding {
    public final NumericEditText edtEast;
    public final NumericEditText edtEcefX;
    public final NumericEditText edtEcefY;
    public final NumericEditText edtEcefZ;
    public final NumericEditText edtElev;
    public final NumericEditText edtLat;
    public final NumericEditText edtLon;
    public final NumericEditText edtNorth;
    public final EditText edtPointName;
    public final ImageView ivResetH;
    public final LinearLayout llElev;
    public final LinearLayout lltCollect;
    public final LinearLayout lltEarth;
    public final LinearLayout lltEcef;
    public final LinearLayout lltPlane;
    public final LinearLayout lltPointName;
    public final LinearLayout main;
    public final NestedScrollView nsv;
    private final LinearLayout rootView;
    public final ToothView toothView;
    public final TextView tvContinue;
    public final TextView tvMeasure;
    public final AppCompatTextView tvPointSystem;
    public final TextView tvPrevious;

    private FragmentPointCreateBinding(LinearLayout linearLayout, NumericEditText numericEditText, NumericEditText numericEditText2, NumericEditText numericEditText3, NumericEditText numericEditText4, NumericEditText numericEditText5, NumericEditText numericEditText6, NumericEditText numericEditText7, NumericEditText numericEditText8, EditText editText, ImageView imageView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8, NestedScrollView nestedScrollView, ToothView toothView, TextView textView, TextView textView2, AppCompatTextView appCompatTextView, TextView textView3) {
        this.rootView = linearLayout;
        this.edtEast = numericEditText;
        this.edtEcefX = numericEditText2;
        this.edtEcefY = numericEditText3;
        this.edtEcefZ = numericEditText4;
        this.edtElev = numericEditText5;
        this.edtLat = numericEditText6;
        this.edtLon = numericEditText7;
        this.edtNorth = numericEditText8;
        this.edtPointName = editText;
        this.ivResetH = imageView;
        this.llElev = linearLayout2;
        this.lltCollect = linearLayout3;
        this.lltEarth = linearLayout4;
        this.lltEcef = linearLayout5;
        this.lltPlane = linearLayout6;
        this.lltPointName = linearLayout7;
        this.main = linearLayout8;
        this.nsv = nestedScrollView;
        this.toothView = toothView;
        this.tvContinue = textView;
        this.tvMeasure = textView2;
        this.tvPointSystem = appCompatTextView;
        this.tvPrevious = textView3;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentPointCreateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentPointCreateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_point_create, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentPointCreateBinding bind(View view) {
        int i = R$id.edtEast;
        NumericEditText numericEditText = (NumericEditText) ViewBindings.findChildViewById(view, i);
        if (numericEditText != null) {
            i = R$id.edtEcefX;
            NumericEditText numericEditText2 = (NumericEditText) ViewBindings.findChildViewById(view, i);
            if (numericEditText2 != null) {
                i = R$id.edtEcefY;
                NumericEditText numericEditText3 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                if (numericEditText3 != null) {
                    i = R$id.edtEcefZ;
                    NumericEditText numericEditText4 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                    if (numericEditText4 != null) {
                        i = R$id.edtElev;
                        NumericEditText numericEditText5 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                        if (numericEditText5 != null) {
                            i = R$id.edtLat;
                            NumericEditText numericEditText6 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                            if (numericEditText6 != null) {
                                i = R$id.edtLon;
                                NumericEditText numericEditText7 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                if (numericEditText7 != null) {
                                    i = R$id.edtNorth;
                                    NumericEditText numericEditText8 = (NumericEditText) ViewBindings.findChildViewById(view, i);
                                    if (numericEditText8 != null) {
                                        i = R$id.edtPointName;
                                        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
                                        if (editText != null) {
                                            i = R$id.ivResetH;
                                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                                            if (imageView != null) {
                                                i = R$id.llElev;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout != null) {
                                                    i = R$id.lltCollect;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayout2 != null) {
                                                        i = R$id.lltEarth;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                        if (linearLayout3 != null) {
                                                            i = R$id.lltEcef;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                            if (linearLayout4 != null) {
                                                                i = R$id.lltPlane;
                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                if (linearLayout5 != null) {
                                                                    i = R$id.lltPointName;
                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                    if (linearLayout6 != null) {
                                                                        LinearLayout linearLayout7 = (LinearLayout) view;
                                                                        i = R$id.nsv;
                                                                        NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                                                        if (nestedScrollView != null) {
                                                                            i = R$id.toothView;
                                                                            ToothView toothView = (ToothView) ViewBindings.findChildViewById(view, i);
                                                                            if (toothView != null) {
                                                                                i = R$id.tvContinue;
                                                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                if (textView != null) {
                                                                                    i = R$id.tvMeasure;
                                                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (textView2 != null) {
                                                                                        i = R$id.tvPointSystem;
                                                                                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (appCompatTextView != null) {
                                                                                            i = R$id.tvPrevious;
                                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (textView3 != null) {
                                                                                                return new FragmentPointCreateBinding(linearLayout7, numericEditText, numericEditText2, numericEditText3, numericEditText4, numericEditText5, numericEditText6, numericEditText7, numericEditText8, editText, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, nestedScrollView, toothView, textView, textView2, appCompatTextView, textView3);
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
