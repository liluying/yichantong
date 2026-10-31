package com.qianhe.yct.activity.basestation;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentResultListener;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.ntripclientlib.bean.AuthResult;
import com.qianhe.rtkclientlib.event.FeaturesEvent;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.GetBaseStationResponse;
import com.qianhe.rtkclientlib.event.GetDataLinkResponse;
import com.qianhe.rtkclientlib.event.GetVPNResponse;
import com.qianhe.rtkclientlib.event.MobileNetEntity;
import com.qianhe.rtkclientlib.event.MobileStateResponse;
import com.qianhe.rtkclientlib.event.SetBaseNetworkResponse;
import com.qianhe.rtkclientlib.event.SetBaseRadioResponse;
import com.qianhe.rtkclientlib.event.SetVPNResponse;
import com.qianhe.rtkclientlib.event.VpnStatusResponse;
import com.qianhe.rtkclientlib.event.WifiStateResponse;
import com.qianhe.yct.R$string;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityBasestationConfigBinding;
import com.qianhe.yct.dialog.ChooseListDialogFragment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BaseStationConfigActivity extends BaseActivity {
    private ActivityBasestationConfigBinding binding;
    private String currentDiffFormat;
    private String[] diffFormats;
    private boolean getMobile;
    private boolean getMobileStatus;
    private boolean isBaseSupportMobile;
    private boolean isBaseSupportRadio;
    private boolean isReset;
    private MobileNetEntity mobileNetEntity;
    private MobileStateResponse mobileStateResponse;
    private ScheduledExecutorService timeExecutor;
    private ScheduledFuture<?> timeFuture;
    private Handler mHandler = new Handler(Looper.getMainLooper());
    private String mDataLinkType = "";

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(AuthResult authResult) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityBasestationConfigBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        this.binding.rltVPN.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationConfigActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseStationConfigActivity baseStationConfigActivity = BaseStationConfigActivity.this;
                baseStationConfigActivity.showLoadingDialog(baseStationConfigActivity.getString(R$string.please_wait));
                EventBus eventBus = EventBus.getDefault();
                DeviceType deviceType = DeviceType.BASE;
                StringBuilder sb = new StringBuilder();
                sb.append("SET,ZXVPN,");
                sb.append(BaseStationConfigActivity.this.binding.ivVPN.isSelected() ? "DISABLE" : "ENABLE");
                sb.append(",vpn.rtkiot.cn,8222,TEST,zxvpn,");
                sb.append(BaseStationConfigActivity.stringToHex("zxvpn"));
                eventBus.post(new OrderBean(deviceType, sb.toString()));
            }
        });
        this.binding.rltWorkMode.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationConfigActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseStationConfigActivity.this.startActivity(new Intent(BaseStationConfigActivity.this, (Class<?>) BaseStationWorkModeConfigActivity.class));
            }
        });
        this.binding.rltDataLink.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationConfigActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseStationConfigActivity.this.startActivity(new Intent(BaseStationConfigActivity.this, (Class<?>) BaseStationDataLinkConfigActivity.class));
            }
        });
        this.binding.rltNetwork.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationConfigActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseStationConfigActivity.this.startActivity(new Intent(BaseStationConfigActivity.this, (Class<?>) BaseStationNetworkLinkActivity.class));
            }
        });
        this.binding.rltReset.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationConfigActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseStationConfigActivity baseStationConfigActivity = BaseStationConfigActivity.this;
                baseStationConfigActivity.showTipDialog(baseStationConfigActivity.getString(R$string.reset_base_config), BaseStationConfigActivity.this.getString(R$string.confirm), null, "basereset");
            }
        });
        this.mHandler.postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.basestation.BaseStationConfigActivity.6
            @Override // java.lang.Runnable
            public void run() {
                if (BaseStationConfigActivity.this.isDestroyed() || BaseStationConfigActivity.this.binding.progressBar.getVisibility() == 8) {
                    return;
                }
                BaseStationConfigActivity.this.binding.progressBar.setVisibility(8);
                BaseStationConfigActivity.this.binding.ivVPN.setVisibility(0);
            }
        }, 5000L);
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        super.onResume();
        EventBus.getDefault().register(this);
        EventBus eventBus = EventBus.getDefault();
        DeviceType deviceType = DeviceType.BASE;
        eventBus.post(new OrderBean(deviceType, "GET,FEATURES"));
        EventBus.getDefault().post(new OrderBean(deviceType, "GET,DATALINK"));
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(FeaturesEvent featuresEvent) {
        DeviceType deviceType = featuresEvent.deviceType;
        DeviceType deviceType2 = DeviceType.BASE;
        if (deviceType != deviceType2) {
            return;
        }
        if (featuresEvent.value.contains("ZXVPN")) {
            this.binding.rltVPN.setVisibility(0);
            EventBus.getDefault().post(new OrderBean(deviceType2, "GET,ZXVPN"));
            startTimer();
        } else {
            this.binding.rltVPN.setVisibility(8);
        }
        this.isBaseSupportMobile = featuresEvent.value.contains("MOBILE");
        this.isBaseSupportRadio = featuresEvent.value.contains("RADIO");
        this.binding.rltNetwork.setVisibility((featuresEvent.value.contains("WIFI") || featuresEvent.value.contains("MOBILE")) ? 0 : 8);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetDataLinkResponse getDataLinkResponse) {
        if (getDataLinkResponse.deviceType != DeviceType.BASE) {
            return;
        }
        this.mDataLinkType = getDataLinkResponse.type;
    }

    private void startTimer() {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.timeExecutor = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.timeFuture = scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.qianhe.yct.activity.basestation.BaseStationConfigActivity.7
            @Override // java.lang.Runnable
            public void run() {
                if (BaseStationConfigActivity.this.binding.ivVPN.isSelected()) {
                    EventBus.getDefault().post(new OrderBean("GET,ZXVPN_STATUS"));
                }
                BaseStationConfigActivity.this.getMobile = true;
                EventBus.getDefault().post(new OrderBean(DeviceType.BASE, "GET,MOBILE"));
            }
        }, 0L, 5000L, TimeUnit.MILLISECONDS);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(WifiStateResponse wifiStateResponse) {
        if (wifiStateResponse.deviceType != DeviceType.BASE) {
            return;
        }
        if (!wifiStateResponse.mode.equals("AP") && wifiStateResponse.state.equals("UP")) {
            this.binding.tvSimStaus.setText(String.format("(%s)", getString(R$string.online)));
            this.getMobile = false;
            return;
        }
        this.isReset = false;
        MobileStateResponse mobileStateResponse = this.mobileStateResponse;
        if (mobileStateResponse != null && TextUtils.isEmpty(mobileStateResponse.state)) {
            this.binding.tvSimStaus.setText(String.format("(%s)", getString(R$string.sim_card_not_detected)));
            return;
        }
        MobileStateResponse mobileStateResponse2 = this.mobileStateResponse;
        if (mobileStateResponse2 != null && mobileStateResponse2.state.equals("ONLINE")) {
            this.binding.tvSimStaus.setText(String.format("(%s)", getString(R$string.online)));
        } else {
            this.binding.tvSimStaus.setText(String.format("(%s)", getString(R$string.offline)));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(MobileNetEntity mobileNetEntity) {
        DeviceType deviceType = mobileNetEntity.deviceType;
        DeviceType deviceType2 = DeviceType.BASE;
        if (deviceType == deviceType2 && this.getMobile) {
            this.mobileNetEntity = mobileNetEntity;
            if (mobileNetEntity.state.equals("ENABLE")) {
                this.getMobileStatus = true;
                EventBus.getDefault().post(new OrderBean(deviceType2, "GET,MOBILE_STATUS"));
            } else if (mobileNetEntity.state.equals("DISABLE")) {
                this.getMobileStatus = false;
                this.mobileStateResponse = null;
            }
            if (!mobileNetEntity.state.equals("ONLINE")) {
                EventBus.getDefault().post(new OrderBean(deviceType2, "GET,WLAN0_STATUS"));
            }
            if (this.isReset) {
                this.isReset = false;
                resetBasestationConfig();
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(MobileStateResponse mobileStateResponse) {
        DeviceType deviceType = mobileStateResponse.deviceType;
        DeviceType deviceType2 = DeviceType.BASE;
        if (deviceType == deviceType2 && this.getMobileStatus) {
            this.mobileStateResponse = mobileStateResponse;
            if (!TextUtils.isEmpty(mobileStateResponse.state)) {
                if (mobileStateResponse.state.equals("ONLINE")) {
                    this.binding.tvSimStaus.setText(String.format("(%s)", getString(R$string.online)));
                } else {
                    mobileStateResponse.state.equals("OFFLINE");
                }
            }
            if (mobileStateResponse.state.equals("ONLINE")) {
                return;
            }
            EventBus.getDefault().post(new OrderBean(deviceType2, "GET,WLAN0_STATUS"));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SetBaseNetworkResponse setBaseNetworkResponse) {
        if (setBaseNetworkResponse.deviceType != DeviceType.BASE) {
            return;
        }
        cancelLoadingDialog();
        showTipDialog(getString(setBaseNetworkResponse.line.contains("OK") ? R$string.already_reset : R$string.reset_failed), getString(R$string.ok), null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SetBaseRadioResponse setBaseRadioResponse) {
        if (setBaseRadioResponse.deviceType != DeviceType.BASE) {
            return;
        }
        cancelLoadingDialog();
        showTipDialog(getString(setBaseRadioResponse.line.contains("OK") ? R$string.already_reset : R$string.reset_failed), getString(R$string.ok), null);
    }

    public static String stringToHex(String str) {
        StringBuilder sb = new StringBuilder();
        for (char c : str.toCharArray()) {
            sb.append(String.format("%02x", Integer.valueOf(c)));
        }
        return sb.toString();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        EventBus eventBus = EventBus.getDefault();
        DeviceType deviceType = DeviceType.BASE;
        eventBus.post(new OrderBean(deviceType, "GET,SERIAL"));
        EventBus.getDefault().post(new OrderBean(deviceType, "GET,BASE"));
        getSupportFragmentManager().setFragmentResultListener("basereset", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationConfigActivity.8
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                if ("basereset".equals(str) && bundle.getBoolean("confirm")) {
                    if (BaseStationConfigActivity.this.isBaseSupportMobile && BaseStationConfigActivity.this.isBaseSupportRadio) {
                        BaseStationConfigActivity.this.showResetDataLinkDialog();
                        return;
                    }
                    if (BaseStationConfigActivity.this.isBaseSupportMobile) {
                        BaseStationConfigActivity.this.resetToNetworkDataLink();
                    } else if (BaseStationConfigActivity.this.isBaseSupportRadio) {
                        BaseStationConfigActivity.this.resetToRadioDataLink();
                    } else {
                        BaseStationConfigActivity baseStationConfigActivity = BaseStationConfigActivity.this;
                        baseStationConfigActivity.showTipDialog(baseStationConfigActivity.getString(R$string.base_not_support_reset), BaseStationConfigActivity.this.getString(R$string.ok), null);
                    }
                }
            }
        });
        getSupportFragmentManager().setFragmentResultListener("baseresetdatalink", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.basestation.BaseStationConfigActivity.9
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList;
                if (!"baseresetdatalink".equals(str) || (stringArrayList = bundle.getStringArrayList("list")) == null || stringArrayList.isEmpty()) {
                    return;
                }
                int i = bundle.getInt("index");
                if (stringArrayList.get(i).equals(BaseStationConfigActivity.this.getString(R$string.reset_to_network_datalink))) {
                    BaseStationConfigActivity.this.resetToNetworkDataLink();
                } else if (stringArrayList.get(i).equals(BaseStationConfigActivity.this.getString(R$string.reset_to_radio_datalink))) {
                    BaseStationConfigActivity.this.resetToRadioDataLink();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showResetDataLinkDialog() {
        ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
        chooseListDialogFragment.show(getSupportFragmentManager(), "BaseResetDataLinkDialog");
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.isBaseSupportMobile) {
            arrayList.add(getString(R$string.reset_to_network_datalink));
        }
        arrayList.add(getString(R$string.reset_to_radio_datalink));
        Bundle bundle = new Bundle();
        bundle.putString(Proj4Keyword.title, getString(R$string.please_select_reset_datalink));
        bundle.putStringArrayList("list", arrayList);
        bundle.putString("requestKey", "baseresetdatalink");
        chooseListDialogFragment.setArguments(bundle);
    }

    private void performCommonBaseReset() {
        showLoadingDialog(getString(R$string.please_wait));
        String string = this.mSp.getString("base_id", "0");
        EventBus eventBus = EventBus.getDefault();
        DeviceType deviceType = DeviceType.BASE;
        eventBus.post(new OrderBean(deviceType, "SET,ZXVPN,DISABLE,vpn.rtkiot.cn,8222,TEST,zxvpn," + stringToHex("zxvpn")));
        EventBus.getDefault().post(new OrderBean(deviceType, "SET,MODE,BASE"));
        EventBus.getDefault().post(new OrderBean(deviceType, "SET,ANTENNA_HEIGHT,PHASE,0"));
        String[] strArr = this.diffFormats;
        if (strArr != null && !Arrays.asList(strArr).contains(this.currentDiffFormat)) {
            String str = this.diffFormats[0];
        }
        EventBus.getDefault().post(new OrderBean(deviceType, "SET,BASE," + string + "," + this.appConfig.details.base_height_cutoff_angle + "," + this.appConfig.details.base_pdop_limit + ",0|0|0,ENCA,AUTO"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetToNetworkDataLink() {
        performCommonBaseReset();
        EventBus eventBus = EventBus.getDefault();
        DeviceType deviceType = DeviceType.BASE;
        eventBus.post(new OrderBean(deviceType, "SET,DATALINK,NETWORK"));
        EventBus.getDefault().post(new OrderBean(deviceType, "SET,WLAN0,AP"));
        if (this.mobileNetEntity != null) {
            resetBasestationConfig();
        } else {
            this.isReset = true;
            EventBus.getDefault().post(new OrderBean(deviceType, "GET,MOBILE"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetToRadioDataLink() {
        performCommonBaseReset();
        EventBus eventBus = EventBus.getDefault();
        DeviceType deviceType = DeviceType.BASE;
        eventBus.post(new OrderBean(deviceType, "SET,DATALINK,RADIO"));
        EventBus.getDefault().post(new OrderBean(deviceType, "SET,RADIO,1,205,HIGH"));
    }

    private void resetBasestationConfig() {
        String string = this.mSp.getString("base_deviceSn", "");
        String strSubstring = string.length() > 6 ? string.substring(string.length() - 6) : string;
        String str = LanguagePrefs.isZH(this) ? this.appConfig.details.base_host : this.appConfig.details.base_host_xfix;
        EventBus.getDefault().post(new OrderBean(DeviceType.BASE, "SET,NETWORK,NTRIP," + str + "," + this.appConfig.details.base_port + "," + string + "," + string + "," + strSubstring + "," + this.mobileNetEntity.apnName + "," + this.mobileNetEntity.apnUser + "," + this.mobileNetEntity.apnPsw + ",2.0"));
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(getString(R$string.base_station_config));
        return this.binding.topBar.getRoot();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetBaseStationResponse getBaseStationResponse) {
        String str = getBaseStationResponse.diffFormat;
        this.currentDiffFormat = str;
        String str2 = getBaseStationResponse.dataformatList;
        if (str2 != null) {
            this.diffFormats = str2.split("\\|");
        } else {
            this.diffFormats = new String[]{str};
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetVPNResponse getVPNResponse) {
        cancelLoadingDialog();
        this.binding.progressBar.setVisibility(8);
        this.binding.ivVPN.setVisibility(0);
        if (getVPNResponse == null || TextUtils.isEmpty(getVPNResponse.line) || getVPNResponse.line.length() <= 2) {
            return;
        }
        this.binding.ivVPN.setSelected(getVPNResponse.line.split(",")[2].equals("ENABLE"));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SetVPNResponse setVPNResponse) {
        cancelLoadingDialog();
        if (setVPNResponse != null) {
            if (setVPNResponse.line.contains("ENABLE") && setVPNResponse.line.contains("OK")) {
                this.binding.ivVPN.setSelected(true);
            } else if (setVPNResponse.line.contains("DISABLE") && setVPNResponse.line.contains("OK")) {
                this.binding.ivVPN.setSelected(false);
                this.binding.tvVpn.setText(getString(R$string.remote_technical_support));
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(VpnStatusResponse vpnStatusResponse) {
        String string;
        cancelLoadingDialog();
        if (vpnStatusResponse != null) {
            if (this.binding.tvSimStaus.getText().toString().contains(getString(R$string.online)) && this.binding.ivVPN.isSelected()) {
                string = getString(R$string.remote_technical_support) + " (" + getString(R$string.online) + ")";
            } else if (vpnStatusResponse.line.contains("OFFLINE") || (vpnStatusResponse.line.contains("ONLINE") && this.binding.tvSimStaus.getText().toString().contains(getString(R$string.offline)))) {
                string = getString(R$string.remote_technical_support) + " (" + getString(R$string.offline) + ")";
            } else {
                string = getString(R$string.remote_technical_support);
            }
            this.binding.tvVpn.setText(string);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
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

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.mHandler.removeCallbacksAndMessages(null);
    }
}
