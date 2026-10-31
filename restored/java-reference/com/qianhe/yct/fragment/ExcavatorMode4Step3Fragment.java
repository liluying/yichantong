package com.qianhe.yct.fragment;

import android.R;
import android.app.Dialog;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsAhrs;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.excavator.ExcavatorCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.FragmentExcavatorMode4Step3Binding;
import com.qianhe.yct.dialog.CalibrateDialogFragment;
import com.qianhe.yct.dialog.CheckInsDialogFragment;
import com.qianhe.yct.dialog.CollectingDialogFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.utils.CalibrateSessionHelper;
import com.qianhe.yct.utils.NotFixedSolutionTipHelper;
import java.lang.reflect.Array;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorMode4Step3Fragment extends BaseProjectFragment {
    private static final int[] STEP_IMAGES = {R$drawable.icon_mode4_step3_1, R$drawable.icon_mode4_step3_2, R$drawable.icon_mode4_step3_3, R$drawable.icon_mode4_step3_4};
    private FragmentExcavatorMode4Step3Binding binding;
    private CheckInsDialogFragment checkInsDialog;
    private boolean checkInsDismissedManually;
    private final double[][] deviceAttitudes;
    private boolean enterPostureTipsDismissed;
    private ExcavatorEntity excavatorEntity;
    private boolean hasShownEnterTips;
    private boolean ignoreArmAngleExtendTip;
    private boolean insAvailable;
    private boolean isCollecting;
    private Double latestHeadingDegreesError;
    private GGAEntity mGGA;
    private InsNavi mINS;
    private final NotFixedSolutionTipHelper notFixedTipHelper;
    private boolean sawTiltThisGroup;
    private final double[][] sensorAttitudes;
    private boolean swingClearedThisGroup;
    private int collectIndex = 0;
    private double previousPitch = Double.NaN;

    public ExcavatorMode4Step3Fragment() {
        Class cls = Double.TYPE;
        this.deviceAttitudes = (double[][]) Array.newInstance((Class<?>) cls, 4, 3);
        this.sensorAttitudes = (double[][]) Array.newInstance((Class<?>) cls, 4, 3);
        this.notFixedTipHelper = new NotFixedSolutionTipHelper(this);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentExcavatorMode4Step3Binding.inflate(getLayoutInflater());
        ExcavatorEntity excavatorEntityResolveExcavatorEntity = resolveExcavatorEntity();
        this.excavatorEntity = excavatorEntityResolveExcavatorEntity;
        if (excavatorEntityResolveExcavatorEntity != null && (getActivity() instanceof BaseActivity)) {
            this.excavatorEntity.phaseToHang = ((BaseActivity) getActivity()).calculatePhaseToHang();
        }
        initView();
        initProgressBar();
        restoreCollectedState();
        updateUiForStep();
        refreshRealtimeDisplays();
        return this.binding.getRoot();
    }

    private void initView() {
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step3Fragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onPreviousClick();
            }
        });
        bindContinueClick(this.binding.tvContinue, new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step3Fragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onContinueClick();
            }
        });
    }

    private void initProgressBar() {
        this.binding.lltProgress.removeAllViews();
        for (int i = 0; i < 4; i++) {
            View view = new View(requireContext());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
            if (i > 0) {
                layoutParams.setMarginStart(10);
            }
            view.setLayoutParams(layoutParams);
            view.setBackgroundColor(getResources().getColor(R$color.gray_light));
            this.binding.lltProgress.addView(view);
        }
    }

    private void updateProgressBar() {
        if (this.binding == null) {
            return;
        }
        int i = 0;
        while (i < this.binding.lltProgress.getChildCount()) {
            View childAt = this.binding.lltProgress.getChildAt(i);
            int i2 = this.collectIndex;
            childAt.setBackgroundColor(getResources().getColor(i2 >= 4 || i <= i2 ? R$color.theme : R$color.gray_light));
            i++;
        }
    }

    private void refreshRealtimeDisplays() {
        double d;
        int i;
        int iIndexOfAngleValue;
        int i2;
        boolean z = false;
        if (this.binding == null || !isAdded()) {
            return;
        }
        if (this.collectIndex <= 0) {
            InsNavi insNavi = this.mINS;
            d = insNavi != null ? insNavi.pitchDegrees : 0.0d;
            i = R$string.excavator_mode4_arm_angle;
        } else {
            d = (this.mINS == null || Double.isNaN(this.previousPitch)) ? 0.0d : this.previousPitch - this.mINS.pitchDegrees;
            i = R$string.excavator_mode4_arm_angle_retracted;
        }
        String string = LanguagePrefs.getString(requireContext(), i, Double.valueOf(d));
        SpannableString spannableString = new SpannableString(string);
        this.binding.tvArmAngle.setTextColor(ContextCompat.getColor(requireContext(), R$color.text_black));
        if (this.collectIndex > 0 && (iIndexOfAngleValue = indexOfAngleValue(string)) >= 0) {
            if (canCollectCurrentStep()) {
                i2 = R$color.green;
            } else if (d < 0.0d) {
                i2 = R$color.red;
            } else {
                i2 = R$color.text_black;
            }
            spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(requireContext(), i2)), iIndexOfAngleValue, string.length(), 33);
        }
        this.binding.tvArmAngle.setText(spannableString);
        boolean z2 = this.collectIndex == 0;
        this.binding.tvHeadingError.setVisibility(z2 ? 0 : 8);
        if (z2) {
            Double d2 = this.latestHeadingDegreesError;
            String string2 = LanguagePrefs.getString(requireContext(), R$string.excavator_mode4_heading_error, Double.valueOf(d2 != null ? d2.doubleValue() : 0.0d));
            SpannableString spannableString2 = new SpannableString(string2);
            int iIndexOfAngleValue2 = indexOfAngleValue(string2);
            if (iIndexOfAngleValue2 >= 0) {
                if ((requireActivity() instanceof BaseActivity) && ((BaseActivity) requireActivity()).isHeadingDegreesOK()) {
                    z = true;
                }
                spannableString2.setSpan(new ForegroundColorSpan(ContextCompat.getColor(requireContext(), z ? R$color.green : R$color.red)), iIndexOfAngleValue2, string2.length(), 33);
            }
            this.binding.tvHeadingError.setTextColor(ContextCompat.getColor(requireContext(), R$color.text_black));
            this.binding.tvHeadingError.setText(spannableString2);
        }
    }

    private static int indexOfAngleValue(String str) {
        int i;
        if (str != null && !str.isEmpty()) {
            int iLastIndexOf = str.lastIndexOf(65306);
            if (iLastIndexOf < 0) {
                iLastIndexOf = str.lastIndexOf(58);
            }
            if (iLastIndexOf >= 0 && (i = iLastIndexOf + 1) < str.length()) {
                return i;
            }
        }
        return -1;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        EventBus.getDefault().register(this);
        this.ignoreArmAngleExtendTip = false;
        if (this.binding != null) {
            restoreCollectedState();
            updateUiForStep();
            refreshRealtimeDisplays();
        }
        maybePromptFirstGroupEnter();
        if (this.binding != null) {
            refreshContinueEnabled();
        }
        this.notFixedTipHelper.onPageResume(currentGga());
    }

    private void maybePromptFirstGroupEnter() {
        if (this.collectIndex != 0) {
            this.enterPostureTipsDismissed = true;
            dismissCheckInsIfShowing();
        } else {
            if (this.hasShownEnterTips) {
                return;
            }
            this.hasShownEnterTips = true;
            this.ignoreArmAngleExtendTip = false;
            this.enterPostureTipsDismissed = false;
            resetSwingCheckInsState();
            showEnterPostureTipsDialog();
        }
    }

    private void showEnterPostureTipsDialog() {
        if (!isAdded() || getContext() == null) {
            this.enterPostureTipsDismissed = true;
            refreshContinueEnabled();
            maybeShowCheckInsAfterPostureTips();
            return;
        }
        final Dialog dialog = new Dialog(requireContext());
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.dialog_mode4_step3_posture_tips, (ViewGroup) null);
        dialog.setContentView(viewInflate);
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        ((TextView) viewInflate.findViewById(R$id.tvContent)).setText(R$string.excavator_mode4_step3_posture_tips);
        viewInflate.findViewById(R$id.tvOk).setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step3Fragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExcavatorMode4Step3Fragment.m2354$r8$lambda$Rqrk_tKxuQZ5xL5KZQtxHKyqnI(this.f$0, dialog, view);
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
        dialog.show();
    }

    /* renamed from: $r8$lambda$Rqrk_-tKxuQZ5xL5KZQtxHKyqnI, reason: not valid java name */
    public static /* synthetic */ void m2354$r8$lambda$Rqrk_tKxuQZ5xL5KZQtxHKyqnI(ExcavatorMode4Step3Fragment excavatorMode4Step3Fragment, Dialog dialog, View view) {
        excavatorMode4Step3Fragment.getClass();
        dialog.dismiss();
        excavatorMode4Step3Fragment.enterPostureTipsDismissed = true;
        excavatorMode4Step3Fragment.refreshContinueEnabled();
        excavatorMode4Step3Fragment.maybeShowCheckInsAfterPostureTips();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.hasShownEnterTips = false;
        this.enterPostureTipsDismissed = false;
        FragmentExcavatorMode4Step3Binding fragmentExcavatorMode4Step3Binding = this.binding;
        if (fragmentExcavatorMode4Step3Binding != null) {
            fragmentExcavatorMode4Step3Binding.tvContinue.setEnabled(false);
        }
        resetSwingCheckInsState();
        this.notFixedTipHelper.onPagePause();
        EventBus.getDefault().unregister(this);
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPreviousClick() {
        if (this.isCollecting || handleNavigatePrevious()) {
            return;
        }
        EventBus.getDefault().post("previous");
    }

    public boolean handleNavigatePrevious() {
        if (this.isCollecting) {
            return true;
        }
        if (this.collectIndex <= 0) {
            return false;
        }
        undoLastCollect();
        return true;
    }

    private void undoLastCollect() {
        int i = this.collectIndex - 1;
        this.collectIndex = i;
        clearAttitudeRow(this.deviceAttitudes, i);
        clearAttitudeRow(this.sensorAttitudes, this.collectIndex);
        int i2 = this.collectIndex;
        if (i2 <= 2) {
            ExcavatorEntity excavatorEntity = this.excavatorEntity;
            excavatorEntity.dcDeviceRoll = 0.0d;
            excavatorEntity.dcDevicePitch = 0.0d;
            excavatorEntity.dcDeviceHeading = 0.0d;
            excavatorEntity.dcSensorRoll = 0.0d;
            excavatorEntity.dcSensorPitch = 0.0d;
            excavatorEntity.dcSensorHeading = 0.0d;
        }
        if (i2 > 0) {
            this.previousPitch = this.deviceAttitudes[i2 - 1][1];
        } else {
            this.previousPitch = Double.NaN;
        }
        if (i2 > 0) {
            this.excavatorEntity.reDeviceAttitudes = copyAttitudes(this.deviceAttitudes, i2);
            this.excavatorEntity.reSensorAttitudes = copyAttitudes(this.sensorAttitudes, this.collectIndex);
        } else {
            ExcavatorEntity excavatorEntity2 = this.excavatorEntity;
            excavatorEntity2.reDeviceAttitudes = null;
            excavatorEntity2.reSensorAttitudes = null;
            this.hasShownEnterTips = false;
            this.enterPostureTipsDismissed = false;
            resetSwingCheckInsState();
            maybePromptFirstGroupEnter();
        }
        updateUiForStep();
    }

    private static void clearAttitudeRow(double[][] dArr, int i) {
        if (dArr == null || i < 0 || i >= dArr.length) {
            return;
        }
        double[] dArr2 = dArr[i];
        dArr2[0] = 0.0d;
        dArr2[1] = 0.0d;
        dArr2[2] = 0.0d;
    }

    private void restoreCollectedState() {
        ExcavatorEntity excavatorEntity;
        double[][] dArr;
        double[] dArr2;
        ExcavatorEntity excavatorEntity2;
        this.collectIndex = 0;
        this.previousPitch = Double.NaN;
        for (int i = 0; i < 4; i++) {
            clearAttitudeRow(this.deviceAttitudes, i);
            clearAttitudeRow(this.sensorAttitudes, i);
        }
        boolean z = (getActivity() instanceof ExcavatorCreateActivity) && ((ExcavatorCreateActivity) getActivity()).consumeMode4SweepNeedRestart();
        if (z && (excavatorEntity2 = this.excavatorEntity) != null) {
            excavatorEntity2.clearReAttitudes();
        }
        if (z || (excavatorEntity = this.excavatorEntity) == null || (dArr = excavatorEntity.reDeviceAttitudes) == null) {
            this.hasShownEnterTips = false;
            return;
        }
        int iMin = Math.min(4, dArr.length);
        int i2 = 0;
        while (i2 < iMin) {
            double[] dArr3 = this.excavatorEntity.reDeviceAttitudes[i2];
            if (!hasCollectedAttitudeRow(dArr3)) {
                break;
            }
            System.arraycopy(dArr3, 0, this.deviceAttitudes[i2], 0, 3);
            double[][] dArr4 = this.excavatorEntity.reSensorAttitudes;
            if (dArr4 != null && i2 < dArr4.length && (dArr2 = dArr4[i2]) != null) {
                System.arraycopy(dArr2, 0, this.sensorAttitudes[i2], 0, 3);
            }
            i2++;
            this.collectIndex = i2;
        }
        int i3 = this.collectIndex;
        if (i3 > 0) {
            this.previousPitch = this.deviceAttitudes[i3 - 1][1];
        } else {
            this.hasShownEnterTips = false;
        }
    }

    private static boolean hasCollectedAttitudeRow(double[] dArr) {
        if (dArr == null || dArr.length < 3) {
            return false;
        }
        return (dArr[0] == 0.0d && dArr[1] == 0.0d && dArr[2] == 0.0d) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onContinueClick() {
        if (!this.isCollecting && isEnterTipsReady()) {
            if (shouldBlockForCheckIns()) {
                showCheckInsDialog(true);
                return;
            }
            if (this.collectIndex >= 4) {
                if (this.notFixedTipHelper.checkOnContinue(currentGga())) {
                    ExcavatorEntity excavatorEntity = this.excavatorEntity;
                    if (excavatorEntity != null) {
                        excavatorEntity.syncCalibSoInputsToJson();
                    }
                    this.binding.tvContinue.setEnabled(false);
                    EventBus.getDefault().post("next");
                    return;
                }
                return;
            }
            if (canCollectCurrentStep() && this.notFixedTipHelper.checkOnContinue(currentGga()) && checkSensorOnline()) {
                if (this.collectIndex != 0 || this.ignoreArmAngleExtendTip || checkFirstCollectArmAngle()) {
                    if (this.collectIndex == 0) {
                        BaseActivity baseActivity = (BaseActivity) requireActivity();
                        if (YCTApplication.getInstance().isH5Pro() && !baseActivity.isHeadingDegreesOK()) {
                            baseActivity.showHeadingAccuracyDialog(new CalibrateDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step3Fragment.1
                                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                                public void onClose(boolean z) {
                                }

                                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                                public /* synthetic */ void onClose(boolean z, boolean z2) {
                                    onClose(z);
                                }

                                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                }
                            });
                            return;
                        }
                    }
                    startCountdownCollect();
                }
            }
        }
    }

    private boolean checkFirstCollectArmAngle() {
        InsNavi insNavi = this.mINS;
        if ((insNavi != null ? insNavi.pitchDegrees : 0.0d) >= 40.0d) {
            return true;
        }
        ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.excavator_mode4_extend_stick_to_limit), getString(R$string.ok), getString(R$string.ignore), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step3Fragment.2
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                if (z) {
                    ExcavatorMode4Step3Fragment.this.ignoreArmAngleExtendTip = true;
                }
            }
        });
        return false;
    }

    private boolean checkSensorOnline() {
        if (YCTApplication.getInstance().getSensorInfo() != null) {
            return true;
        }
        ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.sensor_offline), getString(R$string.ok), null);
        return false;
    }

    private void startCountdownCollect() {
        if (this.isCollecting || !isAdded()) {
            return;
        }
        this.isCollecting = true;
        this.binding.tvPrevious.setEnabled(false);
        this.binding.tvContinue.setEnabled(false);
        ((BaseActivity) requireActivity()).showCollectingDialog(getString(R$string.collecting), 2, new CollectingDialogFragment.OnCloseListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step3Fragment$$ExternalSyntheticLambda3
            @Override // com.qianhe.yct.dialog.CollectingDialogFragment.OnCloseListener
            public final void onClose(int i) {
                ExcavatorMode4Step3Fragment.$r8$lambda$VQiibclX9k0hE3qebVqPKc9tG_k(this.f$0, i);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$VQiibclX9k0hE3qebVqPKc9tG_k(ExcavatorMode4Step3Fragment excavatorMode4Step3Fragment, int i) {
        excavatorMode4Step3Fragment.isCollecting = false;
        if (excavatorMode4Step3Fragment.isAdded()) {
            if (i != 0) {
                excavatorMode4Step3Fragment.updateUiForStep();
                return;
            }
            if (!excavatorMode4Step3Fragment.canCollectCurrentStep()) {
                excavatorMode4Step3Fragment.updateUiForStep();
                return;
            }
            if (!excavatorMode4Step3Fragment.notFixedTipHelper.checkOnContinue(excavatorMode4Step3Fragment.currentGga()) || !excavatorMode4Step3Fragment.checkSensorOnline()) {
                excavatorMode4Step3Fragment.updateUiForStep();
            } else if (excavatorMode4Step3Fragment.shouldBlockForCheckIns()) {
                excavatorMode4Step3Fragment.updateUiForStep();
                excavatorMode4Step3Fragment.showCheckInsDialog(true);
            } else {
                excavatorMode4Step3Fragment.performCollect();
            }
        }
    }

    private void performCollect() {
        if (this.mINS == null) {
            ((BaseActivity) requireActivity()).showToastDialog(getString(R$string.disconnected_device));
            updateUiForStep();
            return;
        }
        SensorInfoEvent sensorInfo = YCTApplication.getInstance().getSensorInfo();
        if (sensorInfo == null) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.sensor_offline), getString(R$string.ok), null);
            updateUiForStep();
            return;
        }
        double[][] dArr = this.deviceAttitudes;
        int i = this.collectIndex;
        double[] dArr2 = dArr[i];
        InsNavi insNavi = this.mINS;
        double d = insNavi.rollDegrees;
        dArr2[0] = d;
        double d2 = insNavi.pitchDegrees;
        dArr2[1] = d2;
        double d3 = insNavi.headingDegrees;
        dArr2[2] = d3;
        double[] dArr3 = this.sensorAttitudes[i];
        double d4 = sensorInfo.rollAngle;
        dArr3[0] = d4;
        double d5 = sensorInfo.pitchAngle;
        dArr3[1] = d5;
        double d6 = sensorInfo.headingAngle;
        dArr3[2] = d6;
        if (i == 2) {
            ExcavatorEntity excavatorEntity = this.excavatorEntity;
            excavatorEntity.dcDeviceRoll = d;
            excavatorEntity.dcDevicePitch = d2;
            excavatorEntity.dcDeviceHeading = d3;
            excavatorEntity.dcSensorRoll = d4;
            excavatorEntity.dcSensorPitch = d5;
            excavatorEntity.dcSensorHeading = d6;
        }
        recordMode4CollectEvent(sensorInfo);
        this.previousPitch = this.mINS.pitchDegrees;
        int i2 = this.collectIndex + 1;
        this.collectIndex = i2;
        this.excavatorEntity.reDeviceAttitudes = copyAttitudes(this.deviceAttitudes, i2);
        this.excavatorEntity.reSensorAttitudes = copyAttitudes(this.sensorAttitudes, this.collectIndex);
        dismissCheckInsIfShowing();
        if (this.collectIndex >= 4) {
            EventBus.getDefault().post("next");
        } else {
            updateUiForStep();
        }
    }

    private void recordMode4CollectEvent(SensorInfoEvent sensorInfoEvent) {
        String str;
        if (!CalibrateLogToFile.hasActiveSession()) {
            CalibrateSessionHelper.beginForExcavator(requireContext(), this.excavatorEntity, "local");
        }
        int i = this.collectIndex;
        if (i == 1) {
            str = "sweep2";
        } else if (i == 2) {
            str = "sweep3";
        } else if (i == 3) {
            str = "sweep4";
        } else {
            str = "sweep1";
        }
        String str2 = str;
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        CalibrateSessionHelper.recordCollect(str2, this.mGGA, this.mINS, sensorInfoEvent, this.latestHeadingDegreesError, CalibrateSessionHelper.buildCollectSample(this.mGGA, this.mINS, sensorInfoEvent, excavatorEntity != null ? excavatorEntity.phaseToHang : 0.0d));
    }

    private double[][] copyAttitudes(double[][] dArr, int i) {
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, 3);
        for (int i2 = 0; i2 < i; i2++) {
            System.arraycopy(dArr[i2], 0, dArr2[i2], 0, 3);
        }
        return dArr2;
    }

    private void updateUiForStep() {
        int i;
        if (this.binding == null) {
            return;
        }
        updateProgressBar();
        this.binding.ivStep.setImageResource(STEP_IMAGES[Math.min(Math.max(this.collectIndex, 0), 3)]);
        int i2 = this.collectIndex;
        if (i2 >= 4) {
            this.binding.tvTipsLine1.setText(R$string.excavator_mode4_step3_tips_retract);
            this.binding.tvPrevious.setEnabled(true);
            this.binding.tvContinue.setEnabled(true);
            refreshRealtimeDisplays();
            return;
        }
        if (i2 == 1) {
            i = R$string.excavator_mode4_step3_tips_40;
        } else if (i2 == 2) {
            i = R$string.excavator_mode4_step3_tips_vertical;
        } else if (i2 == 3) {
            i = R$string.excavator_mode4_step3_tips_retract;
        } else {
            i = R$string.excavator_mode4_step3_tips_extend_limit;
        }
        this.binding.tvTipsLine1.setText(i);
        this.binding.tvPrevious.setEnabled(!this.isCollecting);
        refreshContinueEnabled();
        refreshRealtimeDisplays();
    }

    private boolean canCollectCurrentStep() {
        int i = this.collectIndex;
        if (i >= 4 || i <= 0) {
            return true;
        }
        if (this.mINS != null && !Double.isNaN(this.previousPitch)) {
            double d = this.previousPitch - this.mINS.pitchDegrees;
            int i2 = this.collectIndex;
            if (i2 != 1 && i2 != 2) {
                return i2 != 3 || d > 5.0d;
            }
            if (Math.abs(d - 40.0d) <= 10.0d) {
                return true;
            }
        }
        return false;
    }

    private boolean isEnterTipsReady() {
        return this.collectIndex > 0 || this.enterPostureTipsDismissed;
    }

    private void refreshContinueEnabled() {
        FragmentExcavatorMode4Step3Binding fragmentExcavatorMode4Step3Binding = this.binding;
        if (fragmentExcavatorMode4Step3Binding == null) {
            return;
        }
        fragmentExcavatorMode4Step3Binding.tvContinue.setEnabled(!this.isCollecting && canCollectCurrentStep() && isEnterTipsReady());
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
        handleCheckInsOnInsNavi(this.insAvailable);
    }

    @Override // com.qianhe.yct.base.BaseProjectFragment
    public void insNavi(InsNavi insNavi, boolean z) {
        if (insNavi == null || insNavi.deviceType != DeviceType.ZPY) {
            return;
        }
        this.mINS = insNavi;
        this.insAvailable = z;
        if (!this.isCollecting) {
            refreshContinueEnabled();
        }
        refreshRealtimeDisplays();
        handleCheckInsOnInsNavi(z);
    }

    private void maybeShowCheckInsAfterPostureTips() {
        if (this.enterPostureTipsDismissed && isAdded() && this.mINS != null) {
            handleCheckInsOnInsNavi(this.insAvailable);
        }
    }

    private void handleCheckInsOnInsNavi(boolean z) {
        if (isAdded()) {
            trackSwingClearThisGroup(z);
            if (!isFirstGroupCheckIns() || !this.enterPostureTipsDismissed) {
                dismissCheckInsIfShowing();
                return;
            }
            if (!shouldShowSwingCheckIns()) {
                dismissCheckInsIfShowing();
            } else {
                if (this.isCollecting || this.checkInsDismissedManually || this.checkInsDialog != null) {
                    return;
                }
                showCheckInsDialog(false);
            }
        }
    }

    private void trackSwingClearThisGroup(boolean z) {
        if (isFirstGroupCheckIns()) {
            if (ExcavatorCreateActivity.hasTiltReject(this.mINS)) {
                this.sawTiltThisGroup = true;
            }
            if (z && this.sawTiltThisGroup) {
                this.swingClearedThisGroup = true;
            }
        }
    }

    private void showCheckInsDialog(boolean z) {
        if (isAdded() && getParentFragmentManager().findFragmentByTag("CheckInsDialog") == null) {
            CheckInsDialogFragment checkInsDialogFragment = new CheckInsDialogFragment();
            this.checkInsDialog = checkInsDialogFragment;
            checkInsDialogFragment.setOnActionListener(new CheckInsDialogFragment.OnActionListener() { // from class: com.qianhe.yct.fragment.ExcavatorMode4Step3Fragment.3
                @Override // com.qianhe.yct.dialog.CheckInsDialogFragment.OnActionListener
                public void onClose() {
                    ExcavatorMode4Step3Fragment.this.checkInsDismissedManually = true;
                    ExcavatorMode4Step3Fragment.this.checkInsDialog = null;
                }
            });
            this.checkInsDialog.show(getParentFragmentManager(), "CheckInsDialog");
        }
    }

    private boolean shouldBlockForCheckIns() {
        return isFirstGroupCheckIns() && shouldShowSwingCheckIns();
    }

    private boolean isFirstGroupCheckIns() {
        return this.collectIndex == 0;
    }

    private boolean shouldShowSwingCheckIns() {
        GGAEntity gGAEntityCurrentGga;
        if (this.swingClearedThisGroup || (gGAEntityCurrentGga = currentGga()) == null || gGAEntityCurrentGga.quality != 4) {
            return false;
        }
        return ExcavatorCreateActivity.hasTiltReject(this.mINS);
    }

    private void resetSwingCheckInsState() {
        this.sawTiltThisGroup = false;
        this.swingClearedThisGroup = false;
        this.checkInsDismissedManually = false;
        dismissCheckInsIfShowing();
    }

    private void dismissCheckInsIfShowing() {
        CheckInsDialogFragment checkInsDialogFragment = this.checkInsDialog;
        if (checkInsDialogFragment != null) {
            if (checkInsDialogFragment.isAdded()) {
                this.checkInsDialog.dismissAllowingStateLoss();
            }
            this.checkInsDialog = null;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(InsAhrs insAhrs) {
        if (insAhrs == null || insAhrs.deviceType == DeviceType.BASE) {
            return;
        }
        this.latestHeadingDegreesError = Double.valueOf(insAhrs.headingDegreesError);
        refreshRealtimeDisplays();
    }
}
