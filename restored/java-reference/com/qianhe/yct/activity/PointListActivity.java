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
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.PointGroupEntity;
import com.qianhe.baselib.bean.PointlibEntity;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.pointlib.PointGroupCreateActivity;
import com.qianhe.yct.activity.pointlib.PointGroupListActivity;
import com.qianhe.yct.adapter.PointListAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityPointListBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.event.PointGroupResponse;
import com.qianhe.yct.event.PointSyncResponse;
import com.qianhe.yct.event.QueryPointResponse;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.utils.PointLibSyncHelper;
import com.qianhe.yct.view.PointBottomView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PointListActivity extends BaseActivity {
    private ActivityPointListBinding binding;
    private DatabaseManager databaseManager;
    private long groupLocalId;
    private String groupName;
    private final List<String> idStrList = new ArrayList();
    private boolean isPointSyncing;
    private List<PointlibEntity> mList;
    private boolean mRequireGeodetic;
    private boolean mReturnEcef;
    private boolean mReturnRawElev;
    private boolean mReturnValue;
    private String pendingGroupName;
    private PointListAdapter pointAdapter;
    private ActivityResultLauncher pointEditorLauncher;

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
        this.binding = ActivityPointListBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        this.pointEditorLauncher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.PointListActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                PointListActivity.m1441$r8$lambda$TgkxzUV6sOHlvKoIzjXizdzy6s(this.f$0, (ActivityResult) obj);
            }
        });
        EventBus.getDefault().register(this);
        Intent intent = getIntent();
        if (intent != null) {
            this.mReturnValue = intent.getBooleanExtra("returnValue", false);
            this.mRequireGeodetic = intent.getBooleanExtra("requireGeodetic", false);
            this.mReturnEcef = intent.getBooleanExtra("returnEcef", false);
            this.mReturnRawElev = intent.getBooleanExtra("returnRawElev", false);
            this.groupLocalId = intent.getLongExtra("groupLocalId", 0L);
            this.groupName = intent.getStringExtra("groupName");
            this.pendingGroupName = intent.getStringExtra("pendingGroupName");
        }
        if (this.groupLocalId <= 0 && TextUtils.isEmpty(this.pendingGroupName)) {
            Intent intent2 = new Intent(this, (Class<?>) PointGroupListActivity.class);
            intent2.putExtra("returnValue", this.mReturnValue);
            intent2.putExtra("requireGeodetic", this.mRequireGeodetic);
            intent2.putExtra("returnEcef", this.mReturnEcef);
            intent2.putExtra("returnRawElev", this.mReturnRawElev);
            startActivity(intent2);
            finish();
            return;
        }
        this.binding.lltAll.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.PointListActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PointListActivity.$r8$lambda$C3wCM5CbF109s0TdOrxwx4xUX2E(this.f$0, view);
            }
        });
        this.binding.bottomBtn.setOnNavItemClickListener(new PointBottomView.OnNavItemClickListener() { // from class: com.qianhe.yct.activity.PointListActivity.1
            @Override // com.qianhe.yct.view.PointBottomView.OnNavItemClickListener
            public void onItemClick(int i) {
                PointListActivity.this.pointAdapter.showSelUi(i == 1);
                PointListActivity.this.showSelectAll(i == 1);
            }

            @Override // com.qianhe.yct.view.PointBottomView.OnNavItemClickListener
            public void onCancel() {
                PointListActivity.this.pointAdapter.closeSelUi();
                PointListActivity.this.showSelectAll(false);
            }

            @Override // com.qianhe.yct.view.PointBottomView.OnNavItemClickListener
            public void onExecuteClick(int i) {
                if (i != 0) {
                    if (i == 1) {
                        PointListActivity.this.deleteSelectedPoints();
                        return;
                    } else {
                        if (i == 2) {
                            PointListActivity.this.modifySelectedPoint();
                            return;
                        }
                        return;
                    }
                }
                Intent intent3 = new Intent(PointListActivity.this, (Class<?>) PointGroupCreateActivity.class);
                if (PointListActivity.this.groupLocalId > 0) {
                    intent3.putExtra("groupLocalId", PointListActivity.this.groupLocalId);
                } else if (!TextUtils.isEmpty(PointListActivity.this.pendingGroupName)) {
                    intent3.putExtra("pendingGroupName", PointListActivity.this.pendingGroupName);
                } else {
                    PointListActivity pointListActivity = PointListActivity.this;
                    pointListActivity.showToastDialog(pointListActivity.getString(R$string.select_point_group_first));
                    return;
                }
                PointListActivity.this.launchPointEditor(intent3);
            }
        });
        initProjectList();
    }

    /* renamed from: $r8$lambda$TgkxzUV6sOHlvKo-IzjXizdzy6s, reason: not valid java name */
    public static /* synthetic */ void m1441$r8$lambda$TgkxzUV6sOHlvKoIzjXizdzy6s(PointListActivity pointListActivity, ActivityResult activityResult) {
        pointListActivity.getClass();
        if (activityResult.getResultCode() != -1) {
            return;
        }
        Intent data = activityResult.getData();
        if (data != null) {
            long longExtra = data.getLongExtra("groupLocalId", pointListActivity.groupLocalId);
            if (longExtra > 0) {
                pointListActivity.groupLocalId = longExtra;
                pointListActivity.pendingGroupName = null;
            }
        }
        pointListActivity.reloadPoints();
        pointListActivity.uploadPendingPointsAsync();
    }

    public static /* synthetic */ void $r8$lambda$C3wCM5CbF109s0TdOrxwx4xUX2E(PointListActivity pointListActivity, View view) {
        pointListActivity.binding.ivAll.setSelected(!r2.isSelected());
        pointListActivity.pointAdapter.selecteAll(pointListActivity.binding.ivAll.isSelected());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteSelectedPoints() {
        if (this.idStrList.isEmpty()) {
            showToastDialog(getString(R$string.select_least_one));
        } else {
            showTipDialog(getString(R$string.want_to_delete_point), getString(R$string.confirm), "", !TextUtils.isEmpty(UserSession.get().getToken()) ? getString(R$string.deletion_cannot_restored) : "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.PointListActivity.2
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = PointListActivity.this.mList.iterator();
                    while (it.hasNext()) {
                        PointlibEntity pointlibEntity = (PointlibEntity) it.next();
                        if (PointListActivity.this.idStrList.contains(String.valueOf(pointlibEntity.id))) {
                            long j = pointlibEntity.pointId;
                            if (j > 0) {
                                arrayList.add(Long.valueOf(j));
                            }
                            if (PointListActivity.this.databaseManager.deletePoint(pointlibEntity) > -1) {
                                it.remove();
                                PointListActivity.this.idStrList.remove(String.valueOf(pointlibEntity.id));
                            }
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        NetworkUserLoader.getInstance().deletePoints(arrayList);
                    }
                    PointListActivity.this.pointAdapter.refreshIdStrList(PointListActivity.this.idStrList);
                    PointListActivity.this.pointAdapter.closeSelUi();
                    PointListActivity.this.binding.bottomBtn.closeExecuteUi();
                    PointListActivity pointListActivity = PointListActivity.this;
                    Toast.makeText(pointListActivity, pointListActivity.getString(R$string.delete_success), 0).show();
                    PointListActivity.this.showSelectAll(false);
                    PointListActivity.this.updateEmptyView();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void modifySelectedPoint() {
        if (this.idStrList.isEmpty()) {
            showToastDialog(getString(R$string.select_least_one));
            return;
        }
        if (this.idStrList.size() > 1) {
            showToastDialog(getString(R$string.only_one_can_selected_modify));
            return;
        }
        Intent intent = new Intent(this, (Class<?>) PointGroupCreateActivity.class);
        intent.putExtra("pointId", Long.parseLong(this.idStrList.get(0)));
        intent.putExtra("groupLocalId", this.groupLocalId);
        launchPointEditor(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchPointEditor(Intent intent) {
        this.pointEditorLauncher.launch(intent);
    }

    private void initProjectList() {
        this.mList = new ArrayList();
        if (getResources().getConfiguration().orientation == 2) {
            this.binding.rcvPointList.setLayoutManager(new GridLayoutManager(this, 2));
        } else {
            this.binding.rcvPointList.setLayoutManager(new LinearLayoutManager(this));
        }
        PointListAdapter pointListAdapter = new PointListAdapter(this, this.mList);
        this.pointAdapter = pointListAdapter;
        this.binding.rcvPointList.setAdapter(pointListAdapter);
        this.pointAdapter.setOnActionListener(new PointListAdapter.OnActionListener() { // from class: com.qianhe.yct.activity.PointListActivity.3
            @Override // com.qianhe.yct.adapter.PointListAdapter.OnActionListener
            public void onClick(PointlibEntity pointlibEntity) {
                if (PointListActivity.this.mReturnValue) {
                    PointListActivity.this.returnSelectedPoint(pointlibEntity);
                } else {
                    PointListActivity.this.openPointDetail(pointlibEntity);
                }
            }

            @Override // com.qianhe.yct.adapter.PointListAdapter.OnActionListener
            public void onSelItem(List<String> list) {
                PointListActivity.this.idStrList.clear();
                PointListActivity.this.idStrList.addAll(list);
                PointListActivity.this.updateSelectAllState();
            }

            @Override // com.qianhe.yct.adapter.PointListAdapter.OnActionListener
            public void onMenuAction(int i, PointlibEntity pointlibEntity) {
                if (i == 2) {
                    PointListActivity.this.openPointDetail(pointlibEntity);
                    return;
                }
                PointListActivity.this.binding.bottomBtn.setSelectedIndex(i);
                PointListActivity.this.binding.bottomBtn.showExecuteUi();
                PointListActivity.this.pointAdapter.showSelUi(i == 1);
                PointListActivity.this.showSelectAll(i == 1);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openPointDetail(PointlibEntity pointlibEntity) {
        Intent intent = new Intent(this, (Class<?>) PointGroupCreateActivity.class);
        intent.putExtra("pointId", pointlibEntity.id);
        intent.putExtra("groupLocalId", this.groupLocalId);
        launchPointEditor(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void returnSelectedPoint(PointlibEntity pointlibEntity) {
        if (pointlibEntity == null) {
            return;
        }
        if (this.mRequireGeodetic && !pointlibEntity.hasGeodeticCoords()) {
            showToastDialog(getString(R$string.no_geodetic_coordinates));
            return;
        }
        double[] dArrResolveReturnPlaneCoords = resolveReturnPlaneCoords(pointlibEntity);
        if (dArrResolveReturnPlaneCoords == null) {
            return;
        }
        Intent intent = new Intent();
        if (this.mRequireGeodetic || (this.mReturnRawElev && pointlibEntity.hasGeodeticCoords())) {
            double d = pointlibEntity.geodeticLon;
            double d2 = pointlibEntity.geodeticLat;
            double d3 = pointlibEntity.geodeticElev;
            intent.putExtra("geodetic", new double[]{d, d2, d3});
            if (this.mReturnEcef && GnssCoordConvertManager.getInstance().ensureCurrentEngineering()) {
                double[] dArr = new double[3];
                if (GnssCoordConvertManager.getInstance().geodeticToXyzOnly(d, d2, d3, dArr)) {
                    intent.putExtra("ecef", dArr);
                }
            }
        }
        if (this.mReturnRawElev) {
            intent.putExtra("alt", pointlibEntity.alt);
        }
        intent.putExtra("coords", dArrResolveReturnPlaneCoords);
        intent.putExtra("cors", new String[]{pointlibEntity.coordinateSystem, pointlibEntity.corsName, pointlibEntity.corsHost, pointlibEntity.corsPort + "", pointlibEntity.corsUserName, pointlibEntity.corsPassword, pointlibEntity.corsMount});
        setResult(-1, intent);
        finish();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        PointGroupEntity pointGroupEntityQueryPointGroupByName;
        super.onResume();
        this.databaseManager = DatabaseManager.getInstance(this);
        if (this.groupLocalId <= 0 && !TextUtils.isEmpty(this.pendingGroupName) && (pointGroupEntityQueryPointGroupByName = this.databaseManager.queryPointGroupByName(this.pendingGroupName)) != null) {
            this.groupLocalId = pointGroupEntityQueryPointGroupByName.groupLocalId;
            this.groupName = pointGroupEntityQueryPointGroupByName.name;
            this.pendingGroupName = null;
        }
        if (this.groupLocalId <= 0 && TextUtils.isEmpty(this.pendingGroupName)) {
            Intent intent = new Intent(this, (Class<?>) PointGroupListActivity.class);
            intent.putExtra("returnValue", this.mReturnValue);
            intent.putExtra("requireGeodetic", this.mRequireGeodetic);
            intent.putExtra("returnEcef", this.mReturnEcef);
            intent.putExtra("returnRawElev", this.mReturnRawElev);
            startActivity(intent);
            finish();
            return;
        }
        reloadPoints();
        uploadPendingPointsAsync();
    }

    private void uploadPendingPointsAsync() {
        PointGroupEntity pointGroupEntityQueryPointGroupByLocalId;
        if (TextUtils.isEmpty(UserSession.get().getToken())) {
            return;
        }
        long j = this.groupLocalId;
        if (j > 0 && (pointGroupEntityQueryPointGroupByLocalId = this.databaseManager.queryPointGroupByLocalId(j)) != null) {
            if (TextUtils.isEmpty(pointGroupEntityQueryPointGroupByLocalId.groupUuid)) {
                NetworkUserLoader.getInstance().createPointGroup(pointGroupEntityQueryPointGroupByLocalId);
                return;
            }
            List<PointlibEntity> listQueryPoint = this.databaseManager.queryPoint(null, Long.valueOf(this.groupLocalId), false);
            ArrayList arrayList = new ArrayList();
            for (PointlibEntity pointlibEntity : listQueryPoint) {
                if (pointlibEntity.pointId <= 0 && !NetworkUserLoader.getInstance().isPointUploading(pointlibEntity.id)) {
                    arrayList.add(pointlibEntity);
                }
            }
            if (!arrayList.isEmpty()) {
                NetworkUserLoader.getInstance().addPoints(pointGroupEntityQueryPointGroupByLocalId, arrayList);
            } else {
                queryPointsFromServerAfterUpload();
            }
        }
    }

    private void queryPointsFromServerAfterUpload() {
        PointGroupEntity pointGroupEntityQueryPointGroupByLocalId;
        if (this.isPointSyncing || TextUtils.isEmpty(UserSession.get().getToken())) {
            return;
        }
        long j = this.groupLocalId;
        if (j > 0 && (pointGroupEntityQueryPointGroupByLocalId = this.databaseManager.queryPointGroupByLocalId(j)) != null && pointGroupEntityQueryPointGroupByLocalId.groupId > 0) {
            this.isPointSyncing = true;
            NetworkUserLoader.getInstance().queryPoints(pointGroupEntityQueryPointGroupByLocalId.groupId, null, null, 0L, 0L, 1, 200);
        }
    }

    private void updatePointDataFromServer(List<QueryPointResponse.PointItem> list, PointGroupEntity pointGroupEntity) {
        PointLibSyncHelper.mergePointsFromServer(this.databaseManager, pointGroupEntity, list);
    }

    private void reloadPoints() {
        if (this.pointAdapter == null) {
            return;
        }
        this.mList.clear();
        long j = this.groupLocalId;
        if (j > 0) {
            this.mList.addAll(this.databaseManager.queryPoint(null, Long.valueOf(j), this.mRequireGeodetic));
        }
        this.pointAdapter.setData(this.mList);
        updateEmptyView();
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
        List<PointlibEntity> list = this.mList;
        this.binding.ivAll.setSelected((list == null || list.isEmpty() || this.idStrList.size() != this.mList.size()) ? false : true);
    }

    private double[] resolveReturnPlaneCoords(PointlibEntity pointlibEntity) {
        if (pointlibEntity == null) {
            return new double[]{0.0d, 0.0d, 0.0d};
        }
        double d = pointlibEntity.east;
        if (d != 0.0d || pointlibEntity.north != 0.0d || pointlibEntity.elev != 0.0d) {
            return new double[]{d, pointlibEntity.north, pointlibEntity.elev};
        }
        double d2 = pointlibEntity.lon;
        double d3 = (d2 == 0.0d && pointlibEntity.lat == 0.0d) ? pointlibEntity.geodeticLon : d2;
        double d4 = (d2 == 0.0d && pointlibEntity.lat == 0.0d) ? pointlibEntity.geodeticLat : pointlibEntity.lat;
        double d5 = pointlibEntity.alt;
        if (d5 == 0.0d) {
            d5 = pointlibEntity.geodeticElev;
        }
        double d6 = d5;
        if (d3 == 0.0d && d4 == 0.0d && d6 == 0.0d) {
            return new double[]{0.0d, 0.0d, 0.0d};
        }
        if (!GnssCoordConvertManager.getInstance().ensureCurrentEngineering()) {
            showToastDialog(getString(R$string.no_engineering_applied));
            return null;
        }
        double[] dArr = new double[3];
        if (GnssCoordConvertManager.getInstance().geoToAlignedProj(d3, d4, d6, dArr)) {
            return dArr;
        }
        showToastDialog(getString(R$string.coord_convert_failed));
        return null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(PointSyncResponse pointSyncResponse) {
        if (pointSyncResponse == null || pointSyncResponse.entities == null || pointSyncResponse.state != 0 || pointSyncResponse.ids == null) {
            return;
        }
        for (int i = 0; i < pointSyncResponse.entities.size() && i < pointSyncResponse.ids.size(); i++) {
            this.databaseManager.updatePointServerId(pointSyncResponse.entities.get(i).id, pointSyncResponse.ids.get(i).longValue());
        }
        reloadPoints();
        queryPointsFromServerAfterUpload();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(PointGroupResponse pointGroupResponse) {
        if (pointGroupResponse == null || pointGroupResponse.state != 0) {
            return;
        }
        long j = pointGroupResponse.groupLocalId;
        if (j == this.groupLocalId) {
            long j2 = pointGroupResponse.id;
            if (j2 <= 0) {
                return;
            }
            this.databaseManager.updatePointGroupServerIds(j, j2, pointGroupResponse.uuid);
            uploadPendingPointsAsync();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(QueryPointResponse queryPointResponse) {
        PointGroupEntity pointGroupEntityQueryPointGroupByLocalId;
        this.isPointSyncing = false;
        if (queryPointResponse == null || queryPointResponse.state != 0 || queryPointResponse.list == null) {
            return;
        }
        long j = this.groupLocalId;
        if (j > 0 && (pointGroupEntityQueryPointGroupByLocalId = this.databaseManager.queryPointGroupByLocalId(j)) != null && pointGroupEntityQueryPointGroupByLocalId.groupId == queryPointResponse.groupId) {
            updatePointDataFromServer(queryPointResponse.list, pointGroupEntityQueryPointGroupByLocalId);
            reloadPoints();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmptyView() {
        List<PointlibEntity> list = this.mList;
        if (list == null || list.isEmpty()) {
            this.binding.lltEmpty.setVisibility(0);
            this.binding.rcvPointList.setVisibility(8);
            this.binding.ivEmpty.setImageResource(R$drawable.icon_pointlib_new);
            this.binding.tvEmptyDesc.setText(this.mRequireGeodetic ? R$string.no_geodetic_point_in_group : R$string.point_empty_des);
            return;
        }
        this.binding.lltEmpty.setVisibility(8);
        this.binding.rcvPointList.setVisibility(0);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        String string = getString(R$string.coordinates_library);
        if (!TextUtils.isEmpty(this.groupName)) {
            string = this.groupName;
        } else if (!TextUtils.isEmpty(this.pendingGroupName)) {
            string = this.pendingGroupName;
        }
        this.binding.topBar.tvTitle.setText(string);
        return this.binding.topBar.getRoot();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.binding.bottomBtn.getSelectedIndex() > 0) {
            this.binding.bottomBtn.closeExecuteUi();
            this.pointAdapter.closeSelUi();
            showSelectAll(false);
            return;
        }
        super.onBackPressed();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
