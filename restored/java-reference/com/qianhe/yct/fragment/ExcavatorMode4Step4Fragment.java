package com.qianhe.yct.fragment;

import android.R;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RadioGroup;
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
import com.qianhe.rtkclientlib.event.SetCalibrateParamEvent;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1;
import com.qianhe.yct.activity.excavator.ExcavatorCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentExcavatorMode4Step4Binding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.ActualImageDialogHelper;
import com.qianhe.yct.enums.InsStatusEnum;
import com.qianhe.yct.event.CreateExcavatorResponse;
import com.qianhe.yct.utils.CalibParamsIdUtil;
import com.qianhe.yct.utils.CalibrateSessionHelper;
import com.qianhe.yct.utils.ExcavatorCalibHelper;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.utils.NotFixedSolutionTipHelper;
import java.lang.reflect.Array;
import java.util.LinkedHashMap;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorMode4Step4Fragment extends BaseProjectFragment {
    private boolean awaitSetParamBeforeVerify;
    private FragmentExcavatorMode4Step4Binding binding;
    private boolean continueProcessing;
    private ExcavatorEntity excavatorEntity;
    private GGAEntity mGGA;
    private InsNavi mINS;
    private final NotFixedSolutionTipHelper notFixedTipHelper = new NotFixedSolutionTipHelper(this);
    private Dialog postureTipsDialog;
    private boolean request;
    private boolean setParamReadyForVerify;
    private boolean uploadReadyForVerify;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentExcavatorMode4Step4Binding.inflate(getLayoutInflater());
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
        this.excavatorEntity = resolveExcavatorEntity();
        this.binding.tvContinue.setEnabled(false);
        initView();
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        EventBus.getDefault().register(this);
        this.binding.unitDropdownSensor.initUnit(requireContext(), getGlobalUnit());
        showDxStepGif();
        showPostureTipsDialog();
        this.notFixedTipHelper.onPageResume(currentGga());
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.notFixedTipHelper.onPagePause();
        dismissPostureTipsDialog();
        setGifPlaying(this.binding.ivStep, false);
        super.onPause();
        EventBus.getDefault().unregister(this);
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        dismissPostureTipsDialog();
        FragmentExcavatorMode4Step4Binding fragmentExcavatorMode4Step4Binding = this.binding;
        recycleGif(fragmentExcavatorMode4Step4Binding != null ? fragmentExcavatorMode4Step4Binding.ivStep : null);
        super.onDestroyView();
    }

    private void showPostureTipsDialog() {
        if (!isAdded() || getContext() == null) {
            return;
        }
        dismissPostureTipsDialog();
        final Dialog dialog = new Dialog(requireContext());
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.dialog_mode4_step4_posture_tips, (ViewGroup) null);
        dialog.setContentView(viewInflate);
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        viewInflate.findViewById(R$id.tvOk).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        int i = getResources().getDisplayMetrics().widthPixels;
        float f = getResources().getConfiguration().orientation == 2 ? 0.68f : 0.9f;
        Window window = dialog.getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = (int) (i * f);
            attributes.height = -2;
            attributes.gravity = 17;
            window.setAttributes(attributes);
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        this.postureTipsDialog = dialog;
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda7
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ExcavatorMode4Step4Fragment.m2358$r8$lambda$lvryEjc8QMO8dmi4GXHkDErY4(this.f$0, dialogInterface);
            }
        });
        dialog.show();
    }

    /* renamed from: $r8$lambda$-lv-ryEjc8QMO8dmi4GXHkDErY4, reason: not valid java name */
    public static /* synthetic */ void m2358$r8$lambda$lvryEjc8QMO8dmi4GXHkDErY4(ExcavatorMode4Step4Fragment excavatorMode4Step4Fragment, DialogInterface dialogInterface) {
        if (excavatorMode4Step4Fragment.postureTipsDialog == dialogInterface) {
            excavatorMode4Step4Fragment.postureTipsDialog = null;
        }
    }

    private void dismissPostureTipsDialog() {
        Dialog dialog = this.postureTipsDialog;
        if (dialog != null && dialog.isShowing()) {
            this.postureTipsDialog.dismiss();
        }
        this.postureTipsDialog = null;
    }

    private void initView() {
        this.binding.edtDx.setFillZeroOnBlur(false);
        this.binding.tvDoubt.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.showActualImageDialog();
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onPreviousClick();
            }
        });
        this.binding.rgPlumbSide.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda3
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                this.f$0.showDxStepGif();
            }
        });
        this.binding.edtDx.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                ExcavatorMode4Step4Fragment.m2362$r8$lambda$xpMjISEJlOgqvvKPz7ECsK_3xY(this.f$0, view, z);
            }
        });
        this.binding.edtDx.addTextChangedListener(new TextWatcher() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step4Fragment.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                ExcavatorMode4Step4Fragment.this.refreshContinueEnabled();
            }
        });
        this.binding.tvContinue.setText(R$string.btn_complete);
        bindContinueClick(this.binding.tvContinue, new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onContinueClick();
            }
        });
        showData();
        showDxStepGif();
        refreshContinueEnabled();
    }

    /* renamed from: $r8$lambda$xpMjISEJlOgqvvKPz7ECsK-_3xY, reason: not valid java name */
    public static /* synthetic */ void m2362$r8$lambda$xpMjISEJlOgqvvKPz7ECsK_3xY(ExcavatorMode4Step4Fragment excavatorMode4Step4Fragment, View view, boolean z) {
        if (z) {
            excavatorMode4Step4Fragment.showDxStepGif();
        } else {
            excavatorMode4Step4Fragment.getClass();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPreviousClick() {
        if (this.continueProcessing) {
            return;
        }
        clearCapturedAttitudes();
        trimLastReAttitude();
        EventBus.getDefault().post("previous");
    }

    private void clearCapturedAttitudes() {
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity == null) {
            return;
        }
        excavatorEntity.aDeviceRoll = 0.0d;
        excavatorEntity.aDevicePitch = 0.0d;
        excavatorEntity.aDeviceHeading = 0.0d;
        excavatorEntity.bDeviceRoll = 0.0d;
        excavatorEntity.bDevicePitch = 0.0d;
        excavatorEntity.bDeviceHeading = 0.0d;
        excavatorEntity.bSensorRoll = 0.0d;
        excavatorEntity.bSensorPitch = 0.0d;
        excavatorEntity.bSensorHeading = 0.0d;
    }

    private void trimLastReAttitude() {
        double[][] dArr;
        int length;
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity == null || (dArr = excavatorEntity.reDeviceAttitudes) == null || (length = dArr.length) <= 0) {
            return;
        }
        if (length == 1) {
            excavatorEntity.reDeviceAttitudes = null;
            excavatorEntity.reSensorAttitudes = null;
            return;
        }
        int i = length - 1;
        excavatorEntity.reDeviceAttitudes = copyShrink(dArr, i);
        ExcavatorEntity excavatorEntity2 = this.excavatorEntity;
        double[][] dArr2 = excavatorEntity2.reSensorAttitudes;
        if (dArr2 == null || dArr2.length < length) {
            return;
        }
        excavatorEntity2.reSensorAttitudes = copyShrink(dArr2, i);
    }

    private static double[][] copyShrink(double[][] dArr, int i) {
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, 3);
        for (int i2 = 0; i2 < i; i2++) {
            double[] dArr3 = dArr[i2];
            if (dArr3 != null) {
                System.arraycopy(dArr3, 0, dArr2[i2], 0, 3);
            }
        }
        return dArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDxStepGif() {
        final int i;
        FragmentExcavatorMode4Step4Binding fragmentExcavatorMode4Step4Binding = this.binding;
        if (fragmentExcavatorMode4Step4Binding == null) {
            return;
        }
        if (fragmentExcavatorMode4Step4Binding.rbPlumbRight.isChecked()) {
            i = R$drawable.icon_dx_mode4_plumb_right;
        } else {
            i = R$drawable.icon_dx_mode4_plumb_left;
        }
        this.binding.ivStep.post(new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                ExcavatorMode4Step4Fragment.m2359$r8$lambda$19EfnneTRg68oetOw1mGBzP5n4(this.f$0, i);
            }
        });
    }

    /* renamed from: $r8$lambda$19EfnneTRg6-8oetOw1mGBzP5n4, reason: not valid java name */
    public static /* synthetic */ void m2359$r8$lambda$19EfnneTRg68oetOw1mGBzP5n4(ExcavatorMode4Step4Fragment excavatorMode4Step4Fragment, int i) {
        if (excavatorMode4Step4Fragment.binding == null || !excavatorMode4Step4Fragment.isAdded()) {
            return;
        }
        excavatorMode4Step4Fragment.setGifResource(excavatorMode4Step4Fragment.binding.ivStep, i);
        excavatorMode4Step4Fragment.setGifPlaying(excavatorMode4Step4Fragment.binding.ivStep, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showActualImageDialog() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("DX", BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{Integer.valueOf(R$drawable.icon_dx_actual), Integer.valueOf(R$drawable.icon_dx_actual_ceshitu)}));
        ActualImageDialogHelper.showCarousel(requireContext(), getResources().getConfiguration(), linkedHashMap, "DX", false);
    }

    private boolean isDxEmpty() {
        Editable text = this.binding.edtDx.getText();
        if (text == null) {
            return true;
        }
        String strTrim = text.toString().trim();
        return strTrim.isEmpty() || ".".equals(strTrim);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshContinueEnabled() {
        FragmentExcavatorMode4Step4Binding fragmentExcavatorMode4Step4Binding = this.binding;
        if (fragmentExcavatorMode4Step4Binding == null) {
            return;
        }
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        fragmentExcavatorMode4Step4Binding.tvContinue.setEnabled((!(excavatorEntity == null || (excavatorEntity.localId > 0L ? 1 : (excavatorEntity.localId == 0L ? 0 : -1)) == 0) || this.continueProcessing || isDxEmpty()) ? false : true);
    }

    private void showData() {
        this.binding.unitDropdownSensor.initUnit(requireContext(), getGlobalUnit());
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity == null || excavatorEntity.Dx == 0.0d) {
            return;
        }
        this.binding.edtDx.setText(formatDouble(formatMetertoOther(getGlobalUnit(), Math.abs(this.excavatorEntity.Dx), 3)));
        this.binding.rbPlumbLeft.setChecked(this.excavatorEntity.Dx < 0.0d);
        this.binding.rbPlumbRight.setChecked(this.excavatorEntity.Dx > 0.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onContinueClick() {
        if (this.continueProcessing) {
            return;
        }
        if (isDxEmpty()) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.config_empty), getString(R$string.ok), null);
            return;
        }
        if (this.notFixedTipHelper.checkOnContinue(currentGga())) {
            double otherToMeter = formatOtherToMeter(getGlobalUnit(), this.binding.edtDx.getNumericValue(), 3);
            if (otherToMeter != 0.0d && (Math.abs(otherToMeter) < 0.001d || Math.abs(otherToMeter) > 10.0d)) {
                ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.param_too_large_or_small), getString(R$string.ok), null);
                return;
            }
            InsNavi insNavi = this.mINS;
            if (insNavi == null) {
                ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.disconnected_device));
                return;
            }
            if ((insNavi.insStaus & InsStatusEnum.SENSORLOST.getStatus()) != 0) {
                ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.sensor_offline), getString(R$string.ok), null);
                return;
            }
            SensorInfoEvent sensorInfo = YCTApplication.getInstance().getSensorInfo();
            if (sensorInfo == null) {
                ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.sensor_offline), getString(R$string.ok), null);
                return;
            }
            if (!YCTApplication.getInstance().isDemo() && YCTApplication.getInstance().getCurrentDevice().state != BluetoothStateEnum.CONNECTED.getState()) {
                ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.disconnected_device));
                return;
            }
            ExcavatorEntity excavatorEntity = this.excavatorEntity;
            boolean zIsChecked = this.binding.rbPlumbLeft.isChecked();
            double dAbs = Math.abs(otherToMeter);
            if (zIsChecked) {
                dAbs = -dAbs;
            }
            excavatorEntity.Dx = dAbs;
            ExcavatorEntity excavatorEntity2 = this.excavatorEntity;
            excavatorEntity2.HA += excavatorEntity2.method == 1 ? 0.025d : 0.0d;
            excavatorEntity2.phaseToHang = ((BaseActivity) requireActivity()).calculatePhaseToHang();
            ExcavatorEntity excavatorEntity3 = this.excavatorEntity;
            InsNavi insNavi2 = this.mINS;
            double d = insNavi2.rollDegrees;
            excavatorEntity3.aDeviceRoll = d;
            double d2 = insNavi2.pitchDegrees;
            excavatorEntity3.aDevicePitch = d2;
            double d3 = insNavi2.headingDegrees;
            excavatorEntity3.aDeviceHeading = d3;
            excavatorEntity3.bDeviceRoll = d;
            excavatorEntity3.bDevicePitch = d2;
            excavatorEntity3.bDeviceHeading = d3;
            excavatorEntity3.bSensorRoll = sensorInfo.rollAngle;
            excavatorEntity3.bSensorPitch = sensorInfo.pitchAngle;
            excavatorEntity3.bSensorHeading = sensorInfo.headingAngle;
            recordMode4HabAndInput(sensorInfo);
            startCalibration();
        }
    }

    private void recordMode4HabAndInput(SensorInfoEvent sensorInfoEvent) {
        if (!CalibrateLogToFile.hasActiveSession()) {
            CalibrateSessionHelper.beginForExcavator(requireContext(), this.excavatorEntity, "local");
            CalibrateLogToFile.w("mode2_1 Step4：无活跃会话，新建 session（若缺 MAKE_TOOL/sweep 请从铲斗步骤重做）");
        } else {
            CalibrateLogToFile.removeEventsFromTagOnward("hab");
        }
        CalibrateSessionHelper.recordCollect("hab", this.mGGA, this.mINS, sensorInfoEvent, null, CalibrateSessionHelper.buildCollectSample(this.mGGA, this.mINS, sensorInfoEvent, this.excavatorEntity.phaseToHang));
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("input", CalibrateSessionHelper.buildMode21Input(this.excavatorEntity));
        CalibrateSessionHelper.recordCmdWithLive("INPUT", jsonObject, this.mGGA, this.mINS, sensorInfoEvent, null);
    }

    private void setContinueProcessing(boolean z) {
        this.continueProcessing = z;
        refreshContinueEnabled();
    }

    private void startCalibration() {
        showLoadingDialog(getString(R$string.please_wait));
        setContinueProcessing(true);
        final InsNavi insNavi = this.mINS;
        final SensorInfoEvent sensorInfo = YCTApplication.getInstance().getSensorInfo();
        ExcavatorCalibHelper.log("挖机校准 -> 模式2_1：", "模式4", this.mGGA, this.mINS, sensorInfo);
        new Thread(new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                ExcavatorMode4Step4Fragment.$r8$lambda$pltLT15tdI63yWIx_oQtoFZgu8g(this.f$0, insNavi, sensorInfo);
            }
        }).start();
    }

    public static /* synthetic */ void $r8$lambda$pltLT15tdI63yWIx_oQtoFZgu8g(final ExcavatorMode4Step4Fragment excavatorMode4Step4Fragment, InsNavi insNavi, SensorInfoEvent sensorInfoEvent) {
        final ExcavatorCalibHelper.Result resultCalibrate = ExcavatorCalibHelper.calibrate(excavatorMode4Step4Fragment.excavatorEntity, insNavi, sensorInfoEvent);
        if (excavatorMode4Step4Fragment.isAdded()) {
            excavatorMode4Step4Fragment.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step4Fragment$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    ExcavatorMode4Step4Fragment.m2360$r8$lambda$6J0SPHjluh_VzLDEF94TBNl9kM(this.f$0, resultCalibrate);
                }
            });
        }
    }

    /* renamed from: $r8$lambda$6J0SPHjluh-_VzLDEF94TBNl9kM, reason: not valid java name */
    public static /* synthetic */ void m2360$r8$lambda$6J0SPHjluh_VzLDEF94TBNl9kM(ExcavatorMode4Step4Fragment excavatorMode4Step4Fragment, ExcavatorCalibHelper.Result result) {
        excavatorMode4Step4Fragment.getClass();
        if (result.isSuccess()) {
            excavatorMode4Step4Fragment.onCalibrationSuccess(result.calibParamsBase64);
            return;
        }
        excavatorMode4Step4Fragment.cancelLoadingDialog();
        excavatorMode4Step4Fragment.setContinueProcessing(false);
        CalibrateLogToFile.removeEventsFromTagOnward("hab");
        CalibrateSessionHelper.clearAwaitSetParamReply();
        CalibrateLogToFile.e("挖机校准失败，code=" + result.code);
        ((BaseActivity) excavatorMode4Step4Fragment.requireActivity()).showTipDialog(excavatorMode4Step4Fragment.getString(R$string.calibration_failed_check_unit_or_params), excavatorMode4Step4Fragment.getString(R$string.ok), null);
    }

    private void onCalibrationSuccess(String str) {
        CalibrateLogToFile.i("挖机校准成功");
        Toast.makeText(requireContext(), R$string.config_success, 0).show();
        String strBuildCalibParamsId = CalibParamsIdUtil.buildCalibParamsId(this.excavatorEntity);
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        excavatorEntity.calibParamsId = strBuildCalibParamsId;
        excavatorEntity.calibParams = str;
        if (!CalibrateLogToFile.hasActiveSession()) {
            CalibrateSessionHelper.beginForExcavator(requireContext(), this.excavatorEntity, "local");
        }
        recordMode4GoAndSetParam(strBuildCalibParamsId, str);
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
        this.awaitSetParamBeforeVerify = zSyncCalibParamsToDevice;
        this.setParamReadyForVerify = !zSyncCalibParamsToDevice;
        this.uploadReadyForVerify = false;
        if (zSyncCalibParamsToDevice) {
            CalibrateSessionHelper.scheduleEndAfterSetParamReply(jsonObject);
        } else {
            CalibrateSessionHelper.clearAwaitSetParamReply();
            CalibrateLogToFile.endSession(true, jsonObject);
        }
        if (this.excavatorEntity.localId == 0) {
            saveCalibrateResult(strBuildCalibParamsId, str);
        } else {
            cancelLoadingDialog();
            setContinueProcessing(false);
        }
    }

    private void recordMode4GoAndSetParam(String str, String str2) {
        SensorInfoEvent sensorInfo = YCTApplication.getInstance().getSensorInfo();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("cmd", CalibrateSessionHelper.buildMode21GoCmd(this.excavatorEntity));
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
            cancelLoadingDialog();
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
            this.uploadReadyForVerify = true;
            maybeShowVerifyAccuracy();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(SetCalibrateParamEvent setCalibrateParamEvent) {
        onDeviceSetParamReply(setCalibrateParamEvent);
    }

    public void onDeviceSetParamReply(SetCalibrateParamEvent setCalibrateParamEvent) {
        if (this.awaitSetParamBeforeVerify) {
            this.awaitSetParamBeforeVerify = false;
            if (setCalibrateParamEvent == null || TextUtils.isEmpty(setCalibrateParamEvent.line) || !setCalibrateParamEvent.line.contains("OK")) {
                this.setParamReadyForVerify = false;
                this.uploadReadyForVerify = false;
                this.request = false;
                cancelLoadingDialog();
                setContinueProcessing(false);
                if (isAdded()) {
                    ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.config_failed_please_check_params), getString(R$string.ok), null);
                    return;
                }
                return;
            }
            this.setParamReadyForVerify = true;
            maybeShowVerifyAccuracy();
        }
    }

    private void maybeShowVerifyAccuracy() {
        if (!this.awaitSetParamBeforeVerify && this.setParamReadyForVerify && this.uploadReadyForVerify) {
            showVerifyAccuracy();
        }
    }

    private void showVerifyAccuracy() {
        cancelLoadingDialog();
        setContinueProcessing(false);
        if (getActivity() instanceof ExcavatorCreateActivity) {
            ((ExcavatorCreateActivity) requireActivity()).showVerifyAccuracy();
        }
    }

    private GGAEntity currentGga() {
        GGAEntity gGAEntity = this.mGGA;
        if (gGAEntity != null) {
            return gGAEntity;
        }
        if (getActivity() instanceof BaseActivity) {
            return ((BaseActivity) getActivity()).mGGA;
        }
        return null;
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void gga(GGAEntity gGAEntity) {
        if (gGAEntity == null || gGAEntity.deviceType != DeviceType.ZPY) {
            return;
        }
        this.mGGA = gGAEntity;
        this.notFixedTipHelper.onGgaUpdated(gGAEntity, isAdded() && isResumed());
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
        if (insNavi == null || insNavi.deviceType != DeviceType.ZPY) {
            return;
        }
        this.mINS = insNavi;
    }
}
