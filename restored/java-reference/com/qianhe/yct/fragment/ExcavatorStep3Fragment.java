package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentExcavatorStep3Binding;
import com.qianhe.yct.dialog.ActualImageDialogHelper;
import com.qianhe.yct.dialog.PasswordDialogFragment;
import com.qianhe.yct.enums.ExcavatorCalibrateModeEnum;
import java.util.LinkedHashMap;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorStep3Fragment extends BaseProjectFragment {
    private FragmentExcavatorStep3Binding binding;
    private ExcavatorEntity excavatorEntity;
    private ExcavatorEntity initEntity;
    private FocusedType lastFocusedType = FocusedType.A1Y;
    private InsNavi mINS;

    private enum FocusedType {
        A1Y
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentExcavatorStep3Binding.inflate(getLayoutInflater());
        String string = this.mSp.getString("current_coords", "");
        if (this.mINS == null && !TextUtils.isEmpty(string)) {
            InsNavi insNavi = new InsNavi();
            this.mINS = insNavi;
            try {
                insNavi.longitude = Double.parseDouble(string.split(",")[0]);
                this.mINS.latitude = Double.parseDouble(string.split(",")[1]);
                this.mINS.elevation = Double.parseDouble(string.split(",")[2]);
            } catch (Exception unused) {
            }
        }
        this.initEntity = resolveInitExcavatorEntity();
        this.excavatorEntity = resolveExcavatorEntity();
        initView();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        int i;
        super.onResume();
        FragmentExcavatorStep3Binding fragmentExcavatorStep3Binding = this.binding;
        restoreContinueEnabled(fragmentExcavatorStep3Binding != null ? fragmentExcavatorStep3Binding.tvContinue : null);
        updateTvDoubtVisibility(true);
        this.binding.unitDropdownSensor.initUnit(requireContext(), getGlobalUnit());
        refreshMode1UnitLabel(this.binding.tvUnitValue);
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        boolean z = excavatorEntity.distanceBucketMeasure;
        if (excavatorEntity.mode == ExcavatorCalibrateModeEnum.SENSOR.getMode()) {
            setGifResource(this.binding.ivStep3, z ? R$drawable.icon_ay_mode4_sensor : R$drawable.icon_ay_sensor);
        } else if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            setGifResource(this.binding.ivStep3, R$drawable.icon_excavator_al);
        } else if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_NOT_FLAT.getMode()) {
            setGifResource(this.binding.ivStep3, R$drawable.icon_ay_no_sensor);
        }
        this.binding.lltMode23.setVisibility(this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode() ? 8 : 0);
        FragmentExcavatorStep3Binding fragmentExcavatorStep3Binding2 = this.binding;
        fragmentExcavatorStep3Binding2.lltMode1.setVisibility(fragmentExcavatorStep3Binding2.lltMode23.getVisibility() == 0 ? 8 : 0);
        if (this.binding.lltMode23.getVisibility() == 0) {
            TextView textView = this.binding.tvStep3Tips;
            if (z) {
                i = R$string.has_sensor_mode4_step3_tips;
            } else {
                i = R$string.has_sensor_step3_tips;
            }
            textView.setText(i);
        }
        setGifPlaying(this.binding.ivStep3, true);
        showPostureTipsDialog();
    }

    private void showPostureTipsDialog() {
        int i;
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity == null || excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            return;
        }
        if (this.excavatorEntity.distanceBucketMeasure) {
            i = R$string.excavator_mode4_step3_posture_tips;
        } else {
            i = R$string.excavator_step3_posture_tips;
        }
        ((BaseActivity) requireActivity()).showTipDialog(getString(i), getString(R$string.ok), null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        setGifPlaying(this.binding.ivStep3, false);
        super.onPause();
    }

    private void initView() {
        this.binding.tvDoubt.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep3Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExcavatorStep3Fragment.this.showActualImageDialog();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep3Fragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        bindContinueClick(this.binding.tvContinue, new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep3Fragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ExcavatorStep3Fragment.this.excavatorEntity.mode != ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
                    ExcavatorStep3Fragment excavatorStep3Fragment = ExcavatorStep3Fragment.this;
                    double otherToMeter = excavatorStep3Fragment.formatOtherToMeter(excavatorStep3Fragment.getGlobalUnit(), ExcavatorStep3Fragment.this.binding.edtAy.getNumericValue());
                    if (otherToMeter == 0.0d) {
                        ((BaseActivity) ExcavatorStep3Fragment.this.requireActivity()).showTipDialog(ExcavatorStep3Fragment.this.getString(R$string.config_empty), ExcavatorStep3Fragment.this.getString(R$string.ok), null);
                        return;
                    }
                    if (Math.abs(otherToMeter) < 0.001d || Math.abs(otherToMeter) > 10.0d) {
                        ((BaseActivity) ExcavatorStep3Fragment.this.requireActivity()).showTipDialog(ExcavatorStep3Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep3Fragment.this.getString(R$string.ok), null);
                        return;
                    }
                    ExcavatorStep3Fragment.this.excavatorEntity.Ay = otherToMeter;
                    ExcavatorStep3Fragment excavatorStep3Fragment2 = ExcavatorStep3Fragment.this;
                    excavatorStep3Fragment2.postWizardNext(excavatorStep3Fragment2.binding.tvContinue);
                    return;
                }
                if (ExcavatorStep3Fragment.this.binding.edtValue.getNumericValue() == 0.0d) {
                    ((BaseActivity) ExcavatorStep3Fragment.this.requireActivity()).showTipDialog(ExcavatorStep3Fragment.this.getString(R$string.config_empty), ExcavatorStep3Fragment.this.getString(R$string.ok), null);
                    return;
                }
                ExcavatorStep3Fragment excavatorStep3Fragment3 = ExcavatorStep3Fragment.this;
                if (excavatorStep3Fragment3.formatOtherToMeter(excavatorStep3Fragment3.getGlobalUnit(), ExcavatorStep3Fragment.this.binding.edtValue.getNumericValue()) >= 0.01d) {
                    ExcavatorStep3Fragment excavatorStep3Fragment4 = ExcavatorStep3Fragment.this;
                    if (excavatorStep3Fragment4.formatOtherToMeter(excavatorStep3Fragment4.getGlobalUnit(), ExcavatorStep3Fragment.this.binding.edtValue.getNumericValue()) <= 10.0d) {
                        ExcavatorStep3Fragment.this.excavatorEntity.leftDist = ExcavatorStep3Fragment.this.binding.edtValue.getNumericValue();
                        ExcavatorStep3Fragment excavatorStep3Fragment5 = ExcavatorStep3Fragment.this;
                        excavatorStep3Fragment5.postWizardNext(excavatorStep3Fragment5.binding.tvContinue);
                        return;
                    }
                }
                ((BaseActivity) ExcavatorStep3Fragment.this.requireActivity()).showTipDialog(ExcavatorStep3Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep3Fragment.this.getString(R$string.ok), null);
            }
        });
        this.binding.tvCustomParam.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep3Fragment.4
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                PasswordDialogFragment passwordDialogFragment = new PasswordDialogFragment();
                passwordDialogFragment.show(ExcavatorStep3Fragment.this.getChildFragmentManager(), "PasswordDialogFragment");
                passwordDialogFragment.setOnConfirmListener(new PasswordDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep3Fragment.4.1
                    @Override // com.qianhe.yct.dialog.PasswordDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        ExcavatorStep3Fragment.this.excavatorEntity.leftDist = ExcavatorStep3Fragment.this.binding.edtValue.getNumericValue();
                        EventBus.getDefault().post("next");
                    }
                });
                return false;
            }
        });
        initGifShow();
        showData();
    }

    private void initGifShow() {
        setupParamField(this.binding.edtAy, FocusedType.A1Y, R$drawable.icon_ay_sensor, R$drawable.icon_ay_no_sensor);
        this.binding.edtValue.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep3Fragment.5
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    ExcavatorStep3Fragment.this.updateTvDoubtVisibility(false);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTvDoubtVisibility(boolean z) {
        if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            this.binding.tvDoubt.setVisibility(8);
        } else {
            this.binding.tvDoubt.setVisibility(z ? 0 : 8);
        }
    }

    private void setupParamField(View view, final FocusedType focusedType, final int i, final int i2) {
        view.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep3Fragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ExcavatorStep3Fragment.this.lastFocusedType = focusedType;
                ExcavatorStep3Fragment.this.updateTvDoubtVisibility(true);
            }
        });
        view.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep3Fragment.7
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view2, boolean z) {
                if (z) {
                    ExcavatorStep3Fragment.this.lastFocusedType = focusedType;
                    ExcavatorStep3Fragment.this.updateTvDoubtVisibility(true);
                    if (ExcavatorStep3Fragment.this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.SENSOR.getMode()) {
                        boolean z2 = ExcavatorStep3Fragment.this.excavatorEntity.distanceBucketMeasure;
                        ExcavatorStep3Fragment excavatorStep3Fragment = ExcavatorStep3Fragment.this;
                        excavatorStep3Fragment.setGifResource(excavatorStep3Fragment.binding.ivStep3, z2 ? R$drawable.icon_ay_mode4_sensor : i);
                    } else if (ExcavatorStep3Fragment.this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_NOT_FLAT.getMode()) {
                        ExcavatorStep3Fragment excavatorStep3Fragment2 = ExcavatorStep3Fragment.this;
                        excavatorStep3Fragment2.setGifResource(excavatorStep3Fragment2.binding.ivStep3, i2);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showActualImageDialog() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("A1y", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_a1y_actual), Integer.valueOf(R$drawable.icon_a1y_actual_ceshitu)}));
        ActualImageDialogHelper.showCarousel(requireContext(), getResources().getConfiguration(), linkedHashMap, "A1y", linkedHashMap.size() > 1);
    }

    private void showData() {
        this.binding.unitDropdownSensor.initUnit(requireContext(), getGlobalUnit());
        refreshMode1UnitLabel(this.binding.tvUnitValue);
        if (this.excavatorEntity.leftDist != 0.0d) {
            this.binding.edtValue.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.leftDist, 3)));
        }
        if (this.excavatorEntity.Ay != 0.0d) {
            this.binding.edtAy.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.Ay, 3)));
        }
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
        if (insNavi == null) {
            return;
        }
        this.mINS = insNavi;
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        FragmentExcavatorStep3Binding fragmentExcavatorStep3Binding = this.binding;
        recycleGif(fragmentExcavatorStep3Binding != null ? fragmentExcavatorStep3Binding.ivStep3 : null);
        super.onDestroyView();
    }
}
