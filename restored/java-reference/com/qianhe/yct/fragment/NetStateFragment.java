package com.qianhe.yct.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.WifiRoleEnum;
import com.qianhe.rtkclientlib.event.MobileStateResponse;
import com.qianhe.rtkclientlib.event.WifiStateResponse;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseFragment;
import com.qianhe.yct.databinding.FragmentNetStateBinding;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class NetStateFragment extends BaseFragment {
    private FragmentNetStateBinding binding;
    private ScheduledExecutorService timeExecutor;
    private ScheduledFuture<?> timeFuture;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FragmentNetStateBinding fragmentNetStateBindingInflate = FragmentNetStateBinding.inflate(getLayoutInflater());
        this.binding = fragmentNetStateBindingInflate;
        return fragmentNetStateBindingInflate.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        EventBus.getDefault().register(this);
        startTimer();
    }

    private void startTimer() {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.timeExecutor = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.timeFuture = scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.qianhe.yct.fragment.NetStateFragment.1
            @Override // java.lang.Runnable
            public void run() {
                EventBus eventBus = EventBus.getDefault();
                DeviceType deviceType = DeviceType.BASE;
                eventBus.post(new OrderBean(deviceType, "GET,MOBILE_STATUS"));
                EventBus.getDefault().post(new OrderBean(deviceType, "GET,WLAN0_STATUS"));
            }
        }, 0L, 1000L, TimeUnit.MILLISECONDS);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(MobileStateResponse mobileStateResponse) {
        if (mobileStateResponse == null) {
            return;
        }
        if (TextUtils.isEmpty(mobileStateResponse.state)) {
            this.binding.tvMobileState.setText(getString(R$string.sim_card_not_detected));
        } else if (mobileStateResponse.state.equals("ONLINE")) {
            this.binding.tvMobileState.setText(R$string.online);
        } else if (mobileStateResponse.state.equals("OFFLINE")) {
            this.binding.tvMobileState.setText(R$string.offline);
        } else {
            this.binding.tvMobileState.setText(mobileStateResponse.state);
        }
        this.binding.tvSIMtype.setText(TextUtils.isEmpty(mobileStateResponse.type) ? getString(R$string.sim_card_not_detected) : mobileStateResponse.type);
        this.binding.tvSIMimei.setText(TextUtils.isEmpty(mobileStateResponse.type) ? "" : mobileStateResponse.imei);
        this.binding.tvSIMiccid.setText(TextUtils.isEmpty(mobileStateResponse.type) ? "" : mobileStateResponse.iccid);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(WifiStateResponse wifiStateResponse) {
        if (wifiStateResponse == null) {
            return;
        }
        this.binding.lltWifiStatus.setVisibility(wifiStateResponse.mode.equals(WifiRoleEnum.STATION.name()) ? 0 : 8);
        this.binding.tvMode.setText(getString(wifiStateResponse.mode.equals(WifiRoleEnum.DISABLE.name()) ? R$string.disable : wifiStateResponse.mode.equals(WifiRoleEnum.AP.name()) ? R$string.hotspot : R$string.client));
        this.binding.tvState.setText(getString(wifiStateResponse.state.equals("UP") ? R$string.connected : R$string.not_connected));
        this.binding.tvWifiName.setText(wifiStateResponse.SSID);
        this.binding.tvAddress.setText(wifiStateResponse.address);
        this.binding.tvMask.setText(wifiStateResponse.mask);
        this.binding.tvGateway.setText(wifiStateResponse.gateway);
        this.binding.tvDNS.setText(wifiStateResponse.dns);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        EventBus.getDefault().unregister(this);
        ScheduledFuture<?> scheduledFuture = this.timeFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = this.timeExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }
}
