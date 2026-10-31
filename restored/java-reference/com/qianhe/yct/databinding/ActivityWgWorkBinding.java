package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBindings;
import com.qh.xcad.XCadView;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.view.ArmView;
import com.qianhe.yct.view.BucketIndicatorView;
import com.qianhe.yct.view.RollAngleView;
import com.qianhe.yct.view.ToothTipDropdownView;
import com.qianhe.yct.view.WorkView;
import com.qianhe.yct.view.map.MapContainerView;
import com.tencent.smtt.sdk.WebView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityWgWorkBinding {
    public final XCadView cadView;
    public final TextView edtName;
    public final FrameLayout fltWorkView;
    public final ArmView ivArm;
    public final BucketIndicatorView ivBucket;
    public final ImageView ivDirection;
    public final ImageView ivMapState;
    public final ImageView ivResetLocation;
    public final ImageView ivSlopeType;
    public final ImageView ivSound;
    public final ImageView ivStartPoint;
    public final ImageView ivStatusH;
    public final ImageView ivStatusV;
    public final ImageView ivZoom;
    public final View lineTop;
    public final LinearLayout lltBtn;
    public final LinearLayout lltH5;
    public final LinearLayout lltH5Pro;
    public final LinearLayout lltLeft;
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
    public final AppCompatTextView tvDistanceDesM;
    public final AppCompatTextView tvDistanceDesV;
    public final TextView tvMachineNumber;
    public final TextView tvProTitle;
    public final TextView tvProjectDistance;
    public final TextView tvStartDistance;
    public final TextView tvStatusH;
    public final TextView tvStatusV;
    public final TextView tvUnitH;
    public final TextView tvUnitV;
    public final WebView webview;
    public final WorkView workView;

    private ActivityWgWorkBinding(LinearLayout linearLayout, XCadView xCadView, TextView textView, FrameLayout frameLayout, ArmView armView, BucketIndicatorView bucketIndicatorView, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ImageView imageView7, ImageView imageView8, ImageView imageView9, View view, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, MapContainerView mapContainerView, RollAngleView rollAngleView, ToothTipDropdownView toothTipDropdownView, TopbarBinding topbarBinding, TextView textView2, TextView textView3, TextView textView4, TextView textView5, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, WebView webView, WorkView workView) {
        this.rootView = linearLayout;
        this.cadView = xCadView;
        this.edtName = textView;
        this.fltWorkView = frameLayout;
        this.ivArm = armView;
        this.ivBucket = bucketIndicatorView;
        this.ivDirection = imageView;
        this.ivMapState = imageView2;
        this.ivResetLocation = imageView3;
        this.ivSlopeType = imageView4;
        this.ivSound = imageView5;
        this.ivStartPoint = imageView6;
        this.ivStatusH = imageView7;
        this.ivStatusV = imageView8;
        this.ivZoom = imageView9;
        this.lineTop = view;
        this.lltBtn = linearLayout2;
        this.lltH5 = linearLayout3;
        this.lltH5Pro = linearLayout4;
        this.lltLeft = linearLayout5;
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
        this.tvDistanceDesM = appCompatTextView2;
        this.tvDistanceDesV = appCompatTextView3;
        this.tvMachineNumber = textView6;
        this.tvProTitle = textView7;
        this.tvProjectDistance = textView8;
        this.tvStartDistance = textView9;
        this.tvStatusH = textView10;
        this.tvStatusV = textView11;
        this.tvUnitH = textView12;
        this.tvUnitV = textView13;
        this.webview = webView;
        this.workView = workView;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityWgWorkBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityWgWorkBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_wg_work, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityWgWorkBinding bind(View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        int i = R$id.cadView;
        XCadView xCadView = (XCadView) ViewBindings.findChildViewById(view, i);
        if (xCadView != null) {
            i = R$id.edtName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R$id.fltWorkView;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                if (frameLayout != null) {
                    i = R$id.ivArm;
                    ArmView armView = (ArmView) ViewBindings.findChildViewById(view, i);
                    if (armView != null) {
                        i = R$id.ivBucket;
                        BucketIndicatorView bucketIndicatorView = (BucketIndicatorView) ViewBindings.findChildViewById(view, i);
                        if (bucketIndicatorView != null) {
                            i = R$id.ivDirection;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                            if (imageView != null) {
                                i = R$id.ivMapState;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView2 != null) {
                                    i = R$id.ivResetLocation;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i);
                                    if (imageView3 != null) {
                                        i = R$id.ivSlopeType;
                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i);
                                        if (imageView4 != null) {
                                            i = R$id.ivSound;
                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, i);
                                            if (imageView5 != null) {
                                                i = R$id.ivStartPoint;
                                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                if (imageView6 != null) {
                                                    i = R$id.ivStatusH;
                                                    ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                    if (imageView7 != null) {
                                                        i = R$id.ivStatusV;
                                                        ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                        if (imageView8 != null) {
                                                            i = R$id.ivZoom;
                                                            ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                            if (imageView9 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.lineTop))) != null) {
                                                                i = R$id.lltBtn;
                                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                if (linearLayout != null) {
                                                                    i = R$id.lltH5;
                                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                    if (linearLayout2 != null) {
                                                                        i = R$id.lltH5Pro;
                                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                        if (linearLayout3 != null) {
                                                                            i = R$id.lltLeft;
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
                                                                                        if (toothTipDropdownView != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                                                                            TopbarBinding topbarBindingBind = TopbarBinding.bind(viewFindChildViewById2);
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
                                                                                                                i = R$id.tvDistanceDesM;
                                                                                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                                if (appCompatTextView2 != null) {
                                                                                                                    i = R$id.tvDistanceDesV;
                                                                                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                                                    if (appCompatTextView3 != null) {
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
                                                                                                                                                        WebView webView = (WebView) ViewBindings.findChildViewById(view, R$id.webview);
                                                                                                                                                        i = R$id.workView;
                                                                                                                                                        WorkView workView = (WorkView) ViewBindings.findChildViewById(view, i);
                                                                                                                                                        if (workView != null) {
                                                                                                                                                            return new ActivityWgWorkBinding(linearLayout5, xCadView, textView, frameLayout, armView, bucketIndicatorView, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, viewFindChildViewById, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, mapContainerView, rollAngleView, toothTipDropdownView, topbarBindingBind, textView2, textView3, textView4, textView5, appCompatTextView, appCompatTextView2, appCompatTextView3, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, webView, workView);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
