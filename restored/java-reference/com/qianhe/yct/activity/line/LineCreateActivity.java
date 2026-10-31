package com.qianhe.yct.activity.line;

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
import com.qianhe.baselib.bean.LineEntity;
import com.qianhe.baselib.enums.CoordinateSystemEnum;
import com.qianhe.baselib.enums.NtripTypeEnum;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.CollectCoordsActivity;
import com.qianhe.yct.activity.pointlib.PointLibraryIntent;
import com.qianhe.yct.adapter.ViewPagerAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseProjectFragment;
import com.qianhe.yct.databinding.ActivityLineCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.fragment.CreateProjectNameFragment;
import com.qianhe.yct.fragment.LineStep1Fragment;
import com.qianhe.yct.fragment.LineStep2Fragment;
import com.qianhe.yct.fragment.LineStep3Fragment;
import com.qianhe.yct.fragment.LineStep4Fragment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LineCreateActivity extends BaseActivity {
    private ViewPagerAdapter adapter;
    private ActivityLineCreateBinding binding;
    private final MutableLiveData coordsStep1 = new MutableLiveData();
    private final MutableLiveData coordsStep2 = new MutableLiveData();
    private CreateProjectNameFragment createNameFragment;
    private long id;
    private LineEntity initEntity;
    private int initPage;
    private ActivityResultLauncher launcher;
    private LineEntity lineEntity;
    private LineStep1Fragment lineStep1Fragment;
    private LineStep2Fragment lineStep2Fragment;
    private LineStep3Fragment lineStep3Fragment;
    private LineStep4Fragment lineStep4Fragment;
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

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityLineCreateBinding.inflate(getLayoutInflater());
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
                    this.lineEntity = (LineEntity) listQueryEntityById.get(0);
                }
            } else {
                LineEntity lineEntity = new LineEntity();
                this.lineEntity = lineEntity;
                lineEntity.type = this.proType;
            }
            LineEntity lineEntity2 = (LineEntity) new Gson().fromJson(new Gson().toJson(this.lineEntity), LineEntity.class);
            this.initEntity = lineEntity2;
            LineEntity lineEntity3 = this.lineEntity;
            lineEntity2.id = lineEntity3.id;
            lineEntity2.name = lineEntity3.name;
            if (TextUtils.isEmpty(lineEntity3.corsName)) {
                saveCors();
            }
        }
        initViewPager();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        LineEntity lineEntity = this.lineEntity;
        if (lineEntity != null) {
            bundle.putSerializable("lineEntity", lineEntity);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.lineEntity = (LineEntity) bundle.getSerializable("lineEntity");
        setFragmentData();
    }

    private void initViewPager() {
        this.adapter = new ViewPagerAdapter(this);
        this.createNameFragment = new CreateProjectNameFragment();
        this.lineStep1Fragment = new LineStep1Fragment();
        this.lineStep2Fragment = new LineStep2Fragment();
        this.lineStep3Fragment = new LineStep3Fragment();
        this.lineStep4Fragment = new LineStep4Fragment();
        setFragmentData();
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        arrayList.add(this.createNameFragment);
        this.mList.add(this.lineStep1Fragment);
        this.mList.add(this.lineStep2Fragment);
        this.mList.add(this.lineStep3Fragment);
        this.mList.add(this.lineStep4Fragment);
        Iterator<BaseProjectFragment> it = this.mList.iterator();
        while (it.hasNext()) {
            this.adapter.addFragment(it.next(), "");
        }
        this.binding.viewPager2.setAdapter(this.adapter);
        this.binding.viewPager2.setCurrentItem(this.pagePosition, false);
        this.binding.viewPager2.setUserInputEnabled(false);
        this.binding.viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.qianhe.yct.activity.line.LineCreateActivity.1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                LineCreateActivity.this.pagePosition = i;
            }
        });
    }

    private void setFragmentData() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("initEntity", this.initEntity);
        bundle.putSerializable("baseProEntity", this.lineEntity);
        this.createNameFragment.setArguments(bundle);
        this.lineStep1Fragment.setArguments(bundle);
        this.lineStep2Fragment.setArguments(bundle);
        this.lineStep3Fragment.setArguments(bundle);
        this.lineStep4Fragment.setArguments(bundle);
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
        this.launcher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback() { // from class: com.qianhe.yct.activity.line.LineCreateActivity$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                LineCreateActivity.$r8$lambda$n2VWS5ksLdH9DZtq4CYJA3F0it4(this.f$0, (ActivityResult) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$n2VWS5ksLdH9DZtq4CYJA3F0it4(LineCreateActivity lineCreateActivity, ActivityResult activityResult) {
        Intent data;
        lineCreateActivity.getClass();
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        double[] doubleArrayExtra = data.getDoubleArrayExtra("coords");
        String[] stringArrayExtra = data.getStringArrayExtra("cors");
        if (stringArrayExtra != null) {
            if (stringArrayExtra.length > 0) {
                lineCreateActivity.lineEntity.coordinateSystem = stringArrayExtra[0];
            }
            if (stringArrayExtra.length > 1) {
                lineCreateActivity.lineEntity.corsName = stringArrayExtra[1];
            }
            if (stringArrayExtra.length > 2) {
                lineCreateActivity.lineEntity.corsHost = stringArrayExtra[2];
            }
            if (stringArrayExtra.length > 3) {
                lineCreateActivity.lineEntity.corsPort = Integer.parseInt(stringArrayExtra[3]);
            }
            if (stringArrayExtra.length > 4) {
                lineCreateActivity.lineEntity.corsUserName = stringArrayExtra[4];
            }
            if (stringArrayExtra.length > 5) {
                lineCreateActivity.lineEntity.corsPassword = stringArrayExtra[5];
            }
            if (stringArrayExtra.length > 6) {
                lineCreateActivity.lineEntity.corsMount = stringArrayExtra[6];
            }
        } else {
            lineCreateActivity.saveCors();
        }
        if (doubleArrayExtra != null) {
            if (lineCreateActivity.mList.get(lineCreateActivity.pagePosition) instanceof LineStep1Fragment) {
                lineCreateActivity.coordsStep1.setValue(doubleArrayExtra);
            } else if (lineCreateActivity.mList.get(lineCreateActivity.pagePosition) instanceof LineStep2Fragment) {
                lineCreateActivity.coordsStep2.setValue(doubleArrayExtra);
            }
        }
    }

    private void saveCors() {
        if (this.mSp.getInt(Constant.NTRIPTYPE, NtripTypeEnum.SDK.getType()) != NtripTypeEnum.NTRIP.getType()) {
            this.lineEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
            this.lineEntity.corsName = getString(R$string.x_fixed);
            LineEntity lineEntity = this.lineEntity;
            lineEntity.corsHost = "rss.rtkiot.cn";
            lineEntity.corsPort = 8001;
            lineEntity.corsMount = "AUTO";
            return;
        }
        List<CorsEntity> listQueryCORS = DatabaseManager.getInstance(this).queryCORS(null);
        this.lineEntity.coordinateSystem = CoordinateSystemEnum.CGCS2000.name();
        this.lineEntity.corsName = listQueryCORS.get(0).corsName;
        this.lineEntity.corsHost = listQueryCORS.get(0).host;
        this.lineEntity.corsPort = listQueryCORS.get(0).port;
        this.lineEntity.corsMount = listQueryCORS.get(0).mount;
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
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.line.LineCreateActivity.2
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("back") && bundle.getBoolean("confirm")) {
                    LineCreateActivity.this.finish();
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
        this.binding.topBar.tvTitle.setText(getString(R$string.line));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void ivBackClick() {
        this.binding.topBar.lltBackTb.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.line.LineCreateActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LineCreateActivity.this.pagePosition != 0) {
                    LineCreateActivity lineCreateActivity = LineCreateActivity.this;
                    lineCreateActivity.showTipDialog(lineCreateActivity.getString(R$string.exit_editing), LineCreateActivity.this.getString(R$string.confirm), null, "back");
                } else {
                    LineCreateActivity.this.finish();
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.lineStep1Fragment.insNavi(insNavi, this.mAvailable);
        this.lineStep2Fragment.insNavi(insNavi, this.mAvailable);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        this.mGGA = gGAEntity;
        this.lineStep1Fragment.gga(gGAEntity);
        this.lineStep2Fragment.gga(gGAEntity);
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
