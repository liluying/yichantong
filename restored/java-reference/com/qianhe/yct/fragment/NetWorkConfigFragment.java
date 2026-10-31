package com.qianhe.yct.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentResultListener;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.WifiRoleEnum;
import com.qianhe.rtkclientlib.event.FeaturesEvent;
import com.qianhe.rtkclientlib.event.MobileNetEntity;
import com.qianhe.rtkclientlib.event.MobileNetResponse;
import com.qianhe.rtkclientlib.event.Wlan0Entity;
import com.qianhe.rtkclientlib.event.Wlan0Response;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1;
import com.qianhe.yct.base.BaseFragment;
import com.qianhe.yct.databinding.FragmentNetworkConfigBinding;
import com.qianhe.yct.dialog.ChooseListDialogFragment;
import com.qianhe.yct.dialog.ChooseWifiDialogFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import java.util.ArrayList;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class NetWorkConfigFragment extends BaseFragment {
    private FragmentNetworkConfigBinding binding;
    private ChooseWifiDialogFragment chooseWifiDialogFragment;
    private final DeviceType deviceType = DeviceType.BASE;
    private boolean getFeatures;
    private boolean getMobileStatus;
    private boolean getWlanStatus;
    private Wlan0Entity wlan0Entity;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = FragmentNetworkConfigBinding.inflate(getLayoutInflater());
        EventBus.getDefault().register(this);
        initData();
        if (bundle == null) {
            this.getFeatures = true;
            EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,FEATURES"));
        } else {
            restoreData(bundle);
        }
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("wifiRole", this.binding.tvWifiRole.getText().toString().trim());
        bundle.putString("wifiName", this.binding.edtWifiName.getText().toString().trim());
        bundle.putString("wifiPassword", this.binding.edtWifiPassword.getText().toString().trim());
        bundle.putString("mobileNet", this.binding.tvMobileNet.getText().toString().trim());
        bundle.putString("APNname", this.binding.edtAPNname.getText().toString().trim());
        bundle.putString("APNuser", this.binding.edtAPNuser.getText().toString().trim());
        bundle.putString("APNPsw", this.binding.edtAPNPsw.getText().toString().trim());
        bundle.putInt("wifiItemVisible", this.binding.lltWifiItem.getVisibility());
        bundle.putInt("wifiConfigVisible", this.binding.lltWifiConfig.getVisibility());
        bundle.putInt("mobileItemVisible", this.binding.lltMobileItem.getVisibility());
        bundle.putInt("mobileConfigVisible", this.binding.lltMobileConfig.getVisibility());
    }

    private void restoreData(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        this.binding.tvWifiRole.setText(bundle.getString("wifiRole"));
        this.binding.edtWifiName.setText(bundle.getString("wifiName"));
        this.binding.edtWifiPassword.setText(bundle.getString("wifiPassword"));
        this.binding.tvMobileNet.setText(bundle.getString("mobileNet"));
        this.binding.edtAPNname.setText(bundle.getString("APNname"));
        this.binding.edtAPNuser.setText(bundle.getString("APNuser"));
        this.binding.edtAPNPsw.setText(bundle.getString("APNPsw"));
        this.binding.lltWifiItem.setVisibility(bundle.getInt("wifiItemVisible"));
        this.binding.lltWifiConfig.setVisibility(bundle.getInt("wifiConfigVisible"));
        this.binding.lltMobileItem.setVisibility(bundle.getInt("mobileItemVisible"));
        this.binding.lltMobileConfig.setVisibility(bundle.getInt("mobileConfigVisible"));
        updateScanWifiVisibility(this.binding.tvWifiRole.getText().toString().trim());
    }

    private void initData() {
        this.binding.tvWifiRole.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.NetWorkConfigFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(NetWorkConfigFragment.this.getChildFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString(Proj4Keyword.title, NetWorkConfigFragment.this.getString(R$string.please_select_wifi_mode));
                ArrayList<String> arrayList = new ArrayList<>(BaseStationWorkModeConfigActivity$3$$ExternalSyntheticBackport1.m(new Object[]{NetWorkConfigFragment.this.getString(R$string.disable), NetWorkConfigFragment.this.getString(R$string.client)}));
                bundle.putStringArrayList("list", arrayList);
                bundle.putInt("currentIndex", arrayList.indexOf(NetWorkConfigFragment.this.binding.tvWifiRole.getText().toString().trim()));
                bundle.putString("requestKey", "basewifirole");
                chooseListDialogFragment.setArguments(bundle);
            }
        });
        this.binding.ivScanWifi.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.NetWorkConfigFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NetWorkConfigFragment.this.scanWifi();
            }
        });
        this.binding.tvMobileNet.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.NetWorkConfigFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
                chooseListDialogFragment.show(NetWorkConfigFragment.this.getChildFragmentManager(), "ChooseListDialogFragment");
                Bundle bundle = new Bundle();
                bundle.putString(Proj4Keyword.title, NetWorkConfigFragment.this.getString(R$string.want_to_enable_mobile_network));
                final ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add(NetWorkConfigFragment.this.getString(R$string.enable));
                arrayList.add(NetWorkConfigFragment.this.getString(R$string.disable));
                bundle.putStringArrayList("list", arrayList);
                bundle.putInt("currentIndex", arrayList.indexOf(NetWorkConfigFragment.this.binding.tvMobileNet.getText().toString().trim()));
                chooseListDialogFragment.setArguments(bundle);
                chooseListDialogFragment.setOnConfirmListener(new ChooseListDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.NetWorkConfigFragment.3.1
                    @Override // com.qianhe.yct.dialog.ChooseListDialogFragment.OnConfirmListener
                    public void onConfirm(int i) {
                        NetWorkConfigFragment.this.binding.tvMobileNet.setText((CharSequence) arrayList.get(i));
                        NetWorkConfigFragment.this.binding.lltMobileConfig.setVisibility(i == 0 ? 0 : 8);
                    }
                });
            }
        });
        this.binding.tvSave.setOnClickListener(new AnonymousClass4());
        getChildFragmentManager().setFragmentResultListener("basewifirole", requireActivity(), new FragmentResultListener() { // from class: com.qianhe.yct.fragment.NetWorkConfigFragment.5
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList;
                if (!str.equals("basewifirole") || (stringArrayList = bundle.getStringArrayList("list")) == null || stringArrayList.isEmpty()) {
                    return;
                }
                int i = bundle.getInt("index");
                NetWorkConfigFragment.this.binding.tvWifiRole.setText(stringArrayList.get(i));
                if (i == 0) {
                    NetWorkConfigFragment.this.binding.lltWifiConfig.setVisibility(8);
                } else {
                    NetWorkConfigFragment.this.binding.lltWifiConfig.setVisibility(0);
                    NetWorkConfigFragment.this.binding.edtWifiName.setText("");
                    NetWorkConfigFragment.this.binding.edtWifiPassword.setText("");
                    NetWorkConfigFragment.this.binding.edtWifiPassword.setHint(NetWorkConfigFragment.this.getString(R$string.password_empty));
                }
                NetWorkConfigFragment.this.updateScanWifiVisibility(stringArrayList.get(i));
            }
        });
        getChildFragmentManager().setFragmentResultListener("wifilist", requireActivity(), new FragmentResultListener() { // from class: com.qianhe.yct.fragment.NetWorkConfigFragment.6
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                ArrayList<String> stringArrayList;
                if (!str.equals("wifilist") || (stringArrayList = bundle.getStringArrayList("list")) == null || stringArrayList.isEmpty()) {
                    return;
                }
                NetWorkConfigFragment.this.binding.edtWifiName.setText(stringArrayList.get(bundle.getInt("index")));
            }
        });
    }

    /* renamed from: com.qianhe.yct.fragment.NetWorkConfigFragment$4, reason: invalid class name */
    class AnonymousClass4 implements View.OnClickListener {
        AnonymousClass4() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NetWorkConfigFragment netWorkConfigFragment = NetWorkConfigFragment.this;
            netWorkConfigFragment.showTipDialog(netWorkConfigFragment.getString(R$string.sure_the_configuration), NetWorkConfigFragment.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.fragment.NetWorkConfigFragment.4.1
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    String str;
                    NetWorkConfigFragment netWorkConfigFragment2 = NetWorkConfigFragment.this;
                    String role = netWorkConfigFragment2.getRole(netWorkConfigFragment2.binding.tvWifiRole.getText().toString().trim());
                    String strTrim = NetWorkConfigFragment.this.binding.edtWifiName.getText().toString().trim();
                    String strTrim2 = NetWorkConfigFragment.this.binding.edtWifiPassword.getText().toString().trim();
                    if (!TextUtils.isEmpty(strTrim2) && strTrim2.length() < 8) {
                        NetWorkConfigFragment.this.binding.tvSave.postDelayed(new Runnable() { // from class: com.qianhe.yct.fragment.NetWorkConfigFragment.4.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (NetWorkConfigFragment.this.isDetached()) {
                                    return;
                                }
                                NetWorkConfigFragment netWorkConfigFragment3 = NetWorkConfigFragment.this;
                                netWorkConfigFragment3.showTipDialog(netWorkConfigFragment3.getString(R$string.wifi_password_format_error), NetWorkConfigFragment.this.getString(R$string.ok), null);
                            }
                        }, 100L);
                        return;
                    }
                    if (role.equals(WifiRoleEnum.STATION.name())) {
                        str = "SET,WLAN0," + role + "," + strTrim + "," + strTrim2 + ",DHCPC";
                    } else if (role.equals(WifiRoleEnum.AP.name())) {
                        str = "SET,WLAN0,AP," + strTrim + "," + strTrim2 + ",DHCPD";
                    } else {
                        str = "SET,WLAN0,DISABLE";
                    }
                    EventBus.getDefault().post(new OrderBean(NetWorkConfigFragment.this.deviceType, str));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getRole(String str) {
        if (str.equals(getString(R$string.disable))) {
            return WifiRoleEnum.DISABLE.name();
        }
        if (str.equals(getString(R$string.hotspot))) {
            return WifiRoleEnum.AP.name();
        }
        return str.equals(getString(R$string.client)) ? WifiRoleEnum.STATION.name() : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateScanWifiVisibility(String str) {
        this.binding.ivScanWifi.setVisibility(getString(R$string.client).equals(str) ? 0 : 8);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(FeaturesEvent featuresEvent) {
        if (featuresEvent.deviceType == DeviceType.BASE && this.getFeatures) {
            this.getFeatures = false;
            if (featuresEvent.value.contains("WIFI") || featuresEvent.value.contains("MOBILE")) {
                showLoadingDialog(getString(R$string.loading));
            }
            this.binding.lltWifiItem.setVisibility(featuresEvent.value.contains("WIFI") ? 0 : 8);
            this.binding.lltMobileItem.setVisibility(featuresEvent.value.contains("MOBILE") ? 0 : 8);
            this.getMobileStatus = true;
            if (featuresEvent.value.contains("WIFI")) {
                EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,MOBILE"));
            }
            this.getWlanStatus = true;
            if (featuresEvent.value.contains("MOBILE")) {
                EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,WLAN0"));
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(Wlan0Entity wlan0Entity) {
        cancelLoadingDialog();
        if (this.getWlanStatus) {
            this.getWlanStatus = false;
            this.wlan0Entity = wlan0Entity;
            String str = wlan0Entity.role;
            WifiRoleEnum wifiRoleEnum = WifiRoleEnum.DISABLE;
            String string = getString(str.equals(wifiRoleEnum.name()) ? R$string.disable : wlan0Entity.role.equals(WifiRoleEnum.AP.name()) ? R$string.hotspot : R$string.client);
            this.binding.tvWifiRole.setText(string);
            this.binding.lltWifiConfig.setVisibility(wlan0Entity.role.equals(wifiRoleEnum.name()) ? 8 : 0);
            updateScanWifiVisibility(string);
            this.binding.edtWifiName.setText(wlan0Entity.wifiName);
            if (TextUtils.isEmpty(wlan0Entity.wifiPassword)) {
                this.binding.edtWifiPassword.setText("");
                this.binding.edtWifiPassword.setHint(R$string.no_password_required);
            } else {
                this.binding.edtWifiPassword.setText(wlan0Entity.wifiPassword);
            }
            if (wlan0Entity.role.equals(WifiRoleEnum.AP.name())) {
                this.binding.edtWifiName.setText(this.mSp.getString("base_deviceSn", ""));
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(Wlan0Response wlan0Response) {
        if (wlan0Response.result.equalsIgnoreCase("OK")) {
            String strTrim = this.binding.edtAPNname.getText().toString().trim();
            String strTrim2 = this.binding.edtAPNuser.getText().toString().trim();
            String strTrim3 = this.binding.edtAPNPsw.getText().toString().trim();
            StringBuilder sb = new StringBuilder();
            sb.append("SET,MOBILE,");
            sb.append(this.binding.tvMobileNet.getText().toString().trim().equals(getString(R$string.enable)) ? "ENABLE" : "DISABLE");
            sb.append(",");
            sb.append(strTrim);
            sb.append(",");
            sb.append(strTrim2);
            sb.append(",");
            sb.append(strTrim3);
            EventBus.getDefault().post(new OrderBean(this.deviceType, sb.toString()));
            return;
        }
        this.binding.edtWifiPassword.post(new Runnable() { // from class: com.qianhe.yct.fragment.NetWorkConfigFragment.7
            @Override // java.lang.Runnable
            public void run() {
                NetWorkConfigFragment netWorkConfigFragment = NetWorkConfigFragment.this;
                netWorkConfigFragment.showTipDialog(netWorkConfigFragment.getString(R$string.wifi_config_fail), NetWorkConfigFragment.this.getString(R$string.ok), null);
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(MobileNetEntity mobileNetEntity) {
        cancelLoadingDialog();
        if (this.getMobileStatus) {
            this.getMobileStatus = false;
            this.binding.tvMobileNet.setText(getString(mobileNetEntity.state.equals("ENABLE") ? R$string.enable : R$string.disable));
            this.binding.lltMobileConfig.setVisibility(mobileNetEntity.state.equals("ENABLE") ? 0 : 8);
            this.binding.edtAPNname.setText(mobileNetEntity.apnName);
            this.binding.edtAPNuser.setText(mobileNetEntity.apnUser);
            this.binding.edtAPNPsw.setText(mobileNetEntity.apnPsw);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(final MobileNetResponse mobileNetResponse) {
        this.binding.tvSave.postDelayed(new Runnable() { // from class: com.qianhe.yct.fragment.NetWorkConfigFragment.8
            @Override // java.lang.Runnable
            public void run() {
                if (NetWorkConfigFragment.this.isDetached()) {
                    return;
                }
                if (mobileNetResponse.result.equalsIgnoreCase("OK")) {
                    NetWorkConfigFragment netWorkConfigFragment = NetWorkConfigFragment.this;
                    netWorkConfigFragment.showToastDialog(netWorkConfigFragment.getString(R$string.config_success));
                } else {
                    NetWorkConfigFragment netWorkConfigFragment2 = NetWorkConfigFragment.this;
                    netWorkConfigFragment2.showTipDialog(netWorkConfigFragment2.getString(R$string.mobile_network_config_fail), NetWorkConfigFragment.this.getString(R$string.ok), null);
                }
            }
        }, 100L);
    }

    public void scanWifi() {
        showLoadingDialog(getString(R$string.searching_for_wifi));
        ArrayList<String> arrayList = new ArrayList<>();
        WifiManager wifiManager = (WifiManager) requireContext().getApplicationContext().getSystemService("wifi");
        if (Build.VERSION.SDK_INT >= 29) {
            requireContext().registerReceiver(new WifiScanReceiver(wifiManager, arrayList), new IntentFilter("android.net.wifi.SCAN_RESULTS"));
            wifiManager.startScan();
        } else {
            for (ScanResult scanResult : wifiManager.getScanResults()) {
                if (!TextUtils.isEmpty(scanResult.SSID)) {
                    arrayList.add(scanResult.SSID);
                }
            }
            showWifiList(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showWifiList(ArrayList<String> arrayList) {
        cancelLoadingDialog();
        ChooseWifiDialogFragment chooseWifiDialogFragment = this.chooseWifiDialogFragment;
        if (chooseWifiDialogFragment != null && chooseWifiDialogFragment.getFragmentManager() != null) {
            this.chooseWifiDialogFragment.refreshData(arrayList);
            return;
        }
        ChooseWifiDialogFragment chooseWifiDialogFragment2 = new ChooseWifiDialogFragment();
        this.chooseWifiDialogFragment = chooseWifiDialogFragment2;
        chooseWifiDialogFragment2.show(getChildFragmentManager(), "ChooseWifiDialogFragment");
        Bundle bundle = new Bundle();
        bundle.putString(Proj4Keyword.title, getString(R$string.please_choose_wifi));
        bundle.putStringArrayList("list", arrayList);
        bundle.putString("currentName", this.binding.edtWifiName.getText().toString().trim());
        bundle.putString("requestKey", "wifilist");
        this.chooseWifiDialogFragment.setArguments(bundle);
    }

    private class WifiScanReceiver extends BroadcastReceiver {
        private final ArrayList<String> wifiList;
        private final WifiManager wifiManager;

        public WifiScanReceiver(WifiManager wifiManager, ArrayList<String> arrayList) {
            this.wifiManager = wifiManager;
            this.wifiList = arrayList;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.net.wifi.SCAN_RESULTS")) {
                for (ScanResult scanResult : this.wifiManager.getScanResults()) {
                    if (!TextUtils.isEmpty(scanResult.SSID)) {
                        this.wifiList.add(scanResult.SSID);
                    }
                }
                NetWorkConfigFragment.this.showWifiList(this.wifiList);
                context.unregisterReceiver(this);
            }
        }
    }

    @Override // com.qianhe.yct.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
    }
}
