package com.qianhe.yct.activity;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.view.View;
import android.widget.FrameLayout;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityMultiBluetoothExampleBinding;
import com.qianhe.yct.service.BluetoothConnectService;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class MultiBluetoothExampleActivity extends BaseActivity {
    private ActivityMultiBluetoothExampleBinding binding;
    private BluetoothConnectService bluetoothService;
    private boolean isServiceBound = false;
    private final ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.qianhe.yct.activity.MultiBluetoothExampleActivity.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MultiBluetoothExampleActivity.this.bluetoothService = ((BluetoothConnectService.LocalBinder) iBinder).getService();
            MultiBluetoothExampleActivity.this.isServiceBound = true;
            MultiBluetoothExampleActivity.this.refreshConnectionStatus();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            MultiBluetoothExampleActivity.this.bluetoothService = null;
            MultiBluetoothExampleActivity.this.isServiceBound = false;
        }
    };

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return null;
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
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityMultiBluetoothExampleBinding activityMultiBluetoothExampleBindingInflate = ActivityMultiBluetoothExampleBinding.inflate(getLayoutInflater());
        this.binding = activityMultiBluetoothExampleBindingInflate;
        setContentView(activityMultiBluetoothExampleBindingInflate.getRoot());
        initViews();
        startBlueService();
        bindBluetoothService();
    }

    private void bindBluetoothService() {
        bindService(new Intent(this, (Class<?>) BluetoothConnectService.class), this.serviceConnection, 1);
    }

    private void unbindBluetoothService() {
        if (this.isServiceBound) {
            unbindService(this.serviceConnection);
            this.isServiceBound = false;
        }
    }

    private void initViews() {
        this.binding.btnConnectPrimary.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.MultiBluetoothExampleActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.connectPrimaryDevice();
            }
        });
        this.binding.btnConnectSecondary.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.MultiBluetoothExampleActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.connectSecondaryDevice();
            }
        });
        this.binding.btnDisconnectPrimary.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.MultiBluetoothExampleActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.disconnectPrimaryDevice();
            }
        });
        this.binding.btnDisconnectSecondary.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.MultiBluetoothExampleActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.disconnectSecondaryDevice();
            }
        });
        this.binding.btnRefreshStatus.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.MultiBluetoothExampleActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.refreshConnectionStatus();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectPrimaryDevice() {
        BluetoothConnectService bluetoothConnectService;
        if (!this.isServiceBound || (bluetoothConnectService = this.bluetoothService) == null) {
            return;
        }
        if (bluetoothConnectService.getMultiBluetoothManager() != null) {
            String str = "正在连接主设备: PRIMARY_DEVICE_NAME";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectSecondaryDevice() {
        BluetoothConnectService bluetoothConnectService;
        if (!this.isServiceBound || (bluetoothConnectService = this.bluetoothService) == null) {
            return;
        }
        if (bluetoothConnectService.getMultiBluetoothManager() != null) {
            String str = "正在连接副设备: SECONDARY_DEVICE_NAME";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnectPrimaryDevice() {
        BluetoothConnectService bluetoothConnectService = this.bluetoothService;
        if (bluetoothConnectService == null || bluetoothConnectService.getMultiBluetoothManager() == null) {
            return;
        }
        this.bluetoothService.getMultiBluetoothManager().disconnectDevice(DeviceType.ZPY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnectSecondaryDevice() {
        BluetoothConnectService bluetoothConnectService = this.bluetoothService;
        if (bluetoothConnectService == null || bluetoothConnectService.getMultiBluetoothManager() == null) {
            return;
        }
        this.bluetoothService.getMultiBluetoothManager().disconnectDevice(DeviceType.BASE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void refreshConnectionStatus() {
        BluetoothConnectService bluetoothConnectService = this.bluetoothService;
        if (bluetoothConnectService == null || bluetoothConnectService.getMultiBluetoothManager() == null) {
            return;
        }
        MultiBluetoothManager multiBluetoothManager = this.bluetoothService.getMultiBluetoothManager();
        DeviceType deviceType = DeviceType.ZPY;
        boolean zIsDeviceConnected = multiBluetoothManager.isDeviceConnected(deviceType);
        MyBluetoothDevice connectedDevice = multiBluetoothManager.getConnectedDevice(deviceType);
        DeviceType deviceType2 = DeviceType.BASE;
        boolean zIsDeviceConnected2 = multiBluetoothManager.isDeviceConnected(deviceType2);
        updateConnectionStatusUI(zIsDeviceConnected, connectedDevice, zIsDeviceConnected2, multiBluetoothManager.getConnectedDevice(deviceType2));
        String.format("主设备: %s, 副设备: %s", zIsDeviceConnected ? "已连接" : "未连接", zIsDeviceConnected2 ? "已连接" : "未连接");
    }

    private void updateConnectionStatusUI(boolean z, MyBluetoothDevice myBluetoothDevice, boolean z2, MyBluetoothDevice myBluetoothDevice2) {
        if (z && myBluetoothDevice != null) {
            this.binding.tvPrimaryStatus.setText(String.format("主设备: %s (已连接)", myBluetoothDevice.bluetoothDevice.getName()));
        } else {
            this.binding.tvPrimaryStatus.setText("主设备: 未连接");
        }
        if (z2 && myBluetoothDevice2 != null) {
            this.binding.tvSecondaryStatus.setText(String.format("副设备: %s (已连接)", myBluetoothDevice2.bluetoothDevice.getName()));
        } else {
            this.binding.tvSecondaryStatus.setText("副设备: 未连接");
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        BluetoothConnectService bluetoothConnectService = this.bluetoothService;
        if (bluetoothConnectService != null && bluetoothConnectService.getMultiBluetoothManager() != null) {
            this.bluetoothService.getMultiBluetoothManager().disconnectAll();
        }
        unbindBluetoothService();
    }
}
