package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import pl.droidsonroids.gif.GifImageView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class FragmentHomeBinding {
    public final CardView cvBaseGroup;
    public final CardView cvExcavatorGroup;
    public final ImageView ivBaseBattState;
    public final ImageView ivBaseNetworkState;
    public final GifImageView ivBaseState;
    public final ImageView ivH5DatalinkStatus;
    public final ImageView ivH5DeviceConnect;
    public final ImageView ivZhaopingyiICon;
    public final LinearLayout lltBaseBatt;
    public final LinearLayout lltBaseConfig;
    public final LinearLayout lltBaseStatus;
    public final LinearLayout lltBucketManager;
    public final LinearLayout lltDatalinkStatus;
    public final LinearLayout lltDeviceConnect;
    public final LinearLayout lltEngineeringManager;
    public final LinearLayout lltExcavatorManager;
    public final LinearLayout lltLevelInfo;
    public final LinearLayout lltNetwork;
    private final LinearLayout rootView;
    public final RecyclerView rvHome;
    public final AppCompatTextView tvBaseBatt;
    public final AppCompatTextView tvBaseStatus;
    public final AppCompatTextView tvDiffStatus;

    private FragmentHomeBinding(LinearLayout linearLayout, CardView cardView, CardView cardView2, ImageView imageView, ImageView imageView2, GifImageView gifImageView, ImageView imageView3, ImageView imageView4, ImageView imageView5, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8, LinearLayout linearLayout9, LinearLayout linearLayout10, LinearLayout linearLayout11, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.rootView = linearLayout;
        this.cvBaseGroup = cardView;
        this.cvExcavatorGroup = cardView2;
        this.ivBaseBattState = imageView;
        this.ivBaseNetworkState = imageView2;
        this.ivBaseState = gifImageView;
        this.ivH5DatalinkStatus = imageView3;
        this.ivH5DeviceConnect = imageView4;
        this.ivZhaopingyiICon = imageView5;
        this.lltBaseBatt = linearLayout2;
        this.lltBaseConfig = linearLayout3;
        this.lltBaseStatus = linearLayout4;
        this.lltBucketManager = linearLayout5;
        this.lltDatalinkStatus = linearLayout6;
        this.lltDeviceConnect = linearLayout7;
        this.lltEngineeringManager = linearLayout8;
        this.lltExcavatorManager = linearLayout9;
        this.lltLevelInfo = linearLayout10;
        this.lltNetwork = linearLayout11;
        this.rvHome = recyclerView;
        this.tvBaseBatt = appCompatTextView;
        this.tvBaseStatus = appCompatTextView2;
        this.tvDiffStatus = appCompatTextView3;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentHomeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentHomeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_home, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentHomeBinding bind(View view) {
        int i = R$id.cvBaseGroup;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
        if (cardView != null) {
            i = R$id.cvExcavatorGroup;
            CardView cardView2 = (CardView) ViewBindings.findChildViewById(view, i);
            if (cardView2 != null) {
                i = R$id.ivBaseBattState;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView != null) {
                    i = R$id.ivBaseNetworkState;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                    if (imageView2 != null) {
                        i = R$id.ivBaseState;
                        GifImageView gifImageView = (GifImageView) ViewBindings.findChildViewById(view, i);
                        if (gifImageView != null) {
                            i = R$id.ivH5DatalinkStatus;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i);
                            if (imageView3 != null) {
                                i = R$id.ivH5DeviceConnect;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView4 != null) {
                                    i = R$id.ivZhaopingyiICon;
                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, i);
                                    if (imageView5 != null) {
                                        i = R$id.lltBaseBatt;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout != null) {
                                            i = R$id.lltBaseConfig;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout2 != null) {
                                                i = R$id.lltBaseStatus;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout3 != null) {
                                                    i = R$id.lltBucketManager;
                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayout4 != null) {
                                                        i = R$id.lltDatalinkStatus;
                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                        if (linearLayout5 != null) {
                                                            i = R$id.lltDeviceConnect;
                                                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                            if (linearLayout6 != null) {
                                                                i = R$id.lltEngineeringManager;
                                                                LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                if (linearLayout7 != null) {
                                                                    i = R$id.lltExcavatorManager;
                                                                    LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                    if (linearLayout8 != null) {
                                                                        i = R$id.lltLevelInfo;
                                                                        LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                        if (linearLayout9 != null) {
                                                                            i = R$id.lltNetwork;
                                                                            LinearLayout linearLayout10 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                            if (linearLayout10 != null) {
                                                                                i = R$id.rvHome;
                                                                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                                                                if (recyclerView != null) {
                                                                                    i = R$id.tvBaseBatt;
                                                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (appCompatTextView != null) {
                                                                                        i = R$id.tvBaseStatus;
                                                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (appCompatTextView2 != null) {
                                                                                            i = R$id.tvDiffStatus;
                                                                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (appCompatTextView3 != null) {
                                                                                                return new FragmentHomeBinding((LinearLayout) view, cardView, cardView2, imageView, imageView2, gifImageView, imageView3, imageView4, imageView5, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, linearLayout8, linearLayout9, linearLayout10, recyclerView, appCompatTextView, appCompatTextView2, appCompatTextView3);
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
