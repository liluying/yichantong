package com.qianhe.yct.activity.arabitraryline;

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
import com.qianhe.baselib.bean.ArbitraryLineEntity;
import com.qianhe.baselib.bean.CorsEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
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
import com.qianhe.yct.databinding.ActivityArbitrarylineCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.fragment.ArbitrarylineCreateFragment;
import com.qianhe.yct.fragment.CreateProjectNameFragment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ArbitrarylineCreateActivity extends BaseActivity {
    private ViewPagerAdapter adapter;
    private ArbitraryLineEntity arbitraryLineEntity;
    private ArbitrarylineCreateFragment arbitrarylineCreateFragment;
    private ActivityArbitrarylineCreateBinding binding;
    private final MutableLiveData coordsLiveData = new MutableLiveData();
    private CreateProjectNameFragment createNameFragment;
    private long id;
    private ArbitraryLineEntity initEntity;
    private int initPage;
    private ActivityResultLauncher launcher;
    private DatabaseManager mDatabaseManager;
    private GGAEntity mGGA;
    private List<BaseProjectFragment> mList;
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
        this.binding = ActivityArbitrarylineCreateBinding.inflate(getLayoutInflater());
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
                    this.arbitraryLineEntity = (ArbitraryLineEntity) listQueryEntityById.get(0);
                }
            } else {
                ArbitraryLineEntity arbitraryLineEntity = new ArbitraryLineEntity();
                this.arbitraryLineEntity = arbitraryLineEntity;
                arbitraryLineEntity.type = this.proType;
            }
            ArbitraryLineEntity arbitraryLineEntity2 = (ArbitraryLineEntity) new Gson().fromJson(new Gson().toJson(this.arbitraryLineEntity), ArbitraryLineEntity.class);
            this.initEntity = arbitraryLineEntity2;
            ArbitraryLineEntity arbitraryLineEntity3 = this.arbitraryLineEntity;
            arbitraryLineEntity2.id = arbitraryLineEntity3.id;
            arbitraryLineEntity2.name = arbitraryLineEntity3.name;
            if (TextUtils.isEmpty(arbitraryLineEntity3.corsName)) {
                saveCors();
            }
        }
        initViewPager();
    }

    private void initViewPager() {
        this.adapter = new ViewPagerAdapter(this);
        this.createNameFragment = new CreateProjectNameFragment();
        this.arbitrarylineCreateFragment = new ArbitrarylineCreateFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("initEntity", this.initEntity);
        bundle.putSerializable("baseProEntity", this.arbitraryLineEntity);
        this.createNameFragment.setArguments(bundle);
        this.arbitrarylineCreateFragment.setArguments(bundle);
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        arrayList.add(this.createNameFragment);
        this.mList.add(this.arbitrarylineCreateFragment);
        Iterator<BaseProjectFragment> it = this.mList.iterator();
        while (it.hasNext()) {
            this.adapter.addFragment(it.next(), "");
        }
        this.binding.viewPager2.setAdapter(this.adapter);
        this.binding.viewPager2.setCurrentItem(this.pagePosition, false);
        this.binding.viewPager2.setUserInputEnabled(false);
        this.binding.viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineCreateActivity.1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                ArbitrarylineCreateActivity.this.pagePosition = i;
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
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineCreateActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ArbitrarylineCreateActivity.$r8$lambda$emO6GXWaC_mHyVkRWxSMKTeCI_A(this.f$0, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$emO6GXWaC_mHyVkRWxSMKTeCI_A(ArbitrarylineCreateActivity arbitrarylineCreateActivity, ActivityResult activityResult) {
        Intent data;
        arbitrarylineCreateActivity.getClass();
        if (activityResult.getResultCode() == -1 && (data = activityResult.getData()) != null && (arbitrarylineCreateActivity.mList.get(arbitrarylineCreateActivity.pagePosition) instanceof ArbitrarylineCreateFragment)) {
            double[] doubleArrayExtra = data.getDoubleArrayExtra("coords");
            String[] stringArrayExtra = data.getStringArrayExtra("cors");
            if (stringArrayExtra != null) {
                if (stringArrayExtra.length > 0) {
                    arbitrarylineCreateActivity.arbitraryLineEntity.coordinateSystem = stringArrayExtra[0];
                }
                if (stringArrayExtra.length > 1) {
                    arbitrarylineCreateActivity.arbitraryLineEntity.corsName = stringArrayExtra[1];
                }
                if (stringArrayExtra.length > 2) {
                    arbitrarylineCreateActivity.arbitraryLineEntity.corsHost = stringArrayExtra[2];
                }
                if (stringArrayExtra.length > 3) {
                    arbitrarylineCreateActivity.arbitraryLineEntity.corsPort = Integer.parseInt(stringArrayExtra[3]);
                }
                if (stringArrayExtra.length > 4) {
                    arbitrarylineCreateActivity.arbitraryLineEntity.corsUserName = stringArrayExtra[4];
                }
                if (stringArrayExtra.length > 5) {
                    arbitrarylineCreateActivity.arbitraryLineEntity.corsPassword = stringArrayExtra[5];
                }
                if (stringArrayExtra.length > 6) {
                    arbitrarylineCreateActivity.arbitraryLineEntity.corsMount = stringArrayExtra[6];
                }
            } else {
                arbitrarylineCreateActivity.saveCors();
            }
            if (doubleArrayExtra != null) {
                arbitrarylineCreateActivity.coordsLiveData.setValue(doubleArrayExtra);
            }
        }
    }

    private void saveCors() {
        if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) != NtripTypeEnum.NTRIP.getType()) {
            this.arbitraryLineEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
            this.arbitraryLineEntity.corsName = getString(R$string.x_fixed);
            ArbitraryLineEntity arbitraryLineEntity = this.arbitraryLineEntity;
            arbitraryLineEntity.corsHost = "rss.rtkiot.cn";
            arbitraryLineEntity.corsPort = 8001;
            arbitraryLineEntity.corsMount = "AUTO";
            return;
        }
        List<CorsEntity> listQueryCORS = DatabaseManager.getInstance(this).queryCORS(null);
        this.arbitraryLineEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
        this.arbitraryLineEntity.corsName = listQueryCORS.get(0).corsName;
        this.arbitraryLineEntity.corsHost = listQueryCORS.get(0).host;
        this.arbitraryLineEntity.corsPort = listQueryCORS.get(0).port;
        this.arbitraryLineEntity.corsMount = listQueryCORS.get(0).mount;
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
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineCreateActivity.2
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("back") && bundle.getBoolean("confirm")) {
                    ArbitrarylineCreateActivity.this.finish();
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
        this.binding.topBar.tvTitle.setText(getString(R$string.arbitrary_line));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void ivBackClick() {
        this.binding.topBar.lltBackTb.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.arabitraryline.ArbitrarylineCreateActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ArbitrarylineCreateActivity.this.pagePosition != 0) {
                    ArbitrarylineCreateActivity arbitrarylineCreateActivity = ArbitrarylineCreateActivity.this;
                    arbitrarylineCreateActivity.showTipDialog(arbitrarylineCreateActivity.getString(R$string.exit_editing), ArbitrarylineCreateActivity.this.getString(R$string.confirm), null, "back");
                } else {
                    ArbitrarylineCreateActivity.this.finish();
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.arbitrarylineCreateFragment.insNavi(insNavi, this.mAvailable);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        this.mGGA = gGAEntity;
        this.arbitrarylineCreateFragment.gga(gGAEntity);
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
