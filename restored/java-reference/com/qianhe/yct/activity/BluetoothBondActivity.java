package com.qianhe.yct.activity;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.yct.R$layout;
import com.qianhe.yct.utils.BluetoothBondHelper;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class BluetoothBondActivity extends AppCompatActivity {
    private long bondEpoch;
    private boolean bondFinished;
    private BroadcastReceiver bondReceiver;
    private boolean bondRequested;
    private boolean createBondIssued;
    private String deviceAddress;
    private BroadcastReceiver finishReceiver;
    private long ignoreFocusLossUntil;
    private boolean lostFocusAfterCreateBond;
    private boolean sawBonding;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final Runnable tryCreateBondRunnable = new Runnable() { // from class: com.qianhe.yct.activity.BluetoothBondActivity.1
        @Override // java.lang.Runnable
        public void run() {
            BluetoothBondActivity.this.startBondAttempt();
        }
    };
    private final Runnable finishIfNotificationPairingRunnable = new Runnable() { // from class: com.qianhe.yct.activity.BluetoothBondActivity.2
        @Override // java.lang.Runnable
        public void run() {
            if (BluetoothBondActivity.this.bondFinished || BluetoothBondActivity.this.isFinishing() || !BluetoothBondActivity.this.createBondIssued) {
                return;
            }
            if (BluetoothBondActivity.this.lostFocusAfterCreateBond || !BluetoothBondActivity.this.hasWindowFocus()) {
                LogToFile.i("BluetoothBondActivity: 系统配对框已抢焦点，保留透明页");
                return;
            }
            LogToFile.i("BluetoothBondActivity: 通知栏配对未抢焦点，关闭透明页以免挡住正在配对弹窗");
            MultiBluetoothManager.getInstance(BluetoothBondActivity.this.getApplicationContext()).suppressBackgroundBondCancel(8000L);
            BluetoothBondActivity.this.finishNow();
        }
    };
    private final Runnable cancelIfSystemPairingUiGoneRunnable = new Runnable() { // from class: com.qianhe.yct.activity.BluetoothBondActivity.3
        @Override // java.lang.Runnable
        public void run() {
            if (BluetoothBondActivity.this.bondFinished || BluetoothBondActivity.this.isFinishing() || !BluetoothBondActivity.this.createBondIssued) {
                return;
            }
            if (BluetoothBondActivity.this.isDeviceBondedNow()) {
                BluetoothBondActivity.this.finishNow();
            } else if (BluetoothBondActivity.this.hasWindowFocus()) {
                LogToFile.i("BluetoothBondActivity: 系统配对框已关闭且未配对成功，取消配对");
                BluetoothBondActivity.this.notifyUserCancelledAndFinish();
            }
        }
    };
    private final Runnable pollBondedRunnable = new Runnable() { // from class: com.qianhe.yct.activity.BluetoothBondActivity.4
        @Override // java.lang.Runnable
        public void run() {
            if (BluetoothBondActivity.this.bondFinished || BluetoothBondActivity.this.isFinishing()) {
                return;
            }
            if (BluetoothBondActivity.this.isDeviceBondedNow()) {
                LogToFile.i("BluetoothBondActivity: 轮询到已配对，关闭配对页");
                BluetoothBondActivity.this.finishNow();
            } else if (BluetoothBondActivity.this.sawBonding && BluetoothBondActivity.this.isBondNoneNow()) {
                LogToFile.i("BluetoothBondActivity: 轮询到配对已取消，关闭配对页");
                BluetoothBondActivity.this.notifyUserCancelledAndFinish();
            } else {
                BluetoothBondActivity.this.handler.postDelayed(this, 200L);
            }
        }
    };

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_bluetooth_bond);
        getWindow().addFlags(128);
        restoreBondState(bundle);
        if (TextUtils.isEmpty(this.deviceAddress)) {
            this.deviceAddress = getIntent().getStringExtra("bond_device_address");
        }
        if (TextUtils.isEmpty(this.deviceAddress)) {
            finishNow();
            return;
        }
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(getApplicationContext());
        if (this.bondEpoch == 0) {
            this.bondEpoch = multiBluetoothManager.getBondCancelEpoch();
        }
        multiBluetoothManager.suppressBackgroundBondCancel(5000L);
        registerBondReceiver();
        registerFinishReceiver();
        if (this.createBondIssued) {
            startBondedPoll();
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("bond_device_address", this.deviceAddress);
        bundle.putBoolean("create_bond_issued", this.createBondIssued);
        bundle.putBoolean("bond_requested", this.bondRequested);
        bundle.putBoolean("saw_bonding", this.sawBonding);
        bundle.putLong("bond_epoch", this.bondEpoch);
    }

    private void restoreBondState(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        this.deviceAddress = bundle.getString("bond_device_address");
        this.createBondIssued = bundle.getBoolean("create_bond_issued", false);
        this.bondRequested = bundle.getBoolean("bond_requested", false);
        this.sawBonding = bundle.getBoolean("saw_bonding", false);
        this.bondEpoch = bundle.getLong("bond_epoch", 0L);
        LogToFile.i("BluetoothBondActivity: 恢复配对状态 issued=" + this.createBondIssued + " requested=" + this.bondRequested + " -> " + this.deviceAddress);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.ignoreFocusLossUntil = System.currentTimeMillis() + 500;
        MultiBluetoothManager.getInstance(getApplicationContext()).suppressBackgroundBondCancel(8000L);
        if (this.bondFinished || TextUtils.isEmpty(this.deviceAddress)) {
            return;
        }
        if (isDeviceBondedNow()) {
            finishNow();
        } else if (this.createBondIssued) {
            LogToFile.i("BluetoothBondActivity: 旋转后系统配对框已关闭，取消配对");
            notifyUserCancelledAndFinish();
        } else {
            scheduleCreateBond(hasWindowFocus() ? 80L : 400L);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        String stringExtra = intent.getStringExtra("bond_device_address");
        if (!TextUtils.isEmpty(stringExtra)) {
            if (!stringExtra.equalsIgnoreCase(this.deviceAddress)) {
                this.deviceAddress = stringExtra;
                this.createBondIssued = false;
                this.sawBonding = false;
                this.bondFinished = false;
                this.lostFocusAfterCreateBond = false;
                clearTouchesThroughFlag();
            }
            if (!this.createBondIssued) {
                this.bondRequested = false;
            }
        }
        if (isDeviceBondedNow()) {
            finishNow();
        } else {
            scheduleCreateBond(hasWindowFocus() ? 80L : 400L);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    @SuppressLint({"MissingPermission"})
    protected void onResume() {
        super.onResume();
        if (this.bondFinished || TextUtils.isEmpty(this.deviceAddress)) {
            return;
        }
        MultiBluetoothManager.getInstance(getApplicationContext()).suppressBackgroundBondCancel(8000L);
        if (BluetoothAdapter.getDefaultAdapter() == null) {
            finishNow();
            return;
        }
        if (isDeviceBondedNow()) {
            finishNow();
        } else if (this.sawBonding && isBondNoneNow()) {
            LogToFile.i("BluetoothBondActivity: onResume 检测到用户已取消配对");
            notifyUserCancelledAndFinish();
        } else {
            scheduleCreateBond(hasWindowFocus() ? 80L : 400L);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!z && this.createBondIssued) {
            if (System.currentTimeMillis() < this.ignoreFocusLossUntil) {
                return;
            }
            this.lostFocusAfterCreateBond = true;
            this.handler.removeCallbacks(this.finishIfNotificationPairingRunnable);
        }
        if (z && isDeviceBondedNow()) {
            finishNow();
            return;
        }
        if (z && this.createBondIssued && this.lostFocusAfterCreateBond && !isDeviceBondedNow()) {
            scheduleCancelIfSystemPairingUiGone();
        } else {
            if (!z || this.bondFinished || this.bondRequested) {
                return;
            }
            scheduleCreateBond(80L);
        }
    }

    private void scheduleCreateBond(long j) {
        this.handler.removeCallbacks(this.tryCreateBondRunnable);
        this.handler.postDelayed(this.tryCreateBondRunnable, j);
    }

    @Override // android.app.Activity
    protected void onUserLeaveHint() {
        super.onUserLeaveHint();
        if (this.bondFinished || TextUtils.isEmpty(this.deviceAddress)) {
            return;
        }
        LogToFile.i("BluetoothBondActivity: onUserLeaveHint 忽略（避免误杀系统配对框）");
        MultiBluetoothManager.getInstance(getApplicationContext()).suppressBackgroundBondCancel(8000L);
        if (isDeviceBondedNow()) {
            finishNow();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startBondAttempt() {
        if (this.bondFinished || TextUtils.isEmpty(this.deviceAddress) || isFinishing()) {
            return;
        }
        if (isDeviceBondedNow()) {
            finishNow();
            return;
        }
        if (this.bondRequested && this.createBondIssued) {
            startBondedPoll();
            return;
        }
        final MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(getApplicationContext());
        if (multiBluetoothManager.wasBondCancelledSince(this.bondEpoch)) {
            LogToFile.i("BluetoothBondActivity: 用户已取消，跳过 createBond");
            finishNow();
            return;
        }
        this.bondRequested = true;
        clearTouchesThroughFlag();
        LogToFile.i("BluetoothBondActivity: 窗口就绪，前台发起 createBond -> " + this.deviceAddress);
        BluetoothBondHelper.performBond(this, this.deviceAddress, new BluetoothBondHelper.BondCallback() { // from class: com.qianhe.yct.activity.BluetoothBondActivity.5
            @Override // com.qianhe.yct.utils.BluetoothBondHelper.BondCallback
            public void onBondStarted(boolean z) {
                if (z) {
                    BluetoothBondActivity.this.createBondIssued = true;
                    BluetoothBondActivity.this.allowTouchesThroughToPairingDialog();
                    if (BluetoothBondActivity.this.isDeviceBondedNow()) {
                        BluetoothBondActivity.this.finishNow();
                        return;
                    } else {
                        BluetoothBondActivity.this.startBondedPoll();
                        BluetoothBondActivity.this.scheduleFinishIfNotificationPairing();
                    }
                }
                if (multiBluetoothManager.wasBondCancelledSince(BluetoothBondActivity.this.bondEpoch)) {
                    LogToFile.i("BluetoothBondActivity: createBond 回调时已取消");
                    multiBluetoothManager.cancelBondingIfNeeded();
                    BluetoothBondActivity.this.finishNow();
                } else {
                    if (z || BluetoothBondActivity.this.bondFinished || BluetoothBondActivity.this.isFinishing()) {
                        return;
                    }
                    LogToFile.e("BluetoothBondActivity: createBond 失败");
                    BluetoothBondActivity.this.finishNow();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startBondedPoll() {
        this.handler.removeCallbacks(this.pollBondedRunnable);
        this.handler.postDelayed(this.pollBondedRunnable, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleFinishIfNotificationPairing() {
        this.handler.removeCallbacks(this.finishIfNotificationPairingRunnable);
        this.handler.postDelayed(this.finishIfNotificationPairingRunnable, 700L);
    }

    private void scheduleCancelIfSystemPairingUiGone() {
        this.handler.removeCallbacks(this.cancelIfSystemPairingUiGoneRunnable);
        this.handler.postDelayed(this.cancelIfSystemPairingUiGoneRunnable, 600L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void allowTouchesThroughToPairingDialog() {
        if (getWindow() != null) {
            getWindow().addFlags(16);
        }
    }

    private void clearTouchesThroughFlag() {
        if (getWindow() != null) {
            getWindow().clearFlags(16);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public boolean isDeviceBondedNow() {
        BluetoothAdapter defaultAdapter;
        if (TextUtils.isEmpty(this.deviceAddress) || (defaultAdapter = BluetoothAdapter.getDefaultAdapter()) == null) {
            return false;
        }
        return defaultAdapter.getRemoteDevice(this.deviceAddress).getBondState() == 12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public boolean isBondNoneNow() {
        BluetoothAdapter defaultAdapter;
        if (TextUtils.isEmpty(this.deviceAddress) || (defaultAdapter = BluetoothAdapter.getDefaultAdapter()) == null) {
            return false;
        }
        return defaultAdapter.getRemoteDevice(this.deviceAddress).getBondState() == 10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyUserCancelledAndFinish() {
        if (this.bondFinished) {
            finishNow();
        } else {
            MultiBluetoothManager.getInstance(getApplicationContext()).cancelBondingIfNeeded();
            finishNow();
        }
    }

    private void registerFinishReceiver() {
        this.finishReceiver = new BroadcastReceiver() { // from class: com.qianhe.yct.activity.BluetoothBondActivity.6
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (!"com.qianhe.yct.action.FINISH_BLUETOOTH_BOND".equals(intent.getAction()) || BluetoothBondActivity.this.bondFinished) {
                    return;
                }
                LogToFile.i("BluetoothBondActivity: 收到关闭配对页广播");
                BluetoothBondActivity.this.finishNow();
            }
        };
        IntentFilter intentFilter = new IntentFilter("com.qianhe.yct.action.FINISH_BLUETOOTH_BOND");
        if (Build.VERSION.SDK_INT >= 33) {
            registerReceiver(this.finishReceiver, intentFilter, 4);
        } else {
            registerReceiver(this.finishReceiver, intentFilter);
        }
    }

    private void registerBondReceiver() {
        this.bondReceiver = new BroadcastReceiver() { // from class: com.qianhe.yct.activity.BluetoothBondActivity.7
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                BluetoothDevice bondEventDevice;
                if ("android.bluetooth.device.action.BOND_STATE_CHANGED".equals(intent.getAction()) && (bondEventDevice = BluetoothBondActivity.getBondEventDevice(intent)) != null && BluetoothBondActivity.this.deviceAddress.equalsIgnoreCase(bondEventDevice.getAddress())) {
                    int intExtra = intent.getIntExtra("android.bluetooth.device.extra.BOND_STATE", RecyclerView.UNDEFINED_DURATION);
                    int intExtra2 = intent.getIntExtra("android.bluetooth.device.extra.PREVIOUS_BOND_STATE", RecyclerView.UNDEFINED_DURATION);
                    if (intExtra == 12) {
                        LogToFile.i("BluetoothBondActivity: 配对成功，关闭配对页");
                        BluetoothBondActivity.this.finishNow();
                        return;
                    }
                    if (intExtra != 10 || intExtra2 != 11) {
                        if (intExtra == 11) {
                            BluetoothBondActivity.this.sawBonding = true;
                            MultiBluetoothManager.getInstance(BluetoothBondActivity.this.getApplicationContext()).suppressBackgroundBondCancel(8000L);
                            return;
                        }
                        return;
                    }
                    if (BluetoothBondActivity.this.isDeviceBondedNow()) {
                        LogToFile.i("BluetoothBondActivity: PIN/残留配对结束，但设备已配对，关闭配对页");
                        BluetoothBondActivity.this.finishNow();
                    } else if (!BluetoothBondActivity.this.createBondIssued && !BluetoothBondActivity.this.sawBonding) {
                        LogToFile.i("BluetoothBondActivity: 忽略发起前的残留配对结束");
                    } else {
                        LogToFile.i("BluetoothBondActivity: 用户取消系统配对");
                        BluetoothBondActivity.this.notifyUserCancelledAndFinish();
                    }
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter("android.bluetooth.device.action.BOND_STATE_CHANGED");
        if (Build.VERSION.SDK_INT >= 33) {
            registerReceiver(this.bondReceiver, intentFilter, 4);
        } else {
            registerReceiver(this.bondReceiver, intentFilter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishNow() {
        if (this.bondFinished && isFinishing()) {
            return;
        }
        this.bondFinished = true;
        this.handler.removeCallbacksAndMessages(null);
        if (isFinishing()) {
            return;
        }
        finish();
        overridePendingTransition(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static BluetoothDevice getBondEventDevice(Intent intent) {
        if (Build.VERSION.SDK_INT >= 33) {
            return (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE", BluetoothDevice.class);
        }
        return (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.handler.removeCallbacksAndMessages(null);
        BroadcastReceiver broadcastReceiver = this.bondReceiver;
        if (broadcastReceiver != null) {
            try {
                unregisterReceiver(broadcastReceiver);
            } catch (IllegalArgumentException unused) {
            }
            this.bondReceiver = null;
        }
        BroadcastReceiver broadcastReceiver2 = this.finishReceiver;
        if (broadcastReceiver2 != null) {
            try {
                unregisterReceiver(broadcastReceiver2);
            } catch (IllegalArgumentException unused2) {
            }
            this.finishReceiver = null;
        }
        super.onDestroy();
    }
}
