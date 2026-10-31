package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.google.gson.JsonObject;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1;
import com.qianhe.yct.activity.excavator.ExcavatorCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentExcavatorStep4Binding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.ActualImageDialogHelper;
import com.qianhe.yct.enums.ExcavatorCalibrateModeEnum;
import com.qianhe.yct.enums.InsStatusEnum;
import com.qianhe.yct.event.CreateExcavatorResponse;
import com.qianhe.yct.utils.CalibParamsIdUtil;
import com.qianhe.yct.utils.CalibrateSessionHelper;
import com.qianhe.yct.utils.ExcavatorCalibHelper;
import com.qianhe.yct.utils.NetworkUserLoader;
import java.util.LinkedHashMap;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorStep4Fragment extends BaseProjectFragment {
    private FragmentExcavatorStep4Binding binding;
    private boolean continueProcessing;
    private ExcavatorEntity excavatorEntity;
    private ExcavatorEntity initEntity;
    private FocusedType lastFocusedType = FocusedType.AX;
    private GGAEntity mGGA;
    private InsNavi mINS;
    private boolean request;

    private enum FocusedType {
        AX,
        DX,
        AD,
        BC,
        CD,
        BD
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentExcavatorStep4Binding.inflate(getLayoutInflater());
        String string = this.mSp.getString("current_coords", "");
        boolean z = true;
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
        ExcavatorEntity excavatorEntityResolveExcavatorEntity = resolveExcavatorEntity();
        this.excavatorEntity = excavatorEntityResolveExcavatorEntity;
        TextView textView = this.binding.tvContinue;
        if (excavatorEntityResolveExcavatorEntity != null && excavatorEntityResolveExcavatorEntity.localId != 0) {
            z = false;
        }
        textView.setEnabled(z);
        initView();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        EventBus.getDefault().register(this);
        updateTvDoubtVisibility(true);
        this.binding.unitDropdownSensor.initUnit(requireContext(), getGlobalUnit());
        refreshMode1UnitLabel(this.binding.tvUnitValue);
        boolean z = this.excavatorEntity.distanceBucketMeasure;
        this.binding.lltDx.setVisibility(z ? 4 : 0);
        if (z) {
            this.excavatorEntity.Dx = 0.0d;
        }
        if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.SENSOR.getMode()) {
            setGifResource(this.binding.ivStep4, z ? R$drawable.icon_ax_mode4_sensor : R$drawable.icon_ax_sensor);
        } else if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            setGifResource(this.binding.ivStep4, R$drawable.icon_excavator_rl);
        } else if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_NOT_FLAT.getMode()) {
            setGifResource(this.binding.ivStep4, R$drawable.icon_ax_no_sensor);
        }
        this.binding.lltMode23.setVisibility(this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode() ? 8 : 0);
        FragmentExcavatorStep4Binding fragmentExcavatorStep4Binding = this.binding;
        fragmentExcavatorStep4Binding.lltMode1.setVisibility(fragmentExcavatorStep4Binding.lltMode23.getVisibility() == 0 ? 8 : 0);
        setGifPlaying(this.binding.ivStep4, true);
    }

    private void initView() {
        this.binding.tvDoubt.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep4Fragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExcavatorStep4Fragment.this.showActualImageDialog();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep4Fragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventBus.getDefault().post("previous");
            }
        });
        bindContinueClick(this.binding.tvContinue, new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep4Fragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                double otherToMeter;
                if (ExcavatorStep4Fragment.this.continueProcessing) {
                    return;
                }
                if (ExcavatorStep4Fragment.this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
                    if (ExcavatorStep4Fragment.this.binding.edtValue.getNumericValue() == 0.0d) {
                        ((BaseActivity) ExcavatorStep4Fragment.this.requireActivity()).showTipDialog(ExcavatorStep4Fragment.this.getString(R$string.config_empty), ExcavatorStep4Fragment.this.getString(R$string.ok), null);
                        return;
                    }
                    ExcavatorStep4Fragment excavatorStep4Fragment = ExcavatorStep4Fragment.this;
                    if (excavatorStep4Fragment.formatOtherToMeter(excavatorStep4Fragment.getGlobalUnit(), ExcavatorStep4Fragment.this.binding.edtValue.getNumericValue()) >= 0.01d) {
                        ExcavatorStep4Fragment excavatorStep4Fragment2 = ExcavatorStep4Fragment.this;
                        if (excavatorStep4Fragment2.formatOtherToMeter(excavatorStep4Fragment2.getGlobalUnit(), ExcavatorStep4Fragment.this.binding.edtValue.getNumericValue()) <= 10.0d) {
                            if (ExcavatorStep4Fragment.this.mINS == null) {
                                ((BaseActivity) ExcavatorStep4Fragment.this.requireActivity()).showToastDialog(ExcavatorStep4Fragment.this.getString(R$string.disconnected_device));
                                return;
                            }
                            if (!YCTApplication.getInstance().isDemo() && YCTApplication.getInstance().getCurrentDevice().state != BluetoothStateEnum.CONNECTED.getState()) {
                                ((BaseActivity) ExcavatorStep4Fragment.this.requireActivity()).showToastDialog(ExcavatorStep4Fragment.this.getString(R$string.disconnected_device));
                                return;
                            }
                            ExcavatorStep4Fragment.this.excavatorEntity.spanDist = ExcavatorStep4Fragment.this.binding.edtValue.getNumericValue();
                            ExcavatorStep4Fragment.this.prepareMode1CalibValuesInMeters();
                            ExcavatorStep4Fragment.this.startLocalCalibration("模式1");
                            return;
                        }
                    }
                    ((BaseActivity) ExcavatorStep4Fragment.this.requireActivity()).showTipDialog(ExcavatorStep4Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep4Fragment.this.getString(R$string.ok), null);
                    return;
                }
                boolean z = ExcavatorStep4Fragment.this.excavatorEntity.distanceBucketMeasure;
                ExcavatorStep4Fragment excavatorStep4Fragment3 = ExcavatorStep4Fragment.this;
                double otherToMeter2 = excavatorStep4Fragment3.formatOtherToMeter(excavatorStep4Fragment3.getGlobalUnit(), ExcavatorStep4Fragment.this.binding.edtAx.getNumericValue(), 3);
                if (z) {
                    otherToMeter = 0.0d;
                } else {
                    ExcavatorStep4Fragment excavatorStep4Fragment4 = ExcavatorStep4Fragment.this;
                    otherToMeter = excavatorStep4Fragment4.formatOtherToMeter(excavatorStep4Fragment4.getGlobalUnit(), ExcavatorStep4Fragment.this.binding.edtDx.getNumericValue(), 3);
                }
                ExcavatorStep4Fragment excavatorStep4Fragment5 = ExcavatorStep4Fragment.this;
                double otherToMeter3 = excavatorStep4Fragment5.formatOtherToMeter(excavatorStep4Fragment5.getGlobalUnit(), ExcavatorStep4Fragment.this.binding.edtAD.getNumericValue(), 3);
                ExcavatorStep4Fragment excavatorStep4Fragment6 = ExcavatorStep4Fragment.this;
                double otherToMeter4 = excavatorStep4Fragment6.formatOtherToMeter(excavatorStep4Fragment6.getGlobalUnit(), ExcavatorStep4Fragment.this.binding.edtBD.getNumericValue(), 3);
                ExcavatorStep4Fragment excavatorStep4Fragment7 = ExcavatorStep4Fragment.this;
                double otherToMeter5 = excavatorStep4Fragment7.formatOtherToMeter(excavatorStep4Fragment7.getGlobalUnit(), ExcavatorStep4Fragment.this.binding.edtCD.getNumericValue(), 3);
                ExcavatorStep4Fragment excavatorStep4Fragment8 = ExcavatorStep4Fragment.this;
                double otherToMeter6 = excavatorStep4Fragment8.formatOtherToMeter(excavatorStep4Fragment8.getGlobalUnit(), ExcavatorStep4Fragment.this.binding.edtBC.getNumericValue(), 3);
                if (otherToMeter2 == 0.0d || ((!z && otherToMeter == 0.0d) || otherToMeter3 == 0.0d || otherToMeter4 == 0.0d || otherToMeter5 == 0.0d || otherToMeter6 == 0.0d)) {
                    ((BaseActivity) ExcavatorStep4Fragment.this.requireActivity()).showTipDialog(ExcavatorStep4Fragment.this.getString(R$string.config_empty), ExcavatorStep4Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (Math.abs(otherToMeter2) < 0.001d || Math.abs(otherToMeter2) > 10.0d) {
                    ((BaseActivity) ExcavatorStep4Fragment.this.requireActivity()).showTipDialog(ExcavatorStep4Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep4Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (!z && (Math.abs(otherToMeter) < 0.001d || Math.abs(otherToMeter) > 10.0d)) {
                    ((BaseActivity) ExcavatorStep4Fragment.this.requireActivity()).showTipDialog(ExcavatorStep4Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep4Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (Math.abs(otherToMeter3) < 0.001d || Math.abs(otherToMeter3) > 10.0d) {
                    ((BaseActivity) ExcavatorStep4Fragment.this.requireActivity()).showTipDialog(ExcavatorStep4Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep4Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (Math.abs(otherToMeter4) < 0.001d || Math.abs(otherToMeter4) > 10.0d) {
                    ((BaseActivity) ExcavatorStep4Fragment.this.requireActivity()).showTipDialog(ExcavatorStep4Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep4Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (Math.abs(otherToMeter5) < 0.001d || Math.abs(otherToMeter5) > 10.0d) {
                    ((BaseActivity) ExcavatorStep4Fragment.this.requireActivity()).showTipDialog(ExcavatorStep4Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep4Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (Math.abs(otherToMeter6) < 0.001d || Math.abs(otherToMeter6) > 10.0d) {
                    ((BaseActivity) ExcavatorStep4Fragment.this.requireActivity()).showTipDialog(ExcavatorStep4Fragment.this.getString(R$string.param_too_large_or_small), ExcavatorStep4Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (ExcavatorStep4Fragment.this.mINS == null) {
                    ((BaseActivity) ExcavatorStep4Fragment.this.requireActivity()).showToastDialog(ExcavatorStep4Fragment.this.getString(R$string.disconnected_device));
                    return;
                }
                int i = ExcavatorStep4Fragment.this.excavatorEntity.mode;
                ExcavatorCalibrateModeEnum excavatorCalibrateModeEnum = ExcavatorCalibrateModeEnum.SENSOR;
                if (i == excavatorCalibrateModeEnum.getMode() && (ExcavatorStep4Fragment.this.mINS.insStaus & InsStatusEnum.SENSORLOST.getStatus()) != 0) {
                    ((BaseActivity) ExcavatorStep4Fragment.this.requireActivity()).showTipDialog(ExcavatorStep4Fragment.this.getString(R$string.sensor_offline), ExcavatorStep4Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (ExcavatorStep4Fragment.this.excavatorEntity.mode == excavatorCalibrateModeEnum.getMode() && YCTApplication.getInstance().getSensorInfo() == null) {
                    ((BaseActivity) ExcavatorStep4Fragment.this.requireActivity()).showTipDialog(ExcavatorStep4Fragment.this.getString(R$string.sensor_offline), ExcavatorStep4Fragment.this.getString(R$string.ok), null);
                    return;
                }
                if (!YCTApplication.getInstance().isDemo() && YCTApplication.getInstance().getCurrentDevice().state != BluetoothStateEnum.CONNECTED.getState()) {
                    ((BaseActivity) ExcavatorStep4Fragment.this.requireActivity()).showToastDialog(ExcavatorStep4Fragment.this.getString(R$string.disconnected_device));
                    return;
                }
                ExcavatorStep4Fragment.this.excavatorEntity.Ax = otherToMeter2;
                ExcavatorStep4Fragment.this.excavatorEntity.Dx = otherToMeter;
                ExcavatorStep4Fragment.this.excavatorEntity.AD = otherToMeter3;
                ExcavatorStep4Fragment.this.excavatorEntity.BD = otherToMeter4;
                ExcavatorStep4Fragment.this.excavatorEntity.CD = otherToMeter5;
                ExcavatorStep4Fragment.this.excavatorEntity.BC = otherToMeter6;
                ExcavatorStep4Fragment.this.excavatorEntity.HA += ExcavatorStep4Fragment.this.excavatorEntity.method == 1 ? 0.025d : 0.0d;
                ExcavatorStep4Fragment.this.startLocalCalibration("模式" + ExcavatorStep4Fragment.this.excavatorEntity.mode);
            }
        });
        initGifShow();
        showData();
    }

    private void initGifShow() {
        setupParamField(this.binding.edtAx, FocusedType.AX);
        setupParamField(this.binding.edtDx, FocusedType.DX);
        setupParamField(this.binding.edtAD, FocusedType.AD);
        setupParamField(this.binding.edtBD, FocusedType.BD);
        setupParamField(this.binding.edtCD, FocusedType.CD);
        setupParamField(this.binding.edtBC, FocusedType.BC);
        this.binding.edtValue.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep4Fragment.4
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    ExcavatorStep4Fragment.this.updateTvDoubtVisibility(false);
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

    private void setupParamField(View view, final FocusedType focusedType) {
        view.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep4Fragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ExcavatorStep4Fragment.this.lastFocusedType = focusedType;
                ExcavatorStep4Fragment.this.updateTvDoubtVisibility(true);
            }
        });
        view.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ExcavatorStep4Fragment.6
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view2, boolean z) {
                if (z) {
                    ExcavatorStep4Fragment.this.lastFocusedType = focusedType;
                    ExcavatorStep4Fragment.this.updateTvDoubtVisibility(true);
                    ExcavatorStep4Fragment.this.updateStepGif(focusedType);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStepGif(FocusedType focusedType) {
        int i;
        int i2;
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        boolean z = excavatorEntity != null && excavatorEntity.distanceBucketMeasure;
        int iOrdinal = focusedType.ordinal();
        if (iOrdinal == 0) {
            i = z ? R$drawable.icon_ax_mode4_sensor : R$drawable.icon_ax_sensor;
            i2 = R$drawable.icon_ax_no_sensor;
        } else if (iOrdinal == 1) {
            i = z ? R$drawable.icon_dx_mode4_sensor : R$drawable.icon_dx_sensor;
            i2 = R$drawable.icon_dx_no_sensor;
        } else if (iOrdinal == 2) {
            i = z ? R$drawable.icon_ad_mode4_sensor : R$drawable.icon_ad_sensor;
            i2 = R$drawable.icon_ad_no_sensor;
        } else if (iOrdinal == 3) {
            i = z ? R$drawable.icon_bc_mode4_sensor : R$drawable.icon_bc_sensor;
            i2 = R$drawable.icon_bc_no_sensor;
        } else if (iOrdinal == 4) {
            i = z ? R$drawable.icon_cd_mode4_sensor : R$drawable.icon_cd_sensor;
            i2 = R$drawable.icon_cd_no_sensor;
        } else {
            if (iOrdinal != 5) {
                return;
            }
            i = z ? R$drawable.icon_bd_mode4_sensor : R$drawable.icon_bd_sensor;
            i2 = R$drawable.icon_bd_no_sensor;
        }
        if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.SENSOR.getMode()) {
            setGifResource(this.binding.ivStep4, i);
        } else if (this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_NOT_FLAT.getMode()) {
            setGifResource(this.binding.ivStep4, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showActualImageDialog() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("AX", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_ax_actual), Integer.valueOf(R$drawable.icon_ax_actual_ceshitu)}));
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        boolean z = excavatorEntity != null && excavatorEntity.distanceBucketMeasure;
        if (!z) {
            linkedHashMap.put("DX", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_dx_actual), Integer.valueOf(R$drawable.icon_dx_actual_ceshitu)}));
        }
        linkedHashMap.put("AD", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_ad_actual)}));
        linkedHashMap.put("BC", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_bc_actual)}));
        linkedHashMap.put("CD", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_cd_actual)}));
        linkedHashMap.put("BD", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_bd_actual)}));
        String strName = this.lastFocusedType.name();
        if (z && FocusedType.DX == this.lastFocusedType) {
            strName = FocusedType.AX.name();
        }
        ActualImageDialogHelper.showCarousel(requireContext(), getResources().getConfiguration(), linkedHashMap, strName, linkedHashMap.size() > 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setContinueProcessing(boolean z) {
        this.continueProcessing = z;
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity == null || excavatorEntity.localId == 0) {
            this.binding.tvContinue.setEnabled(!z);
        }
    }

    private void showData() {
        this.binding.unitDropdownSensor.initUnit(requireContext(), getGlobalUnit());
        refreshMode1UnitLabel(this.binding.tvUnitValue);
        if (this.excavatorEntity.spanDist != 0.0d) {
            this.binding.edtValue.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.spanDist, 3)));
        }
        if (this.excavatorEntity.Ax != 0.0d) {
            this.binding.edtAx.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.Ax, 3)));
        }
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (!excavatorEntity.distanceBucketMeasure && excavatorEntity.Dx != 0.0d) {
            this.binding.edtDx.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.Dx, 3)));
        }
        if (this.excavatorEntity.AD != 0.0d) {
            this.binding.edtAD.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.AD, 3)));
        }
        if (this.excavatorEntity.BD != 0.0d) {
            this.binding.edtBD.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.BD, 3)));
        }
        if (this.excavatorEntity.CD != 0.0d) {
            this.binding.edtCD.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.CD, 3)));
        }
        if (this.excavatorEntity.BC != 0.0d) {
            this.binding.edtBC.setText(formatDouble(formatMetertoOther(getGlobalUnit(), this.excavatorEntity.BC, 3)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareMode1CalibValuesInMeters() {
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        double otherToMeter = formatOtherToMeter(getGlobalUnit(), this.excavatorEntity.deviceHeight, 3);
        ExcavatorEntity excavatorEntity2 = this.excavatorEntity;
        excavatorEntity.deviceHeight = otherToMeter + (excavatorEntity2.method == 1 ? 0.025d : 0.0d);
        excavatorEntity2.leftDist = formatOtherToMeter(getGlobalUnit(), this.excavatorEntity.leftDist, 3);
        this.excavatorEntity.rigthDist = formatOtherToMeter(getGlobalUnit(), this.excavatorEntity.rigthDist, 3);
        this.excavatorEntity.spanDist = formatOtherToMeter(getGlobalUnit(), this.excavatorEntity.spanDist, 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startLocalCalibration(String str) {
        showLoadingDialog(getString(R$string.please_wait));
        setContinueProcessing(true);
        final InsNavi insNavi = this.mINS;
        final SensorInfoEvent sensorInfo = YCTApplication.getInstance().getSensorInfo();
        ExcavatorCalibHelper.log("挖机校准 -> 模式" + this.excavatorEntity.mode + "：", str, this.mGGA, this.mINS, YCTApplication.getInstance().getSensorInfo());
        new Thread(new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorStep4Fragment.7
            @Override // java.lang.Runnable
            public void run() {
                final ExcavatorCalibHelper.Result resultCalibrate = ExcavatorCalibHelper.calibrate(ExcavatorStep4Fragment.this.excavatorEntity, insNavi, sensorInfo);
                if (ExcavatorStep4Fragment.this.isAdded()) {
                    ExcavatorStep4Fragment.this.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorStep4Fragment.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ExcavatorStep4Fragment.this.cancelLoadingDialog();
                            if (resultCalibrate.isSuccess()) {
                                ExcavatorStep4Fragment.this.onLocalCalibrationSuccess(resultCalibrate.calibParamsBase64);
                                return;
                            }
                            ExcavatorStep4Fragment.this.setContinueProcessing(false);
                            CalibrateSessionHelper.clearAwaitSetParamReply();
                            CalibrateLogToFile.e("挖机校准失败，code=" + resultCalibrate.code);
                            ((BaseActivity) ExcavatorStep4Fragment.this.requireActivity()).showTipDialog(ExcavatorStep4Fragment.this.getString(R$string.calibration_failed_check_unit_or_params), ExcavatorStep4Fragment.this.getString(R$string.ok), null);
                        }
                    });
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLocalCalibrationSuccess(String str) {
        CalibrateLogToFile.i("挖机校准成功");
        Toast.makeText(requireContext(), R$string.config_success, 0).show();
        String strBuildCalibParamsId = CalibParamsIdUtil.buildCalibParamsId(this.excavatorEntity);
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        excavatorEntity.calibParamsId = strBuildCalibParamsId;
        excavatorEntity.calibParams = str;
        if (!CalibrateLogToFile.hasActiveSession()) {
            CalibrateSessionHelper.beginForExcavator(requireContext(), this.excavatorEntity, "local");
        }
        recordClassicGoAndSetParam(strBuildCalibParamsId, str);
        boolean zSyncCalibParamsToDevice = syncCalibParamsToDevice(strBuildCalibParamsId, str);
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("ok", Boolean.TRUE);
        String str2 = this.excavatorEntity.name;
        if (str2 == null) {
            str2 = "";
        }
        jsonObject.addProperty("name", str2);
        jsonObject.addProperty("calib_params_id", strBuildCalibParamsId);
        ExcavatorEntity excavatorEntity2 = this.excavatorEntity;
        CalibrateLogToFile.updateSessionExcavator(excavatorEntity2.localId, excavatorEntity2.name);
        if (zSyncCalibParamsToDevice) {
            CalibrateSessionHelper.scheduleEndAfterSetParamReply(jsonObject);
        } else {
            CalibrateSessionHelper.clearAwaitSetParamReply();
            CalibrateLogToFile.endSession(true, jsonObject);
        }
        if (this.excavatorEntity.localId == 0) {
            saveCalibrateResult(strBuildCalibParamsId, str);
        }
    }

    private void recordClassicGoAndSetParam(String str, String str2) {
        SensorInfoEvent sensorInfo = YCTApplication.getInstance().getSensorInfo();
        boolean z = this.excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode();
        if (z) {
            CalibrateSessionHelper.recordMode1Input(this.excavatorEntity, this.mGGA, this.mINS, sensorInfo);
        } else {
            CalibrateSessionHelper.recordMode23Input(this.excavatorEntity, this.mGGA, this.mINS, sensorInfo);
        }
        JsonObject jsonObject = new JsonObject();
        if (z) {
            jsonObject.addProperty("cmd", CalibrateSessionHelper.buildMode1GoCmd(this.excavatorEntity));
        } else {
            jsonObject.addProperty("cmd", CalibrateSessionHelper.buildMode23GoCmd(this.excavatorEntity));
        }
        CalibrateSessionHelper.recordCmdWithLive("GO", jsonObject, this.mGGA, this.mINS, sensorInfo, null);
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.add("set_param", CalibrateSessionHelper.buildSetParam(str, str2));
        CalibrateSessionHelper.recordCmdWithLive("SET_PARAM", jsonObject2, this.mGGA, this.mINS, sensorInfo, null);
    }

    private boolean syncCalibParamsToDevice(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || YCTApplication.getInstance().isDemo() || YCTApplication.getInstance().getCurrentDevice().state != BluetoothStateEnum.CONNECTED.getState()) {
            return false;
        }
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "CALIBRATE,,SET_PARAM," + str + "," + str2));
        return true;
    }

    private void saveCalibrateResult(String str, String str2) {
        if (TextUtils.isEmpty(this.excavatorEntity.name) || DatabaseManager.getInstance(requireContext()).isExcavatorNameExists(this.excavatorEntity.name)) {
            setContinueProcessing(false);
            return;
        }
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        excavatorEntity.calibParamsId = str;
        excavatorEntity.calibParams = str2;
        excavatorEntity.localId = DatabaseManager.getInstance(requireContext()).insertExcavator(this.excavatorEntity);
        requireActivity().setResult(-1);
        this.request = true;
        NetworkUserLoader.getInstance().createExcavator(requireContext(), this.excavatorEntity);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(CreateExcavatorResponse createExcavatorResponse) {
        if (this.request) {
            this.request = false;
            showVerifyAccuracy();
        }
    }

    private void showVerifyAccuracy() {
        if (getActivity() instanceof ExcavatorCreateActivity) {
            ((ExcavatorCreateActivity) requireActivity()).showVerifyAccuracy();
        }
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
        if (gGAEntity == null || gGAEntity.deviceType != DeviceType.ZPY) {
            return;
        }
        this.mGGA = gGAEntity;
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
        if (insNavi == null || insNavi.deviceType != DeviceType.ZPY) {
            return;
        }
        this.mINS = insNavi;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        setGifPlaying(this.binding.ivStep4, false);
        super.onPause();
        EventBus.getDefault().unregister(this);
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        FragmentExcavatorStep4Binding fragmentExcavatorStep4Binding = this.binding;
        recycleGif(fragmentExcavatorStep4Binding != null ? fragmentExcavatorStep4Binding.ivStep4 : null);
        super.onDestroyView();
    }
}
