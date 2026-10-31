package com.qianhe.yct.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.qianhe.baselib.bean.BaseStationEntity;
import com.qianhe.baselib.bean.BestPosEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.GPDOPEntity;
import com.qianhe.baselib.bean.GSTEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.bean.SAVEntity;
import com.qianhe.baselib.bean.SNREntity;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.ConnectModeEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.ViewPagerAdapter;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.bean.AppConfig;
import com.qianhe.yct.databinding.ActivityLocateInfoBinding;
import com.qianhe.yct.event.BluetoothConnectStateEvent;
import com.qianhe.yct.fragment.BaseStationInfoFragment;
import com.qianhe.yct.fragment.DemoCustomDataFragment;
import com.qianhe.yct.fragment.LocationFragment;
import com.qianhe.yct.fragment.SNRFragment;
import com.qianhe.yct.fragment.StarMapFragment;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class LocateInfoActivity extends BaseActivity {
    private static RetainState sRetain;
    private BaseStationInfoFragment basestationInfoFragment;
    private ActivityLocateInfoBinding binding;
    private DemoCustomDataFragment demoCustomDataFragment;
    private LocationFragment locationFragment;
    private SNRFragment snrFragment;
    private StarMapFragment starMapFragment;
    private final MutableLiveData insNaviLiveData = new MutableLiveData();
    private DeviceType mDeviceType = DeviceType.ZPY;

    public static class RetainState {
        public boolean baseInited;
        public BaseStationEntity baseStation;
        public BestPosEntity bestPos;
        public GPDOPEntity dop;
        public GGAEntity gga;
        public GSTEntity gst;
        public InsNavi ins;
        public boolean locationInited;
        public boolean snrStreamInited;
        public boolean starMapInited;
        int tabIndex;
        public final List<SNREntity> snrList = new ArrayList();
        public final List<Integer> savPRNList = new ArrayList();
        public final List<Integer> sauPRNList = new ArrayList();
        public final List<SAVEntity> savEntities = new ArrayList();
        public final List<Integer> starSavPRN = new ArrayList();
        public final List<Integer> starSauPRN = new ArrayList();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    public static RetainState retain() {
        if (sRetain == null) {
            sRetain = new RetainState();
        }
        return sRetain;
    }

    public static RetainState peekRetain() {
        return sRetain;
    }

    public LiveData observeInsNavi() {
        return this.insNaviLiveData;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityLocateInfoBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        final ViewPagerAdapter viewPagerAdapter = new ViewPagerAdapter(this);
        this.locationFragment = new LocationFragment();
        this.basestationInfoFragment = new BaseStationInfoFragment();
        this.starMapFragment = new StarMapFragment();
        this.snrFragment = new SNRFragment();
        this.demoCustomDataFragment = new DemoCustomDataFragment();
        viewPagerAdapter.addFragment(this.locationFragment, getString(R$string.locate_info));
        if (MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY)) {
            viewPagerAdapter.addFragment(this.basestationInfoFragment, getString(R$string.base));
        }
        viewPagerAdapter.addFragment(this.starMapFragment, getString(R$string.star_map));
        viewPagerAdapter.addFragment(this.snrFragment, getString(R$string.snr));
        if (this.mSp.getInt("mode", ConnectModeEnum.BLE.getType()) == ConnectModeEnum.DEMO.getType()) {
            viewPagerAdapter.addFragment(this.demoCustomDataFragment, getString(R$string.simulated_data));
        }
        this.binding.tabLayout.setTabMode(0);
        this.binding.tabLayout.setTabGravity(1);
        this.binding.viewPager.setAdapter(viewPagerAdapter);
        ActivityLocateInfoBinding activityLocateInfoBinding = this.binding;
        new TabLayoutMediator(activityLocateInfoBinding.tabLayout, activityLocateInfoBinding.viewPager, false, false, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.qianhe.yct.activity.LocateInfoActivity.1
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public void onConfigureTab(TabLayout.Tab tab, int i) {
                tab.setText(viewPagerAdapter.getTitle(i));
            }
        }).attach();
        this.binding.viewPager.setNestedScrollingEnabled(false);
        View childAt = this.binding.viewPager.getChildAt(0);
        if (childAt instanceof RecyclerView) {
            RecyclerView recyclerView = (RecyclerView) childAt;
            recyclerView.setOverScrollMode(2);
            recyclerView.setItemAnimator(null);
        }
        bindTabClickInstantSwitch();
        RetainState retainState = sRetain;
        if (retainState != null) {
            int i = retainState.tabIndex;
            if (i >= 0 && i < viewPagerAdapter.getItemCount()) {
                this.binding.viewPager.setCurrentItem(i, false);
            }
            InsNavi insNavi = sRetain.ins;
            if (insNavi != null) {
                this.insNaviLiveData.setValue(insNavi);
            }
        }
    }

    private void bindTabClickInstantSwitch() {
        for (int i = 0; i < this.binding.tabLayout.getTabCount(); i++) {
            final TabLayout.Tab tabAt = this.binding.tabLayout.getTabAt(i);
            if (tabAt != null) {
                tabAt.view.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.LocateInfoActivity$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        LocateInfoActivity.m1428$r8$lambda$OnMcFVUNe912FDMqKgGuvlz07o(this.f$0, tabAt, view);
                    }
                });
            }
        }
    }

    /* renamed from: $r8$lambda$OnMcFVU-Ne912FDMqKgGuvlz07o, reason: not valid java name */
    public static /* synthetic */ void m1428$r8$lambda$OnMcFVUNe912FDMqKgGuvlz07o(LocateInfoActivity locateInfoActivity, TabLayout.Tab tab, View view) {
        locateInfoActivity.getClass();
        int position = tab.getPosition();
        if (position < 0 || position == locateInfoActivity.binding.viewPager.getCurrentItem()) {
            return;
        }
        locateInfoActivity.binding.tabLayout.selectTab(tab, false);
        locateInfoActivity.binding.tabLayout.setScrollPosition(position, 0.0f, true);
        locateInfoActivity.switchPageInstant(position);
    }

    private void switchPageInstant(int i) {
        ViewPager2 viewPager2 = this.binding.viewPager;
        View childAt = viewPager2.getChildAt(0);
        if (childAt instanceof RecyclerView) {
            RecyclerView recyclerView = (RecyclerView) childAt;
            recyclerView.stopScroll();
            recyclerView.scrollToPosition(i);
        }
        if (viewPager2.getCurrentItem() != i) {
            viewPager2.setCurrentItem(i, false);
        }
    }

    public int getTabLayoutHeigth() {
        return this.binding.tabLayout.getHeight();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
        DeviceType deviceType = DeviceType.ZPY;
        if (multiBluetoothManager.isDeviceConnected(deviceType)) {
            this.mDeviceType = deviceType;
        } else {
            MultiBluetoothManager multiBluetoothManager2 = MultiBluetoothManager.getInstance(this);
            DeviceType deviceType2 = DeviceType.BASE;
            if (multiBluetoothManager2.isDeviceConnected(deviceType2)) {
                this.mDeviceType = deviceType2;
            }
        }
        EventBus.getDefault().post(new OrderBean(this.mDeviceType, "LOG,DOP,ONTIME," + this.appConfig.details.dop_interval));
        EventBus.getDefault().post(new OrderBean(this.mDeviceType, "LOG,REFSTATION,ONTIME,1"));
        EventBus.getDefault().post(new OrderBean(this.mDeviceType, "LOG,GST,ONTIME," + this.appConfig.details.gst_interval));
        RetainState retainState = sRetain;
        if (retainState != null && retainState.snrStreamInited) {
            AppConfig.Details details = this.appConfig.details;
            requestData(details.snr_interval, details.sav_interval, details.sau_interval);
        } else {
            requestData(1.0f, 1.0f, 1.0f);
        }
    }

    public void requestData(float f, float f2, float f3) {
        EventBus.getDefault().post(new OrderBean(this.mDeviceType, "LOG,SNR,ONTIME," + f));
        EventBus.getDefault().post(new OrderBean(this.mDeviceType, "LOG,SAV,ONTIME," + f2));
        EventBus.getDefault().post(new OrderBean(this.mDeviceType, "LOG,SAU,ONTIME," + f3));
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothConnectStateEvent bluetoothConnectStateEvent) {
        super.onEventMessage(bluetoothConnectStateEvent);
        if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.CONNECTED.getState()) {
            initData();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(getString(R$string.locate_info));
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        if (insNavi == null) {
            return;
        }
        if (MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY) && insNavi.deviceType == DeviceType.BASE) {
            return;
        }
        retain().ins = insNavi;
        if (isDestroyed()) {
            return;
        }
        this.insNaviLiveData.setValue(insNavi);
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        if (isChangingConfigurations()) {
            if (this.binding != null) {
                retain().tabIndex = this.binding.viewPager.getCurrentItem();
            }
        } else {
            sRetain = null;
            EventBus.getDefault().post(new OrderBean(this.mDeviceType, "UNLOG,DOP"));
            EventBus.getDefault().post(new OrderBean(this.mDeviceType, "UNLOG,SNR"));
            EventBus.getDefault().post(new OrderBean(this.mDeviceType, "UNLOG,SAV"));
            EventBus.getDefault().post(new OrderBean(this.mDeviceType, "UNLOG,SAU"));
        }
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
