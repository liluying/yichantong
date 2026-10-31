package com.qianhe.yct.activity.verifyaccuracy;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.util.Base64;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.OnBackPressedCallback;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.fragment.app.FragmentResultListener;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.qh.libexcavator.nativelib.LibExcavator;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.ShovelAutoGenerateParams;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.baselib.utils.CoordsCalculUtils;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.GetCalibrateParamEvent;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.rtkclientlib.event.SetCalibrateParamEvent;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityBucketFineTuneBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.dialog.CalibrateDialogFragment;
import com.qianhe.yct.dialog.CollectingDialogFragment;
import com.qianhe.yct.dialog.FineTuneHeightInputDialogFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.enums.ExcavatorCalibrateModeEnum;
import com.qianhe.yct.event.CreateBucketResponse;
import com.qianhe.yct.event.SwicthBucketEvent;
import com.qianhe.yct.utils.BucketSwitchHelper;
import com.qianhe.yct.utils.CalibParamsIdUtil;
import com.qianhe.yct.utils.CalibrateSessionHelper;
import com.qianhe.yct.utils.ExcavatorCalibHelper;
import com.qianhe.yct.utils.FineTuneExcavatorHelper;
import com.qianhe.yct.utils.NoUnderscoreInputFilter;
import com.qianhe.yct.view.NightAwareImageView;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BucketFineTuneActivity extends BaseActivity {
    private static final int[] HOST_INSTALL_ANGLE_MODE1_CONTENT_INDICES = {0, 3, 6, 0};
    private ActivityBucketFineTuneBinding binding;
    private ExcavatorEntity currentExcavator;
    private boolean finishingFineTune;
    private boolean isCalibrating;
    private boolean isCollecting;
    private GGAEntity mCurrentGGA;
    private InsNavi mCurrentIns;
    private SensorInfoEvent mCurrentSensorInfo;
    private DatabaseManager mDatabaseManager;
    private boolean mHasReferenceLlh;
    private boolean mHeightInputReady;
    private CollectReferencePoint mLastCollectedReference;
    private int mParamsType;
    private ShovelEntity mPendingBucket;
    private ExcavatorEntity mPendingFineTuneExcavator;
    private boolean mSmartCalibAutoOptimize;
    private ShovelEntity selectShovelEntity;
    private boolean waitForPositionChange;
    private boolean waitingSetParam;
    private int mCurrentStep = -1;
    private String mInitBucketName = "";
    private String mBucketName = "";
    private final int[] mStepImages = {R$drawable.icon_finetune_1, R$drawable.icon_finetune_2, R$drawable.icon_finetune_3, R$drawable.icon_finetune_4, R$drawable.icon_finetune_5, R$drawable.icon_finetune_6, R$drawable.icon_finetune_7, R$drawable.icon_finetune_8, R$drawable.icon_finetune_9};
    private final int[] mStepActionIds = {R$string.bucket_fine_tune_step1, R$string.bucket_fine_tune_step2, R$string.bucket_fine_tune_step3, R$string.bucket_fine_tune_step4, R$string.bucket_fine_tune_step5, R$string.bucket_fine_tune_step6, R$string.bucket_fine_tune_step7, R$string.bucket_fine_tune_step8, R$string.bucket_fine_tune_step9};
    private double mLastHeightStdev = Double.NaN;
    private double mStdevBefore = Double.NaN;
    private double mStdevAfterForearm = Double.NaN;
    private double mStdevAfterBucket = Double.NaN;
    private double mStdevAfterForearmThenBucket = Double.NaN;
    private String mSelectedSchemeLabel = "";
    private String deviceCalibParams = "";
    private String deviceCalibParamsId = "";
    private int mFlagBit = 8;
    private int mVerifyMode = -1;
    private String mFineTuneSourceCalibParamsId = "";
    private final List<ExcavatorCalibHelper.FineTuneSample> mFineTuneSamples = new ArrayList();
    private double mNedOriginLat = Double.NaN;
    private double mNedOriginLon = Double.NaN;
    private double mNedOriginElev = Double.NaN;
    private double mReferenceHeightMeters = 0.0d;
    private double mReferenceLat = Double.NaN;
    private double mReferenceLon = Double.NaN;

    private enum SmartCalibScheme {
        FOREARM,
        BUCKET,
        FOREARM_THEN_BUCKET
    }

    private int buildAdjustFlags(int i, double d) {
        return d != 0.0d ? i | 1 : i;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class CollectReferencePoint {
        double armPitchDegrees;
        double elevation;
        double latitude;
        double longitude;
        double sensorPitchDegrees;

        private CollectReferencePoint() {
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityBucketFineTuneBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.mDatabaseManager = DatabaseManager.getInstance(this);
        EventBus eventBus = EventBus.getDefault();
        DeviceType deviceType = DeviceType.ZPY;
        eventBus.post(new OrderBean(deviceType, "LOG,INS.AHRS,ONTIME," + this.appConfig.details.ins_interval));
        EventBus.getDefault().post(new OrderBean(deviceType, "CALIBRATE,,CANCLE"));
        Intent intent = getIntent();
        if (intent != null) {
            this.currentExcavator = (ExcavatorEntity) intent.getSerializableExtra("currentExcavator");
            this.mSmartCalibAutoOptimize = intent.getBooleanExtra("smartCalibAutoOptimize", false);
            this.mVerifyMode = intent.getIntExtra("verifyModeValue", -1);
            if (this.mSmartCalibAutoOptimize) {
                this.mFlagBit = 6;
            } else {
                int intExtra = intent.getIntExtra("fineTuneFlagBit", 8);
                this.mFlagBit = (intExtra == 6 || intExtra == 8) ? intExtra : 8;
            }
        }
        initParamsTypeFromExcavator();
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        if (excavatorEntity != null) {
            if (!TextUtils.isEmpty(excavatorEntity.calibParams)) {
                this.deviceCalibParams = this.currentExcavator.calibParams;
            }
            if (!TextUtils.isEmpty(this.currentExcavator.calibParamsId)) {
                this.deviceCalibParamsId = this.currentExcavator.calibParamsId;
            }
        }
        CalibrateSessionHelper.beginFinetune(this, this.currentExcavator, resolveFineTuneSessionFlow());
        EventBus.getDefault().post(new OrderBean(deviceType, "CALIBRATE,,GET_PARAM"));
        if (this.mSmartCalibAutoOptimize) {
            logSmartCalibEntryParams();
            this.mCurrentStep = 0;
            initProgressBar();
            showFineTuneHeightDialog(false);
        } else if (isHostInstallAngleFineTune()) {
            this.mCurrentStep = 0;
            initProgressBar();
            showFineTuneHeightDialog(false);
        } else {
            initProgressBar();
            initNameStep();
        }
        this.binding.tvNext.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BucketFineTuneActivity.$r8$lambda$WQSQLSjp5qy6EWNTXsAX5c6P81A(this.f$0, view);
            }
        });
        this.binding.tvPrevious.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onPreviousStepClick();
            }
        });
        getSupportFragmentManager().setFragmentResultListener("calibration_failed", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity$$ExternalSyntheticLambda3
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) {
                BucketFineTuneActivity.$r8$lambda$t7E8DQ4b_2dyI1fpLQ8izK9phZs(this.f$0, str, bundle2);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity$$ExternalSyntheticLambda4
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) {
                BucketFineTuneActivity.$r8$lambda$CQvw17BpEJ_kUBoZSDhhhJMS0kQ(this.f$0, str, bundle2);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("bucket_fine_tune_completed", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity.1
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle2) {
                if (str.equals("bucket_fine_tune_completed")) {
                    BucketFineTuneActivity.this.setResult(-1);
                    if (bundle2.getBoolean("confirm")) {
                        Intent intent2 = new Intent(BucketFineTuneActivity.this, (Class<?>) VerifyAccuracyActivity.class);
                        intent2.putExtra("currentExcavator", BucketFineTuneActivity.this.currentExcavator);
                        if (BucketFineTuneActivity.this.mVerifyMode >= 0) {
                            intent2.putExtra("verifyModeValue", BucketFineTuneActivity.this.mVerifyMode);
                        }
                        BucketFineTuneActivity.this.startActivity(intent2);
                    }
                    BucketFineTuneActivity.this.finish();
                }
            }
        });
        updateStepUi();
        getOnBackPressedDispatcher().addCallback(this, new OnBackPressedCallback(true) { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity.2
            @Override // androidx.activity.OnBackPressedCallback
            public void handleOnBackPressed() {
                BucketFineTuneActivity.this.handleExitBackPress();
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$WQSQLSjp5qy6EWNTXsAX5c6P81A(BucketFineTuneActivity bucketFineTuneActivity, View view) {
        if (bucketFineTuneActivity.mAvailable) {
            if (bucketFineTuneActivity.isCollecting || bucketFineTuneActivity.isCalibrating) {
                return;
            }
            bucketFineTuneActivity.onContinueClick();
            return;
        }
        bucketFineTuneActivity.showCalibrateTips();
    }

    public static /* synthetic */ void $r8$lambda$t7E8DQ4b_2dyI1fpLQ8izK9phZs(BucketFineTuneActivity bucketFineTuneActivity, String str, Bundle bundle) {
        bucketFineTuneActivity.getClass();
        if ("calibration_failed".equals(str)) {
            bucketFineTuneActivity.updateCollectButtonState();
        }
    }

    public static /* synthetic */ void $r8$lambda$CQvw17BpEJ_kUBoZSDhhhJMS0kQ(BucketFineTuneActivity bucketFineTuneActivity, String str, Bundle bundle) {
        bucketFineTuneActivity.getClass();
        if ("back".equals(str) && bundle.getBoolean("confirm")) {
            bucketFineTuneActivity.finish();
        }
    }

    private void initNameStep() {
        NoUnderscoreInputFilter.apply(this.binding.edtName);
        this.binding.ivReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BucketFineTuneActivity.$r8$lambda$jmeQDjbZZTq45eXVvQSHW8YTT6k(this.f$0, view);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("step1_shovel_name", this, new AnonymousClass3());
        this.binding.edtName.post(new Runnable() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                BucketFineTuneActivity.m1837$r8$lambda$Ycv95dtByp1rPFnLFqFw5PIqK0(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$jmeQDjbZZTq45eXVvQSHW8YTT6k(BucketFineTuneActivity bucketFineTuneActivity, View view) {
        bucketFineTuneActivity.binding.edtName.setText(TextUtils.isEmpty(bucketFineTuneActivity.mInitBucketName) ? "" : bucketFineTuneActivity.mInitBucketName);
        if (!TextUtils.isEmpty(bucketFineTuneActivity.mInitBucketName)) {
            bucketFineTuneActivity.binding.edtName.setSelection(bucketFineTuneActivity.mInitBucketName.length());
        }
        bucketFineTuneActivity.binding.edtName.requestFocus();
    }

    /* renamed from: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity$3, reason: invalid class name */
    class AnonymousClass3 implements FragmentResultListener {
        AnonymousClass3() {
        }

        @Override // androidx.fragment.app.FragmentResultListener
        public void onFragmentResult(String str, Bundle bundle) {
            if (str.equals("step1_shovel_name")) {
                boolean z = bundle.getBoolean("confirm");
                boolean z2 = bundle.getBoolean("manual_cancel");
                if (z) {
                    BucketFineTuneActivity.this.setShovelDefaultName();
                } else if (z2) {
                    BucketFineTuneActivity.this.binding.edtName.requestFocus();
                    BucketFineTuneActivity.this.binding.edtName.post(new Runnable() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity$3$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            BucketFineTuneActivity.AnonymousClass3.$r8$lambda$Uf7jxKU1QWX_dUhodTRU9APuE3w(this.f$0);
                        }
                    });
                }
            }
        }

        public static /* synthetic */ void $r8$lambda$Uf7jxKU1QWX_dUhodTRU9APuE3w(AnonymousClass3 anonymousClass3) {
            InputMethodManager inputMethodManager = (InputMethodManager) BucketFineTuneActivity.this.getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.showSoftInput(BucketFineTuneActivity.this.binding.edtName, 1);
            }
        }
    }

    /* renamed from: $r8$lambda$Ycv95dtByp1rPF-nLFqFw5PIqK0, reason: not valid java name */
    public static /* synthetic */ void m1837$r8$lambda$Ycv95dtByp1rPFnLFqFw5PIqK0(BucketFineTuneActivity bucketFineTuneActivity) {
        bucketFineTuneActivity.binding.edtName.setText(!TextUtils.isEmpty(bucketFineTuneActivity.mBucketName) ? bucketFineTuneActivity.mBucketName : "");
        if (!TextUtils.isEmpty(bucketFineTuneActivity.mBucketName)) {
            bucketFineTuneActivity.binding.edtName.setSelection(bucketFineTuneActivity.mBucketName.length());
        }
        bucketFineTuneActivity.binding.edtName.requestFocus();
    }

    private void onContinueClick() {
        if (this.mCurrentStep == -1) {
            onNameContinueClick();
        } else {
            onCollectClick();
        }
    }

    private void onCollectClick() {
        if (!this.mHeightInputReady) {
            showFineTuneHeightDialog(false);
        } else if (this.waitForPositionChange && !isMovementThresholdMet(this.mLastCollectedReference)) {
            showStepActionTip();
        } else {
            collectAfterHeadingCheck();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCalibrateDialogClosed(boolean z) {
        this.count = 0;
        if (z) {
            this.isShowTips = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showNextStateAfterCalibrateAutoClose() {
        this.count = 0;
        if (!this.mAvailable) {
            showCalibrateTips();
        } else {
            if (!needHeadingAccuracyCheck() || isHeadingDegreesOK()) {
                return;
            }
            showHeadingAccuracyDialog(new CalibrateDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity.4
                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public /* synthetic */ void onClose(boolean z, boolean z2) {
                    onClose(z);
                }

                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public void onConfirm() {
                    BucketFineTuneActivity.this.onCalibrateDialogClosed(true);
                }

                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        BucketFineTuneActivity.this.onCalibrateDialogClosed(true);
                    } else {
                        BucketFineTuneActivity.this.showNextStateAfterCalibrateAutoClose();
                    }
                }
            });
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void showCalibrateTips() {
        showCalibrateDialog(new CalibrateDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity.5
            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public /* synthetic */ void onClose(boolean z, boolean z2) {
                onClose(z);
            }

            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public void onConfirm() {
                BucketFineTuneActivity.this.onCalibrateDialogClosed(true);
            }

            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                if (z) {
                    BucketFineTuneActivity.this.onCalibrateDialogClosed(true);
                } else {
                    BucketFineTuneActivity.this.showNextStateAfterCalibrateAutoClose();
                }
            }
        });
    }

    private void collectAfterHeadingCheck() {
        if (needHeadingAccuracyCheck() && !isHeadingDegreesOK()) {
            showHeadingAccuracyDialog(new CalibrateDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity.6
                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public /* synthetic */ void onClose(boolean z, boolean z2) {
                    onClose(z);
                }

                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public void onConfirm() {
                    BucketFineTuneActivity.this.onCalibrateDialogClosed(true);
                }

                @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        BucketFineTuneActivity.this.onCalibrateDialogClosed(true);
                    } else {
                        BucketFineTuneActivity.this.showNextStateAfterCalibrateAutoClose();
                    }
                }
            });
        } else {
            proceedCollectAfterPrecheck();
        }
    }

    private void showStepActionTip() {
        int stepContentIndex = getStepContentIndex(this.mCurrentStep);
        if (stepContentIndex < this.mStepActionIds.length) {
            showTipDialog(getStepActionText(stepContentIndex, this.mCurrentStep + 1).toString(), getString(R$string.ok), null);
        }
    }

    private void proceedCollectAfterPrecheck() {
        GGAEntity gGAEntity = this.mCurrentGGA;
        if (gGAEntity == null || gGAEntity.quality != 4 || this.isCollecting || this.isCalibrating) {
            return;
        }
        startCountdownCollect();
    }

    private void startCountdownCollect() {
        this.isCollecting = true;
        updateCollectButtonState();
        showCollectingDialog(getString(R$string.collecting), 2, new CollectingDialogFragment.OnCloseListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity$$ExternalSyntheticLambda5
            @Override // com.qianhe.yct.dialog.CollectingDialogFragment.OnCloseListener
            public final void onClose(int i) {
                BucketFineTuneActivity.$r8$lambda$J8hm_07Ko618jhsck0DJMHOeU70(this.f$0, i);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$J8hm_07Ko618jhsck0DJMHOeU70(BucketFineTuneActivity bucketFineTuneActivity, int i) {
        bucketFineTuneActivity.isCollecting = false;
        if (i != 0) {
            bucketFineTuneActivity.updateCollectButtonState();
        } else {
            bucketFineTuneActivity.mLastCollectedReference = bucketFineTuneActivity.captureCurrentPoint();
            bucketFineTuneActivity.sendCalibrateCommand(bucketFineTuneActivity.mCurrentStep + 1);
        }
    }

    private CollectReferencePoint captureCurrentPoint() {
        CollectReferencePoint collectReferencePoint = new CollectReferencePoint();
        GGAEntity gGAEntity = this.mCurrentGGA;
        if (gGAEntity != null) {
            collectReferencePoint.latitude = gGAEntity.latitude;
            collectReferencePoint.longitude = gGAEntity.longitude;
            collectReferencePoint.elevation = gGAEntity.elevation;
        }
        InsNavi insNavi = this.mCurrentIns;
        if (insNavi != null) {
            collectReferencePoint.armPitchDegrees = getArmPitchDegrees(insNavi);
        }
        SensorInfoEvent sensorInfoEvent = this.mCurrentSensorInfo;
        if (sensorInfoEvent != null) {
            collectReferencePoint.sensorPitchDegrees = sensorInfoEvent.pitchAngle;
        }
        return collectReferencePoint;
    }

    private double getArmPitchDegrees(InsNavi insNavi) {
        if (YCTApplication.getInstance().isH5Pro()) {
            return insNavi.pitchDegrees;
        }
        return insNavi.pitchDegrees - this.zeroDegrees;
    }

    private int getDeviceStepToCollect() {
        return this.mCurrentStep + 1;
    }

    private boolean shouldCheckArmPitch(int i) {
        return isHostInstallAngleFineTune() || i >= 2;
    }

    private int getEffectiveParamsType() {
        int i;
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        return (excavatorEntity == null || (i = excavatorEntity.mode) <= 0) ? this.mParamsType : i;
    }

    private boolean useSensorPitchForMovementCheck() {
        return getEffectiveParamsType() == ExcavatorCalibrateModeEnum.SENSOR.getMode();
    }

    private boolean shouldCheckSensorPitch(int i) {
        if (isHostInstallAngleFineTune()) {
            return useSensorPitchForMovementCheck();
        }
        return i >= 2;
    }

    private boolean isMovementThresholdMet(CollectReferencePoint collectReferencePoint) {
        boolean z;
        boolean z2;
        boolean z3;
        SensorInfoEvent sensorInfoEvent;
        InsNavi insNavi;
        if (collectReferencePoint == null) {
            return true;
        }
        int deviceStepToCollect = getDeviceStepToCollect();
        GGAEntity gGAEntity = this.mCurrentGGA;
        if (gGAEntity == null) {
            z = false;
        } else {
            if (CoordsCalculUtils.calculateDistanceGeodetic(new double[]{collectReferencePoint.longitude, collectReferencePoint.latitude, collectReferencePoint.elevation}, new double[]{gGAEntity.longitude, gGAEntity.latitude, gGAEntity.elevation}) >= 0.1d) {
                return true;
            }
            z = true;
        }
        if (!shouldCheckArmPitch(deviceStepToCollect) || (insNavi = this.mCurrentIns) == null) {
            z2 = false;
        } else {
            if (Math.abs(getArmPitchDegrees(insNavi) - collectReferencePoint.armPitchDegrees) >= 5.0d) {
                return true;
            }
            z2 = true;
        }
        if (!shouldCheckSensorPitch(deviceStepToCollect) || (sensorInfoEvent = this.mCurrentSensorInfo) == null) {
            z3 = false;
        } else {
            if (Math.abs(sensorInfoEvent.pitchAngle - collectReferencePoint.sensorPitchDegrees) >= 5.0d) {
                return true;
            }
            z3 = true;
        }
        return (z || z2 || z3) ? false : true;
    }

    private void updateCollectButtonState() {
        boolean z = false;
        if (this.mCurrentStep == -1) {
            this.binding.tvNext.setEnabled(true);
            this.binding.tvNext.setSelected(true);
            this.binding.tvNext.refreshDrawableState();
            this.binding.tvPrevious.setEnabled(false);
            return;
        }
        boolean z2 = this.isCollecting || this.isCalibrating || this.finishingFineTune;
        this.binding.tvPrevious.setEnabled(!z2);
        this.binding.tvNext.setEnabled(!z2);
        boolean z3 = !this.waitForPositionChange || isMovementThresholdMet(this.mLastCollectedReference);
        TextView textView = this.binding.tvNext;
        if (z3 && !z2) {
            z = true;
        }
        textView.setSelected(z);
        this.binding.tvNext.refreshDrawableState();
    }

    private void onRealtimeDataUpdated() {
        if (!this.waitForPositionChange || this.isCollecting || this.isCalibrating || this.mCurrentStep == -1) {
            return;
        }
        updateCollectButtonState();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFineTuneSensorInfo(SensorInfoEvent sensorInfoEvent) {
        if (sensorInfoEvent == null) {
            return;
        }
        this.mCurrentSensorInfo = sensorInfoEvent;
        if (!isHostInstallAngleFineTune() || useSensorPitchForMovementCheck()) {
            onRealtimeDataUpdated();
        }
    }

    private void onNameContinueClick() {
        String strTrim = this.binding.edtName.getText().toString().trim();
        this.mBucketName = strTrim;
        if (TextUtils.isEmpty(strTrim)) {
            showTipDialog(getString(R$string.shovel_name_cannot_empty), getString(R$string.use_default_values), null, "step1_shovel_name");
            return;
        }
        if (NoUnderscoreInputFilter.containsUnderscore(strTrim)) {
            showToastDialog(getString(R$string.name_cannot_contain_underscore));
        } else if (this.mDatabaseManager.isShovelNameExists(strTrim) && !this.mInitBucketName.equals(strTrim)) {
            showToastDialog(getString(R$string.name_exists));
        } else {
            hideKeyboard();
            showFineTuneHeightDialog(true);
        }
    }

    private void showFineTuneHeightDialog(final boolean z) {
        if (((FineTuneHeightInputDialogFragment) getSupportFragmentManager().findFragmentByTag("FineTuneHeightInputDialogFragment")) != null) {
            return;
        }
        final boolean z2 = this.mHeightInputReady;
        FineTuneHeightInputDialogFragment fineTuneHeightInputDialogFragment = new FineTuneHeightInputDialogFragment();
        if (z2) {
            fineTuneHeightInputDialogFragment.setInitialHeight(this.mReferenceHeightMeters, this.mReferenceLon, this.mReferenceLat, this.mHasReferenceLlh);
        }
        fineTuneHeightInputDialogFragment.setOnHeightConfirmListener(new FineTuneHeightInputDialogFragment.OnHeightConfirmListener() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity.7
            @Override // com.qianhe.yct.dialog.FineTuneHeightInputDialogFragment.OnHeightConfirmListener
            public void onConfirm(double d, double d2, double d3, boolean z3) {
                BucketFineTuneActivity.this.mReferenceHeightMeters = d;
                BucketFineTuneActivity.this.mHasReferenceLlh = z3 && d != 0.0d;
                if (BucketFineTuneActivity.this.mHasReferenceLlh) {
                    BucketFineTuneActivity.this.mReferenceLon = d2;
                    BucketFineTuneActivity.this.mReferenceLat = d3;
                } else {
                    BucketFineTuneActivity.this.mReferenceLon = Double.NaN;
                    BucketFineTuneActivity.this.mReferenceLat = Double.NaN;
                }
                BucketFineTuneActivity.this.mHeightInputReady = true;
                if (BucketFineTuneActivity.this.mHasReferenceLlh) {
                    CalibrateLogToFile.i("微调参考高程(米)：" + BucketFineTuneActivity.this.mReferenceHeightMeters + "，经纬高：lon=" + BucketFineTuneActivity.this.mReferenceLon + ",lat=" + BucketFineTuneActivity.this.mReferenceLat + ",h=" + BucketFineTuneActivity.this.mReferenceHeightMeters);
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("微调参考高程(米)：");
                    sb.append(BucketFineTuneActivity.this.mReferenceHeightMeters);
                    sb.append(BucketFineTuneActivity.this.mReferenceHeightMeters == 0.0d ? "（无有效高程）" : "（手动输入，无经纬）");
                    CalibrateLogToFile.i(sb.toString());
                }
                if (z || BucketFineTuneActivity.this.isHostInstallAngleFineTune()) {
                    if (z) {
                        BucketFineTuneActivity.this.mCurrentStep = 0;
                    }
                    BucketFineTuneActivity.this.updateStepUi();
                }
            }

            @Override // com.qianhe.yct.dialog.FineTuneHeightInputDialogFragment.OnHeightConfirmListener
            public void onCancel() {
                if (z2) {
                    return;
                }
                BucketFineTuneActivity.this.mHeightInputReady = false;
            }
        });
        fineTuneHeightInputDialogFragment.show(getSupportFragmentManager(), "FineTuneHeightInputDialogFragment");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setShovelDefaultName() {
        String str;
        List<ShovelEntity> listQueryShovelByName = this.mDatabaseManager.queryShovelByName("");
        if (listQueryShovelByName == null || listQueryShovelByName.isEmpty()) {
            str = String.format("%s1", getString(R$string.shovel));
        } else {
            str = String.format(getString(R$string.shovel) + "%s", Integer.valueOf(listQueryShovelByName.size() + 1));
            if (this.mDatabaseManager.isEntityNameExists("shovel", str)) {
                str = str + "-" + (System.currentTimeMillis() / 1000);
            }
        }
        this.binding.edtName.setText(str);
        AppCompatEditText appCompatEditText = this.binding.edtName;
        appCompatEditText.setSelection(appCompatEditText.getText().toString().length());
        this.mBucketName = str;
    }

    private void hideKeyboard() {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager == null || this.binding.edtName.getWindowToken() == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(this.binding.edtName.getWindowToken(), 0);
    }

    private void sendCalibrateCommand(int i) {
        StringBuilder sb;
        String str;
        String string;
        String str2;
        String str3;
        this.isCalibrating = true;
        updateCollectButtonState();
        ExcavatorCalibHelper.FineTuneSample fineTuneSampleCaptureFineTuneSample = captureFineTuneSample();
        this.mFineTuneSamples.add(fineTuneSampleCaptureFineTuneSample);
        if (this.mSmartCalibAutoOptimize) {
            string = "智能校准第" + i + "步：";
        } else {
            if (isHostInstallAngleFineTune()) {
                sb = new StringBuilder();
                str = "微调小臂第";
            } else {
                sb = new StringBuilder();
                str = "微调铲斗第";
            }
            sb.append(str);
            sb.append(i);
            sb.append("步：");
            string = sb.toString();
        }
        if (this.mCurrentGGA == null) {
            str2 = "null";
        } else {
            str2 = "lat=" + this.mCurrentGGA.latitude + ",lon=" + this.mCurrentGGA.longitude + ",h=" + this.mCurrentGGA.elevation;
        }
        if (Double.isNaN(this.mNedOriginLat)) {
            str3 = "unset";
        } else {
            str3 = "lat=" + this.mNedOriginLat + ",lon=" + this.mNedOriginLon + ",h=" + this.mNedOriginElev;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("相位中心(GGA→NED)=(");
        sb2.append(fineTuneSampleCaptureFineTuneSample.north);
        sb2.append(",");
        sb2.append(fineTuneSampleCaptureFineTuneSample.east);
        sb2.append(",");
        sb2.append(fineTuneSampleCaptureFineTuneSample.down);
        sb2.append(")，样本=");
        sb2.append(this.mFineTuneSamples.size());
        sb2.append("，GGA=[");
        sb2.append(str2);
        sb2.append("]，NED原点=[");
        sb2.append(str3);
        sb2.append("]");
        sb2.append(this.mFineTuneSamples.size() == 1 ? "（首点相对自身，NED 必为 0）" : "");
        ExcavatorCalibHelper.log(string, sb2.toString(), this.mCurrentGGA, this.mCurrentIns, this.mCurrentSensorInfo);
        if (isFinalCalibrateStep(i)) {
            showLoadingDialog(getString(R$string.please_wait));
            recordFineTuneInputAndAdjust();
            runHeightAdjust();
            return;
        }
        onCalibrateSuccess();
    }

    private void recordFineTuneInputAndAdjust() {
        if (!CalibrateLogToFile.hasActiveSession()) {
            CalibrateSessionHelper.beginFinetune(this, this.currentExcavator, resolveFineTuneSessionFlow());
        }
        ExcavatorCalibHelper.normalizeFineTuneSamples(this.mFineTuneSamples);
        double d = this.mReferenceHeightMeters;
        if (d != 0.0d) {
            CalibrateSessionHelper.recordFineTuneKnownHeightPoint(this.mReferenceLat, this.mReferenceLon, d, hasValidReferenceLlh(), resolveReferenceHeightNed(this.mReferenceHeightMeters), this.mCurrentGGA, this.mCurrentIns, this.mCurrentSensorInfo, Double.valueOf(this.latestHeadingDegreesError));
        }
        String strResolveFineTuneLogType = resolveFineTuneLogType();
        JsonArray jsonArray = new JsonArray();
        Iterator<ExcavatorCalibHelper.FineTuneSample> it = this.mFineTuneSamples.iterator();
        while (it.hasNext()) {
            jsonArray.add(CalibrateSessionHelper.buildFineTuneInputSample(it.next(), false));
        }
        CalibrateSessionHelper.recordFineTuneNineFourInput(strResolveFineTuneLogType, this.mFlagBit, this.mParamsType, getActiveCalibParams() != null ? getActiveCalibParams() : "", this.mReferenceHeightMeters, jsonArray, CalibrateSessionHelper.buildHabSnapshot(this.mCurrentIns, this.mCurrentSensorInfo), this.mCurrentGGA, this.mCurrentIns, this.mCurrentSensorInfo, Double.valueOf(this.latestHeadingDegreesError));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recordAdjustHeightCmd(int i) {
        CalibrateSessionHelper.recordFineTuneNineFourAdjustHeight(resolveFineTuneLogType(), i, this.mFineTuneSamples.size(), this.mReferenceHeightMeters != 0.0d, this.mCurrentGGA, this.mCurrentIns, this.mCurrentSensorInfo, Double.valueOf(this.latestHeadingDegreesError));
    }

    private String resolveFineTuneLogType() {
        if (isHostInstallAngleMode1()) {
            return "fourPoint";
        }
        return "ninePoint";
    }

    private String resolveFineTuneSessionFlow() {
        if (isHostInstallAngleMode1()) {
            return "finetune_four_point";
        }
        return "finetune_nine_point";
    }

    private ExcavatorCalibHelper.FineTuneSample captureFineTuneSample() {
        ExcavatorCalibHelper.FineTuneSample fineTuneSample = new ExcavatorCalibHelper.FineTuneSample();
        fineTuneSample.phaseToHang = calculatePhaseToHang();
        fillPhaseCenterNed(fineTuneSample);
        InsNavi insNavi = this.mCurrentIns;
        if (insNavi != null) {
            fineTuneSample.deviceRoll = insNavi.rollDegrees;
            fineTuneSample.devicePitch = insNavi.pitchDegrees;
            fineTuneSample.deviceHeading = insNavi.headingDegrees;
        }
        if (this.mCurrentSensorInfo != null && useSensorPitchForMovementCheck()) {
            SensorInfoEvent sensorInfoEvent = this.mCurrentSensorInfo;
            fineTuneSample.sensorRoll = sensorInfoEvent.rollAngle;
            fineTuneSample.sensorPitch = sensorInfoEvent.pitchAngle;
            fineTuneSample.sensorHeading = sensorInfoEvent.headingAngle;
            fineTuneSample.sensorValid = true;
        }
        ExcavatorCalibHelper.normalizeFineTuneSample(fineTuneSample);
        return fineTuneSample;
    }

    private void fillPhaseCenterNed(ExcavatorCalibHelper.FineTuneSample fineTuneSample) {
        GGAEntity gGAEntity = this.mCurrentGGA;
        if (gGAEntity == null) {
            return;
        }
        double d = gGAEntity.latitude;
        double d2 = gGAEntity.longitude;
        double d3 = gGAEntity.elevation;
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

    private String getActiveCalibParams() {
        if (!TextUtils.isEmpty(this.deviceCalibParams)) {
            return this.deviceCalibParams;
        }
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        if (excavatorEntity != null && !TextUtils.isEmpty(excavatorEntity.calibParams)) {
            return this.currentExcavator.calibParams;
        }
        return "";
    }

    private void runHeightAdjust() {
        final String activeCalibParams = getActiveCalibParams();
        if (TextUtils.isEmpty(activeCalibParams)) {
            onCollectAdjustFailed(getString(R$string.cannot_configure));
            return;
        }
        resetSchemeStdevMeta();
        if (this.mSmartCalibAutoOptimize && this.mParamsType != ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode()) {
            runSmartCalibAutoOptimize(activeCalibParams);
            return;
        }
        int i = this.mFlagBit;
        final double d = this.mReferenceHeightMeters;
        if (d != 0.0d) {
            i |= 1;
        }
        final int i2 = i;
        final double[] dArrResolveReferenceHeightLlh = resolveReferenceHeightLlh(d);
        final double[] dArrResolveReferenceHeightNed = resolveReferenceHeightNed(d);
        final ArrayList arrayList = new ArrayList(this.mFineTuneSamples);
        final boolean zIsHostInstallAngleFineTune = isHostInstallAngleFineTune();
        StringBuilder sb = new StringBuilder();
        sb.append("智能校准单方案开始：scheme=");
        sb.append(zIsHostInstallAngleFineTune ? "微调小臂" : "微调铲斗");
        sb.append("，paramsType=");
        sb.append(this.mParamsType);
        sb.append("，flags=");
        sb.append(i2);
        sb.append("，samples=");
        sb.append(arrayList.size());
        sb.append("，heightMeters=");
        sb.append(d);
        sb.append("，calibParamsLen=");
        sb.append(activeCalibParams.length());
        CalibrateLogToFile.i(sb.toString());
        new Thread(new Runnable() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity.8
            @Override // java.lang.Runnable
            public void run() {
                final double heightStdevBeforeAdjust = ExcavatorCalibHelper.getHeightStdevBeforeAdjust(activeCalibParams, arrayList);
                BucketFineTuneActivity.this.recordAdjustHeightCmd(i2);
                final ExcavatorCalibHelper.HeightAdjustResult heightAdjustResultAdjustHeight = ExcavatorCalibHelper.adjustHeight(activeCalibParams, i2, dArrResolveReferenceHeightNed, dArrResolveReferenceHeightLlh, arrayList);
                BucketFineTuneActivity.this.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (BucketFineTuneActivity.this.isDestroyed()) {
                            return;
                        }
                        BucketFineTuneActivity.this.mStdevBefore = heightStdevBeforeAdjust;
                        if (!heightAdjustResultAdjustHeight.isSuccess()) {
                            CalibrateLogToFile.e("高度微调失败，code=" + heightAdjustResultAdjustHeight.code + "，flags=" + i2 + "，heightLlh=" + d + "，heightNed=(" + dArrResolveReferenceHeightNed[0] + "," + dArrResolveReferenceHeightNed[1] + "," + dArrResolveReferenceHeightNed[2] + ")");
                            BucketFineTuneActivity bucketFineTuneActivity = BucketFineTuneActivity.this;
                            bucketFineTuneActivity.onCollectAdjustFailed(bucketFineTuneActivity.getString(R$string.calibration_failed));
                            return;
                        }
                        AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                        if (zIsHostInstallAngleFineTune) {
                            BucketFineTuneActivity.this.mStdevAfterForearm = heightAdjustResultAdjustHeight.heightStdev;
                            BucketFineTuneActivity.this.mSelectedSchemeLabel = "微调小臂";
                        } else {
                            BucketFineTuneActivity.this.mStdevAfterBucket = heightAdjustResultAdjustHeight.heightStdev;
                            BucketFineTuneActivity.this.mSelectedSchemeLabel = "微调铲斗";
                        }
                        BucketFineTuneActivity.this.isCalibrating = false;
                        BucketFineTuneActivity.this.onHeightAdjustSuccess(heightAdjustResultAdjustHeight);
                    }
                });
            }
        }).start();
    }

    private void runSmartCalibAutoOptimize(final String str) {
        double d = this.mReferenceHeightMeters;
        final int iBuildAdjustFlags = buildAdjustFlags(6, d);
        final int iBuildAdjustFlags2 = buildAdjustFlags(8, d);
        final double[] dArrResolveReferenceHeightLlh = resolveReferenceHeightLlh(d);
        final double[] dArrResolveReferenceHeightNed = resolveReferenceHeightNed(d);
        final ArrayList arrayList = new ArrayList(this.mFineTuneSamples);
        CalibrateLogToFile.i("智能校准多方案比较开始：paramsType=" + this.mParamsType + "，samples=" + arrayList.size() + "，heightMeters=" + d + "，forearmFlags=" + iBuildAdjustFlags + "，bucketFlags=" + iBuildAdjustFlags2 + "，heightNed=(" + dArrResolveReferenceHeightNed[0] + "," + dArrResolveReferenceHeightNed[1] + "," + dArrResolveReferenceHeightNed[2] + ")");
        new Thread(new Runnable() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity.9
            @Override // java.lang.Runnable
            public void run() {
                final double heightStdevBeforeAdjust = ExcavatorCalibHelper.getHeightStdevBeforeAdjust(str, arrayList);
                CalibrateLogToFile.i("智能校准方案[微调小臂]传入参数：flags=" + iBuildAdjustFlags + "，calibParams=" + str);
                BucketFineTuneActivity.this.recordAdjustHeightCmd(iBuildAdjustFlags);
                ExcavatorCalibHelper.HeightAdjustResult heightAdjustResultAdjustHeight = ExcavatorCalibHelper.adjustHeight(str, iBuildAdjustFlags, dArrResolveReferenceHeightNed, dArrResolveReferenceHeightLlh, arrayList);
                BucketFineTuneActivity.this.logSmartCalibSchemeResult("微调小臂", heightAdjustResultAdjustHeight);
                CalibrateLogToFile.i("智能校准方案[微调铲斗]传入参数：flags=" + iBuildAdjustFlags2 + "，calibParams=" + str);
                BucketFineTuneActivity.this.recordAdjustHeightCmd(iBuildAdjustFlags2);
                ExcavatorCalibHelper.HeightAdjustResult heightAdjustResultAdjustHeight2 = ExcavatorCalibHelper.adjustHeight(str, iBuildAdjustFlags2, dArrResolveReferenceHeightNed, dArrResolveReferenceHeightLlh, arrayList);
                BucketFineTuneActivity.this.logSmartCalibSchemeResult("微调铲斗", heightAdjustResultAdjustHeight2);
                int i = iBuildAdjustFlags2;
                ExcavatorCalibHelper.HeightAdjustResult heightAdjustResultAdjustHeight3 = null;
                String str2 = (heightAdjustResultAdjustHeight == null || !heightAdjustResultAdjustHeight.isSuccess() || TextUtils.isEmpty(heightAdjustResultAdjustHeight.calibParamsBase64)) ? null : heightAdjustResultAdjustHeight.calibParamsBase64;
                BucketFineTuneActivity.this.recordAdjustHeightCmd(i);
                if (str2 != null) {
                    CalibrateLogToFile.i("智能校准方案[微调小臂后再微调铲斗]传入参数：flags=" + iBuildAdjustFlags2 + "，calibParams(新小臂参数)=" + str2);
                    heightAdjustResultAdjustHeight3 = ExcavatorCalibHelper.adjustHeight(str2, iBuildAdjustFlags2, dArrResolveReferenceHeightNed, dArrResolveReferenceHeightLlh, arrayList);
                    BucketFineTuneActivity.this.logSmartCalibSchemeResult("微调小臂后再微调铲斗", heightAdjustResultAdjustHeight3);
                } else {
                    CalibrateLogToFile.i("智能校准方案[微调小臂后再微调铲斗]跳过：小臂方案未成功（已记 ADJUST cmd）");
                }
                final SmartCalibScheme smartCalibSchemePickBestSmartCalibScheme = BucketFineTuneActivity.this.pickBestSmartCalibScheme(heightAdjustResultAdjustHeight, heightAdjustResultAdjustHeight2, heightAdjustResultAdjustHeight3);
                final ExcavatorCalibHelper.HeightAdjustResult heightAdjustResultResolveSchemeResult = BucketFineTuneActivity.this.resolveSchemeResult(smartCalibSchemePickBestSmartCalibScheme, heightAdjustResultAdjustHeight, heightAdjustResultAdjustHeight2, heightAdjustResultAdjustHeight3);
                double d2 = Double.NaN;
                double d3 = (heightAdjustResultAdjustHeight == null || !heightAdjustResultAdjustHeight.isSuccess()) ? Double.NaN : heightAdjustResultAdjustHeight.heightStdev;
                double d4 = (heightAdjustResultAdjustHeight2 == null || !heightAdjustResultAdjustHeight2.isSuccess()) ? Double.NaN : heightAdjustResultAdjustHeight2.heightStdev;
                if (heightAdjustResultAdjustHeight3 != null && heightAdjustResultAdjustHeight3.isSuccess()) {
                    d2 = heightAdjustResultAdjustHeight3.heightStdev;
                }
                final double d5 = d2;
                final double d6 = d3;
                final double d7 = d4;
                BucketFineTuneActivity.this.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ExcavatorCalibHelper.HeightAdjustResult heightAdjustResult;
                        if (BucketFineTuneActivity.this.isDestroyed()) {
                            return;
                        }
                        BucketFineTuneActivity.this.mStdevBefore = heightStdevBeforeAdjust;
                        BucketFineTuneActivity.this.mStdevAfterForearm = d6;
                        BucketFineTuneActivity.this.mStdevAfterBucket = d7;
                        BucketFineTuneActivity.this.mStdevAfterForearmThenBucket = d5;
                        if (smartCalibSchemePickBestSmartCalibScheme == null || (heightAdjustResult = heightAdjustResultResolveSchemeResult) == null || !heightAdjustResult.isSuccess()) {
                            CalibrateLogToFile.e("智能校准多方案比较失败：无可用方案");
                            BucketFineTuneActivity bucketFineTuneActivity = BucketFineTuneActivity.this;
                            bucketFineTuneActivity.onCollectAdjustFailed(bucketFineTuneActivity.getString(R$string.calibration_failed));
                        } else {
                            BucketFineTuneActivity bucketFineTuneActivity2 = BucketFineTuneActivity.this;
                            bucketFineTuneActivity2.mSelectedSchemeLabel = bucketFineTuneActivity2.schemeLabel(smartCalibSchemePickBestSmartCalibScheme);
                            BucketFineTuneActivity.this.logSmartCalibSelectedScheme(smartCalibSchemePickBestSmartCalibScheme, heightAdjustResultResolveSchemeResult);
                            BucketFineTuneActivity.this.isCalibrating = false;
                            BucketFineTuneActivity.this.applySmartCalibBestResult(smartCalibSchemePickBestSmartCalibScheme, heightAdjustResultResolveSchemeResult);
                        }
                    }
                });
            }
        }).start();
    }

    private void resetSchemeStdevMeta() {
        this.mStdevBefore = Double.NaN;
        this.mStdevAfterForearm = Double.NaN;
        this.mStdevAfterBucket = Double.NaN;
        this.mStdevAfterForearmThenBucket = Double.NaN;
        this.mSelectedSchemeLabel = "";
        this.mLastHeightStdev = Double.NaN;
    }

    private int appliedAdjustHeightFlags() {
        return buildAdjustFlags(this.mFlagBit, this.mReferenceHeightMeters);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logSmartCalibSchemeResult(String str, ExcavatorCalibHelper.HeightAdjustResult heightAdjustResult) {
        if (heightAdjustResult == null) {
            CalibrateLogToFile.i("智能校准方案[" + str + "]结果：null");
            return;
        }
        if (!heightAdjustResult.isSuccess()) {
            CalibrateLogToFile.i("智能校准方案[" + str + "]结果：失败 code=" + heightAdjustResult.code);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("智能校准方案[");
        sb.append(str);
        sb.append("]结果：成功 stdev=");
        sb.append(heightAdjustResult.heightStdev);
        sb.append("，hasTool=");
        sb.append((heightAdjustResult.tool == null || TextUtils.isEmpty(heightAdjustResult.toolParamsBase64)) ? false : true);
        CalibrateLogToFile.i(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logSmartCalibSelectedScheme(SmartCalibScheme smartCalibScheme, ExcavatorCalibHelper.HeightAdjustResult heightAdjustResult) {
        ShovelEntity shovelEntityBuildBucketFromAdjustedTool;
        String str;
        String string;
        SmartCalibScheme smartCalibScheme2 = SmartCalibScheme.FOREARM;
        if (smartCalibScheme == smartCalibScheme2) {
            shovelEntityBuildBucketFromAdjustedTool = resolveBucketForFineTuneExcavator(getFineTuneSourceCalibParamsId());
        } else if (heightAdjustResult == null || heightAdjustResult.tool == null || TextUtils.isEmpty(heightAdjustResult.toolParamsBase64)) {
            shovelEntityBuildBucketFromAdjustedTool = null;
        } else {
            ensureSmartCalibBucketName();
            shovelEntityBuildBucketFromAdjustedTool = buildBucketFromAdjustedTool(heightAdjustResult);
            shovelEntityBuildBucketFromAdjustedTool.ensureParamsSerialized();
        }
        String strDecodeCalibParamsIdRaw = decodeCalibParamsIdRaw(FineTuneExcavatorHelper.buildFineTuneExcavator(this, this.currentExcavator, shovelEntityBuildBucketFromAdjustedTool, heightAdjustResult != null ? heightAdjustResult.calibParamsBase64 : "").calibParamsId);
        if (heightAdjustResult == null || (str = heightAdjustResult.calibParamsBase64) == null) {
            str = "";
        }
        if (shovelEntityBuildBucketFromAdjustedTool != null) {
            string = shovelEntityBuildBucketFromAdjustedTool.toString();
        } else {
            string = smartCalibScheme == smartCalibScheme2 ? "无（沿用原铲斗）" : "无";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("智能校准选用方案：");
        sb.append(schemeLabel(smartCalibScheme));
        sb.append("，stdev=");
        sb.append(heightAdjustResult != null ? Double.valueOf(heightAdjustResult.heightStdev) : "");
        sb.append("\n新挖机：校准id=");
        sb.append(strDecodeCalibParamsIdRaw);
        sb.append("，校准参数=");
        sb.append(str);
        sb.append("\n新铲斗：");
        sb.append(string);
        CalibrateLogToFile.i(sb.toString());
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

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity.SmartCalibScheme pickBestSmartCalibScheme(com.qianhe.yct.utils.ExcavatorCalibHelper.HeightAdjustResult r6, com.qianhe.yct.utils.ExcavatorCalibHelper.HeightAdjustResult r7, com.qianhe.yct.utils.ExcavatorCalibHelper.HeightAdjustResult r8) {
        /*
            r5 = this;
            boolean r0 = r5.isForearmSchemeResultValid(r6)
            r1 = 9218868437227405312(0x7ff0000000000000, double:Infinity)
            if (r0 == 0) goto L12
            double r3 = r6.heightStdev
            int r6 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r6 >= 0) goto L12
            com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity$SmartCalibScheme r6 = com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity.SmartCalibScheme.FOREARM
            r1 = r3
            goto L13
        L12:
            r6 = 0
        L13:
            boolean r0 = r5.isBucketSchemeResultValid(r7)
            if (r0 == 0) goto L2a
            double r3 = r7.heightStdev
            boolean r0 = r5.isFiniteStdev(r3)
            if (r0 == 0) goto L2a
            double r3 = r7.heightStdev
            int r7 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r7 >= 0) goto L2a
            com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity$SmartCalibScheme r6 = com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity.SmartCalibScheme.BUCKET
            r1 = r3
        L2a:
            boolean r7 = r5.isBucketSchemeResultValid(r8)
            if (r7 == 0) goto L40
            double r3 = r8.heightStdev
            boolean r7 = r5.isFiniteStdev(r3)
            if (r7 == 0) goto L40
            double r7 = r8.heightStdev
            int r0 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r0 >= 0) goto L40
            com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity$SmartCalibScheme r6 = com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity.SmartCalibScheme.FOREARM_THEN_BUCKET
        L40:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity.pickBestSmartCalibScheme(com.qianhe.yct.utils.ExcavatorCalibHelper$HeightAdjustResult, com.qianhe.yct.utils.ExcavatorCalibHelper$HeightAdjustResult, com.qianhe.yct.utils.ExcavatorCalibHelper$HeightAdjustResult):com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity$SmartCalibScheme");
    }

    private boolean isForearmSchemeResultValid(ExcavatorCalibHelper.HeightAdjustResult heightAdjustResult) {
        return heightAdjustResult != null && heightAdjustResult.isSuccess() && isFiniteStdev(heightAdjustResult.heightStdev);
    }

    private boolean isFiniteStdev(double d) {
        return (Double.isNaN(d) || Double.isInfinite(d)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ExcavatorCalibHelper.HeightAdjustResult resolveSchemeResult(SmartCalibScheme smartCalibScheme, ExcavatorCalibHelper.HeightAdjustResult heightAdjustResult, ExcavatorCalibHelper.HeightAdjustResult heightAdjustResult2, ExcavatorCalibHelper.HeightAdjustResult heightAdjustResult3) {
        if (smartCalibScheme == null) {
            return null;
        }
        int iOrdinal = smartCalibScheme.ordinal();
        if (iOrdinal == 0) {
            if (isForearmSchemeResultValid(heightAdjustResult)) {
                return heightAdjustResult;
            }
            return null;
        }
        if (iOrdinal == 1) {
            if (isBucketSchemeResultValid(heightAdjustResult2)) {
                return heightAdjustResult2;
            }
            return null;
        }
        if (iOrdinal == 2 && isBucketSchemeResultValid(heightAdjustResult3)) {
            return heightAdjustResult3;
        }
        return null;
    }

    private boolean isBucketSchemeResultValid(ExcavatorCalibHelper.HeightAdjustResult heightAdjustResult) {
        return (heightAdjustResult == null || !heightAdjustResult.isSuccess() || heightAdjustResult.tool == null || TextUtils.isEmpty(heightAdjustResult.toolParamsBase64)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String schemeLabel(SmartCalibScheme smartCalibScheme) {
        if (smartCalibScheme == null) {
            return "unknown";
        }
        int iOrdinal = smartCalibScheme.ordinal();
        if (iOrdinal == 0) {
            return "微调小臂";
        }
        if (iOrdinal == 1) {
            return "微调铲斗";
        }
        if (iOrdinal == 2) {
            return "微调小臂后再微调铲斗";
        }
        return smartCalibScheme.name();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applySmartCalibBestResult(SmartCalibScheme smartCalibScheme, ExcavatorCalibHelper.HeightAdjustResult heightAdjustResult) {
        if (smartCalibScheme == SmartCalibScheme.FOREARM) {
            this.mFlagBit = 6;
            onHeightAdjustSuccess(heightAdjustResult);
            return;
        }
        if (smartCalibScheme == SmartCalibScheme.FOREARM_THEN_BUCKET) {
            this.mFlagBit = 14;
        } else {
            this.mFlagBit = 8;
        }
        ensureSmartCalibBucketName();
        onHeightAdjustSuccess(heightAdjustResult);
    }

    private void ensureSmartCalibBucketName() {
        if (TextUtils.isEmpty(this.mBucketName)) {
            String strResolveCurrentBucketNameForSmartCalib = resolveCurrentBucketNameForSmartCalib();
            this.mBucketName = FineTuneExcavatorHelper.generateFineTuneBucketName(this, strResolveCurrentBucketNameForSmartCalib);
            CalibrateLogToFile.i("智能校准自动铲斗名称：当前=" + strResolveCurrentBucketNameForSmartCalib + "，新=" + this.mBucketName);
        }
    }

    private String resolveCurrentBucketNameForSmartCalib() {
        ShovelEntity shovelEntityResolveBucketForFineTuneExcavator = resolveBucketForFineTuneExcavator(getFineTuneSourceCalibParamsId());
        if (shovelEntityResolveBucketForFineTuneExcavator != null && !TextUtils.isEmpty(shovelEntityResolveBucketForFineTuneExcavator.name)) {
            return shovelEntityResolveBucketForFineTuneExcavator.name;
        }
        String bucketNameFromCalibParamsId = CalibParamsIdUtil.parseBucketNameFromCalibParamsId(getFineTuneSourceCalibParamsId(), this.currentExcavator);
        return !TextUtils.isEmpty(bucketNameFromCalibParamsId) ? bucketNameFromCalibParamsId : getString(R$string.shovel);
    }

    private void logSmartCalibEntryParams() {
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        String str = "";
        String str2 = excavatorEntity != null ? excavatorEntity.name : "";
        if (!TextUtils.isEmpty(this.deviceCalibParamsId)) {
            try {
                str = new String(Base64.decode(this.deviceCalibParamsId, 0), StandardCharsets.UTF_8);
            } catch (Exception unused) {
                str = this.deviceCalibParamsId;
            }
        }
        String str3 = this.deviceCalibParams;
        int length = str3 != null ? str3.length() : 0;
        StringBuilder sb = new StringBuilder();
        sb.append("智能校准入口参数：excavator=");
        sb.append(str2);
        sb.append("，paramsType=");
        sb.append(this.mParamsType);
        sb.append("，mode=");
        ExcavatorEntity excavatorEntity2 = this.currentExcavator;
        sb.append(excavatorEntity2 != null ? excavatorEntity2.mode : -1);
        sb.append("，autoOptimize=true，collectSteps=");
        sb.append(getTotalSteps());
        sb.append("，calibParamsId(raw)=");
        sb.append(str);
        sb.append("，calibParamsLen=");
        sb.append(length);
        sb.append("，calibParams=");
        sb.append(this.deviceCalibParams);
        CalibrateLogToFile.i(sb.toString());
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

    /* JADX INFO: Access modifiers changed from: private */
    public void onCollectAdjustFailed(String str) {
        this.isCalibrating = false;
        this.finishingFineTune = false;
        this.waitingSetParam = false;
        endFineTuneSessionFailed();
        cancelLoadingDialog();
        rollbackLastSample();
        this.waitForPositionChange = false;
        this.mLastCollectedReference = null;
        updateCollectButtonState();
        if (isDestroyed()) {
            return;
        }
        showTipDialog(str, getString(R$string.ok), null, "calibration_failed");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onHeightAdjustSuccess(ExcavatorCalibHelper.HeightAdjustResult heightAdjustResult) {
        String str = heightAdjustResult.calibParamsBase64;
        this.deviceCalibParams = str;
        this.mLastHeightStdev = heightAdjustResult.heightStdev;
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        if (excavatorEntity != null) {
            excavatorEntity.calibParams = str;
        }
        this.finishingFineTune = true;
        this.mFineTuneSourceCalibParamsId = getFineTuneSourceCalibParamsId();
        StringBuilder sb = new StringBuilder();
        sb.append("智能校准高度微调成功：flagBit=");
        sb.append(this.mFlagBit);
        sb.append("，stdev=");
        sb.append(heightAdjustResult.heightStdev);
        sb.append("，autoOptimize=");
        sb.append(this.mSmartCalibAutoOptimize);
        sb.append("，hasTool=");
        sb.append(heightAdjustResult.tool != null);
        CalibrateLogToFile.i(sb.toString());
        if (isHostInstallAngleFineTune()) {
            if (heightAdjustResult.tool != null && !TextUtils.isEmpty(heightAdjustResult.toolParamsBase64)) {
                recordFineTuneSetToolEvents(heightAdjustResult.tool, resolveBucketNameForLog());
            }
            ShovelEntity shovelEntityResolveBucketForFineTuneExcavator = resolveBucketForFineTuneExcavator(this.mFineTuneSourceCalibParamsId);
            ExcavatorEntity excavatorEntityBuildFineTuneExcavator = FineTuneExcavatorHelper.buildFineTuneExcavator(this, this.currentExcavator, shovelEntityResolveBucketForFineTuneExcavator, heightAdjustResult.calibParamsBase64);
            this.mPendingFineTuneExcavator = excavatorEntityBuildFineTuneExcavator;
            excavatorEntityBuildFineTuneExcavator.calibParamsId = CalibParamsIdUtil.buildCalibParamsId(excavatorEntityBuildFineTuneExcavator, shovelEntityResolveBucketForFineTuneExcavator);
            CalibrateLogToFile.i("微调小臂成功，calibParamsId：" + new String(Base64.decode(this.mPendingFineTuneExcavator.calibParamsId, 0), StandardCharsets.UTF_8));
            recordFineTuneSetParam(this.mPendingFineTuneExcavator.calibParamsId, heightAdjustResult.calibParamsBase64);
            sendSetParamForFineTune(this.mPendingFineTuneExcavator.calibParamsId, heightAdjustResult.calibParamsBase64);
            return;
        }
        if (TextUtils.isEmpty(heightAdjustResult.toolParamsBase64) || heightAdjustResult.tool == null) {
            onFineTuneFailed(getString(R$string.bucket_fine_tune_coordinate_error_too_large));
            return;
        }
        ShovelEntity shovelEntityBuildBucketFromAdjustedTool = buildBucketFromAdjustedTool(heightAdjustResult);
        this.mPendingBucket = shovelEntityBuildBucketFromAdjustedTool;
        shovelEntityBuildBucketFromAdjustedTool.ensureParamsSerialized();
        recordFineTuneSetToolEvents(heightAdjustResult.tool, this.mPendingBucket.name);
        ShovelEntity shovelEntity = this.mPendingBucket;
        this.selectShovelEntity = shovelEntity;
        this.mPendingFineTuneExcavator = FineTuneExcavatorHelper.buildFineTuneExcavator(this, this.currentExcavator, shovelEntity, heightAdjustResult.calibParamsBase64);
        CalibrateLogToFile.i("微调铲斗成功，铲斗=" + this.mPendingBucket.name + "，calibParamsId：" + new String(Base64.decode(this.mPendingFineTuneExcavator.calibParamsId, 0), StandardCharsets.UTF_8));
        recordFineTuneSetParam(this.mPendingFineTuneExcavator.calibParamsId, heightAdjustResult.calibParamsBase64);
        sendSetParamForFineTune(this.mPendingFineTuneExcavator.calibParamsId, heightAdjustResult.calibParamsBase64);
    }

    private String resolveBucketNameForLog() {
        ShovelEntity shovelEntity;
        String str;
        String str2;
        ShovelEntity shovelEntity2 = this.mPendingBucket;
        if (shovelEntity2 != null && (str2 = shovelEntity2.name) != null) {
            return str2;
        }
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        if (excavatorEntity != null && (shovelEntity = excavatorEntity.shovelEntity) != null && (str = shovelEntity.name) != null) {
            return str;
        }
        String str3 = this.mBucketName;
        return str3 != null ? str3 : "";
    }

    private void recordFineTuneSetToolEvents(LibExcavator.Tool tool, String str) {
        if (tool == null) {
            return;
        }
        CalibrateSessionHelper.recordSetToolInput(str, tool.AB, ExcavatorCalibHelper.toothToJsonArray(tool, 0), ExcavatorCalibHelper.toothToJsonArray(tool, 1), this.mCurrentGGA, this.mCurrentIns, this.mCurrentSensorInfo, Double.valueOf(this.latestHeadingDegreesError));
        CalibrateSessionHelper.recordFineTuneSetTool(ExcavatorCalibHelper.buildSetToolCmd(tool), this.mCurrentGGA, this.mCurrentIns, this.mCurrentSensorInfo, Double.valueOf(this.latestHeadingDegreesError));
    }

    private void recordFineTuneSetParam(String str, String str2) {
        CalibrateSessionHelper.recordFineTuneSetParam(str, str2, this.mCurrentGGA, this.mCurrentIns, this.mCurrentSensorInfo, Double.valueOf(this.latestHeadingDegreesError));
    }

    private ShovelEntity buildBucketFromAdjustedTool(ExcavatorCalibHelper.HeightAdjustResult heightAdjustResult) {
        ExcavatorEntity excavatorEntity;
        ShovelEntity shovelEntity;
        ShovelEntity shovelEntity2 = new ShovelEntity();
        shovelEntity2.name = this.mBucketName;
        shovelEntity2.param = heightAdjustResult.toolParamsBase64;
        ExcavatorEntity excavatorEntity2 = this.currentExcavator;
        shovelEntity2.mode = excavatorEntity2 != null ? excavatorEntity2.mode : 0;
        shovelEntity2.showUnit = excavatorEntity2 != null ? excavatorEntity2.showUnit : 0;
        ShovelAutoGenerateParams shovelAutoGenerateParams = ExcavatorCalibHelper.toolToAutoGenerateParams(heightAdjustResult.tool);
        shovelAutoGenerateParams.T1x = shovelAutoGenerateParams.T0x;
        shovelAutoGenerateParams.T1y = -shovelAutoGenerateParams.T0y;
        shovelAutoGenerateParams.T1z = shovelAutoGenerateParams.T0z;
        shovelAutoGenerateParams.useDistanceMeasure = Boolean.valueOf(ShovelEntity.resolveSourceDistanceMeasure(resolveBucketForFineTuneExcavator(getFineTuneSourceCalibParamsId())));
        shovelEntity2.setAutoGenerateParamsObj(shovelAutoGenerateParams);
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        shovelEntity2.createTime = jCurrentTimeMillis;
        shovelEntity2.updateTime = jCurrentTimeMillis;
        shovelEntity2.version = 1L;
        if (!this.mSmartCalibAutoOptimize && (excavatorEntity = this.currentExcavator) != null && (shovelEntity = excavatorEntity.shovelEntity) != null) {
            long j = shovelEntity.localId;
            if (j > 0) {
                shovelEntity2.localId = j;
                shovelEntity2.bucket_id = shovelEntity.bucket_id;
                shovelEntity2.bucket_uuid = shovelEntity.bucket_uuid;
                long j2 = shovelEntity.createTime;
                if (j2 > 0) {
                    jCurrentTimeMillis = j2;
                }
                shovelEntity2.createTime = jCurrentTimeMillis;
                shovelEntity2.version = shovelEntity.version + 1;
            }
        }
        return shovelEntity2;
    }

    private void sendSetParamForFineTune(String str, String str2) {
        this.waitingSetParam = true;
        final String str3 = "CALIBRATE,,SET_PARAM," + str + "," + str2;
        this.binding.tvNext.postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                BucketFineTuneActivity.m1838$r8$lambda$t5bN0DbFzMegiUAWDTf16H7FJI(this.f$0, str3);
            }
        }, 300L);
    }

    /* renamed from: $r8$lambda$t5bN0DbFzMegi-UAWDTf16H7FJI, reason: not valid java name */
    public static /* synthetic */ void m1838$r8$lambda$t5bN0DbFzMegiUAWDTf16H7FJI(BucketFineTuneActivity bucketFineTuneActivity, String str) {
        if (bucketFineTuneActivity.isDestroyed()) {
            return;
        }
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isHostInstallAngleFineTune() {
        return this.mFlagBit == 6;
    }

    private boolean isHostInstallAngleMode1() {
        if (isHostInstallAngleFineTune()) {
            return this.mParamsType == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode() || this.mParamsType == ExcavatorCalibrateModeEnum.NO_SENSOR_NOT_FLAT.getMode();
        }
        return false;
    }

    private void initParamsTypeFromExcavator() {
        byte[] bArrDecode;
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        if (excavatorEntity == null) {
            return;
        }
        int i = excavatorEntity.mode;
        if (i > 0) {
            this.mParamsType = i;
        } else {
            if (TextUtils.isEmpty(excavatorEntity.calibParams) || (bArrDecode = Base64.decode(this.currentExcavator.calibParams, 0)) == null || bArrDecode.length <= 0) {
                return;
            }
            this.mParamsType = bArrDecode[0] & 255;
        }
    }

    private int getTotalSteps() {
        return isHostInstallAngleMode1() ? 4 : 9;
    }

    private int getStepContentIndex(int i) {
        if (!isHostInstallAngleMode1() || i < 0) {
            return i;
        }
        int[] iArr = HOST_INSTALL_ANGLE_MODE1_CONTENT_INDICES;
        return i < iArr.length ? iArr[i] : i;
    }

    private boolean isFinalCalibrateStep(int i) {
        return isHostInstallAngleMode1() ? i == 4 : i == 9;
    }

    private void onCalibrateSuccess() {
        this.isCalibrating = false;
        this.waitForPositionChange = true;
        this.mCurrentStep++;
        updateStepUi();
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
        ShovelEntity shovelEntity4 = this.selectShovelEntity;
        if (shovelEntity4 != null) {
            long j5 = shovelEntity4.localId;
            ShovelEntity shovelEntity5 = this.mPendingBucket;
            if (j5 == shovelEntity5.localId) {
                shovelEntity4.bucket_id = shovelEntity5.bucket_id;
                shovelEntity4.bucket_uuid = shovelEntity5.bucket_uuid;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFineTuneFailed(String str) {
        this.finishingFineTune = false;
        this.waitingSetParam = false;
        this.isCalibrating = false;
        this.selectShovelEntity = null;
        this.mPendingFineTuneExcavator = null;
        this.mFineTuneSourceCalibParamsId = "";
        endFineTuneSessionFailed();
        cancelLoadingDialog();
        rollbackLastSample();
        this.waitForPositionChange = false;
        this.mLastCollectedReference = null;
        updateCollectButtonState();
        if (isDestroyed()) {
            return;
        }
        showTipDialog(str, getString(R$string.ok), null, "calibration_failed");
    }

    private void endFineTuneSessionFailed() {
        if (CalibrateLogToFile.hasActiveSession()) {
            CalibrateLogToFile.endSession(false, buildFineTuneSessionMeta(false));
        }
    }

    private JsonObject buildFineTuneSessionMeta(boolean z) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("ok", Boolean.valueOf(z));
        jsonObject.addProperty("type", resolveFineTuneLogType());
        jsonObject.addProperty("adjust_height", Integer.valueOf(appliedAdjustHeightFlags()));
        if (!Double.isNaN(this.mStdevBefore)) {
            jsonObject.addProperty("stdev_before", Double.valueOf(this.mStdevBefore));
        }
        if (!Double.isNaN(this.mStdevAfterForearm)) {
            jsonObject.addProperty("stdev_after_forearm", Double.valueOf(this.mStdevAfterForearm));
        }
        if (!Double.isNaN(this.mStdevAfterBucket)) {
            jsonObject.addProperty("stdev_after_bucket", Double.valueOf(this.mStdevAfterBucket));
        }
        if (!Double.isNaN(this.mStdevAfterForearmThenBucket)) {
            jsonObject.addProperty("stdev_after_forearm_then_bucket", Double.valueOf(this.mStdevAfterForearmThenBucket));
        }
        if (!Double.isNaN(this.mLastHeightStdev)) {
            jsonObject.addProperty("stdev_after", Double.valueOf(this.mLastHeightStdev));
        }
        if (!TextUtils.isEmpty(this.mSelectedSchemeLabel)) {
            jsonObject.addProperty("scheme", this.mSelectedSchemeLabel);
        }
        return jsonObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPreviousStepClick() {
        if (this.isCollecting || this.isCalibrating || this.finishingFineTune || this.mCurrentStep == -1) {
            return;
        }
        rollbackLastSample();
        this.waitForPositionChange = false;
        this.mLastCollectedReference = null;
        int i = this.mCurrentStep;
        if (i == 0) {
            if (isHostInstallAngleFineTune()) {
                showFineTuneHeightDialog(false);
                return;
            }
            this.mCurrentStep = -1;
            updateStepUi();
            this.binding.edtName.requestFocus();
            return;
        }
        this.mCurrentStep = i - 1;
        updateStepUi();
    }

    private void rollbackLastSample() {
        if (!this.mFineTuneSamples.isEmpty()) {
            this.mFineTuneSamples.remove(r0.size() - 1);
        }
        if (this.mFineTuneSamples.isEmpty()) {
            this.mNedOriginLat = Double.NaN;
            this.mNedOriginLon = Double.NaN;
            this.mNedOriginElev = Double.NaN;
        }
    }

    private ShovelEntity reloadBucketFromDb(ShovelEntity shovelEntity) {
        ShovelEntity shovelEntity2;
        ShovelEntity shovelEntityReloadBucketFromDb = BucketSwitchHelper.reloadBucketFromDb(this, shovelEntity);
        if (shovelEntityReloadBucketFromDb != null && (shovelEntity2 = this.mPendingBucket) != null && shovelEntityReloadBucketFromDb.localId == shovelEntity2.localId) {
            if (TextUtils.isEmpty(shovelEntityReloadBucketFromDb.param) && !TextUtils.isEmpty(this.mPendingBucket.param)) {
                shovelEntityReloadBucketFromDb.param = this.mPendingBucket.param;
            }
            if (TextUtils.isEmpty(shovelEntityReloadBucketFromDb.autoGenerateParams) && !TextUtils.isEmpty(this.mPendingBucket.autoGenerateParams)) {
                shovelEntityReloadBucketFromDb.autoGenerateParams = this.mPendingBucket.autoGenerateParams;
            }
        }
        return shovelEntityReloadBucketFromDb;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(GetCalibrateParamEvent getCalibrateParamEvent) {
        if (getCalibrateParamEvent == null || TextUtils.isEmpty(getCalibrateParamEvent.calibParams)) {
            return;
        }
        saveHostCalibParamsToSession(getCalibrateParamEvent.calibParamsId, getCalibrateParamEvent.calibParams);
        StringBuilder sb = new StringBuilder();
        sb.append("智能校准 GET_PARAM：已写入 session，calibParamsIdLen=");
        String str = getCalibrateParamEvent.calibParamsId;
        sb.append(str != null ? str.length() : 0);
        sb.append("，calibParamsLen=");
        sb.append(getCalibrateParamEvent.calibParams.length());
        CalibrateLogToFile.i(sb.toString());
    }

    private void saveHostCalibParamsToSession(String str, String str2) {
        if (!CalibrateLogToFile.hasActiveSession()) {
            CalibrateSessionHelper.beginFinetune(this, this.currentExcavator, resolveFineTuneSessionFlow());
        } else if ("finetune".equals(CalibrateLogToFile.getActiveFileFlow())) {
            ExcavatorEntity excavatorEntity = this.currentExcavator;
            CalibrateLogToFile.updateSessionExcavator(excavatorEntity != null ? excavatorEntity.localId : 0L, excavatorEntity != null ? excavatorEntity.name : "");
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(SetCalibrateParamEvent setCalibrateParamEvent) {
        if (this.waitingSetParam) {
            this.waitingSetParam = false;
            if (!TextUtils.isEmpty(setCalibrateParamEvent.line) && setCalibrateParamEvent.line.contains("OK")) {
                CalibrateSessionHelper.recordApplyReply(setCalibrateParamEvent.line, this.mCurrentGGA, this.mCurrentIns, this.mCurrentSensorInfo, Double.valueOf(this.latestHeadingDegreesError));
                onFineTuneApplySuccess();
            } else {
                onFineTuneFailed(getString(R$string.config_failed_please_check_params));
            }
        }
    }

    private void onFineTuneApplySuccess() {
        final boolean z = false;
        this.finishingFineTune = false;
        if (this.mPendingFineTuneExcavator == null) {
            onFineTuneFailed(getString(R$string.save_failed));
            return;
        }
        JsonObject jsonObjectBuildFineTuneSessionMeta = buildFineTuneSessionMeta(true);
        String str = this.mPendingFineTuneExcavator.name;
        if (str == null) {
            str = "";
        }
        jsonObjectBuildFineTuneSessionMeta.addProperty("name", str);
        CalibrateLogToFile.endSession(true, jsonObjectBuildFineTuneSessionMeta);
        final ShovelEntity shovelEntity = this.mPendingBucket;
        if (shovelEntity == null) {
            shovelEntity = this.selectShovelEntity;
        }
        ExcavatorEntity excavatorEntity = this.mPendingFineTuneExcavator;
        if (shovelEntity != null && !isHostInstallAngleFineTune()) {
            z = true;
        }
        FineTuneExcavatorHelper.saveFineTuneExcavatorAsync(this, excavatorEntity, new FineTuneExcavatorHelper.SaveCallback() { // from class: com.qianhe.yct.activity.verifyaccuracy.BucketFineTuneActivity.10
            @Override // com.qianhe.yct.utils.FineTuneExcavatorHelper.SaveCallback
            public void onSaved(ExcavatorEntity excavatorEntity2) {
                if (BucketFineTuneActivity.this.isDestroyed()) {
                    return;
                }
                BucketFineTuneActivity.this.cancelLoadingDialog();
                BucketFineTuneActivity.this.currentExcavator = excavatorEntity2;
                BucketFineTuneActivity.this.deviceCalibParamsId = excavatorEntity2.calibParamsId;
                BucketFineTuneActivity.this.mPendingFineTuneExcavator = null;
                BucketFineTuneActivity.this.selectShovelEntity = null;
                if (z) {
                    EventBus.getDefault().post(new SwicthBucketEvent(shovelEntity, true, excavatorEntity2.calibParamsId));
                    BucketFineTuneActivity bucketFineTuneActivity = BucketFineTuneActivity.this;
                    bucketFineTuneActivity.showTipDialog(bucketFineTuneActivity.getString(R$string.bucket_fine_tune_completed), BucketFineTuneActivity.this.getString(R$string.confirm), BucketFineTuneActivity.this.getString(R$string.cancel), BucketFineTuneActivity.this.getString(R$string.bucket_fine_tune_completed_hint), null, "bucket_fine_tune_completed");
                } else {
                    BucketFineTuneActivity bucketFineTuneActivity2 = BucketFineTuneActivity.this;
                    bucketFineTuneActivity2.showTipDialog(bucketFineTuneActivity2.getString(R$string.bucket_fine_tune_completed), BucketFineTuneActivity.this.getString(R$string.confirm), BucketFineTuneActivity.this.getString(R$string.cancel), "", null, "bucket_fine_tune_completed");
                }
            }

            @Override // com.qianhe.yct.utils.FineTuneExcavatorHelper.SaveCallback
            public void onFailed() {
                if (BucketFineTuneActivity.this.isDestroyed()) {
                    return;
                }
                BucketFineTuneActivity bucketFineTuneActivity = BucketFineTuneActivity.this;
                bucketFineTuneActivity.onFineTuneFailed(bucketFineTuneActivity.getString(R$string.save_failed));
            }
        });
    }

    private String getFineTuneSourceCalibParamsId() {
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        if (excavatorEntity != null && !TextUtils.isEmpty(excavatorEntity.calibParamsId)) {
            return this.currentExcavator.calibParamsId;
        }
        if (!TextUtils.isEmpty(this.deviceCalibParamsId)) {
            return this.deviceCalibParamsId;
        }
        return "";
    }

    private ShovelEntity resolveBucketForFineTuneExcavator(String str) {
        ShovelEntity shovelEntity;
        ShovelEntity shovelEntityReloadBucketFromDb;
        ShovelEntity shovelEntity2 = this.selectShovelEntity;
        if (shovelEntity2 == null) {
            shovelEntity2 = this.mPendingBucket;
        }
        if (shovelEntity2 != null) {
            return shovelEntity2;
        }
        ExcavatorEntity excavatorEntity = this.currentExcavator;
        if (excavatorEntity != null && (shovelEntity = excavatorEntity.shovelEntity) != null) {
            if (shovelEntity.localId > 0 && (shovelEntityReloadBucketFromDb = reloadBucketFromDb(shovelEntity)) != null) {
                return shovelEntityReloadBucketFromDb;
            }
            if (!TextUtils.isEmpty(shovelEntity.name)) {
                return shovelEntity;
            }
        }
        if (TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(this.deviceCalibParamsId)) {
                ExcavatorEntity excavatorEntity2 = this.currentExcavator;
                str = excavatorEntity2 != null ? excavatorEntity2.calibParamsId : "";
            } else {
                str = this.deviceCalibParamsId;
            }
        }
        if (TextUtils.isEmpty(str) || !CalibParamsIdUtil.supportsBucketCurrentUsage(str, this.currentExcavator)) {
            return null;
        }
        return CalibParamsIdUtil.matchBucketFromList(str, this.mDatabaseManager.queryShovelByName(""), this.currentExcavator);
    }

    private void initProgressBar() {
        this.binding.lltProgress.removeAllViews();
        for (int i = 0; i < getTotalSteps(); i++) {
            View view = new View(this);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
            if (i > 0) {
                layoutParams.setMarginStart(4);
            }
            view.setLayoutParams(layoutParams);
            view.setBackgroundColor(getResources().getColor(R$color.gray_light));
            this.binding.lltProgress.addView(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStepUi() {
        if (this.mCurrentStep == -1) {
            this.binding.cvNameStep.setVisibility(0);
            this.binding.cvCollectStep.setVisibility(8);
            this.binding.lltProgress.setVisibility(8);
            this.binding.tvPrevious.setVisibility(8);
            this.binding.tvNext.setText(R$string.next);
            if (!TextUtils.isEmpty(this.mBucketName)) {
                this.binding.edtName.setText(this.mBucketName);
                this.binding.edtName.setSelection(this.mBucketName.length());
            }
            updateCollectButtonState();
            return;
        }
        this.binding.cvNameStep.setVisibility(8);
        this.binding.cvCollectStep.setVisibility(0);
        this.binding.lltProgress.setVisibility(0);
        this.binding.tvPrevious.setVisibility(0);
        this.binding.tvPrevious.setEnabled((this.isCollecting || this.isCalibrating || this.finishingFineTune) ? false : true);
        for (int i = 0; i < this.binding.lltProgress.getChildCount(); i++) {
            View childAt = this.binding.lltProgress.getChildAt(i);
            if (i <= this.mCurrentStep) {
                childAt.setBackgroundColor(getResources().getColor(R$color.theme));
            } else {
                childAt.setBackgroundColor(getResources().getColor(R$color.gray_light));
            }
        }
        this.binding.tvStepNumber.setText(fromHtml(R$string.bucket_fine_tune_intro));
        int stepContentIndex = getStepContentIndex(this.mCurrentStep);
        if (stepContentIndex < this.mStepActionIds.length) {
            this.binding.tvStepAction.setText(getStepActionText(stepContentIndex, this.mCurrentStep + 1));
        }
        NightAwareImageView nightAwareImageView = this.binding.ivStep;
        int[] iArr = this.mStepImages;
        nightAwareImageView.setImageResource(iArr[stepContentIndex % iArr.length]);
        this.binding.tvNext.setText(getString(R$string.collect_step, Integer.valueOf(this.mCurrentStep + 1)));
        updateCollectButtonState();
    }

    private CharSequence getStepActionText(int i, int i2) {
        String string = getString(this.mStepActionIds[i]);
        if (isHostInstallAngleMode1() && i != i2 - 1) {
            string = relabelActionNumber(string, i2);
        }
        return fromHtml(string);
    }

    private String relabelActionNumber(String str, int i) {
        return str.replaceFirst("^([^<]*?)\\d+", "$1" + i);
    }

    private CharSequence fromHtml(int i) {
        String string = getString(i);
        if (Build.VERSION.SDK_INT >= 24) {
            return Html.fromHtml(string, 63);
        }
        return Html.fromHtml(string);
    }

    private CharSequence fromHtml(String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Html.fromHtml(str, 63);
        }
        return Html.fromHtml(str);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        if (insNavi == null || insNavi.deviceType != DeviceType.ZPY) {
            return;
        }
        this.mCurrentIns = insNavi;
        onRealtimeDataUpdated();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        if (gGAEntity == null || gGAEntity.deviceType != DeviceType.ZPY) {
            return;
        }
        this.mCurrentGGA = gGAEntity;
        onRealtimeDataUpdated();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.bucket_fine_tune);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        cancelCollectingDialog();
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.mCurrentStep == -1 && keyEvent.getKeyCode() == 4 && !isHeightInputDialogShowing()) {
            if (keyEvent.getAction() == 1) {
                handleExitBackPress();
            }
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public void onBackPressed() {
        handleExitBackPress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleExitBackPress() {
        if (this.isCollecting) {
            cancelCollectingDialog();
            return;
        }
        if (this.mCurrentStep == -1) {
            hideKeyboard();
            AppCompatEditText appCompatEditText = this.binding.edtName;
            if (appCompatEditText != null) {
                appCompatEditText.clearFocus();
            }
        }
        showTipDialog(getString(R$string.exit_bucket_fine_tune), getString(R$string.confirm), getString(R$string.cancel), (TipsDialogFragment.OnConfirmListener) null, "back");
    }

    private boolean isHeightInputDialogShowing() {
        return getSupportFragmentManager().findFragmentByTag("FineTuneHeightInputDialogFragment") != null;
    }
}
