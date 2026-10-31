package com.qianhe.yct.activity.siteleveling;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.fragment.app.FragmentResultListener;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.viewpager2.widget.ViewPager2;
import com.google.gson.Gson;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.CorsEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.SiteLevelingEntity;
import com.qianhe.baselib.enums.CoordinateSystemEnum;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.CollectCoordsActivity;
import com.qianhe.yct.activity.pointlib.PointLibraryIntent;
import com.qianhe.yct.adapter.ViewPagerAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.ActivitySitelevelingCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.fragment.CreateProjectNameFragment;
import com.qianhe.yct.fragment.SiteLevelingChoiceTypeFragment;
import com.qianhe.yct.fragment.SiteLevelingStep1Fragment;
import com.qianhe.yct.fragment.SiteLevelingStep2Fragment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SiteLevelingCreateActivity extends BaseActivity {
    private ViewPagerAdapter adapter;
    private ActivitySitelevelingCreateBinding binding;
    private final MutableLiveData coordsStep = new MutableLiveData();
    private CreateProjectNameFragment createNameFragment;
    private long id;
    private SiteLevelingEntity initEntity;
    private int initPage;
    private ActivityResultLauncher launcher;
    private DatabaseManager mDatabaseManager;
    private GGAEntity mGGA;
    private List<BaseProjectFragment> mList;
    private int pagePosition;
    private int proType;
    private SiteLevelingChoiceTypeFragment siteLevelingChoiceTypeFragment;
    private SiteLevelingEntity siteLevelingEntity;
    private SiteLevelingStep1Fragment siteLevelingStep1Fragment;
    private SiteLevelingStep2Fragment siteLevelingStep2Fragment;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    public LiveData observeCoordsStep() {
        return this.coordsStep;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivitySitelevelingCreateBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        this.mDatabaseManager = DatabaseManager.getInstance(this);
        Intent intent = getIntent();
        if (intent != null) {
            this.id = intent.getLongExtra("id", 0L);
            this.proType = intent.getIntExtra("proType", 0);
            int intExtra = getIntent().getIntExtra("pagePosition", 0);
            this.pagePosition = intExtra;
            this.initPage = intExtra;
            long j = this.id;
            if (j != 0) {
                List<BaseProEntity> listQueryEntityById = this.mDatabaseManager.queryEntityById(this.proType, Long.valueOf(j));
                if (!listQueryEntityById.isEmpty()) {
                    this.siteLevelingEntity = (SiteLevelingEntity) listQueryEntityById.get(0);
                }
            } else {
                SiteLevelingEntity siteLevelingEntity = new SiteLevelingEntity();
                this.siteLevelingEntity = siteLevelingEntity;
                siteLevelingEntity.type = this.proType;
            }
            SiteLevelingEntity siteLevelingEntity2 = (SiteLevelingEntity) new Gson().fromJson(new Gson().toJson(this.siteLevelingEntity), SiteLevelingEntity.class);
            this.initEntity = siteLevelingEntity2;
            SiteLevelingEntity siteLevelingEntity3 = this.siteLevelingEntity;
            siteLevelingEntity2.id = siteLevelingEntity3.id;
            siteLevelingEntity2.name = siteLevelingEntity3.name;
            if (TextUtils.isEmpty(siteLevelingEntity3.corsName)) {
                saveCors();
            }
        }
        initViewPager();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        SiteLevelingEntity siteLevelingEntity = this.siteLevelingEntity;
        if (siteLevelingEntity != null) {
            bundle.putSerializable("lineEntity", siteLevelingEntity);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.siteLevelingEntity = (SiteLevelingEntity) bundle.getSerializable("lineEntity");
        setFragmentData();
    }

    private void initViewPager() {
        this.adapter = new ViewPagerAdapter(this);
        this.createNameFragment = new CreateProjectNameFragment();
        this.siteLevelingChoiceTypeFragment = new SiteLevelingChoiceTypeFragment();
        this.siteLevelingStep1Fragment = new SiteLevelingStep1Fragment();
        this.siteLevelingStep2Fragment = new SiteLevelingStep2Fragment();
        setFragmentData();
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        arrayList.add(this.createNameFragment);
        this.mList.add(this.siteLevelingChoiceTypeFragment);
        this.mList.add(this.siteLevelingStep1Fragment);
        this.mList.add(this.siteLevelingStep2Fragment);
        Iterator<BaseProjectFragment> it = this.mList.iterator();
        while (it.hasNext()) {
            this.adapter.addFragment(it.next(), "");
        }
        this.binding.viewPager2.setAdapter(this.adapter);
        this.binding.viewPager2.setCurrentItem(this.pagePosition, false);
        this.binding.viewPager2.setUserInputEnabled(false);
        this.binding.viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.qianhe.yct.activity.siteleveling.SiteLevelingCreateActivity.1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                SiteLevelingCreateActivity.this.pagePosition = i;
            }
        });
    }

    private void setFragmentData() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("initEntity", this.initEntity);
        bundle.putSerializable("baseProEntity", this.siteLevelingEntity);
        this.createNameFragment.setArguments(bundle);
        this.siteLevelingChoiceTypeFragment.setArguments(bundle);
        this.siteLevelingStep1Fragment.setArguments(bundle);
        this.siteLevelingStep2Fragment.setArguments(bundle);
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
        int itemCount = i > this.adapter.getItemCount() + (-1) ? this.adapter.getItemCount() - 1 : this.pagePosition;
        this.pagePosition = itemCount;
        if (itemCount >= 0) {
            this.binding.viewPager2.setCurrentItem(itemCount, false);
        }
    }

    public void goCollectCoordinates(int i) {
        Intent intent = new Intent(this, (Class<?>) CollectCoordsActivity.class);
        intent.putExtra("toothType", i);
        this.launcher.launch(intent);
    }

    public void goPointLibrary() {
        this.launcher.launch(PointLibraryIntent.pickPoint(this));
    }

    private void initActivityResultLauncher() {
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.siteleveling.SiteLevelingCreateActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                SiteLevelingCreateActivity.$r8$lambda$MPU4kOjP95ZsVerS9Jqd1Q3dBI0(this.f$0, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$MPU4kOjP95ZsVerS9Jqd1Q3dBI0(SiteLevelingCreateActivity siteLevelingCreateActivity, ActivityResult activityResult) {
        Intent data;
        siteLevelingCreateActivity.getClass();
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        double[] doubleArrayExtra = data.getDoubleArrayExtra("coords");
        String[] stringArrayExtra = data.getStringArrayExtra("cors");
        if (stringArrayExtra != null) {
            if (stringArrayExtra.length > 0) {
                siteLevelingCreateActivity.siteLevelingEntity.coordinateSystem = stringArrayExtra[0];
            }
            if (stringArrayExtra.length > 1) {
                siteLevelingCreateActivity.siteLevelingEntity.corsName = stringArrayExtra[1];
            }
            if (stringArrayExtra.length > 2) {
                siteLevelingCreateActivity.siteLevelingEntity.corsHost = stringArrayExtra[2];
            }
            if (stringArrayExtra.length > 3) {
                siteLevelingCreateActivity.siteLevelingEntity.corsPort = Integer.parseInt(stringArrayExtra[3]);
            }
            if (stringArrayExtra.length > 4) {
                siteLevelingCreateActivity.siteLevelingEntity.corsUserName = stringArrayExtra[4];
            }
            if (stringArrayExtra.length > 5) {
                siteLevelingCreateActivity.siteLevelingEntity.corsPassword = stringArrayExtra[5];
            }
            if (stringArrayExtra.length > 6) {
                siteLevelingCreateActivity.siteLevelingEntity.corsMount = stringArrayExtra[6];
            }
        } else {
            siteLevelingCreateActivity.saveCors();
        }
        if (doubleArrayExtra == null || !(siteLevelingCreateActivity.mList.get(siteLevelingCreateActivity.pagePosition) instanceof SiteLevelingStep1Fragment)) {
            return;
        }
        siteLevelingCreateActivity.coordsStep.setValue(doubleArrayExtra);
    }

    private void saveCors() {
        if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) != NtripTypeEnum.NTRIP.getType()) {
            this.siteLevelingEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
            this.siteLevelingEntity.corsName = getString(R$string.x_fixed);
            SiteLevelingEntity siteLevelingEntity = this.siteLevelingEntity;
            siteLevelingEntity.corsHost = "rss.rtkiot.cn";
            siteLevelingEntity.corsPort = 8001;
            siteLevelingEntity.corsMount = "AUTO";
            return;
        }
        List<CorsEntity> listQueryCORS = DatabaseManager.getInstance(this).queryCORS(null);
        this.siteLevelingEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
        this.siteLevelingEntity.corsName = listQueryCORS.get(0).corsName;
        this.siteLevelingEntity.corsHost = listQueryCORS.get(0).host;
        this.siteLevelingEntity.corsPort = listQueryCORS.get(0).port;
        this.siteLevelingEntity.corsMount = listQueryCORS.get(0).mount;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        EventBus.getDefault().register(this);
        if (this.mDatabaseManager.getDatabase().isOpen()) {
            return;
        }
        this.mDatabaseManager = DatabaseManager.getInstance(this);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        initActivityResultLauncher();
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.siteleveling.SiteLevelingCreateActivity.2
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("back") && bundle.getBoolean("confirm")) {
                    SiteLevelingCreateActivity.this.finish();
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(getString(R$string.site_leveling));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void ivBackClick() {
        this.binding.topBar.lltBackTb.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.siteleveling.SiteLevelingCreateActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SiteLevelingCreateActivity.this.pagePosition != 0) {
                    SiteLevelingCreateActivity siteLevelingCreateActivity = SiteLevelingCreateActivity.this;
                    siteLevelingCreateActivity.showTipDialog(siteLevelingCreateActivity.getString(R$string.exit_editing), SiteLevelingCreateActivity.this.getString(R$string.confirm), null, "back");
                } else {
                    SiteLevelingCreateActivity.this.finish();
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.siteLevelingStep1Fragment.insNavi(insNavi, this.mAvailable);
        this.siteLevelingStep2Fragment.insNavi(insNavi, this.mAvailable);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        this.mGGA = gGAEntity;
        this.siteLevelingStep1Fragment.gga(gGAEntity);
        this.siteLevelingStep2Fragment.gga(gGAEntity);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.pagePosition == this.initPage) {
            super.onBackPressed();
        } else {
            previous();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        EventBus.getDefault().unregister(this);
    }
}
