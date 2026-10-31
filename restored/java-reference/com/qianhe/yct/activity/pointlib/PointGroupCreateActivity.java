package com.qianhe.yct.activity.pointlib;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.MutableLiveData;
import androidx.viewpager2.widget.ViewPager2;
import com.google.gson.Gson;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.PointGroupEntity;
import com.qianhe.baselib.bean.PointlibEntity;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.CollectCoordsActivity;
import com.qianhe.yct.activity.PointListActivity;
import com.qianhe.yct.adapter.ViewPagerAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityPointgroupCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.event.PointGroupResponse;
import com.qianhe.yct.event.PointSyncResponse;
import com.qianhe.yct.fragment.CreatePointGroupNameFragment;
import com.qianhe.yct.fragment.PointCreateFragment;
import com.qianhe.yct.utils.NetworkUserLoader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PointGroupCreateActivity extends BaseActivity {
    private ViewPagerAdapter adapter;
    private ActivityPointgroupCreateBinding binding;
    private boolean createNewGroup;
    private CreatePointGroupNameFragment createPointNameFragment;
    private long editGroupLocalId;
    private boolean editGroupOnly;
    private long groupLocalId;
    private PointlibEntity initEntity;
    private int initPage;
    private ActivityResultLauncher launcher;
    private DatabaseManager mDatabaseManager;
    private ArrayList<Fragment> mList;
    private boolean mReturnValue;
    private int pagePosition;
    private String pendingGroupName;
    private PointCreateFragment pointCreateFragment;
    private PointGroupEntity pointGroupEntity;
    private long pointId;
    private PointlibEntity pointlibEntity;
    private final MutableLiveData coordsLiveData = new MutableLiveData();
    private final MutableLiveData geodeticLiveData = new MutableLiveData();
    private final MutableLiveData gnssQualityLiveData = new MutableLiveData();

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    public static class CollectGnssQuality {
        public final double hdop;
        public final int quality;
        public final double vdop;

        public CollectGnssQuality(int i, double d, double d2) {
            this.quality = i;
            this.hdop = d;
            this.vdop = d2;
        }
    }

    public MutableLiveData observeCoordsLive() {
        return this.coordsLiveData;
    }

    public MutableLiveData observeGeodeticLive() {
        return this.geodeticLiveData;
    }

    public MutableLiveData observeGnssQualityLive() {
        return this.gnssQualityLiveData;
    }

    public PointlibEntity getPointlibEntity() {
        return this.pointlibEntity;
    }

    public PointlibEntity getInitEntity() {
        return this.initEntity;
    }

    public long getGroupLocalId() {
        return this.groupLocalId;
    }

    public void setGroupLocalId(long j) {
        this.groupLocalId = j;
        PointlibEntity pointlibEntity = this.pointlibEntity;
        if (pointlibEntity != null) {
            pointlibEntity.groupLocalId = j;
        }
    }

    public boolean isCreateNewGroup() {
        return this.createNewGroup;
    }

    public String getPendingGroupName() {
        return this.pendingGroupName;
    }

    public void setPendingGroupName(String str) {
        this.pendingGroupName = str;
    }

    public void openPointListAfterGroupNamed(long j, String str, String str2) {
        if (this.mReturnValue) {
            Intent intent = new Intent();
            intent.putExtra("openPointList", true);
            if (j > 0) {
                intent.putExtra("groupLocalId", j);
                intent.putExtra("groupName", str);
            } else if (!TextUtils.isEmpty(str2)) {
                intent.putExtra("pendingGroupName", str2);
            }
            setResult(-1, intent);
            finish();
            return;
        }
        Intent intent2 = new Intent(this, (Class<?>) PointListActivity.class);
        if (j > 0) {
            intent2.putExtra("groupLocalId", j);
            intent2.putExtra("groupName", str);
        } else if (!TextUtils.isEmpty(str2)) {
            intent2.putExtra("pendingGroupName", str2);
        }
        startActivity(intent2);
        finish();
    }

    public long ensurePendingGroupCreated() {
        if (!this.createNewGroup) {
            return this.groupLocalId;
        }
        long j = this.groupLocalId;
        if (j > 0) {
            return j;
        }
        if (TextUtils.isEmpty(this.pendingGroupName)) {
            return 0L;
        }
        if (this.mDatabaseManager.isPointGroupNameExists(this.pendingGroupName)) {
            showToastDialog(getString(R$string.point_group_name_already_exists));
            return 0L;
        }
        PointGroupEntity pointGroupEntity = new PointGroupEntity();
        pointGroupEntity.name = this.pendingGroupName;
        long jInsertPointGroup = this.mDatabaseManager.insertPointGroup(pointGroupEntity);
        if (jInsertPointGroup <= 0) {
            return 0L;
        }
        pointGroupEntity.groupLocalId = jInsertPointGroup;
        setCreatedGroup(pointGroupEntity);
        NetworkUserLoader.getInstance().createPointGroup(pointGroupEntity);
        return jInsertPointGroup;
    }

    public void setCreatedGroup(PointGroupEntity pointGroupEntity) {
        this.pointGroupEntity = pointGroupEntity;
        if (pointGroupEntity != null) {
            setGroupLocalId(pointGroupEntity.groupLocalId);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityPointgroupCreateBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.mDatabaseManager = DatabaseManager.getInstance(this);
        Intent intent = getIntent();
        if (intent != null) {
            this.pointId = intent.getLongExtra("pointId", 0L);
            this.createNewGroup = intent.getBooleanExtra("createNewGroup", false);
            this.editGroupLocalId = intent.getLongExtra("editGroupLocalId", 0L);
            this.groupLocalId = intent.getLongExtra("groupLocalId", 0L);
            this.pendingGroupName = intent.getStringExtra("pendingGroupName");
            this.mReturnValue = intent.getBooleanExtra("returnValue", false);
            this.editGroupOnly = this.editGroupLocalId > 0;
            if (!TextUtils.isEmpty(this.pendingGroupName) && this.groupLocalId <= 0) {
                this.createNewGroup = true;
            }
            if (this.editGroupOnly) {
                this.pointGroupEntity = this.mDatabaseManager.queryPointGroupByLocalId(this.editGroupLocalId);
                PointlibEntity pointlibEntity = new PointlibEntity();
                this.pointlibEntity = pointlibEntity;
                PointGroupEntity pointGroupEntity = this.pointGroupEntity;
                if (pointGroupEntity != null) {
                    pointlibEntity.name = pointGroupEntity.name;
                }
            } else {
                long j = this.pointId;
                if (j != 0) {
                    List<PointlibEntity> listQueryPoint = this.mDatabaseManager.queryPoint(Long.valueOf(j));
                    if (!listQueryPoint.isEmpty()) {
                        PointlibEntity pointlibEntity2 = listQueryPoint.get(0);
                        this.pointlibEntity = pointlibEntity2;
                        this.groupLocalId = pointlibEntity2.groupLocalId;
                    }
                } else {
                    PointlibEntity pointlibEntity3 = new PointlibEntity();
                    this.pointlibEntity = pointlibEntity3;
                    long j2 = this.groupLocalId;
                    if (j2 > 0) {
                        pointlibEntity3.groupLocalId = j2;
                        PointGroupEntity pointGroupEntityQueryPointGroupByLocalId = this.mDatabaseManager.queryPointGroupByLocalId(j2);
                        if (pointGroupEntityQueryPointGroupByLocalId != null) {
                            this.pointlibEntity.groupId = pointGroupEntityQueryPointGroupByLocalId.groupId;
                        }
                    }
                }
            }
            if (this.pointlibEntity == null) {
                this.pointlibEntity = new PointlibEntity();
            }
            PointlibEntity pointlibEntity4 = (PointlibEntity) new Gson().fromJson(new Gson().toJson(this.pointlibEntity), PointlibEntity.class);
            this.initEntity = pointlibEntity4;
            PointlibEntity pointlibEntity5 = this.pointlibEntity;
            pointlibEntity4.id = pointlibEntity5.id;
            pointlibEntity4.name = pointlibEntity5.name;
        }
        initViewPager();
    }

    private void initViewPager() {
        this.adapter = new ViewPagerAdapter(this);
        this.createPointNameFragment = new CreatePointGroupNameFragment();
        this.pointCreateFragment = new PointCreateFragment();
        setFragmentData();
        this.mList = new ArrayList<>();
        boolean zIsGroupNameStep = isGroupNameStep();
        if (zIsGroupNameStep || this.editGroupOnly) {
            this.mList.add(this.createPointNameFragment);
        }
        if (!this.editGroupOnly && !zIsGroupNameStep) {
            this.mList.add(this.pointCreateFragment);
        }
        Iterator<Fragment> it = this.mList.iterator();
        while (it.hasNext()) {
            this.adapter.addFragment(it.next(), "");
        }
        this.binding.viewPager2.setAdapter(this.adapter);
        this.initPage = 0;
        this.pagePosition = 0;
        this.binding.viewPager2.setCurrentItem(0, false);
        this.binding.viewPager2.setUserInputEnabled(false);
        this.binding.viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.qianhe.yct.activity.pointlib.PointGroupCreateActivity.1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                PointGroupCreateActivity.this.pagePosition = i;
            }
        });
    }

    private void setFragmentData() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("initEntity", this.initEntity);
        bundle.putSerializable("pointlibEntity", this.pointlibEntity);
        bundle.putSerializable("pointGroupEntity", this.pointGroupEntity);
        bundle.putBoolean("isGroupName", this.createNewGroup || this.editGroupOnly);
        bundle.putBoolean("editGroupOnly", this.editGroupOnly);
        bundle.putLong("editGroupLocalId", this.editGroupLocalId);
        bundle.putLong("groupLocalId", this.groupLocalId);
        bundle.putString("pendingGroupName", this.pendingGroupName);
        CreatePointGroupNameFragment createPointGroupNameFragment = this.createPointNameFragment;
        if (createPointGroupNameFragment != null) {
            createPointGroupNameFragment.setArguments(bundle);
        }
        PointCreateFragment pointCreateFragment = this.pointCreateFragment;
        if (pointCreateFragment != null) {
            pointCreateFragment.setArguments(bundle);
        }
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
            this.mDatabaseManager.updatePointGroupServerIds(j, j2, pointGroupResponse.uuid);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(PointSyncResponse pointSyncResponse) {
        if (pointSyncResponse == null || pointSyncResponse.state != 0 || pointSyncResponse.ids == null || pointSyncResponse.entities == null) {
            return;
        }
        for (int i = 0; i < pointSyncResponse.entities.size() && i < pointSyncResponse.ids.size(); i++) {
            PointlibEntity pointlibEntity = this.pointlibEntity;
            if (pointlibEntity != null && pointlibEntity.id == pointSyncResponse.entities.get(i).id) {
                this.pointlibEntity.pointId = pointSyncResponse.ids.get(i).longValue();
            }
            this.mDatabaseManager.updatePointServerId(pointSyncResponse.entities.get(i).id, pointSyncResponse.ids.get(i).longValue());
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(String str) {
        if ("previous".equals(str)) {
            previous();
            return;
        }
        if ("next".equals(str)) {
            next();
        } else if ("pointSaved".equals(str)) {
            uploadPendingPointAfterSaveAsync();
            setResult(-1, new Intent().putExtra("isAdd", true).putExtra("groupLocalId", this.groupLocalId));
            finish();
        }
    }

    private void uploadPendingPointAfterSaveAsync() {
        PointGroupEntity pointGroupEntityQueryPointGroupByLocalId;
        PointlibEntity pointlibEntity = this.pointlibEntity;
        if (pointlibEntity == null || pointlibEntity.id <= 0 || pointlibEntity.pointId > 0 || TextUtils.isEmpty(UserSession.get().getToken())) {
            return;
        }
        long j = this.groupLocalId;
        if (j > 0 && (pointGroupEntityQueryPointGroupByLocalId = this.mDatabaseManager.queryPointGroupByLocalId(j)) != null && pointGroupEntityQueryPointGroupByLocalId.groupId > 0 && !NetworkUserLoader.getInstance().isPointUploading(this.pointlibEntity.id)) {
            NetworkUserLoader.getInstance().addPoint(pointGroupEntityQueryPointGroupByLocalId, this.pointlibEntity);
        }
    }

    private void previous() {
        int i = this.pagePosition - 1;
        this.pagePosition = i;
        if (i < 0) {
            finish();
        } else {
            this.binding.viewPager2.setCurrentItem(i, false);
        }
    }

    private void next() {
        int i = this.pagePosition + 1;
        this.pagePosition = i;
        int iMin = Math.min(i, this.adapter.getItemCount() - 1);
        this.pagePosition = iMin;
        if (iMin >= 0) {
            this.binding.viewPager2.setCurrentItem(iMin, false);
        }
    }

    public void goCollectCoordinates(int i) {
        Intent intent = new Intent(this, (Class<?>) CollectCoordsActivity.class);
        intent.putExtra("toothType", i);
        intent.putExtra("returnGeodetic", true);
        this.launcher.launch(intent);
    }

    private void initActivityResultLauncher() {
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.pointlib.PointGroupCreateActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                PointGroupCreateActivity.m1704$r8$lambda$QmeZkStrP2koZTKA_E52SKSCbU(this.f$0, (ActivityResult) obj);
            }
        });
    }

    /* renamed from: $r8$lambda$QmeZkStrP2koZTKA_-E52SKSCbU, reason: not valid java name */
    public static /* synthetic */ void m1704$r8$lambda$QmeZkStrP2koZTKA_E52SKSCbU(PointGroupCreateActivity pointGroupCreateActivity, ActivityResult activityResult) {
        pointGroupCreateActivity.getClass();
        if (activityResult.getResultCode() != -1 || activityResult.getData() == null) {
            return;
        }
        Intent data = activityResult.getData();
        double[] doubleArrayExtra = data.getDoubleArrayExtra("geodetic");
        pointGroupCreateActivity.gnssQualityLiveData.setValue(new CollectGnssQuality(data.getIntExtra("quality", 0), data.getDoubleExtra("hdop", 0.0d), data.getDoubleExtra("vdop", 0.0d)));
        if (doubleArrayExtra != null) {
            pointGroupCreateActivity.geodeticLiveData.setValue(doubleArrayExtra);
        }
        double[] doubleArrayExtra2 = data.getDoubleArrayExtra("coords");
        if (doubleArrayExtra2 != null) {
            pointGroupCreateActivity.coordsLiveData.setValue(doubleArrayExtra2);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        initActivityResultLauncher();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        if (this.editGroupOnly) {
            this.binding.topBar.tvTitle.setText(getString(R$string.edit_point_group));
        } else if (isGroupNameStep()) {
            this.binding.topBar.tvTitle.setText(getString(R$string.create_point_group));
        } else if (this.pointId > 0) {
            this.binding.topBar.tvTitle.setText(getString(R$string.edit_point));
        } else {
            this.binding.topBar.tvTitle.setText(getString(R$string.create_point));
        }
        return this.binding.topBar.getRoot();
    }

    private boolean isGroupNameStep() {
        return this.createNewGroup && this.groupLocalId <= 0 && TextUtils.isEmpty(this.pendingGroupName);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.pagePosition == this.initPage) {
            super.onBackPressed();
        } else {
            previous();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
