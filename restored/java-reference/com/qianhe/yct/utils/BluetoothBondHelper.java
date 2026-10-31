package com.qianhe.yct.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.client.BluetoothClient;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class BluetoothBondHelper {
    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    public interface BondCallback {
        void onBondStarted(boolean z);
    }

    @SuppressLint({"MissingPermission"})
    public static boolean performBond(Activity activity, String str, BondCallback bondCallback) {
        String strValidateBond = validateBond(activity, str);
        if (strValidateBond != null) {
            LogToFile.w("BluetoothBondHelper: " + strValidateBond);
            if (bondCallback != null) {
                bondCallback.onBondStarted(false);
            }
            return false;
        }
        BluetoothDevice remoteDevice = BluetoothAdapter.getDefaultAdapter().getRemoteDevice(str);
        if (remoteDevice.getBondState() == 12) {
            if (bondCallback != null) {
                bondCallback.onBondStarted(true);
            }
            return true;
        }
        if (remoteDevice.getBondState() == 11) {
            LogToFile.i("BluetoothBondHelper: 已在配对中，等待完成，不重复 createBond " + remoteDevice.getName());
            MultiBluetoothManager.getInstance(activity.getApplicationContext()).suppressBackgroundBondCancel(8000L);
            if (bondCallback != null) {
                bondCallback.onBondStarted(true);
            }
            return true;
        }
        LogToFile.i("BluetoothBondHelper: 调度 createBond -> " + remoteDevice.getName());
        MultiBluetoothManager.getInstance(activity.getApplicationContext()).suppressBackgroundBondCancel(8000L);
        scheduleCreateBond(activity, remoteDevice, bondCallback, 0, MultiBluetoothManager.getInstance(activity.getApplicationContext()).getBondCancelEpoch());
        return true;
    }

    /* renamed from: com.qianhe.yct.utils.BluetoothBondHelper$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ Activity val$activity;
        final /* synthetic */ int val$attempt;
        final /* synthetic */ BondCallback val$callback;
        final /* synthetic */ long val$cancelEpoch;
        final /* synthetic */ BluetoothDevice val$device;

        AnonymousClass1(Activity activity, long j, BondCallback bondCallback, BluetoothDevice bluetoothDevice, int i) {
            this.val$activity = activity;
            this.val$cancelEpoch = j;
            this.val$callback = bondCallback;
            this.val$device = bluetoothDevice;
            this.val$attempt = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this.val$activity.getApplicationContext());
            if (multiBluetoothManager.wasBondCancelledSince(this.val$cancelEpoch)) {
                LogToFile.i("BluetoothBondHelper: 用户已取消，跳过 createBond");
                BondCallback bondCallback = this.val$callback;
                if (bondCallback != null) {
                    bondCallback.onBondStarted(false);
                    return;
                }
                return;
            }
            String strValidateBond = BluetoothBondHelper.validateBond(this.val$activity, this.val$device.getAddress());
            if (strValidateBond != null) {
                LogToFile.w("BluetoothBondHelper: createBond 跳过, " + strValidateBond);
                if (this.val$attempt < 11) {
                    Handler handler = BluetoothBondHelper.MAIN;
                    final Activity activity = this.val$activity;
                    final BluetoothDevice bluetoothDevice = this.val$device;
                    final BondCallback bondCallback2 = this.val$callback;
                    final int i = this.val$attempt;
                    final long j = this.val$cancelEpoch;
                    handler.postDelayed(new Runnable() { // from class: com.qianhe.yct.utils.BluetoothBondHelper$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            BluetoothBondHelper.scheduleCreateBond(activity, bluetoothDevice, bondCallback2, i + 1, j);
                        }
                    }, 400L);
                    return;
                }
                BondCallback bondCallback3 = this.val$callback;
                if (bondCallback3 != null) {
                    bondCallback3.onBondStarted(false);
                    return;
                }
                return;
            }
            if (this.val$device.getBondState() == 12) {
                multiBluetoothManager.suppressBackgroundBondCancel(8000L);
                BondCallback bondCallback4 = this.val$callback;
                if (bondCallback4 != null) {
                    bondCallback4.onBondStarted(true);
                    return;
                }
                return;
            }
            if (this.val$device.getBondState() == 11) {
                LogToFile.i("BluetoothBondHelper: 已在配对中，等待完成");
                multiBluetoothManager.suppressBackgroundBondCancel(8000L);
                BondCallback bondCallback5 = this.val$callback;
                if (bondCallback5 != null) {
                    bondCallback5.onBondStarted(true);
                    return;
                }
                return;
            }
            try {
                if (multiBluetoothManager.wasBondCancelledSince(this.val$cancelEpoch)) {
                    LogToFile.i("BluetoothBondHelper: createBond 前检测到取消");
                    BondCallback bondCallback6 = this.val$callback;
                    if (bondCallback6 != null) {
                        bondCallback6.onBondStarted(false);
                        return;
                    }
                    return;
                }
                multiBluetoothManager.suppressBackgroundBondCancel(8000L);
                boolean zCreateSppBond = BluetoothClient.createSppBond(this.val$device);
                int bondState = this.val$device.getBondState();
                LogToFile.i("BluetoothBondHelper: createBond=" + zCreateSppBond + " state=" + bondState + " attempt=" + this.val$attempt + " -> " + this.val$device.getName());
                if (!zCreateSppBond && bondState != 11 && bondState != 12) {
                    if (this.val$attempt < 11) {
                        Handler handler2 = BluetoothBondHelper.MAIN;
                        final Activity activity2 = this.val$activity;
                        final BluetoothDevice bluetoothDevice2 = this.val$device;
                        final BondCallback bondCallback7 = this.val$callback;
                        final int i2 = this.val$attempt;
                        final long j2 = this.val$cancelEpoch;
                        handler2.postDelayed(new Runnable() { // from class: com.qianhe.yct.utils.BluetoothBondHelper$1$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                BluetoothBondHelper.scheduleCreateBond(activity2, bluetoothDevice2, bondCallback7, i2 + 1, j2);
                            }
                        }, 400L);
                        return;
                    }
                    BondCallback bondCallback8 = this.val$callback;
                    if (bondCallback8 != null) {
                        bondCallback8.onBondStarted(false);
                        return;
                    }
                    return;
                }
                multiBluetoothManager.suppressBackgroundBondCancel(12000L);
                BondCallback bondCallback9 = this.val$callback;
                if (bondCallback9 != null) {
                    bondCallback9.onBondStarted(true);
                }
            } catch (Throwable th) {
                LogToFile.e("BluetoothBondHelper: createBond 异常 " + th.getMessage());
                if (this.val$attempt < 11) {
                    Handler handler3 = BluetoothBondHelper.MAIN;
                    final Activity activity3 = this.val$activity;
                    final BluetoothDevice bluetoothDevice3 = this.val$device;
                    final BondCallback bondCallback10 = this.val$callback;
                    final int i3 = this.val$attempt;
                    final long j3 = this.val$cancelEpoch;
                    handler3.postDelayed(new Runnable() { // from class: com.qianhe.yct.utils.BluetoothBondHelper$1$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            BluetoothBondHelper.scheduleCreateBond(activity3, bluetoothDevice3, bondCallback10, i3 + 1, j3);
                        }
                    }, 400L);
                    return;
                }
                BondCallback bondCallback11 = this.val$callback;
                if (bondCallback11 != null) {
                    bondCallback11.onBondStarted(false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public static void scheduleCreateBond(Activity activity, BluetoothDevice bluetoothDevice, BondCallback bondCallback, int i, long j) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(activity, j, bondCallback, bluetoothDevice, i);
        if (i == 0 && activity.getWindow() != null && activity.getWindow().getDecorView() != null) {
            activity.getWindow().getDecorView().post(anonymousClass1);
        } else {
            MAIN.postDelayed(anonymousClass1, i == 0 ? 0L : 400L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String validateBond(Activity activity, String str) {
        if (activity == null) {
            return "activity=null";
        }
        if (activity.isFinishing()) {
            return "activity finishing";
        }
        if (activity.isDestroyed()) {
            return "activity destroyed";
        }
        if (TextUtils.isEmpty(str)) {
            return "address empty";
        }
        if (!hasBluetoothBondPermission(activity)) {
            return "无蓝牙配对权限";
        }
        if (BluetoothAdapter.getDefaultAdapter() == null) {
            return "adapter=null";
        }
        return null;
    }

    static boolean hasBluetoothBondPermission(Context context) {
        return Build.VERSION.SDK_INT < 31 || ContextCompat.checkSelfPermission(context, "android.permission.BLUETOOTH_CONNECT") == 0;
    }
}
