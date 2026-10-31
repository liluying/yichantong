package com.qianhe.yct.activity.onepointarea;

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
import com.qianhe.baselib.bean.OnePointAreaEntity;
import com.qianhe.baselib.bean.OrderBean;
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
import com.qianhe.yct.databinding.ActivityOnepointAreaCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.fragment.CreateProjectNameFragment;
import com.qianhe.yct.fragment.OnePointAreaStep1Fragment;
import com.qianhe.yct.fragment.OnePointAreaStep2Fragment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class OnePointAreaCreateActivity extends BaseActivity {
    private ViewPagerAdapter adapter;
    private ActivityOnepointAreaCreateBinding binding;
    private final MutableLiveData coordsLiveData = new MutableLiveData();
    private CreateProjectNameFragment createNameFragment;
    private long id;
    private OnePointAreaEntity initEntity;
    private int initPage;
    private ActivityResultLauncher launcher;
    private DatabaseManager mDatabaseManager;
    private GGAEntity mGGA;
    private List<BaseProjectFragment> mList;
    private OnePointAreaEntity onePointAreaEntity;
    private OnePointAreaStep1Fragment onePointAreaStep1Fragment;
    private OnePointAreaStep2Fragment onePointAreaStep2Fragment;
    private int pagePosition;
    private int proType;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    public LiveData observeCoords() {
        return this.coordsLiveData;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityOnepointAreaCreateBinding.inflate(getLayoutInflater());
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
                    this.onePointAreaEntity = (OnePointAreaEntity) listQueryEntityById.get(0);
                }
            } else {
                OnePointAreaEntity onePointAreaEntity = new OnePointAreaEntity();
                this.onePointAreaEntity = onePointAreaEntity;
                onePointAreaEntity.type = this.proType;
            }
            OnePointAreaEntity onePointAreaEntity2 = (OnePointAreaEntity) new Gson().fromJson(new Gson().toJson(this.onePointAreaEntity), OnePointAreaEntity.class);
            this.initEntity = onePointAreaEntity2;
            OnePointAreaEntity onePointAreaEntity3 = this.onePointAreaEntity;
            onePointAreaEntity2.id = onePointAreaEntity3.id;
            onePointAreaEntity2.name = onePointAreaEntity3.name;
            if (TextUtils.isEmpty(onePointAreaEntity3.corsName)) {
                saveCors();
            }
        }
        initViewPager();
    }

    private void initViewPager() {
        this.adapter = new ViewPagerAdapter(this);
        this.createNameFragment = new CreateProjectNameFragment();
        this.onePointAreaStep1Fragment = new OnePointAreaStep1Fragment();
        this.onePointAreaStep2Fragment = new OnePointAreaStep2Fragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("initEntity", this.initEntity);
        bundle.putSerializable("baseProEntity", this.onePointAreaEntity);
        this.createNameFragment.setArguments(bundle);
        this.onePointAreaStep1Fragment.setArguments(bundle);
        this.onePointAreaStep2Fragment.setArguments(bundle);
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        arrayList.add(this.createNameFragment);
        this.mList.add(this.onePointAreaStep1Fragment);
        this.mList.add(this.onePointAreaStep2Fragment);
        Iterator<BaseProjectFragment> it = this.mList.iterator();
        while (it.hasNext()) {
            this.adapter.addFragment(it.next(), "");
        }
        this.binding.viewPager2.setAdapter(this.adapter);
        this.binding.viewPager2.setCurrentItem(this.pagePosition, false);
        this.binding.viewPager2.setUserInputEnabled(false);
        this.binding.viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaCreateActivity.1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                OnePointAreaCreateActivity.this.pagePosition = i;
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
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaCreateActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                OnePointAreaCreateActivity.$r8$lambda$v6Ryt5Id1DIMqWd8DOV42Z1z64s(this.f$0, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$v6Ryt5Id1DIMqWd8DOV42Z1z64s(OnePointAreaCreateActivity onePointAreaCreateActivity, ActivityResult activityResult) {
        Intent data;
        onePointAreaCreateActivity.getClass();
        if (activityResult.getResultCode() == -1 && (data = activityResult.getData()) != null && (onePointAreaCreateActivity.mList.get(onePointAreaCreateActivity.pagePosition) instanceof OnePointAreaStep1Fragment)) {
            double[] doubleArrayExtra = data.getDoubleArrayExtra("coords");
            String[] stringArrayExtra = data.getStringArrayExtra("cors");
            if (stringArrayExtra != null) {
                if (stringArrayExtra.length > 0) {
                    onePointAreaCreateActivity.onePointAreaEntity.coordinateSystem = stringArrayExtra[0];
                }
                if (stringArrayExtra.length > 1) {
                    onePointAreaCreateActivity.onePointAreaEntity.corsName = stringArrayExtra[1];
                }
                if (stringArrayExtra.length > 2) {
                    onePointAreaCreateActivity.onePointAreaEntity.corsHost = stringArrayExtra[2];
                }
                if (stringArrayExtra.length > 3) {
                    onePointAreaCreateActivity.onePointAreaEntity.corsPort = Integer.parseInt(stringArrayExtra[3]);
                }
                if (stringArrayExtra.length > 4) {
                    onePointAreaCreateActivity.onePointAreaEntity.corsUserName = stringArrayExtra[4];
                }
                if (stringArrayExtra.length > 5) {
                    onePointAreaCreateActivity.onePointAreaEntity.corsPassword = stringArrayExtra[5];
                }
                if (stringArrayExtra.length > 6) {
                    onePointAreaCreateActivity.onePointAreaEntity.corsMount = stringArrayExtra[6];
                }
            } else {
                onePointAreaCreateActivity.saveCors();
            }
            if (doubleArrayExtra != null) {
                onePointAreaCreateActivity.coordsLiveData.setValue(doubleArrayExtra);
            }
        }
    }

    private void saveCors() {
        if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) != NtripTypeEnum.NTRIP.getType()) {
            this.onePointAreaEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
            this.onePointAreaEntity.corsName = getString(R$string.x_fixed);
            OnePointAreaEntity onePointAreaEntity = this.onePointAreaEntity;
            onePointAreaEntity.corsHost = "rss.rtkiot.cn";
            onePointAreaEntity.corsPort = 8001;
            onePointAreaEntity.corsMount = "AUTO";
            return;
        }
        List<CorsEntity> listQueryCORS = DatabaseManager.getInstance(this).queryCORS(null);
        this.onePointAreaEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
        this.onePointAreaEntity.corsName = listQueryCORS.get(0).corsName;
        this.onePointAreaEntity.corsHost = listQueryCORS.get(0).host;
        this.onePointAreaEntity.corsPort = listQueryCORS.get(0).port;
        this.onePointAreaEntity.corsMount = listQueryCORS.get(0).mount;
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
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaCreateActivity.2
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("back") && bundle.getBoolean("confirm")) {
                    OnePointAreaCreateActivity.this.finish();
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
        this.binding.topBar.tvTitle.setText(getString(R$string.one_point_area));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void ivBackClick() {
        this.binding.topBar.lltBackTb.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.onepointarea.OnePointAreaCreateActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (OnePointAreaCreateActivity.this.pagePosition != 0) {
                    OnePointAreaCreateActivity onePointAreaCreateActivity = OnePointAreaCreateActivity.this;
                    onePointAreaCreateActivity.showTipDialog(onePointAreaCreateActivity.getString(R$string.exit_editing), OnePointAreaCreateActivity.this.getString(R$string.confirm), null, "back");
                } else {
                    OnePointAreaCreateActivity.this.finish();
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.onePointAreaStep1Fragment.insNavi(insNavi, this.mAvailable);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        this.mGGA = gGAEntity;
        this.onePointAreaStep1Fragment.gga(gGAEntity);
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
