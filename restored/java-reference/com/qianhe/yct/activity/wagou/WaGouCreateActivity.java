package com.qianhe.yct.activity.wagou;

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
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.WaGouEntity;
import com.qianhe.baselib.enums.CoordinateSystemEnum;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.CollectCoordsActivity;
import com.qianhe.yct.activity.pointlib.PointLibraryIntent;
import com.qianhe.yct.adapter.ViewPagerAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityWgCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.fragment.CreateProjectNameFragment;
import com.qianhe.yct.fragment.WaGouChoiceTypeFragment;
import com.qianhe.yct.fragment.WaGouStep1Fragment;
import com.qianhe.yct.fragment.WaGouStep2Fragment;
import com.qianhe.yct.fragment.WaGouStep3Fragment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class WaGouCreateActivity extends BaseActivity {
    private ViewPagerAdapter adapter;
    private ActivityWgCreateBinding binding;
    private final MutableLiveData coordsStep1 = new MutableLiveData();
    private final MutableLiveData coordsStep2 = new MutableLiveData();
    private CreateProjectNameFragment createNameFragment;
    private long id;
    private WaGouEntity initEntity;
    private int initPage;
    private ActivityResultLauncher launcher;
    private DatabaseManager mDatabaseManager;
    private GGAEntity mGGA;
    private List<Fragment> mList;
    private int pagePosition;
    private int proType;
    private WaGouChoiceTypeFragment waGouChoiceTypeFragment;
    private WaGouEntity waGouEntity;
    private WaGouStep1Fragment waGouStep1Fragment;
    private WaGouStep2Fragment waGouStep2Fragment;
    private WaGouStep3Fragment waGouStep3Fragment;

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
        this.binding = ActivityWgCreateBinding.inflate(getLayoutInflater());
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
                    this.waGouEntity = (WaGouEntity) listQueryEntityById.get(0);
                }
            } else {
                WaGouEntity waGouEntity = new WaGouEntity();
                this.waGouEntity = waGouEntity;
                waGouEntity.type = this.proType;
            }
            WaGouEntity waGouEntity2 = (WaGouEntity) new Gson().fromJson(new Gson().toJson(this.waGouEntity), WaGouEntity.class);
            this.initEntity = waGouEntity2;
            WaGouEntity waGouEntity3 = this.waGouEntity;
            waGouEntity2.id = waGouEntity3.id;
            waGouEntity2.name = waGouEntity3.name;
            if (TextUtils.isEmpty(waGouEntity3.corsName)) {
                savaCors();
            }
        }
        initViewPager();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        WaGouEntity waGouEntity = this.waGouEntity;
        if (waGouEntity != null) {
            bundle.putSerializable("waGouEntity", waGouEntity);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.waGouEntity = (WaGouEntity) bundle.getSerializable("waGouEntity");
        setFragmentData();
    }

    private void initViewPager() {
        this.adapter = new ViewPagerAdapter(this);
        this.createNameFragment = new CreateProjectNameFragment();
        this.waGouChoiceTypeFragment = new WaGouChoiceTypeFragment();
        this.waGouStep1Fragment = new WaGouStep1Fragment();
        this.waGouStep2Fragment = new WaGouStep2Fragment();
        this.waGouStep3Fragment = new WaGouStep3Fragment();
        setFragmentData();
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        arrayList.add(this.createNameFragment);
        this.mList.add(this.waGouChoiceTypeFragment);
        this.mList.add(this.waGouStep1Fragment);
        this.mList.add(this.waGouStep2Fragment);
        this.mList.add(this.waGouStep3Fragment);
        Iterator<Fragment> it = this.mList.iterator();
        while (it.hasNext()) {
            this.adapter.addFragment(it.next(), "");
        }
        this.binding.viewPager2.setAdapter(this.adapter);
        this.binding.viewPager2.setCurrentItem(this.pagePosition, false);
        this.binding.viewPager2.setUserInputEnabled(false);
        this.binding.viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.qianhe.yct.activity.wagou.WaGouCreateActivity.1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                WaGouCreateActivity.this.pagePosition = i;
            }
        });
    }

    private void setFragmentData() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("initEntity", this.initEntity);
        bundle.putSerializable("baseProEntity", this.waGouEntity);
        this.createNameFragment.setArguments(bundle);
        this.waGouChoiceTypeFragment.setArguments(bundle);
        this.waGouStep1Fragment.setArguments(bundle);
        this.waGouStep2Fragment.setArguments(bundle);
        this.waGouStep3Fragment.setArguments(bundle);
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
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.wagou.WaGouCreateActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                WaGouCreateActivity.$r8$lambda$mJ9wskVlwHaVvDjqSEAEWtLyXhk(this.f$0, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$mJ9wskVlwHaVvDjqSEAEWtLyXhk(WaGouCreateActivity waGouCreateActivity, ActivityResult activityResult) {
        Intent data;
        waGouCreateActivity.getClass();
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        double[] doubleArrayExtra = data.getDoubleArrayExtra("coords");
        String[] stringArrayExtra = data.getStringArrayExtra("cors");
        if (stringArrayExtra != null) {
            if (stringArrayExtra.length > 0) {
                waGouCreateActivity.waGouEntity.coordinateSystem = stringArrayExtra[0];
            }
            if (stringArrayExtra.length > 1) {
                waGouCreateActivity.waGouEntity.corsName = stringArrayExtra[1];
            }
            if (stringArrayExtra.length > 2) {
                waGouCreateActivity.waGouEntity.corsHost = stringArrayExtra[2];
            }
            if (stringArrayExtra.length > 3) {
                waGouCreateActivity.waGouEntity.corsPort = Integer.parseInt(stringArrayExtra[3]);
            }
            if (stringArrayExtra.length > 4) {
                waGouCreateActivity.waGouEntity.corsUserName = stringArrayExtra[4];
            }
            if (stringArrayExtra.length > 5) {
                waGouCreateActivity.waGouEntity.corsPassword = stringArrayExtra[5];
            }
            if (stringArrayExtra.length > 6) {
                waGouCreateActivity.waGouEntity.corsMount = stringArrayExtra[6];
            }
        } else {
            waGouCreateActivity.savaCors();
        }
        if (doubleArrayExtra != null) {
            if (waGouCreateActivity.mList.get(waGouCreateActivity.pagePosition) instanceof WaGouStep1Fragment) {
                waGouCreateActivity.coordsStep1.setValue(doubleArrayExtra);
            } else if (waGouCreateActivity.mList.get(waGouCreateActivity.pagePosition) instanceof WaGouStep2Fragment) {
                waGouCreateActivity.coordsStep2.setValue(doubleArrayExtra);
            }
        }
    }

    private void savaCors() {
        if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) != NtripTypeEnum.NTRIP.getType()) {
            this.waGouEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
            this.waGouEntity.corsName = getString(R$string.x_fixed);
            WaGouEntity waGouEntity = this.waGouEntity;
            waGouEntity.corsHost = "rss.rtkiot.cn";
            waGouEntity.corsPort = 8001;
            waGouEntity.corsMount = "AUTO";
            return;
        }
        List<CorsEntity> listQueryCORS = DatabaseManager.getInstance(this).queryCORS(null);
        this.waGouEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
        this.waGouEntity.corsName = listQueryCORS.get(0).corsName;
        this.waGouEntity.corsHost = listQueryCORS.get(0).host;
        this.waGouEntity.corsPort = listQueryCORS.get(0).port;
        this.waGouEntity.corsMount = listQueryCORS.get(0).mount;
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
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.wagou.WaGouCreateActivity.2
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("back") && bundle.getBoolean("confirm")) {
                    WaGouCreateActivity.this.finish();
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
        this.binding.topBar.tvTitle.setText(getString(R$string.ditch));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void ivBackClick() {
        this.binding.topBar.lltBackTb.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.wagou.WaGouCreateActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (WaGouCreateActivity.this.pagePosition != 0) {
                    WaGouCreateActivity waGouCreateActivity = WaGouCreateActivity.this;
                    waGouCreateActivity.showTipDialog(waGouCreateActivity.getString(R$string.exit_editing), WaGouCreateActivity.this.getString(R$string.confirm), null, "back");
                } else {
                    WaGouCreateActivity.this.finish();
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.waGouChoiceTypeFragment.insNavi(insNavi, this.mAvailable);
        this.waGouStep1Fragment.insNavi(insNavi, this.mAvailable);
        this.waGouStep2Fragment.insNavi(insNavi, this.mAvailable);
        this.waGouStep3Fragment.insNavi(insNavi, this.mAvailable);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        this.mGGA = gGAEntity;
        this.waGouChoiceTypeFragment.gga(gGAEntity);
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
