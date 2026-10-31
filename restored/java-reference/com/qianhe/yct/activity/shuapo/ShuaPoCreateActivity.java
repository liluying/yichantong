package com.qianhe.yct.activity.shuapo;

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
import com.qianhe.baselib.bean.ShuaPoEntity;
import com.qianhe.baselib.enums.CoordinateSystemEnum;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.CollectCoordsActivity;
import com.qianhe.yct.activity.pointlib.PointLibraryIntent;
import com.qianhe.yct.adapter.ViewPagerAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivitySpCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.fragment.CreateProjectNameFragment;
import com.qianhe.yct.fragment.ShuaPoChoiceTypeFragment;
import com.qianhe.yct.fragment.ShuaPoStep1Fragment;
import com.qianhe.yct.fragment.ShuaPoStep2Fragment;
import com.qianhe.yct.fragment.ShuaPoStep3Fragment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class ShuaPoCreateActivity extends BaseActivity {
    private ViewPagerAdapter adapter;
    private ActivitySpCreateBinding binding;
    private final MutableLiveData coordsStep1 = new MutableLiveData();
    private final MutableLiveData coordsStep2 = new MutableLiveData();
    private final MutableLiveData coordsStep3 = new MutableLiveData();
    private CreateProjectNameFragment createNameFragment;
    private long id;
    private ShuaPoEntity initEntity;
    private int initPage;
    private ActivityResultLauncher launcher;
    private DatabaseManager mDatabaseManager;
    private GGAEntity mGGA;
    private List<Fragment> mList;
    private int pagePosition;
    private int proType;
    private ShuaPoChoiceTypeFragment shuaPoChoiceTypeFragment;
    private ShuaPoEntity shuaPoEntity;
    private ShuaPoStep1Fragment shuaPoStep1Fragment;
    private ShuaPoStep2Fragment shuaPoStep2Fragment;
    private ShuaPoStep3Fragment shuaPoStep3Fragment;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    public LiveData observeCoordsStep1() {
        return this.coordsStep1;
    }

    public LiveData observeCoordsStep2() {
        return this.coordsStep2;
    }

    public LiveData observeCoordsStep3() {
        return this.coordsStep3;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivitySpCreateBinding.inflate(getLayoutInflater());
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
                    this.shuaPoEntity = (ShuaPoEntity) listQueryEntityById.get(0);
                }
            } else {
                ShuaPoEntity shuaPoEntity = new ShuaPoEntity();
                this.shuaPoEntity = shuaPoEntity;
                shuaPoEntity.type = this.proType;
            }
            ShuaPoEntity shuaPoEntity2 = (ShuaPoEntity) new Gson().fromJson(new Gson().toJson(this.shuaPoEntity), ShuaPoEntity.class);
            this.initEntity = shuaPoEntity2;
            ShuaPoEntity shuaPoEntity3 = this.shuaPoEntity;
            shuaPoEntity2.id = shuaPoEntity3.id;
            shuaPoEntity2.name = shuaPoEntity3.name;
        }
        initViewPager();
        if (TextUtils.isEmpty(this.shuaPoEntity.corsName)) {
            saveCors();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
        if (shuaPoEntity != null) {
            bundle.putSerializable("shuaPoEntity", shuaPoEntity);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.shuaPoEntity = (ShuaPoEntity) bundle.getSerializable("shuaPoEntity");
        setFragmentData();
    }

    private void initViewPager() {
        this.adapter = new ViewPagerAdapter(this);
        this.createNameFragment = new CreateProjectNameFragment();
        this.shuaPoChoiceTypeFragment = new ShuaPoChoiceTypeFragment();
        this.shuaPoStep1Fragment = new ShuaPoStep1Fragment();
        this.shuaPoStep2Fragment = new ShuaPoStep2Fragment();
        this.shuaPoStep3Fragment = new ShuaPoStep3Fragment();
        setFragmentData();
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        arrayList.add(this.createNameFragment);
        this.mList.add(this.shuaPoChoiceTypeFragment);
        this.mList.add(this.shuaPoStep1Fragment);
        this.mList.add(this.shuaPoStep2Fragment);
        this.mList.add(this.shuaPoStep3Fragment);
        Iterator<Fragment> it = this.mList.iterator();
        while (it.hasNext()) {
            this.adapter.addFragment(it.next(), "");
        }
        this.binding.viewPager2.setAdapter(this.adapter);
        this.binding.viewPager2.setCurrentItem(this.pagePosition, false);
        this.binding.viewPager2.setUserInputEnabled(false);
        this.binding.viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoCreateActivity.1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                ShuaPoCreateActivity.this.pagePosition = i;
            }
        });
    }

    private void setFragmentData() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("initEntity", this.initEntity);
        bundle.putSerializable("baseProEntity", this.shuaPoEntity);
        this.createNameFragment.setArguments(bundle);
        this.shuaPoChoiceTypeFragment.setArguments(bundle);
        this.shuaPoStep1Fragment.setArguments(bundle);
        this.shuaPoStep2Fragment.setArguments(bundle);
        this.shuaPoStep3Fragment.setArguments(bundle);
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
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoCreateActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ShuaPoCreateActivity.m1779$r8$lambda$n4oITmaMGo7h8K67FNhmwUiC8o(this.f$0, (ActivityResult) obj);
            }
        });
    }

    /* renamed from: $r8$lambda$n4o-ITmaMGo7h8K67FNhmwUiC8o, reason: not valid java name */
    public static /* synthetic */ void m1779$r8$lambda$n4oITmaMGo7h8K67FNhmwUiC8o(ShuaPoCreateActivity shuaPoCreateActivity, ActivityResult activityResult) {
        Intent data;
        shuaPoCreateActivity.getClass();
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        double[] doubleArrayExtra = data.getDoubleArrayExtra("coords");
        String[] stringArrayExtra = data.getStringArrayExtra("cors");
        if (stringArrayExtra != null) {
            if (stringArrayExtra.length > 0) {
                shuaPoCreateActivity.shuaPoEntity.coordinateSystem = stringArrayExtra[0];
            }
            if (stringArrayExtra.length > 1) {
                shuaPoCreateActivity.shuaPoEntity.corsName = stringArrayExtra[1];
            }
            if (stringArrayExtra.length > 2) {
                shuaPoCreateActivity.shuaPoEntity.corsHost = stringArrayExtra[2];
            }
            if (stringArrayExtra.length > 3) {
                shuaPoCreateActivity.shuaPoEntity.corsPort = Integer.parseInt(stringArrayExtra[3]);
            }
            if (stringArrayExtra.length > 4) {
                shuaPoCreateActivity.shuaPoEntity.corsUserName = stringArrayExtra[4];
            }
            if (stringArrayExtra.length > 5) {
                shuaPoCreateActivity.shuaPoEntity.corsPassword = stringArrayExtra[5];
            }
            if (stringArrayExtra.length > 6) {
                shuaPoCreateActivity.shuaPoEntity.corsMount = stringArrayExtra[6];
            }
        } else {
            shuaPoCreateActivity.saveCors();
        }
        if (doubleArrayExtra != null) {
            if (shuaPoCreateActivity.mList.get(shuaPoCreateActivity.pagePosition) instanceof ShuaPoStep1Fragment) {
                shuaPoCreateActivity.coordsStep1.setValue(doubleArrayExtra);
            } else if (shuaPoCreateActivity.mList.get(shuaPoCreateActivity.pagePosition) instanceof ShuaPoStep2Fragment) {
                shuaPoCreateActivity.coordsStep2.setValue(doubleArrayExtra);
            } else if (shuaPoCreateActivity.mList.get(shuaPoCreateActivity.pagePosition) instanceof ShuaPoStep3Fragment) {
                shuaPoCreateActivity.coordsStep3.setValue(doubleArrayExtra);
            }
        }
    }

    private void saveCors() {
        if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) != NtripTypeEnum.NTRIP.getType()) {
            this.shuaPoEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
            this.shuaPoEntity.corsName = getString(R$string.x_fixed);
            ShuaPoEntity shuaPoEntity = this.shuaPoEntity;
            shuaPoEntity.corsHost = "rss.rtkiot.cn";
            shuaPoEntity.corsPort = 8001;
            shuaPoEntity.corsMount = "AUTO";
            return;
        }
        List<CorsEntity> listQueryCORS = DatabaseManager.getInstance(this).queryCORS(null);
        this.shuaPoEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
        this.shuaPoEntity.corsName = listQueryCORS.get(0).corsName;
        this.shuaPoEntity.corsHost = listQueryCORS.get(0).host;
        this.shuaPoEntity.corsPort = listQueryCORS.get(0).port;
        this.shuaPoEntity.corsMount = listQueryCORS.get(0).mount;
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
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoCreateActivity.2
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("back") && bundle.getBoolean("confirm")) {
                    ShuaPoCreateActivity.this.finish();
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
        this.binding.topBar.tvTitle.setText(getString(R$string.slope));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void ivBackClick() {
        this.binding.topBar.lltBackTb.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.shuapo.ShuaPoCreateActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ShuaPoCreateActivity.this.pagePosition != 0) {
                    ShuaPoCreateActivity shuaPoCreateActivity = ShuaPoCreateActivity.this;
                    shuaPoCreateActivity.showTipDialog(shuaPoCreateActivity.getString(R$string.exit_editing), ShuaPoCreateActivity.this.getString(R$string.confirm), null, "back");
                } else {
                    ShuaPoCreateActivity.this.finish();
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.shuaPoChoiceTypeFragment.insNavi(insNavi, this.mAvailable);
        this.shuaPoStep1Fragment.insNavi(insNavi, this.mAvailable);
        this.shuaPoStep2Fragment.insNavi(insNavi, this.mAvailable);
        this.shuaPoStep3Fragment.insNavi(insNavi, this.mAvailable);
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
