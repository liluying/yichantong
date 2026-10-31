package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qh.xcad.XCadView;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.RollAngleView;
import com.qianhe.yct.view.ToothTipDropdownView;
import com.qianhe.yct.view.WorkView;
import com.qianhe.yct.view.map.MapContainerView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityLineWorkBinding {
    public final XCadView cadView;
    public final TextView edtName;
    public final ImageView ivDirection;
    public final ImageView ivMapState;
    public final ImageView ivResetLocation;
    public final ImageView ivSound;
    public final ImageView ivStartPoint;
    public final ImageView ivStatusH;
    public final ImageView ivStatusV;
    public final LinearLayout llt;
    public final LinearLayout lltBtn;
    public final LinearLayout lltH5;
    public final LinearLayout lltH5Pro;
    public final LinearLayout main;
    public final MapContainerView mapContainer;
    public final RollAngleView rollAngleView;
    private final LinearLayout rootView;
    public final ToothTipDropdownView toothTipView;
    public final TopbarBinding topBar;
    public final TextView tvArmAngle;
    public final TextView tvBoundTip;
    public final TextView tvDiffH;
    public final TextView tvDiffV;
    public final AppCompatTextView tvDistanceDesH;
    public final AppCompatTextView tvDistanceDesV;
    public final TextView tvMachineNumber;
    public final TextView tvProTitle;
    public final TextView tvProjectDistance;
    public final TextView tvStartDistance;
    public final TextView tvStatusH;
    public final TextView tvStatusV;
    public final TextView tvUnitH;
    public final TextView tvUnitV;
    public final WorkView workView;

    private ActivityLineWorkBinding(LinearLayout linearLayout, XCadView xCadView, TextView textView, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ImageView imageView7, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, MapContainerView mapContainerView, RollAngleView rollAngleView, ToothTipDropdownView toothTipDropdownView, TopbarBinding topbarBinding, TextView textView2, TextView textView3, TextView textView4, TextView textView5, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, WorkView workView) {
        this.rootView = linearLayout;
        this.cadView = xCadView;
        this.edtName = textView;
        this.ivDirection = imageView;
        this.ivMapState = imageView2;
        this.ivResetLocation = imageView3;
        this.ivSound = imageView4;
        this.ivStartPoint = imageView5;
        this.ivStatusH = imageView6;
        this.ivStatusV = imageView7;
        this.llt = linearLayout2;
        this.lltBtn = linearLayout3;
        this.lltH5 = linearLayout4;
        this.lltH5Pro = linearLayout5;
        this.main = linearLayout6;
        this.mapContainer = mapContainerView;
        this.rollAngleView = rollAngleView;
        this.toothTipView = toothTipDropdownView;
        this.topBar = topbarBinding;
        this.tvArmAngle = textView2;
        this.tvBoundTip = textView3;
        this.tvDiffH = textView4;
        this.tvDiffV = textView5;
        this.tvDistanceDesH = appCompatTextView;
        this.tvDistanceDesV = appCompatTextView2;
        this.tvMachineNumber = textView6;
        this.tvProTitle = textView7;
        this.tvProjectDistance = textView8;
        this.tvStartDistance = textView9;
        this.tvStatusH = textView10;
        this.tvStatusV = textView11;
        this.tvUnitH = textView12;
        this.tvUnitV = textView13;
        this.workView = workView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityLineWorkBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityLineWorkBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_line_work, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityLineWorkBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.cadView;
        XCadView xCadView = (XCadView) ViewBindings.findChildViewById(view, i);
        if (xCadView != null) {
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R$id.edtName);
            i = R$id.ivDirection;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                i = R$id.ivMapState;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView2 != null) {
                    i = R$id.ivResetLocation;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i);
                    if (imageView3 != null) {
                        i = R$id.ivSound;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i);
                        if (imageView4 != null) {
                            i = R$id.ivStartPoint;
                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, i);
                            if (imageView5 != null) {
                                i = R$id.ivStatusH;
                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView6 != null) {
                                    i = R$id.ivStatusV;
                                    ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, i);
                                    if (imageView7 != null) {
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R$id.llt);
                                        i = R$id.lltBtn;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout2 != null) {
                                            i = R$id.lltH5;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout3 != null) {
                                                i = R$id.lltH5Pro;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout4 != null) {
                                                    LinearLayout linearLayout5 = (LinearLayout) view;
                                                    i = R$id.mapContainer;
                                                    MapContainerView mapContainerView = (MapContainerView) ViewBindings.findChildViewById(view, i);
                                                    if (mapContainerView != null) {
                                                        i = R$id.rollAngleView;
                                                        RollAngleView rollAngleView = (RollAngleView) ViewBindings.findChildViewById(view, i);
                                                        if (rollAngleView != null) {
                                                            i = R$id.toothTipView;
                                                            ToothTipDropdownView toothTipDropdownView = (ToothTipDropdownView) ViewBindings.findChildViewById(view, i);
                                                            if (toothTipDropdownView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                                                TopbarBinding topbarBindingBind = TopbarBinding.bind(viewFindChildViewById);
                                                                i = R$id.tvArmAngle;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                if (textView2 != null) {
                                                                    i = R$id.tvBoundTip;
                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                    if (textView3 != null) {
                                                                        i = R$id.tvDiffH;
                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                        if (textView4 != null) {
                                                                            i = R$id.tvDiffV;
                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                            if (textView5 != null) {
                                                                                i = R$id.tvDistanceDesH;
                                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                if (appCompatTextView != null) {
                                                                                    i = R$id.tvDistanceDesV;
                                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (appCompatTextView2 != null) {
                                                                                        i = R$id.tvMachineNumber;
                                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (textView6 != null) {
                                                                                            i = R$id.tvProTitle;
                                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (textView7 != null) {
                                                                                                i = R$id.tvProjectDistance;
                                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (textView8 != null) {
                                                                                                    i = R$id.tvStartDistance;
                                                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (textView9 != null) {
                                                                                                        i = R$id.tvStatusH;
                                                                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (textView10 != null) {
                                                                                                            i = R$id.tvStatusV;
                                                                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                            if (textView11 != null) {
                                                                                                                i = R$id.tvUnitH;
                                                                                                                TextView textView12 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                if (textView12 != null) {
                                                                                                                    i = R$id.tvUnitV;
                                                                                                                    TextView textView13 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                    if (textView13 != null) {
                                                                                                                        i = R$id.workView;
                                                                                                                        WorkView workView = (WorkView) ViewBindings.findChildViewById(view, i);
                                                                                                                        if (workView != null) {
                                                                                                                            return new ActivityLineWorkBinding(linearLayout5, xCadView, textView, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, mapContainerView, rollAngleView, toothTipDropdownView, topbarBindingBind, textView2, textView3, textView4, textView5, appCompatTextView, appCompatTextView2, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, workView);
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
