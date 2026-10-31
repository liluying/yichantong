package com.qianhe.yct.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.GetCalibrateParamEvent;
import com.qianhe.rtkclientlib.event.SetCalibrateParamEvent;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.excavator.ExcavatorCreateActivity;
import com.qianhe.yct.activity.excavator.ExcavatorDetailActivity;
import com.qianhe.yct.adapter.ExcavatorListAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityExcavatorListBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.event.CreateExcavatorResponse;
import com.qianhe.yct.event.QueryExcacatorResponse;
import com.qianhe.yct.utils.CalibParamsIdUtil;
import com.qianhe.yct.utils.CurrentExcavatorCalibHelper;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.utils.SyncNameHelper;
import com.qianhe.yct.view.ExcavatorBottomView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ExcavatorListActivity extends BaseActivity {
    private ExcavatorListAdapter adapter;
    private ActivityExcavatorListBinding binding;
    private GetCalibrateParamEvent deferredHostCalibCheckEvent;
    private List<ExcavatorEntity> localList;
    private GetCalibrateParamEvent pendingHostCalibEvent;
    private boolean platformSyncInProgress;
    private boolean promptingHostCalibAdd;
    private boolean scrollToTopOnNextListUpdate;
    private final ExecutorService executorService = Executors.newSingleThreadExecutor();
    private final List<ExcavatorEntity> mList = new ArrayList();
    private List<String> idStrList = new ArrayList();
    private String deviceCalibParamsId = "";
    private String dismissedHostCalibParamsId = "";
    private final ActivityResultLauncher createLauncher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.ExcavatorListActivity$$ExternalSyntheticLambda1
        @Override // androidx.activity.result.ActivityResultCallback
        public final void onActivityResult(Object obj) {
            ExcavatorListActivity.m1408$r8$lambda$9QJ4oySX0Rv3aa9abLXuxfXgDI(this.f$0, (ActivityResult) obj);
        }
    });
    private int index = 0;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    /* renamed from: $r8$lambda$9QJ-4oySX0Rv3aa9abLXuxfXgDI, reason: not valid java name */
    public static /* synthetic */ void m1408$r8$lambda$9QJ4oySX0Rv3aa9abLXuxfXgDI(ExcavatorListActivity excavatorListActivity, ActivityResult activityResult) {
        excavatorListActivity.getClass();
        if (activityResult.getResultCode() == -1) {
            excavatorListActivity.scrollToTopOnNextListUpdate = true;
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityExcavatorListBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        getIntent();
        this.adapter = new ExcavatorListAdapter(this, this.mList);
        int i = getResources().getConfiguration().orientation;
        if (i == 2) {
            this.binding.rcv.setLayoutManager(new GridLayoutManager(this, 2));
        } else if (i == 1) {
            this.binding.rcv.setLayoutManager(new LinearLayoutManager(this));
        }
        this.binding.rcv.setAdapter(this.adapter);
        this.adapter.setOnActionListener(new ExcavatorListAdapter.OnActionListener() { // from class: com.qianhe.yct.activity.ExcavatorListActivity.1
            @Override // com.qianhe.yct.adapter.ExcavatorListAdapter.OnActionListener
            public void onClick(final ExcavatorEntity excavatorEntity) {
                ExcavatorListActivity excavatorListActivity = ExcavatorListActivity.this;
                excavatorListActivity.showTipDialog(excavatorListActivity.getString(R$string.want_to_use_this_config), ExcavatorListActivity.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.ExcavatorListActivity.1.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        if (!TextUtils.isEmpty(excavatorEntity.calibParamsId) && !TextUtils.isEmpty(excavatorEntity.calibParams)) {
                            String str = "CALIBRATE,,SET_PARAM," + excavatorEntity.calibParamsId + "," + excavatorEntity.calibParams;
                            CalibrateLogToFile.i("设置校准参数：" + str);
                            EventBus.getDefault().post(new OrderBean(str));
                            return;
                        }
                        ExcavatorListActivity excavatorListActivity2 = ExcavatorListActivity.this;
                        excavatorListActivity2.showToastDialog(excavatorListActivity2.getString(R$string.cannot_configure));
                    }
                });
            }

            @Override // com.qianhe.yct.adapter.ExcavatorListAdapter.OnActionListener
            public void onSelItem(List<String> list) {
                ExcavatorListActivity.this.idStrList = list;
                ExcavatorListActivity.this.updateSelectAllState();
            }

            @Override // com.qianhe.yct.adapter.ExcavatorListAdapter.OnActionListener
            public void onMenuAction(int i2, ExcavatorEntity excavatorEntity) {
                if (i2 == 2) {
                    if (excavatorEntity != null) {
                        ExcavatorListActivity.this.openExcavatorDetail(excavatorEntity.localId);
                    }
                } else {
                    ExcavatorListActivity.this.binding.bottomBtn.setSelectedIndex(i2);
                    ExcavatorListActivity.this.binding.bottomBtn.showExecuteUi();
                    ExcavatorListActivity.this.adapter.showSelUi(i2 == 1);
                    ExcavatorListActivity.this.showSelectAll(i2 == 1);
                }
            }
        });
        this.binding.lltAll.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.ExcavatorListActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExcavatorListActivity.this.binding.ivAll.setSelected(!ExcavatorListActivity.this.binding.ivAll.isSelected());
                ExcavatorListActivity.this.adapter.selecteAll(ExcavatorListActivity.this.binding.ivAll.isSelected());
            }
        });
        this.binding.bottomBtn.setOnNavItemClickListener(new ExcavatorBottomView.OnNavItemClickListener() { // from class: com.qianhe.yct.activity.ExcavatorListActivity.3
            @Override // com.qianhe.yct.view.ExcavatorBottomView.OnNavItemClickListener
            public void onItemClick(int i2) {
                ExcavatorListActivity.this.adapter.showSelUi(i2 == 1, i2 == 2);
                ExcavatorListActivity.this.showSelectAll(i2 == 1);
            }

            @Override // com.qianhe.yct.view.ExcavatorBottomView.OnNavItemClickListener
            public void onCancel() {
                ExcavatorListActivity.this.adapter.closeSelUi();
                ExcavatorListActivity.this.showSelectAll(false);
            }

            @Override // com.qianhe.yct.view.ExcavatorBottomView.OnNavItemClickListener
            public void onExecuteClick(int i2) {
                if (i2 == 0) {
                    ExcavatorListActivity.this.createLauncher.launch(new Intent(ExcavatorListActivity.this, (Class<?>) ExcavatorCreateActivity.class));
                    return;
                }
                if (i2 != 1) {
                    if (i2 == 2) {
                        if (ExcavatorListActivity.this.idStrList.isEmpty()) {
                            ExcavatorListActivity excavatorListActivity = ExcavatorListActivity.this;
                            excavatorListActivity.showToastDialog(excavatorListActivity.getString(R$string.select_least_one));
                            return;
                        } else if (ExcavatorListActivity.this.idStrList.size() > 1) {
                            ExcavatorListActivity excavatorListActivity2 = ExcavatorListActivity.this;
                            excavatorListActivity2.showToastDialog(excavatorListActivity2.getString(R$string.only_one_can_selected_modify));
                            return;
                        } else {
                            ExcavatorListActivity excavatorListActivity3 = ExcavatorListActivity.this;
                            excavatorListActivity3.openExcavatorDetail(Long.parseLong((String) excavatorListActivity3.idStrList.get(0)));
                            return;
                        }
                    }
                    return;
                }
                if (ExcavatorListActivity.this.idStrList.isEmpty()) {
                    ExcavatorListActivity excavatorListActivity4 = ExcavatorListActivity.this;
                    excavatorListActivity4.showToastDialog(excavatorListActivity4.getString(R$string.select_least_one));
                    return;
                }
                for (ExcavatorEntity excavatorEntity : ExcavatorListActivity.this.mList) {
                    if (ExcavatorListActivity.this.idStrList.contains(String.valueOf(excavatorEntity.localId)) && ExcavatorListActivity.this.adapter.isCurrentUsage(excavatorEntity)) {
                        ExcavatorListActivity excavatorListActivity5 = ExcavatorListActivity.this;
                        excavatorListActivity5.showToastDialog(excavatorListActivity5.getString(R$string.current_usage_cannot_delete));
                        return;
                    }
                }
                ExcavatorListActivity excavatorListActivity6 = ExcavatorListActivity.this;
                excavatorListActivity6.showTipDialog(excavatorListActivity6.getString(R$string.want_to_delete), ExcavatorListActivity.this.getString(R$string.confirm), "", ExcavatorListActivity.this.getString(R$string.deletion_cannot_restored), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.ExcavatorListActivity.3.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        Iterator it = ExcavatorListActivity.this.mList.iterator();
                        do {
                            ExcavatorEntity excavatorEntity2 = (ExcavatorEntity) it.next();
                            if (ExcavatorListActivity.this.idStrList.contains(String.valueOf(excavatorEntity2.localId))) {
                                if (DatabaseManager.getInstance(ExcavatorListActivity.this).deleteExcavatorById(excavatorEntity2) > -1) {
                                    it.remove();
                                    ExcavatorListActivity.this.idStrList.remove(String.valueOf(excavatorEntity2.localId));
                                }
                                NetworkUserLoader.getInstance().delExcavator(excavatorEntity2);
                            }
                        } while (it.hasNext());
                        ExcavatorListActivity excavatorListActivity7 = ExcavatorListActivity.this;
                        excavatorListActivity7.showToastDialog(excavatorListActivity7.getString(R$string.delete_success));
                        ExcavatorListActivity.this.adapter.refreshIdStrList(ExcavatorListActivity.this.idStrList);
                        ExcavatorListActivity.this.adapter.closeSelUi();
                        ExcavatorListActivity.this.binding.bottomBtn.closeExecuteUi();
                        ExcavatorListActivity.this.showSelectAll(false);
                    }
                });
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(SetCalibrateParamEvent setCalibrateParamEvent) {
        if (!TextUtils.isEmpty(setCalibrateParamEvent.line) && setCalibrateParamEvent.line.contains("OK")) {
            showToastDialog(getString(R$string.config_success));
            EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "CALIBRATE,,GET_PARAM"));
        } else {
            this.binding.rcv.postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.ExcavatorListActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    if (ExcavatorListActivity.this.isDestroyed()) {
                        return;
                    }
                    ExcavatorListActivity excavatorListActivity = ExcavatorListActivity.this;
                    excavatorListActivity.showTipDialog(excavatorListActivity.getString(R$string.config_fail), ExcavatorListActivity.this.getString(R$string.ok), null);
                }
            }, 100L);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(GetCalibrateParamEvent getCalibrateParamEvent) {
        if (getCalibrateParamEvent == null || TextUtils.isEmpty(getCalibrateParamEvent.calibParamsId)) {
            return;
        }
        logDecodedGetCalibrateParam(getCalibrateParamEvent);
        this.deviceCalibParamsId = CurrentExcavatorCalibHelper.applyGetCalibrateParam(this, getCalibrateParamEvent);
        if (this.platformSyncInProgress) {
            this.deferredHostCalibCheckEvent = getCalibrateParamEvent;
        } else {
            tryPromptHostCalibParams(getCalibrateParamEvent);
        }
        loadLocalListAsync();
        uploadUnsyncedIfIdle();
    }

    private void tryPromptHostCalibParams(GetCalibrateParamEvent getCalibrateParamEvent) {
        if (getCalibrateParamEvent == null || isDestroyed()) {
            return;
        }
        if (CurrentExcavatorCalibHelper.shouldPromptAddFromDeviceParam(this, getCalibrateParamEvent)) {
            promptAddHostCalibParams(getCalibrateParamEvent);
        } else {
            CurrentExcavatorCalibHelper.createLocalBucketIfMissing(this, getCalibrateParamEvent);
        }
    }

    private void runDeferredHostCalibCheck() {
        if (this.platformSyncInProgress || isDestroyed()) {
            return;
        }
        GetCalibrateParamEvent getCalibrateParamEvent = this.deferredHostCalibCheckEvent;
        this.deferredHostCalibCheckEvent = null;
        tryPromptHostCalibParams(getCalibrateParamEvent);
    }

    private void promptAddHostCalibParams(GetCalibrateParamEvent getCalibrateParamEvent) {
        if (getCalibrateParamEvent == null || TextUtils.isEmpty(getCalibrateParamEvent.calibParamsId) || isDestroyed() || TextUtils.equals(this.dismissedHostCalibParamsId, getCalibrateParamEvent.calibParamsId)) {
            return;
        }
        if (this.promptingHostCalibAdd) {
            this.pendingHostCalibEvent = getCalibrateParamEvent;
            return;
        }
        this.pendingHostCalibEvent = getCalibrateParamEvent;
        this.promptingHostCalibAdd = true;
        showTipDialog(getString(R$string.detect_new_host_calib_params_add_to_list), getString(R$string.add), getString(R$string.cancel), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.ExcavatorListActivity.5
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                ExcavatorListActivity.this.promptingHostCalibAdd = false;
                GetCalibrateParamEvent getCalibrateParamEvent2 = ExcavatorListActivity.this.pendingHostCalibEvent;
                ExcavatorListActivity.this.pendingHostCalibEvent = null;
                ExcavatorListActivity.this.dismissedHostCalibParamsId = "";
                if (getCalibrateParamEvent2 == null) {
                    return;
                }
                ExcavatorEntity excavatorEntityCreateLocalFromDeviceParam = CurrentExcavatorCalibHelper.createLocalFromDeviceParam(ExcavatorListActivity.this, getCalibrateParamEvent2);
                if (excavatorEntityCreateLocalFromDeviceParam != null && !TextUtils.isEmpty(excavatorEntityCreateLocalFromDeviceParam.calibParamsId)) {
                    ExcavatorListActivity.this.deviceCalibParamsId = excavatorEntityCreateLocalFromDeviceParam.calibParamsId;
                }
                ExcavatorListActivity.this.loadLocalListAsync();
                ExcavatorListActivity.this.uploadUnsyncedIfIdle();
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                ExcavatorListActivity.this.promptingHostCalibAdd = false;
                if (z && ExcavatorListActivity.this.pendingHostCalibEvent != null) {
                    ExcavatorListActivity excavatorListActivity = ExcavatorListActivity.this;
                    excavatorListActivity.dismissedHostCalibParamsId = excavatorListActivity.pendingHostCalibEvent.calibParamsId;
                }
                ExcavatorListActivity.this.pendingHostCalibEvent = null;
            }
        }, "add_host_calib_params");
    }

    private void logDecodedGetCalibrateParam(GetCalibrateParamEvent getCalibrateParamEvent) {
        CalibrateLogToFile.i("GET_PARAM 校准参数id解码：" + CalibParamsIdUtil.decode(getCalibrateParamEvent.calibParamsId));
    }

    private void refreshCurrentExcavatorMarker() {
        if (TextUtils.isEmpty(this.deviceCalibParamsId)) {
            return;
        }
        ExcavatorEntity excavatorEntityFindExcavatorByDeviceCalibParamsId = CurrentExcavatorCalibHelper.findExcavatorByDeviceCalibParamsId(this, this.deviceCalibParamsId);
        if (excavatorEntityFindExcavatorByDeviceCalibParamsId != null) {
            this.deviceCalibParamsId = CurrentExcavatorCalibHelper.preferCalibParamsId(this.deviceCalibParamsId, CurrentExcavatorCalibHelper.reloadExcavatorFromDb(this, excavatorEntityFindExcavatorByDeviceCalibParamsId));
        }
        if (!TextUtils.isEmpty(this.deviceCalibParamsId)) {
            this.adapter.setCurrentExcavator(this.deviceCalibParamsId, this.mList);
        } else {
            this.adapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadLocalListAsync() {
        this.executorService.execute(new Runnable() { // from class: com.qianhe.yct.activity.ExcavatorListActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ExcavatorListActivity.m1411$r8$lambda$cHCREh4Cv0lmJcBe6_r4IHa7gY(this.f$0);
            }
        });
    }

    /* renamed from: $r8$lambda$cHCREh4Cv0lmJ-cBe6_r4IHa7gY, reason: not valid java name */
    public static /* synthetic */ void m1411$r8$lambda$cHCREh4Cv0lmJcBe6_r4IHa7gY(final ExcavatorListActivity excavatorListActivity) {
        excavatorListActivity.getClass();
        final List<ExcavatorEntity> listQueryExcavatorByUserId = DatabaseManager.getInstance(excavatorListActivity).queryExcavatorByUserId(0L);
        excavatorListActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.ExcavatorListActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ExcavatorListActivity.m1410$r8$lambda$O95_ws5MIZx4KtBXLSOyipDg(this.f$0, listQueryExcavatorByUserId);
            }
        });
    }

    /* renamed from: $r8$lambda$O95_ws5MIZx4-KtBXLSOy-i-pDg, reason: not valid java name */
    public static /* synthetic */ void m1410$r8$lambda$O95_ws5MIZx4KtBXLSOyipDg(ExcavatorListActivity excavatorListActivity, List list) {
        if (excavatorListActivity.isDestroyed()) {
            return;
        }
        excavatorListActivity.localList = list;
        excavatorListActivity.applyListToUi(list);
    }

    private void applyListToUi(List<ExcavatorEntity> list) {
        this.mList.clear();
        if (list != null && !list.isEmpty()) {
            this.mList.addAll(list);
        }
        refreshCurrentExcavatorMarker();
        this.adapter.notifyDataSetChanged();
        if (this.scrollToTopOnNextListUpdate) {
            this.scrollToTopOnNextListUpdate = false;
            this.binding.rcv.post(new Runnable() { // from class: com.qianhe.yct.activity.ExcavatorListActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.binding.rcv.scrollToPosition(0);
                }
            });
        }
        if (this.binding.bottomBtn.getSelectedIndex() == 1) {
            updateSelectAllState();
        } else {
            showSelectAll(false);
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public void openExcavatorDetail(long j) {
        Intent intent = new Intent(this, (Class<?>) ExcavatorDetailActivity.class);
        intent.putExtra("localId", j);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class SyncResult {
        List<ExcavatorEntity> localList;
        final List<ExcavatorEntity> localToCreate;
        final List<ExcavatorEntity> platformToDelete;
        final List<ExcavatorEntity> toModifyOnPlatform;

        private SyncResult() {
            this.toModifyOnPlatform = new ArrayList();
            this.platformToDelete = new ArrayList();
            this.localToCreate = new ArrayList();
            this.localList = new ArrayList();
        }
    }

    private SyncResult performLocalSync(List<ExcavatorEntity> list) {
        SyncResult syncResult = new SyncResult();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!list.isEmpty()) {
            List<ExcavatorEntity> listQueryExcavatorByUserId = DatabaseManager.getInstance(this).queryExcavatorByUserId(0L);
            if (!listQueryExcavatorByUserId.isEmpty()) {
                for (ExcavatorEntity excavatorEntity : listQueryExcavatorByUserId) {
                    if (!arrayList2.contains(excavatorEntity.calibrateUUid)) {
                        arrayList2.add(excavatorEntity.calibrateUUid);
                    }
                    for (ExcavatorEntity excavatorEntity2 : list) {
                        if (!arrayList.contains(excavatorEntity2.calibrateUUid)) {
                            arrayList.add(excavatorEntity2.calibrateUUid);
                        }
                        if (excavatorEntity2.calibrateUUid.equals(excavatorEntity.calibrateUUid)) {
                            if (excavatorEntity.version < excavatorEntity2.version || excavatorEntity.updateTime <= excavatorEntity2.updateTime) {
                                excavatorEntity2.localId = excavatorEntity.localId;
                                excavatorEntity2.showUnit = excavatorEntity.showUnit;
                                excavatorEntity2.name = SyncNameHelper.resolve(excavatorEntity.name, excavatorEntity2.name);
                                if (!excavatorEntity2.equals(excavatorEntity)) {
                                    DatabaseManager.getInstance(this).updateExcavatorById(excavatorEntity2);
                                }
                            } else {
                                syncResult.toModifyOnPlatform.add(excavatorEntity);
                            }
                        }
                    }
                }
            }
            for (ExcavatorEntity excavatorEntity3 : list) {
                if (!arrayList2.contains(excavatorEntity3.calibrateUUid)) {
                    List<ExcavatorEntity> listQueryExcavatorByName = DatabaseManager.getInstance(this).queryExcavatorByName(excavatorEntity3.name);
                    if (listQueryExcavatorByName.isEmpty()) {
                        DatabaseManager.getInstance(this).insertExcavator(excavatorEntity3);
                    } else {
                        ExcavatorEntity excavatorEntity4 = listQueryExcavatorByName.get(0);
                        if (shouldKeepUnsyncedDeviceExcavator(excavatorEntity4)) {
                            syncResult.platformToDelete.add(excavatorEntity3);
                            syncResult.localToCreate.add(excavatorEntity4);
                        } else if (excavatorEntity3.createTime > excavatorEntity4.createTime) {
                            excavatorEntity3.localId = excavatorEntity4.localId;
                            excavatorEntity3.name = SyncNameHelper.resolve(excavatorEntity4.name, excavatorEntity3.name);
                            DatabaseManager.getInstance(this).updateExcavatorById(excavatorEntity3);
                        } else {
                            syncResult.platformToDelete.add(excavatorEntity3);
                            syncResult.localToCreate.add(excavatorEntity4);
                        }
                    }
                }
            }
        }
        for (ExcavatorEntity excavatorEntity5 : DatabaseManager.getInstance(this).queryExcavatorByUserId(0L)) {
            if (!TextUtils.isEmpty(excavatorEntity5.calibrateUUid) && !arrayList.contains(excavatorEntity5.calibrateUUid) && !isCurrentDeviceExcavator(excavatorEntity5)) {
                DatabaseManager.getInstance(this).deleteExcavatorById(excavatorEntity5);
            }
        }
        syncResult.localList = DatabaseManager.getInstance(this).queryExcavatorByUserId(0L);
        return syncResult;
    }

    private boolean shouldKeepUnsyncedDeviceExcavator(ExcavatorEntity excavatorEntity) {
        return excavatorEntity != null && TextUtils.isEmpty(excavatorEntity.calibrateUUid) && isCurrentDeviceExcavator(excavatorEntity);
    }

    private boolean isCurrentDeviceExcavator(ExcavatorEntity excavatorEntity) {
        if (excavatorEntity != null && !TextUtils.isEmpty(this.deviceCalibParamsId)) {
            if (this.deviceCalibParamsId.equals(excavatorEntity.calibParamsId)) {
                return true;
            }
            String excavatorNameFromCalibParamsId = CalibParamsIdUtil.parseExcavatorNameFromCalibParamsId(this.deviceCalibParamsId);
            if (!TextUtils.isEmpty(excavatorNameFromCalibParamsId) && excavatorNameFromCalibParamsId.equals(excavatorEntity.name)) {
                return true;
            }
        }
        return false;
    }

    private void applySyncResult(SyncResult syncResult) {
        if (!syncResult.toModifyOnPlatform.isEmpty()) {
            Iterator<ExcavatorEntity> it = syncResult.toModifyOnPlatform.iterator();
            while (it.hasNext()) {
                NetworkUserLoader.getInstance().modifyExcavator(it.next());
            }
            NetworkUserLoader.getInstance().queryExcavator();
            return;
        }
        for (int i = 0; i < syncResult.platformToDelete.size(); i++) {
            final ExcavatorEntity excavatorEntity = syncResult.localToCreate.get(i);
            NetworkUserLoader.getInstance().delExcavator(syncResult.platformToDelete.get(i));
            this.binding.getRoot().postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.ExcavatorListActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    ExcavatorListActivity.$r8$lambda$upkiJqpiVPndlELyU6JnwIazplI(this.f$0, excavatorEntity);
                }
            }, 500L);
        }
        this.localList = syncResult.localList;
        this.index = 0;
        uploadExcavator();
    }

    public static /* synthetic */ void $r8$lambda$upkiJqpiVPndlELyU6JnwIazplI(ExcavatorListActivity excavatorListActivity, ExcavatorEntity excavatorEntity) {
        excavatorListActivity.getClass();
        NetworkUserLoader.getInstance().createExcavator(excavatorListActivity, excavatorEntity);
    }

    private void syncRemoteData(final List<ExcavatorEntity> list) {
        this.executorService.execute(new Runnable() { // from class: com.qianhe.yct.activity.ExcavatorListActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ExcavatorListActivity.m1409$r8$lambda$GBlJiErXi1iIlFkflamhGcYD4E(this.f$0, list);
            }
        });
    }

    /* renamed from: $r8$lambda$GBlJiErXi1iIlFkflamhGcYD4-E, reason: not valid java name */
    public static /* synthetic */ void m1409$r8$lambda$GBlJiErXi1iIlFkflamhGcYD4E(final ExcavatorListActivity excavatorListActivity, List list) {
        final SyncResult syncResultPerformLocalSync = excavatorListActivity.performLocalSync(list);
        excavatorListActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.ExcavatorListActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ExcavatorListActivity.m1407$r8$lambda$R03usaIP5uPVqO9DvPrnx1xK8(this.f$0, syncResultPerformLocalSync);
            }
        });
    }

    /* renamed from: $r8$lambda$-R03usaIP5uPV-qO9DvPrnx1xK8, reason: not valid java name */
    public static /* synthetic */ void m1407$r8$lambda$R03usaIP5uPVqO9DvPrnx1xK8(ExcavatorListActivity excavatorListActivity, SyncResult syncResult) {
        if (excavatorListActivity.isDestroyed()) {
            return;
        }
        excavatorListActivity.applySyncResult(syncResult);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    private void showList() {
        loadLocalListAsync();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.excavator);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        EventBus.getDefault().register(this);
        loadLocalListAsync();
        if (!TextUtils.isEmpty(UserSession.get().getToken())) {
            this.index = 0;
            this.platformSyncInProgress = true;
            NetworkUserLoader.getInstance().queryExcavator();
        }
        showList();
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "CALIBRATE,,GET_PARAM"));
        ExcavatorListAdapter excavatorListAdapter = this.adapter;
        if (excavatorListAdapter != null) {
            excavatorListAdapter.closeSelUi();
            this.binding.bottomBtn.closeExecuteUi();
            showSelectAll(false);
        }
    }

    private void uploadExcavator() {
        List<ExcavatorEntity> list = this.localList;
        if (list == null) {
            this.platformSyncInProgress = false;
            showList();
            runDeferredHostCalibCheck();
            return;
        }
        int i = this.index;
        if (i > -1 && i < list.size()) {
            ExcavatorEntity excavatorEntity = this.localList.get(this.index);
            if (TextUtils.isEmpty(excavatorEntity.calibrateUUid)) {
                NetworkUserLoader.getInstance().createExcavator(this, excavatorEntity);
                return;
            } else {
                this.index++;
                uploadExcavator();
                return;
            }
        }
        if (this.index >= this.localList.size()) {
            this.platformSyncInProgress = false;
            showList();
            runDeferredHostCalibCheck();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean uploadUnsyncedIfIdle() {
        int i;
        if (TextUtils.isEmpty(UserSession.get().getToken()) || this.platformSyncInProgress) {
            return false;
        }
        List<ExcavatorEntity> list = this.localList;
        if (list != null && (i = this.index) > -1 && i < list.size()) {
            return false;
        }
        this.localList = DatabaseManager.getInstance(this).queryExcavatorByUserId(0L);
        this.index = 0;
        this.platformSyncInProgress = true;
        uploadExcavator();
        return true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(CreateExcavatorResponse createExcavatorResponse) {
        this.index++;
        uploadExcavator();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(QueryExcacatorResponse queryExcacatorResponse) {
        if (queryExcacatorResponse != null && queryExcacatorResponse.state == 0) {
            syncRemoteData(queryExcacatorResponse.list);
            return;
        }
        this.platformSyncInProgress = false;
        if (uploadUnsyncedIfIdle()) {
            return;
        }
        runDeferredHostCalibCheck();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.executorService.shutdownNow();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        EventBus.getDefault().unregister(this);
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
}
