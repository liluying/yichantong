package com.qianhe.yct.activity.excavator;

import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentResultListener;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.GetCalibrateParamEvent;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.rtkclientlib.event.SetCalibrateParamEvent;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.verifyaccuracy.VerifyAccuracyActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.ActivityExcavatorCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.enums.ExcavatorCalibrateModeEnum;
import com.qianhe.yct.enums.InsStatusEnum;
import com.qianhe.yct.event.CreateExcavatorResponse;
import com.qianhe.yct.fragment.CreateExcavatorNameFragment;
import com.qianhe.yct.fragment.ExcavatorChoiceModeFragment;
import com.qianhe.yct.fragment.ExcavatorChoiceTypeFragment;
import com.qianhe.yct.fragment.ExcavatorMode4BucketFragment;
import com.qianhe.yct.fragment.ExcavatorMode4Step2Fragment;
import com.qianhe.yct.fragment.ExcavatorMode4Step3Fragment;
import com.qianhe.yct.fragment.ExcavatorMode4Step4Fragment;
import com.qianhe.yct.fragment.ExcavatorStep1Fragment;
import com.qianhe.yct.fragment.ExcavatorStep2Fragment;
import com.qianhe.yct.fragment.ExcavatorStep3Fragment;
import com.qianhe.yct.fragment.ExcavatorStep4Fragment;
import com.qianhe.yct.utils.CalibParamsIdUtil;
import com.qianhe.yct.utils.CalibrateSessionHelper;
import com.qianhe.yct.utils.CurrentExcavatorCalibHelper;
import com.qianhe.yct.utils.ExcavatorCalibHelper;
import com.qianhe.yct.utils.NetworkUserLoader;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorCreateActivity extends BaseActivity {
    private static final Gson GSON = new Gson();
    private static final Class<?>[] PAGE_TYPES = {CreateExcavatorNameFragment.class, ExcavatorChoiceModeFragment.class, ExcavatorChoiceTypeFragment.class, ExcavatorMode4BucketFragment.class, ExcavatorMode4Step2Fragment.class, ExcavatorMode4Step3Fragment.class, ExcavatorMode4Step4Fragment.class, ExcavatorStep1Fragment.class, ExcavatorStep2Fragment.class, ExcavatorStep3Fragment.class, ExcavatorStep4Fragment.class};
    private ExcavatorCreatePagerAdapter adapter;
    private ActivityExcavatorCreateBinding binding;
    private ExcavatorEntity excavatorEntity;
    private boolean hideProfessionalMode;
    private boolean hostCalibReceived;
    private int hostLibMode;
    private ExcavatorEntity initEntity;
    private int initPage;
    private long lastContinueClickElapsed;
    private DatabaseManager mDatabaseManager;
    private InsNavi mLatestIns;
    private boolean mode4SweepNeedRestart;
    private int pagePosition;
    private boolean pendingCreateUpload;
    private boolean replaceBucketMode;
    private ExcavatorEntity reuseBucketSource;
    private ExcavatorEntity reuseForearmSource;
    private boolean sawTiltReject;
    private boolean swingInsClearedOnce;
    private String hostCalibParams = "";
    private String hostCalibParamsId = "";
    private int pendingCompleteType = 0;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityExcavatorCreateBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.mDatabaseManager = DatabaseManager.getInstance(this);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "LOG,INS.AHRS,ONTIME," + this.appConfig.details.ins_interval));
        Intent intent = getIntent();
        if (intent != null) {
            long longExtra = intent.getLongExtra("localId", 0L);
            int intExtra = intent.getIntExtra("pagePosition", 0);
            this.pagePosition = intExtra;
            this.initPage = intExtra;
            List<ExcavatorEntity> listQueryExcavatorByLocalId = this.mDatabaseManager.queryExcavatorByLocalId(longExtra);
            if (!listQueryExcavatorByLocalId.isEmpty()) {
                ExcavatorEntity excavatorEntity = listQueryExcavatorByLocalId.get(0);
                this.excavatorEntity = excavatorEntity;
                Gson gson = GSON;
                this.initEntity = (ExcavatorEntity) gson.fromJson(gson.toJson(excavatorEntity), ExcavatorEntity.class);
            } else {
                this.excavatorEntity = new ExcavatorEntity();
                this.initEntity = new ExcavatorEntity();
            }
            ExcavatorEntity excavatorEntity2 = this.initEntity;
            ExcavatorEntity excavatorEntity3 = this.excavatorEntity;
            excavatorEntity2.localId = excavatorEntity3.localId;
            excavatorEntity2.name = excavatorEntity3.name;
        }
        if (bundle == null) {
            this.mSp.edit().putBoolean("show_install_leveling_tips", true).putBoolean("show_install_sensor_tips", true).apply();
        }
        if (bundle != null) {
            ExcavatorEntity excavatorEntity4 = (ExcavatorEntity) bundle.getSerializable("excavatorEntity");
            if (excavatorEntity4 != null) {
                this.excavatorEntity = excavatorEntity4;
            }
            this.hostCalibParams = bundle.getString("hostCalibParams", this.hostCalibParams);
            this.hostCalibParamsId = bundle.getString("hostCalibParamsId", this.hostCalibParamsId);
            this.hostLibMode = bundle.getInt("hostLibMode", this.hostLibMode);
            this.hostCalibReceived = bundle.getBoolean("hostCalibReceived", this.hostCalibReceived);
            this.hideProfessionalMode = bundle.getBoolean("hideProfessionalMode", this.hideProfessionalMode);
            this.replaceBucketMode = bundle.getBoolean("replaceBucketMode", this.replaceBucketMode);
            long j = bundle.getLong("reuseForearmLocalId", 0L);
            if (j > 0) {
                List<ExcavatorEntity> listQueryExcavatorByLocalId2 = this.mDatabaseManager.queryExcavatorByLocalId(j);
                if (!listQueryExcavatorByLocalId2.isEmpty()) {
                    this.reuseForearmSource = listQueryExcavatorByLocalId2.get(0);
                }
            }
            long j2 = bundle.getLong("reuseBucketLocalId", 0L);
            if (j2 > 0) {
                List<ExcavatorEntity> listQueryExcavatorByLocalId3 = this.mDatabaseManager.queryExcavatorByLocalId(j2);
                if (!listQueryExcavatorByLocalId3.isEmpty()) {
                    this.reuseBucketSource = listQueryExcavatorByLocalId3.get(0);
                }
            }
        }
        bindCheckAccuracyResultListener();
        initViewPager();
        EventBus.getDefault().post(new OrderBean("CALIBRATE,,GET_PARAM"));
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity != null) {
            bundle.putSerializable("excavatorEntity", excavatorEntity);
        }
        bundle.putString("hostCalibParams", this.hostCalibParams);
        bundle.putString("hostCalibParamsId", this.hostCalibParamsId);
        bundle.putInt("hostLibMode", this.hostLibMode);
        bundle.putBoolean("hostCalibReceived", this.hostCalibReceived);
        bundle.putBoolean("hideProfessionalMode", this.hideProfessionalMode);
        bundle.putBoolean("replaceBucketMode", this.replaceBucketMode);
        ExcavatorEntity excavatorEntity2 = this.reuseForearmSource;
        bundle.putLong("reuseForearmLocalId", excavatorEntity2 != null ? excavatorEntity2.localId : 0L);
        ExcavatorEntity excavatorEntity3 = this.reuseBucketSource;
        bundle.putLong("reuseBucketLocalId", excavatorEntity3 != null ? excavatorEntity3.localId : 0L);
    }

    public ExcavatorEntity getExcavatorEntity() {
        return this.excavatorEntity;
    }

    public ExcavatorEntity getInitEntity() {
        return this.initEntity;
    }

    public boolean isSwingInsClearedOnce() {
        return this.swingInsClearedOnce;
    }

    public int getHostLibMode() {
        return this.hostLibMode;
    }

    public boolean isHostCalibReceived() {
        return this.hostCalibReceived;
    }

    public boolean isReplaceBucketMode() {
        return this.replaceBucketMode;
    }

    public void setReuseForearmSource(ExcavatorEntity excavatorEntity) {
        this.reuseForearmSource = excavatorEntity;
    }

    public ExcavatorEntity getReuseForearmSource() {
        return this.reuseForearmSource;
    }

    public void setReuseBucketSource(ExcavatorEntity excavatorEntity) {
        this.reuseBucketSource = excavatorEntity;
    }

    public ExcavatorEntity getReuseBucketSource() {
        return this.reuseBucketSource;
    }

    public void markMode4SweepNeedRestart() {
        this.mode4SweepNeedRestart = true;
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity != null) {
            excavatorEntity.clearReAttitudes();
        }
    }

    public boolean consumeMode4SweepNeedRestart() {
        boolean z = this.mode4SweepNeedRestart;
        this.mode4SweepNeedRestart = false;
        return z;
    }

    public void onChooseCreateNewExcavator() {
        this.replaceBucketMode = false;
        this.hideProfessionalMode = true;
        EventBus.getDefault().post("next");
    }

    public void onChooseReplaceBucket() {
        if (TextUtils.isEmpty(this.hostCalibParams)) {
            showToastDialog(getString(R$string.cannot_configure));
            return;
        }
        this.replaceBucketMode = true;
        this.hideProfessionalMode = false;
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity != null) {
            excavatorEntity.mode = (this.hostLibMode == 3 ? ExcavatorCalibrateModeEnum.NO_SENSOR_NOT_FLAT : ExcavatorCalibrateModeEnum.SENSOR).getMode();
            this.excavatorEntity.distanceBucketMeasure = true;
        }
        CalibrateSessionHelper.beginReplaceBucket(this, this.excavatorEntity);
        jumpToPage(ExcavatorMode4BucketFragment.class);
        refreshTopBarTitle();
    }

    public void completeReplaceBucket() {
        copyHostForearmMetaToNewExcavator();
        ExcavatorEntity excavatorEntityFindExcavatorByDeviceCalibParamsId = CurrentExcavatorCalibHelper.findExcavatorByDeviceCalibParamsId(this, this.hostCalibParamsId);
        ExcavatorEntity excavatorEntity = new ExcavatorEntity();
        excavatorEntity.name = excavatorEntityFindExcavatorByDeviceCalibParamsId != null ? excavatorEntityFindExcavatorByDeviceCalibParamsId.name : "";
        excavatorEntity.calibParams = this.hostCalibParams;
        CalibrateSessionHelper.recordReuseArmInput(this, this.excavatorEntity, excavatorEntity, this.mGGA, this.mLatestIns, YCTApplication.getInstance().getSensorInfo());
        completeWithSetTool(this.hostCalibParams, 1);
    }

    public void completeReuseForearm(ExcavatorEntity excavatorEntity) {
        List<ExcavatorEntity> listQueryExcavatorByLocalId;
        if (excavatorEntity != null) {
            long j = excavatorEntity.localId;
            if (j > 0 && (listQueryExcavatorByLocalId = this.mDatabaseManager.queryExcavatorByLocalId(j)) != null && !listQueryExcavatorByLocalId.isEmpty()) {
                excavatorEntity = listQueryExcavatorByLocalId.get(0);
            }
        }
        ExcavatorEntity excavatorEntity2 = excavatorEntity;
        if (excavatorEntity2 == null || TextUtils.isEmpty(excavatorEntity2.calibParams)) {
            showToastDialog(getString(R$string.cannot_configure));
            return;
        }
        ExcavatorEntity excavatorEntity3 = this.excavatorEntity;
        excavatorEntity3.HA = excavatorEntity2.HA;
        excavatorEntity3.pq = excavatorEntity2.pq;
        excavatorEntity3.AD = excavatorEntity2.AD;
        excavatorEntity3.BC = excavatorEntity2.BC;
        excavatorEntity3.CD = excavatorEntity2.CD;
        excavatorEntity3.Dx = excavatorEntity2.Dx;
        int i = excavatorEntity2.mode;
        if (i > 0) {
            excavatorEntity3.mode = i;
        }
        excavatorEntity2.ensureCalibSoInputsReady();
        excavatorEntity2.reloadSweepAttitudesFromJson();
        this.excavatorEntity.copyCalibSoInputsFrom(excavatorEntity2);
        CalibrateSessionHelper.recordReuseArmInput(this, this.excavatorEntity, excavatorEntity2, this.mGGA, this.mLatestIns, YCTApplication.getInstance().getSensorInfo());
        completeWithSetTool(excavatorEntity2.calibParams, 2);
    }

    private int indexOfPage(Class<?> cls) {
        int i = 0;
        while (true) {
            Class<?>[] clsArr = PAGE_TYPES;
            if (i >= clsArr.length) {
                return 0;
            }
            if (clsArr[i] == cls) {
                return i;
            }
            i++;
        }
    }

    private void jumpToPage(Class<?> cls) {
        int iIndexOfPage = indexOfPage(cls);
        this.pagePosition = iIndexOfPage;
        this.binding.viewPager2.setCurrentItem(iIndexOfPage, false);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    public boolean shouldIgnoreBucketSensorLost() {
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        return excavatorEntity != null && excavatorEntity.mode == ExcavatorCalibrateModeEnum.NO_SENSOR_FLAT.getMode();
    }

    public static boolean hasOtherInsAbnormal(InsNavi insNavi, boolean z) {
        if (insNavi == null) {
            return false;
        }
        int i = insNavi.insStaus;
        if (z) {
            i &= ~InsStatusEnum.SENSORLOST.getStatus();
        }
        return ((InsStatusEnum.GNSSLOST.getStatus() & i) == 0 && (InsStatusEnum.GNSSREJECT.getStatus() & i) == 0 && (i & InsStatusEnum.SENSORLOST.getStatus()) == 0) ? false : true;
    }

    public static boolean hasTiltReject(InsNavi insNavi) {
        return (insNavi == null || (insNavi.insStaus & InsStatusEnum.TILTREJECT.getStatus()) == 0) ? false : true;
    }

    public static boolean isSwingInsExempt(InsNavi insNavi, boolean z, boolean z2) {
        if (!z || insNavi == null || hasOtherInsAbnormal(insNavi, z2)) {
            return false;
        }
        return hasTiltReject(insNavi);
    }

    private void trackSwingInsClear(InsNavi insNavi) {
        if (insNavi == null) {
            return;
        }
        if (isCreateInsAvailable(insNavi)) {
            if (this.sawTiltReject) {
                this.swingInsClearedOnce = true;
            }
            this.sawTiltReject = false;
        } else if (hasTiltReject(insNavi)) {
            this.sawTiltReject = true;
        }
    }

    private boolean isCreateInsAvailable(InsNavi insNavi) {
        if (this.mAvailable) {
            return true;
        }
        if (shouldIgnoreBucketSensorLost() && insNavi != null) {
            int i = insNavi.insStaus;
            if ((InsStatusEnum.GNSSLOST.getStatus() & i) == 0 && (InsStatusEnum.GNSSREJECT.getStatus() & i) == 0 && (InsStatusEnum.TILTREJECT.getStatus() & i) == 0 && (i & InsStatusEnum.SENSORLOST.getStatus()) != 0) {
                return true;
            }
        }
        return false;
    }

    private void initViewPager() {
        ExcavatorCreatePagerAdapter excavatorCreatePagerAdapter = new ExcavatorCreatePagerAdapter(this);
        this.adapter = excavatorCreatePagerAdapter;
        this.binding.viewPager2.setAdapter(excavatorCreatePagerAdapter);
        this.binding.viewPager2.setCurrentItem(this.pagePosition, false);
        this.binding.viewPager2.setUserInputEnabled(false);
        this.binding.viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.qianhe.yct.activity.excavator.ExcavatorCreateActivity.1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                ExcavatorCreateActivity.this.pagePosition = i;
                ExcavatorCreateActivity.this.refreshTopBarTitle();
            }
        });
        this.binding.viewPager2.setOffscreenPageLimit(1);
    }

    private Bundle buildFragmentArgs() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("initEntity", this.initEntity);
        bundle.putSerializable("excavatorEntity", this.excavatorEntity);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Fragment createPageFragment(int i) {
        Fragment excavatorStep4Fragment;
        Class<?> cls = PAGE_TYPES[i];
        if (cls == CreateExcavatorNameFragment.class) {
            excavatorStep4Fragment = new CreateExcavatorNameFragment();
        } else if (cls == ExcavatorChoiceModeFragment.class) {
            excavatorStep4Fragment = new ExcavatorChoiceModeFragment();
        } else if (cls == ExcavatorChoiceTypeFragment.class) {
            excavatorStep4Fragment = new ExcavatorChoiceTypeFragment();
        } else if (cls == ExcavatorMode4BucketFragment.class) {
            excavatorStep4Fragment = new ExcavatorMode4BucketFragment();
        } else if (cls == ExcavatorStep1Fragment.class) {
            excavatorStep4Fragment = new ExcavatorStep1Fragment();
        } else if (cls == ExcavatorStep2Fragment.class) {
            excavatorStep4Fragment = new ExcavatorStep2Fragment();
        } else if (cls == ExcavatorMode4Step2Fragment.class) {
            excavatorStep4Fragment = new ExcavatorMode4Step2Fragment();
        } else if (cls == ExcavatorMode4Step3Fragment.class) {
            excavatorStep4Fragment = new ExcavatorMode4Step3Fragment();
        } else if (cls == ExcavatorMode4Step4Fragment.class) {
            excavatorStep4Fragment = new ExcavatorMode4Step4Fragment();
        } else if (cls == ExcavatorStep3Fragment.class) {
            excavatorStep4Fragment = new ExcavatorStep3Fragment();
        } else if (cls == ExcavatorStep4Fragment.class) {
            excavatorStep4Fragment = new ExcavatorStep4Fragment();
        } else {
            throw new IllegalArgumentException("Unknown page: " + i);
        }
        excavatorStep4Fragment.setArguments(buildFragmentArgs());
        return excavatorStep4Fragment;
    }

    private BaseProjectFragment getCurrentFragment() {
        for (Fragment fragment : getSupportFragmentManager().getFragments()) {
            if ((fragment instanceof BaseProjectFragment) && fragment.isResumed()) {
                return (BaseProjectFragment) fragment;
            }
        }
        return null;
    }

    public boolean isFastContinueClick() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.lastContinueClickElapsed < 800) {
            return true;
        }
        this.lastContinueClickElapsed = jElapsedRealtime;
        return false;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(String str) {
        if (str.equals("previous")) {
            previous();
        } else if (str.equals("next")) {
            next();
        }
    }

    private void previous() {
        int i;
        BaseProjectFragment currentFragment = getCurrentFragment();
        if ((currentFragment instanceof ExcavatorMode4Step3Fragment) && ((ExcavatorMode4Step3Fragment) currentFragment).handleNavigatePrevious()) {
            return;
        }
        do {
            i = this.pagePosition - 1;
            this.pagePosition = i;
            if (i < 0) {
                finish();
                return;
            }
        } while (shouldSkipPage(i));
        int i2 = this.pagePosition;
        if (i2 == 0) {
            this.replaceBucketMode = false;
        }
        this.binding.viewPager2.setCurrentItem(i2, false);
    }

    private void next() {
        while (true) {
            int i = this.pagePosition + 1;
            this.pagePosition = i;
            if (i > this.adapter.getItemCount() - 1) {
                this.pagePosition = this.adapter.getItemCount() - 1;
                break;
            } else if (!shouldSkipPage(this.pagePosition)) {
                break;
            }
        }
        this.binding.viewPager2.setCurrentItem(this.pagePosition, false);
    }

    private boolean shouldSkipPage(int i) {
        if (i >= 0) {
            Class<?>[] clsArr = PAGE_TYPES;
            if (i < clsArr.length) {
                Class<?> cls = clsArr[i];
                if (this.replaceBucketMode) {
                    return (cls == CreateExcavatorNameFragment.class || cls == ExcavatorMode4BucketFragment.class) ? false : true;
                }
                if (MultiBluetoothManager.getInstance(this).isKe76Pro() && cls == ExcavatorChoiceTypeFragment.class) {
                    return true;
                }
                ExcavatorEntity excavatorEntity = this.excavatorEntity;
                return (excavatorEntity == null || (excavatorEntity.localId <= 0 ? !excavatorEntity.distanceBucketMeasure : !excavatorEntity.isDistanceBucketMeasureFlow())) ? cls == ExcavatorMode4BucketFragment.class || cls == ExcavatorMode4Step2Fragment.class || cls == ExcavatorMode4Step3Fragment.class || cls == ExcavatorMode4Step4Fragment.class : cls == ExcavatorStep1Fragment.class || cls == ExcavatorStep2Fragment.class || cls == ExcavatorStep3Fragment.class || cls == ExcavatorStep4Fragment.class;
            }
        }
        return false;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.excavator.ExcavatorCreateActivity.2
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("back") && bundle.getBoolean("confirm")) {
                    ExcavatorCreateActivity.this.finish();
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.mLatestIns = insNavi;
        trackSwingInsClear(insNavi);
        BaseProjectFragment currentFragment = getCurrentFragment();
        if (currentFragment != null) {
            currentFragment.insNavi(insNavi, isCreateInsAvailable(insNavi));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(GetCalibrateParamEvent getCalibrateParamEvent) {
        if (getCalibrateParamEvent == null || getCalibrateParamEvent.deviceType == DeviceType.BASE) {
            return;
        }
        this.hostCalibReceived = true;
        String str = getCalibrateParamEvent.calibParamsId;
        if (str == null) {
            str = "";
        }
        this.hostCalibParamsId = str;
        String str2 = getCalibrateParamEvent.calibParams;
        String str3 = str2 != null ? str2 : "";
        this.hostCalibParams = str3;
        this.hostLibMode = ExcavatorCalibHelper.getMode(str3);
        CalibrateLogToFile.i("新建挖机 GET_PARAM 校准参数类型：" + this.hostLibMode + "，calibParamsLen=" + this.hostCalibParams.length());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(SetCalibrateParamEvent setCalibrateParamEvent) {
        CalibrateSessionHelper.handleSetParamReplyIfWaiting(setCalibrateParamEvent != null ? setCalibrateParamEvent.line : null, this.mGGA, this.mLatestIns, YCTApplication.getInstance().getSensorInfo(), null);
        BaseProjectFragment currentFragment = getCurrentFragment();
        if (currentFragment instanceof ExcavatorMode4Step4Fragment) {
            ((ExcavatorMode4Step4Fragment) currentFragment).onDeviceSetParamReply(setCalibrateParamEvent);
        }
        if (this.pendingCompleteType == 0) {
            return;
        }
        if (setCalibrateParamEvent != null && !TextUtils.isEmpty(setCalibrateParamEvent.line) && setCalibrateParamEvent.line.contains("OK")) {
            onSetToolParamSuccess();
            return;
        }
        int i = this.pendingCompleteType;
        this.pendingCompleteType = 0;
        cancelLoadingDialog();
        CalibrateLogToFile.e("SET_PARAM 失败，completeType=" + i);
        showTipDialog(getString(R$string.config_failed_please_check_params), getString(R$string.ok), null);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        refreshTopBarTitle();
        return this.binding.topBar.getRoot();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshTopBarTitle() {
        this.binding.topBar.tvTitle.setText(getString(this.replaceBucketMode ? R$string.replace_bucket : R$string.calibration));
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void ivBackClick() {
        this.binding.topBar.lltBackTb.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.excavator.ExcavatorCreateActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ExcavatorCreateActivity.this.pagePosition != 0) {
                    ExcavatorCreateActivity excavatorCreateActivity = ExcavatorCreateActivity.this;
                    excavatorCreateActivity.showTipDialog(excavatorCreateActivity.getString(R$string.exit_editing), ExcavatorCreateActivity.this.getString(R$string.confirm), null, "back");
                } else {
                    ExcavatorCreateActivity.this.finish();
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        BaseProjectFragment currentFragment = getCurrentFragment();
        if (currentFragment != null) {
            currentFragment.gga(gGAEntity);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.pagePosition == this.initPage) {
            super.onBackPressed();
        } else {
            previous();
        }
    }

    private void completeWithSetTool(final String str, int i) {
        if (this.pendingCompleteType != 0) {
            return;
        }
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity == null || excavatorEntity.shovelEntity == null) {
            showToastDialog(getString(R$string.cannot_configure));
        } else {
            if (TextUtils.isEmpty(str)) {
                showToastDialog(getString(R$string.cannot_configure));
                return;
            }
            showLoadingDialog(getString(R$string.please_wait));
            this.pendingCompleteType = i;
            new Thread(new Runnable() { // from class: com.qianhe.yct.activity.excavator.ExcavatorCreateActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ExcavatorCreateActivity.m1642$r8$lambda$RhXUMgycw3Zkh5I3lrsUCjaH0(this.f$0, str);
                }
            }).start();
        }
    }

    /* renamed from: $r8$lambda$RhXUMgycw3Zk-h5I-3lrsUCjaH0, reason: not valid java name */
    public static /* synthetic */ void m1642$r8$lambda$RhXUMgycw3Zkh5I3lrsUCjaH0(final ExcavatorCreateActivity excavatorCreateActivity, String str) {
        ShovelEntity shovelEntity = excavatorCreateActivity.excavatorEntity.shovelEntity;
        if (TextUtils.isEmpty(shovelEntity.param)) {
            if (excavatorCreateActivity.reuseBucketSource != null) {
                excavatorCreateActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.excavator.ExcavatorCreateActivity$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ExcavatorCreateActivity.$r8$lambda$Gy6WLBb7ORMstRNlU6G6d3RQEnA(this.f$0);
                    }
                });
                return;
            }
            final ExcavatorCalibHelper.Result resultMakeToolParam = ExcavatorCalibHelper.makeToolParam(excavatorCreateActivity.excavatorEntity);
            if (!resultMakeToolParam.isSuccess()) {
                excavatorCreateActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.excavator.ExcavatorCreateActivity$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        ExcavatorCreateActivity.$r8$lambda$WqHlSOc5wtGKGPJbcesLe4j5Bx0(this.f$0, resultMakeToolParam);
                    }
                });
                return;
            }
            shovelEntity.param = resultMakeToolParam.calibParamsBase64;
        }
        final ExcavatorCalibHelper.Result resultApplyTool = ExcavatorCalibHelper.applyTool(str, shovelEntity.param);
        final String strBuildCalibParamsId = CalibParamsIdUtil.buildCalibParamsId(excavatorCreateActivity.excavatorEntity);
        excavatorCreateActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.excavator.ExcavatorCreateActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ExcavatorCreateActivity.$r8$lambda$HVAvZuRzbbWHzdLSiiV8huLxbxk(this.f$0, resultApplyTool, strBuildCalibParamsId);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Gy6WLBb7ORMstRNlU6G6d3RQEnA(ExcavatorCreateActivity excavatorCreateActivity) {
        excavatorCreateActivity.pendingCompleteType = 0;
        excavatorCreateActivity.cancelLoadingDialog();
        excavatorCreateActivity.showToastDialog(excavatorCreateActivity.getString(R$string.cannot_configure));
    }

    public static /* synthetic */ void $r8$lambda$WqHlSOc5wtGKGPJbcesLe4j5Bx0(ExcavatorCreateActivity excavatorCreateActivity, ExcavatorCalibHelper.Result result) {
        excavatorCreateActivity.pendingCompleteType = 0;
        excavatorCreateActivity.cancelLoadingDialog();
        CalibrateLogToFile.e("生成铲斗参数失败，code=" + result.code);
        excavatorCreateActivity.showTipDialog(excavatorCreateActivity.getString(R$string.shovel_parameter_generation_failed), excavatorCreateActivity.getString(R$string.ok), null);
    }

    public static /* synthetic */ void $r8$lambda$HVAvZuRzbbWHzdLSiiV8huLxbxk(ExcavatorCreateActivity excavatorCreateActivity, ExcavatorCalibHelper.Result result, String str) {
        if (excavatorCreateActivity.isDestroyed()) {
            return;
        }
        if (!result.isSuccess()) {
            excavatorCreateActivity.pendingCompleteType = 0;
            excavatorCreateActivity.cancelLoadingDialog();
            CalibrateLogToFile.e("set_tool 失败，code=" + result.code);
            excavatorCreateActivity.showTipDialog(excavatorCreateActivity.getString(R$string.config_failed_please_check_params), excavatorCreateActivity.getString(R$string.ok), null);
            return;
        }
        ExcavatorEntity excavatorEntity = excavatorCreateActivity.excavatorEntity;
        excavatorEntity.calibParamsId = str;
        excavatorEntity.calibParams = result.calibParamsBase64;
        if (!CalibrateLogToFile.hasActiveSession()) {
            CalibrateSessionHelper.beginForExcavator(excavatorCreateActivity, excavatorCreateActivity.excavatorEntity, "local", excavatorCreateActivity.replaceBucketMode ? "bucket" : null);
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("set_param", CalibrateSessionHelper.buildSetParam(str, result.calibParamsBase64));
        int i = excavatorCreateActivity.pendingCompleteType;
        boolean z = true;
        if (i != 2 && i != 1) {
            z = false;
        }
        InsNavi insNaviInsFromSavedMode21 = z ? CalibrateSessionHelper.insFromSavedMode21(excavatorCreateActivity.excavatorEntity) : excavatorCreateActivity.mLatestIns;
        SensorInfoEvent sensorInfoEventSensorFromSavedMode21 = z ? CalibrateSessionHelper.sensorFromSavedMode21(excavatorCreateActivity.excavatorEntity) : YCTApplication.getInstance().getSensorInfo();
        if (z) {
            CalibrateSessionHelper.recordCmdWithLive("SET_PARAM", jsonObject, excavatorCreateActivity.mGGA, insNaviInsFromSavedMode21, sensorInfoEventSensorFromSavedMode21, null, true, excavatorCreateActivity.mLatestIns);
        } else {
            CalibrateSessionHelper.recordCmdWithLive("SET_PARAM", jsonObject, excavatorCreateActivity.mGGA, insNaviInsFromSavedMode21, sensorInfoEventSensorFromSavedMode21, null);
        }
        boolean zSyncCalibParamsToDevice = excavatorCreateActivity.syncCalibParamsToDevice(str, result.calibParamsBase64);
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("ok", Boolean.TRUE);
        String str2 = excavatorCreateActivity.excavatorEntity.name;
        if (str2 == null) {
            str2 = "";
        }
        jsonObject2.addProperty("name", str2);
        jsonObject2.addProperty("calib_params_id", str);
        if (zSyncCalibParamsToDevice) {
            CalibrateSessionHelper.scheduleEndAfterSetParamReply(jsonObject2);
            return;
        }
        excavatorCreateActivity.pendingCompleteType = 0;
        CalibrateSessionHelper.clearAwaitSetParamReply();
        excavatorCreateActivity.cancelLoadingDialog();
        excavatorCreateActivity.showToastDialog(excavatorCreateActivity.getString(R$string.disconnected_device));
    }

    private boolean syncCalibParamsToDevice(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        if (!YCTApplication.getInstance().isDemo() && YCTApplication.getInstance().getCurrentDevice().state != BluetoothStateEnum.CONNECTED.getState()) {
            return false;
        }
        EventBus.getDefault().post(new OrderBean("CALIBRATE,,SET_PARAM," + str + "," + str2));
        return true;
    }

    private void onSetToolParamSuccess() {
        int i = this.pendingCompleteType;
        this.pendingCompleteType = 0;
        if (i == 1 || i == 2) {
            saveNewExcavatorResult();
        } else {
            cancelLoadingDialog();
        }
    }

    private void copyHostForearmMetaToNewExcavator() {
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        if (excavatorEntity == null) {
            return;
        }
        excavatorEntity.localId = 0L;
        ExcavatorEntity excavatorEntityFindExcavatorByDeviceCalibParamsId = CurrentExcavatorCalibHelper.findExcavatorByDeviceCalibParamsId(this, this.hostCalibParamsId);
        if (excavatorEntityFindExcavatorByDeviceCalibParamsId == null) {
            return;
        }
        ExcavatorEntity excavatorEntity2 = this.excavatorEntity;
        excavatorEntity2.HA = excavatorEntityFindExcavatorByDeviceCalibParamsId.HA;
        excavatorEntity2.pq = excavatorEntityFindExcavatorByDeviceCalibParamsId.pq;
        excavatorEntity2.AD = excavatorEntityFindExcavatorByDeviceCalibParamsId.AD;
        excavatorEntity2.BC = excavatorEntityFindExcavatorByDeviceCalibParamsId.BC;
        excavatorEntity2.CD = excavatorEntityFindExcavatorByDeviceCalibParamsId.CD;
        excavatorEntity2.Dx = excavatorEntityFindExcavatorByDeviceCalibParamsId.Dx;
        excavatorEntity2.copyCalibSoInputsFrom(excavatorEntityFindExcavatorByDeviceCalibParamsId);
        ExcavatorEntity excavatorEntity3 = this.excavatorEntity;
        excavatorEntity3.distanceBucketMeasure = true;
        int i = excavatorEntityFindExcavatorByDeviceCalibParamsId.mode;
        if (i <= 0 || excavatorEntity3.mode != 0) {
            return;
        }
        excavatorEntity3.mode = i;
    }

    private void saveNewExcavatorResult() {
        ExcavatorEntity excavatorEntity = this.excavatorEntity;
        excavatorEntity.localId = 0L;
        if (TextUtils.isEmpty(excavatorEntity.name) || DatabaseManager.getInstance(this).isExcavatorNameExists(this.excavatorEntity.name)) {
            cancelLoadingDialog();
            showTipDialog(getString(R$string.excavator_name_already_exists), getString(R$string.ok), null);
            return;
        }
        this.excavatorEntity.localId = DatabaseManager.getInstance(this).insertExcavator(this.excavatorEntity);
        setResult(-1);
        this.pendingCreateUpload = true;
        NetworkUserLoader.getInstance().createExcavator(this, this.excavatorEntity);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(CreateExcavatorResponse createExcavatorResponse) {
        if (this.pendingCreateUpload) {
            this.pendingCreateUpload = false;
            showVerifyAccuracy();
        }
    }

    public void showVerifyAccuracy() {
        cancelLoadingDialog();
        bindCheckAccuracyResultListener();
        showTipDialog(getString(R$string.calibrate_completed_checking_accuracy), getString(R$string.confirm), null, "check_accuracy");
    }

    private void bindCheckAccuracyResultListener() {
        getSupportFragmentManager().clearFragmentResult("check_accuracy");
        getSupportFragmentManager().clearFragmentResultListener("check_accuracy");
        getSupportFragmentManager().setFragmentResultListener("check_accuracy", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.excavator.ExcavatorCreateActivity$$ExternalSyntheticLambda0
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                ExcavatorCreateActivity.$r8$lambda$dhhnTDTGVTKGVZpODUYbIyfFkZQ(this.f$0, str, bundle);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$dhhnTDTGVTKGVZpODUYbIyfFkZQ(ExcavatorCreateActivity excavatorCreateActivity, String str, Bundle bundle) {
        excavatorCreateActivity.getClass();
        if ("check_accuracy".equals(str)) {
            if (bundle.getBoolean("confirm")) {
                Intent intent = new Intent(excavatorCreateActivity, (Class<?>) VerifyAccuracyActivity.class);
                ExcavatorEntity excavatorEntity = excavatorCreateActivity.excavatorEntity;
                if (excavatorEntity != null && excavatorEntity.distanceBucketMeasure) {
                    intent.putExtra("skipVerifyModeSelect", true);
                }
                excavatorCreateActivity.startActivity(intent);
            }
            excavatorCreateActivity.finish();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        CalibrateSessionHelper.endAwaitingSessionIfNeeded();
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    private class ExcavatorCreatePagerAdapter extends FragmentStateAdapter {
        ExcavatorCreatePagerAdapter(FragmentActivity fragmentActivity) {
            super(fragmentActivity);
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public Fragment createFragment(int i) {
            return ExcavatorCreateActivity.this.createPageFragment(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ExcavatorCreateActivity.PAGE_TYPES.length;
        }
    }
}
