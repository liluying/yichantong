package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBindings;
import com.qh.xcad.XCadView;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.ArmView;
import com.qianhe.yct.view.RollAngleView;
import com.qianhe.yct.view.ToothTipDropdownView;
import com.qianhe.yct.view.map.MapContainerView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivitySpWorkBinding {
    public final XCadView cadView;
    public final ConstraintLayout constraintLayout;
    public final TextView edtName;
    public final ArmView ivArm;
    public final ImageView ivMapState;
    public final ImageView ivResetLocation;
    public final ImageView ivSlopeType;
    public final ImageView ivSound;
    public final ImageView ivStartPoint;
    public final ImageView ivStatus;
    public final ImageView ivStatusBottom;
    public final ImageView ivStatusTop;
    public final View lineH;
    public final View lineTop;
    public final LinearLayout llt;
    public final LinearLayout lltBottomDistance;
    public final LinearLayout lltBtn;
    public final LinearLayout lltH5;
    public final LinearLayout lltH5Pro;
    public final LinearLayout lltTopDistance;
    public final LinearLayout main;
    public final MapContainerView mapContainer;
    public final View placeView;
    public final RollAngleView rollAngleView;
    private final LinearLayout rootView;
    public final ToothTipDropdownView toothTipView;
    public final TopbarBinding topBar;
    public final TextView tvArmAngle;
    public final AppCompatTextView tvBottomDes;
    public final TextView tvDiff;
    public final TextView tvDiffBottom;
    public final TextView tvDiffTop;
    public final AppCompatTextView tvDistanceDes;
    public final TextView tvMachineNumber;
    public final TextView tvProTitle;
    public final TextView tvStartDistance;
    public final TextView tvStatus;
    public final AppCompatTextView tvTopDes;
    public final TextView tvUnit;

    private ActivitySpWorkBinding(LinearLayout linearLayout, XCadView xCadView, ConstraintLayout constraintLayout, TextView textView, ArmView armView, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ImageView imageView7, ImageView imageView8, View view, View view2, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8, MapContainerView mapContainerView, View view3, RollAngleView rollAngleView, ToothTipDropdownView toothTipDropdownView, TopbarBinding topbarBinding, TextView textView2, AppCompatTextView appCompatTextView, TextView textView3, TextView textView4, TextView textView5, AppCompatTextView appCompatTextView2, TextView textView6, TextView textView7, TextView textView8, TextView textView9, AppCompatTextView appCompatTextView3, TextView textView10) {
        this.rootView = linearLayout;
        this.cadView = xCadView;
        this.constraintLayout = constraintLayout;
        this.edtName = textView;
        this.ivArm = armView;
        this.ivMapState = imageView;
        this.ivResetLocation = imageView2;
        this.ivSlopeType = imageView3;
        this.ivSound = imageView4;
        this.ivStartPoint = imageView5;
        this.ivStatus = imageView6;
        this.ivStatusBottom = imageView7;
        this.ivStatusTop = imageView8;
        this.lineH = view;
        this.lineTop = view2;
        this.llt = linearLayout2;
        this.lltBottomDistance = linearLayout3;
        this.lltBtn = linearLayout4;
        this.lltH5 = linearLayout5;
        this.lltH5Pro = linearLayout6;
        this.lltTopDistance = linearLayout7;
        this.main = linearLayout8;
        this.mapContainer = mapContainerView;
        this.placeView = view3;
        this.rollAngleView = rollAngleView;
        this.toothTipView = toothTipDropdownView;
        this.topBar = topbarBinding;
        this.tvArmAngle = textView2;
        this.tvBottomDes = appCompatTextView;
        this.tvDiff = textView3;
        this.tvDiffBottom = textView4;
        this.tvDiffTop = textView5;
        this.tvDistanceDes = appCompatTextView2;
        this.tvMachineNumber = textView6;
        this.tvProTitle = textView7;
        this.tvStartDistance = textView8;
        this.tvStatus = textView9;
        this.tvTopDes = appCompatTextView3;
        this.tvUnit = textView10;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivitySpWorkBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivitySpWorkBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_sp_work, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivitySpWorkBinding bind(View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        int i = R$id.cadView;
        XCadView xCadView = (XCadView) ViewBindings.findChildViewById(view, i);
        if (xCadView != null) {
            i = R$id.constraintLayout;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout != null) {
                i = R$id.edtName;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R$id.ivArm;
                    ArmView armView = (ArmView) ViewBindings.findChildViewById(view, i);
                    if (armView != null) {
                        i = R$id.ivMapState;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                        if (imageView != null) {
                            i = R$id.ivResetLocation;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                            if (imageView2 != null) {
                                i = R$id.ivSlopeType;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView3 != null) {
                                    i = R$id.ivSound;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i);
                                    if (imageView4 != null) {
                                        i = R$id.ivStartPoint;
                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, i);
                                        if (imageView5 != null) {
                                            i = R$id.ivStatus;
                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, i);
                                            if (imageView6 != null) {
                                                i = R$id.ivStatusBottom;
                                                ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                if (imageView7 != null) {
                                                    i = R$id.ivStatusTop;
                                                    ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                    if (imageView8 != null) {
                                                        View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R$id.lineH);
                                                        i = R$id.lineTop;
                                                        View viewFindChildViewById4 = ViewBindings.findChildViewById(view, i);
                                                        if (viewFindChildViewById4 != null) {
                                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R$id.llt);
                                                            i = R$id.lltBottomDistance;
                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                            if (linearLayout2 != null) {
                                                                i = R$id.lltBtn;
                                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                if (linearLayout3 != null) {
                                                                    i = R$id.lltH5;
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                    if (linearLayout4 != null) {
                                                                        i = R$id.lltH5Pro;
                                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                        if (linearLayout5 != null) {
                                                                            i = R$id.lltTopDistance;
                                                                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                            if (linearLayout6 != null) {
                                                                                LinearLayout linearLayout7 = (LinearLayout) view;
                                                                                i = R$id.mapContainer;
                                                                                MapContainerView mapContainerView = (MapContainerView) ViewBindings.findChildViewById(view, i);
                                                                                if (mapContainerView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.placeView))) != null) {
                                                                                    i = R$id.rollAngleView;
                                                                                    RollAngleView rollAngleView = (RollAngleView) ViewBindings.findChildViewById(view, i);
                                                                                    if (rollAngleView != null) {
                                                                                        i = R$id.toothTipView;
                                                                                        ToothTipDropdownView toothTipDropdownView = (ToothTipDropdownView) ViewBindings.findChildViewById(view, i);
                                                                                        if (toothTipDropdownView != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                                                                            TopbarBinding topbarBindingBind = TopbarBinding.bind(viewFindChildViewById2);
                                                                                            i = R$id.tvArmAngle;
                                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (textView2 != null) {
                                                                                                i = R$id.tvBottomDes;
                                                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (appCompatTextView != null) {
                                                                                                    i = R$id.tvDiff;
                                                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (textView3 != null) {
                                                                                                        i = R$id.tvDiffBottom;
                                                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (textView4 != null) {
                                                                                                            i = R$id.tvDiffTop;
                                                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                            if (textView5 != null) {
                                                                                                                i = R$id.tvDistanceDes;
                                                                                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                                if (appCompatTextView2 != null) {
                                                                                                                    i = R$id.tvMachineNumber;
                                                                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                    if (textView6 != null) {
                                                                                                                        i = R$id.tvProTitle;
                                                                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                        if (textView7 != null) {
                                                                                                                            i = R$id.tvStartDistance;
                                                                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                            if (textView8 != null) {
                                                                                                                                i = R$id.tvStatus;
                                                                                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                if (textView9 != null) {
                                                                                                                                    i = R$id.tvTopDes;
                                                                                                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                    if (appCompatTextView3 != null) {
                                                                                                                                        i = R$id.tvUnit;
                                                                                                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                                        if (textView10 != null) {
                                                                                                                                            return new ActivitySpWorkBinding(linearLayout7, xCadView, constraintLayout, textView, armView, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, viewFindChildViewById3, viewFindChildViewById4, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, mapContainerView, viewFindChildViewById, rollAngleView, toothTipDropdownView, topbarBindingBind, textView2, appCompatTextView, textView3, textView4, textView5, appCompatTextView2, textView6, textView7, textView8, textView9, appCompatTextView3, textView10);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
