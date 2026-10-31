package com.qianhe.yct.activity.basestation;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.ViewPagerAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityBasestationNetworkLinkBinding;
import com.qianhe.yct.fragment.NetStateFragment;
import com.qianhe.yct.fragment.NetWorkConfigFragment;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BaseStationNetworkLinkActivity extends BaseActivity {
    private ActivityBasestationNetworkLinkBinding binding;

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

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityBasestationNetworkLinkBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        final ViewPagerAdapter viewPagerAdapter = new ViewPagerAdapter(this);
        viewPagerAdapter.addFragment(new NetWorkConfigFragment(), getString(R$string.network_config));
        viewPagerAdapter.addFragment(new NetStateFragment(), getString(R$string.network_status));
        this.binding.tabLayout.setTabMode(0);
        this.binding.tabLayout.setTabGravity(1);
        this.binding.viewPager.setAdapter(viewPagerAdapter);
        ActivityBasestationNetworkLinkBinding activityBasestationNetworkLinkBinding = this.binding;
        new TabLayoutMediator(activityBasestationNetworkLinkBinding.tabLayout, activityBasestationNetworkLinkBinding.viewPager, false, true, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.qianhe.yct.activity.basestation.BaseStationNetworkLinkActivity.1
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public void onConfigureTab(TabLayout.Tab tab, int i) {
                tab.setText(viewPagerAdapter.getTitle(i));
            }
        }).attach();
        this.binding.viewPager.setNestedScrollingEnabled(true);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(getString(R$string.network_link));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
