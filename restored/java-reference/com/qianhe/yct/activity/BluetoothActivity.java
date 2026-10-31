package com.qianhe.yct.activity;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.ConnectModeEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.client.BluetoothClient;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.RtkInfo;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.ViewPagerAdapter;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityBluetoothBinding;
import com.qianhe.yct.dialog.LoadingFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.enums.BluetoothActionEnum;
import com.qianhe.yct.event.BluetoothConnectActionEvent;
import com.qianhe.yct.event.BluetoothConnectStateEvent;
import com.qianhe.yct.event.BluetoothScanActionEvent;
import com.qianhe.yct.event.BluetoothScanStateEvent;
import com.qianhe.yct.event.HasCheckBasestation;
import com.qianhe.yct.event.StopDemo;
import com.qianhe.yct.fragment.BluetoothBaseFragment;
import com.qianhe.yct.fragment.BluetoothFragment;
import com.qianhe.yct.fragment.BluetoothH5Fragment;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BluetoothActivity extends BaseActivity {
    private ViewPagerAdapter adapter;
    private ActivityBluetoothBinding binding;
    private boolean flag;
    private boolean initialScanStarted;
    private int scanPageIndex;
    private boolean skipPairingUiRestoreAfterRotation;
    private boolean userInitiatedConnect;
    private final MutableLiveData scanStateLive = new MutableLiveData();
    private final MutableLiveData connectStateLive = new MutableLiveData();
    private int mPosition = -1;
    private int fragmentIndex = 0;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final Runnable restartScanAfterPairingCleared = new Runnable() { // from class: com.qianhe.yct.activity.BluetoothActivity$$ExternalSyntheticLambda3
        @Override // java.lang.Runnable
        public final void run() {
            BluetoothActivity.m1197$r8$lambda$SoUpdaCNyrLc3l1IKrpljemwQ(this.f$0);
        }
    };

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(RtkInfo rtkInfo) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    public void startInitialScanIfNeeded() {
        if (this.initialScanStarted || isDestroyed()) {
            return;
        }
        this.initialScanStarted = true;
        int i = this.mPosition;
        if (i < 0) {
            i = this.fragmentIndex;
        }
        EventBus.getDefault().post(new BluetoothScanActionEvent(BluetoothActionEnum.STARTSCAN, false, i));
    }

    private int activeTabIndex() {
        int i = this.mPosition;
        return i >= 0 ? i : this.fragmentIndex;
    }

    private void applyScanButtonUi(boolean z, int i) {
        boolean z2 = i == activeTabIndex();
        this.binding.tvScan.setSelected(z && z2);
        this.binding.tvScan.setText(getString((z && z2) ? R$string.scanning1 : R$string.rescan_ble));
        this.binding.progressBar.setVisibility((z && z2) ? 0 : 8);
    }

    private void applyScanIdleUi() {
        this.binding.tvScan.setSelected(false);
        this.binding.tvScan.setText(getString(R$string.rescan_ble));
        this.binding.progressBar.setVisibility(8);
    }

    public LiveData observeScanState() {
        return this.scanStateLive;
    }

    public LiveData observeConnectState() {
        return this.connectStateLive;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityBluetoothBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        if (bundle != null) {
            this.userInitiatedConnect = bundle.getBoolean("user_initiated_connect", false);
            this.skipPairingUiRestoreAfterRotation = true;
        }
        EventBus.getDefault().register(this);
        Intent intent = getIntent();
        if (intent != null) {
            this.fragmentIndex = intent.getIntExtra("fragmentIndex", 0);
        }
        initView();
        initViewpager();
        if (this.skipPairingUiRestoreAfterRotation) {
            forceDismissBluetoothPairingDialogs();
        }
    }

    private void initView() {
        int i = this.mSp.getInt("mode", ConnectModeEnum.BLE.getType());
        this.binding.rltScan.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.BluetoothActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BluetoothActivity.this.binding.tvScan.setSelected(!BluetoothActivity.this.binding.tvScan.isSelected());
                if (BluetoothActivity.this.binding.tvScan.isSelected()) {
                    Toast.makeText(BluetoothActivity.this, R$string.start_scan, 0).show();
                    BluetoothActivity.this.notifyStartScan();
                } else {
                    BluetoothActivity.this.binding.tvScan.setSelected(false);
                    BluetoothActivity.this.binding.tvScan.setText(BluetoothActivity.this.getString(R$string.rescan_ble));
                    BluetoothActivity.this.binding.progressBar.setVisibility(8);
                    BluetoothActivity.this.notifyStopScan();
                }
            }
        });
        this.binding.tvDisconnectNow.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.BluetoothActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DeviceType deviceType;
                BluetoothActivity bluetoothActivity = BluetoothActivity.this;
                bluetoothActivity.showToastDialog(bluetoothActivity.getString(R$string.disconnected));
                if (BluetoothActivity.this.mPosition == 0) {
                    EventBus.getDefault().post("activeDisconnect");
                    deviceType = DeviceType.ZPY;
                } else {
                    deviceType = DeviceType.BASE;
                }
                EventBus.getDefault().post(new BluetoothConnectActionEvent(BluetoothActionEnum.DISCONNECT, "", deviceType));
            }
        });
        this.binding.tvStopDemo.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.BluetoothActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Toast.makeText(BluetoothActivity.this, R$string.switch_blue_mode, 1).show();
                BluetoothActivity.this.refrshDemoState(ConnectModeEnum.DEMO.getType());
                ((BaseActivity) BluetoothActivity.this).mSp.edit().putInt("mode", ConnectModeEnum.BLE.getType()).commit();
                EventBus.getDefault().post(new StopDemo());
                BluetoothActivity.this.reConnect(DeviceType.ZPY);
                BluetoothActivity.this.finish();
            }
        });
        this.binding.tvDisconnectNow.setVisibility(!MultiBluetoothManager.getInstance(this).getAllConnectedDevices().isEmpty() ? 0 : 8);
        refrshDemoState(i);
        this.binding.tvClearPair.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.BluetoothActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BluetoothActivity bluetoothActivity = BluetoothActivity.this;
                bluetoothActivity.showTipDialog(bluetoothActivity.getString(R$string.clear_pairing_list_confirm), BluetoothActivity.this.getString(R$string.confirm), BluetoothActivity.this.getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.BluetoothActivity.4.1
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        BluetoothActivity.this.clearCurrentTabPairings();
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refrshDemoState(int i) {
        TabLayout tabLayout = this.binding.tabLayout;
        ConnectModeEnum connectModeEnum = ConnectModeEnum.BLE;
        tabLayout.setVisibility(i == connectModeEnum.getType() ? 0 : 8);
        this.binding.viewPager2.setVisibility(i == connectModeEnum.getType() ? 0 : 8);
        this.binding.tvClearPair.setVisibility(i == connectModeEnum.getType() ? 0 : 8);
        this.binding.lltDemo.setVisibility(i != connectModeEnum.getType() ? 0 : 8);
        TextView textView = this.binding.tvStopDemo;
        SharedPreferences sharedPreferences = this.mSp;
        ConnectModeEnum connectModeEnum2 = ConnectModeEnum.DEMO;
        textView.setEnabled(sharedPreferences.getInt("mode", connectModeEnum2.getType()) == connectModeEnum2.getType());
    }

    private void initViewpager() {
        View childAt = this.binding.viewPager2.getChildAt(0);
        if (childAt instanceof RecyclerView) {
            childAt.setOverScrollMode(2);
        }
        this.adapter = new ViewPagerAdapter(this);
        BluetoothH5Fragment bluetoothH5Fragment = new BluetoothH5Fragment();
        BluetoothBaseFragment bluetoothBaseFragment = new BluetoothBaseFragment();
        this.adapter.addFragment(bluetoothH5Fragment, getString(R$string.level));
        this.adapter.addFragment(bluetoothBaseFragment, getString(R$string.base));
        this.binding.tabLayout.setTabMode(0);
        this.binding.tabLayout.setTabGravity(1);
        this.binding.viewPager2.setAdapter(this.adapter);
        ActivityBluetoothBinding activityBluetoothBinding = this.binding;
        new TabLayoutMediator(activityBluetoothBinding.tabLayout, activityBluetoothBinding.viewPager2, false, true, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.qianhe.yct.activity.BluetoothActivity.5
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public void onConfigureTab(TabLayout.Tab tab, int i) {
                tab.setText(BluetoothActivity.this.adapter.getTitle(i));
            }
        }).attach();
        this.binding.viewPager2.setNestedScrollingEnabled(true);
        this.binding.viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.qianhe.yct.activity.BluetoothActivity.6
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                if (BluetoothActivity.this.mPosition != -1) {
                    if (i == 0) {
                        BluetoothActivity.this.binding.tvDisconnectNow.setVisibility(MultiBluetoothManager.getInstance(BluetoothActivity.this).isDeviceConnected(DeviceType.ZPY) ? 0 : 8);
                        EventBus.getDefault().post(new BluetoothScanActionEvent(BluetoothActionEnum.STOPSCAN, 1));
                    } else {
                        BluetoothActivity.this.binding.tvDisconnectNow.setVisibility(MultiBluetoothManager.getInstance(BluetoothActivity.this).isDeviceConnected(DeviceType.BASE) ? 0 : 8);
                        BluetoothActivity.this.binding.tvScan.postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.BluetoothActivity.6.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (BluetoothActivity.this.isDestroyed() || BluetoothActivity.this.scanPageIndex == 1) {
                                    return;
                                }
                                EventBus.getDefault().post(new BluetoothScanActionEvent(BluetoothActionEnum.STOPSCAN, 0));
                                EventBus.getDefault().post(new BluetoothScanActionEvent(BluetoothActionEnum.STARTSCAN, false, 1));
                            }
                        }, 600L);
                    }
                }
                BluetoothActivity.this.mPosition = i;
            }
        });
        this.binding.viewPager2.setOffscreenPageLimit(1);
        this.binding.viewPager2.setCurrentItem(this.fragmentIndex, false);
        this.binding.viewPager2.post(new Runnable() { // from class: com.qianhe.yct.activity.BluetoothActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.startInitialScanIfNeeded();
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() throws IOException {
        super.onResume();
        if (this.skipPairingUiRestoreAfterRotation) {
            this.handler.post(new Runnable() { // from class: com.qianhe.yct.activity.BluetoothActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.dismissPairingUiAfterRotation();
                }
            });
        }
        if (finishIfUserInitiatedConnectAlreadyDone()) {
            return;
        }
        if (this.flag && BluetoothAdapter.getDefaultAdapter() != null && !BluetoothAdapter.getDefaultAdapter().isEnabled()) {
            showTipDialog(getString(R$string.bluetooth_not_on), getString(R$string.start_ble_now), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.BluetoothActivity.7
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    if (BluetoothActivity.this.isDestroyed()) {
                        return;
                    }
                    BluetoothActivity.this.notifyStartScan();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    BluetoothActivity.this.binding.tvScan.setText(R$string.rescan_ble);
                    BluetoothActivity.this.binding.progressBar.setVisibility(8);
                }
            });
        } else if (!MultiBluetoothManager.getInstance(this).isBondingInProgress() && !isBluetoothPairingTipDialogShowing() && !this.tipsDialogManager.isShowing()) {
            cancelTipDialog();
        }
        this.flag = true;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.tvTitle.setText(R$string.equipment_management);
        return this.binding.topBar.getRoot();
    }

    public void notifyStartScan() {
        if (Build.VERSION.SDK_INT >= 31 && ContextCompat.checkSelfPermission(this, "android.permission.BLUETOOTH_SCAN") != 0) {
            runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.BluetoothActivity.8
                @Override // java.lang.Runnable
                public void run() {
                    Toast.makeText(BluetoothActivity.this, R$string.permission_not_obtained, 0).show();
                }
            });
        } else {
            EventBus.getDefault().post(new BluetoothScanActionEvent(BluetoothActionEnum.STARTSCAN, this.mPosition != 1 ? 0 : 1));
            reloadPairedDevicesOnAllTabs();
        }
    }

    @SuppressLint({"MissingPermission"})
    private void reloadPairedDevicesOnAllTabs() {
        if (this.adapter == null) {
            return;
        }
        for (int i = 0; i < this.adapter.getItemCount(); i++) {
            Fragment fragment = this.adapter.getFragment(i);
            if (fragment instanceof BluetoothFragment) {
                ((BluetoothFragment) fragment).reloadPairedDevices();
            }
        }
    }

    public void notifyStopScan() {
        EventBus.getDefault().post(new BluetoothScanActionEvent(BluetoothActionEnum.STOPSCAN, this.mPosition != 1 ? 0 : 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void clearCurrentTabPairings() {
        DeviceType deviceType = activeTabIndex() == 1 ? DeviceType.BASE : DeviceType.ZPY;
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
        BluetoothClient bluetoothClient = multiBluetoothManager.getBluetoothClient(deviceType);
        notifyStopScan();
        multiBluetoothManager.stopAutoReconnect();
        if (deviceType == DeviceType.ZPY) {
            EventBus.getDefault().post("pairingListCleared_zpy");
            this.mSp.edit().remove("latestDeviceAddress").apply();
        } else {
            EventBus.getDefault().post("pairingListCleared_base");
        }
        if (bluetoothClient != null) {
            if (bluetoothClient.isBonding() || bluetoothClient.isConnecting()) {
                bluetoothClient.cancelBonding();
            }
            multiBluetoothManager.disconnectDevice(deviceType);
            LogToFile.i("清空配对列表: type=" + deviceType + ", removed=" + bluetoothClient.removeBondedDevices());
        }
        ViewPagerAdapter viewPagerAdapter = this.adapter;
        if (viewPagerAdapter != null) {
            Fragment fragment = viewPagerAdapter.getFragment(activeTabIndex());
            if (fragment instanceof BluetoothFragment) {
                ((BluetoothFragment) fragment).onPairingCleared();
            }
        }
        this.binding.tvDisconnectNow.setVisibility(multiBluetoothManager.getAllConnectedDevices().isEmpty() ? 8 : 0);
        this.handler.removeCallbacks(this.restartScanAfterPairingCleared);
        this.handler.postDelayed(this.restartScanAfterPairingCleared, 300L);
    }

    /* renamed from: $r8$lambda$So-UpdaCNyrL-c3l1IKrpljemwQ, reason: not valid java name */
    public static /* synthetic */ void m1197$r8$lambda$SoUpdaCNyrLc3l1IKrpljemwQ(BluetoothActivity bluetoothActivity) {
        if (bluetoothActivity.isDestroyed()) {
            return;
        }
        bluetoothActivity.notifyStartScan();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 100) {
            for (int i2 : iArr) {
                if (i2 != 0) {
                    LogToFile.i("用户拒绝权限申请。");
                    Toast.makeText(this, R$string.permission_denied, 0).show();
                    return;
                }
            }
            initViewpager();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected boolean shouldRestoreBluetoothConnectProgressUi() {
        return this.userInitiatedConnect && !this.skipPairingUiRestoreAfterRotation;
    }

    public void bluetoothAction(final MyBluetoothDevice myBluetoothDevice, BluetoothActionEnum bluetoothActionEnum) {
        BluetoothDevice bluetoothDevice;
        if (bluetoothActionEnum == BluetoothActionEnum.CONNECT) {
            this.userInitiatedConnect = true;
            if (myBluetoothDevice != null && myBluetoothDevice.bluetoothDevice != null && myBluetoothDevice.deviceType != null) {
                MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
                BluetoothClient bluetoothClient = multiBluetoothManager.getBluetoothClient(myBluetoothDevice.deviceType);
                String address = myBluetoothDevice.bluetoothDevice.getAddress();
                MyBluetoothDevice connectedDevice = multiBluetoothManager.getConnectedDevice(myBluetoothDevice.deviceType);
                if (connectedDevice != null && (bluetoothDevice = connectedDevice.bluetoothDevice) != null && address.equalsIgnoreCase(bluetoothDevice.getAddress()) && bluetoothClient != null && bluetoothClient.isSocketConnected()) {
                    this.userInitiatedConnect = false;
                    LogToFile.i("已连接同一设备，忽略重复点击: " + address);
                    return;
                }
            }
            this.handler.removeCallbacksAndMessages(null);
            this.handler.postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.BluetoothActivity.9
                @Override // java.lang.Runnable
                public void run() {
                    if (BluetoothActivity.this.isDestroyed()) {
                        return;
                    }
                    BluetoothActivity.this.userInitiatedConnect = false;
                    BluetoothActivity.this.cancelLoadingDialog();
                    BluetoothActivity bluetoothActivity = BluetoothActivity.this;
                    bluetoothActivity.showTipDialog(bluetoothActivity.getString(R$string.connection_failed), BluetoothActivity.this.getString(R$string.ok), null);
                    MultiBluetoothManager.getInstance(BluetoothActivity.this).disconnectDevice(myBluetoothDevice.deviceType);
                }
            }, 60000L);
            boolean zIsSameTypeDeviceConnected = isSameTypeDeviceConnected(myBluetoothDevice);
            MultiBluetoothManager multiBluetoothManager2 = MultiBluetoothManager.getInstance(this);
            boolean z = multiBluetoothManager2.isBondingInProgress() || multiBluetoothManager2.isConnectingInProgress() || isSamePendingDevice(myBluetoothDevice);
            if (z && !zIsSameTypeDeviceConnected) {
                multiBluetoothManager2.disconnectDevice(myBluetoothDevice.deviceType);
            }
            boolean z2 = (zIsSameTypeDeviceConnected || !z || isSamePendingDevice(myBluetoothDevice)) ? false : true;
            if (zIsSameTypeDeviceConnected) {
                if (multiBluetoothManager2.isBondingInProgress()) {
                    forceDismissBluetoothPairingDialogs();
                }
                showTipDialog(getString(R$string.switch_devices), getString(R$string.confirm), getString(R$string.cancel), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.BluetoothActivity.10
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        if (myBluetoothDevice.deviceType == DeviceType.ZPY) {
                            EventBus.getDefault().post("activeDisconnect");
                        }
                        BluetoothActivity.this.postConnectAction(myBluetoothDevice);
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z3) {
                        if (z3) {
                            BluetoothActivity.this.userInitiatedConnect = false;
                            BluetoothActivity.this.handler.removeCallbacksAndMessages(null);
                        }
                    }
                });
                return;
            } else {
                if (z2) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("连接中切换设备: ");
                    BluetoothDevice bluetoothDevice2 = myBluetoothDevice.bluetoothDevice;
                    sb.append(bluetoothDevice2 != null ? bluetoothDevice2.getAddress() : "");
                    LogToFile.i(sb.toString());
                    forceDismissBluetoothPairingDialogs();
                    postConnectAction(myBluetoothDevice);
                    return;
                }
                postConnectAction(myBluetoothDevice);
                return;
            }
        }
        LogToFile.i("用户主动点击关闭蓝牙。");
        EventBus.getDefault().post(new BluetoothConnectActionEvent(BluetoothActionEnum.DISCONNECT, "", myBluetoothDevice.deviceType));
        DeviceType deviceType = myBluetoothDevice.deviceType;
        if (deviceType == DeviceType.ZPY) {
            EventBus.getDefault().post("activeDisconnect");
        } else if (deviceType == DeviceType.BASE) {
            EventBus.getDefault().post("activeDisconnect_base");
        }
    }

    private boolean isSameTypeDeviceConnected(MyBluetoothDevice myBluetoothDevice) {
        BluetoothDevice bluetoothDevice;
        MyBluetoothDevice currentDevice;
        BluetoothDevice bluetoothDevice2;
        BluetoothDevice bluetoothDevice3;
        if (myBluetoothDevice != null && myBluetoothDevice.deviceType != null && (bluetoothDevice = myBluetoothDevice.bluetoothDevice) != null) {
            String address = bluetoothDevice.getAddress();
            MyBluetoothDevice connectedDevice = MultiBluetoothManager.getInstance(this).getConnectedDevice(myBluetoothDevice.deviceType);
            if (connectedDevice != null && (bluetoothDevice3 = connectedDevice.bluetoothDevice) != null) {
                return !address.equalsIgnoreCase(bluetoothDevice3.getAddress());
            }
            if (myBluetoothDevice.deviceType == DeviceType.BASE) {
                currentDevice = ((YCTApplication) getApplication()).getCurrentBaseDevice();
            } else {
                currentDevice = ((YCTApplication) getApplication()).getCurrentDevice();
            }
            if (currentDevice != null && currentDevice.state == BluetoothStateEnum.CONNECTED.getState() && (bluetoothDevice2 = currentDevice.bluetoothDevice) != null) {
                return !address.equalsIgnoreCase(bluetoothDevice2.getAddress());
            }
        }
        return false;
    }

    private boolean isSamePendingDevice(MyBluetoothDevice myBluetoothDevice) {
        if (myBluetoothDevice != null && myBluetoothDevice.bluetoothDevice != null && myBluetoothDevice.deviceType != null) {
            String pendingConnectAddress = MultiBluetoothManager.getInstance(this).getBluetoothClient(myBluetoothDevice.deviceType) != null ? MultiBluetoothManager.getInstance(this).getBluetoothClient(myBluetoothDevice.deviceType).getPendingConnectAddress() : null;
            if (!TextUtils.isEmpty(pendingConnectAddress) && pendingConnectAddress.equalsIgnoreCase(myBluetoothDevice.bluetoothDevice.getAddress())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postConnectAction(MyBluetoothDevice myBluetoothDevice) {
        String displayName;
        if (myBluetoothDevice == null) {
            return;
        }
        if (!TextUtils.isEmpty(myBluetoothDevice.deviceName)) {
            displayName = myBluetoothDevice.deviceName;
        } else {
            displayName = myBluetoothDevice.getDisplayName();
        }
        BluetoothDevice bluetoothDevice = myBluetoothDevice.bluetoothDevice;
        EventBus.getDefault().post(new BluetoothConnectActionEvent(BluetoothActionEnum.CONNECT, displayName, bluetoothDevice != null ? bluetoothDevice.getAddress() : null, myBluetoothDevice.deviceType));
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothScanStateEvent bluetoothScanStateEvent) {
        MyBluetoothDevice myBluetoothDevice = bluetoothScanStateEvent.mySevice;
        if (myBluetoothDevice == null) {
            return;
        }
        if (myBluetoothDevice.state == BluetoothStateEnum.SCAN_STARTED.getState()) {
            int i = bluetoothScanStateEvent.scanPageIndex;
            this.scanPageIndex = i;
            applyScanButtonUi(true, i);
            reloadPairedDevicesOnAllTabs();
        } else if (bluetoothScanStateEvent.mySevice.state == BluetoothStateEnum.SCAN_FINISHED.getState()) {
            applyScanIdleUi();
        } else if (bluetoothScanStateEvent.mySevice.state == BluetoothStateEnum.SCAN_FAIL.getState()) {
            cancelLoadingDialog();
            applyScanIdleUi();
        } else if (bluetoothScanStateEvent.mySevice.bluetoothDevice != null) {
            int i2 = bluetoothScanStateEvent.scanPageIndex;
            int i3 = this.mPosition;
            if (i2 != i3 && i3 >= 0) {
                return;
            }
        }
        this.scanStateLive.setValue(bluetoothScanStateEvent);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothConnectStateEvent bluetoothConnectStateEvent) {
        MyBluetoothDevice myBluetoothDevice = bluetoothConnectStateEvent.myDevice;
        if (myBluetoothDevice == null) {
            this.userInitiatedConnect = false;
            cancelLoadingDialog();
            cancelTipDialog();
            applyScanIdleUi();
            showToastDialog(getString(R$string.connection_failed));
            return;
        }
        if (myBluetoothDevice.state == BluetoothStateEnum.STARTCONNECT.getState()) {
            if (this.userInitiatedConnect && shouldShowConnectingDialog(bluetoothConnectStateEvent)) {
                showLoadingDialog(getString(R$string.connecting_device), new LoadingFragment.OnCloseListener() { // from class: com.qianhe.yct.activity.BluetoothActivity.11
                    @Override // com.qianhe.yct.dialog.LoadingFragment.OnCloseListener
                    public void onClose(int i) {
                        if (i == 1) {
                            BluetoothActivity.this.abortUserInitiatedConnect();
                        }
                    }
                });
            } else if (this.userInitiatedConnect) {
                forceDismissBluetoothPairingDialogs();
            }
            this.binding.tvDisconnectNow.setVisibility(MultiBluetoothManager.getInstance(this).getAllConnectedDevices().isEmpty() ? 8 : 0);
        } else if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.CONNECTED.getState()) {
            this.handler.removeCallbacksAndMessages(null);
            if (bluetoothConnectStateEvent.myDevice.deviceType == DeviceType.ZPY) {
                ((YCTApplication) getApplication()).setCurrentDevice(bluetoothConnectStateEvent.myDevice);
            } else {
                ((YCTApplication) getApplication()).setCurrentBaseDevice(bluetoothConnectStateEvent.myDevice);
            }
            this.binding.tvScan.setSelected(false);
            this.binding.tvScan.setText(getString(R$string.rescan_ble));
            this.binding.progressBar.setVisibility(8);
            dismissConnectingDialog();
            if (this.userInitiatedConnect) {
                finishAfterUserInitiatedConnectSuccess();
            }
        } else if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.CONNECT_FAILED.getState()) {
            this.userInitiatedConnect = false;
            this.handler.removeCallbacksAndMessages(null);
            cancelLoadingDialog();
            showToastDialog(getString(R$string.connection_failed));
        } else if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.DISCONNECT.getState()) {
            resetLastDeviceInfo();
            if (MultiBluetoothManager.getInstance(this).getAllConnectedDevices().isEmpty()) {
                this.binding.tvDisconnectNow.setVisibility(8);
            }
        } else if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.START_BOND.getState()) {
            if (this.userInitiatedConnect) {
                showPairingProgressDialog();
            }
        } else if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.CANCEL_BOND.getState()) {
            this.userInitiatedConnect = false;
            this.handler.removeCallbacksAndMessages(null);
            forceDismissBluetoothPairingDialogs();
            this.binding.tvScan.setSelected(false);
            this.binding.tvScan.setText(getString(R$string.rescan_ble));
            this.binding.progressBar.setVisibility(8);
        } else if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.BONDING.getState()) {
            cancelLoadingDialog();
        }
        this.connectStateLive.setValue(bluetoothConnectStateEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void abortUserInitiatedConnect() {
        this.userInitiatedConnect = false;
        this.handler.removeCallbacksAndMessages(null);
        DeviceType deviceType = activeTabIndex() == 1 ? DeviceType.BASE : DeviceType.ZPY;
        MyBluetoothDevice myBluetoothDeviceSnapshotConnectingDevice = snapshotConnectingDevice(deviceType);
        EventBus.getDefault().post(new BluetoothConnectActionEvent(BluetoothActionEnum.DISCONNECT, "", deviceType));
        if (deviceType == DeviceType.ZPY) {
            EventBus.getDefault().post("activeDisconnect");
        } else {
            EventBus.getDefault().post("activeDisconnect_base");
        }
        myBluetoothDeviceSnapshotConnectingDevice.state = BluetoothStateEnum.DISCONNECT.getState();
        this.connectStateLive.setValue(new BluetoothConnectStateEvent(myBluetoothDeviceSnapshotConnectingDevice));
    }

    @SuppressLint({"MissingPermission"})
    private MyBluetoothDevice snapshotConnectingDevice(DeviceType deviceType) {
        MyBluetoothDevice currentDevice;
        BluetoothDevice bluetoothDevice;
        MyBluetoothDevice myBluetoothDevice = new MyBluetoothDevice(BluetoothStateEnum.DISCONNECT.getState(), deviceType);
        BluetoothClient bluetoothClient = MultiBluetoothManager.getInstance(this).getBluetoothClient(deviceType);
        String pendingConnectAddress = bluetoothClient != null ? bluetoothClient.getPendingConnectAddress() : null;
        if (deviceType == DeviceType.BASE) {
            currentDevice = ((YCTApplication) getApplication()).getCurrentBaseDevice();
        } else {
            currentDevice = ((YCTApplication) getApplication()).getCurrentDevice();
        }
        if (TextUtils.isEmpty(pendingConnectAddress) && currentDevice != null && (bluetoothDevice = currentDevice.bluetoothDevice) != null) {
            pendingConnectAddress = bluetoothDevice.getAddress();
            myBluetoothDevice.mergeDisplayNameFrom(currentDevice);
        }
        if (!TextUtils.isEmpty(pendingConnectAddress) && BluetoothAdapter.getDefaultAdapter() != null) {
            try {
                myBluetoothDevice.bluetoothDevice = BluetoothAdapter.getDefaultAdapter().getRemoteDevice(pendingConnectAddress);
            } catch (Exception unused) {
            }
        }
        return myBluetoothDevice;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected LoadingFragment.OnCloseListener createPairingLoadingCloseListener() {
        return new LoadingFragment.OnCloseListener() { // from class: com.qianhe.yct.activity.BluetoothActivity$$ExternalSyntheticLambda1
            @Override // com.qianhe.yct.dialog.LoadingFragment.OnCloseListener
            public final void onClose(int i) {
                BluetoothActivity.m1196$r8$lambda$F9NOEuzuc2hiFGVrg26Fs7FBk(this.f$0, i);
            }
        };
    }

    /* renamed from: $r8$lambda$-F9NOEuzuc-2hiFGVrg26Fs7FBk, reason: not valid java name */
    public static /* synthetic */ void m1196$r8$lambda$F9NOEuzuc2hiFGVrg26Fs7FBk(BluetoothActivity bluetoothActivity, int i) {
        if (i == 1) {
            bluetoothActivity.abortUserInitiatedConnect();
        } else {
            bluetoothActivity.getClass();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("user_initiated_connect", this.userInitiatedConnect);
    }

    private boolean finishIfUserInitiatedConnectAlreadyDone() {
        if (!this.userInitiatedConnect || isFinishing()) {
            return false;
        }
        if (!MultiBluetoothManager.getInstance(this).isDeviceConnected(activeTabIndex() == 1 ? DeviceType.BASE : DeviceType.ZPY)) {
            return false;
        }
        LogToFile.i("BluetoothActivity: 旋转后用户发起的连接已成功，返回首页");
        finishAfterUserInitiatedConnectSuccess();
        return true;
    }

    private void finishAfterUserInitiatedConnectSuccess() {
        this.userInitiatedConnect = false;
        MultiBluetoothManager.getInstance(this).finishBondActivity();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissPairingUiAfterRotation() {
        if (isFinishing() || isDestroyed()) {
            this.skipPairingUiRestoreAfterRotation = false;
            return;
        }
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
        if (!multiBluetoothManager.isDeviceConnected(activeTabIndex() == 1 ? DeviceType.BASE : DeviceType.ZPY) && !multiBluetoothManager.isConnectingInProgress()) {
            LogToFile.i("BluetoothActivity: 旋转后关闭正在配对并取消未完成配对");
            multiBluetoothManager.cancelBondingIfNeeded();
        }
        forceDismissBluetoothPairingDialogs();
        this.skipPairingUiRestoreAfterRotation = false;
    }

    @SuppressLint({"MissingPermission"})
    private boolean shouldShowConnectingDialog(BluetoothConnectStateEvent bluetoothConnectStateEvent) {
        if (bluetoothConnectStateEvent != null && bluetoothConnectStateEvent.myDevice != null) {
            if (MultiBluetoothManager.getInstance(this).isConnectingInProgress()) {
                return true;
            }
            BluetoothDevice bluetoothDevice = bluetoothConnectStateEvent.myDevice.bluetoothDevice;
            if (bluetoothDevice == null) {
                return false;
            }
            try {
                if (bluetoothDevice.getBondState() == 12) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        EventBus.getDefault().post(new HasCheckBasestation());
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.userInitiatedConnect = false;
        this.handler.removeCallbacksAndMessages(null);
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        EventBus.getDefault().post(new BluetoothScanActionEvent(BluetoothActionEnum.STOPSCAN, -1));
    }
}
