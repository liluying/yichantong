package com.qianhe.yct.activity.dike;

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
import androidx.fragment.app.FragmentResultListener;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.viewpager2.widget.ViewPager2;
import com.google.gson.Gson;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.CorsEntity;
import com.qianhe.baselib.bean.DikeEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.enums.CoordinateSystemEnum;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.CollectCoordsActivity;
import com.qianhe.yct.activity.pointlib.PointLibraryIntent;
import com.qianhe.yct.adapter.ViewPagerAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityDikeCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.fragment.CreateProjectNameFragment;
import com.qianhe.yct.fragment.DikeStep1Fragment;
import com.qianhe.yct.fragment.DikeStep2Fragment;
import com.qianhe.yct.fragment.DikeStep3Fragment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DikeCreateActivity extends BaseActivity {
    private ViewPagerAdapter adapter;
    private ActivityDikeCreateBinding binding;
    private final MutableLiveData coordsStep1 = new MutableLiveData();
    private final MutableLiveData coordsStep2 = new MutableLiveData();
    private CreateProjectNameFragment createNameFragment;
    private DikeEntity dikeEntity;
    private DikeStep1Fragment dikeStep1Fragment;
    private DikeStep2Fragment dikeStep2Fragment;
    private DikeStep3Fragment dikeStep3Fragment;
    private long id;
    private DikeEntity initEntity;
    private int initPage;
    private ActivityResultLauncher launcher;
    private DatabaseManager mDatabaseManager;
    private GGAEntity mGGA;
    private List<Fragment> mList;
    private int pagePosition;
    private int proType;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    public LiveData observeCoordsStep1() {
        return this.coordsStep1;
    }

    public LiveData observeCoordsStep2() {
        return this.coordsStep2;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityDikeCreateBinding.inflate(getLayoutInflater());
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
                    this.dikeEntity = (DikeEntity) listQueryEntityById.get(0);
                }
            } else {
                DikeEntity dikeEntity = new DikeEntity();
                this.dikeEntity = dikeEntity;
                dikeEntity.type = this.proType;
            }
            DikeEntity dikeEntity2 = (DikeEntity) new Gson().fromJson(new Gson().toJson(this.dikeEntity), DikeEntity.class);
            this.initEntity = dikeEntity2;
            DikeEntity dikeEntity3 = this.dikeEntity;
            dikeEntity2.id = dikeEntity3.id;
            dikeEntity2.name = dikeEntity3.name;
            if (TextUtils.isEmpty(dikeEntity3.corsName)) {
                saveCors();
            }
        }
        initViewPager();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        DikeEntity dikeEntity = this.dikeEntity;
        if (dikeEntity != null) {
            bundle.putSerializable("dikeEntity", dikeEntity);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.dikeEntity = (DikeEntity) bundle.getSerializable("dikeEntity");
        setFragmentData();
    }

    private void initViewPager() {
        this.adapter = new ViewPagerAdapter(this);
        this.createNameFragment = new CreateProjectNameFragment();
        this.dikeStep1Fragment = new DikeStep1Fragment();
        this.dikeStep2Fragment = new DikeStep2Fragment();
        this.dikeStep3Fragment = new DikeStep3Fragment();
        setFragmentData();
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        arrayList.add(this.createNameFragment);
        this.mList.add(this.dikeStep1Fragment);
        this.mList.add(this.dikeStep2Fragment);
        this.mList.add(this.dikeStep3Fragment);
        Iterator<Fragment> it = this.mList.iterator();
        while (it.hasNext()) {
            this.adapter.addFragment(it.next(), "");
        }
        this.binding.viewPager2.setAdapter(this.adapter);
        this.binding.viewPager2.setCurrentItem(this.pagePosition, false);
        this.binding.viewPager2.setUserInputEnabled(false);
        this.binding.viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.qianhe.yct.activity.dike.DikeCreateActivity.1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                DikeCreateActivity.this.pagePosition = i;
            }
        });
    }

    private void setFragmentData() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("initEntity", this.initEntity);
        bundle.putSerializable("baseProEntity", this.dikeEntity);
        this.createNameFragment.setArguments(bundle);
        this.dikeStep1Fragment.setArguments(bundle);
        this.dikeStep2Fragment.setArguments(bundle);
        this.dikeStep3Fragment.setArguments(bundle);
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
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.dike.DikeCreateActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                DikeCreateActivity.$r8$lambda$0LSjNsJc5RUjxHPQrtMz4xJyaVI(this.f$0, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$0LSjNsJc5RUjxHPQrtMz4xJyaVI(DikeCreateActivity dikeCreateActivity, ActivityResult activityResult) {
        Intent data;
        dikeCreateActivity.getClass();
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        double[] doubleArrayExtra = data.getDoubleArrayExtra("coords");
        String[] stringArrayExtra = data.getStringArrayExtra("cors");
        if (stringArrayExtra != null) {
            if (stringArrayExtra.length > 0) {
                dikeCreateActivity.dikeEntity.coordinateSystem = stringArrayExtra[0];
            }
            if (stringArrayExtra.length > 1) {
                dikeCreateActivity.dikeEntity.corsName = stringArrayExtra[1];
            }
            if (stringArrayExtra.length > 2) {
                dikeCreateActivity.dikeEntity.corsHost = stringArrayExtra[2];
            }
            if (stringArrayExtra.length > 3) {
                dikeCreateActivity.dikeEntity.corsPort = Integer.parseInt(stringArrayExtra[3]);
            }
            if (stringArrayExtra.length > 4) {
                dikeCreateActivity.dikeEntity.corsUserName = stringArrayExtra[4];
            }
            if (stringArrayExtra.length > 5) {
                dikeCreateActivity.dikeEntity.corsPassword = stringArrayExtra[5];
            }
            if (stringArrayExtra.length > 6) {
                dikeCreateActivity.dikeEntity.corsMount = stringArrayExtra[6];
            }
        } else {
            dikeCreateActivity.saveCors();
        }
        if (doubleArrayExtra != null) {
            if (dikeCreateActivity.mList.get(dikeCreateActivity.pagePosition) instanceof DikeStep1Fragment) {
                dikeCreateActivity.coordsStep1.setValue(doubleArrayExtra);
            } else if (dikeCreateActivity.mList.get(dikeCreateActivity.pagePosition) instanceof DikeStep2Fragment) {
                dikeCreateActivity.coordsStep2.setValue(doubleArrayExtra);
            }
        }
    }

    private void saveCors() {
        if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) != NtripTypeEnum.NTRIP.getType()) {
            this.dikeEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
            this.dikeEntity.corsName = getString(R$string.x_fixed);
            DikeEntity dikeEntity = this.dikeEntity;
            dikeEntity.corsHost = "rss.rtkiot.cn";
            dikeEntity.corsPort = 8001;
            dikeEntity.corsMount = "AUTO";
            return;
        }
        List<CorsEntity> listQueryCORS = DatabaseManager.getInstance(this).queryCORS(null);
        this.dikeEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
        this.dikeEntity.corsName = listQueryCORS.get(0).corsName;
        this.dikeEntity.corsHost = listQueryCORS.get(0).host;
        this.dikeEntity.corsPort = listQueryCORS.get(0).port;
        this.dikeEntity.corsMount = listQueryCORS.get(0).mount;
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
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.dike.DikeCreateActivity.2
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("back") && bundle.getBoolean("confirm")) {
                    DikeCreateActivity.this.finish();
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
        this.binding.topBar.tvTitle.setText(getString(R$string.dike));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void ivBackClick() {
        this.binding.topBar.lltBackTb.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.dike.DikeCreateActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DikeCreateActivity.this.pagePosition != 0) {
                    DikeCreateActivity dikeCreateActivity = DikeCreateActivity.this;
                    dikeCreateActivity.showTipDialog(dikeCreateActivity.getString(R$string.exit_editing), DikeCreateActivity.this.getString(R$string.confirm), null, "back");
                } else {
                    DikeCreateActivity.this.finish();
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.dikeStep1Fragment.insNavi(insNavi, this.mAvailable);
        this.dikeStep2Fragment.insNavi(insNavi, this.mAvailable);
        this.dikeStep3Fragment.insNavi(insNavi, this.mAvailable);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        this.mGGA = gGAEntity;
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
