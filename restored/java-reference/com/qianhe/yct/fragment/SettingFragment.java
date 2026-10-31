package com.qianhe.yct.fragment;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.fragment.app.FragmentResultListener;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.ConnectModeEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.event.DeviceModelEvent;
import com.qianhe.rtkclientlib.event.FeaturesEvent;
import com.qianhe.yct.MainActivity;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.AboutAppActivity;
import com.qianhe.yct.activity.AppConfigActivity;
import com.qianhe.yct.activity.DealerActivity;
import com.qianhe.yct.activity.RTKInfoActivity;
import com.qianhe.yct.activity.ZeroingActivity;
import com.qianhe.yct.activity.debug.DebugActivity;
import com.qianhe.yct.activity.debug.DebugUpgradefmwActivity;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseFragment;
import com.qianhe.yct.databinding.FragmentSettingBinding;
import com.qianhe.yct.dialog.ChooseListDialogFragment;
import com.qianhe.yct.dialog.PasswordDialogFragment;
import com.qianhe.yct.dialog.ServerIpInputDialogFragment;
import com.qianhe.yct.enums.BluetoothActionEnum;
import com.qianhe.yct.event.ApkListResponse;
import com.qianhe.yct.event.BluetoothConnectActionEvent;
import com.qianhe.yct.event.DealerResponse;
import com.qianhe.yct.event.StartDemo;
import com.qianhe.yct.event.StopDemo;
import com.qianhe.yct.utils.NetworkDataLoader;
import com.qianhe.yct.utils.ServerEnvHelper;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class SettingFragment extends BaseFragment {
    private FragmentSettingBinding binding;
    private int count;
    private DealerResponse dealerResponse;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws JSONException {
        this.binding = FragmentSettingBinding.inflate(getLayoutInflater());
        EventBus.getDefault().register(this);
        initView();
        EventBus.getDefault().post(new OrderBean("GET,FEATURES"));
        if (((BaseActivity) requireActivity()).hasPermissions("basic")) {
            NetworkDataLoader.getInstance().getDealerList();
        }
        return this.binding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.binding.tvBaseInfo.setVisibility(MultiBluetoothManager.getInstance(requireContext()).isDeviceConnected(DeviceType.BASE) ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openRtkInfo(DeviceType deviceType) {
        Intent intent = new Intent(requireContext(), (Class<?>) RTKInfoActivity.class);
        intent.putExtra("deviceType", deviceType);
        startActivity(intent);
    }

    private void initView() {
        updateRtkIcon(MultiBluetoothManager.getInstance(requireContext()).getDeviceModel());
        this.binding.tvUserManage.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SettingFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (((BaseActivity) SettingFragment.this.requireActivity()).hasPermissions("basic")) {
                    ((BaseActivity) SettingFragment.this.requireActivity()).gotoUserManage();
                } else {
                    ((BaseActivity) SettingFragment.this.requireActivity()).checkPermissions("basic", true);
                }
            }
        });
        this.binding.tvDeviceManage.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SettingFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (((BaseActivity) SettingFragment.this.requireActivity()).hasPermissions("basic")) {
                    ((BaseActivity) SettingFragment.this.requireActivity()).gotoBluetoothActivity();
                } else {
                    ((BaseActivity) SettingFragment.this.requireActivity()).checkPermissions("basic", true);
                }
            }
        });
        this.binding.tvZeroing.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SettingFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (((BaseActivity) SettingFragment.this.requireActivity()).hasPermissions("basic")) {
                    SettingFragment.this.startActivity(new Intent(SettingFragment.this.requireContext(), (Class<?>) ZeroingActivity.class));
                } else {
                    ((BaseActivity) SettingFragment.this.requireActivity()).checkPermissions("basic", true);
                }
            }
        });
        this.binding.tvRtkInfo.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SettingFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (((BaseActivity) SettingFragment.this.requireActivity()).hasPermissions("basic")) {
                    SettingFragment.this.openRtkInfo(DeviceType.ZPY);
                } else {
                    ((BaseActivity) SettingFragment.this.requireActivity()).checkPermissions("basic", true);
                }
            }
        });
        this.binding.tvBaseInfo.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SettingFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (((BaseActivity) SettingFragment.this.requireActivity()).hasPermissions("basic")) {
                    SettingFragment.this.openRtkInfo(DeviceType.BASE);
                } else {
                    ((BaseActivity) SettingFragment.this.requireActivity()).checkPermissions("basic", true);
                }
            }
        });
        this.binding.tvDealer.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SettingFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (((BaseActivity) SettingFragment.this.requireActivity()).hasPermissions("basic")) {
                    if (SettingFragment.this.dealerResponse == null || SettingFragment.this.dealerResponse.contact_info == null || SettingFragment.this.dealerResponse.contact_info.isEmpty()) {
                        return;
                    }
                    Intent intent = new Intent(SettingFragment.this.requireContext(), (Class<?>) DealerActivity.class);
                    intent.putExtra("dealerResponse", SettingFragment.this.dealerResponse);
                    SettingFragment.this.startActivity(intent);
                    return;
                }
                ((BaseActivity) SettingFragment.this.requireActivity()).checkPermissions("basic", true);
            }
        });
        this.binding.tvConfig.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SettingFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (((BaseActivity) SettingFragment.this.requireActivity()).hasPermissions("basic")) {
                    SettingFragment.this.startActivity(new Intent(SettingFragment.this.requireContext(), (Class<?>) AppConfigActivity.class));
                } else {
                    ((BaseActivity) SettingFragment.this.requireActivity()).checkPermissions("basic", true);
                }
            }
        });
        this.binding.tvAboutApp.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SettingFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SettingFragment.this.startActivity(new Intent(SettingFragment.this.requireActivity(), (Class<?>) AboutAppActivity.class));
            }
        });
        this.binding.tvVersion.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.fragment.SettingFragment.9
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (((BaseActivity) SettingFragment.this.requireActivity()).hasPermissions("basic")) {
                    PasswordDialogFragment passwordDialogFragment = new PasswordDialogFragment();
                    passwordDialogFragment.show(SettingFragment.this.getChildFragmentManager(), "PasswordDialogFragment");
                    Bundle bundle = new Bundle();
                    bundle.putString("requestKey", "admin");
                    passwordDialogFragment.setArguments(bundle);
                    return false;
                }
                ((BaseActivity) SettingFragment.this.requireActivity()).checkPermissions("basic", true);
                return false;
            }
        });
        bindVersionText();
        this.binding.tvVersion.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.fragment.SettingFragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SettingFragment.this.count++;
                if (SettingFragment.this.count == 10) {
                    SettingFragment.this.count = 0;
                    PasswordDialogFragment passwordDialogFragment = new PasswordDialogFragment();
                    Bundle bundle = new Bundle();
                    bundle.putString("requestKey", "logdetails");
                    passwordDialogFragment.setArguments(bundle);
                    passwordDialogFragment.show(SettingFragment.this.getChildFragmentManager(), "PasswordDialogFragment");
                }
            }
        });
        getChildFragmentManager().setFragmentResultListener("admin", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.SettingFragment$$ExternalSyntheticLambda0
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                SettingFragment.$r8$lambda$RdFPbRRUV_wgnavu2AhqliO4agk(this.f$0, str, bundle);
            }
        });
        getChildFragmentManager().setFragmentResultListener("logdetails", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.SettingFragment$$ExternalSyntheticLambda1
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                SettingFragment.m2546$r8$lambda$6WqTWo6ziaB7476_Wy5EmQDPM(this.f$0, str, bundle);
            }
        });
        getChildFragmentManager().setFragmentResultListener("server_env", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.SettingFragment$$ExternalSyntheticLambda2
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                SettingFragment.m2547$r8$lambda$w0Fg3JAvL9XSoq2V9rNWQl97ZE(this.f$0, str, bundle);
            }
        });
        getChildFragmentManager().setFragmentResultListener("server_ip", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.SettingFragment$$ExternalSyntheticLambda3
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                SettingFragment.$r8$lambda$yNvMZu7r0X90BUu_37NEdnxlEUE(this.f$0, str, bundle);
            }
        });
        getChildFragmentManager().setFragmentResultListener("admin_list", this, new FragmentResultListener() { // from class: com.qianhe.yct.fragment.SettingFragment$$ExternalSyntheticLambda4
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                SettingFragment.m2545$r8$lambda$iCB0PklbA1DgKMjL9UnDNzvNCk(this.f$0, str, bundle);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$RdFPbRRUV_wgnavu2AhqliO4agk(SettingFragment settingFragment, String str, Bundle bundle) {
        settingFragment.getClass();
        if (bundle.getBoolean("confirm")) {
            int i = settingFragment.mSp.getInt("mode", ConnectModeEnum.BLE.getType());
            ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
            chooseListDialogFragment.show(settingFragment.getChildFragmentManager(), "ChooseListDialogFragment");
            Bundle bundle2 = new Bundle();
            bundle2.putString(Proj4Keyword.title, settingFragment.getString(R$string.selection_mode));
            bundle2.putString("requestKey", "admin_list");
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add(settingFragment.getString(R$string.debug));
            arrayList.add(settingFragment.getString(i == 0 ? R$string.enable_demonstration : R$string.stop_demonstration));
            arrayList.add(settingFragment.getString(R$string.upgrade_firmware));
            bundle2.putStringArrayList("list", arrayList);
            chooseListDialogFragment.setArguments(bundle2);
        }
    }

    /* renamed from: $r8$lambda$6WqTWo6ziaB747-6_Wy5-EmQDPM, reason: not valid java name */
    public static /* synthetic */ void m2546$r8$lambda$6WqTWo6ziaB7476_Wy5EmQDPM(SettingFragment settingFragment, String str, Bundle bundle) {
        settingFragment.getClass();
        if (bundle.getBoolean("confirm")) {
            settingFragment.showServerEnvDialog();
        }
    }

    /* renamed from: $r8$lambda$w0Fg3JAv-L9XSoq2V9rNWQl97ZE, reason: not valid java name */
    public static /* synthetic */ void m2547$r8$lambda$w0Fg3JAvL9XSoq2V9rNWQl97ZE(SettingFragment settingFragment, String str, Bundle bundle) {
        settingFragment.getClass();
        int i = bundle.getInt("index");
        if (i == 0) {
            settingFragment.applyServerEnvAndRestart(false, null);
        } else if (i == 1) {
            settingFragment.showTestIpDialog();
        }
    }

    public static /* synthetic */ void $r8$lambda$yNvMZu7r0X90BUu_37NEdnxlEUE(SettingFragment settingFragment, String str, Bundle bundle) {
        settingFragment.getClass();
        settingFragment.applyServerEnvAndRestart(true, bundle.getString("ip"));
    }

    /* renamed from: $r8$lambda$-iCB0PklbA1DgKMjL9UnDNzvNCk, reason: not valid java name */
    public static /* synthetic */ void m2545$r8$lambda$iCB0PklbA1DgKMjL9UnDNzvNCk(SettingFragment settingFragment, String str, Bundle bundle) {
        settingFragment.getClass();
        int i = bundle.getInt("index");
        if (i == 0) {
            settingFragment.binding.tvVersion.postDelayed(new Runnable() { // from class: com.qianhe.yct.fragment.SettingFragment.11
                @Override // java.lang.Runnable
                public void run() {
                    if (SettingFragment.this.isDetached()) {
                        return;
                    }
                    SettingFragment.this.startActivity(new Intent(SettingFragment.this.requireContext(), (Class<?>) DebugActivity.class));
                }
            }, 200L);
            return;
        }
        if (i != 1) {
            if (i == 2) {
                settingFragment.startActivity(new Intent(settingFragment.requireContext(), (Class<?>) DebugUpgradefmwActivity.class));
                return;
            }
            return;
        }
        SharedPreferences sharedPreferences = settingFragment.mSp;
        ConnectModeEnum connectModeEnum = ConnectModeEnum.BLE;
        if (sharedPreferences.getInt("mode", connectModeEnum.getType()) == 0) {
            ((MainActivity) settingFragment.requireActivity()).startBlueService();
            EventBus.getDefault().post(new BluetoothConnectActionEvent(BluetoothActionEnum.DISCONNECT, "", DeviceType.ZPY));
            EventBus.getDefault().post("activeDisconnect");
            settingFragment.mSp.edit().putInt("mode", ConnectModeEnum.DEMO.getType()).commit();
            EventBus.getDefault().post(new StartDemo(1));
            return;
        }
        Toast.makeText(settingFragment.requireContext(), R$string.switch_blue_mode, 1).show();
        settingFragment.mSp.edit().putInt("mode", connectModeEnum.getType()).commit();
        EventBus.getDefault().post(new StopDemo());
        ((BaseActivity) settingFragment.requireActivity()).reConnect(DeviceType.ZPY);
    }

    private void bindVersionText() {
        String str = String.format(getString(R$string.app_version) + " v%s", "2.0.2609.109");
        if (ServerEnvHelper.isTestEnv()) {
            str = str + getString(R$string.test_env_mark);
        }
        this.binding.tvVersion.setText(str);
    }

    private void showServerEnvDialog() {
        ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString(Proj4Keyword.title, getString(R$string.select_server_env));
        bundle.putString("requestKey", "server_env");
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(getString(R$string.production_env));
        arrayList.add(getString(R$string.test_env));
        bundle.putStringArrayList("list", arrayList);
        chooseListDialogFragment.setArguments(bundle);
        chooseListDialogFragment.show(getChildFragmentManager(), "ChooseListDialogFragment");
    }

    private void showTestIpDialog() {
        ServerIpInputDialogFragment serverIpInputDialogFragment = new ServerIpInputDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString(Proj4Keyword.title, getString(R$string.enter_server_ip));
        bundle.putString("ip", ServerEnvHelper.getSavedTestIp());
        serverIpInputDialogFragment.setArguments(bundle);
        serverIpInputDialogFragment.show(getChildFragmentManager(), "ServerIpInputDialogFragment");
    }

    private void applyServerEnvAndRestart(boolean z, String str) {
        if (z) {
            ServerEnvHelper.saveTest(str);
        } else {
            ServerEnvHelper.saveProduction();
        }
        showLoadingDialog(getString(R$string.restarting));
        this.binding.tvVersion.postDelayed(new Runnable() { // from class: com.qianhe.yct.fragment.SettingFragment$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                SettingFragment.$r8$lambda$kbhAAZgZS_3t7_qVhhgXEAowQkI(this.f$0);
            }
        }, 300L);
    }

    public static /* synthetic */ void $r8$lambda$kbhAAZgZS_3t7_qVhhgXEAowQkI(SettingFragment settingFragment) {
        if (settingFragment.isAdded()) {
            ServerEnvHelper.restartApp(settingFragment.requireContext());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(FeaturesEvent featuresEvent) {
        if (featuresEvent.deviceType == DeviceType.ZPY) {
            if (featuresEvent.value.contains("EXCAVATOR2")) {
                this.binding.tvZeroing.setVisibility(8);
            } else {
                this.binding.tvZeroing.setVisibility(0);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(DeviceModelEvent deviceModelEvent) {
        updateRtkIcon(deviceModelEvent.deviceModel);
    }

    private void updateRtkIcon(int i) {
        int i2;
        if (i == 0) {
            i2 = R$drawable.icon_h5_info;
        } else if (i == 1) {
            i2 = R$drawable.icon_h5pro_info;
        } else {
            i2 = R$drawable.icon_ex30_info;
        }
        this.binding.tvRtkInfo.setCompoundDrawablesRelativeWithIntrinsicBounds(i2, 0, R$drawable.icon_arrow_right, 0);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(ApkListResponse apkListResponse) {
        ((BaseActivity) requireActivity()).cancelUpgradeingDialog();
        if (apkListResponse.state != 0) {
            ((BaseActivity) requireActivity()).showTipDialog(getString(R$string.deviceSn_empty), getString(R$string.ok), null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(DealerResponse dealerResponse) {
        List<DealerResponse.ContactInfo> list;
        this.dealerResponse = dealerResponse;
        this.binding.tvDealer.setVisibility((dealerResponse == null || (list = dealerResponse.contact_info) == null || list.isEmpty()) ? 8 : 0);
    }

    @Override // com.qianhe.yct.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
    }
}
