package com.qianhe.yct.activity.debug;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.qianhe.baselib.bean.BestPosEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.GPDOPEntity;
import com.qianhe.baselib.bean.GSTEntity;
import com.qianhe.baselib.bean.InsAhrs;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.DebugLogCache;
import com.qianhe.baselib.utils.FileUtil;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.RtkConstant;
import com.qianhe.rtkclientlib.event.DebugData;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.ViewPagerAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityDebugBinding;
import com.qianhe.yct.fragment.DebugElevChartFragment;
import com.qianhe.yct.fragment.DebugLogviewFragment;
import java.io.IOException;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DebugActivity extends BaseActivity {
    private ViewPagerAdapter adapter;
    private ActivityDebugBinding binding;
    private final MutableLiveData insNaviLiveData = new MutableLiveData();
    private final MutableLiveData insAhrsLiveData = new MutableLiveData();
    private final MutableLiveData sensorInfoLiveData = new MutableLiveData();
    private final MutableLiveData ggaLiveData = new MutableLiveData();
    private final MutableLiveData bestposLiveData = new MutableLiveData();
    private final MutableLiveData gstLiveData = new MutableLiveData();
    private final MutableLiveData gpdopLiveData = new MutableLiveData();
    private final MutableLiveData debugLiveData = new MutableLiveData();
    private DeviceType deviceType = DeviceType.ZPY;

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        return null;
    }

    public LiveData observeInsNavi() {
        return this.insNaviLiveData;
    }

    public LiveData observeInsAhrs() {
        return this.insAhrsLiveData;
    }

    public LiveData observeSensorInfo() {
        return this.sensorInfoLiveData;
    }

    public LiveData observeGGA() {
        return this.ggaLiveData;
    }

    public LiveData observeBestpos() {
        return this.bestposLiveData;
    }

    public LiveData observeGst() {
        return this.gstLiveData;
    }

    public LiveData observeGpdop() {
        return this.gpdopLiveData;
    }

    public LiveData observeDebugdata() {
        return this.debugLiveData;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @SuppressLint({"SourceLockedOrientationActivity"})
    protected void onCreate(Bundle bundle) throws IOException {
        this.binding = ActivityDebugBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        RtkConstant.debug = true;
        FileUtil.mkOrderDir(this);
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
        DeviceType deviceType = DeviceType.ZPY;
        if (multiBluetoothManager.isDeviceConnected(deviceType)) {
            this.deviceType = deviceType;
        } else {
            this.deviceType = DeviceType.BASE;
        }
        View childAt = this.binding.viewPager.getChildAt(0);
        if (childAt instanceof RecyclerView) {
            childAt.setOverScrollMode(2);
        }
        this.adapter = new ViewPagerAdapter(this);
        DebugLogviewFragment debugLogviewFragment = new DebugLogviewFragment();
        DebugElevChartFragment debugElevChartFragment = new DebugElevChartFragment();
        this.adapter.addFragment(debugLogviewFragment, getString(R$string.message_output));
        this.adapter.addFragment(debugElevChartFragment, getString(R$string.elev_info));
        this.binding.tabLayout.setTabMode(0);
        this.binding.tabLayout.setTabGravity(1);
        this.binding.viewPager.setAdapter(this.adapter);
        ActivityDebugBinding activityDebugBinding = this.binding;
        new TabLayoutMediator(activityDebugBinding.tabLayout, activityDebugBinding.viewPager, false, true, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.qianhe.yct.activity.debug.DebugActivity.1
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public void onConfigureTab(TabLayout.Tab tab, int i) {
                tab.setText(DebugActivity.this.adapter.getTitle(i));
            }
        }).attach();
        this.binding.viewPager.setNestedScrollingEnabled(true);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        EventBus.getDefault().post(new OrderBean(this.deviceType, "LOG,DOP,ONTIME,1"));
        EventBus.getDefault().post(new OrderBean(this.deviceType, "LOG,SNR,ONTIME,1"));
        EventBus.getDefault().post(new OrderBean(this.deviceType, "LOG,GST,ONTIME,1"));
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        ViewPagerAdapter viewPagerAdapter;
        if (gGAEntity == null) {
            return;
        }
        if ((MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY) && gGAEntity.deviceType == DeviceType.BASE) || isDestroyed() || (viewPagerAdapter = this.adapter) == null || viewPagerAdapter.getItemCount() <= 0) {
            return;
        }
        this.ggaLiveData.setValue(gGAEntity);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BestPosEntity bestPosEntity) {
        ViewPagerAdapter viewPagerAdapter;
        if (bestPosEntity == null) {
            return;
        }
        if ((MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY) && bestPosEntity.deviceType == DeviceType.BASE) || isDestroyed() || (viewPagerAdapter = this.adapter) == null || viewPagerAdapter.getItemCount() <= 0) {
            return;
        }
        this.bestposLiveData.setValue(bestPosEntity);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        ViewPagerAdapter viewPagerAdapter;
        if ((MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY) && insNavi.deviceType == DeviceType.BASE) || isDestroyed() || (viewPagerAdapter = this.adapter) == null || viewPagerAdapter.getItemCount() <= 0) {
            return;
        }
        this.insNaviLiveData.setValue(insNavi);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(InsAhrs insAhrs) {
        ViewPagerAdapter viewPagerAdapter;
        if (insAhrs == null || insAhrs.deviceType == DeviceType.BASE || isDestroyed() || (viewPagerAdapter = this.adapter) == null || viewPagerAdapter.getItemCount() <= 0) {
            return;
        }
        this.insAhrsLiveData.setValue(insAhrs);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDebugSensorInfo(SensorInfoEvent sensorInfoEvent) {
        ViewPagerAdapter viewPagerAdapter;
        if (sensorInfoEvent == null || isDestroyed() || (viewPagerAdapter = this.adapter) == null || viewPagerAdapter.getItemCount() <= 0) {
            return;
        }
        this.sensorInfoLiveData.setValue(sensorInfoEvent);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GSTEntity gSTEntity) {
        ViewPagerAdapter viewPagerAdapter;
        if (gSTEntity == null || isDestroyed() || (viewPagerAdapter = this.adapter) == null || viewPagerAdapter.getItemCount() <= 0) {
            return;
        }
        this.gstLiveData.setValue(gSTEntity);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GPDOPEntity gPDOPEntity) {
        ViewPagerAdapter viewPagerAdapter;
        if (gPDOPEntity == null) {
            return;
        }
        if ((MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY) && gPDOPEntity.deviceType == DeviceType.BASE) || isDestroyed() || (viewPagerAdapter = this.adapter) == null || viewPagerAdapter.getItemCount() <= 0) {
            return;
        }
        this.gpdopLiveData.setValue(gPDOPEntity);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(DebugData debugData) {
        ViewPagerAdapter viewPagerAdapter;
        if ((MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY) && debugData.deviceType == DeviceType.BASE) || isDestroyed() || (viewPagerAdapter = this.adapter) == null || viewPagerAdapter.getItemCount() <= 0) {
            return;
        }
        this.debugLiveData.setValue(debugData);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
        if (MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY)) {
            DeviceType deviceType = gETHorizontalAngleRange.deviceType;
            DeviceType deviceType2 = DeviceType.NONE;
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() throws IOException {
        super.onBackPressed();
        DebugLogCache.stop();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        RtkConstant.debug = false;
        EventBus.getDefault().unregister(this);
        EventBus.getDefault().post(new OrderBean(this.deviceType, "UNLOG,DOP"));
        EventBus.getDefault().post(new OrderBean(this.deviceType, "UNLOG,SNR"));
        EventBus.getDefault().post(new OrderBean(this.deviceType, "LOG,GST,ONTIME," + this.appConfig.details.gst_interval));
    }
}
