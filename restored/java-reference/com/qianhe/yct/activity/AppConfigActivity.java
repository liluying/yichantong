package com.qianhe.yct.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.view.View;
import android.widget.FrameLayout;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.ViewPagerAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityAppConfigBinding;
import com.qianhe.yct.fragment.BaseConfigFragment;
import com.qianhe.yct.fragment.H5ConfigFragment;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class AppConfigActivity extends BaseActivity {
    private ActivityAppConfigBinding binding;
    private int count;
    private final MutableLiveData isAdmin = new MutableLiveData();
    public boolean keyboardShown;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    public LiveData observeAdmin() {
        return this.isAdmin;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityAppConfigBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        final ViewPagerAdapter viewPagerAdapter = new ViewPagerAdapter(this);
        H5ConfigFragment h5ConfigFragment = new H5ConfigFragment();
        BaseConfigFragment baseConfigFragment = new BaseConfigFragment();
        viewPagerAdapter.addFragment(h5ConfigFragment, getString(R$string.level));
        if (MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.BASE)) {
            viewPagerAdapter.addFragment(baseConfigFragment, getString(R$string.base));
        } else {
            this.binding.tabLayout.setVisibility(8);
        }
        this.binding.tabLayout.setTabMode(0);
        this.binding.tabLayout.setTabGravity(1);
        this.binding.viewPager2.setAdapter(viewPagerAdapter);
        ActivityAppConfigBinding activityAppConfigBinding = this.binding;
        new TabLayoutMediator(activityAppConfigBinding.tabLayout, activityAppConfigBinding.viewPager2, false, true, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.qianhe.yct.activity.AppConfigActivity.1
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public void onConfigureTab(TabLayout.Tab tab, int i) {
                tab.setText(viewPagerAdapter.getTitle(i));
            }
        }).attach();
        this.binding.viewPager2.setAdapter(viewPagerAdapter);
    }

    public void restartApp() {
        Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getPackageName());
        launchIntentForPackage.addFlags(268468224);
        startActivity(launchIntentForPackage);
        Process.killProcess(Process.myPid());
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.app_config);
        this.binding.topBar.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.AppConfigActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AppConfigActivity appConfigActivity = AppConfigActivity.this;
                if (!appConfigActivity.keyboardShown) {
                    appConfigActivity.onBackPressed();
                } else {
                    appConfigActivity.keyboardShown = false;
                }
            }
        });
        this.binding.tvAdmin.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.AppConfigActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AppConfigActivity.this.count++;
                if (AppConfigActivity.this.count >= 10) {
                    AppConfigActivity.this.count = 0;
                    AppConfigActivity.this.isAdmin.setValue(Boolean.TRUE);
                }
            }
        });
        return null;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }
}
