package com.qianhe.yct.activity.polyline;

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
import com.qianhe.baselib.bean.PolyLineEntity;
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
import com.qianhe.yct.fragment.PolyLineStep1Fragment;
import com.qianhe.yct.fragment.PolyLineStep2Fragment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class PolyLineCreateActivity extends BaseActivity {
    private ViewPagerAdapter adapter;
    private ActivitySitelevelingCreateBinding binding;
    private final MutableLiveData coordsStep = new MutableLiveData();
    private CreateProjectNameFragment createNameFragment;
    private long id;
    private PolyLineEntity initEntity;
    private int initPage;
    private ActivityResultLauncher launcher;
    private DatabaseManager mDatabaseManager;
    private GGAEntity mGGA;
    private List<BaseProjectFragment> mList;
    private int pagePosition;
    private PolyLineEntity polyLineEntity;
    private PolyLineStep1Fragment polyLineStep1Fragment;
    private PolyLineStep2Fragment polyLineStep2Fragment;
    private int proType;

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
                    this.polyLineEntity = (PolyLineEntity) listQueryEntityById.get(0);
                }
            } else {
                PolyLineEntity polyLineEntity = new PolyLineEntity();
                this.polyLineEntity = polyLineEntity;
                polyLineEntity.type = this.proType;
            }
            PolyLineEntity polyLineEntity2 = (PolyLineEntity) new Gson().fromJson(new Gson().toJson(this.polyLineEntity), PolyLineEntity.class);
            this.initEntity = polyLineEntity2;
            PolyLineEntity polyLineEntity3 = this.polyLineEntity;
            polyLineEntity2.id = polyLineEntity3.id;
            polyLineEntity2.name = polyLineEntity3.name;
            if (TextUtils.isEmpty(polyLineEntity3.corsName)) {
                saveCors();
            }
        }
        initViewPager();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PolyLineEntity polyLineEntity = this.polyLineEntity;
        if (polyLineEntity != null) {
            bundle.putSerializable("lineEntity", polyLineEntity);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.polyLineEntity = (PolyLineEntity) bundle.getSerializable("lineEntity");
        setFragmentData();
    }

    private void initViewPager() {
        this.adapter = new ViewPagerAdapter(this);
        this.createNameFragment = new CreateProjectNameFragment();
        this.polyLineStep1Fragment = new PolyLineStep1Fragment();
        this.polyLineStep2Fragment = new PolyLineStep2Fragment();
        setFragmentData();
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        arrayList.add(this.createNameFragment);
        this.mList.add(this.polyLineStep1Fragment);
        this.mList.add(this.polyLineStep2Fragment);
        Iterator<BaseProjectFragment> it = this.mList.iterator();
        while (it.hasNext()) {
            this.adapter.addFragment(it.next(), "");
        }
        this.binding.viewPager2.setAdapter(this.adapter);
        this.binding.viewPager2.setCurrentItem(this.pagePosition, false);
        this.binding.viewPager2.setUserInputEnabled(false);
        this.binding.viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.qianhe.yct.activity.polyline.PolyLineCreateActivity.1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                PolyLineCreateActivity.this.pagePosition = i;
            }
        });
    }

    private void setFragmentData() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("initEntity", this.initEntity);
        bundle.putSerializable("baseProEntity", this.polyLineEntity);
        this.createNameFragment.setArguments(bundle);
        this.polyLineStep1Fragment.setArguments(bundle);
        this.polyLineStep2Fragment.setArguments(bundle);
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
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.polyline.PolyLineCreateActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                PolyLineCreateActivity.m1743$r8$lambda$_UbP5cnDej5ZGHp3w3vVMXmqNc(this.f$0, (ActivityResult) obj);
            }
        });
    }

    /* renamed from: $r8$lambda$_UbP5cnDej5ZGHp3w-3vVMXmqNc, reason: not valid java name */
    public static /* synthetic */ void m1743$r8$lambda$_UbP5cnDej5ZGHp3w3vVMXmqNc(PolyLineCreateActivity polyLineCreateActivity, ActivityResult activityResult) {
        Intent data;
        polyLineCreateActivity.getClass();
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        double[] doubleArrayExtra = data.getDoubleArrayExtra("coords");
        String[] stringArrayExtra = data.getStringArrayExtra("cors");
        if (stringArrayExtra != null) {
            if (stringArrayExtra.length > 0) {
                polyLineCreateActivity.polyLineEntity.coordinateSystem = stringArrayExtra[0];
            }
            if (stringArrayExtra.length > 1) {
                polyLineCreateActivity.polyLineEntity.corsName = stringArrayExtra[1];
            }
            if (stringArrayExtra.length > 2) {
                polyLineCreateActivity.polyLineEntity.corsHost = stringArrayExtra[2];
            }
            if (stringArrayExtra.length > 3) {
                polyLineCreateActivity.polyLineEntity.corsPort = Integer.parseInt(stringArrayExtra[3]);
            }
            if (stringArrayExtra.length > 4) {
                polyLineCreateActivity.polyLineEntity.corsUserName = stringArrayExtra[4];
            }
            if (stringArrayExtra.length > 5) {
                polyLineCreateActivity.polyLineEntity.corsPassword = stringArrayExtra[5];
            }
            if (stringArrayExtra.length > 6) {
                polyLineCreateActivity.polyLineEntity.corsMount = stringArrayExtra[6];
            }
        } else {
            polyLineCreateActivity.saveCors();
        }
        if (doubleArrayExtra == null || !(polyLineCreateActivity.mList.get(polyLineCreateActivity.pagePosition) instanceof PolyLineStep2Fragment)) {
            return;
        }
        polyLineCreateActivity.coordsStep.setValue(doubleArrayExtra);
    }

    private void saveCors() {
        if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) != NtripTypeEnum.NTRIP.getType()) {
            this.polyLineEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
            this.polyLineEntity.corsName = getString(R$string.x_fixed);
            PolyLineEntity polyLineEntity = this.polyLineEntity;
            polyLineEntity.corsHost = "rss.rtkiot.cn";
            polyLineEntity.corsPort = 8001;
            polyLineEntity.corsMount = "AUTO";
            return;
        }
        List<CorsEntity> listQueryCORS = DatabaseManager.getInstance(this).queryCORS(null);
        this.polyLineEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
        this.polyLineEntity.corsName = listQueryCORS.get(0).corsName;
        this.polyLineEntity.corsHost = listQueryCORS.get(0).host;
        this.polyLineEntity.corsPort = listQueryCORS.get(0).port;
        this.polyLineEntity.corsMount = listQueryCORS.get(0).mount;
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
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.polyline.PolyLineCreateActivity.2
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("back") && bundle.getBoolean("confirm")) {
                    PolyLineCreateActivity.this.finish();
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
        this.binding.topBar.tvTitle.setText(getString(R$string.polyline));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void ivBackClick() {
        this.binding.topBar.lltBackTb.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.polyline.PolyLineCreateActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PolyLineCreateActivity.this.pagePosition != 0) {
                    PolyLineCreateActivity polyLineCreateActivity = PolyLineCreateActivity.this;
                    polyLineCreateActivity.showTipDialog(polyLineCreateActivity.getString(R$string.exit_editing), PolyLineCreateActivity.this.getString(R$string.confirm), null, "back");
                } else {
                    PolyLineCreateActivity.this.finish();
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.polyLineStep1Fragment.insNavi(insNavi, this.mAvailable);
        this.polyLineStep2Fragment.insNavi(insNavi, this.mAvailable);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        this.mGGA = gGAEntity;
        this.polyLineStep1Fragment.gga(gGAEntity);
        this.polyLineStep2Fragment.gga(gGAEntity);
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
