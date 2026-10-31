package com.qianhe.yct.activity.verifyaccuracy;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentResultListener;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.qh.libexcavator.nativelib.LibExcavator;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsAhrs;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.ShovelAutoGenerateParams;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.GetCalibrateParamEvent;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.rtkclientlib.event.SetCalibrateParamEvent;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$dimen;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.bean.DeviceInfo;
import com.qianhe.yct.databinding.ActivityVerrifyAccuracyBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.CalibrateDialogFragment;
import com.qianhe.yct.dialog.CollectingDialogFragment;
import com.qianhe.yct.dialog.FineTuneHeightInputDialogFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.dialog.VerifyModeDialogFragment;
import com.qianhe.yct.enums.ExcavatorCalibrateModeEnum;
import com.qianhe.yct.event.CreateBucketResponse;
import com.qianhe.yct.event.SwicthBucketEvent;
import com.qianhe.yct.utils.BucketSwitchHelper;
import com.qianhe.yct.utils.CalibParamsIdUtil;
import com.qianhe.yct.utils.CalibrateSessionHelper;
import com.qianhe.yct.utils.ExcavatorCalibHelper;
import com.qianhe.yct.utils.FineTuneExcavatorHelper;
import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class VerifyAccuracyActivity extends BaseActivity {
    private static RetainedVerifyState sRetainedState;
    private ActivityVerrifyAccuracyBinding binding;
    private boolean finishingPreciseCalib;
    private boolean isCollecting;
    private GGAEntity mCurrentGGA;
    private InsNavi mCurrentIns;
    private SensorInfoEvent mCurrentSensorInfo;
    private DatabaseManager mDatabaseManager;
    private boolean mHasHeadingErrorSample;
    private boolean mHasReferenceLlh;
    private boolean mHeadingErrorHiddenForCurrentStep;
    private boolean mHeightInputReady;
    private boolean mInPreciseCalibPoseUi;
    private VerifyAccuracyCollectPoint mLastCollectedReference;
    private ShovelEntity mPendingBucket;
    private ExcavatorEntity mPendingFineTuneExcavator;
    private List<ExcavatorCalibHelper.FineTuneSample> mPendingFiveSamples;
    private ExcavatorCalibHelper.FineTuneSample mPendingHabSample;
    private double[] mPendingHeightNed;
    private ExcavatorCalibHelper.PreciseHabAdjustResult mPendingPreciseResult;
    private boolean mPreciseCalibrating;
    private boolean mRestoredCollectState;
    private boolean mShowOneClickVerifyTips;
    private boolean mShowingCheckAccuracyDialog;
    private boolean mShowingResult;
    private boolean mSkipModeSelect;
    private String[] mStepActions;
    private boolean suppressAutoCalibrateTips;
    private boolean waitForPositionChange;
    private boolean waitingSetParam;
    private int mCurrentStep = 0;
    private int mTotalSteps = 3;
    private final List<VerifyAccuracyCollectPoint> mCollectedPoints = new ArrayList();
    private ExcavatorEntity currentExcavator = new ExcavatorEntity();
    private int[] mStepImages = {R$drawable.icon_verify_step1, R$drawable.icon_verify_step2, R$drawable.icon_verify_step3, R$drawable.icon_verify_step4, R$drawable.icon_verify_step5};
    private int mVerifyMode = -1;
    private String mOldCalibParams = "";
    private String mOldCalibParamsId = "";
    private String mPendingSourceParams = "";
    private double mNedOriginLat = Double.NaN;
    private double mNedOriginLon = Double.NaN;
    private double mNedOriginElev = Double.NaN;
    private double mReferenceHeightMeters = 0.0d;
    private double mReferenceLat = Double.NaN;
    private double mReferenceLon = Double.NaN;

    private boolean needPreciseMovementCheck(int i) {
        return i == 2 || i == 3 || i == 4;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    static class VerifyAccuracyCollectPoint implements Serializable {
        private static final long serialVersionUID = 1;
        double armPitchDegrees;
        double east;
        double elevation;
        double ggaElevation;
        double ggaLatitude;
        double ggaLongitude;
        boolean ggaValid;
        double headingDegreesError;
        double insElevation;
        double insHeadingDegrees;
        double insLatitude;
        double insLongitude;
        double insPitchDegrees;
        double insRollDegrees;
        boolean insValid;
        double latitude;
        double longitude;
        double north;
        double phaseToHang;
        double sensorHeadingDegrees;
        double sensorPitchDegrees;
        double sensorRollDegrees;
        boolean sensorValid;
        double tipHgtC;
        double tipHgtL;
        double tipHgtR;
        double tipLatC;
        double tipLatL;
        double tipLatR;
        double tipLonC;
        double tipLonL;
        double tipLonR;
        double tipXC;
        double tipXL;
        double tipXR;
        double tipYC;
        double tipYL;
        double tipYR;
        double tipZC;
        double tipZL;
        double tipZR;

        VerifyAccuracyCollectPoint() {
        }
    }

    private static final class RetainedVerifyState implements Serializable {
        private static final long serialVersionUID = 1;
        ArrayList<VerifyAccuracyCollectPoint> collectedPoints;
        int currentStep;
        ExcavatorEntity excavator;
        boolean hasHeadingSample;
        boolean hasPendingPreciseResult;
        boolean hasReferenceLlh;
        double headingError;
        boolean headingHidden;
        boolean heightInputReady;
        boolean inPrecisePoseUi;
        VerifyAccuracyCollectPoint lastReference;
        double nedOriginElev;
        double nedOriginLat;
        double nedOriginLon;
        String oldCalibParams;
        String oldCalibParamsId;
        String pendingCalibParams;
        ArrayList<ExcavatorCalibHelper.FineTuneSample> pendingFiveSamples;
        ExcavatorCalibHelper.FineTuneSample pendingHabSample;
        double[] pendingHeightNed;
        int pendingPreciseCode;
        String pendingSourceParams;
        double pendingStdevAfterHa;
        double pendingStdevNew;
        double pendingStdevOld;
        String pendingToolParams;
        boolean preciseCalibrating;
        double referenceHeightMeters;
        double referenceLat;
        double referenceLon;
        boolean showOneClickVerifyTips;
        boolean showingCheckAccuracyDialog;
        boolean showingResult;
        boolean skipModeSelect;
        int totalSteps;
        int verifyMode;
        boolean waitForPositionChange;

        private RetainedVerifyState() {
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityVerrifyAccuracyBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.mDatabaseManager = DatabaseManager.getInstance(this);
        EventBus eventBus = EventBus.getDefault();
        DeviceType deviceType = DeviceType.ZPY;
        eventBus.post(new OrderBean(deviceType, "LOG,INS.AHRS,ONTIME," + this.appConfig.details.ins_interval));
        Intent intent = getIntent();
        if (intent != null) {
            ExcavatorEntity excavatorEntity = (ExcavatorEntity) intent.getSerializableExtra("currentExcavator");
            if (excavatorEntity != null) {
                this.currentExcavator = excavatorEntity;
                updateTotalStepsFromExcavator();
                cacheOldCalibParams();
            }
            this.mSkipModeSelect = intent.getBooleanExtra("skipVerifyModeSelect", false);
            this.mShowOneClickVerifyTips = intent.getBooleanExtra("showOneClickVerifyTips", false);
            int intExtra = intent.getIntExtra("verifyModeValue", -1);
            if (intExtra == 0 || intExtra == 1) {
                this.mVerifyMode = intExtra;
                this.mSkipModeSelect = true;
            } else if (!intent.getBooleanExtra("showVerifyModeSelect", false)) {
                this.mSkipModeSelect = true;
            }
        }
        restoreCollectStateIfNeeded(bundle);
        initStepText();
        if (!this.mRestoredCollectState || (!this.mInPreciseCalibPoseUi && !this.mShowingResult && !this.mShowingCheckAccuracyDialog && this.mCurrentStep < this.mTotalSteps)) {
            initProgressBar();
        }
        this.binding.tvNext.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VerifyAccuracyActivity.$r8$lambda$nS_hNbu3AXT64nWMzJCQaXONg14(this.f$0, view);
            }
        });
        this.binding.tvCalibrationPointInput.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VerifyAccuracyActivity.$r8$lambda$zc80VCicwUXrzA14MHAwl65ixY4(this.f$0, view);
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VerifyAccuracyActivity.m1878$r8$lambda$xszgv6bFCxoaUjB5Ca_pwGRakE(this.f$0, view);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("bucket_fine_tune_tips", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity.1
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle2) {
                if (str.equals("bucket_fine_tune_tips") && bundle2.getBoolean("confirm")) {
                    VerifyAccuracyActivity.this.startBucketFineTuneActivity();
                }
            }
        });
        getSupportFragmentManager().setFragmentResultListener("go_to_bucket_fine_tune", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity$$ExternalSyntheticLambda3
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) {
                VerifyAccuracyActivity.$r8$lambda$d_8YUP6mGc3cS5zQMTckKFF1S98(this.f$0, str, bundle2);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("precise_calib_use_params", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity$$ExternalSyntheticLambda4
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) {
                VerifyAccuracyActivity.$r8$lambda$wjzBfYQdj8RMbbs3VjuJNwNjuhw(this.f$0, str, bundle2);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("check_accuracy", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity$$ExternalSyntheticLambda5
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) {
                VerifyAccuracyActivity.$r8$lambda$9YR8T5Teymp5W8fv1aYSg0jrKG8(this.f$0, str, bundle2);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("verify_accuracy_end", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity$$ExternalSyntheticLambda6
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) {
                VerifyAccuracyActivity.$r8$lambda$FjV9BSRkVf4vf52NYKNbTWGtAxo(this.f$0, str, bundle2);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("verify_mode", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity$$ExternalSyntheticLambda7
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) {
                VerifyAccuracyActivity.m1879$r8$lambda$2o1BGTdVb47H69rTYCqTp4u6S4(this.f$0, str, bundle2);
            }
        });
        EventBus.getDefault().post(new OrderBean(deviceType, "CALIBRATE,,GET_PARAM"));
        if (this.mRestoredCollectState) {
            applyRestoredUi();
            return;
        }
        this.binding.cvStep.setVisibility(0);
        this.binding.nsvResult.setVisibility(8);
        updateCollectButtonText();
        this.binding.tvPrevious.setVisibility(8);
        updateCollectButtonState();
        if (this.mSkipModeSelect) {
            if (this.mVerifyMode < 0) {
                this.mVerifyMode = 1;
            }
            onVerifyModeSelected();
            if (this.mShowOneClickVerifyTips) {
                showTipDialog(getString(R$string.one_click_fine_tune_collect_samples_tips), getString(R$string.ok), null);
                return;
            }
            return;
        }
        maybeDecideVerifyMode();
    }

    public static /* synthetic */ void $r8$lambda$nS_hNbu3AXT64nWMzJCQaXONg14(VerifyAccuracyActivity verifyAccuracyActivity, View view) {
        if (verifyAccuracyActivity.mInPreciseCalibPoseUi) {
            if (verifyAccuracyActivity.mPreciseCalibrating) {
                return;
            }
            verifyAccuracyActivity.onPreciseCalibNowClick();
        } else if (verifyAccuracyActivity.binding.nsvResult.getVisibility() == 0) {
            verifyAccuracyActivity.showEndConfirmDialog();
        } else {
            if (verifyAccuracyActivity.isCollecting) {
                return;
            }
            verifyAccuracyActivity.onCollectClick();
        }
    }

    public static /* synthetic */ void $r8$lambda$zc80VCicwUXrzA14MHAwl65ixY4(VerifyAccuracyActivity verifyAccuracyActivity, View view) {
        if (verifyAccuracyActivity.mPreciseCalibrating || !verifyAccuracyActivity.mInPreciseCalibPoseUi) {
            return;
        }
        verifyAccuracyActivity.showFineTuneHeightDialog();
    }

    /* renamed from: $r8$lambda$-xszgv6bFCxoaUjB5Ca_pwGRakE, reason: not valid java name */
    public static /* synthetic */ void m1878$r8$lambda$xszgv6bFCxoaUjB5Ca_pwGRakE(VerifyAccuracyActivity verifyAccuracyActivity, View view) {
        if (verifyAccuracyActivity.mPreciseCalibrating || verifyAccuracyActivity.isCollecting) {
            return;
        }
        if (verifyAccuracyActivity.mInPreciseCalibPoseUi) {
            verifyAccuracyActivity.exitPreciseCalibPoseUi();
            return;
        }
        if (verifyAccuracyActivity.binding.nsvResult.getVisibility() == 0) {
            verifyAccuracyActivity.showGoToBucketFineTuneDialog();
            return;
        }
        int i = verifyAccuracyActivity.mCurrentStep;
        if (i > 0) {
            verifyAccuracyActivity.mCurrentStep = i - 1;
        }
        if (verifyAccuracyActivity.mCollectedPoints.size() > verifyAccuracyActivity.mCurrentStep) {
            verifyAccuracyActivity.mCollectedPoints.remove(r2.size() - 1);
        }
        verifyAccuracyActivity.refreshCollectReferenceAfterStepChange();
        verifyAccuracyActivity.resetHeadingErrorCheckForNewStep();
        verifyAccuracyActivity.updateStepUi();
    }

    public static /* synthetic */ void $r8$lambda$d_8YUP6mGc3cS5zQMTckKFF1S98(VerifyAccuracyActivity verifyAccuracyActivity, String str, Bundle bundle) {
        verifyAccuracyActivity.getClass();
        if ("go_to_bucket_fine_tune".equals(str) && bundle.getBoolean("confirm")) {
            if (verifyAccuracyActivity.isPreciseType2()) {
                verifyAccuracyActivity.enterPreciseCalibPoseUi();
            } else {
                verifyAccuracyActivity.startBucketFineTuneActivity();
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$wjzBfYQdj8RMbbs3VjuJNwNjuhw(VerifyAccuracyActivity verifyAccuracyActivity, String str, Bundle bundle) {
        verifyAccuracyActivity.getClass();
        if ("precise_calib_use_params".equals(str)) {
            if (bundle.getBoolean("confirm")) {
                verifyAccuracyActivity.applyPreciseCalibParams();
            } else if (bundle.getBoolean("manual_cancel", false)) {
                verifyAccuracyActivity.clearPendingPreciseFinetune();
                verifyAccuracyActivity.restartPreciseVerifyLoop();
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$9YR8T5Teymp5W8fv1aYSg0jrKG8(VerifyAccuracyActivity verifyAccuracyActivity, String str, Bundle bundle) {
        verifyAccuracyActivity.getClass();
        if ("check_accuracy".equals(str)) {
            verifyAccuracyActivity.mShowingCheckAccuracyDialog = false;
            if (bundle.getBoolean("confirm", false)) {
                verifyAccuracyActivity.restartPreciseVerifyLoop();
            } else if (bundle.getBoolean("manual_cancel", false)) {
                verifyAccuracyActivity.finish();
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$FjV9BSRkVf4vf52NYKNbTWGtAxo(VerifyAccuracyActivity verifyAccuracyActivity, String str, Bundle bundle) {
        verifyAccuracyActivity.getClass();
        if ("verify_accuracy_end".equals(str) && bundle.getBoolean("confirm")) {
            verifyAccuracyActivity.finish();
        }
    }

    /* renamed from: $r8$lambda$2o1BGTdVb47H69rTYCqTp4u6-S4, reason: not valid java name */
    public static /* synthetic */ void m1879$r8$lambda$2o1BGTdVb47H69rTYCqTp4u6S4(VerifyAccuracyActivity verifyAccuracyActivity, String str, Bundle bundle) {
        verifyAccuracyActivity.getClass();
        if ("verify_mode".equals(str)) {
            if (!bundle.getBoolean("confirm")) {
                verifyAccuracyActivity.finish();
            } else {
                verifyAccuracyActivity.mVerifyMode = bundle.getInt("verifyModeValue", 0);
                verifyAccuracyActivity.onVerifyModeSelected();
            }
        }
    }

    private void maybeDecideVerifyMode() {
        int mode;
        if (this.mVerifyMode >= 0 || this.mSkipModeSelect || (mode = ExcavatorCalibHelper.getMode(getActiveCalibParams())) <= 0) {
            return;
        }
        if (mode == 2) {
            this.mVerifyMode = 1;
            onVerifyModeSelected();
        } else if (mode == ExcavatorCalibrateModeEnum.SENSOR.getMode()) {
            showVerifyModeDialog();
        } else {
            this.mVerifyMode = 0;
            onVerifyModeSelected();
        }
    }

    private void showVerifyModeDialog() {
        if (getSupportFragmentManager().findFragmentByTag("VerifyModeDialogFragment") != null) {
            return;
        }
        VerifyModeDialogFragment verifyModeDialogFragment = new VerifyModeDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString("requestKey", "verify_mode");
        verifyModeDialogFragment.setArguments(bundle);
        verifyModeDialogFragment.show(getSupportFragmentManager(), "VerifyModeDialogFragment");
    }

    private void onVerifyModeSelected() {
        this.mHeadingErrorHiddenForCurrentStep = false;
        initStepText();
        updateTotalStepsFromExcavator();
        initProgressBar();
        updateCollectButtonState();
        StringBuilder sb = new StringBuilder();
        sb.append("查验精度模式：");
        sb.append(this.mVerifyMode == 1 ? "标准查验" : "简易查验");
        sb.append("，paramsType=");
        sb.append(ExcavatorCalibHelper.getMode(getActiveCalibParams()));
        CalibrateLogToFile.i(sb.toString());
        CalibrateSessionHelper.beginVerify(this, this.currentExcavator, resolveVerifySessionType());
    }

    private boolean isPreciseMode() {
        return this.mVerifyMode == 1;
    }

    private String resolveVerifySessionType() {
        return isPreciseMode() ? "standard" : "simple";
    }

    private boolean isPreciseType2() {
        return isPreciseMode() && ExcavatorCalibHelper.getMode(getActiveCalibParams()) == ExcavatorCalibrateModeEnum.SENSOR.getMode();
    }

    private void onCollectClick() {
        if (this.mVerifyMode < 0) {
            return;
        }
        if (isPreciseType2()) {
            if (needPreciseMovementCheck(this.mCurrentStep)) {
                if (this.waitForPositionChange && !isPreciseSensorOrGgaMoved(this.mLastCollectedReference)) {
                    showStepActionTip();
                    return;
                }
            } else if (!isPreciseStepConstraintMet(this.mCurrentStep)) {
                showStepActionTip();
                return;
            }
        } else if (this.waitForPositionChange && !isMovementThresholdMet(this.mLastCollectedReference)) {
            showStepActionTip();
            return;
        }
        this.suppressAutoCalibrateTips = false;
        if (this.mAvailable) {
            if (this.isCollecting) {
                return;
            }
            collectAfterHeadingCheck();
            return;
        }
        showCalibrateDialog(new CalibrateDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity.2
            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public /* synthetic */ void onClose(boolean z, boolean z2) {
                onClose(z);
            }

            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public void onConfirm() {
                VerifyAccuracyActivity.this.onCalibrateDialogClosed(true);
            }

            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                if (z) {
                    VerifyAccuracyActivity.this.onCalibrateDialogClosed(true);
                } else {
                    VerifyAccuracyActivity.this.showNextStateAfterCalibrateAutoClose();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCalibrateDialogClosed(boolean z) {
        this.count = 0;
        if (z) {
            this.suppressAutoCalibrateTips = true;
            this.isShowTips = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showNextStateAfterCalibrateAutoClose() {
        this.count = 0;
        if (!this.mAvailable) {
            showCalibrateDialog(new CalibrateDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity.3
                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public /* synthetic */ void onClose(boolean z, boolean z2) {
                    onClose(z);
                }

                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public void onConfirm() {
                    VerifyAccuracyActivity.this.onCalibrateDialogClosed(true);
                }

                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        VerifyAccuracyActivity.this.onCalibrateDialogClosed(true);
                    } else {
                        VerifyAccuracyActivity.this.showNextStateAfterCalibrateAutoClose();
                    }
                }
            });
        } else {
            if (!shouldEnforceHeadingCheck() || isVerifyHeadingOk()) {
                return;
            }
            showHeadingAccuracyDialog(new CalibrateDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity.4
                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public /* synthetic */ void onClose(boolean z, boolean z2) {
                    onClose(z);
                }

                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public void onConfirm() {
                    VerifyAccuracyActivity.this.onCalibrateDialogClosed(true);
                }

                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        VerifyAccuracyActivity.this.onCalibrateDialogClosed(true);
                    } else {
                        VerifyAccuracyActivity.this.showNextStateAfterCalibrateAutoClose();
                    }
                }
            });
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void showCalibrateTips() {
        showCalibrateDialog(new CalibrateDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity.5
            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public /* synthetic */ void onClose(boolean z, boolean z2) {
                onClose(z);
            }

            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public void onConfirm() {
                VerifyAccuracyActivity.this.onCalibrateDialogClosed(true);
            }

            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                if (z) {
                    VerifyAccuracyActivity.this.onCalibrateDialogClosed(true);
                } else {
                    VerifyAccuracyActivity.this.showNextStateAfterCalibrateAutoClose();
                }
            }
        });
    }

    private void collectAfterHeadingCheck() {
        if (shouldEnforceHeadingCheck() && !isVerifyHeadingOk()) {
            updateHeadingErrorDisplay();
            showHeadingAccuracyDialog(new CalibrateDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity.6
                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public /* synthetic */ void onClose(boolean z, boolean z2) {
                    onClose(z);
                }

                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public void onConfirm() {
                    VerifyAccuracyActivity.this.onCalibrateDialogClosed(true);
                }

                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        VerifyAccuracyActivity.this.onCalibrateDialogClosed(true);
                    } else {
                        VerifyAccuracyActivity.this.showNextStateAfterCalibrateAutoClose();
                    }
                }
            });
        } else {
            if (this.isCollecting) {
                return;
            }
            if (isVerifyHeadingErrorEnabled()) {
                this.mHeadingErrorHiddenForCurrentStep = true;
                updateHeadingErrorDisplay();
            }
            startCountdownCollect();
        }
    }

    private boolean isVerifyHeadingErrorEnabled() {
        if (this.mVerifyMode < 0) {
            return false;
        }
        return isPreciseMode() || this.appConfig.details.display_verify_horizontal_error == 1;
    }

    private boolean shouldEnforceHeadingCheck() {
        if (needHeadingAccuracyCheck() && isVerifyHeadingErrorEnabled()) {
            return !this.mHeadingErrorHiddenForCurrentStep;
        }
        return false;
    }

    private boolean isVerifyHeadingOk() {
        return this.mHasHeadingErrorSample && this.latestHeadingDegreesError < 0.2d;
    }

    private void resetHeadingErrorCheckForNewStep() {
        this.mHeadingErrorHiddenForCurrentStep = false;
        this.mHasHeadingErrorSample = false;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    public void showHeadingAccuracyDialog(CalibrateDialogFragment.OnConfirmListener onConfirmListener) {
        if (isVerifyHeadingErrorEnabled()) {
            showHeadingAccuracyDialog(onConfirmListener, 0.2f);
        } else {
            super.showHeadingAccuracyDialog(onConfirmListener);
        }
    }

    private void showStepActionTip() {
        int i = this.mCurrentStep;
        String[] strArr = this.mStepActions;
        if (i < strArr.length) {
            showTipDialog(strArr[i], getString(R$string.ok), null);
        }
    }

    private void startCountdownCollect() {
        this.isCollecting = true;
        this.binding.tvPrevious.setEnabled(false);
        this.binding.tvNext.setEnabled(false);
        showCollectingDialog(getString(R$string.collecting), 2, new CollectingDialogFragment.OnCloseListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity$$ExternalSyntheticLambda12
            @Override // com.qianhe.yct.dialog.CollectingDialogFragment.OnCloseListener
            public final void onClose(int i) {
                VerifyAccuracyActivity.m1881$r8$lambda$QFwdf7GhgJ2srYY1XOyDnSYPnY(this.f$0, i);
            }
        });
    }

    /* renamed from: $r8$lambda$QFwdf7Gh-gJ2srYY1XOyDnSYPnY, reason: not valid java name */
    public static /* synthetic */ void m1881$r8$lambda$QFwdf7GhgJ2srYY1XOyDnSYPnY(VerifyAccuracyActivity verifyAccuracyActivity, int i) {
        verifyAccuracyActivity.isCollecting = false;
        verifyAccuracyActivity.binding.tvPrevious.setEnabled(verifyAccuracyActivity.mCurrentStep > 0);
        if (i != 0) {
            verifyAccuracyActivity.updateHeadingErrorDisplay();
            verifyAccuracyActivity.updateCollectButtonState();
            return;
        }
        if (verifyAccuracyActivity.isPreciseType2()) {
            if (verifyAccuracyActivity.needPreciseMovementCheck(verifyAccuracyActivity.mCurrentStep)) {
                if (verifyAccuracyActivity.waitForPositionChange && !verifyAccuracyActivity.isPreciseSensorOrGgaMoved(verifyAccuracyActivity.mLastCollectedReference)) {
                    verifyAccuracyActivity.showStepActionTip();
                    verifyAccuracyActivity.updateCollectButtonState();
                    return;
                }
            } else if (!verifyAccuracyActivity.isPreciseStepConstraintMet(verifyAccuracyActivity.mCurrentStep)) {
                verifyAccuracyActivity.showStepActionTip();
                verifyAccuracyActivity.updateCollectButtonState();
                return;
            }
        }
        VerifyAccuracyCollectPoint verifyAccuracyCollectPointCaptureCurrentPoint = verifyAccuracyActivity.captureCurrentPoint();
        if (!verifyAccuracyActivity.isValidCollectPoint(verifyAccuracyCollectPointCaptureCurrentPoint)) {
            verifyAccuracyActivity.showToastDialog(verifyAccuracyActivity.getString(R$string.getting_location));
            verifyAccuracyActivity.updateCollectButtonState();
            return;
        }
        verifyAccuracyActivity.mCollectedPoints.add(verifyAccuracyCollectPointCaptureCurrentPoint);
        verifyAccuracyActivity.recordVerifyCollectEvent(verifyAccuracyCollectPointCaptureCurrentPoint, verifyAccuracyActivity.mCollectedPoints.size());
        verifyAccuracyActivity.mLastCollectedReference = verifyAccuracyActivity.copyCollectPoint(verifyAccuracyCollectPointCaptureCurrentPoint);
        verifyAccuracyActivity.waitForPositionChange = true;
        int i2 = verifyAccuracyActivity.mCurrentStep + 1;
        verifyAccuracyActivity.mCurrentStep = i2;
        if (i2 < verifyAccuracyActivity.mTotalSteps) {
            verifyAccuracyActivity.resetHeadingErrorCheckForNewStep();
            verifyAccuracyActivity.updateStepUi();
        } else {
            verifyAccuracyActivity.showResultUi();
        }
    }

    private VerifyAccuracyCollectPoint captureCurrentPoint() {
        VerifyAccuracyCollectPoint verifyAccuracyCollectPoint = new VerifyAccuracyCollectPoint();
        verifyAccuracyCollectPoint.phaseToHang = calculatePhaseToHang();
        GGAEntity gGAEntity = this.mCurrentGGA;
        if (gGAEntity != null) {
            verifyAccuracyCollectPoint.ggaLatitude = gGAEntity.latitude;
            verifyAccuracyCollectPoint.ggaLongitude = gGAEntity.longitude;
            verifyAccuracyCollectPoint.ggaElevation = gGAEntity.elevation;
            verifyAccuracyCollectPoint.ggaValid = true;
        }
        InsNavi insNavi = this.mCurrentIns;
        if (insNavi != null) {
            verifyAccuracyCollectPoint.latitude = insNavi.latitude;
            verifyAccuracyCollectPoint.longitude = insNavi.longitude;
            verifyAccuracyCollectPoint.elevation = insNavi.elevation;
            fillProjectedCoords(verifyAccuracyCollectPoint);
            InsNavi insNavi2 = this.mCurrentIns;
            verifyAccuracyCollectPoint.insLatitude = insNavi2.latitude;
            verifyAccuracyCollectPoint.insLongitude = insNavi2.longitude;
            verifyAccuracyCollectPoint.insElevation = insNavi2.elevation;
            verifyAccuracyCollectPoint.insRollDegrees = insNavi2.rollDegrees;
            verifyAccuracyCollectPoint.insPitchDegrees = insNavi2.pitchDegrees;
            verifyAccuracyCollectPoint.insHeadingDegrees = insNavi2.headingDegrees;
            verifyAccuracyCollectPoint.insValid = true;
            verifyAccuracyCollectPoint.armPitchDegrees = getArmPitchDegrees(insNavi2);
            InsNavi insNavi3 = this.mCurrentIns;
            verifyAccuracyCollectPoint.tipLatL = insNavi3.latitude;
            verifyAccuracyCollectPoint.tipLonL = insNavi3.longitude;
            double d = insNavi3.elevation;
            verifyAccuracyCollectPoint.tipHgtL = d;
            verifyAccuracyCollectPoint.tipXL = insNavi3.east;
            verifyAccuracyCollectPoint.tipYL = insNavi3.north;
            verifyAccuracyCollectPoint.tipZL = d;
            verifyAccuracyCollectPoint.tipLatR = insNavi3.latitudeR;
            verifyAccuracyCollectPoint.tipLonR = insNavi3.longitudeR;
            double d2 = insNavi3.elevationR;
            verifyAccuracyCollectPoint.tipHgtR = d2;
            verifyAccuracyCollectPoint.tipXR = insNavi3.eastR;
            verifyAccuracyCollectPoint.tipYR = insNavi3.northR;
            verifyAccuracyCollectPoint.tipZR = d2;
            verifyAccuracyCollectPoint.tipLatC = insNavi3.latitudeM;
            verifyAccuracyCollectPoint.tipLonC = insNavi3.longitudeM;
            double d3 = insNavi3.elevationM;
            verifyAccuracyCollectPoint.tipHgtC = d3;
            verifyAccuracyCollectPoint.tipXC = insNavi3.eastM;
            verifyAccuracyCollectPoint.tipYC = insNavi3.northM;
            verifyAccuracyCollectPoint.tipZC = d3;
        }
        verifyAccuracyCollectPoint.headingDegreesError = this.latestHeadingDegreesError;
        SensorInfoEvent sensorInfoEvent = this.mCurrentSensorInfo;
        if (sensorInfoEvent != null) {
            verifyAccuracyCollectPoint.sensorRollDegrees = sensorInfoEvent.rollAngle;
            verifyAccuracyCollectPoint.sensorPitchDegrees = sensorInfoEvent.pitchAngle;
            verifyAccuracyCollectPoint.sensorHeadingDegrees = sensorInfoEvent.headingAngle;
            verifyAccuracyCollectPoint.sensorValid = true;
            return verifyAccuracyCollectPoint;
        }
        if (useSensorPitchForMovementCheck()) {
            verifyAccuracyCollectPoint.sensorPitchDegrees = 0.0d;
            verifyAccuracyCollectPoint.sensorValid = true;
        }
        return verifyAccuracyCollectPoint;
    }

    private void fillProjectedCoords(VerifyAccuracyCollectPoint verifyAccuracyCollectPoint) {
        double[] dArr = new double[3];
        if (GnssCoordConvertManager.getInstance().geoToAlignedProj(verifyAccuracyCollectPoint.longitude, verifyAccuracyCollectPoint.latitude, verifyAccuracyCollectPoint.elevation, dArr)) {
            verifyAccuracyCollectPoint.east = dArr[0];
            verifyAccuracyCollectPoint.north = dArr[1];
        }
    }

    private boolean isValidCollectPoint(VerifyAccuracyCollectPoint verifyAccuracyCollectPoint) {
        if (verifyAccuracyCollectPoint == null) {
            return false;
        }
        return (verifyAccuracyCollectPoint.latitude == 0.0d && verifyAccuracyCollectPoint.longitude == 0.0d) ? false : true;
    }

    private double getArmPitchDegrees(InsNavi insNavi) {
        if (YCTApplication.getInstance().isH5Pro()) {
            return insNavi.pitchDegrees;
        }
        return insNavi.pitchDegrees - this.zeroDegrees;
    }

    private VerifyAccuracyCollectPoint copyCollectPoint(VerifyAccuracyCollectPoint verifyAccuracyCollectPoint) {
        VerifyAccuracyCollectPoint verifyAccuracyCollectPoint2 = new VerifyAccuracyCollectPoint();
        verifyAccuracyCollectPoint2.latitude = verifyAccuracyCollectPoint.latitude;
        verifyAccuracyCollectPoint2.longitude = verifyAccuracyCollectPoint.longitude;
        verifyAccuracyCollectPoint2.elevation = verifyAccuracyCollectPoint.elevation;
        verifyAccuracyCollectPoint2.east = verifyAccuracyCollectPoint.east;
        verifyAccuracyCollectPoint2.north = verifyAccuracyCollectPoint.north;
        verifyAccuracyCollectPoint2.armPitchDegrees = verifyAccuracyCollectPoint.armPitchDegrees;
        verifyAccuracyCollectPoint2.sensorPitchDegrees = verifyAccuracyCollectPoint.sensorPitchDegrees;
        verifyAccuracyCollectPoint2.ggaLatitude = verifyAccuracyCollectPoint.ggaLatitude;
        verifyAccuracyCollectPoint2.ggaLongitude = verifyAccuracyCollectPoint.ggaLongitude;
        verifyAccuracyCollectPoint2.ggaElevation = verifyAccuracyCollectPoint.ggaElevation;
        verifyAccuracyCollectPoint2.ggaValid = verifyAccuracyCollectPoint.ggaValid;
        verifyAccuracyCollectPoint2.insLatitude = verifyAccuracyCollectPoint.insLatitude;
        verifyAccuracyCollectPoint2.insLongitude = verifyAccuracyCollectPoint.insLongitude;
        verifyAccuracyCollectPoint2.insElevation = verifyAccuracyCollectPoint.insElevation;
        verifyAccuracyCollectPoint2.insRollDegrees = verifyAccuracyCollectPoint.insRollDegrees;
        verifyAccuracyCollectPoint2.insPitchDegrees = verifyAccuracyCollectPoint.insPitchDegrees;
        verifyAccuracyCollectPoint2.insHeadingDegrees = verifyAccuracyCollectPoint.insHeadingDegrees;
        verifyAccuracyCollectPoint2.insValid = verifyAccuracyCollectPoint.insValid;
        verifyAccuracyCollectPoint2.sensorRollDegrees = verifyAccuracyCollectPoint.sensorRollDegrees;
        verifyAccuracyCollectPoint2.sensorHeadingDegrees = verifyAccuracyCollectPoint.sensorHeadingDegrees;
        verifyAccuracyCollectPoint2.sensorValid = verifyAccuracyCollectPoint.sensorValid;
        verifyAccuracyCollectPoint2.phaseToHang = verifyAccuracyCollectPoint.phaseToHang;
        verifyAccuracyCollectPoint2.headingDegreesError = verifyAccuracyCollectPoint.headingDegreesError;
        verifyAccuracyCollectPoint2.tipLatL = verifyAccuracyCollectPoint.tipLatL;
        verifyAccuracyCollectPoint2.tipLonL = verifyAccuracyCollectPoint.tipLonL;
        verifyAccuracyCollectPoint2.tipHgtL = verifyAccuracyCollectPoint.tipHgtL;
        verifyAccuracyCollectPoint2.tipXL = verifyAccuracyCollectPoint.tipXL;
        verifyAccuracyCollectPoint2.tipYL = verifyAccuracyCollectPoint.tipYL;
        verifyAccuracyCollectPoint2.tipZL = verifyAccuracyCollectPoint.tipZL;
        verifyAccuracyCollectPoint2.tipLatR = verifyAccuracyCollectPoint.tipLatR;
        verifyAccuracyCollectPoint2.tipLonR = verifyAccuracyCollectPoint.tipLonR;
        verifyAccuracyCollectPoint2.tipHgtR = verifyAccuracyCollectPoint.tipHgtR;
        verifyAccuracyCollectPoint2.tipXR = verifyAccuracyCollectPoint.tipXR;
        verifyAccuracyCollectPoint2.tipYR = verifyAccuracyCollectPoint.tipYR;
        verifyAccuracyCollectPoint2.tipZR = verifyAccuracyCollectPoint.tipZR;
        verifyAccuracyCollectPoint2.tipLatC = verifyAccuracyCollectPoint.tipLatC;
        verifyAccuracyCollectPoint2.tipLonC = verifyAccuracyCollectPoint.tipLonC;
        verifyAccuracyCollectPoint2.tipHgtC = verifyAccuracyCollectPoint.tipHgtC;
        verifyAccuracyCollectPoint2.tipXC = verifyAccuracyCollectPoint.tipXC;
        verifyAccuracyCollectPoint2.tipYC = verifyAccuracyCollectPoint.tipYC;
        verifyAccuracyCollectPoint2.tipZC = verifyAccuracyCollectPoint.tipZC;
        return verifyAccuracyCollectPoint2;
    }

    private void refreshCollectReferenceAfterStepChange() {
        if (this.mCollectedPoints.isEmpty()) {
            this.waitForPositionChange = false;
            this.mLastCollectedReference = null;
        } else {
            this.waitForPositionChange = true;
            List<VerifyAccuracyCollectPoint> list = this.mCollectedPoints;
            this.mLastCollectedReference = copyCollectPoint(list.get(list.size() - 1));
        }
    }

    private void updateCollectButtonState() {
        if (this.mInPreciseCalibPoseUi) {
            this.binding.tvNext.setEnabled(!this.mPreciseCalibrating);
            this.binding.tvNext.setSelected(true ^ this.mPreciseCalibrating);
            return;
        }
        if (this.mShowingResult || this.binding.nsvResult.getVisibility() == 0) {
            this.binding.tvNext.setEnabled(true);
            this.binding.tvNext.setSelected(true);
            return;
        }
        if (isPreciseType2()) {
            if (needPreciseMovementCheck(this.mCurrentStep)) {
                if (!this.waitForPositionChange || isPreciseSensorOrGgaMoved(this.mLastCollectedReference)) {
                    zIsPreciseStepConstraintMet = true;
                }
            } else {
                zIsPreciseStepConstraintMet = isPreciseStepConstraintMet(this.mCurrentStep);
            }
            this.binding.tvNext.setEnabled(true ^ this.isCollecting);
            this.binding.tvNext.setSelected(zIsPreciseStepConstraintMet);
            return;
        }
        zIsPreciseStepConstraintMet = !this.waitForPositionChange || isMovementThresholdMet(this.mLastCollectedReference);
        this.binding.tvNext.setEnabled(true ^ this.isCollecting);
        this.binding.tvNext.setSelected(zIsPreciseStepConstraintMet);
    }

    private boolean isPreciseSensorOrGgaMoved(VerifyAccuracyCollectPoint verifyAccuracyCollectPoint) {
        boolean z;
        boolean z2;
        SensorInfoEvent sensorInfoEvent;
        GGAEntity gGAEntity;
        if (verifyAccuracyCollectPoint == null) {
            return true;
        }
        if (!verifyAccuracyCollectPoint.ggaValid || (gGAEntity = this.mCurrentGGA) == null) {
            z = false;
        } else {
            try {
                if (CoordsCalculUtils.calculateDistanceGeodetic(new double[]{verifyAccuracyCollectPoint.ggaLongitude, verifyAccuracyCollectPoint.ggaLatitude, verifyAccuracyCollectPoint.ggaElevation}, new double[]{gGAEntity.longitude, gGAEntity.latitude, gGAEntity.elevation}) >= 0.1d) {
                    return true;
                }
            } catch (RuntimeException unused) {
            }
            z = true;
        }
        if (!verifyAccuracyCollectPoint.sensorValid || (sensorInfoEvent = this.mCurrentSensorInfo) == null) {
            z2 = false;
        } else {
            if (Math.abs(sensorInfoEvent.pitchAngle - verifyAccuracyCollectPoint.sensorPitchDegrees) >= 5.0d) {
                return true;
            }
            z2 = true;
        }
        return (z || z2) ? false : true;
    }

    private boolean isPreciseStepConstraintMet(int i) {
        if (i == 0 || i >= 2) {
            return true;
        }
        InsNavi insNavi = this.mCurrentIns;
        if (insNavi == null) {
            return false;
        }
        double armPitchDegrees = getArmPitchDegrees(insNavi);
        if (i == 1) {
            return !this.mCollectedPoints.isEmpty() && Math.abs(armPitchDegrees - this.mCollectedPoints.get(0).armPitchDegrees) > 15.0d;
        }
        return true;
    }

    private void onRealtimeDataUpdated() {
        InsNavi insNavi;
        if (this.mInPreciseCalibPoseUi) {
            return;
        }
        if (!this.isCollecting && this.binding.nsvResult.getVisibility() != 0 && (isPreciseType2() || this.waitForPositionChange)) {
            updateCollectButtonState();
        }
        if (shouldShowArmAngleScaleBar() && (insNavi = this.mCurrentIns) != null) {
            this.binding.armAngleScaleBar.setCurrentAngle((float) getArmPitchDegrees(insNavi));
        }
        updateHeadingErrorDisplay();
    }

    private boolean shouldShowHeadingError() {
        if (this.mVerifyMode < 0 || this.binding.nsvResult.getVisibility() == 0 || this.mInPreciseCalibPoseUi || !isVerifyHeadingErrorEnabled() || !this.mHasHeadingErrorSample) {
            return false;
        }
        return !this.mHeadingErrorHiddenForCurrentStep;
    }

    private void updateHeadingErrorDisplay() {
        updateHeadingErrorDisplay(true);
    }

    private void updateHeadingErrorDisplay(boolean z) {
        if (this.binding == null || isDestroyed()) {
            return;
        }
        if (z && isVerifyHeadingErrorEnabled() && this.mHasHeadingErrorSample && !this.mHeadingErrorHiddenForCurrentStep && this.binding.nsvResult.getVisibility() != 0 && !this.mInPreciseCalibPoseUi && isVerifyHeadingOk()) {
            this.mHeadingErrorHiddenForCurrentStep = true;
        }
        if (!shouldShowHeadingError()) {
            this.binding.tvHeadingError.setVisibility(8);
            return;
        }
        this.binding.tvHeadingError.setVisibility(0);
        String string = LanguagePrefs.getString(this, R$string.excavator_mode4_heading_error, Double.valueOf(this.latestHeadingDegreesError));
        SpannableString spannableString = new SpannableString(string);
        int iIndexOfHeadingErrorValue = indexOfHeadingErrorValue(string);
        if (iIndexOfHeadingErrorValue >= 0 && !isVerifyHeadingOk()) {
            spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(this, R$color.red)), iIndexOfHeadingErrorValue, string.length(), 33);
        }
        this.binding.tvHeadingError.setTextColor(ContextCompat.getColor(this, R$color.text_black));
        this.binding.tvHeadingError.setText(spannableString);
    }

    private static int indexOfHeadingErrorValue(String str) {
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

    private boolean useSensorPitchForMovementCheck() {
        return ExcavatorCalibHelper.getMode(getActiveCalibParams()) == ExcavatorCalibrateModeEnum.SENSOR.getMode();
    }

    private boolean isMovementThresholdMet(VerifyAccuracyCollectPoint verifyAccuracyCollectPoint) {
        boolean z;
        boolean z2;
        boolean z3;
        SensorInfoEvent sensorInfoEvent;
        if (verifyAccuracyCollectPoint == null) {
            return true;
        }
        InsNavi insNavi = this.mCurrentIns;
        if (insNavi != null) {
            try {
                if (CoordsCalculUtils.calculateDistanceGeodetic(new double[]{verifyAccuracyCollectPoint.longitude, verifyAccuracyCollectPoint.latitude, verifyAccuracyCollectPoint.elevation}, new double[]{insNavi.longitude, insNavi.latitude, insNavi.elevation}) >= 0.1d) {
                    return true;
                }
            } catch (RuntimeException unused) {
            }
            z = true;
        } else {
            z = false;
        }
        InsNavi insNavi2 = this.mCurrentIns;
        if (insNavi2 == null) {
            z2 = false;
        } else {
            if (Math.abs(getArmPitchDegrees(insNavi2) - verifyAccuracyCollectPoint.armPitchDegrees) >= 5.0d) {
                return true;
            }
            z2 = true;
        }
        if (!useSensorPitchForMovementCheck() || (sensorInfoEvent = this.mCurrentSensorInfo) == null) {
            z3 = false;
        } else {
            if (Math.abs(sensorInfoEvent.pitchAngle - verifyAccuracyCollectPoint.sensorPitchDegrees) >= 5.0d) {
                return true;
            }
            z3 = true;
        }
        return (z || z2 || z3) ? false : true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onVerifyAccuracySensorInfo(SensorInfoEvent sensorInfoEvent) {
        if (sensorInfoEvent == null) {
            return;
        }
        this.mCurrentSensorInfo = sensorInfoEvent;
        if (useSensorPitchForMovementCheck() || isPreciseType2()) {
            onRealtimeDataUpdated();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startBucketFineTuneActivity() {
        if (YCTApplication.getInstance().isDemo()) {
            jumpBucketFineTune();
            return;
        }
        DeviceInfo deviceInfoQueryDeviceInfo = DatabaseManager.getInstance(this).queryDeviceInfo(YCTApplication.getInstance().getLastDeviceName());
        if (deviceInfoQueryDeviceInfo == null || TextUtils.isEmpty(deviceInfoQueryDeviceInfo.fmwVersion)) {
            return;
        }
        if (Integer.parseInt(deviceInfoQueryDeviceInfo.fmwVersion.split("\\.")[r0.length - 1]) >= 105) {
            jumpBucketFineTune();
        } else {
            showTipDialog(getString(R$string.firmware_version_not_support_action), getString(R$string.ok), null);
        }
    }

    private void showGoToBucketFineTuneDialog() {
        showTipDialog(getString(R$string.go_to_bucket_fine_tune), getString(R$string.confirm), getString(R$string.cancel), (TipsDialogFragment.OnConfirmListener) null, "go_to_bucket_fine_tune");
    }

    private void showEndConfirmDialog() {
        showTipDialog(getString(R$string.confirm_end_verify_accuracy), getString(R$string.confirm), getString(R$string.cancel), (TipsDialogFragment.OnConfirmListener) null, "verify_accuracy_end");
    }

    private void jumpBucketFineTune() {
        Intent intent = new Intent(this, (Class<?>) BucketFineTuneActivity.class);
        intent.putExtra("currentExcavator", this.currentExcavator);
        intent.putExtra("smartCalibAutoOptimize", true);
        int i = this.mVerifyMode;
        if (i >= 0) {
            intent.putExtra("verifyModeValue", i);
        }
        startActivity(intent);
        finish();
    }

    private FineTuneHeightInputDialogFragment.OnHeightConfirmListener createFineTuneHeightConfirmListener() {
        return new FineTuneHeightInputDialogFragment.OnHeightConfirmListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity.7
            @Override // com.qianhe.yct.dialog.FineTuneHeightInputDialogFragment.OnHeightConfirmListener
            public void onCancel() {
            }

            @Override // com.qianhe.yct.dialog.FineTuneHeightInputDialogFragment.OnHeightConfirmListener
            public void onConfirm(double d, double d2, double d3, boolean z) {
                VerifyAccuracyActivity.this.mReferenceHeightMeters = d;
                VerifyAccuracyActivity.this.mHasReferenceLlh = z && d != 0.0d;
                if (VerifyAccuracyActivity.this.mHasReferenceLlh) {
                    VerifyAccuracyActivity.this.mReferenceLon = d2;
                    VerifyAccuracyActivity.this.mReferenceLat = d3;
                } else {
                    VerifyAccuracyActivity.this.mReferenceLon = Double.NaN;
                    VerifyAccuracyActivity.this.mReferenceLat = Double.NaN;
                }
                VerifyAccuracyActivity.this.mHeightInputReady = true;
                if (VerifyAccuracyActivity.this.mHasReferenceLlh) {
                    CalibrateLogToFile.i("精准校准参考高程(米)：" + VerifyAccuracyActivity.this.mReferenceHeightMeters + "，经纬高：lon=" + VerifyAccuracyActivity.this.mReferenceLon + ",lat=" + VerifyAccuracyActivity.this.mReferenceLat + ",h=" + VerifyAccuracyActivity.this.mReferenceHeightMeters);
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("精准校准参考高程(米)：");
                sb.append(VerifyAccuracyActivity.this.mReferenceHeightMeters);
                sb.append(VerifyAccuracyActivity.this.mReferenceHeightMeters == 0.0d ? "（无有效高程）" : "（手动输入，无经纬）");
                CalibrateLogToFile.i(sb.toString());
            }
        };
    }

    private void showFineTuneHeightDialog() {
        FineTuneHeightInputDialogFragment fineTuneHeightInputDialogFragment = (FineTuneHeightInputDialogFragment) getSupportFragmentManager().findFragmentByTag("FineTuneHeightInputDialogFragment");
        if (fineTuneHeightInputDialogFragment != null) {
            bindFineTuneHeightDialog(fineTuneHeightInputDialogFragment);
            return;
        }
        FineTuneHeightInputDialogFragment fineTuneHeightInputDialogFragment2 = new FineTuneHeightInputDialogFragment();
        if (this.mHeightInputReady) {
            fineTuneHeightInputDialogFragment2.setInitialHeight(this.mReferenceHeightMeters, this.mReferenceLon, this.mReferenceLat, this.mHasReferenceLlh);
        }
        bindFineTuneHeightDialog(fineTuneHeightInputDialogFragment2);
        fineTuneHeightInputDialogFragment2.show(getSupportFragmentManager(), "FineTuneHeightInputDialogFragment");
    }

    private void bindFineTuneHeightDialog(FineTuneHeightInputDialogFragment fineTuneHeightInputDialogFragment) {
        fineTuneHeightInputDialogFragment.setOnHeightConfirmListener(createFineTuneHeightConfirmListener());
    }

    private void restoreFineTuneHeightDialogAfterRotation() {
        FineTuneHeightInputDialogFragment fineTuneHeightInputDialogFragment = (FineTuneHeightInputDialogFragment) getSupportFragmentManager().findFragmentByTag("FineTuneHeightInputDialogFragment");
        if (fineTuneHeightInputDialogFragment != null) {
            bindFineTuneHeightDialog(fineTuneHeightInputDialogFragment);
        }
    }

    private void enterPreciseCalibPoseUi() {
        this.mInPreciseCalibPoseUi = true;
        this.mShowingResult = false;
        this.binding.topBar.tvTitle.setText(R$string.bucket_fine_tune);
        this.binding.nsvResult.setVisibility(8);
        this.binding.cvStep.setVisibility(0);
        this.binding.armAngleScaleBar.setVisibility(8);
        this.binding.tvArmAngleBestTip.setVisibility(8);
        this.binding.tvHeadingError.setVisibility(8);
        this.binding.lltProgress.setVisibility(8);
        this.binding.tvCommonTips.setVisibility(8);
        this.binding.tvStepAction.setText(R$string.precise_calib_pose_tip);
        this.binding.ivStep.setImageResource(R$drawable.icon_hab_mode4_collinear);
        adaptStepTextArea();
        this.binding.tvCalibrationPointInput.setVisibility(0);
        this.binding.tvPrevious.setText(R$string.previous);
        this.binding.tvPrevious.setVisibility(0);
        this.binding.tvPrevious.setEnabled(true);
        this.binding.tvNext.setText(R$string.calibrate_now);
        this.binding.tvNext.setEnabled(true);
        this.binding.tvNext.setSelected(true);
    }

    private void exitPreciseCalibPoseUi() {
        this.mInPreciseCalibPoseUi = false;
        this.binding.tvCalibrationPointInput.setVisibility(8);
        this.binding.topBar.tvTitle.setText(R$string.verify_accuracy);
        showResultUi();
    }

    private void onPreciseCalibNowClick() {
        if (this.mPreciseCalibrating || this.mCollectedPoints.size() < 5) {
            return;
        }
        if (this.mAvailable) {
            startPreciseCalibNow();
        } else {
            showCalibrateDialog(new CalibrateDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity.8
                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public /* synthetic */ void onClose(boolean z, boolean z2) {
                    onClose(z);
                }

                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public void onConfirm() {
                    VerifyAccuracyActivity.this.onCalibrateDialogClosed(true);
                }

                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        VerifyAccuracyActivity.this.onCalibrateDialogClosed(true);
                    } else {
                        VerifyAccuracyActivity.this.showNextStateAfterCalibrateAutoCloseForPreciseCalib();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showNextStateAfterCalibrateAutoCloseForPreciseCalib() {
        this.count = 0;
        if (this.mAvailable) {
            return;
        }
        showCalibrateDialog(new CalibrateDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity.9
            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public /* synthetic */ void onClose(boolean z, boolean z2) {
                onClose(z);
            }

            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public void onConfirm() {
                VerifyAccuracyActivity.this.onCalibrateDialogClosed(true);
            }

            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                if (z) {
                    VerifyAccuracyActivity.this.onCalibrateDialogClosed(true);
                } else {
                    VerifyAccuracyActivity.this.showNextStateAfterCalibrateAutoCloseForPreciseCalib();
                }
            }
        });
    }

    private void startPreciseCalibNow() {
        if (this.mPreciseCalibrating || this.mCollectedPoints.size() < 5) {
            return;
        }
        syncCurrentDeviceSnapshotIfNeeded();
        final String activeCalibParams = getActiveCalibParams();
        if (TextUtils.isEmpty(activeCalibParams)) {
            showTipDialog(getString(R$string.cannot_configure), getString(R$string.ok), null);
            return;
        }
        if (this.mCurrentGGA == null || this.mCurrentIns == null) {
            showToastDialog(getString(R$string.getting_location));
            return;
        }
        cacheOldCalibParams();
        this.mPreciseCalibrating = true;
        updateCollectButtonState();
        showLoadingDialog(getString(R$string.please_wait));
        final List<ExcavatorCalibHelper.FineTuneSample> listBuildFineTuneSamplesFromCollected = buildFineTuneSamplesFromCollected();
        final ExcavatorCalibHelper.FineTuneSample fineTuneSampleCaptureRealtimeFineTuneSample = captureRealtimeFineTuneSample();
        final ArrayList arrayList = new ArrayList();
        arrayList.add(listBuildFineTuneSamplesFromCollected.get(2));
        arrayList.add(listBuildFineTuneSamplesFromCollected.get(3));
        arrayList.add(listBuildFineTuneSamplesFromCollected.get(4));
        final ArrayList arrayList2 = new ArrayList();
        arrayList2.add(listBuildFineTuneSamplesFromCollected.get(0));
        arrayList2.add(listBuildFineTuneSamplesFromCollected.get(1));
        arrayList2.add(listBuildFineTuneSamplesFromCollected.get(3));
        double d = this.mReferenceHeightMeters;
        final double[] dArrResolveReferenceHeightNed = resolveReferenceHeightNed(d);
        final double[] dArrResolveReferenceHeightLlh = resolveReferenceHeightLlh(d);
        new Thread(new Runnable() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                VerifyAccuracyActivity.m1883$r8$lambda$tlFC8OD6NXKEtkOA0q3ZLalvY8(this.f$0, activeCalibParams, fineTuneSampleCaptureRealtimeFineTuneSample, listBuildFineTuneSamplesFromCollected, arrayList, arrayList2, dArrResolveReferenceHeightNed, dArrResolveReferenceHeightLlh);
            }
        }).start();
    }

    /* renamed from: $r8$lambda$tlFC-8OD6NXKEtkOA0q3ZLalvY8, reason: not valid java name */
    public static /* synthetic */ void m1883$r8$lambda$tlFC8OD6NXKEtkOA0q3ZLalvY8(final VerifyAccuracyActivity verifyAccuracyActivity, final String str, final ExcavatorCalibHelper.FineTuneSample fineTuneSample, final List list, List list2, List list3, final double[] dArr, double[] dArr2) {
        verifyAccuracyActivity.getClass();
        final ExcavatorCalibHelper.PreciseHabAdjustResult preciseHabAdjustResultAdjustPreciseHabVertical = ExcavatorCalibHelper.adjustPreciseHabVertical(str, fineTuneSample, list, list2, list3, dArr, dArr2);
        verifyAccuracyActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                VerifyAccuracyActivity.m1880$r8$lambda$OO1TYPJPyk8HYxrh3swU0tZ2Dk(this.f$0, preciseHabAdjustResultAdjustPreciseHabVertical, list, fineTuneSample, dArr, str);
            }
        });
    }

    /* renamed from: $r8$lambda$OO1TYPJPyk8HYxrh3-swU0tZ2Dk, reason: not valid java name */
    public static /* synthetic */ void m1880$r8$lambda$OO1TYPJPyk8HYxrh3swU0tZ2Dk(VerifyAccuracyActivity verifyAccuracyActivity, ExcavatorCalibHelper.PreciseHabAdjustResult preciseHabAdjustResult, List list, ExcavatorCalibHelper.FineTuneSample fineTuneSample, double[] dArr, String str) {
        if (verifyAccuracyActivity.isDestroyed()) {
            return;
        }
        verifyAccuracyActivity.mPreciseCalibrating = false;
        verifyAccuracyActivity.cancelLoadingDialog();
        verifyAccuracyActivity.updateCollectButtonState();
        if (!preciseHabAdjustResult.isSuccess()) {
            CalibrateLogToFile.e("标准查验智能校准失败 code=" + preciseHabAdjustResult.code);
            verifyAccuracyActivity.clearPendingPreciseFinetune();
            verifyAccuracyActivity.showTipDialog(verifyAccuracyActivity.getString(R$string.calibration_failed), verifyAccuracyActivity.getString(R$string.ok), null);
            return;
        }
        verifyAccuracyActivity.mPendingPreciseResult = preciseHabAdjustResult;
        verifyAccuracyActivity.mPendingFiveSamples = list;
        verifyAccuracyActivity.mPendingHabSample = fineTuneSample;
        verifyAccuracyActivity.mPendingHeightNed = dArr;
        verifyAccuracyActivity.mPendingSourceParams = str;
        verifyAccuracyActivity.showTipDialog(verifyAccuracyActivity.getString(R$string.precise_calib_use_params_title), verifyAccuracyActivity.getString(R$string.use), verifyAccuracyActivity.getString(R$string.cancel), String.format(Locale.ROOT, verifyAccuracyActivity.getString(R$string.precise_calib_stdev_compare), Double.valueOf(preciseHabAdjustResult.stdevOld), Double.valueOf(!Double.isNaN(preciseHabAdjustResult.stdevAfterHa) ? preciseHabAdjustResult.stdevAfterHa : preciseHabAdjustResult.stdevNew)), null, "precise_calib_use_params");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPendingPreciseFinetune() {
        this.mPendingPreciseResult = null;
        this.mPendingFiveSamples = null;
        this.mPendingHabSample = null;
        this.mPendingHeightNed = null;
        this.mPendingSourceParams = "";
        this.mPendingBucket = null;
        this.mPendingFineTuneExcavator = null;
    }

    private void recordPreciseFivePointFinetuneEvents(List<ExcavatorCalibHelper.FineTuneSample> list, ExcavatorCalibHelper.FineTuneSample fineTuneSample, String str) {
        double d = this.mReferenceHeightMeters;
        if (d != 0.0d) {
            CalibrateSessionHelper.recordFineTuneKnownHeightPoint(this.mReferenceLat, this.mReferenceLon, d, hasValidReferenceLlh(), this.mPendingHeightNed, this.mCurrentGGA, this.mCurrentIns, this.mCurrentSensorInfo, Double.valueOf(this.latestHeadingDegreesError));
        }
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(CalibrateSessionHelper.buildFineTuneInputSample(list.get(2)));
        jsonArray.add(CalibrateSessionHelper.buildFineTuneInputSample(list.get(3)));
        jsonArray.add(CalibrateSessionHelper.buildFineTuneInputSample(list.get(4)));
        JsonArray jsonArray2 = new JsonArray();
        jsonArray2.add(CalibrateSessionHelper.buildFineTuneInputSample(list.get(0)));
        jsonArray2.add(CalibrateSessionHelper.buildFineTuneInputSample(list.get(1)));
        jsonArray2.add(CalibrateSessionHelper.buildFineTuneInputSample(list.get(3)));
        CalibrateSessionHelper.recordPreciseFivePointEvents(fineTuneSample, ExcavatorCalibHelper.getMode(getActiveCalibParams()), str != null ? str : "", this.mReferenceHeightMeters, jsonArray, jsonArray2, this.mCurrentGGA, this.mCurrentIns, this.mCurrentSensorInfo, Double.valueOf(this.latestHeadingDegreesError));
    }

    private String getActiveCalibParams() {
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        if (excavatorEntity != null && !TextUtils.isEmpty(excavatorEntity.calibParams)) {
            return this.currentExcavator.calibParams;
        }
        return this.mOldCalibParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cacheOldCalibParams() {
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        if (excavatorEntity != null) {
            if (!TextUtils.isEmpty(excavatorEntity.calibParams)) {
                this.mOldCalibParams = this.currentExcavator.calibParams;
            }
            if (TextUtils.isEmpty(this.currentExcavator.calibParamsId)) {
                return;
            }
            this.mOldCalibParamsId = this.currentExcavator.calibParamsId;
        }
    }

    private List<ExcavatorCalibHelper.FineTuneSample> buildFineTuneSamplesFromCollected() {
        this.mNedOriginLat = Double.NaN;
        this.mNedOriginLon = Double.NaN;
        this.mNedOriginElev = Double.NaN;
        ArrayList arrayList = new ArrayList();
        Iterator<VerifyAccuracyCollectPoint> it = this.mCollectedPoints.iterator();
        while (it.hasNext()) {
            arrayList.add(toFineTuneSample(it.next()));
        }
        return arrayList;
    }

    private ExcavatorCalibHelper.FineTuneSample toFineTuneSample(VerifyAccuracyCollectPoint verifyAccuracyCollectPoint) {
        ExcavatorCalibHelper.FineTuneSample fineTuneSample = new ExcavatorCalibHelper.FineTuneSample();
        fineTuneSample.phaseToHang = verifyAccuracyCollectPoint.phaseToHang;
        fineTuneSample.deviceRoll = verifyAccuracyCollectPoint.insRollDegrees;
        fineTuneSample.devicePitch = verifyAccuracyCollectPoint.insPitchDegrees;
        fineTuneSample.deviceHeading = verifyAccuracyCollectPoint.insHeadingDegrees;
        if (verifyAccuracyCollectPoint.sensorValid) {
            fineTuneSample.sensorRoll = verifyAccuracyCollectPoint.sensorRollDegrees;
            fineTuneSample.sensorPitch = verifyAccuracyCollectPoint.sensorPitchDegrees;
            fineTuneSample.sensorHeading = verifyAccuracyCollectPoint.sensorHeadingDegrees;
            fineTuneSample.sensorValid = true;
        }
        boolean z = verifyAccuracyCollectPoint.ggaValid;
        fillPhaseCenterNed(fineTuneSample, z ? verifyAccuracyCollectPoint.ggaLatitude : verifyAccuracyCollectPoint.latitude, z ? verifyAccuracyCollectPoint.ggaLongitude : verifyAccuracyCollectPoint.longitude, z ? verifyAccuracyCollectPoint.ggaElevation : verifyAccuracyCollectPoint.elevation);
        ExcavatorCalibHelper.normalizeFineTuneSample(fineTuneSample);
        return fineTuneSample;
    }

    private ExcavatorCalibHelper.FineTuneSample captureRealtimeFineTuneSample() {
        ExcavatorCalibHelper.FineTuneSample fineTuneSample = new ExcavatorCalibHelper.FineTuneSample();
        fineTuneSample.phaseToHang = calculatePhaseToHang();
        InsNavi insNavi = this.mCurrentIns;
        if (insNavi != null) {
            fineTuneSample.deviceRoll = insNavi.rollDegrees;
            fineTuneSample.devicePitch = insNavi.pitchDegrees;
            fineTuneSample.deviceHeading = insNavi.headingDegrees;
        }
        SensorInfoEvent sensorInfoEvent = this.mCurrentSensorInfo;
        if (sensorInfoEvent != null) {
            fineTuneSample.sensorRoll = sensorInfoEvent.rollAngle;
            fineTuneSample.sensorPitch = sensorInfoEvent.pitchAngle;
            fineTuneSample.sensorHeading = sensorInfoEvent.headingAngle;
            fineTuneSample.sensorValid = true;
        }
        GGAEntity gGAEntity = this.mCurrentGGA;
        if (gGAEntity != null) {
            fillPhaseCenterNed(fineTuneSample, gGAEntity.latitude, gGAEntity.longitude, gGAEntity.elevation);
        }
        ExcavatorCalibHelper.normalizeFineTuneSample(fineTuneSample);
        return fineTuneSample;
    }

    private void fillPhaseCenterNed(ExcavatorCalibHelper.FineTuneSample fineTuneSample, double d, double d2, double d3) {
        if (Double.isNaN(this.mNedOriginLat)) {
            this.mNedOriginLat = d;
            this.mNedOriginLon = d2;
            this.mNedOriginElev = d3;
        }
        double[] dArrLlhToNed = llhToNed(this.mNedOriginLat, this.mNedOriginLon, this.mNedOriginElev, d, d2, d3);
        fineTuneSample.north = dArrLlhToNed[0];
        fineTuneSample.east = dArrLlhToNed[1];
        fineTuneSample.down = dArrLlhToNed[2];
        fineTuneSample.lat = d;
        fineTuneSample.lon = d2;
        fineTuneSample.elev = d3;
    }

    private static double[] llhToNed(double d, double d2, double d3, double d4, double d5, double d6) {
        double radians = Math.toRadians(d);
        return new double[]{Math.toRadians(d4 - d) * 6378137.0d, Math.toRadians(d5 - d2) * 6378137.0d * Math.cos(radians), -(d6 - d3)};
    }

    private double[] resolveReferenceHeightLlh(double d) {
        if (d == 0.0d) {
            return null;
        }
        if (hasValidReferenceLlh()) {
            return new double[]{this.mReferenceLat, this.mReferenceLon, d};
        }
        return new double[]{0.0d, 0.0d, d};
    }

    private double[] resolveReferenceHeightNed(double d) {
        if (d == 0.0d || Double.isNaN(this.mNedOriginLat)) {
            return new double[]{0.0d, 0.0d, 0.0d};
        }
        if (hasValidReferenceLlh()) {
            return llhToNed(this.mNedOriginLat, this.mNedOriginLon, this.mNedOriginElev, this.mReferenceLat, this.mReferenceLon, d);
        }
        return new double[]{0.0d, 0.0d, -(d - this.mNedOriginElev)};
    }

    private boolean hasValidReferenceLlh() {
        return (!this.mHasReferenceLlh || Double.isNaN(this.mReferenceLat) || Double.isNaN(this.mReferenceLon)) ? false : true;
    }

    private void syncCurrentDeviceSnapshotIfNeeded() {
        GGAEntity gGAEntity;
        if (this.mCurrentGGA == null && (gGAEntity = this.mGGA) != null && gGAEntity.deviceType == DeviceType.ZPY) {
            this.mCurrentGGA = gGAEntity;
        }
    }

    private void applyPreciseCalibParams() {
        List<ExcavatorCalibHelper.FineTuneSample> list;
        String str;
        ExcavatorCalibHelper.PreciseHabAdjustResult preciseHabAdjustResult = this.mPendingPreciseResult;
        if (preciseHabAdjustResult == null || !preciseHabAdjustResult.isSuccess() || (list = this.mPendingFiveSamples) == null || list.size() < 5 || this.mPendingHabSample == null) {
            clearPendingPreciseFinetune();
            showTipDialog(getString(R$string.calibration_failed), getString(R$string.ok), null);
            return;
        }
        showLoadingDialog(getString(R$string.please_wait));
        this.finishingPreciseCalib = true;
        CalibrateSessionHelper.beginFinetune(this, this.currentExcavator);
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        CalibrateLogToFile.updateSessionExcavator(excavatorEntity != null ? excavatorEntity.localId : 0L, excavatorEntity != null ? excavatorEntity.name : "");
        recordPreciseFivePointFinetuneEvents(this.mPendingFiveSamples, this.mPendingHabSample, this.mPendingSourceParams);
        ShovelEntity shovelEntityBuildBucketFromAdjustedTool = buildBucketFromAdjustedTool(this.mPendingPreciseResult);
        this.mPendingBucket = shovelEntityBuildBucketFromAdjustedTool;
        shovelEntityBuildBucketFromAdjustedTool.ensureParamsSerialized();
        ExcavatorEntity excavatorEntityBuildFineTuneExcavator = FineTuneExcavatorHelper.buildFineTuneExcavator(this, this.currentExcavator, this.mPendingBucket, this.mPendingPreciseResult.calibParamsBase64);
        this.mPendingFineTuneExcavator = excavatorEntityBuildFineTuneExcavator;
        String str2 = excavatorEntityBuildFineTuneExcavator.calibParamsId;
        String str3 = this.mPendingPreciseResult.calibParamsBase64;
        CalibrateLogToFile.i("智能校准(5点)应用新参数：\ncalibParamsId(解码前)=" + str2 + "，\ncalibParamsId(解码后)=" + decodeCalibParamsIdRaw(str2) + "，\ncalibParams=" + str3);
        ExcavatorCalibHelper.PreciseHabAdjustResult preciseHabAdjustResult2 = this.mPendingPreciseResult;
        if (preciseHabAdjustResult2.tool != null && !TextUtils.isEmpty(preciseHabAdjustResult2.toolParamsBase64)) {
            ShovelEntity shovelEntity = this.mPendingBucket;
            String str4 = (shovelEntity == null || (str = shovelEntity.name) == null) ? "" : str;
            LibExcavator.Tool tool = this.mPendingPreciseResult.tool;
            CalibrateSessionHelper.recordSetToolInput(str4, tool.AB, ExcavatorCalibHelper.toothToJsonArray(tool, 0), ExcavatorCalibHelper.toothToJsonArray(this.mPendingPreciseResult.tool, 1), this.mCurrentGGA, this.mCurrentIns, this.mCurrentSensorInfo, Double.valueOf(this.latestHeadingDegreesError));
            CalibrateSessionHelper.recordFineTuneSetTool(ExcavatorCalibHelper.buildSetToolCmd(this.mPendingPreciseResult.tool), this.mCurrentGGA, this.mCurrentIns, this.mCurrentSensorInfo, Double.valueOf(this.latestHeadingDegreesError));
        }
        CalibrateSessionHelper.recordFineTuneSetParam(str2, str3, this.mCurrentGGA, this.mCurrentIns, this.mCurrentSensorInfo, Double.valueOf(this.latestHeadingDegreesError));
        sendSetParam(str2, str3);
    }

    private void sendSetParam(String str, String str2) {
        this.waitingSetParam = true;
        final String str3 = "CALIBRATE,,SET_PARAM," + str + "," + str2;
        this.binding.tvNext.postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                VerifyAccuracyActivity.$r8$lambda$txK_gPRbsLGbPLiWZroDrMBQino(this.f$0, str3);
            }
        }, 300L);
    }

    public static /* synthetic */ void $r8$lambda$txK_gPRbsLGbPLiWZroDrMBQino(VerifyAccuracyActivity verifyAccuracyActivity, String str) {
        if (verifyAccuracyActivity.isDestroyed()) {
            return;
        }
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, str));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(SetCalibrateParamEvent setCalibrateParamEvent) {
        if (this.waitingSetParam) {
            this.waitingSetParam = false;
            if (!TextUtils.isEmpty(setCalibrateParamEvent.line) && setCalibrateParamEvent.line.contains("OK")) {
                CalibrateSessionHelper.recordApplyReply(setCalibrateParamEvent.line, this.mCurrentGGA, this.mCurrentIns, this.mCurrentSensorInfo, Double.valueOf(this.latestHeadingDegreesError));
                endPreciseFinetuneSessionSuccess();
                onPreciseApplySuccess();
            } else {
                this.finishingPreciseCalib = false;
                CalibrateSessionHelper.endFinetuneSessionFailed("fivePoint");
                clearPendingPreciseFinetune();
                cancelLoadingDialog();
                showTipDialog(getString(R$string.config_fail), getString(R$string.ok), null);
            }
        }
    }

    private void endPreciseFinetuneSessionSuccess() {
        String str;
        if (CalibrateLogToFile.hasActiveSession()) {
            JsonObject jsonObject = new JsonObject();
            ExcavatorCalibHelper.PreciseHabAdjustResult preciseHabAdjustResult = this.mPendingPreciseResult;
            if (preciseHabAdjustResult != null) {
                jsonObject.addProperty("stdev_before", Double.valueOf(preciseHabAdjustResult.stdevOld));
                jsonObject.addProperty("stdev_after", Double.valueOf(this.mPendingPreciseResult.stdevNew));
                if (!Double.isNaN(this.mPendingPreciseResult.stdevAfterHa)) {
                    jsonObject.addProperty("stdev_after_ha", Double.valueOf(this.mPendingPreciseResult.stdevAfterHa));
                }
            }
            jsonObject.addProperty("ok", Boolean.TRUE);
            jsonObject.addProperty("type", "fivePoint");
            ExcavatorEntity excavatorEntity = this.mPendingFineTuneExcavator;
            if (excavatorEntity == null || (str = excavatorEntity.name) == null) {
                str = "";
            }
            jsonObject.addProperty("name", str);
            CalibrateLogToFile.endSession(true, jsonObject);
        }
    }

    private void onPreciseApplySuccess() {
        this.finishingPreciseCalib = false;
        ExcavatorEntity excavatorEntity = this.mPendingFineTuneExcavator;
        if (excavatorEntity == null) {
            cancelLoadingDialog();
            showTipDialog(getString(R$string.save_failed), getString(R$string.ok), null);
        } else {
            final ShovelEntity shovelEntity = this.mPendingBucket;
            FineTuneExcavatorHelper.saveFineTuneExcavatorAsync(this, excavatorEntity, new FineTuneExcavatorHelper.SaveCallback() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity.10
                @Override // com.qianhe.yct.utils.FineTuneExcavatorHelper.SaveCallback
                public void onSaved(ExcavatorEntity excavatorEntity2) {
                    if (VerifyAccuracyActivity.this.isDestroyed()) {
                        return;
                    }
                    VerifyAccuracyActivity.this.cancelLoadingDialog();
                    VerifyAccuracyActivity.this.currentExcavator = excavatorEntity2;
                    VerifyAccuracyActivity.this.cacheOldCalibParams();
                    if (shovelEntity != null) {
                        EventBus.getDefault().post(new SwicthBucketEvent(shovelEntity, true, excavatorEntity2.calibParamsId));
                    }
                    VerifyAccuracyActivity.this.clearPendingPreciseFinetune();
                    VerifyAccuracyActivity.this.mShowingCheckAccuracyDialog = true;
                    VerifyAccuracyActivity verifyAccuracyActivity = VerifyAccuracyActivity.this;
                    verifyAccuracyActivity.showTipDialog(verifyAccuracyActivity.getString(R$string.calibrate_completed_checking_accuracy), VerifyAccuracyActivity.this.getString(R$string.confirm), VerifyAccuracyActivity.this.getString(R$string.cancel), null, null, "check_accuracy");
                }

                @Override // com.qianhe.yct.utils.FineTuneExcavatorHelper.SaveCallback
                public void onFailed() {
                    if (VerifyAccuracyActivity.this.isDestroyed()) {
                        return;
                    }
                    VerifyAccuracyActivity.this.cancelLoadingDialog();
                    VerifyAccuracyActivity verifyAccuracyActivity = VerifyAccuracyActivity.this;
                    verifyAccuracyActivity.showTipDialog(verifyAccuracyActivity.getString(R$string.save_failed), VerifyAccuracyActivity.this.getString(R$string.ok), null);
                }
            });
        }
    }

    private void restartPreciseVerifyLoop() {
        int i;
        this.mShowingCheckAccuracyDialog = false;
        this.mInPreciseCalibPoseUi = false;
        this.binding.tvCalibrationPointInput.setVisibility(8);
        this.mPreciseCalibrating = false;
        this.finishingPreciseCalib = false;
        this.mSkipModeSelect = true;
        this.mVerifyMode = 1;
        this.mCurrentStep = 0;
        this.mCollectedPoints.clear();
        this.waitForPositionChange = false;
        this.mLastCollectedReference = null;
        this.mShowingResult = false;
        resetHeadingErrorCheckForNewStep();
        clearPendingPreciseFinetune();
        this.mNedOriginLat = Double.NaN;
        this.mNedOriginLon = Double.NaN;
        this.mNedOriginElev = Double.NaN;
        this.mReferenceHeightMeters = 0.0d;
        this.mReferenceLat = Double.NaN;
        this.mReferenceLon = Double.NaN;
        this.mHasReferenceLlh = false;
        this.mHeightInputReady = false;
        initStepText();
        updateTotalStepsFromExcavator();
        initProgressBar();
        this.binding.topBar.tvTitle.setText(R$string.verify_accuracy);
        this.binding.tvCommonTips.setVisibility(0);
        TextView textView = this.binding.tvCommonTips;
        if (isPreciseType2()) {
            i = R$string.standard_verify_common_tips;
        } else {
            i = R$string.verfify_accuracy_tips;
        }
        textView.setText(i);
        updateCollectButtonState();
        CalibrateLogToFile.i("标准查验循环：回到起点继续查验");
    }

    private ShovelEntity buildBucketFromAdjustedTool(ExcavatorCalibHelper.PreciseHabAdjustResult preciseHabAdjustResult) {
        ShovelEntity shovelEntity = new ShovelEntity();
        shovelEntity.name = generatePreciseBucketName();
        shovelEntity.param = preciseHabAdjustResult.toolParamsBase64;
        shovelEntity.mode = ExcavatorCalibHelper.getMode(getActiveCalibParams());
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        shovelEntity.showUnit = excavatorEntity != null ? excavatorEntity.showUnit : 0;
        ShovelAutoGenerateParams shovelAutoGenerateParams = ExcavatorCalibHelper.toolToAutoGenerateParams(preciseHabAdjustResult.tool);
        shovelAutoGenerateParams.T1x = shovelAutoGenerateParams.T0x;
        shovelAutoGenerateParams.T1y = -shovelAutoGenerateParams.T0y;
        shovelAutoGenerateParams.T1z = shovelAutoGenerateParams.T0z;
        shovelAutoGenerateParams.useDistanceMeasure = Boolean.valueOf(ShovelEntity.resolveSourceDistanceMeasure(resolveCurrentBucket()));
        shovelEntity.setAutoGenerateParamsObj(shovelAutoGenerateParams);
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        shovelEntity.createTime = jCurrentTimeMillis;
        shovelEntity.updateTime = jCurrentTimeMillis;
        shovelEntity.version = 1L;
        return shovelEntity;
    }

    private String generatePreciseBucketName() {
        String string = getString(R$string.shovel);
        ShovelEntity shovelEntityResolveCurrentBucket = resolveCurrentBucket();
        if (shovelEntityResolveCurrentBucket != null && !TextUtils.isEmpty(shovelEntityResolveCurrentBucket.name)) {
            string = shovelEntityResolveCurrentBucket.name;
        }
        return FineTuneExcavatorHelper.generateFineTuneBucketName(this, string);
    }

    private ShovelEntity resolveCurrentBucket() {
        String str;
        ShovelEntity shovelEntity;
        ShovelEntity shovelEntityReloadBucketFromDb;
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        if (excavatorEntity != null && (shovelEntity = excavatorEntity.shovelEntity) != null) {
            if (shovelEntity.localId > 0 && (shovelEntityReloadBucketFromDb = BucketSwitchHelper.reloadBucketFromDb(this, shovelEntity)) != null) {
                return shovelEntityReloadBucketFromDb;
            }
            if (!TextUtils.isEmpty(shovelEntity.name)) {
                return shovelEntity;
            }
        }
        if (TextUtils.isEmpty(this.mOldCalibParamsId)) {
            ExcavatorEntity excavatorEntity2 = this.currentExcavator;
            str = excavatorEntity2 != null ? excavatorEntity2.calibParamsId : "";
        } else {
            str = this.mOldCalibParamsId;
        }
        if (TextUtils.isEmpty(str) || !CalibParamsIdUtil.supportsBucketCurrentUsage(str, this.currentExcavator)) {
            return null;
        }
        return CalibParamsIdUtil.matchBucketFromList(str, this.mDatabaseManager.queryShovelByName(""), this.currentExcavator);
    }

    private String decodeCalibParamsIdRaw(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return new String(Base64.decode(str, 0), StandardCharsets.UTF_8);
        } catch (Exception unused) {
            return str;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(CreateBucketResponse createBucketResponse) {
        ShovelEntity shovelEntity;
        ShovelEntity shovelEntity2 = this.mPendingBucket;
        if (shovelEntity2 == null || createBucketResponse == null || createBucketResponse.state != 0 || (shovelEntity = createBucketResponse.shovelEntity) == null) {
            return;
        }
        long j = shovelEntity2.localId;
        if (j > 0) {
            long j2 = shovelEntity.localId;
            if (j2 > 0 && j != j2) {
                return;
            }
        }
        long j3 = shovelEntity.localId;
        if (j3 > 0) {
            shovelEntity2.localId = j3;
        }
        long j4 = shovelEntity.bucket_id;
        if (j4 != 0) {
            shovelEntity2.bucket_id = j4;
        }
        if (!TextUtils.isEmpty(shovelEntity.bucket_uuid)) {
            this.mPendingBucket.bucket_uuid = createBucketResponse.shovelEntity.bucket_uuid;
        }
        ShovelEntity shovelEntity3 = this.mPendingBucket;
        if (shovelEntity3.localId > 0) {
            this.mDatabaseManager.updateShovelById(shovelEntity3);
        }
    }

    private void updateCollectButtonText() {
        this.binding.tvNext.setText(getString(R$string.collect_step, Integer.valueOf(this.mCurrentStep + 1)));
    }

    private void updateTotalStepsFromExcavator() {
        if (ExcavatorCalibHelper.getMode(getActiveCalibParams()) == ExcavatorCalibrateModeEnum.SENSOR.getMode()) {
            this.mTotalSteps = 5;
        } else {
            this.mTotalSteps = 3;
        }
    }

    private void initStepText() {
        if (isPreciseType2()) {
            this.mStepActions = new String[]{getString(R$string.standard_verify_step1), getString(R$string.standard_verify_step2), getString(R$string.standard_verify_step3), getString(R$string.standard_verify_step4), getString(R$string.standard_verify_step5)};
            this.mStepImages = new int[]{R$drawable.icon_standard_verify_step1, R$drawable.icon_standard_verify_step2, R$drawable.icon_standard_verify_step3, R$drawable.icon_standard_verify_step4, R$drawable.icon_standard_verify_step5};
        } else {
            this.mStepActions = new String[]{getString(R$string.verify_accuracy_step1), getString(R$string.verify_accuracy_step2), getString(R$string.verify_accuracy_step3), getString(R$string.verify_accuracy_step4), getString(R$string.verify_accuracy_step5)};
            this.mStepImages = new int[]{R$drawable.icon_verify_step1, R$drawable.icon_verify_step2, R$drawable.icon_verify_step3, R$drawable.icon_verify_step4, R$drawable.icon_verify_step5};
        }
    }

    private void initProgressBar() {
        this.binding.lltProgress.removeAllViews();
        for (int i = 0; i < this.mTotalSteps; i++) {
            View view = new View(this);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
            if (i > 0) {
                layoutParams.setMarginStart(10);
            }
            view.setLayoutParams(layoutParams);
            view.setBackgroundColor(getResources().getColor(R$color.gray_light));
            this.binding.lltProgress.addView(view);
        }
        updateStepUi();
    }

    private void updateStepUi() {
        int i;
        if (this.mCurrentStep >= this.mTotalSteps) {
            return;
        }
        this.binding.cvStep.setVisibility(0);
        this.binding.nsvResult.setVisibility(8);
        this.mShowingResult = false;
        this.binding.lltProgress.setVisibility(0);
        this.binding.tvCommonTips.setVisibility(0);
        TextView textView = this.binding.tvCommonTips;
        if (isPreciseType2()) {
            i = R$string.standard_verify_common_tips;
        } else {
            i = R$string.verfify_accuracy_tips;
        }
        textView.setText(i);
        updateCollectButtonText();
        this.binding.tvPrevious.setText(R$string.previous);
        this.binding.tvPrevious.setVisibility(this.mCurrentStep > 0 ? 0 : 8);
        this.binding.tvPrevious.setEnabled(!this.isCollecting);
        for (int i2 = 0; i2 < this.binding.lltProgress.getChildCount(); i2++) {
            View childAt = this.binding.lltProgress.getChildAt(i2);
            if (i2 <= this.mCurrentStep) {
                childAt.setBackgroundColor(getResources().getColor(R$color.theme));
            } else {
                childAt.setBackgroundColor(getResources().getColor(R$color.gray_light));
            }
        }
        int i3 = this.mCurrentStep;
        String[] strArr = this.mStepActions;
        if (i3 < strArr.length) {
            this.binding.tvStepAction.setText(strArr[i3]);
        }
        int i4 = this.mCurrentStep;
        int[] iArr = this.mStepImages;
        if (i4 < iArr.length) {
            this.binding.ivStep.setImageResource(iArr[i4]);
        }
        adaptStepTextArea();
        updateArmAngleScaleBar();
        updateHeadingErrorDisplay();
        updateCollectButtonState();
    }

    private void adaptStepTextArea() {
        if (this.binding.nsvStepText == null) {
            return;
        }
        final boolean z = getResources().getConfiguration().orientation == 2;
        this.binding.nsvStepText.post(new Runnable() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() throws Resources.NotFoundException {
                VerifyAccuracyActivity.m1882$r8$lambda$fOTv28ScBHxML9RgJhMdY9IKhM(this.f$0, z);
            }
        });
    }

    /* renamed from: $r8$lambda$fOTv28ScBHxML9RgJhMdY9IK-hM, reason: not valid java name */
    public static /* synthetic */ void m1882$r8$lambda$fOTv28ScBHxML9RgJhMdY9IKhM(VerifyAccuracyActivity verifyAccuracyActivity, boolean z) throws Resources.NotFoundException {
        verifyAccuracyActivity.binding.nsvStepText.setScrollbarFadingEnabled(false);
        verifyAccuracyActivity.binding.nsvStepText.setVerticalScrollBarEnabled(true);
        verifyAccuracyActivity.binding.nsvStepText.scrollTo(0, 0);
        if (z) {
            ViewGroup.LayoutParams layoutParams = verifyAccuracyActivity.binding.nsvStepText.getLayoutParams();
            if (layoutParams == null || layoutParams.height == -1) {
                return;
            }
            layoutParams.height = -1;
            verifyAccuracyActivity.binding.nsvStepText.setLayoutParams(layoutParams);
            return;
        }
        View childAt = verifyAccuracyActivity.binding.nsvStepText.getChildAt(0);
        if (childAt == null) {
            return;
        }
        int dimensionPixelSize = verifyAccuracyActivity.getResources().getDimensionPixelSize(R$dimen.verify_step_text_max_height);
        int width = verifyAccuracyActivity.binding.nsvStepText.getWidth();
        if (width <= 0) {
            width = (verifyAccuracyActivity.binding.cvStep.getWidth() - verifyAccuracyActivity.binding.cvStep.getPaddingLeft()) - verifyAccuracyActivity.binding.cvStep.getPaddingRight();
        }
        if (width <= 0) {
            return;
        }
        childAt.measure(View.MeasureSpec.makeMeasureSpec(width, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        ViewGroup.LayoutParams layoutParams2 = verifyAccuracyActivity.binding.nsvStepText.getLayoutParams();
        layoutParams2.height = Math.min(childAt.getMeasuredHeight(), dimensionPixelSize);
        verifyAccuracyActivity.binding.nsvStepText.setLayoutParams(layoutParams2);
    }

    private boolean shouldShowArmAngleScaleBar() {
        int i;
        return isPreciseType2() && (i = this.mCurrentStep) >= 2 && i <= 4 && this.mCollectedPoints.size() >= 2 && this.binding.nsvResult.getVisibility() != 0 && !this.mInPreciseCalibPoseUi;
    }

    private void updateArmAngleScaleBar() {
        if (!shouldShowArmAngleScaleBar()) {
            this.binding.armAngleScaleBar.setVisibility(8);
            this.binding.tvArmAngleBestTip.setVisibility(8);
            this.binding.armAngleScaleBar.clearReference();
            return;
        }
        this.binding.armAngleScaleBar.setVisibility(0);
        this.binding.tvArmAngleBestTip.setVisibility(0);
        float f = (float) this.mCollectedPoints.get(0).armPitchDegrees;
        float f2 = (float) this.mCollectedPoints.get(1).armPitchDegrees;
        this.binding.armAngleScaleBar.setReferenceAngles(f, f2, (f + f2) / 2.0f, 10.0f);
        InsNavi insNavi = this.mCurrentIns;
        this.binding.armAngleScaleBar.setCurrentAngle(insNavi != null ? (float) getArmPitchDegrees(insNavi) : 0.0f);
    }

    private void showResultUi() {
        showResultUi(false);
    }

    private void showResultUi(boolean z) {
        this.mInPreciseCalibPoseUi = false;
        this.mShowingResult = true;
        this.binding.lltProgress.setVisibility(8);
        this.binding.cvStep.setVisibility(8);
        this.binding.tvCalibrationPointInput.setVisibility(8);
        this.binding.armAngleScaleBar.setVisibility(8);
        this.binding.tvArmAngleBestTip.setVisibility(8);
        this.binding.tvHeadingError.setVisibility(8);
        this.binding.nsvResult.setVisibility(0);
        this.binding.tvNext.setText(R$string.end);
        if (YCTApplication.getInstance().isH5Pro()) {
            this.binding.tvPrevious.setText(R$string.bucket_fine_tune);
            this.binding.tvPrevious.setVisibility(0);
            this.binding.tvResultHint.setVisibility(0);
        } else {
            this.binding.tvPrevious.setVisibility(8);
            this.binding.tvResultHint.setVisibility(8);
        }
        this.binding.tvPrevious.setEnabled(true);
        this.binding.tvNext.setEnabled(true);
        this.binding.tvNext.setSelected(true);
        this.binding.lltElevations.removeAllViews();
        this.binding.lltErrors.removeAllViews();
        if (!z) {
            logCollectedPointsBeforeResult();
            endVerifySession();
            CalibrateLogToFile.i("查验精度结果：");
        }
        int i = 0;
        while (i < this.mCollectedPoints.size()) {
            LinearLayout linearLayout = this.binding.lltElevations;
            Locale locale = Locale.ROOT;
            int i2 = i + 1;
            addResultItem(linearLayout, String.format(locale, getString(R$string.action) + "%d" + getString(R$string.shovel_elevation) + "：", Integer.valueOf(i2)), String.format(locale, "%.3fm", Double.valueOf(this.mCollectedPoints.get(i).elevation)));
            i = i2;
        }
        if (this.mCollectedPoints.size() >= 3) {
            double d = this.mCollectedPoints.get(0).elevation;
            double d2 = this.mCollectedPoints.get(1).elevation;
            double d3 = this.mCollectedPoints.get(2).elevation;
            addResultItem(this.binding.lltErrors, getString(R$string.action123_elevation_range), String.format(Locale.ROOT, "%.3fm", Double.valueOf(Math.max(d, Math.max(d2, d3)) - Math.min(d, Math.min(d2, d3)))));
        }
        if (this.mCollectedPoints.size() >= 5) {
            double d4 = this.mCollectedPoints.get(2).elevation;
            double d5 = this.mCollectedPoints.get(3).elevation;
            double d6 = this.mCollectedPoints.get(4).elevation;
            addResultItem(this.binding.lltErrors, getString(R$string.action456_elevation_range), String.format(Locale.ROOT, "%.3fm", Double.valueOf(Math.max(d4, Math.max(d5, d6)) - Math.min(d4, Math.min(d5, d6)))));
        }
        if (!this.mCollectedPoints.isEmpty()) {
            double d7 = this.mCollectedPoints.get(0).elevation;
            double d8 = this.mCollectedPoints.get(0).elevation;
            Iterator<VerifyAccuracyCollectPoint> it = this.mCollectedPoints.iterator();
            while (it.hasNext()) {
                double d9 = it.next().elevation;
                if (d9 > d7) {
                    d7 = d9;
                }
                if (d9 < d8) {
                    d8 = d9;
                }
            }
            addResultItem(this.binding.lltErrors, getString(R$string.max_elevation_range) + "：", String.format(Locale.ROOT, "±%.3fm", Double.valueOf((d7 - d8) / 2.0d)));
        }
        double d10 = 0.0d;
        int i3 = 0;
        while (i3 < this.mCollectedPoints.size()) {
            int i4 = i3 + 1;
            for (int i5 = i4; i5 < this.mCollectedPoints.size(); i5++) {
                double d11 = this.mCollectedPoints.get(i3).east - this.mCollectedPoints.get(i5).east;
                double d12 = this.mCollectedPoints.get(i3).north - this.mCollectedPoints.get(i5).north;
                double dSqrt = Math.sqrt((d11 * d11) + (d12 * d12));
                if (dSqrt > d10) {
                    d10 = dSqrt;
                }
            }
            i3 = i4;
        }
        String str = getString(R$string.max_horizontal_error) + "：";
        String str2 = String.format(Locale.ROOT, "%.3fm", Double.valueOf(d10));
        if (this.appConfig.details.display_verify_horizontal_error == 1) {
            addResultItem(this.binding.lltErrors, str, str2);
            return;
        }
        CalibrateLogToFile.i(str + str2);
    }

    private void logCollectedPointsBeforeResult() {
        int i = 0;
        while (i < this.mCollectedPoints.size()) {
            VerifyAccuracyCollectPoint verifyAccuracyCollectPoint = this.mCollectedPoints.get(i);
            StringBuilder sb = new StringBuilder();
            sb.append("查验精度第");
            i++;
            sb.append(i);
            sb.append("步：");
            CalibrateLogToFile.i(sb.toString());
            if (verifyAccuracyCollectPoint.ggaValid) {
                CalibrateLogToFile.i("GGA：[" + verifyAccuracyCollectPoint.ggaLongitude + "," + verifyAccuracyCollectPoint.ggaLatitude + "," + verifyAccuracyCollectPoint.ggaElevation + "]");
            } else {
                CalibrateLogToFile.i("GGA：null");
            }
            if (verifyAccuracyCollectPoint.insValid) {
                CalibrateLogToFile.i("INS左铲尖：[" + verifyAccuracyCollectPoint.insLongitude + "," + verifyAccuracyCollectPoint.insLatitude + "," + verifyAccuracyCollectPoint.insElevation + "]，横滚角=" + verifyAccuracyCollectPoint.insRollDegrees + "，俯仰角=" + verifyAccuracyCollectPoint.insPitchDegrees + "，航向角=" + verifyAccuracyCollectPoint.insHeadingDegrees);
            } else {
                CalibrateLogToFile.i("INS左铲尖：null");
            }
            if (verifyAccuracyCollectPoint.sensorValid) {
                CalibrateLogToFile.i("传感器：横滚角=" + verifyAccuracyCollectPoint.sensorRollDegrees + "，俯仰角=" + verifyAccuracyCollectPoint.sensorPitchDegrees + "，航向角=" + verifyAccuracyCollectPoint.sensorHeadingDegrees);
            }
        }
    }

    private void recordVerifyCollectEvent(VerifyAccuracyCollectPoint verifyAccuracyCollectPoint, int i) {
        CalibrateSessionHelper.beginVerify(this, this.currentExcavator, resolveVerifySessionType());
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonObject2 = new JsonObject();
        Locale locale = Locale.US;
        jsonObject2.addProperty("lat", String.format(locale, "%.8f", Double.valueOf(verifyAccuracyCollectPoint.ggaLatitude)));
        jsonObject2.addProperty("lon", String.format(locale, "%.8f", Double.valueOf(verifyAccuracyCollectPoint.ggaLongitude)));
        jsonObject2.addProperty("hgt", Double.valueOf(verifyAccuracyCollectPoint.ggaElevation));
        GGAEntity gGAEntity = this.mCurrentGGA;
        jsonObject2.addProperty("q", Integer.valueOf(gGAEntity != null ? gGAEntity.quality : 0));
        GGAEntity gGAEntity2 = this.mCurrentGGA;
        jsonObject2.addProperty("sats", Integer.valueOf(gGAEntity2 != null ? gGAEntity2.useStarNum : 0));
        GGAEntity gGAEntity3 = this.mCurrentGGA;
        jsonObject2.addProperty("hdop", Double.valueOf(gGAEntity3 != null ? gGAEntity3.hdop : 0.0d));
        GGAEntity gGAEntity4 = this.mCurrentGGA;
        jsonObject2.addProperty("age", Float.valueOf(gGAEntity4 != null ? gGAEntity4.age : 0.0f));
        jsonObject.add("gga", jsonObject2);
        JsonObject jsonObjectBuildRpy = CalibrateSessionHelper.buildRpy(verifyAccuracyCollectPoint.insRollDegrees, verifyAccuracyCollectPoint.insPitchDegrees, verifyAccuracyCollectPoint.insHeadingDegrees, false);
        jsonObjectBuildRpy.addProperty("y_err", Double.valueOf(verifyAccuracyCollectPoint.headingDegreesError));
        jsonObject.add("device", jsonObjectBuildRpy);
        jsonObject.add("sensor", CalibrateSessionHelper.buildRpy(verifyAccuracyCollectPoint.sensorRollDegrees, verifyAccuracyCollectPoint.sensorPitchDegrees, verifyAccuracyCollectPoint.sensorHeadingDegrees, false));
        JsonObject jsonObject3 = new JsonObject();
        jsonObject3.add("l", buildVerifyTooth(verifyAccuracyCollectPoint.tipLatL, verifyAccuracyCollectPoint.tipLonL, verifyAccuracyCollectPoint.tipHgtL, verifyAccuracyCollectPoint.tipXL, verifyAccuracyCollectPoint.tipYL, verifyAccuracyCollectPoint.tipZL));
        jsonObject3.add("r", buildVerifyTooth(verifyAccuracyCollectPoint.tipLatR, verifyAccuracyCollectPoint.tipLonR, verifyAccuracyCollectPoint.tipHgtR, verifyAccuracyCollectPoint.tipXR, verifyAccuracyCollectPoint.tipYR, verifyAccuracyCollectPoint.tipZR));
        jsonObject3.add("c", buildVerifyTooth(verifyAccuracyCollectPoint.tipLatC, verifyAccuracyCollectPoint.tipLonC, verifyAccuracyCollectPoint.tipHgtC, verifyAccuracyCollectPoint.tipXC, verifyAccuracyCollectPoint.tipYC, verifyAccuracyCollectPoint.tipZC));
        jsonObject.add("teeth", jsonObject3);
        JsonObject jsonObject4 = new JsonObject();
        jsonObject4.addProperty("phase_to_hang", Double.valueOf(verifyAccuracyCollectPoint.phaseToHang));
        JsonObject jsonObject5 = new JsonObject();
        jsonObject5.addProperty("lat", Double.valueOf(verifyAccuracyCollectPoint.ggaLatitude));
        jsonObject5.addProperty("lon", Double.valueOf(verifyAccuracyCollectPoint.ggaLongitude));
        jsonObject5.addProperty("hgt", Double.valueOf(verifyAccuracyCollectPoint.ggaElevation));
        jsonObject4.add("gga", jsonObject5);
        jsonObject4.add("device", CalibrateSessionHelper.buildRpy(verifyAccuracyCollectPoint.insRollDegrees, verifyAccuracyCollectPoint.insPitchDegrees, verifyAccuracyCollectPoint.insHeadingDegrees, true));
        jsonObject4.add("sensor", CalibrateSessionHelper.buildRpy(verifyAccuracyCollectPoint.sensorRollDegrees, verifyAccuracyCollectPoint.sensorPitchDegrees, verifyAccuracyCollectPoint.sensorHeadingDegrees, true));
        jsonObject4.addProperty("arm_angle", Double.valueOf(verifyAccuracyCollectPoint.insPitchDegrees));
        jsonObject.add("sample", jsonObject4);
        CalibrateLogToFile.recordEvent("collect", "step" + i, jsonObject);
    }

    private static JsonObject buildVerifyTooth(double d, double d2, double d3, double d4, double d5, double d6) {
        JsonObject jsonObject = new JsonObject();
        Locale locale = Locale.US;
        jsonObject.addProperty("lat", String.format(locale, "%.8f", Double.valueOf(d)));
        jsonObject.addProperty("lon", String.format(locale, "%.8f", Double.valueOf(d2)));
        jsonObject.addProperty("hgt", Double.valueOf(d3));
        jsonObject.addProperty("x", Double.valueOf(d4));
        jsonObject.addProperty("y", Double.valueOf(d5));
        jsonObject.addProperty("z", Double.valueOf(d6));
        return jsonObject;
    }

    private void endVerifySession() {
        double d;
        double d2;
        double d3;
        double d4;
        double dMax;
        double d5;
        double dMax2;
        if (CalibrateLogToFile.hasActiveSession()) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("ok", Boolean.TRUE);
            jsonObject.addProperty("mode", Integer.valueOf(ExcavatorCalibHelper.getMode(getActiveCalibParams())));
            jsonObject.addProperty("steps", Integer.valueOf(this.mCollectedPoints.size()));
            JsonArray jsonArray = new JsonArray();
            JsonArray jsonArray2 = new JsonArray();
            if (this.mCollectedPoints.isEmpty()) {
                d = 0.0d;
                d2 = 0.0d;
                d3 = 0.0d;
                d4 = 0.0d;
            } else {
                VerifyAccuracyCollectPoint verifyAccuracyCollectPoint = this.mCollectedPoints.get(0);
                double d6 = verifyAccuracyCollectPoint.elevation;
                double d7 = d6;
                for (int i = 0; i < this.mCollectedPoints.size(); i++) {
                    VerifyAccuracyCollectPoint verifyAccuracyCollectPoint2 = this.mCollectedPoints.get(i);
                    jsonArray.add(Double.valueOf(verifyAccuracyCollectPoint2.elevation));
                    double d8 = verifyAccuracyCollectPoint2.east - verifyAccuracyCollectPoint.east;
                    double d9 = verifyAccuracyCollectPoint2.north - verifyAccuracyCollectPoint.north;
                    jsonArray2.add(Double.valueOf(Math.sqrt((d8 * d8) + (d9 * d9))));
                    double d10 = verifyAccuracyCollectPoint2.elevation;
                    if (d10 > d6) {
                        d6 = d10;
                    }
                    if (d10 < d7) {
                        d7 = d10;
                    }
                }
                d3 = d6 - d7;
                if (this.mCollectedPoints.size() >= 3) {
                    double d11 = this.mCollectedPoints.get(0).elevation;
                    double d12 = this.mCollectedPoints.get(1).elevation;
                    double d13 = this.mCollectedPoints.get(2).elevation;
                    dMax = Math.max(d11, Math.max(d12, d13)) - Math.min(d11, Math.min(d12, d13));
                } else {
                    dMax = 0.0d;
                }
                if (this.mCollectedPoints.size() >= 5) {
                    double d14 = this.mCollectedPoints.get(2).elevation;
                    double d15 = this.mCollectedPoints.get(3).elevation;
                    double d16 = this.mCollectedPoints.get(4).elevation;
                    d5 = dMax;
                    dMax2 = Math.max(d14, Math.max(d15, d16)) - Math.min(d14, Math.min(d15, d16));
                } else {
                    d5 = dMax;
                    dMax2 = 0.0d;
                }
                int i2 = 0;
                double d17 = 0.0d;
                while (i2 < this.mCollectedPoints.size()) {
                    int i3 = i2 + 1;
                    int i4 = i3;
                    while (i4 < this.mCollectedPoints.size()) {
                        double d18 = this.mCollectedPoints.get(i2).east - this.mCollectedPoints.get(i4).east;
                        double d19 = dMax2;
                        double d20 = this.mCollectedPoints.get(i2).north - this.mCollectedPoints.get(i4).north;
                        double dSqrt = Math.sqrt((d18 * d18) + (d20 * d20));
                        if (dSqrt > d17) {
                            d17 = dSqrt;
                        }
                        i4++;
                        dMax2 = d19;
                    }
                    i2 = i3;
                }
                d2 = d17;
                d = d5;
                d4 = dMax2;
            }
            jsonObject.add("elevations", jsonArray);
            jsonObject.add("align_offsets", jsonArray2);
            jsonObject.addProperty("elev_123", Double.valueOf(d));
            jsonObject.addProperty("elev_345", Double.valueOf(d4));
            jsonObject.addProperty("elev_max", Double.valueOf(d3));
            jsonObject.addProperty("plane_max", Double.valueOf(d2));
            ExcavatorEntity excavatorEntity = this.currentExcavator;
            if (excavatorEntity != null) {
                CalibrateLogToFile.updateSessionExcavator(excavatorEntity.localId, excavatorEntity.name);
            }
            CalibrateLogToFile.endSession(true, jsonObject);
        }
    }

    private void addResultItem(LinearLayout linearLayout, String str, String str2) {
        CalibrateLogToFile.i(str + str2);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setPadding(0, 30, 0, 30);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        appCompatTextView.setText(str);
        appCompatTextView.setTextColor(getResources().getColor(R$color.text_black));
        appCompatTextView.setTextSize(16.0f);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this);
        appCompatTextView2.setText(str2);
        appCompatTextView2.setTextColor(getResources().getColor(R$color.text_black));
        appCompatTextView2.setTextSize(16.0f);
        linearLayout2.addView(appCompatTextView);
        linearLayout2.addView(appCompatTextView2);
        linearLayout.addView(linearLayout2);
        View view = new View(this);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, 1));
        view.setBackgroundColor(getResources().getColor(R$color.line));
        linearLayout.addView(view);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(GetCalibrateParamEvent getCalibrateParamEvent) {
        if (getCalibrateParamEvent == null || TextUtils.isEmpty(getCalibrateParamEvent.calibParams)) {
            return;
        }
        int mode = ExcavatorCalibHelper.getMode(getCalibrateParamEvent.calibParams);
        CalibrateLogToFile.i("校准参数类型：" + mode);
        List<ExcavatorEntity> listQueryExcavatorByCalibParamsId = DatabaseManager.getInstance(this).queryExcavatorByCalibParamsId(getCalibrateParamEvent.calibParamsId);
        if (!listQueryExcavatorByCalibParamsId.isEmpty()) {
            this.currentExcavator = listQueryExcavatorByCalibParamsId.get(0);
        } else {
            ExcavatorEntity excavatorEntity = new ExcavatorEntity();
            this.currentExcavator = excavatorEntity;
            excavatorEntity.name = getCalibrateParamEvent.name;
            excavatorEntity.mode = mode;
            excavatorEntity.calibParamsId = getCalibrateParamEvent.calibParamsId;
            excavatorEntity.calibParams = getCalibrateParamEvent.calibParams;
        }
        cacheOldCalibParams();
        saveHostCalibParamsToSession(getCalibrateParamEvent.calibParamsId, getCalibrateParamEvent.calibParams);
        if (this.mVerifyMode >= 0) {
            initStepText();
            updateTotalStepsFromExcavator();
            if (this.mRestoredCollectState || this.mInPreciseCalibPoseUi || this.mShowingResult || this.binding.nsvResult.getVisibility() == 0) {
                return;
            }
            initProgressBar();
            return;
        }
        updateTotalStepsFromExcavator();
        if (!this.mRestoredCollectState) {
            initProgressBar();
        }
        maybeDecideVerifyMode();
    }

    private void saveHostCalibParamsToSession(String str, String str2) {
        if (!CalibrateLogToFile.hasActiveSession()) {
            CalibrateSessionHelper.beginVerify(this, this.currentExcavator, this.mVerifyMode >= 0 ? resolveVerifySessionType() : null);
        } else if ("verify".equals(CalibrateLogToFile.getActiveFileFlow())) {
            if (this.mVerifyMode >= 0) {
                CalibrateLogToFile.updateSessionType(resolveVerifySessionType());
            }
            ExcavatorEntity excavatorEntity = this.currentExcavator;
            CalibrateLogToFile.updateSessionExcavator(excavatorEntity != null ? excavatorEntity.localId : 0L, excavatorEntity != null ? excavatorEntity.name : "");
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onVerifyAccuracyAhrs(InsAhrs insAhrs) {
        ActivityVerrifyAccuracyBinding activityVerrifyAccuracyBinding;
        if (insAhrs == null || insAhrs.deviceType == DeviceType.BASE || (activityVerrifyAccuracyBinding = this.binding) == null) {
            return;
        }
        activityVerrifyAccuracyBinding.tvHeadingError.post(new Runnable() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                VerifyAccuracyActivity.$r8$lambda$Idxsl2hAKFxWGrkcLSd1WMwpzqY(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Idxsl2hAKFxWGrkcLSd1WMwpzqY(VerifyAccuracyActivity verifyAccuracyActivity) {
        if (verifyAccuracyActivity.isDestroyed() || verifyAccuracyActivity.binding == null) {
            return;
        }
        verifyAccuracyActivity.mHasHeadingErrorSample = true;
        verifyAccuracyActivity.updateHeadingErrorDisplay();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        if (insNavi.deviceType == DeviceType.ZPY) {
            this.mCurrentIns = insNavi;
            onRealtimeDataUpdated();
        }
        if (YCTApplication.getInstance().isH5Pro()) {
            if (isDataAvailable()) {
                this.count = 0;
                this.isShowTips = false;
                this.suppressAutoCalibrateTips = false;
                return;
            }
            int i = this.count + 1;
            this.count = i;
            if (this.suppressAutoCalibrateTips || this.isShowTips || i <= this.appConfig.details.ins_unavailable_count || this.mCurrentGGA == null) {
                return;
            }
            this.isShowTips = true;
            showCalibrateTips();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        if (gGAEntity.deviceType == DeviceType.ZPY) {
            this.mCurrentGGA = gGAEntity;
            onRealtimeDataUpdated();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity$$ExternalSyntheticLambda9
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                VerifyAccuracyActivity.$r8$lambda$tE0VC6hO4ED_oERKy2mqZw371vQ(this.f$0, str, bundle);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$tE0VC6hO4ED_oERKy2mqZw371vQ(VerifyAccuracyActivity verifyAccuracyActivity, String str, Bundle bundle) {
        verifyAccuracyActivity.getClass();
        if ("back".equals(str) && bundle.getBoolean("confirm")) {
            verifyAccuracyActivity.finish();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public void onBackPressed() {
        if (this.isCollecting) {
            cancelCollectingDialog();
            return;
        }
        if (this.mPreciseCalibrating || this.finishingPreciseCalib) {
            return;
        }
        if (this.mInPreciseCalibPoseUi) {
            exitPreciseCalibPoseUi();
        } else {
            showTipDialog(getString(R$string.exit_page), getString(R$string.confirm), getString(R$string.cancel), (TipsDialogFragment.OnConfirmListener) null, "back");
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.verify_accuracy);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        saveVerifyStateToBundle(bundle);
        retainVerifyStateForRotation();
    }

    private void saveVerifyStateToBundle(Bundle bundle) {
        bundle.putInt("verifyMode", this.mVerifyMode);
        bundle.putInt("totalSteps", this.mTotalSteps);
        bundle.putBoolean("skipModeSelect", this.mSkipModeSelect);
        bundle.putInt("currentStep", this.mCurrentStep);
        bundle.putSerializable("collectedPoints", new ArrayList(this.mCollectedPoints));
        VerifyAccuracyCollectPoint verifyAccuracyCollectPoint = this.mLastCollectedReference;
        if (verifyAccuracyCollectPoint != null) {
            bundle.putSerializable("lastCollectedReference", verifyAccuracyCollectPoint);
        }
        bundle.putBoolean("waitForPositionChange", this.waitForPositionChange);
        bundle.putBoolean("headingErrorHidden", this.mHeadingErrorHiddenForCurrentStep);
        bundle.putBoolean("hasHeadingErrorSample", this.mHasHeadingErrorSample);
        bundle.putDouble("headingDegreesError", this.latestHeadingDegreesError);
        bundle.putBoolean("inPreciseCalibPoseUi", this.mInPreciseCalibPoseUi);
        bundle.putBoolean("showingResult", this.mShowingResult);
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        if (excavatorEntity != null) {
            bundle.putSerializable("currentExcavator", excavatorEntity);
        }
        bundle.putString("oldCalibParams", this.mOldCalibParams);
        bundle.putString("oldCalibParamsId", this.mOldCalibParamsId);
        bundle.putDouble("nedOriginLat", this.mNedOriginLat);
        bundle.putDouble("nedOriginLon", this.mNedOriginLon);
        bundle.putDouble("nedOriginElev", this.mNedOriginElev);
        bundle.putDouble("referenceHeightMeters", this.mReferenceHeightMeters);
        bundle.putDouble("referenceLat", this.mReferenceLat);
        bundle.putDouble("referenceLon", this.mReferenceLon);
        bundle.putBoolean("hasReferenceLlh", this.mHasReferenceLlh);
        bundle.putBoolean("heightInputReady", this.mHeightInputReady);
        bundle.putBoolean("showOneClickVerifyTips", this.mShowOneClickVerifyTips);
        bundle.putBoolean("showingCheckAccuracyDialog", this.mShowingCheckAccuracyDialog);
        savePendingPreciseStateToBundle(bundle);
    }

    private void savePendingPreciseStateToBundle(Bundle bundle) {
        bundle.putBoolean("preciseCalibrating", this.mPreciseCalibrating);
        ExcavatorCalibHelper.PreciseHabAdjustResult preciseHabAdjustResult = this.mPendingPreciseResult;
        boolean z = preciseHabAdjustResult != null && preciseHabAdjustResult.isSuccess();
        bundle.putBoolean("hasPendingPreciseResult", z);
        if (z) {
            bundle.putInt("pendingPreciseCode", this.mPendingPreciseResult.code);
            bundle.putDouble("pendingStdevOld", this.mPendingPreciseResult.stdevOld);
            bundle.putDouble("pendingStdevNew", this.mPendingPreciseResult.stdevNew);
            bundle.putDouble("pendingStdevAfterHa", this.mPendingPreciseResult.stdevAfterHa);
            bundle.putString("pendingCalibParams", this.mPendingPreciseResult.calibParamsBase64);
            bundle.putString("pendingToolParams", this.mPendingPreciseResult.toolParamsBase64);
            if (this.mPendingFiveSamples != null) {
                bundle.putSerializable("pendingFiveSamples", new ArrayList(this.mPendingFiveSamples));
            }
            ExcavatorCalibHelper.FineTuneSample fineTuneSample = this.mPendingHabSample;
            if (fineTuneSample != null) {
                bundle.putSerializable("pendingHabSample", fineTuneSample);
            }
            double[] dArr = this.mPendingHeightNed;
            if (dArr != null) {
                bundle.putDoubleArray("pendingHeightNed", dArr);
            }
            bundle.putString("pendingSourceParams", this.mPendingSourceParams);
        }
    }

    private void restoreCollectStateIfNeeded(Bundle bundle) {
        if (bundle != null) {
            restoreVerifyStateFromBundle(bundle);
            this.mRestoredCollectState = true;
            return;
        }
        RetainedVerifyState retainedVerifyState = sRetainedState;
        if (retainedVerifyState != null) {
            restoreVerifyStateFromRetained(retainedVerifyState);
            sRetainedState = null;
            this.mRestoredCollectState = true;
        }
    }

    private void restoreVerifyStateFromBundle(Bundle bundle) {
        this.mVerifyMode = bundle.getInt("verifyMode", this.mVerifyMode);
        this.mTotalSteps = bundle.getInt("totalSteps", this.mTotalSteps);
        this.mSkipModeSelect = bundle.getBoolean("skipModeSelect", this.mSkipModeSelect);
        this.mCurrentStep = bundle.getInt("currentStep", 0);
        Serializable serializable = bundle.getSerializable("collectedPoints");
        if (serializable instanceof ArrayList) {
            this.mCollectedPoints.clear();
            this.mCollectedPoints.addAll((ArrayList) serializable);
        }
        Serializable serializable2 = bundle.getSerializable("lastCollectedReference");
        if (serializable2 instanceof VerifyAccuracyCollectPoint) {
            this.mLastCollectedReference = (VerifyAccuracyCollectPoint) serializable2;
        }
        this.waitForPositionChange = bundle.getBoolean("waitForPositionChange", false);
        this.mHeadingErrorHiddenForCurrentStep = bundle.getBoolean("headingErrorHidden", false);
        this.mHasHeadingErrorSample = bundle.getBoolean("hasHeadingErrorSample", false);
        this.latestHeadingDegreesError = bundle.getDouble("headingDegreesError", this.latestHeadingDegreesError);
        this.mInPreciseCalibPoseUi = bundle.getBoolean("inPreciseCalibPoseUi", false);
        this.mShowingResult = bundle.getBoolean("showingResult", false);
        Serializable serializable3 = bundle.getSerializable("currentExcavator");
        if (serializable3 instanceof ExcavatorEntity) {
            this.currentExcavator = (ExcavatorEntity) serializable3;
        }
        String string = bundle.getString("oldCalibParams");
        if (string != null) {
            this.mOldCalibParams = string;
        }
        String string2 = bundle.getString("oldCalibParamsId");
        if (string2 != null) {
            this.mOldCalibParamsId = string2;
        }
        this.mNedOriginLat = bundle.getDouble("nedOriginLat", this.mNedOriginLat);
        this.mNedOriginLon = bundle.getDouble("nedOriginLon", this.mNedOriginLon);
        this.mNedOriginElev = bundle.getDouble("nedOriginElev", this.mNedOriginElev);
        this.mReferenceHeightMeters = bundle.getDouble("referenceHeightMeters", this.mReferenceHeightMeters);
        this.mReferenceLat = bundle.getDouble("referenceLat", this.mReferenceLat);
        this.mReferenceLon = bundle.getDouble("referenceLon", this.mReferenceLon);
        this.mHasReferenceLlh = bundle.getBoolean("hasReferenceLlh", false);
        this.mHeightInputReady = bundle.getBoolean("heightInputReady", false);
        this.mShowOneClickVerifyTips = bundle.getBoolean("showOneClickVerifyTips", false);
        this.mShowingCheckAccuracyDialog = bundle.getBoolean("showingCheckAccuracyDialog", false);
        restorePendingPreciseStateFromBundle(bundle);
        if (this.mTotalSteps <= 0) {
            updateTotalStepsFromExcavator();
        }
    }

    private void restorePendingPreciseStateFromBundle(Bundle bundle) {
        this.mPreciseCalibrating = false;
        if (bundle.getBoolean("preciseCalibrating", false)) {
            cancelLoadingDialog();
        }
        if (bundle.getBoolean("hasPendingPreciseResult", false)) {
            String string = bundle.getString("pendingCalibParams");
            String string2 = bundle.getString("pendingToolParams");
            LibExcavator.Tool toolFromParam = ExcavatorCalibHelper.parseToolFromParam(string2);
            if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2) || toolFromParam == null) {
                clearPendingPreciseFinetune();
                return;
            }
            this.mPendingPreciseResult = new ExcavatorCalibHelper.PreciseHabAdjustResult(bundle.getInt("pendingPreciseCode", 0), bundle.getDouble("pendingStdevOld", Double.NaN), bundle.getDouble("pendingStdevNew", Double.NaN), bundle.getDouble("pendingStdevAfterHa", Double.NaN), string, string2, toolFromParam);
            Serializable serializable = bundle.getSerializable("pendingFiveSamples");
            if (serializable instanceof ArrayList) {
                this.mPendingFiveSamples = (ArrayList) serializable;
            }
            Serializable serializable2 = bundle.getSerializable("pendingHabSample");
            if (serializable2 instanceof ExcavatorCalibHelper.FineTuneSample) {
                this.mPendingHabSample = (ExcavatorCalibHelper.FineTuneSample) serializable2;
            }
            this.mPendingHeightNed = bundle.getDoubleArray("pendingHeightNed");
            String string3 = bundle.getString("pendingSourceParams");
            if (string3 == null) {
                string3 = "";
            }
            this.mPendingSourceParams = string3;
        }
    }

    private void restoreVerifyStateFromRetained(RetainedVerifyState retainedVerifyState) {
        this.mVerifyMode = retainedVerifyState.verifyMode;
        this.mSkipModeSelect = retainedVerifyState.skipModeSelect;
        this.mCurrentStep = retainedVerifyState.currentStep;
        this.mTotalSteps = retainedVerifyState.totalSteps;
        this.mCollectedPoints.clear();
        ArrayList<VerifyAccuracyCollectPoint> arrayList = retainedVerifyState.collectedPoints;
        if (arrayList != null) {
            this.mCollectedPoints.addAll(arrayList);
        }
        this.mLastCollectedReference = retainedVerifyState.lastReference;
        this.waitForPositionChange = retainedVerifyState.waitForPositionChange;
        this.mHeadingErrorHiddenForCurrentStep = retainedVerifyState.headingHidden;
        this.mHasHeadingErrorSample = retainedVerifyState.hasHeadingSample;
        this.latestHeadingDegreesError = retainedVerifyState.headingError;
        this.mInPreciseCalibPoseUi = retainedVerifyState.inPrecisePoseUi;
        this.mShowingResult = retainedVerifyState.showingResult;
        ExcavatorEntity excavatorEntity = retainedVerifyState.excavator;
        if (excavatorEntity != null) {
            this.currentExcavator = excavatorEntity;
        }
        String str = retainedVerifyState.oldCalibParams;
        if (str != null) {
            this.mOldCalibParams = str;
        }
        String str2 = retainedVerifyState.oldCalibParamsId;
        if (str2 != null) {
            this.mOldCalibParamsId = str2;
        }
        this.mNedOriginLat = retainedVerifyState.nedOriginLat;
        this.mNedOriginLon = retainedVerifyState.nedOriginLon;
        this.mNedOriginElev = retainedVerifyState.nedOriginElev;
        this.mReferenceHeightMeters = retainedVerifyState.referenceHeightMeters;
        this.mReferenceLat = retainedVerifyState.referenceLat;
        this.mReferenceLon = retainedVerifyState.referenceLon;
        this.mHasReferenceLlh = retainedVerifyState.hasReferenceLlh;
        this.mHeightInputReady = retainedVerifyState.heightInputReady;
        this.mShowOneClickVerifyTips = retainedVerifyState.showOneClickVerifyTips;
        this.mShowingCheckAccuracyDialog = retainedVerifyState.showingCheckAccuracyDialog;
        restorePendingPreciseStateFromRetained(retainedVerifyState);
        if (this.mTotalSteps <= 0) {
            updateTotalStepsFromExcavator();
        }
    }

    private void restorePendingPreciseStateFromRetained(RetainedVerifyState retainedVerifyState) {
        this.mPreciseCalibrating = false;
        if (retainedVerifyState.preciseCalibrating) {
            cancelLoadingDialog();
        }
        if (retainedVerifyState.hasPendingPreciseResult) {
            LibExcavator.Tool toolFromParam = ExcavatorCalibHelper.parseToolFromParam(retainedVerifyState.pendingToolParams);
            if (TextUtils.isEmpty(retainedVerifyState.pendingCalibParams) || TextUtils.isEmpty(retainedVerifyState.pendingToolParams) || toolFromParam == null) {
                clearPendingPreciseFinetune();
                return;
            }
            this.mPendingPreciseResult = new ExcavatorCalibHelper.PreciseHabAdjustResult(retainedVerifyState.pendingPreciseCode, retainedVerifyState.pendingStdevOld, retainedVerifyState.pendingStdevNew, retainedVerifyState.pendingStdevAfterHa, retainedVerifyState.pendingCalibParams, retainedVerifyState.pendingToolParams, toolFromParam);
            if (retainedVerifyState.pendingFiveSamples != null) {
                this.mPendingFiveSamples = new ArrayList(retainedVerifyState.pendingFiveSamples);
            }
            this.mPendingHabSample = retainedVerifyState.pendingHabSample;
            double[] dArr = retainedVerifyState.pendingHeightNed;
            this.mPendingHeightNed = dArr != null ? (double[]) dArr.clone() : null;
            String str = retainedVerifyState.pendingSourceParams;
            if (str == null) {
                str = "";
            }
            this.mPendingSourceParams = str;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void retainVerifyStateForRotation() {
        Object[] objArr = 0;
        if (isFinishing()) {
            sRetainedState = null;
            return;
        }
        RetainedVerifyState retainedVerifyState = new RetainedVerifyState();
        retainedVerifyState.verifyMode = this.mVerifyMode;
        retainedVerifyState.skipModeSelect = this.mSkipModeSelect;
        retainedVerifyState.currentStep = this.mCurrentStep;
        retainedVerifyState.totalSteps = this.mTotalSteps;
        retainedVerifyState.collectedPoints = new ArrayList<>(this.mCollectedPoints);
        retainedVerifyState.lastReference = this.mLastCollectedReference;
        retainedVerifyState.waitForPositionChange = this.waitForPositionChange;
        retainedVerifyState.headingHidden = this.mHeadingErrorHiddenForCurrentStep;
        retainedVerifyState.hasHeadingSample = this.mHasHeadingErrorSample;
        retainedVerifyState.headingError = this.latestHeadingDegreesError;
        retainedVerifyState.inPrecisePoseUi = this.mInPreciseCalibPoseUi;
        retainedVerifyState.showingResult = this.mShowingResult;
        retainedVerifyState.excavator = this.currentExcavator;
        retainedVerifyState.oldCalibParams = this.mOldCalibParams;
        retainedVerifyState.oldCalibParamsId = this.mOldCalibParamsId;
        retainedVerifyState.nedOriginLat = this.mNedOriginLat;
        retainedVerifyState.nedOriginLon = this.mNedOriginLon;
        retainedVerifyState.nedOriginElev = this.mNedOriginElev;
        retainedVerifyState.referenceHeightMeters = this.mReferenceHeightMeters;
        retainedVerifyState.referenceLat = this.mReferenceLat;
        retainedVerifyState.referenceLon = this.mReferenceLon;
        retainedVerifyState.hasReferenceLlh = this.mHasReferenceLlh;
        retainedVerifyState.heightInputReady = this.mHeightInputReady;
        retainedVerifyState.showOneClickVerifyTips = this.mShowOneClickVerifyTips;
        retainedVerifyState.showingCheckAccuracyDialog = this.mShowingCheckAccuracyDialog;
        retainedVerifyState.preciseCalibrating = this.mPreciseCalibrating;
        ExcavatorCalibHelper.PreciseHabAdjustResult preciseHabAdjustResult = this.mPendingPreciseResult;
        boolean z = preciseHabAdjustResult != null && preciseHabAdjustResult.isSuccess();
        retainedVerifyState.hasPendingPreciseResult = z;
        if (z) {
            ExcavatorCalibHelper.PreciseHabAdjustResult preciseHabAdjustResult2 = this.mPendingPreciseResult;
            retainedVerifyState.pendingPreciseCode = preciseHabAdjustResult2.code;
            retainedVerifyState.pendingStdevOld = preciseHabAdjustResult2.stdevOld;
            retainedVerifyState.pendingStdevNew = preciseHabAdjustResult2.stdevNew;
            retainedVerifyState.pendingStdevAfterHa = preciseHabAdjustResult2.stdevAfterHa;
            retainedVerifyState.pendingCalibParams = preciseHabAdjustResult2.calibParamsBase64;
            retainedVerifyState.pendingToolParams = preciseHabAdjustResult2.toolParamsBase64;
            retainedVerifyState.pendingFiveSamples = this.mPendingFiveSamples != null ? new ArrayList<>(this.mPendingFiveSamples) : null;
            retainedVerifyState.pendingHabSample = this.mPendingHabSample;
            double[] dArr = this.mPendingHeightNed;
            retainedVerifyState.pendingHeightNed = dArr != null ? (double[]) dArr.clone() : null;
            retainedVerifyState.pendingSourceParams = this.mPendingSourceParams;
        }
        sRetainedState = retainedVerifyState;
    }

    private void restorePendingPreciseResultDialogIfNeeded() {
        List<ExcavatorCalibHelper.FineTuneSample> list;
        ExcavatorCalibHelper.PreciseHabAdjustResult preciseHabAdjustResult = this.mPendingPreciseResult;
        if (preciseHabAdjustResult == null || !preciseHabAdjustResult.isSuccess() || (list = this.mPendingFiveSamples) == null || list.size() < 5 || this.mPendingHabSample == null || getSupportFragmentManager().findFragmentByTag("precise_calib_use_params") != null) {
            return;
        }
        showTipDialog(getString(R$string.precise_calib_use_params_title), getString(R$string.use), getString(R$string.cancel), String.format(Locale.ROOT, getString(R$string.precise_calib_stdev_compare), Double.valueOf(this.mPendingPreciseResult.stdevOld), Double.valueOf(!Double.isNaN(this.mPendingPreciseResult.stdevAfterHa) ? this.mPendingPreciseResult.stdevAfterHa : this.mPendingPreciseResult.stdevNew)), null, "precise_calib_use_params");
    }

    private void restoreCheckAccuracyDialogIfNeeded() {
        if (this.mShowingCheckAccuracyDialog && getSupportFragmentManager().findFragmentByTag("check_accuracy") == null) {
            showTipDialog(getString(R$string.calibrate_completed_checking_accuracy), getString(R$string.confirm), getString(R$string.cancel), null, null, "check_accuracy");
        }
    }

    private void applyRestoredUi() {
        if (this.mShowingCheckAccuracyDialog) {
            if (this.mInPreciseCalibPoseUi) {
                enterPreciseCalibPoseUi();
            }
            restoreCheckAccuracyDialogIfNeeded();
            return;
        }
        if (this.mInPreciseCalibPoseUi) {
            enterPreciseCalibPoseUi();
            restoreFineTuneHeightDialogAfterRotation();
            restorePendingPreciseResultDialogIfNeeded();
        } else if (this.mShowingResult && !this.mCollectedPoints.isEmpty()) {
            showResultUi(true);
            updateCollectButtonState();
        } else if (this.mCurrentStep >= this.mTotalSteps && !this.mCollectedPoints.isEmpty()) {
            showResultUi(true);
            updateCollectButtonState();
        } else {
            rebuildProgressBarForCurrentStep();
            updateStepUi();
            updateHeadingErrorDisplay(false);
        }
    }

    private void rebuildProgressBarForCurrentStep() {
        this.binding.lltProgress.removeAllViews();
        for (int i = 0; i < this.mTotalSteps; i++) {
            View view = new View(this);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
            if (i > 0) {
                layoutParams.setMarginStart(10);
            }
            view.setLayoutParams(layoutParams);
            view.setBackgroundColor(getResources().getColor(R$color.gray_light));
            this.binding.lltProgress.addView(view);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        cancelCollectingDialog();
        if (isChangingConfigurations()) {
            retainVerifyStateForRotation();
        } else if (isFinishing()) {
            sRetainedState = null;
        }
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
