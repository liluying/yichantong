package com.qianhe.yct.activity.zhaoping;

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
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.ZhaoPingEntity;
import com.qianhe.baselib.enums.CoordinateSystemEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.CollectCoordsActivity;
import com.qianhe.yct.activity.pointlib.PointLibraryIntent;
import com.qianhe.yct.adapter.ViewPagerAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.ActivityZpCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.fragment.CreateProjectNameFragment;
import com.qianhe.yct.fragment.ZhaoPingChoiceTypeFragment;
import com.qianhe.yct.fragment.ZhaoPingCreateFragment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ZhaoPingCreateActivity extends BaseActivity {
    private ViewPagerAdapter adapter;
    private ActivityZpCreateBinding binding;
    private final MutableLiveData coordsLiveData = new MutableLiveData();
    private CreateProjectNameFragment createNameFragment;
    private long id;
    private ZhaoPingEntity initEntity;
    private int initPage;
    private ActivityResultLauncher launcher;
    private DatabaseManager mDatabaseManager;
    private GGAEntity mGGA;
    private List<BaseProjectFragment> mList;
    private int pagePosition;
    private int proType;
    private ZhaoPingChoiceTypeFragment zhaoPingChoiceTypeFragment;
    private ZhaoPingCreateFragment zhaoPingCreateFragment;
    private ZhaoPingEntity zhaopingEntity;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    public LiveData observeCoords() {
        return this.coordsLiveData;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityZpCreateBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        this.mDatabaseManager = DatabaseManager.getInstance(this);
        if (bundle != null) {
            restoreEntityState(bundle);
        } else {
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
                        this.zhaopingEntity = (ZhaoPingEntity) listQueryEntityById.get(0);
                    }
                } else {
                    ZhaoPingEntity zhaoPingEntity = new ZhaoPingEntity();
                    this.zhaopingEntity = zhaoPingEntity;
                    zhaoPingEntity.type = this.proType;
                }
                ZhaoPingEntity zhaoPingEntity2 = (ZhaoPingEntity) new Gson().fromJson(new Gson().toJson(this.zhaopingEntity), ZhaoPingEntity.class);
                this.initEntity = zhaoPingEntity2;
                ZhaoPingEntity zhaoPingEntity3 = this.zhaopingEntity;
                zhaoPingEntity2.id = zhaoPingEntity3.id;
                zhaoPingEntity2.name = zhaoPingEntity3.name;
                if (TextUtils.isEmpty(zhaoPingEntity3.corsName)) {
                    saveCors();
                }
            }
        }
        initViewPager();
    }

    private void restoreEntityState(Bundle bundle) {
        this.initEntity = (ZhaoPingEntity) bundle.getSerializable("initEntity");
        this.zhaopingEntity = (ZhaoPingEntity) bundle.getSerializable("zhaoPingEntity");
        int i = bundle.getInt("pagePosition", 0);
        this.pagePosition = i;
        this.initPage = bundle.getInt("initPage", i);
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ZhaoPingEntity zhaoPingEntity = this.initEntity;
        if (zhaoPingEntity != null) {
            bundle.putSerializable("initEntity", zhaoPingEntity);
        }
        ZhaoPingEntity zhaoPingEntity2 = this.zhaopingEntity;
        if (zhaoPingEntity2 != null) {
            bundle.putSerializable("zhaoPingEntity", zhaoPingEntity2);
        }
        bundle.putInt("pagePosition", this.pagePosition);
        bundle.putInt("initPage", this.initPage);
    }

    @Override // com.qianhe.yct.base.BaseActivity, android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        restoreEntityState(bundle);
        setFragmentData();
    }

    private void setFragmentData() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("initEntity", this.initEntity);
        bundle.putSerializable("baseProEntity", this.zhaopingEntity);
        this.createNameFragment.setArguments(bundle);
        this.zhaoPingChoiceTypeFragment.setArguments(bundle);
        this.zhaoPingCreateFragment.setArguments(bundle);
    }

    private void initViewPager() {
        this.adapter = new ViewPagerAdapter(this);
        this.createNameFragment = new CreateProjectNameFragment();
        this.zhaoPingChoiceTypeFragment = new ZhaoPingChoiceTypeFragment();
        this.zhaoPingCreateFragment = new ZhaoPingCreateFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("initEntity", this.initEntity);
        bundle.putSerializable("baseProEntity", this.zhaopingEntity);
        this.createNameFragment.setArguments(bundle);
        this.zhaoPingChoiceTypeFragment.setArguments(bundle);
        this.zhaoPingCreateFragment.setArguments(bundle);
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        arrayList.add(this.createNameFragment);
        this.mList.add(this.zhaoPingChoiceTypeFragment);
        this.mList.add(this.zhaoPingCreateFragment);
        Iterator<BaseProjectFragment> it = this.mList.iterator();
        while (it.hasNext()) {
            this.adapter.addFragment(it.next(), "");
        }
        this.binding.viewPager2.setAdapter(this.adapter);
        this.binding.viewPager2.setCurrentItem(this.pagePosition, false);
        this.binding.viewPager2.setUserInputEnabled(false);
        this.binding.viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingCreateActivity.1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                ZhaoPingCreateActivity.this.pagePosition = i;
            }
        });
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
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingCreateActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ZhaoPingCreateActivity.$r8$lambda$0dvwTAgNL3te9MtJrJe0q3a3xis(this.f$0, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$0dvwTAgNL3te9MtJrJe0q3a3xis(ZhaoPingCreateActivity zhaoPingCreateActivity, ActivityResult activityResult) {
        Intent data;
        zhaoPingCreateActivity.getClass();
        if (activityResult.getResultCode() == -1 && (data = activityResult.getData()) != null && (zhaoPingCreateActivity.mList.get(zhaoPingCreateActivity.pagePosition) instanceof ZhaoPingCreateFragment)) {
            double[] doubleArrayExtra = data.getDoubleArrayExtra("coords");
            String[] stringArrayExtra = data.getStringArrayExtra("cors");
            if (stringArrayExtra != null) {
                if (stringArrayExtra.length > 0) {
                    zhaoPingCreateActivity.zhaopingEntity.coordinateSystem = stringArrayExtra[0];
                }
                if (stringArrayExtra.length > 1) {
                    zhaoPingCreateActivity.zhaopingEntity.corsName = stringArrayExtra[1];
                }
                if (stringArrayExtra.length > 2) {
                    zhaoPingCreateActivity.zhaopingEntity.corsHost = stringArrayExtra[2];
                }
                if (stringArrayExtra.length > 3) {
                    zhaoPingCreateActivity.zhaopingEntity.corsPort = Integer.parseInt(stringArrayExtra[3]);
                }
                if (stringArrayExtra.length > 4) {
                    zhaoPingCreateActivity.zhaopingEntity.corsUserName = stringArrayExtra[4];
                }
                if (stringArrayExtra.length > 5) {
                    zhaoPingCreateActivity.zhaopingEntity.corsPassword = stringArrayExtra[5];
                }
                if (stringArrayExtra.length > 6) {
                    zhaoPingCreateActivity.zhaopingEntity.corsMount = stringArrayExtra[6];
                }
            } else {
                zhaoPingCreateActivity.saveCors();
            }
            if (doubleArrayExtra != null) {
                zhaoPingCreateActivity.coordsLiveData.setValue(doubleArrayExtra);
            }
        }
    }

    private void saveCors() {
        if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) != NtripTypeEnum.NTRIP.getType()) {
            this.zhaopingEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
            this.zhaopingEntity.corsName = getString(R$string.x_fixed);
            ZhaoPingEntity zhaoPingEntity = this.zhaopingEntity;
            zhaoPingEntity.corsHost = "rss.rtkiot.cn";
            zhaoPingEntity.corsPort = 8001;
            zhaoPingEntity.corsMount = "AUTO";
            return;
        }
        List<CorsEntity> listQueryCORS = DatabaseManager.getInstance(this).queryCORS(null);
        this.zhaopingEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
        this.zhaopingEntity.corsName = listQueryCORS.get(0).corsName;
        this.zhaopingEntity.corsHost = listQueryCORS.get(0).host;
        this.zhaopingEntity.corsPort = listQueryCORS.get(0).port;
        this.zhaopingEntity.corsMount = listQueryCORS.get(0).mount;
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
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingCreateActivity.2
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("back") && bundle.getBoolean("confirm")) {
                    ZhaoPingCreateActivity.this.finish();
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
        this.binding.topBar.tvTitle.setText(getString(R$string.leveling));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void ivBackClick() {
        this.binding.topBar.lltBackTb.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.zhaoping.ZhaoPingCreateActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ZhaoPingCreateActivity.this.pagePosition != 0) {
                    ZhaoPingCreateActivity zhaoPingCreateActivity = ZhaoPingCreateActivity.this;
                    zhaoPingCreateActivity.showTipDialog(zhaoPingCreateActivity.getString(R$string.exit_editing), ZhaoPingCreateActivity.this.getString(R$string.confirm), null, "back");
                } else {
                    ZhaoPingCreateActivity.this.finish();
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.zhaoPingCreateFragment.insNavi(insNavi, this.mAvailable);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        this.mGGA = gGAEntity;
        this.zhaoPingCreateFragment.gga(gGAEntity);
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

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().post(new OrderBean(DeviceType.ZPY, "UNLOG,REFSTATION"));
    }
}
