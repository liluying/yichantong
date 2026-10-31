package com.qianhe.yct.activity;

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
import com.YctDeviceManager;
import com.google.gson.Gson;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.DikeEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.LineEntity;
import com.qianhe.baselib.bean.ShareEntity;
import com.qianhe.baselib.bean.ShuaPoEntity;
import com.qianhe.baselib.bean.WaGouEntity;
import com.qianhe.baselib.bean.ZhaoPingEntity;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.share.ShareCreateActivity;
import com.qianhe.yct.activity.share.ShareJoinActivity;
import com.qianhe.yct.adapter.ShareListAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityShareListBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.event.CreateProjectResponse;
import com.qianhe.yct.event.DelShareResponse;
import com.qianhe.yct.event.QueryProjectResponse;
import com.qianhe.yct.event.QueryShareResponse;
import com.qianhe.yct.utils.ErrorCodeUtils;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.view.ShareBottomView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShareListActivity extends BaseActivity {
    private ActivityShareListBinding binding;
    private DatabaseManager databaseManager;
    private List<String> idStrList = new ArrayList();
    private int index;
    private boolean isProChange;
    private ActivityResultLauncher launcher;
    private List<BaseProEntity> localAll;
    private GGAEntity mGGA;
    private InsNavi mINS;
    private List<ShareEntity> mList;
    private ShareListAdapter shareListAdapter;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityShareListBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.binding.bottomBtn.setOnNavItemClickListener(new ShareBottomView.OnNavItemClickListener() { // from class: com.qianhe.yct.activity.ShareListActivity.1
            @Override // com.qianhe.yct.view.ShareBottomView.OnNavItemClickListener
            public void onItemClick(int i) {
                ShareListActivity.this.shareListAdapter.showSelUi(i == 2);
                ShareListActivity.this.showSelectAll(i == 2);
            }

            @Override // com.qianhe.yct.view.ShareBottomView.OnNavItemClickListener
            public void onCancel() {
                ShareListActivity.this.shareListAdapter.closeSelUi();
                ShareListActivity.this.showSelectAll(false);
            }

            @Override // com.qianhe.yct.view.ShareBottomView.OnNavItemClickListener
            public void onExecuteClick(int i) {
                if (i == 0) {
                    if (!TextUtils.isEmpty(UserSession.get().getToken())) {
                        Intent intent = new Intent(ShareListActivity.this, (Class<?>) ShareCreateActivity.class);
                        intent.setFlags(603979776);
                        ShareListActivity.this.launcher.launch(intent);
                        return;
                    } else {
                        ShareListActivity shareListActivity = ShareListActivity.this;
                        shareListActivity.showToastDialog(shareListActivity.getString(R$string.current_not_login));
                        return;
                    }
                }
                if (i == 1) {
                    EventBus.getDefault().unregister(this);
                    ShareListActivity.this.startActivity(new Intent(ShareListActivity.this, (Class<?>) ShareJoinActivity.class));
                    return;
                }
                if (i == 2) {
                    if (ShareListActivity.this.idStrList.isEmpty()) {
                        ShareListActivity shareListActivity2 = ShareListActivity.this;
                        shareListActivity2.showToastDialog(shareListActivity2.getString(R$string.select_least_one));
                        return;
                    } else {
                        ShareListActivity shareListActivity3 = ShareListActivity.this;
                        shareListActivity3.showTipDialog(shareListActivity3.getString(R$string.want_to_delete_project), ShareListActivity.this.getString(R$string.confirm), "", ShareListActivity.this.getString(R$string.deletion_cannot_restored), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.ShareListActivity.1.1
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() {
                                Iterator it = ShareListActivity.this.mList.iterator();
                                do {
                                    ShareEntity shareEntity = (ShareEntity) it.next();
                                    if (ShareListActivity.this.idStrList.contains(String.valueOf(shareEntity.shareId))) {
                                        if (shareEntity.editState == 0) {
                                            NetworkUserLoader.getInstance().delShare(shareEntity);
                                        } else {
                                            DatabaseManager databaseManager = DatabaseManager.getInstance(ShareListActivity.this);
                                            if (databaseManager.deleteShare(shareEntity) > -1) {
                                                databaseManager.deleteForeignSharedProjectsAndEngineering(shareEntity);
                                            }
                                        }
                                        it.remove();
                                        ShareListActivity.this.idStrList.remove(String.valueOf(shareEntity.shareId));
                                    }
                                } while (it.hasNext());
                                ShareListActivity.this.shareListAdapter.refreshIdStrList(ShareListActivity.this.idStrList);
                                ShareListActivity.this.showSelectAll(false);
                                ShareListActivity.this.updateEmptyView();
                            }
                        });
                        return;
                    }
                }
                if (i == 3) {
                    if (ShareListActivity.this.idStrList.isEmpty()) {
                        ShareListActivity shareListActivity4 = ShareListActivity.this;
                        shareListActivity4.showToastDialog(shareListActivity4.getString(R$string.select_least_one));
                    } else {
                        if (ShareListActivity.this.idStrList.size() > 1) {
                            ShareListActivity shareListActivity5 = ShareListActivity.this;
                            shareListActivity5.showToastDialog(shareListActivity5.getString(R$string.only_one_can_selected_share));
                            return;
                        }
                        if (!ShareListActivity.this.databaseManager.getDatabase().isOpen()) {
                            ShareListActivity shareListActivity6 = ShareListActivity.this;
                            shareListActivity6.databaseManager = DatabaseManager.getInstance(shareListActivity6);
                        }
                        ShareListActivity.this.openShareWay(ShareListActivity.this.databaseManager.queryShareByShareId(Long.valueOf(Long.parseLong((String) ShareListActivity.this.idStrList.get(0)))).get(0));
                    }
                }
            }
        });
        this.binding.lltAll.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.ShareListActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ShareListActivity.this.binding.ivAll.setSelected(!ShareListActivity.this.binding.ivAll.isSelected());
                ShareListActivity.this.shareListAdapter.selecteAll(ShareListActivity.this.binding.ivAll.isSelected());
            }
        });
        List<BaseProEntity> loacalData = getLoacalData();
        this.localAll = loacalData;
        if (bundle == null && loacalData.isEmpty()) {
            showLoadingDialog(getString(R$string.loading));
        }
        NetworkUserLoader.getInstance().queryProjectByType(null);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        initShareList();
        initActivityResultLauncher();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.share_list);
        return this.binding.topBar.getRoot();
    }

    private void initActivityResultLauncher() {
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.ShareListActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ShareListActivity.$r8$lambda$CXqujQ4lUBQ_N9_L0TUHjCCFGR0(this.f$0, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$CXqujQ4lUBQ_N9_L0TUHjCCFGR0(ShareListActivity shareListActivity, ActivityResult activityResult) {
        Intent data;
        shareListActivity.getClass();
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        String stringExtra = data.getStringExtra("shareCode");
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        shareListActivity.showShareWayDialog(stringExtra);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        this.mGGA = gGAEntity;
    }

    private void initShareList() {
        this.mList = new ArrayList();
        int i = getResources().getConfiguration().orientation;
        if (i == 2) {
            this.binding.rcvShare.setLayoutManager(new GridLayoutManager(this, 2));
        } else if (i == 1) {
            this.binding.rcvShare.setLayoutManager(new LinearLayoutManager(this));
        }
        ShareListAdapter shareListAdapter = new ShareListAdapter(this, this.mList);
        this.shareListAdapter = shareListAdapter;
        this.binding.rcvShare.setAdapter(shareListAdapter);
        this.shareListAdapter.setOnActionListener(new ShareListAdapter.OnActionListener() { // from class: com.qianhe.yct.activity.ShareListActivity.3
            @Override // com.qianhe.yct.adapter.ShareListAdapter.OnActionListener
            public void onClick(ShareEntity shareEntity) {
                if (!ShareListActivity.this.databaseManager.getDatabase().isOpen()) {
                    ShareListActivity shareListActivity = ShareListActivity.this;
                    shareListActivity.databaseManager = DatabaseManager.getInstance(shareListActivity);
                }
                Intent intent = new Intent();
                intent.setClass(ShareListActivity.this, ShareCreateActivity.class);
                intent.setFlags(603979776);
                intent.putExtra("shareEntityJson", new Gson().toJson(shareEntity));
                ShareListActivity.this.launcher.launch(intent);
            }

            @Override // com.qianhe.yct.adapter.ShareListAdapter.OnActionListener
            public void onSelItem(ArrayList<String> arrayList) {
                ShareListActivity.this.idStrList = arrayList;
                ShareListActivity.this.updateSelectAllState();
            }

            @Override // com.qianhe.yct.adapter.ShareListAdapter.OnActionListener
            public void onMenuAction(int i2, ShareEntity shareEntity) {
                if (i2 == 3) {
                    ShareListActivity.this.openShareWay(shareEntity);
                    return;
                }
                ShareListActivity.this.binding.bottomBtn.setSelectedIndex(i2);
                ShareListActivity.this.binding.bottomBtn.showExecuteUi();
                ShareListActivity.this.shareListAdapter.showSelUi(i2 == 2);
                ShareListActivity.this.showSelectAll(i2 == 2);
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        this.databaseManager = DatabaseManager.getInstance(this);
        NetworkUserLoader.getInstance().queryShare(null, null, null, "");
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
        List<ShareEntity> list = this.mList;
        this.binding.ivAll.setSelected((list == null || list.isEmpty() || this.idStrList.size() != this.mList.size()) ? false : true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openShareWay(ShareEntity shareEntity) {
        if (shareEntity == null) {
            return;
        }
        if (shareEntity.editState == 1) {
            showTipDialog(getString(R$string.cannot_share_others_projects), getString(R$string.ok), null);
        } else {
            showShareWayDialog(shareEntity.shareCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmptyView() {
        List<ShareEntity> list = this.mList;
        if (list == null || list.isEmpty()) {
            this.binding.lltEmpty.setVisibility(0);
            this.binding.rcvShare.setVisibility(8);
            this.binding.ivEmpty.setImageResource(R$drawable.icon_share_new);
            this.binding.tvEmptyDesc.setText(R$string.share_empty_des);
            return;
        }
        this.binding.lltEmpty.setVisibility(8);
        this.binding.rcvShare.setVisibility(0);
    }

    private List<BaseProEntity> getLoacalData() {
        this.index = 0;
        ArrayList arrayList = new ArrayList();
        DatabaseManager databaseManager = this.databaseManager;
        if (databaseManager == null || !databaseManager.getDatabase().isOpen()) {
            this.databaseManager = DatabaseManager.getInstance(this);
        }
        this.databaseManager.cleanupDuplicateProjectsByUuid();
        List<BaseProEntity> listQueryEntityById = this.databaseManager.queryEntityById(ProjectEnum.ZHAOPING.getType(), null);
        List<BaseProEntity> listQueryEntityById2 = this.databaseManager.queryEntityById(ProjectEnum.SHUAPO.getType(), null);
        List<BaseProEntity> listQueryEntityById3 = this.databaseManager.queryEntityById(ProjectEnum.WAGOU.getType(), null);
        List<BaseProEntity> listQueryEntityById4 = this.databaseManager.queryEntityById(ProjectEnum.DIKE.getType(), null);
        List<BaseProEntity> listQueryEntityById5 = this.databaseManager.queryEntityById(ProjectEnum.LINE.getType(), null);
        arrayList.addAll(listQueryEntityById);
        arrayList.addAll(listQueryEntityById2);
        arrayList.addAll(listQueryEntityById3);
        arrayList.addAll(listQueryEntityById4);
        arrayList.addAll(listQueryEntityById5);
        return arrayList;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(QueryProjectResponse queryProjectResponse) {
        DatabaseManager databaseManager;
        if (queryProjectResponse.state == 0) {
            String string = this.mSp.getString("current_coords", "");
            if (this.mINS == null && !TextUtils.isEmpty(string)) {
                InsNavi insNavi = new InsNavi();
                this.mINS = insNavi;
                try {
                    insNavi.longitude = Double.parseDouble(string.split(",")[0]);
                    this.mINS.latitude = Double.parseDouble(string.split(",")[1]);
                    this.mINS.elevation = Double.parseDouble(string.split(",")[2]);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            DatabaseManager databaseManager2 = this.databaseManager;
            if (databaseManager2 == null || !databaseManager2.getDatabase().isOpen()) {
                this.databaseManager = DatabaseManager.getInstance(this);
            }
            this.databaseManager.cleanupDuplicateProjectsByUuid();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (BaseProEntity baseProEntity : this.localAll) {
                if (!arrayList2.contains(baseProEntity.projectUUid)) {
                    arrayList2.add(baseProEntity.projectUUid);
                }
                for (BaseProEntity baseProEntity2 : queryProjectResponse.list) {
                    if (!arrayList.contains(baseProEntity2.projectUUid)) {
                        arrayList.add(baseProEntity2.projectUUid);
                    }
                    if (baseProEntity2.projectUUid.equals(baseProEntity.projectUUid)) {
                        if (baseProEntity.version < baseProEntity2.version || baseProEntity.updateTime <= baseProEntity2.updateTime) {
                            if (!baseProEntity2.equals(baseProEntity)) {
                                this.databaseManager.updateEntityByUUid(baseProEntity2, Long.valueOf(baseProEntity2.createTime));
                            }
                        } else {
                            if (baseProEntity.type == ProjectEnum.ZHAOPING.getType()) {
                                NetworkUserLoader.getInstance().modifyProject(this.mINS, (ZhaoPingEntity) baseProEntity);
                            } else if (baseProEntity.type == ProjectEnum.SHUAPO.getType()) {
                                NetworkUserLoader.getInstance().modifyProject(this.mINS, (ShuaPoEntity) baseProEntity);
                            } else if (baseProEntity.type == ProjectEnum.WAGOU.getType()) {
                                NetworkUserLoader.getInstance().modifyProject(this.mINS, (WaGouEntity) baseProEntity);
                            } else if (baseProEntity.type == ProjectEnum.DIKE.getType()) {
                                NetworkUserLoader.getInstance().modifyProject(this.mINS, (DikeEntity) baseProEntity);
                            } else if (baseProEntity.type == ProjectEnum.LINE.getType()) {
                                NetworkUserLoader.getInstance().modifyProject(this.mINS, (LineEntity) baseProEntity);
                            }
                            this.isProChange = true;
                        }
                    }
                }
            }
            if (this.isProChange) {
                this.isProChange = false;
                NetworkUserLoader.getInstance().queryProjectByType(null);
                return;
            }
            for (BaseProEntity baseProEntity3 : queryProjectResponse.list) {
                if (!arrayList2.contains(baseProEntity3.projectUUid) && !this.databaseManager.isEntityUUidExists(baseProEntity3)) {
                    int i = baseProEntity3.type;
                    ProjectEnum projectEnum = ProjectEnum.ZHAOPING;
                    if (i == projectEnum.getType()) {
                        ZhaoPingEntity zhaoPingEntity = (ZhaoPingEntity) baseProEntity3;
                        List<BaseProEntity> listQueryEntityByEditStateAndName = this.databaseManager.queryEntityByEditStateAndName(projectEnum.getType(), 0, baseProEntity3.name);
                        if (listQueryEntityByEditStateAndName.isEmpty()) {
                            this.databaseManager.insert(zhaoPingEntity, Long.valueOf(baseProEntity3.createTime));
                        } else {
                            sysProject(baseProEntity3, listQueryEntityByEditStateAndName);
                        }
                    } else {
                        int i2 = baseProEntity3.type;
                        ProjectEnum projectEnum2 = ProjectEnum.SHUAPO;
                        if (i2 == projectEnum2.getType()) {
                            ShuaPoEntity shuaPoEntity = (ShuaPoEntity) baseProEntity3;
                            List<BaseProEntity> listQueryEntityByEditStateAndName2 = this.databaseManager.queryEntityByEditStateAndName(projectEnum2.getType(), 0, baseProEntity3.name);
                            if (listQueryEntityByEditStateAndName2.isEmpty()) {
                                this.databaseManager.insert(shuaPoEntity, Long.valueOf(baseProEntity3.createTime));
                            } else {
                                sysProject(baseProEntity3, listQueryEntityByEditStateAndName2);
                            }
                        } else {
                            int i3 = baseProEntity3.type;
                            ProjectEnum projectEnum3 = ProjectEnum.WAGOU;
                            if (i3 == projectEnum3.getType()) {
                                WaGouEntity waGouEntity = (WaGouEntity) baseProEntity3;
                                List<BaseProEntity> listQueryEntityByEditStateAndName3 = this.databaseManager.queryEntityByEditStateAndName(projectEnum3.getType(), 0, baseProEntity3.name);
                                if (listQueryEntityByEditStateAndName3.isEmpty()) {
                                    this.databaseManager.insert(waGouEntity, Long.valueOf(baseProEntity3.createTime));
                                } else {
                                    sysProject(baseProEntity3, listQueryEntityByEditStateAndName3);
                                }
                            } else {
                                int i4 = baseProEntity3.type;
                                ProjectEnum projectEnum4 = ProjectEnum.DIKE;
                                if (i4 == projectEnum4.getType()) {
                                    DikeEntity dikeEntity = (DikeEntity) baseProEntity3;
                                    List<BaseProEntity> listQueryEntityByEditStateAndName4 = this.databaseManager.queryEntityByEditStateAndName(projectEnum4.getType(), 0, baseProEntity3.name);
                                    if (listQueryEntityByEditStateAndName4.isEmpty()) {
                                        this.databaseManager.insert(dikeEntity, Long.valueOf(baseProEntity3.createTime));
                                    } else {
                                        sysProject(baseProEntity3, listQueryEntityByEditStateAndName4);
                                    }
                                } else {
                                    int i5 = baseProEntity3.type;
                                    ProjectEnum projectEnum5 = ProjectEnum.LINE;
                                    if (i5 == projectEnum5.getType()) {
                                        LineEntity lineEntity = (LineEntity) baseProEntity3;
                                        List<BaseProEntity> listQueryEntityByEditStateAndName5 = this.databaseManager.queryEntityByEditStateAndName(projectEnum5.getType(), 0, baseProEntity3.name);
                                        if (listQueryEntityByEditStateAndName5.isEmpty()) {
                                            this.databaseManager.insert(lineEntity, Long.valueOf(baseProEntity3.createTime));
                                        } else {
                                            sysProject(baseProEntity3, listQueryEntityByEditStateAndName5);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            for (BaseProEntity baseProEntity4 : this.localAll) {
                if (!TextUtils.isEmpty(baseProEntity4.projectUUid) && !arrayList.contains(baseProEntity4.projectUUid) && (databaseManager = this.databaseManager) != null && baseProEntity4.editState == 0) {
                    databaseManager.deleteById(baseProEntity4);
                }
            }
            List<BaseProEntity> list = queryProjectResponse.list;
            if (list != null) {
                this.databaseManager.renameUnsyncedConflictsWithServer(list);
            }
            if (!this.localAll.isEmpty()) {
                this.localAll = getLoacalData();
                createProject();
                return;
            } else {
                syncEnd();
                return;
            }
        }
        if (!this.localAll.isEmpty()) {
            this.localAll = getLoacalData();
            createProject();
        } else {
            cancelLoadingDialog();
        }
        if (queryProjectResponse.err_msg.contains("timeout")) {
            showTipDialog(getString(R$string.times_out_please_reload), getString(R$string.reload), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.ShareListActivity.4
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    ShareListActivity shareListActivity = ShareListActivity.this;
                    shareListActivity.showLoadingDialog(shareListActivity.getString(R$string.loading));
                    NetworkUserLoader.getInstance().queryProjectByType(null);
                }
            });
        }
    }

    private void syncEnd() {
        LogToFile.i("数据同步结束");
        cancelLoadingDialog();
    }

    private void createProject() {
        String string = this.mSp.getString("current_coords", "");
        if (this.mINS == null && !TextUtils.isEmpty(string)) {
            InsNavi insNavi = new InsNavi();
            this.mINS = insNavi;
            try {
                insNavi.longitude = Double.parseDouble(string.split(",")[0]);
                this.mINS.latitude = Double.parseDouble(string.split(",")[1]);
                this.mINS.elevation = Double.parseDouble(string.split(",")[2]);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        List<BaseProEntity> list = this.localAll;
        if (list != null && !list.isEmpty()) {
            int i = this.index;
            if (i >= 0 && i < this.localAll.size()) {
                BaseProEntity baseProEntity = this.localAll.get(this.index);
                if (TextUtils.isEmpty(baseProEntity.projectUUid)) {
                    NetworkUserLoader.getInstance().createProject(this.mINS, baseProEntity);
                    return;
                } else {
                    this.index++;
                    createProject();
                    return;
                }
            }
            syncEnd();
            return;
        }
        syncEnd();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateProjectResponse createProjectResponse) {
        if (!this.databaseManager.getDatabase().isOpen()) {
            this.databaseManager = DatabaseManager.getInstance(this);
        }
        if (createProjectResponse.state == 0) {
            this.databaseManager.updateEntityById(createProjectResponse.entity);
        }
        int i = this.index;
        if (i >= 0 && i < this.localAll.size()) {
            this.index++;
            createProject();
        } else {
            syncEnd();
        }
    }

    private void sysProject(BaseProEntity baseProEntity, List<BaseProEntity> list) {
        this.databaseManager.resolveSameNameOnSync(baseProEntity, list);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(QueryShareResponse queryShareResponse) {
        if (queryShareResponse.codes != null) {
            return;
        }
        DatabaseManager databaseManager = this.databaseManager;
        if (databaseManager == null || !databaseManager.getDatabase().isOpen()) {
            this.databaseManager = DatabaseManager.getInstance(this);
        }
        if (queryShareResponse.state == 0) {
            List<ShareEntity> listQueryShareByShareId = this.databaseManager.queryShareByShareId(null);
            HashSet hashSet = new HashSet();
            List<ShareEntity> list = queryShareResponse.list;
            if (list != null && !list.isEmpty()) {
                for (ShareEntity shareEntity : queryShareResponse.list) {
                    shareEntity.editState = 0;
                    hashSet.add(Long.valueOf(shareEntity.shareId));
                    List<ShareEntity> listQueryShareByShareId2 = this.databaseManager.queryShareByShareId(Long.valueOf(shareEntity.shareId));
                    if (listQueryShareByShareId2.isEmpty()) {
                        this.databaseManager.insertShare(shareEntity);
                    } else if (listQueryShareByShareId2.get(0).editState != 1) {
                        this.databaseManager.updateShare(shareEntity);
                    }
                }
            }
            for (ShareEntity shareEntity2 : listQueryShareByShareId) {
                if (shareEntity2.editState == 0 && !hashSet.contains(Long.valueOf(shareEntity2.shareId))) {
                    this.databaseManager.deleteShare(shareEntity2);
                    this.databaseManager.deleteForeignSharedProjectsAndEngineering(shareEntity2);
                }
            }
            List<ShareEntity> listQueryShareByShareId3 = this.databaseManager.queryShareByShareId(null);
            this.mList = listQueryShareByShareId3;
            this.shareListAdapter.setData(listQueryShareByShareId3);
            updateEmptyView();
            return;
        }
        LogToFile.i("请求失败，使用缓存数据");
        List<ShareEntity> listQueryShareByShareId4 = this.databaseManager.queryShareByShareId(null);
        if (!listQueryShareByShareId4.isEmpty()) {
            this.mList = listQueryShareByShareId4;
            this.shareListAdapter.setData(listQueryShareByShareId4);
        }
        updateEmptyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(DelShareResponse delShareResponse) {
        if (delShareResponse.state == 0) {
            DatabaseManager databaseManager = this.databaseManager;
            if (databaseManager == null || !databaseManager.getDatabase().isOpen()) {
                this.databaseManager = DatabaseManager.getInstance(this);
            }
            if (this.databaseManager.deleteShare(delShareResponse.entity) > -1) {
                this.databaseManager.deleteForeignSharedProjectsAndEngineering(delShareResponse.entity);
                this.mList.remove(delShareResponse.entity);
                this.shareListAdapter.setData(this.mList);
                Toast.makeText(this, R$string.delete_success, 0).show();
            } else {
                Toast.makeText(this, R$string.delete_failed, 1).show();
            }
            updateEmptyView();
            return;
        }
        if (TextUtils.isEmpty(UserSession.get().getToken())) {
            Toast.makeText(this, R$string.current_not_login, 0).show();
        } else {
            if ("token error".equals(delShareResponse.msg)) {
                YctDeviceManager.getInstanceH5().notifyUserLogged(-1L);
                UserSession.get().clearLoginInfo();
                showTipDialog(getString(R$string.current_login_offline), getString(R$string.ok), null);
                return;
            }
            showTipDialog(ErrorCodeUtils.getErrorMsg(this, delShareResponse.state), getString(R$string.ok), null);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        EventBus.getDefault().unregister(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.binding.bottomBtn.getSelectedIndex() > 1) {
            this.binding.bottomBtn.closeExecuteUi();
            this.shareListAdapter.closeSelUi();
            showSelectAll(false);
            return;
        }
        super.onBackPressed();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }
}
