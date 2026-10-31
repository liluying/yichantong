package com.qianhe.yct.activity.curvedslope;

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
import com.qianhe.baselib.bean.CurvedSlopeEntity;
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
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.ActivityCurvedSlopeCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.fragment.CreateProjectNameFragment;
import com.qianhe.yct.fragment.CurvedSlopeChoiceTypeFragment;
import com.qianhe.yct.fragment.CurvedSlopeStep1Fragment;
import com.qianhe.yct.fragment.CurvedSlopeStep2Fragment;
import com.qianhe.yct.fragment.CurvedSlopeStep3Fragment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class CurvedSlopeCreateActivity extends BaseActivity {
    private ViewPagerAdapter adapter;
    private ActivityCurvedSlopeCreateBinding binding;
    private final MutableLiveData coordsStep1 = new MutableLiveData();
    private final MutableLiveData coordsStep2 = new MutableLiveData();
    private final MutableLiveData coordsStep3 = new MutableLiveData();
    private CreateProjectNameFragment createNameFragment;
    private CurvedSlopeChoiceTypeFragment curvedSlopeChoiceTypeFragment;
    private CurvedSlopeEntity curvedSlopeEntity;
    private CurvedSlopeStep1Fragment curvedSlopeStep1Fragment;
    private CurvedSlopeStep2Fragment curvedSlopeStep2Fragment;
    private CurvedSlopeStep3Fragment curvedSlopeStep3Fragment;
    private long id;
    private CurvedSlopeEntity initEntity;
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
        this.binding = ActivityCurvedSlopeCreateBinding.inflate(getLayoutInflater());
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
                    this.curvedSlopeEntity = (CurvedSlopeEntity) listQueryEntityById.get(0);
                }
            } else {
                CurvedSlopeEntity curvedSlopeEntity = new CurvedSlopeEntity();
                this.curvedSlopeEntity = curvedSlopeEntity;
                curvedSlopeEntity.type = this.proType;
            }
            CurvedSlopeEntity curvedSlopeEntity2 = (CurvedSlopeEntity) new Gson().fromJson(new Gson().toJson(this.curvedSlopeEntity), CurvedSlopeEntity.class);
            this.initEntity = curvedSlopeEntity2;
            CurvedSlopeEntity curvedSlopeEntity3 = this.curvedSlopeEntity;
            curvedSlopeEntity2.id = curvedSlopeEntity3.id;
            curvedSlopeEntity2.name = curvedSlopeEntity3.name;
            if (TextUtils.isEmpty(curvedSlopeEntity3.corsName)) {
                saveCors();
            }
        }
        initViewPager();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        CurvedSlopeEntity curvedSlopeEntity = this.curvedSlopeEntity;
        if (curvedSlopeEntity != null) {
            bundle.putSerializable("lineEntity", curvedSlopeEntity);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.curvedSlopeEntity = (CurvedSlopeEntity) bundle.getSerializable("lineEntity");
        setFragmentData();
    }

    private void initViewPager() {
        this.adapter = new ViewPagerAdapter(this);
        this.createNameFragment = new CreateProjectNameFragment();
        this.curvedSlopeChoiceTypeFragment = new CurvedSlopeChoiceTypeFragment();
        this.curvedSlopeStep1Fragment = new CurvedSlopeStep1Fragment();
        this.curvedSlopeStep2Fragment = new CurvedSlopeStep2Fragment();
        this.curvedSlopeStep3Fragment = new CurvedSlopeStep3Fragment();
        setFragmentData();
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        arrayList.add(this.createNameFragment);
        this.mList.add(this.curvedSlopeChoiceTypeFragment);
        this.mList.add(this.curvedSlopeStep1Fragment);
        this.mList.add(this.curvedSlopeStep2Fragment);
        this.mList.add(this.curvedSlopeStep3Fragment);
        Iterator<BaseProjectFragment> it = this.mList.iterator();
        while (it.hasNext()) {
            this.adapter.addFragment(it.next(), "");
        }
        this.binding.viewPager2.setAdapter(this.adapter);
        this.binding.viewPager2.setCurrentItem(this.pagePosition, false);
        this.binding.viewPager2.setUserInputEnabled(false);
        this.binding.viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeCreateActivity.1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                CurvedSlopeCreateActivity.this.pagePosition = i;
            }
        });
    }

    private void setFragmentData() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("initEntity", this.initEntity);
        bundle.putSerializable("baseProEntity", this.curvedSlopeEntity);
        this.createNameFragment.setArguments(bundle);
        this.curvedSlopeChoiceTypeFragment.setArguments(bundle);
        this.curvedSlopeStep1Fragment.setArguments(bundle);
        this.curvedSlopeStep2Fragment.setArguments(bundle);
        this.curvedSlopeStep3Fragment.setArguments(bundle);
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
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeCreateActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                CurvedSlopeCreateActivity.$r8$lambda$8Zd8R2qFcV5ZLyjgCAwNU6qnctM(this.f$0, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$8Zd8R2qFcV5ZLyjgCAwNU6qnctM(CurvedSlopeCreateActivity curvedSlopeCreateActivity, ActivityResult activityResult) {
        Intent data;
        curvedSlopeCreateActivity.getClass();
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        double[] doubleArrayExtra = data.getDoubleArrayExtra("coords");
        String[] stringArrayExtra = data.getStringArrayExtra("cors");
        if (stringArrayExtra != null) {
            if (stringArrayExtra.length > 0) {
                curvedSlopeCreateActivity.curvedSlopeEntity.coordinateSystem = stringArrayExtra[0];
            }
            if (stringArrayExtra.length > 1) {
                curvedSlopeCreateActivity.curvedSlopeEntity.corsName = stringArrayExtra[1];
            }
            if (stringArrayExtra.length > 2) {
                curvedSlopeCreateActivity.curvedSlopeEntity.corsHost = stringArrayExtra[2];
            }
            if (stringArrayExtra.length > 3) {
                curvedSlopeCreateActivity.curvedSlopeEntity.corsPort = Integer.parseInt(stringArrayExtra[3]);
            }
            if (stringArrayExtra.length > 4) {
                curvedSlopeCreateActivity.curvedSlopeEntity.corsUserName = stringArrayExtra[4];
            }
            if (stringArrayExtra.length > 5) {
                curvedSlopeCreateActivity.curvedSlopeEntity.corsPassword = stringArrayExtra[5];
            }
            if (stringArrayExtra.length > 6) {
                curvedSlopeCreateActivity.curvedSlopeEntity.corsMount = stringArrayExtra[6];
            }
        } else {
            curvedSlopeCreateActivity.saveCors();
        }
        if (doubleArrayExtra != null) {
            if (curvedSlopeCreateActivity.mList.get(curvedSlopeCreateActivity.pagePosition) instanceof CurvedSlopeStep1Fragment) {
                curvedSlopeCreateActivity.coordsStep1.setValue(doubleArrayExtra);
            } else if (curvedSlopeCreateActivity.mList.get(curvedSlopeCreateActivity.pagePosition) instanceof CurvedSlopeStep2Fragment) {
                curvedSlopeCreateActivity.coordsStep2.setValue(doubleArrayExtra);
            } else if (curvedSlopeCreateActivity.mList.get(curvedSlopeCreateActivity.pagePosition) instanceof CurvedSlopeStep3Fragment) {
                curvedSlopeCreateActivity.coordsStep3.setValue(doubleArrayExtra);
            }
        }
    }

    private void saveCors() {
        if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) != NtripTypeEnum.NTRIP.getType()) {
            this.curvedSlopeEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
            this.curvedSlopeEntity.corsName = getString(R$string.x_fixed);
            CurvedSlopeEntity curvedSlopeEntity = this.curvedSlopeEntity;
            curvedSlopeEntity.corsHost = "rss.rtkiot.cn";
            curvedSlopeEntity.corsPort = 8001;
            curvedSlopeEntity.corsMount = "AUTO";
            return;
        }
        List<CorsEntity> listQueryCORS = DatabaseManager.getInstance(this).queryCORS(null);
        this.curvedSlopeEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
        this.curvedSlopeEntity.corsName = listQueryCORS.get(0).corsName;
        this.curvedSlopeEntity.corsHost = listQueryCORS.get(0).host;
        this.curvedSlopeEntity.corsPort = listQueryCORS.get(0).port;
        this.curvedSlopeEntity.corsMount = listQueryCORS.get(0).mount;
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
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeCreateActivity.2
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("back") && bundle.getBoolean("confirm")) {
                    CurvedSlopeCreateActivity.this.finish();
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
        this.binding.topBar.tvTitle.setText(getString(R$string.curved_slope));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void ivBackClick() {
        this.binding.topBar.lltBackTb.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.curvedslope.CurvedSlopeCreateActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CurvedSlopeCreateActivity.this.pagePosition != 0) {
                    CurvedSlopeCreateActivity curvedSlopeCreateActivity = CurvedSlopeCreateActivity.this;
                    curvedSlopeCreateActivity.showTipDialog(curvedSlopeCreateActivity.getString(R$string.exit_editing), CurvedSlopeCreateActivity.this.getString(R$string.confirm), null, "back");
                } else {
                    CurvedSlopeCreateActivity.this.finish();
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.curvedSlopeStep1Fragment.insNavi(insNavi, this.mAvailable);
        this.curvedSlopeStep3Fragment.insNavi(insNavi, this.mAvailable);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        this.mGGA = gGAEntity;
        this.curvedSlopeStep1Fragment.gga(gGAEntity);
        this.curvedSlopeStep3Fragment.gga(gGAEntity);
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
