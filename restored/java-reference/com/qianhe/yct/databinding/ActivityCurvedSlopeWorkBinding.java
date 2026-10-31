package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.ArmView;
import com.qianhe.yct.view.CurvedSlopePreview;
import com.qianhe.yct.view.RollAngleView;
import com.qianhe.yct.view.ToothTipDropdownView;
import com.qianhe.yct.view.map.MapContainerView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityCurvedSlopeWorkBinding {
    public final CurvedSlopePreview curvedSlopePreview;
    public final TextView edtName;
    public final ArmView ivArm;
    public final ArmView ivArm2;
    public final ImageView ivMapState;
    public final ImageView ivResetLocation;
    public final ImageView ivSound;
    public final ImageView ivStartPoint;
    public final ImageView ivStatus;
    public final ImageView ivType;
    public final View lineTop;
    public final View lineTop2;
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
    public final TextView tvDiff;
    public final AppCompatTextView tvDistanceDes;
    public final TextView tvMachineNumber;
    public final TextView tvProTitle;
    public final TextView tvStartDistance;
    public final TextView tvStatus;
    public final TextView tvUnitV;

    private ActivityCurvedSlopeWorkBinding(LinearLayout linearLayout, CurvedSlopePreview curvedSlopePreview, TextView textView, ArmView armView, ArmView armView2, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, View view, View view2, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, MapContainerView mapContainerView, RollAngleView rollAngleView, ToothTipDropdownView toothTipDropdownView, TopbarBinding topbarBinding, TextView textView2, TextView textView3, TextView textView4, AppCompatTextView appCompatTextView, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9) {
        this.rootView = linearLayout;
        this.curvedSlopePreview = curvedSlopePreview;
        this.edtName = textView;
        this.ivArm = armView;
        this.ivArm2 = armView2;
        this.ivMapState = imageView;
        this.ivResetLocation = imageView2;
        this.ivSound = imageView3;
        this.ivStartPoint = imageView4;
        this.ivStatus = imageView5;
        this.ivType = imageView6;
        this.lineTop = view;
        this.lineTop2 = view2;
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
        this.tvDiff = textView4;
        this.tvDistanceDes = appCompatTextView;
        this.tvMachineNumber = textView5;
        this.tvProTitle = textView6;
        this.tvStartDistance = textView7;
        this.tvStatus = textView8;
        this.tvUnitV = textView9;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityCurvedSlopeWorkBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCurvedSlopeWorkBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_curved_slope_work, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityCurvedSlopeWorkBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.curvedSlopePreview;
        CurvedSlopePreview curvedSlopePreview = (CurvedSlopePreview) ViewBindings.findChildViewById(view, i);
        if (curvedSlopePreview != null) {
            i = R$id.edtName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R$id.ivArm;
                ArmView armView = (ArmView) ViewBindings.findChildViewById(view, i);
                if (armView != null) {
                    ArmView armView2 = (ArmView) ViewBindings.findChildViewById(view, R$id.ivArm2);
                    i = R$id.ivMapState;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                    if (imageView != null) {
                        i = R$id.ivResetLocation;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                        if (imageView2 != null) {
                            i = R$id.ivSound;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i);
                            if (imageView3 != null) {
                                i = R$id.ivStartPoint;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView4 != null) {
                                    i = R$id.ivStatus;
                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, i);
                                    if (imageView5 != null) {
                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R$id.ivType);
                                        i = R$id.lineTop;
                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, i);
                                        if (viewFindChildViewById2 != null) {
                                            View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R$id.lineTop2);
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
                                                                            i = R$id.tvDiff;
                                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                            if (textView4 != null) {
                                                                                i = R$id.tvDistanceDes;
                                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                if (appCompatTextView != null) {
                                                                                    i = R$id.tvMachineNumber;
                                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (textView5 != null) {
                                                                                        i = R$id.tvProTitle;
                                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (textView6 != null) {
                                                                                            i = R$id.tvStartDistance;
                                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (textView7 != null) {
                                                                                                i = R$id.tvStatus;
                                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (textView8 != null) {
                                                                                                    i = R$id.tvUnitV;
                                                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (textView9 != null) {
                                                                                                        return new ActivityCurvedSlopeWorkBinding(linearLayout5, curvedSlopePreview, textView, armView, armView2, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, viewFindChildViewById2, viewFindChildViewById3, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, mapContainerView, rollAngleView, toothTipDropdownView, topbarBindingBind, textView2, textView3, textView4, appCompatTextView, textView5, textView6, textView7, textView8, textView9);
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
