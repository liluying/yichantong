package com.qianhe.yct.activity;

import android.annotation.SuppressLint;
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
import com.google.gson.Gson;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.ArbitraryLineEntity;
import com.qianhe.baselib.bean.CurvedSlopeEntity;
import com.qianhe.baselib.bean.DikeEntity;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.LineEntity;
import com.qianhe.baselib.bean.MultiPointAreaEntity;
import com.qianhe.baselib.bean.OnePointAreaEntity;
import com.qianhe.baselib.bean.PolyLineEntity;
import com.qianhe.baselib.bean.ShareEntity;
import com.qianhe.baselib.bean.ShuaPoEntity;
import com.qianhe.baselib.bean.SiteLevelingEntity;
import com.qianhe.baselib.bean.ThreePointAreaEntity;
import com.qianhe.baselib.bean.WaGouEntity;
import com.qianhe.baselib.bean.ZhaoPingEntity;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.arabitraryline.ArbitrarylineCreateActivity;
import com.qianhe.yct.activity.arabitraryline.ArbitrarylineWorkActivity;
import com.qianhe.yct.activity.curvedslope.CurvedSlopeCreateActivity;
import com.qianhe.yct.activity.curvedslope.CurvedSlopeWorkActivity;
import com.qianhe.yct.activity.dike.DikeCreateActivity;
import com.qianhe.yct.activity.dike.DikeWorkActivity;
import com.qianhe.yct.activity.line.LineCreateActivity;
import com.qianhe.yct.activity.line.LineWorkActivity;
import com.qianhe.yct.activity.multipointarea.MultiPointAreaCreateActivity;
import com.qianhe.yct.activity.multipointarea.MultiPointAreaWorkActivity;
import com.qianhe.yct.activity.onepointarea.OnePointAreaCreateActivity;
import com.qianhe.yct.activity.onepointarea.OnePointAreaWorkActivity;
import com.qianhe.yct.activity.polyline.PolyLineCreateActivity;
import com.qianhe.yct.activity.polyline.PolyLineWorkActivity;
import com.qianhe.yct.activity.share.ShareCreateActivity;
import com.qianhe.yct.activity.shuapo.ShuaPoCreateActivity;
import com.qianhe.yct.activity.shuapo.ShuaPoWorkActivity;
import com.qianhe.yct.activity.siteleveling.SiteLevelingCreateActivity;
import com.qianhe.yct.activity.siteleveling.SiteLevelingWorkActivity;
import com.qianhe.yct.activity.threepointarea.ThreePointAreaCreateActivity;
import com.qianhe.yct.activity.threepointarea.ThreePointAreaWorkActivity;
import com.qianhe.yct.activity.wagou.WaGouCreateActivity;
import com.qianhe.yct.activity.wagou.WaGouWorkActivity;
import com.qianhe.yct.activity.zhaoping.ZhaoPingCreateActivity;
import com.qianhe.yct.activity.zhaoping.ZhaoPingWorkActivity;
import com.qianhe.yct.adapter.ProjectListAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityProjectListBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.enums.MenuActionEnum;
import com.qianhe.yct.event.CreateProjectResponse;
import com.qianhe.yct.event.QueryProjectResponse;
import com.qianhe.yct.event.QueryShareResponse;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.view.ProjectBottomView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.lingala.zip4j.util.InternalZipConstants;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ProjectListActivity extends BaseActivity {
    private static final Pattern LINE_PARALLEL_NAME_PATTERN = Pattern.compile("^(.+)_.+([LR])(\\d+)$");
    private ActivityProjectListBinding binding;
    private DatabaseManager databaseManager;
    private boolean isChange;
    private boolean isVisible;
    private ActivityResultLauncher launcher;
    private InsNavi mINS;
    private List<BaseProEntity> mList;
    private ProjectListAdapter proListAdapter;
    private int proType;
    private ArrayList<String> idStrList = new ArrayList<>();
    private final ExecutorService executorService = Executors.newSingleThreadExecutor();
    private final Gson gson = new Gson();
    private int index = 0;
    private boolean refreshUiAfterUpload = true;

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
        this.binding = ActivityProjectListBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        Intent intent = getIntent();
        if (intent != null) {
            this.proType = intent.getIntExtra("proType", 0);
        }
        this.binding.bottomBtn.setOnNavItemClickListener(new ProjectBottomView.OnNavItemClickListener() { // from class: com.qianhe.yct.activity.ProjectListActivity.1
            @Override // com.qianhe.yct.view.ProjectBottomView.OnNavItemClickListener
            public void onItemClick(int i) {
                ProjectListAdapter projectListAdapter = ProjectListActivity.this.proListAdapter;
                MenuActionEnum menuActionEnum = MenuActionEnum.DELETE;
                projectListAdapter.showSelUi(i == menuActionEnum.getType() || i == MenuActionEnum.SHARE.getType());
                ProjectListActivity.this.showSelectAll(i == menuActionEnum.getType());
            }

            @Override // com.qianhe.yct.view.ProjectBottomView.OnNavItemClickListener
            public void onCancel() {
                ProjectListActivity.this.proListAdapter.closeSelUi();
                ProjectListActivity.this.showSelectAll(false);
            }

            @Override // com.qianhe.yct.view.ProjectBottomView.OnNavItemClickListener
            public void onExecuteClick(int i) {
                if (!ProjectListActivity.this.databaseManager.getDatabase().isOpen()) {
                    ProjectListActivity projectListActivity = ProjectListActivity.this;
                    projectListActivity.databaseManager = DatabaseManager.getInstance(projectListActivity);
                }
                if (i != 0) {
                    if (i == 1) {
                        if (ProjectListActivity.this.idStrList.isEmpty()) {
                            ProjectListActivity projectListActivity2 = ProjectListActivity.this;
                            projectListActivity2.showToastDialog(projectListActivity2.getString(R$string.select_least_one));
                            return;
                        } else {
                            String string = !TextUtils.isEmpty(UserSession.get().getToken()) ? ProjectListActivity.this.getString(R$string.deletion_cannot_restored) : "";
                            ProjectListActivity projectListActivity3 = ProjectListActivity.this;
                            projectListActivity3.showTipDialog(projectListActivity3.getString(R$string.want_to_delete_project), ProjectListActivity.this.getString(R$string.confirm), "", string, new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.ProjectListActivity.1.1
                                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                public void onClose(boolean z) {
                                }

                                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                                public void onConfirm() {
                                    Iterator it = ProjectListActivity.this.mList.iterator();
                                    while (it.hasNext()) {
                                        BaseProEntity baseProEntity = (BaseProEntity) it.next();
                                        if (ProjectListActivity.this.idStrList.contains(String.valueOf(baseProEntity.id))) {
                                            if (ProjectListActivity.this.databaseManager.deleteById(baseProEntity) > -1) {
                                                it.remove();
                                                ProjectListActivity.this.idStrList.remove(String.valueOf(baseProEntity.id));
                                            }
                                            NetworkUserLoader.getInstance().delProject(baseProEntity);
                                        }
                                    }
                                    ProjectListActivity projectListActivity4 = ProjectListActivity.this;
                                    Toast.makeText(projectListActivity4, projectListActivity4.getString(R$string.delete_success), 0).show();
                                    ProjectListActivity.this.proListAdapter.refreshIdStrList(ProjectListActivity.this.idStrList);
                                    ProjectListActivity.this.proListAdapter.closeSelUi();
                                    ProjectListActivity.this.binding.bottomBtn.closeExecuteUi();
                                    ProjectListActivity.this.showSelectAll(false);
                                    ProjectListActivity.this.updateEmptyView();
                                }
                            });
                            return;
                        }
                    }
                    if (i != 2) {
                        if (i == 3) {
                            ProjectListActivity projectListActivity4 = ProjectListActivity.this;
                            projectListActivity4.openSharePage(projectListActivity4.idStrList);
                            return;
                        }
                        return;
                    }
                    if (ProjectListActivity.this.idStrList.isEmpty()) {
                        ProjectListActivity projectListActivity5 = ProjectListActivity.this;
                        projectListActivity5.showToastDialog(projectListActivity5.getString(R$string.select_least_one));
                        return;
                    } else if (ProjectListActivity.this.idStrList.size() > 1) {
                        ProjectListActivity projectListActivity6 = ProjectListActivity.this;
                        projectListActivity6.showToastDialog(projectListActivity6.getString(R$string.only_one_can_selected_modify));
                        return;
                    } else {
                        ProjectListActivity projectListActivity7 = ProjectListActivity.this;
                        projectListActivity7.openModifyPage(Long.parseLong((String) projectListActivity7.idStrList.get(0)));
                        return;
                    }
                }
                Intent intent2 = new Intent();
                if (ProjectListActivity.this.proType == ProjectEnum.ZHAOPING.getType()) {
                    intent2.setClass(ProjectListActivity.this, ZhaoPingCreateActivity.class);
                } else if (ProjectListActivity.this.proType == ProjectEnum.SHUAPO.getType()) {
                    intent2.setClass(ProjectListActivity.this, ShuaPoCreateActivity.class);
                } else if (ProjectListActivity.this.proType == ProjectEnum.WAGOU.getType()) {
                    intent2.setClass(ProjectListActivity.this, WaGouCreateActivity.class);
                } else if (ProjectListActivity.this.proType == ProjectEnum.DIKE.getType()) {
                    intent2.setClass(ProjectListActivity.this, DikeCreateActivity.class);
                } else if (ProjectListActivity.this.proType == ProjectEnum.LINE.getType()) {
                    intent2.setClass(ProjectListActivity.this, LineCreateActivity.class);
                } else if (ProjectListActivity.this.proType == ProjectEnum.POLY_LINE.getType()) {
                    intent2.setClass(ProjectListActivity.this, PolyLineCreateActivity.class);
                } else if (ProjectListActivity.this.proType == ProjectEnum.ONEPOINTAREA.getType()) {
                    intent2.setClass(ProjectListActivity.this, OnePointAreaCreateActivity.class);
                } else if (ProjectListActivity.this.proType == ProjectEnum.THREEPOINTAREA.getType()) {
                    intent2.setClass(ProjectListActivity.this, ThreePointAreaCreateActivity.class);
                } else if (ProjectListActivity.this.proType == ProjectEnum.SITELEVELING.getType()) {
                    intent2.setClass(ProjectListActivity.this, SiteLevelingCreateActivity.class);
                } else if (ProjectListActivity.this.proType == ProjectEnum.ARBITRARYLINE.getType()) {
                    intent2.setClass(ProjectListActivity.this, ArbitrarylineCreateActivity.class);
                } else if (ProjectListActivity.this.proType == ProjectEnum.CURVEDSLOPE.getType()) {
                    intent2.setClass(ProjectListActivity.this, CurvedSlopeCreateActivity.class);
                } else if (ProjectListActivity.this.proType == ProjectEnum.MULTI_POINT_AREA.getType()) {
                    intent2.setClass(ProjectListActivity.this, MultiPointAreaCreateActivity.class);
                }
                intent2.putExtra("proType", ProjectListActivity.this.proType);
                ProjectListActivity.this.startActivity(intent2);
            }
        });
        this.binding.lltAll.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.ProjectListActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProjectListActivity.this.binding.ivAll.setSelected(!ProjectListActivity.this.binding.ivAll.isSelected());
                ProjectListActivity.this.proListAdapter.selecteAll(ProjectListActivity.this.binding.ivAll.isSelected());
            }
        });
        initProjectList(bundle);
        initActivityResultLauncher();
    }

    private void initActivityResultLauncher() {
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.ProjectListActivity$$ExternalSyntheticLambda1
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ProjectListActivity.$r8$lambda$SJakuPwUdlYXHvhIfcZiE6EEWxE(this.f$0, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$SJakuPwUdlYXHvhIfcZiE6EEWxE(ProjectListActivity projectListActivity, ActivityResult activityResult) {
        Intent data;
        projectListActivity.getClass();
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        String stringExtra = data.getStringExtra("shareCode");
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        NetworkUserLoader.getInstance().queryShare(null, null, null, "");
        projectListActivity.showShareWayDialog(stringExtra);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(QueryShareResponse queryShareResponse) {
        List<ShareEntity> list = queryShareResponse.list;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (ShareEntity shareEntity : queryShareResponse.list) {
            if (shareEntity.editState == 0 && !this.databaseManager.isShareCodeExists(shareEntity.shareCode)) {
                this.databaseManager.insertShare(shareEntity);
            }
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        if (this.proType == ProjectEnum.ZHAOPING.getType()) {
            this.binding.topBar.tvTitle.setText(R$string.leveling_list);
        } else if (this.proType == ProjectEnum.SHUAPO.getType()) {
            this.binding.topBar.tvTitle.setText(R$string.slope_list);
        } else if (this.proType == ProjectEnum.WAGOU.getType()) {
            this.binding.topBar.tvTitle.setText(R$string.ditch_list);
        } else if (this.proType == ProjectEnum.DIKE.getType()) {
            this.binding.topBar.tvTitle.setText(R$string.dike_list);
        } else if (this.proType == ProjectEnum.LINE.getType()) {
            this.binding.topBar.tvTitle.setText(R$string.line_list);
        } else if (this.proType == ProjectEnum.POLY_LINE.getType()) {
            this.binding.topBar.tvTitle.setText(R$string.polyline_list);
        } else if (this.proType == ProjectEnum.ONEPOINTAREA.getType()) {
            this.binding.topBar.tvTitle.setText(R$string.one_point_area_list);
        } else if (this.proType == ProjectEnum.THREEPOINTAREA.getType()) {
            this.binding.topBar.tvTitle.setText(R$string.three_point_area_list);
        } else if (this.proType == ProjectEnum.SITELEVELING.getType()) {
            this.binding.topBar.tvTitle.setText(R$string.site_leveling_list);
        } else if (this.proType == ProjectEnum.ARBITRARYLINE.getType()) {
            this.binding.topBar.tvTitle.setText(R$string.arbitrary_line_list);
        } else if (this.proType == ProjectEnum.CURVEDSLOPE.getType()) {
            this.binding.topBar.tvTitle.setText(R$string.curve_slope_list);
        } else if (this.proType == ProjectEnum.MULTI_POINT_AREA.getType()) {
            this.binding.topBar.tvTitle.setText(R$string.multi_point_area_list);
        }
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.mINS = insNavi;
    }

    private void initProjectList(Bundle bundle) {
        this.mList = new ArrayList();
        int i = getResources().getConfiguration().orientation;
        if (i == 2) {
            this.binding.rcvProList.setLayoutManager(new GridLayoutManager(this, 2));
        } else if (i == 1) {
            this.binding.rcvProList.setLayoutManager(new LinearLayoutManager(this));
        }
        ProjectListAdapter projectListAdapter = new ProjectListAdapter(this, this.mList);
        this.proListAdapter = projectListAdapter;
        this.binding.rcvProList.setAdapter(projectListAdapter);
        this.proListAdapter.setOnActionListener(new ProjectListAdapter.OnActionListener() { // from class: com.qianhe.yct.activity.ProjectListActivity.3
            @Override // com.qianhe.yct.adapter.ProjectListAdapter.OnActionListener
            public void onContinueWork(BaseProEntity baseProEntity) {
                ProjectListActivity.this.continueWork(baseProEntity);
            }

            @Override // com.qianhe.yct.adapter.ProjectListAdapter.OnActionListener
            public void onSelItem(ArrayList<String> arrayList) {
                ProjectListActivity.this.idStrList = arrayList;
                ProjectListActivity.this.updateSelectAllState();
            }

            @Override // com.qianhe.yct.adapter.ProjectListAdapter.OnActionListener
            public void onMenuAction(int i2, BaseProEntity baseProEntity) {
                if (i2 == MenuActionEnum.MODIFY.getType()) {
                    if (baseProEntity != null) {
                        ProjectListActivity.this.openModifyPage(baseProEntity.id);
                    }
                } else {
                    if (i2 == MenuActionEnum.SHARE.getType()) {
                        if (baseProEntity != null) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(String.valueOf(baseProEntity.id));
                            ProjectListActivity.this.openSharePage(arrayList);
                            return;
                        }
                        return;
                    }
                    ProjectListActivity.this.binding.bottomBtn.setSelectedIndex(i2);
                    ProjectListActivity.this.binding.bottomBtn.showExecuteUi();
                    ProjectListAdapter projectListAdapter2 = ProjectListActivity.this.proListAdapter;
                    MenuActionEnum menuActionEnum = MenuActionEnum.DELETE;
                    projectListAdapter2.showSelUi(i2 == menuActionEnum.getType());
                    ProjectListActivity.this.showSelectAll(i2 == menuActionEnum.getType());
                }
            }
        });
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
        List<BaseProEntity> list = this.mList;
        this.binding.ivAll.setSelected((list == null || list.isEmpty() || this.idStrList.size() != this.mList.size()) ? false : true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openModifyPage(long j) {
        Intent intent = new Intent();
        if (this.proType == ProjectEnum.ZHAOPING.getType()) {
            intent.setClass(this, ZhaoPingCreateActivity.class);
        } else if (this.proType == ProjectEnum.SHUAPO.getType()) {
            intent.setClass(this, ShuaPoCreateActivity.class);
        } else if (this.proType == ProjectEnum.WAGOU.getType()) {
            intent.setClass(this, WaGouCreateActivity.class);
        } else if (this.proType == ProjectEnum.DIKE.getType()) {
            intent.setClass(this, DikeCreateActivity.class);
        } else if (this.proType == ProjectEnum.LINE.getType()) {
            intent.setClass(this, LineCreateActivity.class);
        } else if (this.proType == ProjectEnum.POLY_LINE.getType()) {
            intent.setClass(this, PolyLineCreateActivity.class);
        } else if (this.proType == ProjectEnum.ONEPOINTAREA.getType()) {
            intent.setClass(this, OnePointAreaCreateActivity.class);
        } else if (this.proType == ProjectEnum.THREEPOINTAREA.getType()) {
            intent.setClass(this, ThreePointAreaCreateActivity.class);
        } else if (this.proType == ProjectEnum.SITELEVELING.getType()) {
            intent.setClass(this, SiteLevelingCreateActivity.class);
        } else if (this.proType == ProjectEnum.ARBITRARYLINE.getType()) {
            intent.setClass(this, ArbitrarylineCreateActivity.class);
        } else if (this.proType == ProjectEnum.CURVEDSLOPE.getType()) {
            intent.setClass(this, CurvedSlopeCreateActivity.class);
        } else if (this.proType == ProjectEnum.MULTI_POINT_AREA.getType()) {
            intent.setClass(this, MultiPointAreaCreateActivity.class);
        }
        intent.putExtra("id", j);
        intent.putExtra("proType", this.proType);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openSharePage(ArrayList<String> arrayList) {
        if (TextUtils.isEmpty(UserSession.get().getToken())) {
            showTipDialog(getString(R$string.current_not_login), getString(R$string.goto_login), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.ProjectListActivity.4
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    ProjectListActivity.this.startActivity(new Intent(ProjectListActivity.this, (Class<?>) UserLoginActivity.class));
                }
            });
            return;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            showToastDialog(getString(R$string.select_least_one));
            return;
        }
        if (!this.databaseManager.getDatabase().isOpen()) {
            this.databaseManager = DatabaseManager.getInstance(this);
        }
        ArrayList<BaseProEntity> arrayList2 = new ArrayList();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.addAll(this.databaseManager.queryEntityById(this.proType, Long.valueOf(it.next())));
        }
        for (BaseProEntity baseProEntity : arrayList2) {
            if (baseProEntity.editState == 1) {
                showTipDialog(getString(R$string.cannot_share_others_projects), getString(R$string.ok), null);
                return;
            } else if (TextUtils.isEmpty(baseProEntity.projectUUid)) {
                showTipDialog(getString(R$string.not_support_share), getString(R$string.ok), null);
                return;
            }
        }
        Intent intent = new Intent(this, (Class<?>) ShareCreateActivity.class);
        intent.setFlags(603979776);
        intent.putExtra("proType", this.proType);
        intent.putStringArrayListExtra("ids", arrayList);
        this.launcher.launch(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void continueWork(BaseProEntity baseProEntity) {
        Intent intent = new Intent();
        if (this.proType == ProjectEnum.ZHAOPING.getType()) {
            intent.setClass(this, ZhaoPingWorkActivity.class);
        } else if (this.proType == ProjectEnum.SHUAPO.getType()) {
            intent.setClass(this, ShuaPoWorkActivity.class);
        } else if (this.proType == ProjectEnum.WAGOU.getType()) {
            intent.setClass(this, WaGouWorkActivity.class);
        } else if (this.proType == ProjectEnum.DIKE.getType()) {
            intent.setClass(this, DikeWorkActivity.class);
        } else if (this.proType == ProjectEnum.LINE.getType()) {
            intent.setClass(this, LineWorkActivity.class);
        } else if (this.proType == ProjectEnum.POLY_LINE.getType()) {
            intent.setClass(this, PolyLineWorkActivity.class);
        } else if (this.proType == ProjectEnum.ONEPOINTAREA.getType()) {
            intent.setClass(this, OnePointAreaWorkActivity.class);
        } else if (this.proType == ProjectEnum.THREEPOINTAREA.getType()) {
            intent.setClass(this, ThreePointAreaWorkActivity.class);
        } else if (this.proType == ProjectEnum.SITELEVELING.getType()) {
            intent.setClass(this, SiteLevelingWorkActivity.class);
        } else if (this.proType == ProjectEnum.ARBITRARYLINE.getType()) {
            intent.setClass(this, ArbitrarylineWorkActivity.class);
        } else if (this.proType == ProjectEnum.CURVEDSLOPE.getType()) {
            intent.setClass(this, CurvedSlopeWorkActivity.class);
        } else if (this.proType == ProjectEnum.MULTI_POINT_AREA.getType()) {
            intent.setClass(this, MultiPointAreaWorkActivity.class);
        }
        intent.putExtra("id", baseProEntity.id);
        startActivity(intent);
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    @SuppressLint({"Range"})
    protected void onResume() throws IOException {
        super.onResume();
        this.isVisible = true;
        this.databaseManager = DatabaseManager.getInstance(this);
        refreshLocalData();
        NetworkUserLoader.getInstance().queryProjectByType(Integer.valueOf(this.proType), true);
    }

    private void refreshLocalData() {
        if (this.proListAdapter == null || !this.databaseManager.getDatabase().isOpen()) {
            return;
        }
        this.databaseManager.applyLatestCurrentEngineeringParams();
        this.databaseManager.queryCurrentEngineering();
        this.databaseManager.bindOrphanDataToDefaultEngineering();
        this.databaseManager.cleanupDuplicateProjectsByUuid();
        EngineeringEntity engineeringEntityQueryCurrentEngineering = this.databaseManager.queryCurrentEngineering();
        List<BaseProEntity> listQueryEntityById = this.databaseManager.queryEntityById(this.proType, null, engineeringEntityQueryCurrentEngineering);
        this.mList.clear();
        this.mList.addAll(listQueryEntityById);
        sortLineProjectListIfNeeded();
        ArrayList arrayList = new ArrayList();
        if (!this.mList.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            for (BaseProEntity baseProEntity : this.mList) {
                if (!arrayList2.contains(baseProEntity.projectUUid)) {
                    arrayList2.add(baseProEntity.projectUUid);
                }
                arrayList.add(String.valueOf(baseProEntity.id));
            }
        }
        this.proListAdapter.setData(this.mList);
        updateEmptyView();
        StringBuilder sb = new StringBuilder();
        sb.append("项目列表刷新：当前工程=");
        sb.append(engineeringEntityQueryCurrentEngineering != null ? engineeringEntityQueryCurrentEngineering.name + "(id=" + engineeringEntityQueryCurrentEngineering.id + ",sid=" + engineeringEntityQueryCurrentEngineering.engineeringId + ")" : "null");
        sb.append("，数量=");
        sb.append(this.mList.size());
        LogToFile.i(sb.toString());
    }

    private void sortLineProjectListIfNeeded() {
        List<BaseProEntity> list;
        if (this.proType != ProjectEnum.LINE.getType() || (list = this.mList) == null || list.size() < 2) {
            return;
        }
        Collections.sort(this.mList, new Comparator() { // from class: com.qianhe.yct.activity.ProjectListActivity$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return this.f$0.compareLineProjectForList((BaseProEntity) obj, (BaseProEntity) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int compareLineProjectForList(BaseProEntity baseProEntity, BaseProEntity baseProEntity2) {
        int iCompare = Long.compare(baseProEntity2.createTime, baseProEntity.createTime);
        if (iCompare != 0) {
            return iCompare;
        }
        int iCompareTo = getLineProjectBaseName(baseProEntity.name).compareTo(getLineProjectBaseName(baseProEntity2.name));
        return iCompareTo != 0 ? iCompareTo : Integer.compare(getLineParallelSortKey(baseProEntity.name), getLineParallelSortKey(baseProEntity2.name));
    }

    private String getLineProjectBaseName(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        Matcher matcher = LINE_PARALLEL_NAME_PATTERN.matcher(str);
        return matcher.matches() ? matcher.group(1) : str;
    }

    private int getLineParallelSortKey(String str) {
        Matcher matcher = LINE_PARALLEL_NAME_PATTERN.matcher(str);
        if (!matcher.matches()) {
            return 2000;
        }
        return ((matcher.group(2).charAt(0) != 'R' ? 1 : 0) * InternalZipConstants.AES_HASH_ITERATIONS) - Integer.parseInt(matcher.group(3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmptyView() {
        String string;
        List<BaseProEntity> list = this.mList;
        int i = 0;
        if (list == null || list.isEmpty()) {
            this.binding.lltEmpty.setVisibility(0);
            this.binding.rcvProList.setVisibility(8);
            if (this.proType == ProjectEnum.ZHAOPING.getType()) {
                i = R$drawable.icon_zp_new;
                string = getString(R$string.zp_empty_des);
            } else if (this.proType == ProjectEnum.SHUAPO.getType()) {
                i = R$drawable.icon_sp_new;
                string = getString(R$string.sp_empty_des);
            } else if (this.proType == ProjectEnum.WAGOU.getType()) {
                i = R$drawable.icon_wg_new;
                string = getString(R$string.wg_empty_des);
            } else if (this.proType == ProjectEnum.DIKE.getType()) {
                i = R$drawable.icon_dike_new;
                string = getString(R$string.dike_empty_des);
            } else if (this.proType == ProjectEnum.LINE.getType()) {
                i = R$drawable.icon_line_new;
                string = getString(R$string.line_empty_des);
            } else if (this.proType == ProjectEnum.POLY_LINE.getType()) {
                i = R$drawable.icon_poly_line;
                string = getString(R$string.polyline_empty_des);
            } else if (this.proType == ProjectEnum.ONEPOINTAREA.getType()) {
                i = R$drawable.icon_onepoint_area;
                string = getString(R$string.onearea_empty_des);
            } else if (this.proType == ProjectEnum.THREEPOINTAREA.getType()) {
                i = R$drawable.icon_three_point_area;
                string = getString(R$string.threearea_empty_des);
            } else if (this.proType == ProjectEnum.SITELEVELING.getType()) {
                i = R$drawable.icon_siteleveling_new;
                string = getString(R$string.sitezp_empty_des);
            } else if (this.proType == ProjectEnum.ARBITRARYLINE.getType()) {
                i = R$drawable.icon_arbitraryline_new;
                string = getString(R$string.arbitrary_empty_des);
            } else if (this.proType != ProjectEnum.CURVEDSLOPE.getType()) {
                string = "";
            } else {
                i = R$drawable.icon_curvedslope;
                string = getString(R$string.curved_slope_empty_des);
            }
            this.binding.ivEmpty.setImageResource(i);
            this.binding.tvEmptyDesc.setText(string);
            return;
        }
        this.binding.lltEmpty.setVisibility(8);
        this.binding.rcvProList.setVisibility(0);
    }

    private void createProject(boolean z) {
        this.refreshUiAfterUpload = z;
        int i = this.index;
        if (i >= 0 && i < this.mList.size()) {
            BaseProEntity baseProEntity = this.mList.get(this.index);
            if (TextUtils.isEmpty(baseProEntity.projectUUid)) {
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
                NetworkUserLoader.getInstance().createProject(this.mINS, baseProEntity);
                return;
            }
            this.index++;
            createProject(this.refreshUiAfterUpload);
            return;
        }
        synEnd(this.refreshUiAfterUpload);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateProjectResponse createProjectResponse) {
        if (this.isVisible) {
            if (!this.databaseManager.getDatabase().isOpen()) {
                this.databaseManager = DatabaseManager.getInstance(this);
            }
            if (createProjectResponse.state == 0) {
                this.databaseManager.updateEntityById(createProjectResponse.entity);
            }
            int i = this.index;
            if (i >= 0 && i < this.mList.size()) {
                this.index++;
                createProject(this.refreshUiAfterUpload);
            } else {
                synEnd(this.refreshUiAfterUpload);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(QueryProjectResponse queryProjectResponse) {
        DatabaseManager databaseManager;
        if (this.isVisible && queryProjectResponse != null && queryProjectResponse.filterByCurrentEngineering) {
            Integer num = queryProjectResponse.queryType;
            if (num == null || num.intValue() == this.proType) {
                cancelLoadingDialog();
                if (queryProjectResponse.state == 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    DatabaseManager databaseManager2 = DatabaseManager.getInstance(this);
                    this.databaseManager = databaseManager2;
                    databaseManager2.applyLatestCurrentEngineeringParams();
                    EngineeringEntity engineeringEntityQueryCurrentEngineering = this.databaseManager.queryCurrentEngineering();
                    List<BaseProEntity> listFilterProjectsForCurrentList = filterProjectsForCurrentList(queryProjectResponse.list, engineeringEntityQueryCurrentEngineering);
                    if (!listFilterProjectsForCurrentList.isEmpty()) {
                        List<BaseProEntity> listQueryEntityById = this.databaseManager.queryEntityById(this.proType, null, engineeringEntityQueryCurrentEngineering);
                        if (!listQueryEntityById.isEmpty()) {
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
                            for (BaseProEntity baseProEntity : listQueryEntityById) {
                                if (!arrayList2.contains(baseProEntity.projectUUid)) {
                                    arrayList2.add(baseProEntity.projectUUid);
                                }
                                for (BaseProEntity baseProEntity2 : listFilterProjectsForCurrentList) {
                                    if (!arrayList.contains(baseProEntity2.projectUUid)) {
                                        arrayList.add(baseProEntity2.projectUUid);
                                    }
                                    if (baseProEntity2.projectUUid.equals(baseProEntity.projectUUid)) {
                                        if (this.databaseManager.needsEngineeringBindingReconcile(baseProEntity, baseProEntity2) || baseProEntity.version < baseProEntity2.version || baseProEntity.updateTime <= baseProEntity2.updateTime) {
                                            this.databaseManager.syncPullUpdateProjectFromServer(baseProEntity, baseProEntity2);
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
                                            } else if (baseProEntity.type == ProjectEnum.POLY_LINE.getType()) {
                                                NetworkUserLoader.getInstance().modifyProject(this.mINS, (PolyLineEntity) baseProEntity);
                                            } else if (baseProEntity.type == ProjectEnum.ONEPOINTAREA.getType()) {
                                                NetworkUserLoader.getInstance().modifyProject(this.mINS, (OnePointAreaEntity) baseProEntity);
                                            } else if (baseProEntity.type == ProjectEnum.THREEPOINTAREA.getType()) {
                                                NetworkUserLoader.getInstance().modifyProject(this.mINS, (ThreePointAreaEntity) baseProEntity);
                                            } else if (baseProEntity.type == ProjectEnum.SITELEVELING.getType()) {
                                                NetworkUserLoader.getInstance().modifyProject(this.mINS, (SiteLevelingEntity) baseProEntity);
                                            } else if (baseProEntity.type == ProjectEnum.ARBITRARYLINE.getType()) {
                                                NetworkUserLoader.getInstance().modifyProject(this.mINS, (ArbitraryLineEntity) baseProEntity);
                                            } else if (baseProEntity.type == ProjectEnum.CURVEDSLOPE.getType()) {
                                                NetworkUserLoader.getInstance().modifyProject(this.mINS, (CurvedSlopeEntity) baseProEntity);
                                            } else if (baseProEntity.type == ProjectEnum.MULTI_POINT_AREA.getType()) {
                                                NetworkUserLoader.getInstance().modifyProject(this.mINS, (MultiPointAreaEntity) baseProEntity);
                                            }
                                            this.isChange = true;
                                        }
                                    }
                                }
                            }
                        }
                        if (this.isChange) {
                            this.isChange = false;
                            NetworkUserLoader.getInstance().queryProjectByType(Integer.valueOf(this.proType), true);
                            return;
                        }
                        for (BaseProEntity baseProEntity3 : listFilterProjectsForCurrentList) {
                            if (!arrayList2.contains(baseProEntity3.projectUUid)) {
                                int i = baseProEntity3.type;
                                ProjectEnum projectEnum = ProjectEnum.ZHAOPING;
                                if (i == projectEnum.getType()) {
                                    List<BaseProEntity> listQuerySyncLocalByExactName = this.databaseManager.querySyncLocalByExactName(projectEnum.getType(), baseProEntity3);
                                    if (listQuerySyncLocalByExactName.isEmpty()) {
                                        this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                    } else {
                                        sysProject(baseProEntity3, listQuerySyncLocalByExactName);
                                    }
                                } else {
                                    int i2 = baseProEntity3.type;
                                    ProjectEnum projectEnum2 = ProjectEnum.SHUAPO;
                                    if (i2 == projectEnum2.getType()) {
                                        List<BaseProEntity> listQuerySyncLocalByExactName2 = this.databaseManager.querySyncLocalByExactName(projectEnum2.getType(), baseProEntity3);
                                        if (listQuerySyncLocalByExactName2.isEmpty()) {
                                            this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                        } else {
                                            sysProject(baseProEntity3, listQuerySyncLocalByExactName2);
                                        }
                                    } else {
                                        int i3 = baseProEntity3.type;
                                        ProjectEnum projectEnum3 = ProjectEnum.WAGOU;
                                        if (i3 == projectEnum3.getType()) {
                                            List<BaseProEntity> listQuerySyncLocalByExactName3 = this.databaseManager.querySyncLocalByExactName(projectEnum3.getType(), baseProEntity3);
                                            if (listQuerySyncLocalByExactName3.isEmpty()) {
                                                this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                            } else {
                                                sysProject(baseProEntity3, listQuerySyncLocalByExactName3);
                                            }
                                        } else {
                                            int i4 = baseProEntity3.type;
                                            ProjectEnum projectEnum4 = ProjectEnum.DIKE;
                                            if (i4 == projectEnum4.getType()) {
                                                List<BaseProEntity> listQuerySyncLocalByExactName4 = this.databaseManager.querySyncLocalByExactName(projectEnum4.getType(), baseProEntity3);
                                                if (listQuerySyncLocalByExactName4.isEmpty()) {
                                                    this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                } else {
                                                    sysProject(baseProEntity3, listQuerySyncLocalByExactName4);
                                                }
                                            } else {
                                                int i5 = baseProEntity3.type;
                                                ProjectEnum projectEnum5 = ProjectEnum.LINE;
                                                if (i5 == projectEnum5.getType()) {
                                                    List<BaseProEntity> listQuerySyncLocalByExactName5 = this.databaseManager.querySyncLocalByExactName(projectEnum5.getType(), baseProEntity3);
                                                    if (listQuerySyncLocalByExactName5.isEmpty()) {
                                                        this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                    } else {
                                                        sysProject(baseProEntity3, listQuerySyncLocalByExactName5);
                                                    }
                                                } else {
                                                    int i6 = baseProEntity3.type;
                                                    ProjectEnum projectEnum6 = ProjectEnum.POLY_LINE;
                                                    if (i6 == projectEnum6.getType()) {
                                                        List<BaseProEntity> listQuerySyncLocalByExactName6 = this.databaseManager.querySyncLocalByExactName(projectEnum6.getType(), baseProEntity3);
                                                        if (listQuerySyncLocalByExactName6.isEmpty()) {
                                                            this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                        } else {
                                                            sysProject(baseProEntity3, listQuerySyncLocalByExactName6);
                                                        }
                                                    } else {
                                                        int i7 = baseProEntity3.type;
                                                        ProjectEnum projectEnum7 = ProjectEnum.ONEPOINTAREA;
                                                        if (i7 == projectEnum7.getType()) {
                                                            List<BaseProEntity> listQuerySyncLocalByExactName7 = this.databaseManager.querySyncLocalByExactName(projectEnum7.getType(), baseProEntity3);
                                                            if (listQuerySyncLocalByExactName7.isEmpty()) {
                                                                this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                            } else {
                                                                sysProject(baseProEntity3, listQuerySyncLocalByExactName7);
                                                            }
                                                        } else {
                                                            int i8 = baseProEntity3.type;
                                                            ProjectEnum projectEnum8 = ProjectEnum.THREEPOINTAREA;
                                                            if (i8 == projectEnum8.getType()) {
                                                                List<BaseProEntity> listQuerySyncLocalByExactName8 = this.databaseManager.querySyncLocalByExactName(projectEnum8.getType(), baseProEntity3);
                                                                if (listQuerySyncLocalByExactName8.isEmpty()) {
                                                                    this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                                } else {
                                                                    sysProject(baseProEntity3, listQuerySyncLocalByExactName8);
                                                                }
                                                            } else {
                                                                int i9 = baseProEntity3.type;
                                                                ProjectEnum projectEnum9 = ProjectEnum.SITELEVELING;
                                                                if (i9 == projectEnum9.getType()) {
                                                                    List<BaseProEntity> listQuerySyncLocalByExactName9 = this.databaseManager.querySyncLocalByExactName(projectEnum9.getType(), baseProEntity3);
                                                                    if (listQuerySyncLocalByExactName9.isEmpty()) {
                                                                        this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                                    } else {
                                                                        sysProject(baseProEntity3, listQuerySyncLocalByExactName9);
                                                                    }
                                                                } else {
                                                                    int i10 = baseProEntity3.type;
                                                                    ProjectEnum projectEnum10 = ProjectEnum.ARBITRARYLINE;
                                                                    if (i10 == projectEnum10.getType()) {
                                                                        List<BaseProEntity> listQuerySyncLocalByExactName10 = this.databaseManager.querySyncLocalByExactName(projectEnum10.getType(), baseProEntity3);
                                                                        if (listQuerySyncLocalByExactName10.isEmpty()) {
                                                                            this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                                        } else {
                                                                            sysProject(baseProEntity3, listQuerySyncLocalByExactName10);
                                                                        }
                                                                    } else {
                                                                        int i11 = baseProEntity3.type;
                                                                        ProjectEnum projectEnum11 = ProjectEnum.CURVEDSLOPE;
                                                                        if (i11 == projectEnum11.getType()) {
                                                                            List<BaseProEntity> listQuerySyncLocalByExactName11 = this.databaseManager.querySyncLocalByExactName(projectEnum11.getType(), baseProEntity3);
                                                                            if (listQuerySyncLocalByExactName11.isEmpty()) {
                                                                                this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                                            } else {
                                                                                sysProject(baseProEntity3, listQuerySyncLocalByExactName11);
                                                                            }
                                                                        } else {
                                                                            int i12 = baseProEntity3.type;
                                                                            ProjectEnum projectEnum12 = ProjectEnum.MULTI_POINT_AREA;
                                                                            if (i12 == projectEnum12.getType()) {
                                                                                List<BaseProEntity> listQuerySyncLocalByExactName12 = this.databaseManager.querySyncLocalByExactName(projectEnum12.getType(), baseProEntity3);
                                                                                if (listQuerySyncLocalByExactName12.isEmpty()) {
                                                                                    this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                                                } else {
                                                                                    sysProject(baseProEntity3, listQuerySyncLocalByExactName12);
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (!this.mList.isEmpty()) {
                        for (BaseProEntity baseProEntity4 : this.mList) {
                            if (!TextUtils.isEmpty(baseProEntity4.projectUUid) && !arrayList.contains(baseProEntity4.projectUUid) && (databaseManager = this.databaseManager) != null && baseProEntity4.editState == 0) {
                                databaseManager.deleteById(baseProEntity4);
                            }
                        }
                    }
                    this.databaseManager.renameUnsyncedConflictsWithServer(listFilterProjectsForCurrentList);
                    if (!this.mList.isEmpty()) {
                        this.index = 0;
                        refreshLocalData();
                        createProject(false);
                        return;
                    }
                    synEnd();
                    return;
                }
                if (!this.mList.isEmpty()) {
                    this.index = 0;
                    createProject(false);
                } else {
                    synEnd();
                }
                String str = queryProjectResponse.err_msg;
                if (str != null) {
                    str.contains("timeout");
                }
            }
        }
    }

    private List<BaseProEntity> filterProjectsForCurrentList(List<BaseProEntity> list, EngineeringEntity engineeringEntity) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty() && engineeringEntity != null) {
            for (BaseProEntity baseProEntity : list) {
                if (baseProEntity != null && baseProEntity.type == this.proType && DatabaseManager.isProjectBound(baseProEntity) && this.databaseManager.belongsToEngineering(engineeringEntity, baseProEntity)) {
                    arrayList.add(baseProEntity);
                }
            }
        }
        return arrayList;
    }

    private void synEnd() {
        synEnd(true);
    }

    private void synEnd(boolean z) {
        LogToFile.i("数据同步结束");
        this.index = 0;
        cancelLoadingDialog();
        if (z) {
            refreshLocalData();
        }
    }

    private void sysProject(BaseProEntity baseProEntity, List<BaseProEntity> list) {
        this.databaseManager.resolveSameNameOnSync(baseProEntity, list);
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.isVisible = false;
        NetworkUserLoader.getInstance().cancel();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.binding.bottomBtn.getSelectedIndex() > 0) {
            this.binding.bottomBtn.closeExecuteUi();
            this.proListAdapter.closeSelUi();
            showSelectAll(false);
            return;
        }
        super.onBackPressed();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        ExecutorService executorService = this.executorService;
        if (executorService != null) {
            executorService.shutdownNow();
        }
    }
}
