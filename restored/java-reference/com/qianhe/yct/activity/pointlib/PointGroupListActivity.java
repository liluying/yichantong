package com.qianhe.yct.activity.pointlib;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.PointGroupEntity;
import com.qianhe.baselib.bean.PointlibEntity;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.PointListActivity;
import com.qianhe.yct.adapter.PointGroupListAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityPointGroupListBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.ChooseExportFolderDialogFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.event.PointGroupResponse;
import com.qianhe.yct.event.QueryPointGroupResponse;
import com.qianhe.yct.event.QueryPointResponse;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.utils.PointGroupExcelExporter;
import com.qianhe.yct.utils.PointLibSyncHelper;
import com.qianhe.yct.view.PointBottomView;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PointGroupListActivity extends BaseActivity {
    private PointGroupListAdapter adapter;
    private ActivityPointGroupListBinding binding;
    private DatabaseManager databaseManager;
    private final List<String> idStrList = new ArrayList();
    private boolean isPointGroupSyncing;
    private List<PointGroupEntity> mList;
    private boolean mRequireGeodetic;
    private boolean mReturnEcef;
    private boolean mReturnRawElev;
    private boolean mReturnValue;
    private ActivityResultLauncher pickFlowLauncher;
    private ActivityResultLauncher pointListLauncher;

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
        this.binding = ActivityPointGroupListBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.databaseManager = DatabaseManager.getInstance(this);
        Intent intent = getIntent();
        if (intent != null) {
            this.mReturnValue = intent.getBooleanExtra("returnValue", false);
            this.mRequireGeodetic = intent.getBooleanExtra("requireGeodetic", false);
            this.mReturnEcef = intent.getBooleanExtra("returnEcef", false);
            this.mReturnRawElev = intent.getBooleanExtra("returnRawElev", false);
        }
        this.pointListLauncher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.pointlib.PointGroupListActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                PointGroupListActivity.$r8$lambda$ggUqU9HANfnKAmEL0iEa1BNzqds(this.f$0, (ActivityResult) obj);
            }
        });
        this.pickFlowLauncher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.pointlib.PointGroupListActivity$$ExternalSyntheticLambda1
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                PointGroupListActivity.$r8$lambda$mlSvSWTtYOzGYq_enL8TlkaBahY(this.f$0, (ActivityResult) obj);
            }
        });
        initView();
        initList();
    }

    public static /* synthetic */ void $r8$lambda$ggUqU9HANfnKAmEL0iEa1BNzqds(PointGroupListActivity pointGroupListActivity, ActivityResult activityResult) {
        pointGroupListActivity.getClass();
        if (activityResult.getResultCode() != -1 || activityResult.getData() == null) {
            return;
        }
        pointGroupListActivity.setResult(-1, activityResult.getData());
        pointGroupListActivity.finish();
    }

    public static /* synthetic */ void $r8$lambda$mlSvSWTtYOzGYq_enL8TlkaBahY(PointGroupListActivity pointGroupListActivity, ActivityResult activityResult) {
        pointGroupListActivity.getClass();
        if (activityResult.getResultCode() != -1 || activityResult.getData() == null) {
            return;
        }
        Intent data = activityResult.getData();
        if (data.getBooleanExtra("openPointList", false)) {
            Intent intent = new Intent(pointGroupListActivity, (Class<?>) PointListActivity.class);
            long longExtra = data.getLongExtra("groupLocalId", 0L);
            String stringExtra = data.getStringExtra("groupName");
            String stringExtra2 = data.getStringExtra("pendingGroupName");
            if (longExtra > 0) {
                intent.putExtra("groupLocalId", longExtra);
                intent.putExtra("groupName", stringExtra);
            } else if (!TextUtils.isEmpty(stringExtra2)) {
                intent.putExtra("pendingGroupName", stringExtra2);
            }
            pointGroupListActivity.putPickExtras(intent);
            pointGroupListActivity.pointListLauncher.launch(intent);
            return;
        }
        pointGroupListActivity.setResult(-1, data);
        pointGroupListActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void putPickExtras(Intent intent) {
        intent.putExtra("returnValue", true);
        intent.putExtra("requireGeodetic", this.mRequireGeodetic);
        intent.putExtra("returnEcef", this.mReturnEcef);
        intent.putExtra("returnRawElev", this.mReturnRawElev);
    }

    private void initView() {
        this.binding.lltAll.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.pointlib.PointGroupListActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PointGroupListActivity.$r8$lambda$Knc0V8w73J7zWgziiZrPz8rvFW0(this.f$0, view);
            }
        });
        this.binding.bottomBtn.setOnNavItemClickListener(new PointBottomView.OnNavItemClickListener() { // from class: com.qianhe.yct.activity.pointlib.PointGroupListActivity.1
            @Override // com.qianhe.yct.view.PointBottomView.OnNavItemClickListener
            public void onItemClick(int i) {
                PointGroupListActivity.this.adapter.showSelUi(i == 1);
                PointGroupListActivity.this.showSelectAll(i == 1);
            }

            @Override // com.qianhe.yct.view.PointBottomView.OnNavItemClickListener
            public void onCancel() {
                PointGroupListActivity.this.adapter.closeSelUi();
                PointGroupListActivity.this.showSelectAll(false);
            }

            @Override // com.qianhe.yct.view.PointBottomView.OnNavItemClickListener
            public void onExecuteClick(int i) throws NumberFormatException {
                if (i != 0) {
                    if (i == 1) {
                        PointGroupListActivity.this.deleteSelectedGroups();
                        return;
                    } else {
                        if (i == 2) {
                            PointGroupListActivity.this.modifySelectedGroup();
                            return;
                        }
                        return;
                    }
                }
                Intent intent = new Intent(PointGroupListActivity.this, (Class<?>) PointGroupCreateActivity.class);
                intent.putExtra("createNewGroup", true);
                if (PointGroupListActivity.this.mReturnValue) {
                    PointGroupListActivity.this.putPickExtras(intent);
                    PointGroupListActivity.this.pickFlowLauncher.launch(intent);
                } else {
                    PointGroupListActivity.this.startActivity(intent);
                }
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Knc0V8w73J7zWgziiZrPz8rvFW0(PointGroupListActivity pointGroupListActivity, View view) {
        pointGroupListActivity.binding.ivAll.setSelected(!r2.isSelected());
        pointGroupListActivity.adapter.selecteAll(pointGroupListActivity.binding.ivAll.isSelected());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteSelectedGroups() {
        if (this.idStrList.isEmpty()) {
            showToastDialog(getString(R$string.select_least_one));
        } else {
            showTipDialog(getString(R$string.want_to_delete), getString(R$string.confirm), "", !TextUtils.isEmpty(UserSession.get().getToken()) ? getString(R$string.delete_point_group_confirm) : "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.pointlib.PointGroupListActivity.2
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    Iterator it = PointGroupListActivity.this.mList.iterator();
                    while (it.hasNext()) {
                        PointGroupEntity pointGroupEntity = (PointGroupEntity) it.next();
                        if (PointGroupListActivity.this.idStrList.contains(String.valueOf(pointGroupEntity.groupLocalId))) {
                            List<Long> listCollectServerPointIdsInGroup = PointGroupListActivity.this.databaseManager.collectServerPointIdsInGroup(pointGroupEntity.groupLocalId);
                            if (!listCollectServerPointIdsInGroup.isEmpty()) {
                                NetworkUserLoader.getInstance().deletePoints(listCollectServerPointIdsInGroup);
                            }
                            if (pointGroupEntity.groupId > 0) {
                                NetworkUserLoader.getInstance().deletePointGroup(pointGroupEntity.groupId);
                            }
                            PointGroupListActivity.this.databaseManager.deletePointGroup(pointGroupEntity);
                            it.remove();
                            PointGroupListActivity.this.idStrList.remove(String.valueOf(pointGroupEntity.groupLocalId));
                        }
                    }
                    PointGroupListActivity.this.adapter.refreshIdStrList(PointGroupListActivity.this.idStrList);
                    PointGroupListActivity.this.adapter.closeSelUi();
                    PointGroupListActivity.this.binding.bottomBtn.closeExecuteUi();
                    PointGroupListActivity pointGroupListActivity = PointGroupListActivity.this;
                    Toast.makeText(pointGroupListActivity, pointGroupListActivity.getString(R$string.delete_success), 0).show();
                    PointGroupListActivity.this.showSelectAll(false);
                    PointGroupListActivity.this.updateEmptyView();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void modifySelectedGroup() throws NumberFormatException {
        if (this.idStrList.isEmpty()) {
            showToastDialog(getString(R$string.select_least_one));
        } else if (this.idStrList.size() > 1) {
            showToastDialog(getString(R$string.only_one_can_selected_modify));
        } else {
            openModifyPage(this.databaseManager.queryPointGroupByLocalId(Long.parseLong(this.idStrList.get(0))));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openModifyPage(PointGroupEntity pointGroupEntity) {
        if (pointGroupEntity == null) {
            return;
        }
        Intent intent = new Intent(this, (Class<?>) PointGroupCreateActivity.class);
        intent.putExtra("editGroupLocalId", pointGroupEntity.groupLocalId);
        intent.putExtra("groupName", pointGroupEntity.name);
        if (this.mReturnValue) {
            putPickExtras(intent);
            this.pickFlowLauncher.launch(intent);
        } else {
            startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exportPointGroup(final PointGroupEntity pointGroupEntity) {
        if (pointGroupEntity == null) {
            return;
        }
        final List<PointlibEntity> listQueryPoint = this.databaseManager.queryPoint(null, Long.valueOf(pointGroupEntity.groupLocalId), false);
        if (listQueryPoint == null || listQueryPoint.isEmpty()) {
            showToastDialog(getString(R$string.no_point_in_group));
            return;
        }
        ChooseExportFolderDialogFragment chooseExportFolderDialogFragment = new ChooseExportFolderDialogFragment();
        chooseExportFolderDialogFragment.setOnConfirmListener(new ChooseExportFolderDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.pointlib.PointGroupListActivity$$ExternalSyntheticLambda3
            @Override // com.qianhe.yct.dialog.ChooseExportFolderDialogFragment.OnConfirmListener
            public final void onConfirm(File file) {
                this.f$0.exportPointsToExcel(pointGroupEntity, listQueryPoint, file);
            }
        });
        chooseExportFolderDialogFragment.show(getSupportFragmentManager(), "ChooseExportFolderDialogFragment");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exportPointsToExcel(final PointGroupEntity pointGroupEntity, final List<PointlibEntity> list, final File file) {
        if (file == null || !file.isDirectory()) {
            showToastDialog(getString(R$string.export_failed));
        } else {
            final double dCalculatePhaseToHang = calculatePhaseToHang();
            new Thread(new Runnable() { // from class: com.qianhe.yct.activity.pointlib.PointGroupListActivity$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    PointGroupListActivity.m1708$r8$lambda$xvhHLT_IufWzKLmIBPBxxqhySA(this.f$0, file, pointGroupEntity, list, dCalculatePhaseToHang);
                }
            }, "point-group-export").start();
        }
    }

    /* renamed from: $r8$lambda$xvhHLT_IufWzK-LmIBPBxxqhySA, reason: not valid java name */
    public static /* synthetic */ void m1708$r8$lambda$xvhHLT_IufWzKLmIBPBxxqhySA(final PointGroupListActivity pointGroupListActivity, File file, PointGroupEntity pointGroupEntity, List list, double d) {
        pointGroupListActivity.getClass();
        try {
            final File fileExport = PointGroupExcelExporter.export(pointGroupListActivity, file, pointGroupEntity.name, list, d);
            pointGroupListActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.pointlib.PointGroupListActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.showExportSuccessDialog(fileExport);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            pointGroupListActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.pointlib.PointGroupListActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    PointGroupListActivity pointGroupListActivity2 = this.f$0;
                    pointGroupListActivity2.showToastDialog(pointGroupListActivity2.getString(R$string.export_failed));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showExportSuccessDialog(final File file) {
        if (file == null) {
            return;
        }
        LogToFile.i("点库组导出成功：" + file.getAbsolutePath());
        showTipDialog(getString(R$string.export_success, file.getAbsolutePath()), getString(R$string.share), getString(R$string.close), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.pointlib.PointGroupListActivity.3
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                PointGroupListActivity.this.shareFile(file);
            }
        });
    }

    private void initList() {
        this.mList = new ArrayList();
        if (getResources().getConfiguration().orientation == 2) {
            this.binding.rcvPointGroupList.setLayoutManager(new GridLayoutManager(this, 2));
        } else {
            this.binding.rcvPointGroupList.setLayoutManager(new LinearLayoutManager(this));
        }
        PointGroupListAdapter pointGroupListAdapter = new PointGroupListAdapter(this, this.mList);
        this.adapter = pointGroupListAdapter;
        this.binding.rcvPointGroupList.setAdapter(pointGroupListAdapter);
        this.adapter.setOnActionListener(new PointGroupListAdapter.OnActionListener() { // from class: com.qianhe.yct.activity.pointlib.PointGroupListActivity.4
            @Override // com.qianhe.yct.adapter.PointGroupListAdapter.OnActionListener
            public void onClick(PointGroupEntity pointGroupEntity) {
                Intent intent = new Intent(PointGroupListActivity.this, (Class<?>) PointListActivity.class);
                intent.putExtra("groupLocalId", pointGroupEntity.groupLocalId);
                intent.putExtra("groupName", pointGroupEntity.name);
                if (PointGroupListActivity.this.mReturnValue) {
                    PointGroupListActivity.this.putPickExtras(intent);
                    PointGroupListActivity.this.pointListLauncher.launch(intent);
                } else {
                    PointGroupListActivity.this.startActivity(intent);
                }
            }

            @Override // com.qianhe.yct.adapter.PointGroupListAdapter.OnActionListener
            public void onSelItem(List<String> list) {
                PointGroupListActivity.this.idStrList.clear();
                PointGroupListActivity.this.idStrList.addAll(list);
                PointGroupListActivity.this.updateSelectAllState();
            }

            @Override // com.qianhe.yct.adapter.PointGroupListAdapter.OnActionListener
            public void onMenuAction(int i, PointGroupEntity pointGroupEntity) {
                if (i == 2) {
                    PointGroupListActivity.this.openModifyPage(pointGroupEntity);
                    return;
                }
                if (i == 3) {
                    PointGroupListActivity.this.exportPointGroup(pointGroupEntity);
                    return;
                }
                PointGroupListActivity.this.binding.bottomBtn.setSelectedIndex(i);
                PointGroupListActivity.this.binding.bottomBtn.showExecuteUi();
                PointGroupListActivity.this.adapter.showSelUi(i == 1);
                PointGroupListActivity.this.showSelectAll(i == 1);
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        reloadListFromLocal();
        syncPointGroupWithServer();
    }

    private void reloadListFromLocal() {
        List<PointGroupEntity> listQueryAllPointGroups = this.databaseManager.queryAllPointGroups();
        this.mList = listQueryAllPointGroups;
        this.adapter.setData(listQueryAllPointGroups);
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
        List<PointGroupEntity> list = this.mList;
        this.binding.ivAll.setSelected((list == null || list.isEmpty() || this.idStrList.size() != this.mList.size()) ? false : true);
    }

    private void syncPointGroupWithServer() {
        if (this.isPointGroupSyncing || TextUtils.isEmpty(UserSession.get().getToken())) {
            return;
        }
        this.isPointGroupSyncing = true;
        NetworkUserLoader.getInstance().queryPointGroup(null, null, null, 0L, 0L, 1, 100);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(PointGroupResponse pointGroupResponse) {
        if (pointGroupResponse == null || pointGroupResponse.state != 0) {
            return;
        }
        long j = pointGroupResponse.id;
        if (j > 0) {
            long j2 = pointGroupResponse.groupLocalId;
            if (j2 > 0) {
                this.databaseManager.updatePointGroupServerIds(j2, j, pointGroupResponse.uuid);
                uploadPendingPointsForGroup(pointGroupResponse.groupLocalId);
                reloadListFromLocal();
            }
        }
    }

    private void uploadPendingPointsForGroup(long j) {
        PointGroupEntity pointGroupEntityQueryPointGroupByLocalId = this.databaseManager.queryPointGroupByLocalId(j);
        if (pointGroupEntityQueryPointGroupByLocalId == null || pointGroupEntityQueryPointGroupByLocalId.groupId <= 0) {
            return;
        }
        List<PointlibEntity> listQueryPoint = this.databaseManager.queryPoint(null, Long.valueOf(j), false);
        ArrayList arrayList = new ArrayList();
        for (PointlibEntity pointlibEntity : listQueryPoint) {
            if (pointlibEntity.pointId <= 0 && !NetworkUserLoader.getInstance().isPointUploading(pointlibEntity.id)) {
                arrayList.add(pointlibEntity);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        NetworkUserLoader.getInstance().addPoints(pointGroupEntityQueryPointGroupByLocalId, arrayList);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(QueryPointGroupResponse queryPointGroupResponse) {
        this.isPointGroupSyncing = false;
        if (queryPointGroupResponse == null || queryPointGroupResponse.state != 0) {
            return;
        }
        updatePointGroupData(queryPointGroupResponse.list);
    }

    private void updatePointGroupData(List<QueryPointGroupResponse.PointGroupItem> list) {
        PointLibSyncHelper.mergePointGroupsFromServer(this.databaseManager, list);
        reloadListFromLocal();
        syncAllGroupPoints();
    }

    private void syncAllGroupPoints() {
        for (PointGroupEntity pointGroupEntity : this.databaseManager.queryAllPointGroups()) {
            if (pointGroupEntity.groupId > 0) {
                NetworkUserLoader.getInstance().queryPoints(pointGroupEntity.groupId, null, null, 0L, 0L, 1, 200);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(QueryPointResponse queryPointResponse) {
        PointGroupEntity next;
        if (queryPointResponse == null || queryPointResponse.state != 0 || queryPointResponse.list == null) {
            return;
        }
        Iterator<PointGroupEntity> it = this.databaseManager.queryAllPointGroups().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (next.groupId == queryPointResponse.groupId) {
                    break;
                }
            }
        }
        if (next == null) {
            return;
        }
        PointLibSyncHelper.mergePointsFromServer(this.databaseManager, next, queryPointResponse.list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmptyView() {
        List<PointGroupEntity> list = this.mList;
        if (list == null || list.isEmpty()) {
            this.binding.lltEmpty.setVisibility(0);
            this.binding.rcvPointGroupList.setVisibility(8);
            this.binding.ivEmpty.setImageResource(R$drawable.icon_pointlib_new);
            this.binding.tvEmptyDesc.setText(R$string.no_point_group);
            return;
        }
        this.binding.lltEmpty.setVisibility(8);
        this.binding.rcvPointGroupList.setVisibility(0);
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

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(getString(R$string.point_group_list));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
