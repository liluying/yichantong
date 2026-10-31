package com.qianhe.yct.activity;

import android.content.Intent;
import android.content.res.Configuration;
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
import com.qh.yctdevice.GnssParamTransform;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.GnssTransParamEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.manage.GnssParamTransformManager;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.ConverParamsListAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityConverParamsListBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.enums.MenuActionEnum;
import com.qianhe.yct.event.DeleteGnssTransParamResponse;
import com.qianhe.yct.event.GnssTransParamResponse;
import com.qianhe.yct.event.QueryGnssTransParamResponse;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.view.EngineeringBottomView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ConverParamsListActivity extends BaseActivity {
    private ConverParamsListAdapter adapter;
    private ActivityConverParamsListBinding binding;
    private ActivityResultLauncher createLauncher;
    private DatabaseManager databaseManager;
    private int filterParamType;
    private boolean isChange;
    private boolean isSyncing;
    private List<GnssTransParamEntity> mList;
    private boolean selectMode;
    private ArrayList<String> idStrList = new ArrayList<>();
    private boolean showCurrentUse = true;

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
        this.binding = ActivityConverParamsListBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        this.selectMode = getIntent().getBooleanExtra("selectMode", false);
        this.showCurrentUse = getIntent().getBooleanExtra("showCurrentUse", true);
        this.filterParamType = getIntent().getIntExtra("paramType", 0);
        this.databaseManager = DatabaseManager.getInstance(this);
        EventBus.getDefault().register(this);
        initCreateLauncher();
        initView();
        initList();
    }

    private void initCreateLauncher() {
        this.createLauncher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.ConverParamsListActivity$$ExternalSyntheticLambda2
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ConverParamsListActivity.m1310$r8$lambda$t9ITiL7c76_an0sxKQztUZ8e3Y(this.f$0, (ActivityResult) obj);
            }
        });
    }

    /* renamed from: $r8$lambda$t9ITiL7c76_a-n0sxKQztUZ8e3Y, reason: not valid java name */
    public static /* synthetic */ void m1310$r8$lambda$t9ITiL7c76_an0sxKQztUZ8e3Y(ConverParamsListActivity converParamsListActivity, ActivityResult activityResult) {
        if (converParamsListActivity.selectMode && activityResult.getResultCode() == -1 && activityResult.getData() != null && activityResult.getData().getLongExtra("localId", 0L) > 0) {
            converParamsListActivity.setResult(-1, activityResult.getData());
            converParamsListActivity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCreatePage(long j) {
        Intent intent = new Intent(this, (Class<?>) ConverParamsCreateActivity.class);
        if (j > 0) {
            intent.putExtra("localId", j);
        }
        if (this.selectMode) {
            intent.putExtra("selectMode", true);
            int i = this.filterParamType;
            if (i > 0) {
                intent.putExtra("paramType", i);
            }
            this.createLauncher.launch(intent);
            return;
        }
        startActivity(intent);
    }

    private void initView() {
        this.binding.bottomBtn.setOnNavItemClickListener(new EngineeringBottomView.OnNavItemClickListener() { // from class: com.qianhe.yct.activity.ConverParamsListActivity.1
            @Override // com.qianhe.yct.view.EngineeringBottomView.OnNavItemClickListener
            public void onItemClick(int i) {
                ConverParamsListAdapter converParamsListAdapter = ConverParamsListActivity.this.adapter;
                MenuActionEnum menuActionEnum = MenuActionEnum.DELETE;
                converParamsListAdapter.showSelUi(i == menuActionEnum.getType());
                if (i == MenuActionEnum.MODIFY.getType()) {
                    ConverParamsListActivity.this.adapter.selectCurrentItem();
                }
                ConverParamsListActivity.this.showSelectAll(i == menuActionEnum.getType());
            }

            @Override // com.qianhe.yct.view.EngineeringBottomView.OnNavItemClickListener
            public void onCancel() {
                ConverParamsListActivity.this.adapter.closeSelUi();
                ConverParamsListActivity.this.showSelectAll(false);
            }

            @Override // com.qianhe.yct.view.EngineeringBottomView.OnNavItemClickListener
            public void onExecuteClick(int i) throws Throwable {
                if (i == 0) {
                    ConverParamsListActivity.this.openCreatePage(0L);
                    return;
                }
                if (i == 1) {
                    if (ConverParamsListActivity.this.idStrList.isEmpty()) {
                        ConverParamsListActivity converParamsListActivity = ConverParamsListActivity.this;
                        converParamsListActivity.showToastDialog(converParamsListActivity.getString(R$string.select_least_one));
                        return;
                    }
                    ConverParamsListActivity converParamsListActivity2 = ConverParamsListActivity.this;
                    String strFindReferencedTransParamTip = converParamsListActivity2.findReferencedTransParamTip(converParamsListActivity2.idStrList);
                    if (strFindReferencedTransParamTip != null) {
                        ConverParamsListActivity converParamsListActivity3 = ConverParamsListActivity.this;
                        converParamsListActivity3.showTipDialog(strFindReferencedTransParamTip, converParamsListActivity3.getString(R$string.ok), null);
                        return;
                    } else {
                        ConverParamsListActivity converParamsListActivity4 = ConverParamsListActivity.this;
                        converParamsListActivity4.showTipDialog(converParamsListActivity4.getString(R$string.want_to_delete), ConverParamsListActivity.this.getString(R$string.confirm), "", ConverParamsListActivity.this.getString(R$string.deletion_cannot_restored), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.ConverParamsListActivity.1.1
                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onClose(boolean z) {
                            }

                            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                            public void onConfirm() throws NumberFormatException {
                                ConverParamsListActivity.this.deleteSelectedParams();
                            }
                        });
                        return;
                    }
                }
                if (i == 2) {
                    if (ConverParamsListActivity.this.idStrList.isEmpty()) {
                        ConverParamsListActivity converParamsListActivity5 = ConverParamsListActivity.this;
                        converParamsListActivity5.showToastDialog(converParamsListActivity5.getString(R$string.select_least_one));
                    } else if (ConverParamsListActivity.this.idStrList.size() > 1) {
                        ConverParamsListActivity converParamsListActivity6 = ConverParamsListActivity.this;
                        converParamsListActivity6.showToastDialog(converParamsListActivity6.getString(R$string.only_one_can_selected_modify));
                    } else {
                        ConverParamsListActivity.this.openCreatePage(Long.parseLong((String) ConverParamsListActivity.this.idStrList.get(0)));
                    }
                }
            }
        });
        this.binding.lltAll.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.ConverParamsListActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConverParamsListActivity.m1309$r8$lambda$AMyAXWMIAQMYFeRDtc6jOG989g(this.f$0, view);
            }
        });
    }

    /* renamed from: $r8$lambda$AMyAX-WMIAQMYFeRDtc6jOG989g, reason: not valid java name */
    public static /* synthetic */ void m1309$r8$lambda$AMyAXWMIAQMYFeRDtc6jOG989g(ConverParamsListActivity converParamsListActivity, View view) {
        converParamsListActivity.binding.ivAll.setSelected(!r2.isSelected());
        converParamsListActivity.adapter.selectAll(converParamsListActivity.binding.ivAll.isSelected());
    }

    private void initList() {
        this.mList = new ArrayList();
        if (getResources().getConfiguration().orientation == 2) {
            this.binding.rcvConverParamsList.setLayoutManager(new GridLayoutManager(this, 2));
        } else {
            this.binding.rcvConverParamsList.setLayoutManager(new LinearLayoutManager(this));
        }
        ConverParamsListAdapter converParamsListAdapter = new ConverParamsListAdapter(this, this.mList);
        this.adapter = converParamsListAdapter;
        this.binding.rcvConverParamsList.setAdapter(converParamsListAdapter);
        this.adapter.setOnActionListener(new ConverParamsListAdapter.OnActionListener() { // from class: com.qianhe.yct.activity.ConverParamsListActivity.2
            @Override // com.qianhe.yct.adapter.ConverParamsListAdapter.OnActionListener
            public void onItemClick(final GnssTransParamEntity gnssTransParamEntity) {
                if (ConverParamsListActivity.this.selectMode) {
                    Intent intent = new Intent();
                    intent.putExtra("localId", gnssTransParamEntity.localId);
                    ConverParamsListActivity.this.setResult(-1, intent);
                    ConverParamsListActivity.this.finish();
                    return;
                }
                if (ConverParamsListActivity.this.isAutoCreatedDefaultEngineeringInUse()) {
                    ConverParamsListActivity converParamsListActivity = ConverParamsListActivity.this;
                    converParamsListActivity.showTipDialog(converParamsListActivity.getString(R$string.default_engineering_switch_params_not_allowed), ConverParamsListActivity.this.getString(R$string.ok), null);
                } else {
                    ConverParamsListActivity converParamsListActivity2 = ConverParamsListActivity.this;
                    converParamsListActivity2.showTipDialog(converParamsListActivity2.getString(R$string.want_to_switch_conversion_params), ConverParamsListActivity.this.getString(R$string.confirm), "", ConverParamsListActivity.this.getString(R$string.switch_sync_to_current_engineering), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.ConverParamsListActivity.2.1
                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onClose(boolean z) {
                        }

                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            ConverParamsListActivity.this.switchCurrentTransParam(gnssTransParamEntity);
                        }
                    });
                }
            }

            @Override // com.qianhe.yct.adapter.ConverParamsListAdapter.OnActionListener
            public void onMenuAction(int i, GnssTransParamEntity gnssTransParamEntity) {
                if (i == MenuActionEnum.MODIFY.getType()) {
                    if (gnssTransParamEntity != null) {
                        ConverParamsListActivity.this.openCreatePage(gnssTransParamEntity.localId);
                    }
                } else {
                    ConverParamsListActivity.this.binding.bottomBtn.setSelectedIndex(i);
                    ConverParamsListActivity.this.binding.bottomBtn.showExecuteUi();
                    ConverParamsListAdapter converParamsListAdapter2 = ConverParamsListActivity.this.adapter;
                    MenuActionEnum menuActionEnum = MenuActionEnum.DELETE;
                    converParamsListAdapter2.showSelUi(i == menuActionEnum.getType());
                    ConverParamsListActivity.this.showSelectAll(i == menuActionEnum.getType());
                }
            }

            @Override // com.qianhe.yct.adapter.ConverParamsListAdapter.OnActionListener
            public void onSelItem(ArrayList<String> arrayList) {
                ConverParamsListActivity.this.idStrList = arrayList;
                ConverParamsListActivity.this.updateSelectAllState();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteSelectedParams() throws NumberFormatException {
        Iterator<String> it = this.idStrList.iterator();
        while (it.hasNext()) {
            try {
                long j = Long.parseLong(it.next());
                GnssTransParamEntity gnssTransParamEntityQueryGnssTransParamByLocalId = DatabaseManager.getInstance(this).queryGnssTransParamByLocalId(j);
                if (gnssTransParamEntityQueryGnssTransParamByLocalId != null) {
                    DatabaseManager.getInstance(this).softDeleteGnssTransParamByLocalId(j);
                    if (gnssTransParamEntityQueryGnssTransParamByLocalId.transParamId > 0) {
                        showLoadingDialog(getString(R$string.please_wait));
                        NetworkUserLoader.getInstance().deleteGnssTransParam(true, gnssTransParamEntityQueryGnssTransParamByLocalId.transParamId);
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        this.idStrList.clear();
        reloadListFromLocal();
        this.binding.bottomBtn.closeExecuteUi();
        this.adapter.closeSelUi();
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
        List<GnssTransParamEntity> list = this.mList;
        this.binding.ivAll.setSelected((list == null || list.isEmpty() || this.idStrList.size() != this.mList.size()) ? false : true);
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        if (TextUtils.isEmpty(UserSession.get().getToken())) {
            this.databaseManager.createDefaultEngineeringIfAbsentLocally();
        }
        reloadListFromLocal();
        if (TextUtils.isEmpty(UserSession.get().getToken())) {
            return;
        }
        syncWithServer();
    }

    private void syncWithServer() {
        if (this.isSyncing) {
            return;
        }
        this.isSyncing = true;
        NetworkUserLoader.getInstance().queryGnssTransParam(null, null, null, null, 0L, 0L, 1, 100);
    }

    private void reloadListFromLocal() {
        List<GnssTransParamEntity> listQueryAllGnssTransParams = DatabaseManager.getInstance(this).queryAllGnssTransParams();
        if (this.filterParamType > 0) {
            this.mList = new ArrayList();
            for (GnssTransParamEntity gnssTransParamEntity : listQueryAllGnssTransParams) {
                if (gnssTransParamEntity.paramType == this.filterParamType) {
                    this.mList.add(gnssTransParamEntity);
                }
            }
        } else {
            this.mList = listQueryAllGnssTransParams;
        }
        this.adapter.setData(this.mList);
        refreshCurrentTransParamIndicator();
        updateEmptyView();
        this.adapter.closeSelUi();
        this.binding.bottomBtn.closeExecuteUi();
        showSelectAll(false);
    }

    private void refreshCurrentTransParamIndicator() {
        this.adapter.setCurrentTransParamLocalId(this.showCurrentUse ? getCurrentTransParamLocalId() : 0L);
    }

    private long getCurrentTransParamLocalId() {
        EngineeringEntity engineeringEntityQueryCurrentEngineering = this.databaseManager.queryCurrentEngineering();
        if (engineeringEntityQueryCurrentEngineering != null && engineeringEntityQueryCurrentEngineering.conversionParamsType > 0) {
            long j = engineeringEntityQueryCurrentEngineering.transParamLocalId;
            if (j > 0) {
                return j;
            }
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAutoCreatedDefaultEngineeringInUse() {
        EngineeringEntity engineeringEntityQueryCurrentEngineering = this.databaseManager.queryCurrentEngineering();
        return engineeringEntityQueryCurrentEngineering != null && engineeringEntityQueryCurrentEngineering.id > 0 && engineeringEntityQueryCurrentEngineering.editState != 1 && isDefaultEngineeringName(engineeringEntityQueryCurrentEngineering.name);
    }

    private boolean isDefaultEngineeringName(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (TextUtils.equals(str, getString(R$string.Default))) {
            return true;
        }
        Locale[] localeArr = {Locale.SIMPLIFIED_CHINESE, Locale.TRADITIONAL_CHINESE, Locale.ENGLISH};
        for (int i = 0; i < 3; i++) {
            Locale locale = localeArr[i];
            Configuration configuration = new Configuration(getResources().getConfiguration());
            configuration.setLocale(locale);
            if (TextUtils.equals(str, createConfigurationContext(configuration).getResources().getString(R$string.Default))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String findReferencedTransParamTip(ArrayList<String> arrayList) throws Throwable {
        GnssTransParamEntity gnssTransParamEntityQueryGnssTransParamByLocalId;
        EngineeringEntity engineeringEntityQueryEngineeringReferencingTransParam;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                try {
                    long j = Long.parseLong(next);
                    gnssTransParamEntityQueryGnssTransParamByLocalId = this.databaseManager.queryGnssTransParamByLocalId(j);
                    engineeringEntityQueryEngineeringReferencingTransParam = this.databaseManager.queryEngineeringReferencingTransParam(j, gnssTransParamEntityQueryGnssTransParamByLocalId != null ? gnssTransParamEntityQueryGnssTransParamByLocalId.transParamId : 0L);
                } catch (NumberFormatException unused) {
                }
                if (engineeringEntityQueryEngineeringReferencingTransParam != null) {
                    if (gnssTransParamEntityQueryGnssTransParamByLocalId != null && !TextUtils.isEmpty(gnssTransParamEntityQueryGnssTransParamByLocalId.name)) {
                        next = gnssTransParamEntityQueryGnssTransParamByLocalId.name;
                    }
                    return getString(R$string.trans_param_referenced_by_engineering_cannot_delete, next, !TextUtils.isEmpty(engineeringEntityQueryEngineeringReferencingTransParam.name) ? engineeringEntityQueryEngineeringReferencingTransParam.name : "");
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchCurrentTransParam(GnssTransParamEntity gnssTransParamEntity) {
        if (gnssTransParamEntity == null) {
            return;
        }
        EngineeringEntity engineeringEntityQueryCurrentEngineering = this.databaseManager.queryCurrentEngineering();
        if (engineeringEntityQueryCurrentEngineering == null) {
            showToastDialog(getString(R$string.no_engineering_applied));
            return;
        }
        applyTransParamToEngineering(engineeringEntityQueryCurrentEngineering, gnssTransParamEntity);
        applyTransformParamsToDevice(engineeringEntityQueryCurrentEngineering);
        this.databaseManager.updateEngineering(engineeringEntityQueryCurrentEngineering);
        if (gnssTransParamEntity.transParamId <= 0 && !TextUtils.isEmpty(UserSession.get().getToken())) {
            NetworkUserLoader.getInstance().createGnssTransParam(gnssTransParamEntity);
        }
        if (engineeringEntityQueryCurrentEngineering.engineeringId > 0) {
            NetworkUserLoader.getInstance().modifyGnssEngineering(engineeringEntityQueryCurrentEngineering);
        }
        LogToFile.i("切换转换参数：" + gnssTransParamEntity.name + " -> 工程 " + engineeringEntityQueryCurrentEngineering.name);
        refreshCurrentTransParamIndicator();
        showToastDialog(getString(R$string.config_success));
    }

    private void applyTransParamToEngineering(EngineeringEntity engineeringEntity, GnssTransParamEntity gnssTransParamEntity) {
        engineeringEntity.conversionParamsType = gnssTransParamEntity.paramType;
        engineeringEntity.transParamLocalId = gnssTransParamEntity.localId;
        engineeringEntity.transParamId = gnssTransParamEntity.transParamId;
        engineeringEntity.transParam = gnssTransParamEntity;
    }

    private void applyTransformParamsToDevice(EngineeringEntity engineeringEntity) {
        GnssParamTransform gnssParamTransform = GnssParamTransformManager.getInstance().getGnssParamTransform();
        GnssTransParamEntity gnssTransParamEntityResolveGnssTransParamForEngineering = DatabaseManager.getInstance(this).resolveGnssTransParamForEngineering(engineeringEntity);
        if (gnssTransParamEntityResolveGnssTransParamForEngineering != null) {
            gnssTransParamEntityResolveGnssTransParamForEngineering.applyToTransform(gnssParamTransform);
        }
    }

    private void updateEmptyView() {
        List<GnssTransParamEntity> list = this.mList;
        if (list == null || list.isEmpty()) {
            this.binding.lltEmpty.setVisibility(0);
            this.binding.rcvConverParamsList.setVisibility(8);
        } else {
            this.binding.lltEmpty.setVisibility(8);
            this.binding.rcvConverParamsList.setVisibility(0);
        }
    }

    private void uploadPendingTransParamsToServer() {
        for (GnssTransParamEntity gnssTransParamEntity : DatabaseManager.getInstance(this).queryAllGnssTransParams()) {
            if (gnssTransParamEntity != null && (TextUtils.isEmpty(gnssTransParamEntity.transParamUuid) || gnssTransParamEntity.transParamId <= 0)) {
                NetworkUserLoader.getInstance().createGnssTransParam(gnssTransParamEntity);
            }
        }
    }

    private void updateData(List<QueryGnssTransParamResponse.GnssTransParamItem> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<GnssTransParamEntity> listQueryAllGnssTransParams = DatabaseManager.getInstance(this).queryAllGnssTransParams();
        if (list != null && !list.isEmpty()) {
            if (!listQueryAllGnssTransParams.isEmpty()) {
                for (GnssTransParamEntity gnssTransParamEntity : listQueryAllGnssTransParams) {
                    if (!TextUtils.isEmpty(gnssTransParamEntity.transParamUuid)) {
                        arrayList2.add(gnssTransParamEntity.transParamUuid);
                    }
                    for (QueryGnssTransParamResponse.GnssTransParamItem gnssTransParamItem : list) {
                        if (gnssTransParamItem.state == 0) {
                            if (!arrayList.contains(gnssTransParamItem.uuid)) {
                                arrayList.add(gnssTransParamItem.uuid);
                            }
                            if (gnssTransParamItem.uuid.equals(gnssTransParamEntity.transParamUuid)) {
                                if (gnssTransParamEntity.version <= gnssTransParamItem.version) {
                                    GnssTransParamEntity gnssTransParamEntityFromQueryItem = DatabaseManager.getInstance(this).fromQueryItem(gnssTransParamItem);
                                    gnssTransParamEntityFromQueryItem.localId = gnssTransParamEntity.localId;
                                    if (!gnssTransParamEntityFromQueryItem.equals(gnssTransParamEntity)) {
                                        DatabaseManager.getInstance(this).updateGnssTransParam(gnssTransParamEntityFromQueryItem);
                                    }
                                } else {
                                    NetworkUserLoader.getInstance().modifyGnssTransParam(gnssTransParamEntity);
                                    this.isChange = true;
                                }
                            }
                        }
                    }
                }
                if (this.isChange) {
                    this.isChange = false;
                    NetworkUserLoader.getInstance().queryGnssTransParam(null, null, null, null, 0L, 0L, 1, 100);
                    return;
                }
            }
            for (QueryGnssTransParamResponse.GnssTransParamItem gnssTransParamItem2 : list) {
                if (gnssTransParamItem2.state == 0 && !arrayList2.contains(gnssTransParamItem2.uuid)) {
                    final GnssTransParamEntity gnssTransParamEntityQueryGnssTransParamByName = DatabaseManager.getInstance(this).queryGnssTransParamByName(gnssTransParamItem2.name);
                    if (gnssTransParamEntityQueryGnssTransParamByName == null) {
                        DatabaseManager.getInstance(this).insertGnssTransParam(DatabaseManager.getInstance(this).fromQueryItem(gnssTransParamItem2));
                    } else if (gnssTransParamEntityQueryGnssTransParamByName.version <= gnssTransParamItem2.version) {
                        GnssTransParamEntity gnssTransParamEntityFromQueryItem2 = DatabaseManager.getInstance(this).fromQueryItem(gnssTransParamItem2);
                        gnssTransParamEntityFromQueryItem2.localId = gnssTransParamEntityQueryGnssTransParamByName.localId;
                        DatabaseManager.getInstance(this).updateGnssTransParam(gnssTransParamEntityFromQueryItem2);
                    } else {
                        NetworkUserLoader.getInstance().deleteGnssTransParam(false, gnssTransParamItem2.id);
                        this.binding.getRoot().postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.ConverParamsListActivity$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                NetworkUserLoader.getInstance().createGnssTransParam(gnssTransParamEntityQueryGnssTransParamByName);
                            }
                        }, 500L);
                    }
                }
            }
        }
        for (GnssTransParamEntity gnssTransParamEntity2 : listQueryAllGnssTransParams) {
            if (!TextUtils.isEmpty(gnssTransParamEntity2.transParamUuid) && !arrayList.contains(gnssTransParamEntity2.transParamUuid)) {
                DatabaseManager.getInstance(this).deleteGnssTransParamByLocalId(gnssTransParamEntity2.localId);
            }
        }
        reloadListFromLocal();
        uploadPendingTransParamsToServer();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(QueryGnssTransParamResponse queryGnssTransParamResponse) {
        this.isSyncing = false;
        if (queryGnssTransParamResponse != null && queryGnssTransParamResponse.state == 0) {
            updateData(queryGnssTransParamResponse.list);
        } else {
            reloadListFromLocal();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GnssTransParamResponse gnssTransParamResponse) {
        if (gnssTransParamResponse == null || gnssTransParamResponse.localDbId <= 0) {
            return;
        }
        if (gnssTransParamResponse.state == 0 && gnssTransParamResponse.id > 0) {
            DatabaseManager.getInstance(this).updateGnssTransParamServerIds(gnssTransParamResponse.localDbId, gnssTransParamResponse.id, gnssTransParamResponse.uuid);
            return;
        }
        LogToFile.e("转换参数上传失败 localId=" + gnssTransParamResponse.localDbId + " err=" + gnssTransParamResponse.errMsg);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(DeleteGnssTransParamResponse deleteGnssTransParamResponse) {
        cancelLoadingDialog();
        if (deleteGnssTransParamResponse.state == 9064) {
            showTipDialog(!TextUtils.isEmpty(deleteGnssTransParamResponse.errMsg) ? deleteGnssTransParamResponse.errMsg : getString(R$string.delete_failed), getString(R$string.ok), null);
        } else {
            showToastDialog(getString(R$string.delete_success));
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.params_conver);
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

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
    }
}
