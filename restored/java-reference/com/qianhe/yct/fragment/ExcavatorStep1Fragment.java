package com.qianhe.yct.fragment;

import android.R;
import android.app.Dialog;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.excavator.ExcavatorCreateActivity;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentExcavatorStep1Binding;
import com.qianhe.yct.dialog.CheckInsDialogFragment;
import com.qianhe.yct.enums.ExcavatorCalibrateModeEnum;
import org.greenrobot.eventbus.EventBus;
import pl.droidsonroids.gif.GifImageView;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorStep1Fragment extends BaseProjectFragment {
    private FragmentExcavatorStep1Binding binding;
    private CheckInsDialogFragment checkInsDialog;
    private ExcavatorEntity excavatorEntity;
    private ExcavatorEntity initEntity;
    private InsNavi mINS;
    private boolean isNoMoreReminders = false;
    private FocusedType lastFocusedType = FocusedType.HA;
    private boolean hasShownInstallTips = false;
    private boolean insAvailable = false;
    private boolean checkInsDismissedManually = false;
    private boolean checkInsFromContinue = false;

    private enum FocusedType {
        HA,
        PQ
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentExcavatorStep1Binding.inflate(getLayoutInflater());
        String string = this.mSp.getString("current_coords", "");
        if (this.mINS == null && !TextUtils.isEmpty(string)) {
            InsNavi insNavi = new InsNavi();
            this.mINS = insNavi;
            try {
                insNavi.longitude = Double.parseDouble(string.split(",")[0]);
                this.mINS.latitude = Double.parseDouble(string.split(",")[1]);
                this.mINS.elevation = Double.parseDouble(string.split(",")[2]);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.initEntity = resolveInitExcavatorEntity();
        this.excavatorEntity = resolveExcavatorEntity();
        initView();
        return this.binding.getRoot();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAndShowInstallTips() {
        if (this.hasShownInstallTips) {
            return;
        }
        if (this.mSp.getBoolean("show_install_leveling_tips", true) && this.excavatorEntity.mode != ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            this.hasShownInstallTips = true;
            showInstallTipsDialog(true);
        } else {
            this.hasShownInstallTips = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showInstallTipsDialog(final boolean z) {
        final Dialog dialog = new Dialog(requireContext());
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.dialog_install_tips, (ViewGroup) null);
        dialog.setContentView(viewInflate);
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        int i = getResources().getDisplayMetrics().widthPixels;
        int i2 = getResources().getDisplayMetrics().heightPixels;
        float f = getResources().getDisplayMetrics().density;
        boolean z2 = getResources().getConfiguration().orientation == 2;
        boolean z3 = (requireActivity() instanceof BaseActivity) && ((BaseActivity) requireActivity()).isPad();
        float f2 = z2 ? 0.68f : 0.9f;
        TextView textView = (TextView) viewInflate.findViewById(R$id.tvTitle);
        AppCompatImageView appCompatImageView = (AppCompatImageView) viewInflate.findViewById(R$id.ivInstallImage);
        TextView textView2 = (TextView) viewInflate.findViewById(R$id.tvContent);
        NestedScrollView nestedScrollView = (NestedScrollView) viewInflate.findViewById(R$id.nsvContent);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R$id.lltNoMore);
        final ImageView imageView = (ImageView) viewInflate.findViewById(R$id.ivNoMore);
        float f3 = f2;
        TextView textView3 = (TextView) viewInflate.findViewById(R$id.tvPrevious);
        TextView textView4 = (TextView) viewInflate.findViewById(R$id.tvNext);
        this.isNoMoreReminders = false;
        imageView.setSelected(false);
        linearLayout.setVisibility(z ? 0 : 8);
        textView3.setVisibility(8);
        textView4.setText(R$string.confirm);
        textView.setText(R$string.install_leveling_device);
        textView2.setText(R$string.install_leveling_device_step);
        boolean zIsKe76Pro = MultiBluetoothManager.getInstance(requireContext()).isKe76Pro();
        appCompatImageView.setVisibility(0);
        appCompatImageView.setImageResource(zIsKe76Pro ? R$drawable.icon_install_zpy_xfix : R$drawable.icon_install_zpy_yct);
        int i3 = (int) (i * f3);
        applyScrollViewHeightLimit(nestedScrollView, getInstallTipsMaxScrollHeight(i2, f, z2, z3), i3 - ((int) (f * 40.0f)));
        Window window = dialog.getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = i3;
            attributes.height = -2;
            attributes.gravity = 17;
            window.setAttributes(attributes);
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep1Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExcavatorStep1Fragment.this.isNoMoreReminders = !r2.isNoMoreReminders;
                imageView.setSelected(ExcavatorStep1Fragment.this.isNoMoreReminders);
            }
        });
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep1Fragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (z && ExcavatorStep1Fragment.this.isNoMoreReminders) {
                    ((BaseProjectFragment) ExcavatorStep1Fragment.this).mSp.edit().putBoolean("show_install_leveling_tips", false).apply();
                }
                dialog.dismiss();
            }
        });
        dialog.show();
    }

    private int getInstallTipsMaxScrollHeight(int i, float f, boolean z, boolean z2) {
        float f2 = 0.72f;
        if (z && !z2) {
            f2 = 0.78f;
        }
        return Math.max((int) (f * 120.0f), ((int) (i * f2)) - ((int) (169.0f * f)));
    }

    private void applyScrollViewHeightLimit(NestedScrollView nestedScrollView, int i, int i2) {
        View childAt = nestedScrollView.getChildAt(0);
        if (childAt == null) {
            return;
        }
        childAt.measure(View.MeasureSpec.makeMeasureSpec(Math.max(i2, 0), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        ViewGroup.LayoutParams layoutParams = nestedScrollView.getLayoutParams();
        layoutParams.height = Math.min(childAt.getMeasuredHeight(), i);
        nestedScrollView.setLayoutParams(layoutParams);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentExcavatorStep1Binding fragmentExcavatorStep1Binding = this.binding;
        restoreContinueEnabled(fragmentExcavatorStep1Binding != null ? fragmentExcavatorStep1Binding.tvContinue : null);
        AppCompatTextView appCompatTextView = this.binding.tvInstallDoubt;
        int i = this.excavatorEntity.mode;
        ExcavatorCalibrateModeEnum excavatorCalibrateModeEnum = ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT;
        appCompatTextView.setVisibility(i != excavatorCalibrateModeEnum.getMode() ? 0 : 8);
        updateTvDoubtVisibility(true);
        this.binding.unitDropdownSensor.initUnit(requireContext(), getGlobalUnit());
        refreshMode1UnitLabel(this.binding.tvUnitValue);
        if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.SENSOR.getMode()) {
            setGifResource(this.binding.ivStep1, R$drawable.icon_ha_sensor);
        } else if (this.excavatorEntity.mode == excavatorCalibrateModeEnum.getMode()) {
            setGifResource(this.binding.ivStep1, R$drawable.icon_excavator_ah);
        } else if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_NOT_FLAT.getMode()) {
            setGifResource(this.binding.ivStep1, R$drawable.icon_ha_no_sensor);
        }
        this.binding.ivStep1CloseUp.setVisibility(0);
        this.binding.ivStep1CloseUp.setImageResource(MultiBluetoothManager.getInstance(requireActivity()).isKe76Pro() ? R$drawable.icon_ex30_close_up : R$drawable.icon_h5pro_close_up);
        updateCloseUpPosition();
        this.binding.lltMode23.setVisibility(this.excavatorEntity.mode == excavatorCalibrateModeEnum.getMode() ? 8 : 0);
        FragmentExcavatorStep1Binding fragmentExcavatorStep1Binding2 = this.binding;
        fragmentExcavatorStep1Binding2.lltMode1.setVisibility(fragmentExcavatorStep1Binding2.lltMode23.getVisibility() != 0 ? 0 : 8);
        setGifPlaying(this.binding.ivStep1, true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        setGifPlaying(this.binding.ivStep1, false);
        super.onPause();
    }

    private void initView() {
        this.binding.tvInstallDoubt.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep1Fragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((BaseProjectFragment) ExcavatorStep1Fragment.this).mSp.edit().putBoolean("show_install_leveling_tips", true).apply();
                ExcavatorStep1Fragment.this.showInstallTipsDialog(false);
            }
        });
        this.binding.tvDoubt.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep1Fragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExcavatorStep1Fragment.this.showActualImageDialog();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep1Fragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        bindContinueClick(this.binding.tvContinue, new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep1Fragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ExcavatorStep1Fragment.this.shouldBlockForCheckIns()) {
                    ExcavatorStep1Fragment.this.showCheckInsDialog(true);
                    return;
                }
                if (ExcavatorStep1Fragment.this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
                    if (ExcavatorStep1Fragment.this.binding.edtValue.getNumericValue() == 0.0d) {
                        ((BaseActivity) ExcavatorStep1Fragment.this.requireActivity()).showTipDialog(ExcavatorStep1Fragment.this.getString(R$string.config_empty), ExcavatorStep1Fragment.this.getString(R$string.ok), null);
                        return;
                    }
                    ExcavatorStep1Fragment excavatorStep1Fragment = ExcavatorStep1Fragment.this;
                    if (excavatorStep1Fragment.formatOtherToMeter(excavatorStep1Fragment.getGlobalUnit(), ExcavatorStep1Fragment.this.binding.edtValue.getNumericValue()) >= 0.001d) {
                        ExcavatorStep1Fragment excavatorStep1Fragment2 = ExcavatorStep1Fragment.this;
                        if (excavatorStep1Fragment2.formatOtherToMeter(excavatorStep1Fragment2.getGlobalUnit(), ExcavatorStep1Fragment.this.binding.edtValue.getNumericValue()) <= 10.0d) {
                            ExcavatorStep1Fragment.this.excavatorEntity.deviceHeight = ExcavatorStep1Fragment.this.binding.edtValue.getNumericValue();
                            ExcavatorStep1Fragment excavatorStep1Fragment3 = ExcavatorStep1Fragment.this;
                            excavatorStep1Fragment3.postWizardNext(excavatorStep1Fragment3.binding.tvContinue);
                            return;
                        }
                    }
                    ((BaseActivity) ExcavatorStep1Fragment.this.requireActivity()).showTipDialog(ExcavatorStep1Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep1Fragment.this.getString(R$string.ok), null);
                    return;
                }
                ExcavatorStep1Fragment excavatorStep1Fragment4 = ExcavatorStep1Fragment.this;
                double otherToMeter = excavatorStep1Fragment4.formatOtherToMeter(excavatorStep1Fragment4.getGlobalUnit(), ExcavatorStep1Fragment.this.binding.edtHA.getNumericValue());
                ExcavatorStep1Fragment excavatorStep1Fragment5 = ExcavatorStep1Fragment.this;
                double otherToMeter2 = excavatorStep1Fragment5.formatOtherToMeter(excavatorStep1Fragment5.getGlobalUnit(), ExcavatorStep1Fragment.this.binding.edtPq.getNumericValue());
                if (ExcavatorStep1Fragment.this.binding.edtHA.getNumericValue() == 0.0d || ExcavatorStep1Fragment.this.binding.edtPq.getNumericValue() == 0.0d) {
                    ((BaseActivity) ExcavatorStep1Fragment.this.requireActivity()).showTipDialog(ExcavatorStep1Fragment.this.getString(R$string.config_empty), ExcavatorStep1Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (Math.abs(otherToMeter) < 0.001d || Math.abs(otherToMeter) > 10.0d) {
                    ((BaseActivity) ExcavatorStep1Fragment.this.requireActivity()).showTipDialog(ExcavatorStep1Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep1Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (Math.abs(otherToMeter2) < 0.001d || Math.abs(otherToMeter2) > 10.0d) {
                    ((BaseActivity) ExcavatorStep1Fragment.this.requireActivity()).showTipDialog(ExcavatorStep1Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep1Fragment.this.getString(R$string.ok), null);
                    return;
                }
                ExcavatorStep1Fragment.this.excavatorEntity.HA = otherToMeter;
                ExcavatorStep1Fragment.this.excavatorEntity.pq = otherToMeter2;
                ExcavatorStep1Fragment excavatorStep1Fragment6 = ExcavatorStep1Fragment.this;
                excavatorStep1Fragment6.postWizardNext(excavatorStep1Fragment6.binding.tvContinue);
            }
        });
        initGifShow();
        showData();
    }

    private void initGifShow() {
        setupParamField(this.binding.edtHA, FocusedType.HA, R$drawable.icon_ha_sensor, R$drawable.icon_ha_no_sensor, new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorStep1Fragment.7
            @Override // java.lang.Runnable
            public void run() {
                ExcavatorStep1Fragment.this.binding.ivStep1CloseUp.setVisibility(0);
                ExcavatorStep1Fragment.this.binding.ivStep1CloseUp.setImageResource(MultiBluetoothManager.getInstance(ExcavatorStep1Fragment.this.requireActivity()).isKe76Pro() ? R$drawable.icon_ex30_close_up : R$drawable.icon_h5pro_close_up);
            }
        });
        setupParamField(this.binding.edtPq, FocusedType.PQ, R$drawable.icon_pq_sensor, R$drawable.icon_pq_no_sensor, new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorStep1Fragment.8
            @Override // java.lang.Runnable
            public void run() {
                ExcavatorStep1Fragment.this.binding.ivStep1CloseUp.setVisibility(8);
            }
        });
        this.binding.edtValue.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep1Fragment.9
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    ExcavatorStep1Fragment.this.updateTvDoubtVisibility(false);
                }
            }
        });
    }

    private void updateCloseUpPosition() {
        AppCompatImageView appCompatImageView = this.binding.ivStep1CloseUp;
        ViewGroup.LayoutParams layoutParams = appCompatImageView.getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            int i = (int) (getResources().getDisplayMetrics().density * 15.0f);
            boolean z = this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode();
            layoutParams2.addRule(15);
            if (z) {
                layoutParams2.removeRule(8);
                layoutParams2.addRule(21);
                layoutParams2.setMarginStart(0);
                layoutParams2.setMarginEnd(i);
                layoutParams2.bottomMargin = 0;
            } else {
                layoutParams2.removeRule(21);
                layoutParams2.addRule(8, R$id.ivStep1);
                layoutParams2.setMarginStart(i);
                layoutParams2.setMarginEnd(0);
                layoutParams2.bottomMargin = i;
            }
            appCompatImageView.setLayoutParams(layoutParams2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTvDoubtVisibility(boolean z) {
        if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            this.binding.tvDoubt.setVisibility(8);
        } else {
            this.binding.tvDoubt.setVisibility(z ? 0 : 8);
        }
    }

    private void setupParamField(View view, final FocusedType focusedType, final int i, final int i2, final Runnable runnable) {
        view.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep1Fragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ExcavatorStep1Fragment.this.lastFocusedType = focusedType;
                ExcavatorStep1Fragment.this.updateTvDoubtVisibility(true);
            }
        });
        view.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep1Fragment.11
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view2, boolean z) {
                if (z) {
                    ExcavatorStep1Fragment.this.lastFocusedType = focusedType;
                    ExcavatorStep1Fragment.this.updateTvDoubtVisibility(true);
                    if (ExcavatorStep1Fragment.this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.SENSOR.getMode()) {
                        ExcavatorStep1Fragment excavatorStep1Fragment = ExcavatorStep1Fragment.this;
                        excavatorStep1Fragment.setGifResource(excavatorStep1Fragment.binding.ivStep1, i);
                    } else if (ExcavatorStep1Fragment.this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_NOT_FLAT.getMode()) {
                        ExcavatorStep1Fragment excavatorStep1Fragment2 = ExcavatorStep1Fragment.this;
                        excavatorStep1Fragment2.setGifResource(excavatorStep1Fragment2.binding.ivStep1, i2);
                    }
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showActualImageDialog() {
        final Dialog dialog = new Dialog(requireContext());
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.dialog_actual_image, (ViewGroup) null);
        viewInflate.setBackgroundResource(R$drawable.bg_dialog);
        dialog.setContentView(viewInflate);
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(true);
        Window window = dialog.getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = (int) (getResources().getDisplayMetrics().widthPixels * (getResources().getConfiguration().orientation == 2 ? 0.6f : 0.9f));
            attributes.height = -2;
            window.setAttributes(attributes);
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        GifImageView gifImageView = (GifImageView) viewInflate.findViewById(R$id.gifIv);
        gifImageView.setVisibility(0);
        setGifResource(gifImageView, getActualGifResId());
        viewInflate.findViewById(R$id.tvCancel).setVisibility(8);
        TextView textView = (TextView) viewInflate.findViewById(R$id.tvSure);
        textView.setText(R$string.close);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep1Fragment.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.show();
    }

    private int getActualGifResId() {
        boolean zIsKe76Pro = MultiBluetoothManager.getInstance(requireContext()).isKe76Pro();
        return this.lastFocusedType == FocusedType.PQ ? zIsKe76Pro ? R$drawable.icon_pq_ex30_actual : R$drawable.icon_pq_actual : zIsKe76Pro ? R$drawable.icon_ha_ex30_actual : R$drawable.icon_ha_actual;
    }

    private void showData() {
        this.binding.unitDropdownSensor.initUnit(requireContext(), getGlobalUnit());
        refreshMode1UnitLabel(this.binding.tvUnitValue);
        if (this.excavatorEntity.deviceHeight != 0.0d) {
            this.binding.edtValue.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.deviceHeight, 3)));
        }
        if (this.excavatorEntity.HA != 0.0d) {
            this.binding.edtHA.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.HA, 3)));
        }
        if (this.excavatorEntity.pq != 0.0d) {
            this.binding.edtPq.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.pq, 3)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCheckInsDialog(final boolean z) {
        if (getParentFragmentManager().findFragmentByTag("CheckInsDialog") != null) {
            return;
        }
        this.checkInsFromContinue = z;
        this.checkInsDialog = new CheckInsDialogFragment();
        if (requireActivity() instanceof ExcavatorCreateActivity) {
            this.checkInsDialog.setIgnoreTiltReject(((ExcavatorCreateActivity) requireActivity()).isSwingInsClearedOnce());
        }
        this.checkInsDialog.setOnActionListener(new CheckInsDialogFragment.OnActionListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep1Fragment.13
            @Override // com.qianhe.yct.dialog.CheckInsDialogFragment.OnActionListener
            public void onClose() {
                ExcavatorStep1Fragment.this.checkInsDismissedManually = true;
                ExcavatorStep1Fragment.this.checkInsDialog = null;
                if (z) {
                    return;
                }
                ExcavatorStep1Fragment.this.checkAndShowInstallTips();
            }
        });
        this.checkInsDialog.show(getParentFragmentManager(), "CheckInsDialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldBlockForCheckIns() {
        if (this.insAvailable) {
            return false;
        }
        return !isSwingInsExempt();
    }

    private boolean isSwingInsExempt() {
        if (!(requireActivity() instanceof ExcavatorCreateActivity)) {
            return false;
        }
        ExcavatorCreateActivity excavatorCreateActivity = (ExcavatorCreateActivity) requireActivity();
        return ExcavatorCreateActivity.isSwingInsExempt(this.mINS, excavatorCreateActivity.isSwingInsClearedOnce(), excavatorCreateActivity.shouldIgnoreBucketSensorLost());
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
        if (insNavi == null) {
            return;
        }
        this.mINS = insNavi;
        this.insAvailable = z;
        if (isAdded()) {
            if (z) {
                this.checkInsDismissedManually = false;
                CheckInsDialogFragment checkInsDialogFragment = this.checkInsDialog;
                if (checkInsDialogFragment != null) {
                    checkInsDialogFragment.dismissAllowingStateLoss();
                    this.checkInsDialog = null;
                    if (this.checkInsFromContinue) {
                        return;
                    }
                    checkAndShowInstallTips();
                    return;
                }
                if (this.hasShownInstallTips) {
                    return;
                }
                checkAndShowInstallTips();
                return;
            }
            if (isSwingInsExempt()) {
                CheckInsDialogFragment checkInsDialogFragment2 = this.checkInsDialog;
                if (checkInsDialogFragment2 != null) {
                    checkInsDialogFragment2.dismissAllowingStateLoss();
                    this.checkInsDialog = null;
                    return;
                }
                return;
            }
            if (!this.checkInsDismissedManually && this.checkInsDialog == null) {
                showCheckInsDialog(false);
            }
        }
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        FragmentExcavatorStep1Binding fragmentExcavatorStep1Binding = this.binding;
        recycleGif(fragmentExcavatorStep1Binding != null ? fragmentExcavatorStep1Binding.ivStep1 : null);
        super.onDestroyView();
    }
}
