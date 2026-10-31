package com.qianhe.yct.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.PointGroupEntity;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.EngineeringListAdapter;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityEngineeringListBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.enums.MenuActionEnum;
import com.qianhe.yct.event.CreateEngineeringResponse;
import com.qianhe.yct.event.QueryGnssEngineeringResponse;
import com.qianhe.yct.utils.EngineeringProjectionParser;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.view.EngineeringBottomView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class EngineeringListActivity extends BaseActivity {
    private EngineeringListAdapter adapter;
    private ActivityEngineeringListBinding binding;
    private DatabaseManager databaseManager;
    private ArrayList<String> idStrList = new ArrayList<>();
    private boolean isEngineeringSyncing;
    private List<EngineeringEntity> mList;
    private long suppressEngineeringQueryUntilElapsed;

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

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityEngineeringListBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.databaseManager = DatabaseManager.getInstance(this);
        initView();
        initList();
    }

    private void initView() {
        this.binding.bottomBtn.setOnNavItemClickListener(new EngineeringBottomView.OnNavItemClickListener() { // from class: com.qianhe.yct.activity.EngineeringListActivity.1
            @Override // com.qianhe.yct.view.EngineeringBottomView.OnNavItemClickListener
            public void onItemClick(int i) {
                EngineeringListAdapter engineeringListAdapter = EngineeringListActivity.this.adapter;
                MenuActionEnum menuActionEnum = MenuActionEnum.DELETE;
                engineeringListAdapter.showSelUi(i == menuActionEnum.getType());
                if (i == MenuActionEnum.MODIFY.getType()) {
                    EngineeringListActivity.this.adapter.selectCurrentItem();
                }
                EngineeringListActivity.this.showSelectAll(i == menuActionEnum.getType());
            }

            @Override // com.qianhe.yct.view.EngineeringBottomView.OnNavItemClickListener
            public void onCancel() {
                EngineeringListActivity.this.adapter.closeSelUi();
                EngineeringListActivity.this.showSelectAll(false);
            }

            @Override // com.qianhe.yct.view.EngineeringBottomView.OnNavItemClickListener
            public void onExecuteClick(int i) {
                EngineeringEntity engineeringEntity;
                if (i == 0) {
                    EngineeringListActivity.this.startActivity(new Intent(EngineeringListActivity.this, (Class<?>) EngineeringCreateActivity.class));
                    return;
                }
                if (i == 1) {
                    if (EngineeringListActivity.this.idStrList.isEmpty()) {
                        EngineeringListActivity engineeringListActivity = EngineeringListActivity.this;
                        engineeringListActivity.showToastDialog(engineeringListActivity.getString(R$string.select_least_one));
                        return;
                    } else {
                        EngineeringListActivity engineeringListActivity2 = EngineeringListActivity.this;
                        engineeringListActivity2.showTipDialog(engineeringListActivity2.getString(R$string.sure_want_delete), EngineeringListActivity.this.getString(R$string.confirm), "", EngineeringListActivity.this.getString(R$string.delete_engineering_tips), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.EngineeringListActivity.1.1
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() {
                                EngineeringListActivity.this.deleteNextEngineering(0);
                            }
                        });
                        return;
                    }
                }
                if (i == 2) {
                    if (EngineeringListActivity.this.idStrList.isEmpty()) {
                        EngineeringListActivity engineeringListActivity3 = EngineeringListActivity.this;
                        engineeringListActivity3.showToastDialog(engineeringListActivity3.getString(R$string.select_least_one));
                        return;
                    }
                    if (EngineeringListActivity.this.idStrList.size() > 1) {
                        EngineeringListActivity engineeringListActivity4 = EngineeringListActivity.this;
                        engineeringListActivity4.showToastDialog(engineeringListActivity4.getString(R$string.only_one_can_selected_modify));
                        return;
                    }
                    Iterator it = EngineeringListActivity.this.mList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            engineeringEntity = null;
                            break;
                        } else {
                            engineeringEntity = (EngineeringEntity) it.next();
                            if (EngineeringListActivity.this.idStrList.contains(String.valueOf(engineeringEntity.id))) {
                                break;
                            }
                        }
                    }
                    EngineeringListActivity.this.openEngineeringEdit(engineeringEntity);
                }
            }
        });
        this.binding.lltAll.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.EngineeringListActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EngineeringListActivity.m1393$r8$lambda$wWcIXYrXnU4Uql663zq2BiXleo(this.f$0, view);
            }
        });
    }

    /* renamed from: $r8$lambda$wWcIXYrXnU4Uql663zq2BiX-leo, reason: not valid java name */
    public static /* synthetic */ void m1393$r8$lambda$wWcIXYrXnU4Uql663zq2BiXleo(EngineeringListActivity engineeringListActivity, View view) {
        engineeringListActivity.binding.ivAll.setSelected(!r2.isSelected());
        engineeringListActivity.adapter.selectAll(engineeringListActivity.binding.ivAll.isSelected());
    }

    private void initList() {
        this.mList = new ArrayList();
        if (getResources().getConfiguration().orientation == 2) {
            this.binding.rcvEngineeringList.setLayoutManager(new GridLayoutManager(this, 2));
        } else {
            this.binding.rcvEngineeringList.setLayoutManager(new LinearLayoutManager(this));
        }
        EngineeringListAdapter engineeringListAdapter = new EngineeringListAdapter(this, this.mList);
        this.adapter = engineeringListAdapter;
        this.binding.rcvEngineeringList.setAdapter(engineeringListAdapter);
        this.adapter.setOnActionListener(new EngineeringListAdapter.OnActionListener() { // from class: com.qianhe.yct.activity.EngineeringListActivity.2
            @Override // com.qianhe.yct.adapter.EngineeringListAdapter.OnActionListener
            public void onItemClick(final EngineeringEntity engineeringEntity) {
                EngineeringListActivity engineeringListActivity = EngineeringListActivity.this;
                engineeringListActivity.showTipDialog(engineeringListActivity.getString(R$string.want_to_switch_engineering), EngineeringListActivity.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.EngineeringListActivity.2.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        EngineeringEntity engineeringEntityQueryCurrentEngineering = EngineeringListActivity.this.databaseManager.queryCurrentEngineering();
                        EngineeringListActivity.this.databaseManager.setCurrentEngineering(engineeringEntity.id);
                        EngineeringEntity engineeringEntityQueryEngineeringByLocalId = EngineeringListActivity.this.databaseManager.queryEngineeringByLocalId(engineeringEntity.id);
                        EngineeringListActivity.this.databaseManager.applyLatestCurrentEngineeringParams();
                        EngineeringListActivity.this.suppressEngineeringQueryUntilElapsed = SystemClock.elapsedRealtime() + 3000;
                        EngineeringListActivity.this.syncCurrentUsageToServer(engineeringEntityQueryEngineeringByLocalId, engineeringEntityQueryCurrentEngineering);
                        YCTApplication.getInstance().setSyncAfterEngineeringSwitch(true);
                        EngineeringListActivity.this.reloadListFromLocal();
                        EngineeringListActivity engineeringListActivity2 = EngineeringListActivity.this;
                        engineeringListActivity2.showToastDialog(engineeringListActivity2.getString(R$string.config_success));
                        StringBuilder sb = new StringBuilder();
                        sb.append("当前工程：");
                        sb.append(GnssCoordConvertManager.getInstance().getCurrentEngineering() != null ? GnssCoordConvertManager.getInstance().getCurrentEngineering().toString() : "");
                        LogToFile.i(sb.toString());
                    }
                });
            }

            @Override // com.qianhe.yct.adapter.EngineeringListAdapter.OnActionListener
            public void onMenuAction(int i, EngineeringEntity engineeringEntity) {
                if (i == MenuActionEnum.MODIFY.getType()) {
                    EngineeringListActivity.this.openEngineeringEdit(engineeringEntity);
                    return;
                }
                EngineeringListActivity.this.binding.bottomBtn.setSelectedIndex(i);
                EngineeringListActivity.this.binding.bottomBtn.showExecuteUi();
                EngineeringListAdapter engineeringListAdapter2 = EngineeringListActivity.this.adapter;
                MenuActionEnum menuActionEnum = MenuActionEnum.DELETE;
                engineeringListAdapter2.showSelUi(i == menuActionEnum.getType());
                EngineeringListActivity.this.showSelectAll(i == menuActionEnum.getType());
            }

            @Override // com.qianhe.yct.adapter.EngineeringListAdapter.OnActionListener
            public void onSelItem(ArrayList<String> arrayList) {
                EngineeringListActivity.this.idStrList = arrayList;
                EngineeringListActivity.this.updateSelectAllState();
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        if (TextUtils.isEmpty(UserSession.get().getToken())) {
            this.databaseManager.createDefaultEngineeringIfAbsentLocally();
            this.databaseManager.bindOrphanDataToDefaultEngineering();
        }
        reloadListFromLocal();
        syncEngineeringWithServer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reloadListFromLocal() {
        List<EngineeringEntity> listQueryAllEngineering = this.databaseManager.queryAllEngineering();
        this.mList = new ArrayList();
        for (EngineeringEntity engineeringEntity : listQueryAllEngineering) {
            if (engineeringEntity != null && engineeringEntity.editState != 1) {
                this.mList.add(engineeringEntity);
            }
        }
        this.adapter.setData(this.mList);
        updateEmptyView();
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

    /* JADX INFO: Access modifiers changed from: private */
    public void openEngineeringEdit(EngineeringEntity engineeringEntity) {
        if (engineeringEntity == null) {
            return;
        }
        Intent intent = new Intent(this, (Class<?>) EngineeringCreateActivity.class);
        intent.putExtra("engineering", engineeringEntity);
        startActivity(intent);
    }

    private void syncEngineeringWithServer() {
        if (this.isEngineeringSyncing) {
            return;
        }
        this.isEngineeringSyncing = true;
        NetworkUserLoader.getInstance().queryGnssEngineering(null, null, null, null, null, 0L, 0L, 1, 100);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncCurrentUsageToServer(EngineeringEntity engineeringEntity, EngineeringEntity engineeringEntity2) {
        if (TextUtils.isEmpty(UserSession.get().getToken())) {
            return;
        }
        if (engineeringEntity != null && engineeringEntity.engineeringId > 0) {
            NetworkUserLoader.getInstance().modifyGnssEngineering(engineeringEntity);
        }
        if (engineeringEntity2 == null || engineeringEntity == null || engineeringEntity2.id == engineeringEntity.id || engineeringEntity2.engineeringId <= 0) {
            return;
        }
        engineeringEntity2.currentUsage = 0;
        NetworkUserLoader.getInstance().modifyGnssEngineering(engineeringEntity2);
    }

    private void uploadPendingEngineeringToServer() {
        for (EngineeringEntity engineeringEntity : this.databaseManager.queryAllEngineering()) {
            if (engineeringEntity != null && TextUtils.isEmpty(engineeringEntity.engineeringUuid) && engineeringEntity.editState != 1) {
                NetworkUserLoader.getInstance().createGnssEngineering(engineeringEntity);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateEngineeringData(java.util.List<com.qianhe.yct.event.QueryGnssEngineeringResponse.GnssEngineeringItem> r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 597
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.activity.EngineeringListActivity.updateEngineeringData(java.util.List):void");
    }

    private void syncResolvedCurrentUsageToServer(EngineeringEntity engineeringEntity, EngineeringEntity engineeringEntity2, String str, long j) {
        if (engineeringEntity == null || TextUtils.isEmpty(UserSession.get().getToken()) || engineeringEntity.engineeringId <= 0 || DatabaseManager.isSameServerEngineering(engineeringEntity, str, j)) {
            return;
        }
        engineeringEntity.currentUsage = 1;
        NetworkUserLoader.getInstance().modifyGnssEngineering(engineeringEntity);
        EngineeringEntity engineeringEntityFindEngineeringByServerIdentity = this.databaseManager.findEngineeringByServerIdentity(str, j);
        if (engineeringEntityFindEngineeringByServerIdentity == null || engineeringEntityFindEngineeringByServerIdentity.id == engineeringEntity.id || engineeringEntityFindEngineeringByServerIdentity.engineeringId <= 0) {
            return;
        }
        engineeringEntityFindEngineeringByServerIdentity.currentUsage = 0;
        NetworkUserLoader.getInstance().modifyGnssEngineering(engineeringEntityFindEngineeringByServerIdentity);
    }

    private EngineeringEntity convertToEngineeringEntity(QueryGnssEngineeringResponse.GnssEngineeringItem gnssEngineeringItem) {
        EngineeringEntity engineeringEntity = new EngineeringEntity();
        engineeringEntity.name = gnssEngineeringItem.name;
        engineeringEntity.currentUsage = gnssEngineeringItem.currentUsage;
        engineeringEntity.engineeringId = gnssEngineeringItem.id;
        engineeringEntity.engineeringUuid = gnssEngineeringItem.uuid;
        engineeringEntity.createTime = gnssEngineeringItem.createEpoch;
        engineeringEntity.updateTime = gnssEngineeringItem.updateEpoch;
        engineeringEntity.version = gnssEngineeringItem.version;
        QueryGnssEngineeringResponse.Projection projection = gnssEngineeringItem.projection;
        if (projection != null) {
            engineeringEntity.ellipsoidType = projection.ellipsoidType;
            engineeringEntity.projectionType = projection.projectionType;
            String str = projection.paramsDetail;
            if (!TextUtils.isEmpty(str)) {
                EngineeringProjectionParser.applyParamsDetail(engineeringEntity, str);
            }
        }
        QueryGnssEngineeringResponse.TransParam transParam = gnssEngineeringItem.transParam;
        if (transParam != null) {
            long j = gnssEngineeringItem.transParamId;
            if (j > 0) {
                engineeringEntity.transParamId = j;
                engineeringEntity.conversionParamsType = transParam.paramType;
                engineeringEntity.transParam = this.databaseManager.fromEngineeringTransParam(transParam);
                this.databaseManager.bindTransParamLocalId(engineeringEntity, gnssEngineeringItem.transParam.name);
                return engineeringEntity;
            }
        }
        engineeringEntity.conversionParamsType = 0;
        engineeringEntity.transParamId = 0L;
        engineeringEntity.transParamLocalId = 0L;
        engineeringEntity.transParam = null;
        return engineeringEntity;
    }

    private void mergeLocalEngineeringState(EngineeringEntity engineeringEntity, QueryGnssEngineeringResponse.GnssEngineeringItem gnssEngineeringItem) {
        engineeringEntity.currentUsage = gnssEngineeringItem.currentUsage;
    }

    private QueryGnssEngineeringResponse.GnssEngineeringItem findServerCurrentItem(List<QueryGnssEngineeringResponse.GnssEngineeringItem> list) {
        QueryGnssEngineeringResponse.GnssEngineeringItem gnssEngineeringItem = null;
        if (list != null && !list.isEmpty()) {
            long j = -1;
            for (QueryGnssEngineeringResponse.GnssEngineeringItem gnssEngineeringItem2 : list) {
                if (gnssEngineeringItem2 != null && gnssEngineeringItem2.currentUsage == 1) {
                    long jEffectiveCreateTime = DatabaseManager.effectiveCreateTime(gnssEngineeringItem2.createEpoch);
                    if (gnssEngineeringItem == null || jEffectiveCreateTime >= j) {
                        gnssEngineeringItem = gnssEngineeringItem2;
                        j = jEffectiveCreateTime;
                    }
                }
            }
        }
        return gnssEngineeringItem;
    }

    private void updateEmptyView() {
        if (this.mList.isEmpty()) {
            this.binding.lltEmpty.setVisibility(0);
            this.binding.rcvEngineeringList.setVisibility(8);
        } else {
            this.binding.lltEmpty.setVisibility(8);
            this.binding.rcvEngineeringList.setVisibility(0);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.project_management);
        return this.binding.topBar.getRoot();
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

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteNextEngineering(int i) {
        EngineeringEntity next;
        if (i >= this.idStrList.size()) {
            deleteFinish();
            return;
        }
        String str = this.idStrList.get(i);
        Iterator<EngineeringEntity> it = this.mList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (String.valueOf(next.id).equals(str)) {
                    break;
                }
            }
        }
        if (next == null) {
            deleteNextEngineering(i + 1);
            return;
        }
        if (next.currentUsage == 1) {
            showToastDialog(getString(R$string.current_engineering_cannot_delete));
            deleteFinish();
            return;
        }
        long j = next.engineeringId;
        deleteLocalEngineering(next, i);
        if (j > 0) {
            NetworkUserLoader.getInstance().deleteGnssEngineering(j);
        }
    }

    private void deleteLocalEngineering(EngineeringEntity engineeringEntity, int i) {
        for (BaseProEntity baseProEntity : this.databaseManager.collectProjectsForEngineering(engineeringEntity)) {
            if (baseProEntity.projectId > 0) {
                NetworkUserLoader.getInstance().delProject(baseProEntity);
            }
        }
        for (PointGroupEntity pointGroupEntity : this.databaseManager.collectPointGroupsForEngineering(engineeringEntity)) {
            List<Long> listCollectServerPointIdsInGroup = this.databaseManager.collectServerPointIdsInGroup(pointGroupEntity.groupLocalId);
            if (!listCollectServerPointIdsInGroup.isEmpty()) {
                NetworkUserLoader.getInstance().deletePoints(listCollectServerPointIdsInGroup);
            }
            if (pointGroupEntity.groupId > 0) {
                NetworkUserLoader.getInstance().deletePointGroup(pointGroupEntity.groupId);
            }
        }
        if (engineeringEntity.transParamId > 0) {
            NetworkUserLoader.getInstance().deleteGnssTransParam(true, engineeringEntity.transParamId);
        }
        if (this.databaseManager.deleteEngineeringById(engineeringEntity.id) > -1) {
            this.mList.remove(engineeringEntity);
        }
        deleteNextEngineering(i + 1);
    }

    private void deleteFinish() {
        this.idStrList.clear();
        this.adapter.setData(this.mList);
        this.adapter.refreshIdStrList(this.idStrList);
        this.adapter.closeSelUi();
        this.binding.bottomBtn.closeExecuteUi();
        showSelectAll(false);
        updateEmptyView();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateEngineeringResponse createEngineeringResponse) throws Throwable {
        if (createEngineeringResponse == null || createEngineeringResponse.localDbId <= 0) {
            return;
        }
        if (createEngineeringResponse.state == 0 && createEngineeringResponse.id > 0) {
            applyServerIdsToLocalEngineering(createEngineeringResponse);
            return;
        }
        LogToFile.e("工程上传失败 localId=" + createEngineeringResponse.localDbId + " err=" + createEngineeringResponse.errMsg);
    }

    private void applyServerIdsToLocalEngineering(CreateEngineeringResponse createEngineeringResponse) throws Throwable {
        this.databaseManager.updateEngineeringServerIds(createEngineeringResponse.localDbId, createEngineeringResponse.id, createEngineeringResponse.uuid);
        NetworkUserLoader.getInstance().syncProjectsBelongEngineering(null, this.databaseManager.updateProjectsBelongEngineeringId(createEngineeringResponse.localDbId, createEngineeringResponse.id));
        DatabaseManager databaseManager = this.databaseManager;
        databaseManager.renameUnsyncedLocalDuplicatesInEngineering(databaseManager.queryEngineeringByLocalId(createEngineeringResponse.localDbId));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(QueryGnssEngineeringResponse queryGnssEngineeringResponse) throws Throwable {
        this.isEngineeringSyncing = false;
        if (SystemClock.elapsedRealtime() < this.suppressEngineeringQueryUntilElapsed) {
            LogToFile.i("EngineeringListActivity 忽略过期工程查询（刚手动切换当前工程）");
            reloadListFromLocal();
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("EngineeringListActivity received QueryGnssEngineeringResponse: ");
        sb.append(queryGnssEngineeringResponse != null ? Integer.valueOf(queryGnssEngineeringResponse.state) : "null");
        LogToFile.i(sb.toString());
        if (queryGnssEngineeringResponse != null && queryGnssEngineeringResponse.state == 0) {
            updateEngineeringData(queryGnssEngineeringResponse.list);
        } else {
            reloadListFromLocal();
        }
    }
}
