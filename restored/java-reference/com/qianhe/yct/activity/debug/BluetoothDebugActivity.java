package com.qianhe.yct.activity.debug;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.YctDeviceManager;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.ntripclientlib.base.DiffClientImpl;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.client.BluetoothClient;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.R$string;
import com.qianhe.yct.adapter.DeviceListAdapter;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityBluetoothDebugBinding;
import com.qianhe.yct.dialog.LoadingFragment;
import com.qianhe.yct.dialog.ToastDialogFragment;
import com.qianhe.yct.enums.BluetoothActionEnum;
import com.tencent.smtt.sdk.WebView;
import java.lang.reflect.InvocationTargetException;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BluetoothDebugActivity extends BaseActivity {
    private ActivityBluetoothDebugBinding binding;
    private final BroadcastReceiver bluetoothStateReceiver = new BroadcastReceiver() { // from class: com.qianhe.yct.activity.debug.BluetoothDebugActivity.4
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
                int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", RecyclerView.UNDEFINED_DURATION);
                if (intExtra == 10) {
                    LogToFile.i("==========蓝牙已关闭==========");
                    BluetoothDebugActivity.this.stopScan();
                } else {
                    if (intExtra != 12) {
                        return;
                    }
                    LogToFile.i("==========蓝牙已开启==========");
                    BluetoothDebugActivity.this.startScan();
                }
            }
        }
    };
    private DeviceListAdapter deviceListAdapter;
    private LoadingFragment loadingFragment;
    private BluetoothClient mBluetoothClient;
    private MyBluetoothDevice mCurrentDevice;
    private DiffClientImpl mDiffClient;
    private SharedPreferences mSp;
    private ToastDialogFragment tipDialogFragment;

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        return null;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @SuppressLint({"SourceLockedOrientationActivity"})
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityBluetoothDebugBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        getWindow().addFlags(128);
        EventBus.getDefault().register(this);
        EventBus.getDefault().post("debug");
        ((YCTApplication) getApplication()).setCurrentDevice(null);
        ((YCTApplication) getApplication()).setLastDeviceName("");
        this.mSp = getSharedPreferences("sp", 0);
        registerReceiver(this.bluetoothStateReceiver, new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
        checkPermissions();
        this.tipDialogFragment = new ToastDialogFragment();
        this.binding.btnScan.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.debug.BluetoothDebugActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BluetoothDebugActivity.this.binding.btnScan.setSelected(!BluetoothDebugActivity.this.binding.btnScan.isSelected());
                BluetoothDebugActivity.this.tipDialogFragment.show(BluetoothDebugActivity.this.getSupportFragmentManager(), "ToastDialogFragment");
                if (BluetoothDebugActivity.this.binding.btnScan.isSelected()) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("tip", BluetoothDebugActivity.this.getString(R$string.start_scan));
                    BluetoothDebugActivity.this.tipDialogFragment.setArguments(bundle2);
                    BluetoothDebugActivity.this.startScan();
                    return;
                }
                Bundle bundle3 = new Bundle();
                bundle3.putString("tip", BluetoothDebugActivity.this.getString(R$string.stop_scan));
                BluetoothDebugActivity.this.tipDialogFragment.setArguments(bundle3);
                BluetoothDebugActivity.this.stopScan();
            }
        });
        this.binding.topBar.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.debug.BluetoothDebugActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BluetoothDebugActivity.this.onBackPressed();
            }
        });
        this.binding.topBar.tvTitle.setText(getString(R$string.equipment_management));
    }

    private void checkPermissions() {
        String[] strArr;
        int i = Build.VERSION.SDK_INT;
        if (i < 23) {
            initBluetoothClient();
            return;
        }
        if (i >= 31) {
            strArr = new String[]{"android.permission.BLUETOOTH_SCAN", "android.permission.BLUETOOTH_CONNECT", "android.permission.ACCESS_FINE_LOCATION"};
        } else if (i >= 30) {
            try {
                Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                intent.setData(Uri.parse("package:" + getPackageName()));
                startActivity(intent);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                strArr = new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.ACCESS_FINE_LOCATION"};
            }
        } else {
            strArr = new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"};
        }
        for (String str : strArr) {
            if (checkSelfPermission(str) != 0) {
                ActivityCompat.requestPermissions(this, strArr, 100);
                return;
            }
        }
        initBluetoothClient();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 100) {
            for (int i2 : iArr) {
                if (i2 != 0) {
                    LogToFile.i("用户拒绝权限申请。");
                    Toast.makeText(this, getString(R$string.permission_denied), 0).show();
                    return;
                }
            }
            initBluetoothClient();
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    private void initBluetoothClient() {
        DeviceType deviceType = DeviceType.ZPY;
        this.mBluetoothClient = new BluetoothClient(this, deviceType);
        this.deviceListAdapter = new DeviceListAdapter(this, deviceType);
        this.binding.rcv.setLayoutManager(new LinearLayoutManager(this));
        this.binding.rcv.setAdapter(this.deviceListAdapter);
        this.deviceListAdapter.setOnActionListener(new DeviceListAdapter.OnActionListener() { // from class: com.qianhe.yct.activity.debug.BluetoothDebugActivity.3
            @Override // com.qianhe.yct.adapter.DeviceListAdapter.OnActionListener
            public void onAction(MyBluetoothDevice myBluetoothDevice, BluetoothActionEnum bluetoothActionEnum) {
                if (bluetoothActionEnum == BluetoothActionEnum.CONNECT) {
                    LogToFile.i("开始连接蓝牙设备：" + myBluetoothDevice.bluetoothDevice.getName());
                    BluetoothDebugActivity.this.connect(myBluetoothDevice);
                    return;
                }
                BluetoothDebugActivity.this.mBluetoothClient.disconnect();
            }
        });
        openBluetooth();
    }

    private void openBluetooth() {
        if (!this.mBluetoothClient.isBluetoothEnabled()) {
            this.mBluetoothClient.openBluetooth(this, 1);
        } else {
            startScan();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            if (i2 == -1) {
                LogToFile.i("用户同意开启蓝牙");
            } else {
                LogToFile.i("用户拒绝开启蓝牙");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startScan() {
        if (Build.VERSION.SDK_INT >= 31 && ContextCompat.checkSelfPermission(this, "android.permission.BLUETOOTH_SCAN") != 0) {
            Toast.makeText(this, getString(R$string.permission_not_obtained), 0).show();
            return;
        }
        LogToFile.i("开始扫描......");
        this.binding.btnScan.setSelected(true);
        this.binding.btnScan.setText(getString(R$string.scanning1));
        this.binding.btnScan.setTextColor(WebView.NIGHT_MODE_COLOR);
        this.deviceListAdapter.clear();
        this.mBluetoothClient.startScan(new BluetoothClient.OnDeviceScanListener() { // from class: com.qianhe.yct.activity.debug.BluetoothDebugActivity.5
            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnDeviceScanListener
            public void cancelBond(BluetoothDevice bluetoothDevice) {
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnDeviceScanListener
            public void onBonding(BluetoothDevice bluetoothDevice) {
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnDeviceScanListener
            public void onScanFail() {
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnDeviceScanListener
            public void onDeviceScan(MyBluetoothDevice myBluetoothDevice) {
                LogToFile.i(myBluetoothDevice.bluetoothDevice.getName() + " - " + myBluetoothDevice.bluetoothDevice.getAddress());
                if (TextUtils.isEmpty(myBluetoothDevice.bluetoothDevice.getName()) || !myBluetoothDevice.bluetoothDevice.getName().matches("^[WZ].*")) {
                    return;
                }
                BluetoothDebugActivity.this.deviceListAdapter.addData(myBluetoothDevice);
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnDeviceScanListener
            public void onScanFinished() {
                LogToFile.i("扫描结束。");
                BluetoothDebugActivity.this.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.debug.BluetoothDebugActivity.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BluetoothDebugActivity.this.binding.btnScan.setSelected(false);
                        BluetoothDebugActivity.this.binding.btnScan.setText(BluetoothDebugActivity.this.getString(R$string.start_scan));
                        BluetoothDebugActivity.this.binding.btnScan.setTextColor(WebView.NIGHT_MODE_COLOR);
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopScan() {
        if (Build.VERSION.SDK_INT < 31 || ContextCompat.checkSelfPermission(this, "android.permission.BLUETOOTH_SCAN") == 0) {
            LogToFile.i("停止扫描。");
            BluetoothClient bluetoothClient = this.mBluetoothClient;
            if (bluetoothClient != null) {
                bluetoothClient.stopScan();
            }
            this.binding.btnScan.setSelected(false);
            this.binding.btnScan.setText(getString(R$string.start_scan));
            this.binding.btnScan.setTextColor(WebView.NIGHT_MODE_COLOR);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void connect(final MyBluetoothDevice myBluetoothDevice) {
        this.loadingFragment = new LoadingFragment();
        Bundle bundle = new Bundle();
        bundle.putString("tip", getString(R$string.connecting));
        this.loadingFragment.setArguments(bundle);
        this.loadingFragment.show(getSupportFragmentManager(), "LoadingFragment");
        this.mBluetoothClient.connectToDevice(myBluetoothDevice.bluetoothDevice, new BluetoothClient.OnConnectionStateChangedListener() { // from class: com.qianhe.yct.activity.debug.BluetoothDebugActivity.6
            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
            public void onBond(BluetoothDevice bluetoothDevice) {
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
            public void onConnected(BluetoothDevice bluetoothDevice) {
                LogToFile.i("已连接到设备");
                BluetoothDebugActivity.this.loadingFragment.dismiss();
                myBluetoothDevice.state = BluetoothStateEnum.CONNECTED.getState();
                BluetoothDebugActivity.this.mCurrentDevice = myBluetoothDevice;
                BluetoothDebugActivity.this.deviceListAdapter.refreshState(myBluetoothDevice);
                BluetoothDebugActivity.this.startActivity(new Intent(BluetoothDebugActivity.this, (Class<?>) DebugActivity.class));
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
            public void onDisconnected(DeviceType deviceType) {
                LogToFile.i("与蓝牙设备断开连接");
                BluetoothDebugActivity.this.loadingFragment.dismiss();
                myBluetoothDevice.state = BluetoothStateEnum.DISCONNECT.getState();
                BluetoothDebugActivity.this.mCurrentDevice = null;
                BluetoothDebugActivity.this.deviceListAdapter.refreshState(myBluetoothDevice);
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
            public void onConnectionFailed(String str) {
                LogToFile.i("Connection failed: " + str);
                BluetoothDebugActivity.this.loadingFragment.dismiss();
                myBluetoothDevice.state = BluetoothStateEnum.DISCONNECT.getState();
                BluetoothDebugActivity.this.mCurrentDevice = null;
                BluetoothDebugActivity.this.deviceListAdapter.refreshState(myBluetoothDevice);
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
            public void onSocketClosed(String str) {
                LogToFile.i("Connection Closed: " + str);
                BluetoothDebugActivity.this.loadingFragment.dismiss();
                myBluetoothDevice.state = BluetoothStateEnum.DISCONNECT.getState();
                BluetoothDebugActivity.this.mCurrentDevice = null;
                BluetoothDebugActivity.this.deviceListAdapter.refreshState(myBluetoothDevice);
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
            public void onBondCompleted(BluetoothDevice bluetoothDevice) {
                if (BluetoothDebugActivity.this.loadingFragment != null) {
                    BluetoothDebugActivity.this.loadingFragment.refreshTip(BluetoothDebugActivity.this.getString(R$string.connecting_device));
                }
            }

            @Override // com.qianhe.rtkclientlib.client.BluetoothClient.OnConnectionStateChangedListener
            public void onBondCancelled(BluetoothDevice bluetoothDevice) {
                if (BluetoothDebugActivity.this.loadingFragment != null) {
                    BluetoothDebugActivity.this.loadingFragment.dismiss();
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(OrderBean orderBean) {
        if (TextUtils.isEmpty(orderBean.str) && orderBean.array == null) {
            return;
        }
        byte[] bytes = !TextUtils.isEmpty(orderBean.str) ? orderBean.str.getBytes() : orderBean.array;
        DeviceType deviceType = orderBean.deviceType;
        if (deviceType == DeviceType.BASE) {
            YctDeviceManager.getInstanceBase().sendToDevice(bytes, bytes.length);
        } else if (deviceType == DeviceType.ZPY) {
            YctDeviceManager.getInstanceH5().sendToDevice(bytes, bytes.length);
        } else {
            YctDeviceManager.getInstanceBase().sendToDevice(bytes, bytes.length);
            YctDeviceManager.getInstanceH5().sendToDevice(bytes, bytes.length);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        stopScan();
        unregisterReceiver(this.bluetoothStateReceiver);
        BluetoothClient bluetoothClient = this.mBluetoothClient;
        if (bluetoothClient != null) {
            bluetoothClient.disconnect();
        }
        DiffClientImpl diffClientImpl = this.mDiffClient;
        if (diffClientImpl != null) {
            diffClientImpl.disconnect();
        }
        reConnect(DeviceType.ZPY);
    }
}
