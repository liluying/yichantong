package com.qianhe.yct.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.GetCalibrateParamEvent;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.rtkclientlib.event.SetCalibrateParamEvent;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.BucketListAdapter;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityBucketListBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.event.CreateBucketResponse;
import com.qianhe.yct.event.QueryBucketResponse;
import com.qianhe.yct.event.SwicthBucketEvent;
import com.qianhe.yct.utils.BucketSwitchHelper;
import com.qianhe.yct.utils.CalibParamsIdUtil;
import com.qianhe.yct.utils.CalibrateSessionHelper;
import com.qianhe.yct.utils.CurrentExcavatorCalibHelper;
import com.qianhe.yct.utils.ExcavatorCalibHelper;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.view.BucketBottomView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BucketListActivity extends BaseActivity {
    private BucketListAdapter adapter;
    private ActivityBucketListBinding binding;
    private DatabaseManager databaseManager;
    private boolean holdHostCalibAfterSwitchFail;
    private boolean isChange;
    private List<ShovelEntity> localList;
    private InsNavi mLatestIns;
    private int mParamsType;
    private boolean pendingConfigSuccessToast;
    private ShovelEntity pendingSwitchBucket;
    private boolean showError;
    private ExcavatorEntity switchRollbackExcavator;
    private boolean switchingBucket;
    private final List<ShovelEntity> mList = new ArrayList();
    private List<String> idStrList = new ArrayList();
    private int index = 0;
    private ShovelEntity selectShovelEntity = new ShovelEntity();
    private ExcavatorEntity mCurrentExcavator = new ExcavatorEntity();
    private String deviceCalibParamsId = "";
    private String deviceCalibParams = "";
    private String switchRollbackDeviceCalibParamsId = "";
    private String switchRollbackDeviceCalibParams = "";

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityBucketListBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.databaseManager = DatabaseManager.getInstance(this);
        this.adapter = new BucketListAdapter(this, this.mList);
        if (getResources().getConfiguration().orientation == 2) {
            this.binding.rcv.setLayoutManager(new GridLayoutManager(this, 2));
        } else {
            this.binding.rcv.setLayoutManager(new LinearLayoutManager(this));
        }
        this.binding.rcv.setAdapter(this.adapter);
        this.adapter.setOnActionListener(new BucketListAdapter.OnActionListener() { // from class: com.qianhe.yct.activity.BucketListActivity.1
            @Override // com.qianhe.yct.adapter.BucketListAdapter.OnActionListener
            public void onClick(final ShovelEntity shovelEntity) {
                if (BucketListActivity.this.isSupportBucket(true)) {
                    BucketListActivity bucketListActivity = BucketListActivity.this;
                    bucketListActivity.showTipDialog(bucketListActivity.getString(R$string.want_to_switch_buckets), BucketListActivity.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.BucketListActivity.1.1
                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onClose(boolean z) {
                        }

                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            BucketListActivity.this.swicthBucket(shovelEntity);
                        }
                    });
                }
            }

            @Override // com.qianhe.yct.adapter.BucketListAdapter.OnActionListener
            public void onSelItem(List<String> list) {
                BucketListActivity.this.idStrList = list;
                BucketListActivity.this.updateSelectAllState();
            }

            @Override // com.qianhe.yct.adapter.BucketListAdapter.OnActionListener
            public void onMenuAction(int i, ShovelEntity shovelEntity) {
                if (i == 2) {
                    if (shovelEntity != null) {
                        BucketListActivity.this.openBucketEdit(shovelEntity.localId);
                    }
                } else {
                    BucketListActivity.this.binding.bottomBtn.setSelectedIndex(i);
                    BucketListActivity.this.binding.bottomBtn.showExecuteUi();
                    BucketListActivity.this.adapter.showSelUi(i == 1);
                    BucketListActivity.this.showSelectAll(i == 1);
                }
            }
        });
        this.binding.lltAll.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.BucketListActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BucketListActivity.$r8$lambda$kGdn2m1Xrz3AegZQLD8pxFs3XAA(this.f$0, view);
            }
        });
        this.binding.bottomBtn.setOnNavItemClickListener(new BucketBottomView.OnNavItemClickListener() { // from class: com.qianhe.yct.activity.BucketListActivity.2
            @Override // com.qianhe.yct.view.BucketBottomView.OnNavItemClickListener
            public void onItemClick(int i) {
                BucketListActivity.this.adapter.showSelUi(i == 1, i == 2);
                BucketListActivity.this.showSelectAll(i == 1);
            }

            @Override // com.qianhe.yct.view.BucketBottomView.OnNavItemClickListener
            public void onCancel() {
                BucketListActivity.this.adapter.closeSelUi();
                BucketListActivity.this.showSelectAll(false);
            }

            @Override // com.qianhe.yct.view.BucketBottomView.OnNavItemClickListener
            public void onExecuteClick(int i) {
                if (i == 0) {
                    Intent intent = new Intent(BucketListActivity.this, (Class<?>) BucketCreateActivity.class);
                    intent.putExtra("isSupportBucket", BucketListActivity.this.isSupportBucket(false));
                    intent.putExtra("currentExcavator", BucketListActivity.this.mCurrentExcavator);
                    BucketListActivity.this.startActivity(intent);
                    return;
                }
                if (i != 1) {
                    if (i == 2) {
                        if (BucketListActivity.this.idStrList.isEmpty()) {
                            BucketListActivity bucketListActivity = BucketListActivity.this;
                            bucketListActivity.showToastDialog(bucketListActivity.getString(R$string.select_least_one));
                            return;
                        } else if (BucketListActivity.this.idStrList.size() > 1) {
                            BucketListActivity bucketListActivity2 = BucketListActivity.this;
                            bucketListActivity2.showToastDialog(bucketListActivity2.getString(R$string.only_one_can_selected_modify));
                            return;
                        } else {
                            BucketListActivity bucketListActivity3 = BucketListActivity.this;
                            bucketListActivity3.openBucketEdit(Long.parseLong((String) bucketListActivity3.idStrList.get(0)));
                            return;
                        }
                    }
                    return;
                }
                if (BucketListActivity.this.idStrList.isEmpty()) {
                    BucketListActivity bucketListActivity4 = BucketListActivity.this;
                    bucketListActivity4.showToastDialog(bucketListActivity4.getString(R$string.select_least_one));
                    return;
                }
                for (ShovelEntity shovelEntity : BucketListActivity.this.mList) {
                    if (BucketListActivity.this.idStrList.contains(String.valueOf(shovelEntity.localId)) && BucketListActivity.this.adapter.isCurrentUsage(shovelEntity)) {
                        BucketListActivity bucketListActivity5 = BucketListActivity.this;
                        bucketListActivity5.showToastDialog(bucketListActivity5.getString(R$string.current_usage_cannot_delete));
                        return;
                    }
                }
                BucketListActivity bucketListActivity6 = BucketListActivity.this;
                bucketListActivity6.showTipDialog(bucketListActivity6.getString(R$string.want_to_delete), BucketListActivity.this.getString(R$string.confirm), "", BucketListActivity.this.getString(R$string.deletion_cannot_restored), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.BucketListActivity.2.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        if (!BucketListActivity.this.databaseManager.getDatabase().isOpen()) {
                            BucketListActivity bucketListActivity7 = BucketListActivity.this;
                            bucketListActivity7.databaseManager = DatabaseManager.getInstance(bucketListActivity7);
                        }
                        Iterator it = BucketListActivity.this.mList.iterator();
                        while (it.hasNext()) {
                            ShovelEntity shovelEntity2 = (ShovelEntity) it.next();
                            if (BucketListActivity.this.idStrList.contains(String.valueOf(shovelEntity2.localId)) && BucketListActivity.this.databaseManager.deleteShovelById(shovelEntity2) > -1) {
                                it.remove();
                                NetworkUserLoader.getInstance().delBucket(shovelEntity2);
                            }
                        }
                        BucketListActivity bucketListActivity8 = BucketListActivity.this;
                        bucketListActivity8.showToastDialog(bucketListActivity8.getString(R$string.delete_success));
                        BucketListActivity.this.idStrList.clear();
                        BucketListActivity.this.adapter.closeSelUi();
                        BucketListActivity.this.showSelectAll(false);
                        BucketListActivity.this.binding.bottomBtn.closeExecuteUi();
                    }
                });
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$kGdn2m1Xrz3AegZQLD8pxFs3XAA(BucketListActivity bucketListActivity, View view) {
        bucketListActivity.binding.ivAll.setSelected(!r2.isSelected());
        bucketListActivity.adapter.selecteAll(bucketListActivity.binding.ivAll.isSelected());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openBucketEdit(long j) {
        Intent intent = new Intent(this, (Class<?>) BucketCreateActivity.class);
        intent.putExtra("localId", j);
        intent.putExtra("isSupportBucket", isSupportBucket(false));
        intent.putExtra("currentExcavator", this.mCurrentExcavator);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSupportBucket(boolean z) {
        if (YCTApplication.getInstance().isDemo() || this.mParamsType >= 2) {
            return true;
        }
        if (!z) {
            return false;
        }
        showTipDialog(getString(R$string.not_support_replace_bucket), getString(R$string.ok), null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void swicthBucket(ShovelEntity shovelEntity) {
        this.selectShovelEntity = BucketSwitchHelper.reloadBucketFromDb(this, shovelEntity);
        this.switchingBucket = true;
        CalibrateSessionHelper.beginBucketSwitch(this, this.mCurrentExcavator);
        if (TextUtils.isEmpty(getActiveCalibParams())) {
            this.pendingSwitchBucket = this.selectShovelEntity;
            showLoadingDialog(getString(R$string.please_wait));
            CalibrateSessionHelper.recordGetParamCmd(this.mGGA, this.mLatestIns, YCTApplication.getInstance().getSensorInfo(), Double.valueOf(this.latestHeadingDegreesError));
            EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "CALIBRATE,,GET_PARAM"));
            return;
        }
        startLocalBucketSwitch(this.selectShovelEntity);
    }

    private void syncExcavatorWithSwitchedBucket(ShovelEntity shovelEntity, String str) {
        BucketSwitchHelper.SyncResult syncResultSyncExcavatorWithSwitchedBucket = BucketSwitchHelper.syncExcavatorWithSwitchedBucket(this, this.mCurrentExcavator, shovelEntity, str, true);
        ExcavatorEntity excavatorEntity = syncResultSyncExcavatorWithSwitchedBucket.excavator;
        if (excavatorEntity != null) {
            this.mCurrentExcavator = excavatorEntity;
        }
        if (!TextUtils.isEmpty(syncResultSyncExcavatorWithSwitchedBucket.calibParamsId)) {
            this.deviceCalibParamsId = syncResultSyncExcavatorWithSwitchedBucket.calibParamsId;
        }
        ExcavatorEntity excavatorEntity2 = this.mCurrentExcavator;
        this.deviceCalibParams = excavatorEntity2 != null ? excavatorEntity2.calibParams : this.deviceCalibParams;
        ShovelEntity shovelEntity2 = syncResultSyncExcavatorWithSwitchedBucket.bucket;
        if (shovelEntity2 != null) {
            shovelEntity = shovelEntity2;
        }
        this.selectShovelEntity = shovelEntity;
    }

    private void startLocalBucketSwitch(final ShovelEntity shovelEntity) {
        final String activeCalibParams = getActiveCalibParams();
        if (shovelEntity == null || TextUtils.isEmpty(activeCalibParams)) {
            CalibrateSessionHelper.endBucketSwitchFailed(this.mCurrentExcavator, shovelEntity);
            this.switchingBucket = false;
            showToastDialog(getString(R$string.cannot_configure));
        } else {
            showLoadingDialog(getString(R$string.please_wait));
            this.selectShovelEntity = shovelEntity;
            new Thread(new Runnable() { // from class: com.qianhe.yct.activity.BucketListActivity.3
                @Override // java.lang.Runnable
                public void run() {
                    final ShovelEntity shovelEntity2 = shovelEntity;
                    if (TextUtils.isEmpty(shovelEntity2.param)) {
                        ExcavatorCalibHelper.Result resultMakeToolParam = ExcavatorCalibHelper.makeToolParam(shovelEntity2);
                        if (!resultMakeToolParam.isSuccess()) {
                            BucketListActivity bucketListActivity = BucketListActivity.this;
                            bucketListActivity.postSwitchFailed(bucketListActivity.getString(R$string.shovel_parameter_generation_failed), resultMakeToolParam.code);
                            return;
                        } else {
                            shovelEntity2.param = resultMakeToolParam.calibParamsBase64;
                            if (shovelEntity2.localId > 0) {
                                BucketListActivity.this.databaseManager.updateShovelById(shovelEntity2);
                                NetworkUserLoader.getInstance().modifyBucket(shovelEntity2);
                            }
                        }
                    }
                    final ExcavatorCalibHelper.Result resultApplyTool = ExcavatorCalibHelper.applyTool(activeCalibParams, shovelEntity2.param);
                    final String str = shovelEntity2.param;
                    final String str2 = activeCalibParams;
                    BucketListActivity.this.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.BucketListActivity.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (BucketListActivity.this.isDestroyed()) {
                                return;
                            }
                            if (!resultApplyTool.isSuccess()) {
                                BucketListActivity.this.cancelLoadingDialog();
                                CalibrateLogToFile.e("本地切换铲斗失败，code=" + resultApplyTool.code);
                                CalibrateSessionHelper.endBucketSwitchFailed(BucketListActivity.this.mCurrentExcavator, shovelEntity2);
                                BucketListActivity.this.switchingBucket = false;
                                BucketListActivity.this.showSwitchConfigFailedDialog();
                                BucketListActivity.this.selectShovelEntity = null;
                                return;
                            }
                            SensorInfoEvent sensorInfo = YCTApplication.getInstance().getSensorInfo();
                            String str3 = str2;
                            String str4 = str;
                            ShovelEntity shovelEntity3 = shovelEntity2;
                            String str5 = shovelEntity3 != null ? shovelEntity3.name : "";
                            BucketListActivity bucketListActivity2 = BucketListActivity.this;
                            CalibrateSessionHelper.recordBucketSwitchApply(str3, str4, str5, bucketListActivity2.mGGA, bucketListActivity2.mLatestIns, sensorInfo, Double.valueOf(((BaseActivity) BucketListActivity.this).latestHeadingDegreesError));
                            BucketListActivity.this.onLocalSwitchSuccess(shovelEntity2, resultApplyTool.calibParamsBase64);
                        }
                    });
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postSwitchFailed(String str, final int i) {
        runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.BucketListActivity.4
            @Override // java.lang.Runnable
            public void run() {
                if (BucketListActivity.this.isDestroyed()) {
                    return;
                }
                BucketListActivity.this.cancelLoadingDialog();
                CalibrateLogToFile.e("本地生成铲斗参数失败，code=" + i);
                CalibrateSessionHelper.endBucketSwitchFailed(BucketListActivity.this.mCurrentExcavator, BucketListActivity.this.selectShovelEntity);
                BucketListActivity.this.switchingBucket = false;
                BucketListActivity.this.showSwitchConfigFailedDialog();
                BucketListActivity.this.selectShovelEntity = null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLocalSwitchSuccess(ShovelEntity shovelEntity, String str) {
        rememberCalibBeforeSwitch();
        syncExcavatorWithSwitchedBucket(shovelEntity, str);
        ExcavatorEntity excavatorEntity = this.mCurrentExcavator;
        String str2 = excavatorEntity != null ? excavatorEntity.calibParamsId : this.deviceCalibParamsId;
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            CalibrateSessionHelper.endBucketSwitchFailed(this.mCurrentExcavator, shovelEntity);
            this.switchingBucket = false;
            rollbackSwitchCalibAfterFailure();
            cancelLoadingDialog();
            showSwitchConfigFailedDialog();
            this.selectShovelEntity = null;
            return;
        }
        SensorInfoEvent sensorInfo = YCTApplication.getInstance().getSensorInfo();
        CalibrateSessionHelper.recordFineTuneSetParam(str2, str, this.mGGA, this.mLatestIns, sensorInfo, Double.valueOf(this.latestHeadingDegreesError));
        JsonObject jsonObjectBuildBucketSwitchMeta = CalibrateSessionHelper.buildBucketSwitchMeta(this.mCurrentExcavator, shovelEntity, str2, true);
        if (YCTApplication.getInstance().isDemo()) {
            CalibrateSessionHelper.recordSetParamReply("#CALIBRATE,,SET_PARAM,OK*3D\r\n", this.mGGA, this.mLatestIns, sensorInfo, Double.valueOf(this.latestHeadingDegreesError));
            CalibrateLogToFile.endSession(true, jsonObjectBuildBucketSwitchMeta);
            this.switchingBucket = false;
            cancelLoadingDialog();
            onSetParamSuccess();
            return;
        }
        CalibrateSessionHelper.scheduleEndAfterSetParamReply(jsonObjectBuildBucketSwitchMeta);
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "CALIBRATE,,SET_PARAM," + str2 + "," + str));
    }

    private void onSetParamSuccess() {
        this.holdHostCalibAfterSwitchFail = false;
        clearSwitchRollback();
        if (this.isVisible) {
            showToastDialog(getString(R$string.config_success));
        } else {
            this.pendingConfigSuccessToast = true;
        }
        ExcavatorEntity excavatorEntity = this.mCurrentExcavator;
        if (excavatorEntity != null) {
            this.deviceCalibParamsId = excavatorEntity.calibParamsId;
            this.deviceCalibParams = excavatorEntity.calibParams;
        }
        refreshCurrentBucketMarker();
        this.selectShovelEntity = null;
        cancelLoadingDialog();
    }

    private void rememberCalibBeforeSwitch() {
        this.holdHostCalibAfterSwitchFail = false;
        String str = this.deviceCalibParamsId;
        if (str == null) {
            str = "";
        }
        this.switchRollbackDeviceCalibParamsId = str;
        String str2 = this.deviceCalibParams;
        this.switchRollbackDeviceCalibParams = str2 != null ? str2 : "";
        this.switchRollbackExcavator = null;
        ExcavatorEntity excavatorEntity = this.mCurrentExcavator;
        if (excavatorEntity != null && excavatorEntity.localId > 0) {
            List<ExcavatorEntity> listQueryExcavatorByLocalId = DatabaseManager.getInstance(this).queryExcavatorByLocalId(this.mCurrentExcavator.localId);
            if (!listQueryExcavatorByLocalId.isEmpty()) {
                this.switchRollbackExcavator = copyExcavator(listQueryExcavatorByLocalId.get(0));
                return;
            }
        }
        this.switchRollbackExcavator = copyExcavator(this.mCurrentExcavator);
    }

    private void rollbackSwitchCalibAfterFailure() {
        this.holdHostCalibAfterSwitchFail = true;
        if (this.switchRollbackExcavator == null && TextUtils.isEmpty(this.switchRollbackDeviceCalibParamsId) && TextUtils.isEmpty(this.switchRollbackDeviceCalibParams)) {
            refreshCurrentBucketMarker();
            return;
        }
        ExcavatorEntity excavatorEntity = this.switchRollbackExcavator;
        if (excavatorEntity != null) {
            if (excavatorEntity.localId > 0) {
                DatabaseManager.getInstance(this).updateExcavatorById(this.switchRollbackExcavator);
                NetworkUserLoader.getInstance().modifyExcavator(this.switchRollbackExcavator);
            }
            this.mCurrentExcavator = this.switchRollbackExcavator;
        }
        String str = this.switchRollbackDeviceCalibParamsId;
        if (str == null) {
            str = "";
        }
        this.deviceCalibParamsId = str;
        String str2 = this.switchRollbackDeviceCalibParams;
        this.deviceCalibParams = str2 != null ? str2 : "";
        clearSwitchRollback();
        refreshCurrentBucketMarker();
    }

    private void clearSwitchRollback() {
        this.switchRollbackExcavator = null;
        this.switchRollbackDeviceCalibParamsId = "";
        this.switchRollbackDeviceCalibParams = "";
    }

    private static ExcavatorEntity copyExcavator(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity == null) {
            return null;
        }
        try {
            Gson gson = new Gson();
            return (ExcavatorEntity) gson.fromJson(gson.toJson(excavatorEntity), ExcavatorEntity.class);
        } catch (Exception unused) {
            return excavatorEntity;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSwitchConfigFailedDialog() {
        this.holdHostCalibAfterSwitchFail = true;
        refreshCurrentBucketMarker();
        showTipDialog(getString(R$string.config_failed_please_check_params), getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.BucketListActivity.5
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                BucketListActivity.this.refreshCurrentBucketMarker();
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                BucketListActivity.this.refreshCurrentBucketMarker();
            }
        });
    }

    private String getActiveCalibParams() {
        if (!TextUtils.isEmpty(this.deviceCalibParams)) {
            return this.deviceCalibParams;
        }
        ExcavatorEntity excavatorEntity = this.mCurrentExcavator;
        if (excavatorEntity != null && !TextUtils.isEmpty(excavatorEntity.calibParams)) {
            return this.mCurrentExcavator.calibParams;
        }
        return "";
    }

    private void applyDeviceCalibParams(GetCalibrateParamEvent getCalibrateParamEvent) {
        if (this.holdHostCalibAfterSwitchFail) {
            applyHostCalibParamsWithoutLocalPrefer(getCalibrateParamEvent);
            return;
        }
        this.deviceCalibParamsId = CurrentExcavatorCalibHelper.applyGetCalibrateParam(this, getCalibrateParamEvent);
        if (!TextUtils.isEmpty(getCalibrateParamEvent.calibParams)) {
            this.deviceCalibParams = getCalibrateParamEvent.calibParams;
        }
        bindCurrentExcavatorFromCalibParamsId(this.deviceCalibParamsId, getCalibrateParamEvent);
    }

    private void applyHostCalibParamsWithoutLocalPrefer(GetCalibrateParamEvent getCalibrateParamEvent) {
        String str = getCalibrateParamEvent.calibParamsId;
        if (str == null) {
            str = "";
        }
        this.deviceCalibParamsId = str;
        if (!TextUtils.isEmpty(getCalibrateParamEvent.calibParams)) {
            this.deviceCalibParams = getCalibrateParamEvent.calibParams;
        }
        List<ExcavatorEntity> listQueryExcavatorByCalibParamsId = !TextUtils.isEmpty(this.deviceCalibParamsId) ? DatabaseManager.getInstance(this).queryExcavatorByCalibParamsId(this.deviceCalibParamsId) : null;
        if (listQueryExcavatorByCalibParamsId != null && !listQueryExcavatorByCalibParamsId.isEmpty()) {
            this.mCurrentExcavator = CurrentExcavatorCalibHelper.reloadExcavatorFromDb(this, listQueryExcavatorByCalibParamsId.get(0));
            return;
        }
        bindCurrentExcavatorFromCalibParamsId(this.deviceCalibParamsId, getCalibrateParamEvent);
        if (this.mCurrentExcavator == null || TextUtils.isEmpty(this.deviceCalibParamsId)) {
            return;
        }
        this.mCurrentExcavator.calibParamsId = this.deviceCalibParamsId;
        if (TextUtils.isEmpty(this.deviceCalibParams)) {
            return;
        }
        this.mCurrentExcavator.calibParams = this.deviceCalibParams;
    }

    private void bindCurrentExcavatorFromCalibParamsId(String str, GetCalibrateParamEvent getCalibrateParamEvent) {
        ExcavatorEntity excavatorEntityFindExcavatorByDeviceCalibParamsId = CurrentExcavatorCalibHelper.findExcavatorByDeviceCalibParamsId(this, str);
        if (excavatorEntityFindExcavatorByDeviceCalibParamsId != null) {
            this.mCurrentExcavator = CurrentExcavatorCalibHelper.reloadExcavatorFromDb(this, excavatorEntityFindExcavatorByDeviceCalibParamsId);
            return;
        }
        if (this.mCurrentExcavator == null) {
            this.mCurrentExcavator = new ExcavatorEntity();
        }
        ExcavatorEntity excavatorEntity = this.mCurrentExcavator;
        excavatorEntity.calibParamsId = getCalibrateParamEvent.calibParamsId;
        excavatorEntity.calibParams = getCalibrateParamEvent.calibParams;
        this.mCurrentExcavator = CurrentExcavatorCalibHelper.resolveLocalExcavator(this, excavatorEntity);
    }

    private void reloadCurrentExcavatorFromDb() {
        ExcavatorEntity excavatorEntity;
        ExcavatorEntity excavatorEntityFindExcavatorByDeviceCalibParamsId;
        DatabaseManager databaseManager = this.databaseManager;
        if (databaseManager == null || !databaseManager.getDatabase().isOpen()) {
            this.databaseManager = DatabaseManager.getInstance(this);
        }
        if (!TextUtils.isEmpty(this.deviceCalibParamsId) && (excavatorEntityFindExcavatorByDeviceCalibParamsId = CurrentExcavatorCalibHelper.findExcavatorByDeviceCalibParamsId(this, this.deviceCalibParamsId)) != null) {
            this.mCurrentExcavator = CurrentExcavatorCalibHelper.reloadExcavatorFromDb(this, excavatorEntityFindExcavatorByDeviceCalibParamsId);
        }
        ExcavatorEntity excavatorEntity2 = this.mCurrentExcavator;
        if (excavatorEntity2 != null && !this.holdHostCalibAfterSwitchFail) {
            this.deviceCalibParamsId = CurrentExcavatorCalibHelper.preferCalibParamsId(this.deviceCalibParamsId, excavatorEntity2);
        }
        if (TextUtils.isEmpty(this.deviceCalibParams) || (excavatorEntity = this.mCurrentExcavator) == null) {
            return;
        }
        excavatorEntity.calibParams = this.deviceCalibParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshCurrentBucketMarker() {
        if (TextUtils.isEmpty(this.deviceCalibParamsId)) {
            return;
        }
        reloadCurrentExcavatorFromDb();
        if (isCurrentExcavatorMode1()) {
            this.adapter.setCurrentParam(null, this.mList, this.mCurrentExcavator);
        } else if (!TextUtils.isEmpty(this.deviceCalibParamsId)) {
            this.adapter.setCurrentParam(this.deviceCalibParamsId, this.mList, this.mCurrentExcavator);
        } else {
            this.adapter.clearCurrentParam();
        }
    }

    private void continuePendingSwitch() {
        if (this.pendingSwitchBucket == null) {
            return;
        }
        if (TextUtils.isEmpty(getActiveCalibParams())) {
            ShovelEntity shovelEntity = this.pendingSwitchBucket;
            this.pendingSwitchBucket = null;
            this.switchingBucket = false;
            cancelLoadingDialog();
            CalibrateSessionHelper.endBucketSwitchFailed(this.mCurrentExcavator, shovelEntity);
            showToastDialog(getString(R$string.cannot_configure));
            return;
        }
        ShovelEntity shovelEntity2 = this.pendingSwitchBucket;
        this.pendingSwitchBucket = null;
        cancelLoadingDialog();
        startLocalBucketSwitch(shovelEntity2);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.bucket_manage);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        showPendingConfigSuccessToast();
        if (!this.databaseManager.getDatabase().isOpen()) {
            this.databaseManager = DatabaseManager.getInstance(this);
        }
        if (!TextUtils.isEmpty(UserSession.get().getToken())) {
            this.localList = this.databaseManager.queryShovelByName(null);
            this.index = 0;
            NetworkUserLoader.getInstance().queryBucket();
        }
        showList();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "CALIBRATE,,GET_PARAM"));
            if (this.showError) {
                this.showError = false;
                if (isDestroyed()) {
                    return;
                }
                showSwitchConfigFailedDialog();
            }
        }
    }

    private void showList() {
        List<ShovelEntity> listQueryShovelByName = this.databaseManager.queryShovelByName(null);
        this.mList.clear();
        this.mList.addAll(listQueryShovelByName);
        refreshCurrentBucketMarker();
        this.adapter.closeSelUi();
        this.binding.bottomBtn.closeExecuteUi();
        showSelectAll(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSelectAll(boolean z) {
        this.binding.lltAll.setVisibility(z ? 0 : 8);
        if (!z) {
            this.binding.ivAll.setSelected(false);
        } else {
            updateSelectAllState();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSelectAllState() {
        this.binding.ivAll.setSelected(!this.mList.isEmpty() && this.idStrList.size() == this.mList.size());
    }

    private boolean isCurrentExcavatorMode1() {
        ExcavatorEntity excavatorEntity;
        ExcavatorEntity excavatorEntity2 = this.mCurrentExcavator;
        if (excavatorEntity2 != null && CalibParamsIdUtil.isMode1Excavator(excavatorEntity2)) {
            return true;
        }
        int i = this.mParamsType;
        if (i <= 0 || i >= 2) {
            return (TextUtils.isEmpty(this.deviceCalibParamsId) || (excavatorEntity = this.mCurrentExcavator) == null || !CalibParamsIdUtil.isMode1Format(this.deviceCalibParamsId, excavatorEntity)) ? false : true;
        }
        return true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(SwicthBucketEvent swicthBucketEvent) {
        if (swicthBucketEvent == null) {
            return;
        }
        if (swicthBucketEvent.refreshOnly) {
            if (!TextUtils.isEmpty(swicthBucketEvent.calibParamsId)) {
                this.deviceCalibParamsId = swicthBucketEvent.calibParamsId;
            }
            reloadCurrentExcavatorFromDb();
            refreshCurrentBucketMarker();
            if (!this.isVisible || isDestroyed()) {
                return;
            }
            this.adapter.notifyDataSetChanged();
            return;
        }
        if (isSupportBucket(true)) {
            swicthBucket(swicthBucketEvent.bucket);
        }
    }

    private void showPendingConfigSuccessToast() {
        if (this.pendingConfigSuccessToast && this.isVisible && !isDestroyed()) {
            this.pendingConfigSuccessToast = false;
            showToastDialog(getString(R$string.config_success));
            refreshCurrentBucketMarker();
            showList();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(GetCalibrateParamEvent getCalibrateParamEvent) {
        String strBuildGetParamReplyLine;
        if (getCalibrateParamEvent == null || TextUtils.isEmpty(getCalibrateParamEvent.calibParamsId)) {
            return;
        }
        byte[] bArrDecode = TextUtils.isEmpty(getCalibrateParamEvent.calibParams) ? null : Base64.decode(getCalibrateParamEvent.calibParams, 0);
        if (bArrDecode == null && TextUtils.isEmpty(getCalibrateParamEvent.calibParamsId)) {
            return;
        }
        if (bArrDecode != null) {
            this.mParamsType = bArrDecode[0] & 255;
            CalibrateLogToFile.i("校准参数类型：" + this.mParamsType);
        }
        applyDeviceCalibParams(getCalibrateParamEvent);
        refreshCurrentBucketMarker();
        if (this.switchingBucket && this.pendingSwitchBucket != null) {
            SensorInfoEvent sensorInfo = YCTApplication.getInstance().getSensorInfo();
            if (!TextUtils.isEmpty(getCalibrateParamEvent.line)) {
                strBuildGetParamReplyLine = getCalibrateParamEvent.line;
            } else {
                strBuildGetParamReplyLine = CalibrateSessionHelper.buildGetParamReplyLine(getCalibrateParamEvent.calibParamsId, getCalibrateParamEvent.calibParams);
            }
            CalibrateSessionHelper.recordGetParamReply(strBuildGetParamReplyLine, this.mGGA, this.mLatestIns, sensorInfo, Double.valueOf(this.latestHeadingDegreesError));
        }
        if (bArrDecode != null) {
            continuePendingSwitch();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(SetCalibrateParamEvent setCalibrateParamEvent) {
        if (this.selectShovelEntity != null || this.switchingBucket) {
            SensorInfoEvent sensorInfo = YCTApplication.getInstance().getSensorInfo();
            if (setCalibrateParamEvent != null && !TextUtils.isEmpty(setCalibrateParamEvent.line) && setCalibrateParamEvent.line.contains("OK")) {
                if (CalibrateSessionHelper.handleSetParamReplyIfWaiting(setCalibrateParamEvent.line, this.mGGA, this.mLatestIns, sensorInfo, Double.valueOf(this.latestHeadingDegreesError))) {
                    this.switchingBucket = false;
                }
                if (this.selectShovelEntity == null) {
                    return;
                }
                cancelLoadingDialog();
                this.switchingBucket = false;
                onSetParamSuccess();
                return;
            }
            CalibrateSessionHelper.clearAwaitSetParamReply();
            if (CalibrateLogToFile.hasActiveSession() && "bucket".equals(CalibrateLogToFile.getActiveFileFlow())) {
                CalibrateSessionHelper.recordSetParamReply(setCalibrateParamEvent != null ? setCalibrateParamEvent.line : null, this.mGGA, this.mLatestIns, sensorInfo, Double.valueOf(this.latestHeadingDegreesError));
                CalibrateSessionHelper.endBucketSwitchFailed(this.mCurrentExcavator, this.selectShovelEntity);
            }
            this.switchingBucket = false;
            rollbackSwitchCalibAfterFailure();
            cancelLoadingDialog();
            this.binding.rcv.postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.BucketListActivity.6
                @Override // java.lang.Runnable
                public void run() {
                    if (BucketListActivity.this.isDestroyed()) {
                        return;
                    }
                    BucketListActivity.this.showSwitchConfigFailedDialog();
                }
            }, 100L);
            this.selectShovelEntity = null;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(QueryBucketResponse queryBucketResponse) {
        if (queryBucketResponse != null) {
            if (queryBucketResponse.state == 0) {
                updateData(queryBucketResponse.list);
            } else {
                showList();
            }
        }
    }

    private void updateData(List<ShovelEntity> list) {
        Iterator<ShovelEntity> it;
        DatabaseManager databaseManager = this.databaseManager;
        if (databaseManager == null || !databaseManager.getDatabase().isOpen()) {
            this.databaseManager = DatabaseManager.getInstance(this);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<ShovelEntity> listQueryShovelByName = this.databaseManager.queryShovelByName(null);
        if (!list.isEmpty()) {
            if (!listQueryShovelByName.isEmpty()) {
                Iterator<ShovelEntity> it2 = listQueryShovelByName.iterator();
                while (it2.hasNext()) {
                    ShovelEntity next = it2.next();
                    if (!TextUtils.isEmpty(next.bucket_uuid)) {
                        arrayList2.add(next.bucket_uuid);
                    }
                    for (ShovelEntity shovelEntity : list) {
                        if (!arrayList.contains(shovelEntity.bucket_uuid)) {
                            arrayList.add(shovelEntity.bucket_uuid);
                        }
                        if (shovelEntity.bucket_uuid.equals(next.bucket_uuid)) {
                            long j = next.version;
                            long j2 = shovelEntity.version;
                            if (j >= j2) {
                                it = it2;
                                if (next.updateTime > shovelEntity.updateTime) {
                                    if (j > j2) {
                                        NetworkUserLoader.getInstance().modifyBucket(next);
                                        this.isChange = true;
                                    }
                                }
                            } else {
                                it = it2;
                            }
                            shovelEntity.localId = next.localId;
                            shovelEntity.showUnit = next.showUnit;
                            if (!shovelEntity.equals(next)) {
                                this.databaseManager.updateShovelById(shovelEntity);
                            }
                        } else {
                            it = it2;
                        }
                        it2 = it;
                    }
                }
                if (this.isChange) {
                    this.isChange = false;
                    NetworkUserLoader.getInstance().queryBucket();
                    return;
                }
            }
            for (ShovelEntity shovelEntity2 : list) {
                if (!arrayList2.contains(shovelEntity2.bucket_uuid)) {
                    List<ShovelEntity> listQueryShovelByName2 = this.databaseManager.queryShovelByName(shovelEntity2.name);
                    if (listQueryShovelByName2.isEmpty()) {
                        this.databaseManager.insertShovel(shovelEntity2);
                    } else {
                        final ShovelEntity shovelEntity3 = listQueryShovelByName2.get(0);
                        if (shovelEntity2.createTime > shovelEntity3.createTime) {
                            shovelEntity2.localId = shovelEntity3.localId;
                            this.databaseManager.updateShovelById(shovelEntity2);
                        } else {
                            NetworkUserLoader.getInstance().delBucket(shovelEntity2);
                            this.binding.getRoot().postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.BucketListActivity$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    NetworkUserLoader.getInstance().createBucket(shovelEntity3);
                                }
                            }, 500L);
                        }
                    }
                }
            }
        }
        for (ShovelEntity shovelEntity4 : listQueryShovelByName) {
            if (!TextUtils.isEmpty(shovelEntity4.bucket_uuid) && !arrayList.contains(shovelEntity4.bucket_uuid)) {
                this.databaseManager.deleteShovelById(shovelEntity4);
            }
        }
        this.localList = this.databaseManager.queryShovelByName(null);
        uploadBuckets();
    }

    private void uploadBuckets() {
        List<ShovelEntity> list = this.localList;
        if (list != null && this.index < list.size()) {
            ShovelEntity shovelEntity = this.localList.get(this.index);
            if (TextUtils.isEmpty(shovelEntity.bucket_uuid)) {
                NetworkUserLoader.getInstance().createBucket(shovelEntity);
                return;
            } else {
                this.index++;
                uploadBuckets();
                return;
            }
        }
        showList();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(CreateBucketResponse createBucketResponse) {
        ShovelEntity shovelEntity;
        if (createBucketResponse.state == 0 && (shovelEntity = createBucketResponse.shovelEntity) != null) {
            this.databaseManager.updateShovelById(shovelEntity);
        }
        this.index++;
        uploadBuckets();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.mLatestIns = insNavi;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.binding.bottomBtn.getSelectedIndex() > 0) {
            this.binding.bottomBtn.closeExecuteUi();
            this.adapter.closeSelUi();
            showSelectAll(false);
            return;
        }
        super.onBackPressed();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        CalibrateSessionHelper.endAwaitingSessionIfNeeded();
        this.switchingBucket = false;
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
