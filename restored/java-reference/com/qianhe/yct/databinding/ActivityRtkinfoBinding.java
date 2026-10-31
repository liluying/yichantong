package com.qianhe.yct.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public final class ActivityRtkinfoBinding {
    public final ImageView ivDoubt;
    public final LinearLayout llt;
    public final RelativeLayout lltBoard;
    public final RelativeLayout lltFirmware;
    public final LinearLayout main;
    public final RelativeLayout rlt;
    public final RelativeLayout rltBucketSensor;
    public final RelativeLayout rltFeatureCode;
    public final RelativeLayout rltPoweroff;
    public final RelativeLayout rltRegister;
    public final RelativeLayout rltResetHost;
    public final RelativeLayout rltResetRtk;
    public final RelativeLayout rltRestartPositionBoard;
    public final RelativeLayout rltUploadLog;
    public final RelativeLayout rltValidity;
    private final LinearLayout rootView;
    public final TitlebarBinding topBar;
    public final TextView tvCopySn;
    public final TextView tvDeviceNumber;
    public final TextView tvExpireDate;
    public final TextView tvFirmwareDes;
    public final TextView tvFirmwareVersion;
    public final TextView tvGnssBoardVersion;
    public final TextView tvGnssDes;
    public final TextView tvHardwareDes;
    public final TextView tvHardwareVersion;
    public final TextView tvHostDes;
    public final TextView tvValidityDes;

    private ActivityRtkinfoBinding(LinearLayout linearLayout, ImageView imageView, LinearLayout linearLayout2, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, LinearLayout linearLayout3, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6, RelativeLayout relativeLayout7, RelativeLayout relativeLayout8, RelativeLayout relativeLayout9, RelativeLayout relativeLayout10, RelativeLayout relativeLayout11, RelativeLayout relativeLayout12, TitlebarBinding titlebarBinding, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11) {
        this.rootView = linearLayout;
        this.ivDoubt = imageView;
        this.llt = linearLayout2;
        this.lltBoard = relativeLayout;
        this.lltFirmware = relativeLayout2;
        this.main = linearLayout3;
        this.rlt = relativeLayout3;
        this.rltBucketSensor = relativeLayout4;
        this.rltFeatureCode = relativeLayout5;
        this.rltPoweroff = relativeLayout6;
        this.rltRegister = relativeLayout7;
        this.rltResetHost = relativeLayout8;
        this.rltResetRtk = relativeLayout9;
        this.rltRestartPositionBoard = relativeLayout10;
        this.rltUploadLog = relativeLayout11;
        this.rltValidity = relativeLayout12;
        this.topBar = titlebarBinding;
        this.tvCopySn = textView;
        this.tvDeviceNumber = textView2;
        this.tvExpireDate = textView3;
        this.tvFirmwareDes = textView4;
        this.tvFirmwareVersion = textView5;
        this.tvGnssBoardVersion = textView6;
        this.tvGnssDes = textView7;
        this.tvHardwareDes = textView8;
        this.tvHardwareVersion = textView9;
        this.tvHostDes = textView10;
        this.tvValidityDes = textView11;
    }

    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityRtkinfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityRtkinfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_rtkinfo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityRtkinfoBinding bind(View view) {
        View viewFindChildViewById;
        int i = R$id.ivDoubt;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = R$id.llt;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                i = R$id.lltBoard;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                if (relativeLayout != null) {
                    i = R$id.lltFirmware;
                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                    if (relativeLayout2 != null) {
                        LinearLayout linearLayout2 = (LinearLayout) view;
                        i = R$id.rlt;
                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                        if (relativeLayout3 != null) {
                            i = R$id.rltBucketSensor;
                            RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                            if (relativeLayout4 != null) {
                                i = R$id.rltFeatureCode;
                                RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                if (relativeLayout5 != null) {
                                    i = R$id.rltPoweroff;
                                    RelativeLayout relativeLayout6 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                    if (relativeLayout6 != null) {
                                        i = R$id.rltRegister;
                                        RelativeLayout relativeLayout7 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                        if (relativeLayout7 != null) {
                                            i = R$id.rltResetHost;
                                            RelativeLayout relativeLayout8 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                            if (relativeLayout8 != null) {
                                                i = R$id.rltResetRtk;
                                                RelativeLayout relativeLayout9 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                                if (relativeLayout9 != null) {
                                                    i = R$id.rltRestartPositionBoard;
                                                    RelativeLayout relativeLayout10 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                                    if (relativeLayout10 != null) {
                                                        i = R$id.rltUploadLog;
                                                        RelativeLayout relativeLayout11 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                                        if (relativeLayout11 != null) {
                                                            i = R$id.rltValidity;
                                                            RelativeLayout relativeLayout12 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                                            if (relativeLayout12 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R$id.topBar))) != null) {
                                                                TitlebarBinding titlebarBindingBind = TitlebarBinding.bind(viewFindChildViewById);
                                                                i = R$id.tvCopySn;
                                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                if (textView != null) {
                                                                    i = R$id.tvDeviceNumber;
                                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                    if (textView2 != null) {
                                                                        i = R$id.tvExpireDate;
                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                        if (textView3 != null) {
                                                                            i = R$id.tvFirmwareDes;
                                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                            if (textView4 != null) {
                                                                                i = R$id.tvFirmwareVersion;
                                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                if (textView5 != null) {
                                                                                    i = R$id.tvGnssBoardVersion;
                                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                    if (textView6 != null) {
                                                                                        i = R$id.tvGnssDes;
                                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                        if (textView7 != null) {
                                                                                            i = R$id.tvHardwareDes;
                                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                            if (textView8 != null) {
                                                                                                i = R$id.tvHardwareVersion;
                                                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (textView9 != null) {
                                                                                                    i = R$id.tvHostDes;
                                                                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                    if (textView10 != null) {
                                                                                                        i = R$id.tvValidityDes;
                                                                                                        TextView textView11 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (textView11 != null) {
                                                                                                            return new ActivityRtkinfoBinding(linearLayout2, imageView, linearLayout, relativeLayout, relativeLayout2, linearLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, relativeLayout7, relativeLayout8, relativeLayout9, relativeLayout10, relativeLayout11, relativeLayout12, titlebarBindingBind, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11);
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
