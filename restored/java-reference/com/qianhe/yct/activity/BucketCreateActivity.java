package com.qianhe.yct.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentResultListener;
import com.google.gson.Gson;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.ViewPagerAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityBucketCreateBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.fragment.BucketCreateFragment;
import com.qianhe.yct.manage.AppConfigManager;
import java.util.ArrayList;
import java.util.Iterator;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BucketCreateActivity extends BaseActivity {
    private ActivityBucketCreateBinding binding;
    private ShovelEntity bucket;
    private BucketCreateFragment bucketCreateFragment;
    private ExcavatorEntity currentExcavator;
    private DatabaseManager databaseManager;
    private ShovelEntity initBucket;
    private long localId;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        int i;
        this.binding = ActivityBucketCreateBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.databaseManager = DatabaseManager.getInstance(this);
        Intent intent = getIntent();
        this.localId = intent.getLongExtra("localId", 0L);
        this.currentExcavator = (ExcavatorEntity) intent.getSerializableExtra("currentExcavator");
        long j = this.localId;
        if (j > 0) {
            this.bucket = this.databaseManager.queryShovelByLocalId(j);
        }
        if (this.bucket == null) {
            ShovelEntity shovelEntity = new ShovelEntity();
            this.bucket = shovelEntity;
            shovelEntity.showUnit = AppConfigManager.getInstance().getUnitPreference();
            ExcavatorEntity excavatorEntity = this.currentExcavator;
            if (excavatorEntity != null && (i = excavatorEntity.mode) > 0) {
                this.bucket.mode = i;
            }
        }
        ShovelEntity shovelEntity2 = (ShovelEntity) new Gson().fromJson(new Gson().toJson(this.bucket), ShovelEntity.class);
        this.initBucket = shovelEntity2;
        ShovelEntity shovelEntity3 = this.bucket;
        shovelEntity2.localId = shovelEntity3.localId;
        shovelEntity2.name = shovelEntity3.name;
        initViewPager();
    }

    private void initViewPager() {
        ViewPagerAdapter viewPagerAdapter = new ViewPagerAdapter(this);
        this.bucketCreateFragment = new BucketCreateFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("initBucket", this.initBucket);
        bundle.putSerializable("bucket", this.bucket);
        bundle.putBoolean("isSupportBucket", getIntent().getBooleanExtra("isSupportBucket", false));
        bundle.putSerializable("currentExcavator", this.currentExcavator);
        this.bucketCreateFragment.setArguments(bundle);
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.bucketCreateFragment);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            viewPagerAdapter.addFragment((Fragment) it.next(), "");
        }
        this.binding.viewPager2.setAdapter(viewPagerAdapter);
        this.binding.viewPager2.setUserInputEnabled(false);
        this.binding.viewPager2.setOffscreenPageLimit(1);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(this.localId > 0 ? R$string.modify : R$string.create);
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        BucketCreateFragment bucketCreateFragment = this.bucketCreateFragment;
        if (bucketCreateFragment != null) {
            bucketCreateFragment.gga(gGAEntity);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        BucketCreateFragment bucketCreateFragment = this.bucketCreateFragment;
        if (bucketCreateFragment != null) {
            bucketCreateFragment.insNavi(insNavi, this.mAvailable);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        getSupportFragmentManager().setFragmentResultListener("back", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.BucketCreateActivity.1
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if (str.equals("back") && bundle.getBoolean("confirm")) {
                    BucketCreateActivity.this.finish();
                }
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void ivBackClick() {
        this.binding.topBar.lltBackTb.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.BucketCreateActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.finish();
            }
        });
    }
}
