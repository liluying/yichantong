package com.qianhe.yct.activity.multipointarea;

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
import com.qianhe.baselib.bean.MultiPointAreaEntity;
import com.qianhe.baselib.enums.CoordinateSystemEnum;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.CollectCoordsActivity;
import com.qianhe.yct.activity.pointlib.PointLibraryIntent;
import com.qianhe.yct.adapter.ViewPagerAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.ActivityMultiPointAreaCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.fragment.CreateProjectNameFragment;
import com.qianhe.yct.fragment.MultiPointAreaStep1Fragment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class MultiPointAreaCreateActivity extends BaseActivity {
    private ViewPagerAdapter adapter;
    private ActivityMultiPointAreaCreateBinding binding;
    private final MutableLiveData coordsStep = new MutableLiveData();
    private CreateProjectNameFragment createNameFragment;
    private long id;
    private MultiPointAreaEntity initEntity;
    private int initPage;
    private ActivityResultLauncher launcher;
    private DatabaseManager mDatabaseManager;
    private List<BaseProjectFragment> mList;
    private MultiPointAreaEntity multiPointAreaEntity;
    private int pagePosition;
    private int proType;
    private MultiPointAreaStep1Fragment step1Fragment;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    public LiveData observeCoordsStep() {
        return this.coordsStep;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityMultiPointAreaCreateBinding.inflate(getLayoutInflater());
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
                    this.multiPointAreaEntity = (MultiPointAreaEntity) listQueryEntityById.get(0);
                }
            } else {
                MultiPointAreaEntity multiPointAreaEntity = new MultiPointAreaEntity();
                this.multiPointAreaEntity = multiPointAreaEntity;
                multiPointAreaEntity.type = this.proType;
            }
            MultiPointAreaEntity multiPointAreaEntity2 = (MultiPointAreaEntity) new Gson().fromJson(new Gson().toJson(this.multiPointAreaEntity), MultiPointAreaEntity.class);
            this.initEntity = multiPointAreaEntity2;
            MultiPointAreaEntity multiPointAreaEntity3 = this.multiPointAreaEntity;
            multiPointAreaEntity2.id = multiPointAreaEntity3.id;
            multiPointAreaEntity2.name = multiPointAreaEntity3.name;
            if (TextUtils.isEmpty(multiPointAreaEntity3.corsName)) {
                saveCors();
            }
        }
        initViewPager();
    }

    private void initViewPager() {
        this.adapter = new ViewPagerAdapter(this);
        this.createNameFragment = new CreateProjectNameFragment();
        this.step1Fragment = new MultiPointAreaStep1Fragment();
        setFragmentData();
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        arrayList.add(this.createNameFragment);
        this.mList.add(this.step1Fragment);
        Iterator<BaseProjectFragment> it = this.mList.iterator();
        while (it.hasNext()) {
            this.adapter.addFragment(it.next(), "");
        }
        this.binding.viewPager2.setAdapter(this.adapter);
        this.binding.viewPager2.setCurrentItem(this.pagePosition, false);
        this.binding.viewPager2.setUserInputEnabled(false);
        this.binding.viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaCreateActivity.1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                MultiPointAreaCreateActivity.this.pagePosition = i;
            }
        });
    }

    private void setFragmentData() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("initEntity", this.initEntity);
        bundle.putSerializable("baseProEntity", this.multiPointAreaEntity);
        this.createNameFragment.setArguments(bundle);
        this.step1Fragment.setArguments(bundle);
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
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaCreateActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                MultiPointAreaCreateActivity.m1673$r8$lambda$t4kqMuZmISuO9wCc3eDw7kUksc(this.f$0, (ActivityResult) obj);
            }
        });
    }

    /* renamed from: $r8$lambda$t4kqMuZmISuO9wCc-3eDw7kUksc, reason: not valid java name */
    public static /* synthetic */ void m1673$r8$lambda$t4kqMuZmISuO9wCc3eDw7kUksc(MultiPointAreaCreateActivity multiPointAreaCreateActivity, ActivityResult activityResult) {
        Intent data;
        multiPointAreaCreateActivity.getClass();
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        double[] doubleArrayExtra = data.getDoubleArrayExtra("coords");
        String[] stringArrayExtra = data.getStringArrayExtra("cors");
        if (stringArrayExtra != null) {
            if (stringArrayExtra.length > 0) {
                multiPointAreaCreateActivity.multiPointAreaEntity.coordinateSystem = stringArrayExtra[0];
            }
            if (stringArrayExtra.length > 1) {
                multiPointAreaCreateActivity.multiPointAreaEntity.corsName = stringArrayExtra[1];
            }
            if (stringArrayExtra.length > 2) {
                multiPointAreaCreateActivity.multiPointAreaEntity.corsHost = stringArrayExtra[2];
            }
            if (stringArrayExtra.length > 3) {
                multiPointAreaCreateActivity.multiPointAreaEntity.corsPort = Integer.parseInt(stringArrayExtra[3]);
            }
            if (stringArrayExtra.length > 4) {
                multiPointAreaCreateActivity.multiPointAreaEntity.corsUserName = stringArrayExtra[4];
            }
            if (stringArrayExtra.length > 5) {
                multiPointAreaCreateActivity.multiPointAreaEntity.corsPassword = stringArrayExtra[5];
            }
            if (stringArrayExtra.length > 6) {
                multiPointAreaCreateActivity.multiPointAreaEntity.corsMount = stringArrayExtra[6];
            }
        } else {
            multiPointAreaCreateActivity.saveCors();
        }
        if (doubleArrayExtra == null || !(multiPointAreaCreateActivity.mList.get(multiPointAreaCreateActivity.pagePosition) instanceof MultiPointAreaStep1Fragment)) {
            return;
        }
        multiPointAreaCreateActivity.coordsStep.setValue(doubleArrayExtra);
    }

    private void saveCors() {
        if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) != NtripTypeEnum.NTRIP.getType()) {
            this.multiPointAreaEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
            this.multiPointAreaEntity.corsName = getString(R$string.x_fixed);
            MultiPointAreaEntity multiPointAreaEntity = this.multiPointAreaEntity;
            multiPointAreaEntity.corsHost = "rss.rtkiot.cn";
            multiPointAreaEntity.corsPort = 8001;
            multiPointAreaEntity.corsMount = "AUTO";
            return;
        }
        List<CorsEntity> listQueryCORS = DatabaseManager.getInstance(this).queryCORS(null);
        this.multiPointAreaEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
        this.multiPointAreaEntity.corsName = listQueryCORS.get(0).corsName;
        this.multiPointAreaEntity.corsHost = listQueryCORS.get(0).host;
        this.multiPointAreaEntity.corsPort = listQueryCORS.get(0).port;
        this.multiPointAreaEntity.corsMount = listQueryCORS.get(0).mount;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        EventBus.getDefault().register(this);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        initActivityResultLauncher();
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaCreateActivity.2
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("back") && bundle.getBoolean("confirm")) {
                    MultiPointAreaCreateActivity.this.finish();
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
        this.binding.topBar.tvTitle.setText(getString(R$string.multi_point_area));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void ivBackClick() {
        this.binding.topBar.lltBackTb.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.multipointarea.MultiPointAreaCreateActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultiPointAreaCreateActivity.m1672$r8$lambda$JgzHIamivFFiGfayn_VNT76U4(this.f$0, view);
            }
        });
    }

    /* renamed from: $r8$lambda$JgzHIamivFFiGfayn_VNT--76U4, reason: not valid java name */
    public static /* synthetic */ void m1672$r8$lambda$JgzHIamivFFiGfayn_VNT76U4(MultiPointAreaCreateActivity multiPointAreaCreateActivity, View view) {
        if (multiPointAreaCreateActivity.pagePosition != 0) {
            multiPointAreaCreateActivity.showTipDialog(multiPointAreaCreateActivity.getString(R$string.exit_editing), multiPointAreaCreateActivity.getString(R$string.confirm), null, "back");
        } else {
            multiPointAreaCreateActivity.finish();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.step1Fragment.insNavi(insNavi, this.mAvailable);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        this.step1Fragment.gga(gGAEntity);
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
