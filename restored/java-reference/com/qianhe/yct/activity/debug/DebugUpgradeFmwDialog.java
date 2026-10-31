package com.qianhe.yct.activity.debug;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import com.YctDeviceManager;
import com.qh.yctdevice.YctDevice;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.rtkclientlib.event.UpgradeCancelEvent;
import com.qianhe.rtkclientlib.event.UpgradeStartEvent;
import com.qianhe.rtkclientlib.event.UpgradeStateEvent;
import com.qianhe.rtkclientlib.event.UpgradeWriteEvent;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$string;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogDebugUpgradeBinding;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.event.BluetoothConnectStateEvent;
import com.qianhe.yct.event.ReloadAppConfigEvent;
import com.qianhe.yct.manage.AppConfigManager;
import com.tencent.mm.opensdk.constants.ConstantsAPI;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class DebugUpgradeFmwDialog extends BaseDialogFragment {
    private DialogDebugUpgradeBinding binding;
    private int count;
    private int currentStep;
    private DeviceType deviceType;
    private String fileMd5;
    private long fileSize;
    private ScheduledFuture<?> futureStateTimer;
    private Future<?> futureWrite;
    private ScheduledFuture<?> futureWriteTimer;
    private long lastAnswerTime;
    private String mFilePath;
    private int totalStep;
    private YctDevice yctDevice;
    private String session = "";
    private int currentIndex = 0;
    private final ExecutorService executorServiceWrite = Executors.newSingleThreadExecutor();
    private ScheduledExecutorService executorWriteTimer = Executors.newSingleThreadScheduledExecutor();
    private ScheduledExecutorService executorStateTimer = Executors.newSingleThreadScheduledExecutor();
    private String model = "";
    private volatile boolean waitingReboot = false;
    private volatile boolean upgradeFinished = false;
    private final AtomicReference<Boolean> startWrite = new AtomicReference<>(Boolean.FALSE);
    private final Handler handler = new Handler(Looper.getMainLooper()) { // from class: com.qianhe.yct.activity.debug.DebugUpgradeFmwDialog.6
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
        }
    };

    public interface OnCloseListener {
    }

    /* renamed from: -$$Nest$fgetlistener, reason: not valid java name */
    static /* bridge */ /* synthetic */ OnCloseListener m1612$$Nest$fgetlistener(DebugUpgradeFmwDialog debugUpgradeFmwDialog) {
        debugUpgradeFmwDialog.getClass();
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment
    @SuppressLint({"ClickableViewAccessibility"})
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogDebugUpgradeBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        EventBus.getDefault().register(this);
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.qianhe.yct.activity.debug.DebugUpgradeFmwDialog.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 4 && keyEvent.getAction() == 1;
            }
        });
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        if (getArguments() != null) {
            Bundle arguments = getArguments();
            this.deviceType = (DeviceType) arguments.getSerializable("deviceType");
            this.mFilePath = arguments.getString("fmwPath");
            this.fileMd5 = arguments.getString("md5");
            this.fileSize = arguments.getLong("fileSize", 0L);
            this.model = arguments.getString("model", "");
            this.totalStep = arguments.getInt("totalStep");
            this.currentStep = arguments.getInt("currentStep");
            if (this.deviceType == DeviceType.BASE) {
                this.yctDevice = YctDeviceManager.getInstanceBase();
            } else {
                this.yctDevice = YctDeviceManager.getInstanceH5();
            }
            try {
                if (!TextUtils.isEmpty(this.fileMd5)) {
                    this.session = this.fileMd5.substring(0, 4);
                }
            } catch (Exception e) {
                LogToFile.e("DebugUpgradeFmwDialog:" + e);
            }
            if (YCTApplication.getInstance().isGnssFmw(this.model)) {
                startGnssUpgrade();
            } else {
                EventBus.getDefault().post(new OrderBean(this.deviceType, "UPGRADE,STATE"));
            }
        }
        this.binding.tvClose.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.debug.DebugUpgradeFmwDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DebugUpgradeFmwDialog debugUpgradeFmwDialog = DebugUpgradeFmwDialog.this;
                debugUpgradeFmwDialog.showTipDialog(debugUpgradeFmwDialog.getString(R$string.cancel_upgrade), DebugUpgradeFmwDialog.this.getString(R$string.ok), null);
                DebugUpgradeFmwDialog.this.yctDevice.stopFmwUpdate();
                DebugUpgradeFmwDialog.this.dismiss();
            }
        });
        return alertDialogCreate;
    }

    private void startGnssUpgrade() {
        EventBus.getDefault().post("startGnssUpgrade");
        refreshTip(getString(R$string.transferring_firmware));
        YctDevice yctDevice = this.yctDevice;
        if (yctDevice != null) {
            yctDevice.startFmwUpdate(this.model.contains("M10") ? this.yctDevice.FMW_TYPE_BEIYUN : this.model.contains("980") ? this.yctDevice.FMW_TYPE_UNICORE : this.yctDevice.FMW_TYPE_DEVICE, this.mFilePath, new AnonymousClass3());
        }
    }

    /* renamed from: com.qianhe.yct.activity.debug.DebugUpgradeFmwDialog$3, reason: invalid class name */
    class AnonymousClass3 implements YctDevice.FmwUpdateListener {
        AnonymousClass3() {
        }

        @Override // com.qh.yctdevice.YctDevice.FmwUpdateListener
        public void onUpdateSuccessed() {
            DebugUpgradeFmwDialog.this.handler.post(new Runnable() { // from class: com.qianhe.yct.activity.debug.DebugUpgradeFmwDialog.3.1
                @Override // java.lang.Runnable
                public void run() {
                    LogToFile.i("===============板卡固件升级成功===================");
                    DebugUpgradeFmwDialog.this.yctDevice.stopFmwUpdate();
                    DebugUpgradeFmwDialog.this.binding.tvClose.setVisibility(8);
                    EventBus.getDefault().post(new ReloadAppConfigEvent(AppConfigManager.getInstance().getAppConfig()));
                    DebugUpgradeFmwDialog debugUpgradeFmwDialog = DebugUpgradeFmwDialog.this;
                    debugUpgradeFmwDialog.showTipDialog(debugUpgradeFmwDialog.getString(R$string.upgrade_success), DebugUpgradeFmwDialog.this.getString(R$string.ok), null);
                    if (YCTApplication.getInstance().isGnssFmw(DebugUpgradeFmwDialog.this.model)) {
                        EventBus.getDefault().post("restoreConnectCheck");
                    }
                    DebugUpgradeFmwDialog.this.handler.postDelayed(new Runnable() { // from class: com.qianhe.yct.activity.debug.DebugUpgradeFmwDialog.3.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (DebugUpgradeFmwDialog.this.isAdded()) {
                                if (YCTApplication.getInstance().isGnssFmw(DebugUpgradeFmwDialog.this.model)) {
                                    EventBus.getDefault().post(new OrderBean(DebugUpgradeFmwDialog.this.deviceType, "SET,RESTART"));
                                }
                                DebugUpgradeFmwDialog.this.dismiss();
                            }
                        }
                    }, 200L);
                }
            });
        }

        @Override // com.qh.yctdevice.YctDevice.FmwUpdateListener
        public void onUpdateFailed(int i, final String str) {
            DebugUpgradeFmwDialog.this.handler.post(new Runnable() { // from class: com.qianhe.yct.activity.debug.DebugUpgradeFmwDialog.3.2
                @Override // java.lang.Runnable
                public void run() {
                    if (DebugUpgradeFmwDialog.this.isAdded()) {
                        if (!str.contains("cancel")) {
                            DebugUpgradeFmwDialog debugUpgradeFmwDialog = DebugUpgradeFmwDialog.this;
                            debugUpgradeFmwDialog.showTipDialog(str, debugUpgradeFmwDialog.getString(R$string.ok), null);
                        }
                        DebugUpgradeFmwDialog.this.dismiss();
                    }
                }
            });
        }

        @Override // com.qh.yctdevice.YctDevice.FmwUpdateListener
        public void onUpdateProgress(final int i, final int i2) {
            DebugUpgradeFmwDialog.this.handler.post(new Runnable() { // from class: com.qianhe.yct.activity.debug.DebugUpgradeFmwDialog.3.3
                @Override // java.lang.Runnable
                public void run() {
                    String str;
                    if (DebugUpgradeFmwDialog.this.isAdded()) {
                        int i3 = i;
                        if (i3 == 0) {
                            DebugUpgradeFmwDialog.this.refreshTip(DebugUpgradeFmwDialog.this.getString(R$string.transferring_firmware) + i2 + "%");
                            return;
                        }
                        if (i3 == 1) {
                            DebugUpgradeFmwDialog debugUpgradeFmwDialog = DebugUpgradeFmwDialog.this;
                            debugUpgradeFmwDialog.refreshTip(debugUpgradeFmwDialog.getString(R$string.unzip_firmware));
                            return;
                        }
                        if (i3 == 2) {
                            DebugUpgradeFmwDialog debugUpgradeFmwDialog2 = DebugUpgradeFmwDialog.this;
                            StringBuilder sb = new StringBuilder();
                            sb.append(DebugUpgradeFmwDialog.this.getString(R$string.burn_firmware));
                            if (i2 != -1) {
                                str = i2 + "%";
                            } else {
                                str = "";
                            }
                            sb.append(str);
                            debugUpgradeFmwDialog2.refreshTip(sb.toString());
                        }
                    }
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(UpgradeStateEvent upgradeStateEvent) {
        if ("IDEL".equals(upgradeStateEvent.state)) {
            if (this.waitingReboot) {
                return;
            }
            refreshTip(getString(R$string.transferring_firmware) + "0%");
            EventBus.getDefault().post(new OrderBean(upgradeStateEvent.deviceType, "UPGRADE,START," + this.session + "," + this.fileSize + "," + this.fileMd5));
            return;
        }
        if ("FINISHED".equals(upgradeStateEvent.state)) {
            LogToFile.i("UpgradeStateEvent - 固件升级完成");
            onH5UpgradeSuccess(upgradeStateEvent.deviceType);
            return;
        }
        if (!"GOING".equals(upgradeStateEvent.state) || this.waitingReboot) {
            return;
        }
        if (this.fileSize == upgradeStateEvent.totalSize && this.session.equals(upgradeStateEvent.session)) {
            this.currentIndex = upgradeStateEvent.currentIndex;
            refreshTip(getString(R$string.transferring_firmware) + ((int) ((this.currentIndex * 100) / this.fileSize)) + "%");
            startWriteTimer(upgradeStateEvent.deviceType);
            writeFwm(upgradeStateEvent.deviceType);
            return;
        }
        EventBus.getDefault().post(new OrderBean(upgradeStateEvent.deviceType, "UPGRADE,CANCLE"));
    }

    private void onH5UpgradeSuccess(DeviceType deviceType) {
        if (this.upgradeFinished) {
            return;
        }
        this.upgradeFinished = true;
        this.waitingReboot = false;
        this.startWrite.set(Boolean.FALSE);
        Future<?> future = this.futureWrite;
        if (future != null) {
            future.cancel(true);
            this.futureWrite = null;
        }
        stopWriteTimer();
        stopStateTimer();
        cancelLoadingDialog();
        this.lastAnswerTime = 0L;
        showTipDialog(getString(R$string.upgrade_success), getString(R$string.ok), null);
        EventBus.getDefault().post(new OrderBean(deviceType, "UPGRADE,CANCLE"));
        dismiss();
    }

    private void startWriteTimer(final DeviceType deviceType) {
        if (this.futureWriteTimer == null) {
            stopStateTimer();
            LogToFile.i("开启定时检测写入应答");
            this.lastAnswerTime = System.currentTimeMillis();
            if (this.executorWriteTimer.isShutdown()) {
                this.executorWriteTimer = Executors.newSingleThreadScheduledExecutor();
            }
            this.futureWriteTimer = this.executorWriteTimer.scheduleWithFixedDelay(new Runnable() { // from class: com.qianhe.yct.activity.debug.DebugUpgradeFmwDialog.4
                @Override // java.lang.Runnable
                public void run() {
                    if (System.currentTimeMillis() - DebugUpgradeFmwDialog.this.lastAnswerTime >= 5000) {
                        LogToFile.i("主机5秒内无应答，重新调用writeFwm()");
                        if (DebugUpgradeFmwDialog.this.futureWrite != null) {
                            DebugUpgradeFmwDialog.this.futureWrite.cancel(true);
                        }
                        DebugUpgradeFmwDialog.this.futureWrite = null;
                        DebugUpgradeFmwDialog.this.writeFwm(deviceType);
                    }
                }
            }, 5000L, 5000L, TimeUnit.MILLISECONDS);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(UpgradeStartEvent upgradeStartEvent) {
        if (this.waitingReboot || this.upgradeFinished) {
            LogToFile.i("UpgradeStartEvent - 已在等待重启或已成功，忽略START应答");
        } else if (upgradeStartEvent.line.contains("OK")) {
            startWriteTimer(upgradeStartEvent.deviceType);
            writeFwm(upgradeStartEvent.deviceType);
        } else {
            showTipDialog(getString(R$string.upgrade_failed), getString(R$string.ok), null);
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeFwm(final DeviceType deviceType) {
        if (this.executorServiceWrite.isShutdown()) {
            return;
        }
        this.futureWrite = this.executorServiceWrite.submit(new Runnable() { // from class: com.qianhe.yct.activity.debug.DebugUpgradeFmwDialog.5
            @Override // java.lang.Runnable
            public void run() throws IOException {
                byte[] bArr;
                try {
                    FileInputStream fileInputStream = new FileInputStream(new File(DebugUpgradeFmwDialog.this.mFilePath));
                    try {
                        if (DebugUpgradeFmwDialog.this.fileSize - DebugUpgradeFmwDialog.this.currentIndex < ConstantsAPI.AppSupportContentFlag.MMAPP_SUPPORT_XLS) {
                            bArr = new byte[(int) (DebugUpgradeFmwDialog.this.fileSize - DebugUpgradeFmwDialog.this.currentIndex)];
                        } else {
                            bArr = new byte[1024];
                        }
                        long jSkip = fileInputStream.skip(DebugUpgradeFmwDialog.this.currentIndex);
                        if (jSkip != DebugUpgradeFmwDialog.this.currentIndex) {
                            LogToFile.e("读取失败：" + jSkip);
                        } else {
                            int i = fileInputStream.read(bArr);
                            if (i != -1) {
                                EventBus.getDefault().post(new OrderBean(deviceType, "UPGRADE,WRITE," + DebugUpgradeFmwDialog.this.session + "," + DebugUpgradeFmwDialog.this.currentIndex + "," + i + "," + DebugUpgradeFmwDialog.this.sumBytesAsUint8(bArr) + "," + Base64.encodeToString(bArr, 2)));
                            }
                        }
                        fileInputStream.close();
                    } finally {
                    }
                } catch (Exception e) {
                    LogToFile.e("writeFwm：" + e);
                }
            }
        });
    }

    public long sumBytesAsUint8(byte[] bArr) {
        long j = 0;
        for (byte b : bArr) {
            j += b & 255;
        }
        return j;
    }

    private void cancelUpgrade(String str) {
        if (!TextUtils.isEmpty(str)) {
            showToastDialog(str);
        }
        this.handler.removeCallbacksAndMessages(null);
        if (YCTApplication.getInstance().isGnssFmw(this.model)) {
            this.yctDevice.stopFmwUpdate();
            return;
        }
        this.startWrite.set(Boolean.FALSE);
        stopWriteFmw();
        stopWriteTimer();
        stopStateTimer();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(UpgradeWriteEvent upgradeWriteEvent) {
        if ("FINISHED".equals(upgradeWriteEvent.state)) {
            LogToFile.i("UpgradeWriteEvent - 固件升级完成");
            onH5UpgradeSuccess(upgradeWriteEvent.deviceType);
            return;
        }
        if ("GOING".equals(upgradeWriteEvent.state)) {
            if (this.waitingReboot) {
                return;
            }
            this.lastAnswerTime = System.currentTimeMillis();
            this.currentIndex = upgradeWriteEvent.currentIndex;
            this.startWrite.set(Boolean.TRUE);
            writeFwm(upgradeWriteEvent.deviceType);
            refreshTip(getString(R$string.transferring_firmware) + ((int) ((this.currentIndex * 100) / this.fileSize)) + "%");
            return;
        }
        if ("APPLYING".equals(upgradeWriteEvent.state)) {
            LogToFile.i("===============传输完成，等待重启===================");
            this.waitingReboot = true;
            this.binding.tvClose.setVisibility(8);
            this.startWrite.set(Boolean.FALSE);
            stopWriteTimer();
            this.lastAnswerTime = 0L;
            startStateTimer(upgradeWriteEvent.deviceType);
            refreshTip(getString(R$string.verifying_data));
            return;
        }
        if (upgradeWriteEvent.state.contains("IGNORE")) {
            LogToFile.i("===============写入被忽略-重新写===================");
            return;
        }
        if ("ERROR".equals(upgradeWriteEvent.result)) {
            if (this.waitingReboot) {
                LogToFile.i("UpgradeWriteEvent - 等待重启阶段忽略ERROR");
                return;
            }
            LogToFile.i("===============传输异常===================");
            cancelUpgrade("");
            showTipDialog(getString(R$string.firmware_transmission_exception), getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.debug.DebugUpgradeFmwDialog.7
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    DebugUpgradeFmwDialog.this.dismiss();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    DebugUpgradeFmwDialog.this.dismiss();
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothConnectStateEvent bluetoothConnectStateEvent) {
        if (bluetoothConnectStateEvent.myDevice.state != BluetoothStateEnum.CONNECTED.getState() && bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.DISCONNECT.getState() && this.deviceType == bluetoothConnectStateEvent.myDevice.deviceType) {
            if (this.startWrite.get().booleanValue()) {
                cancelUpgrade("");
                showTipDialog(getString(R$string.bluetooth_disconnection_click_reconnect), getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.debug.DebugUpgradeFmwDialog.8
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        ((BaseActivity) DebugUpgradeFmwDialog.this.requireActivity()).gotoBluetoothActivity();
                        DebugUpgradeFmwDialog.this.dismiss();
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                        if (z) {
                            DebugUpgradeFmwDialog.this.requireActivity().finish();
                        }
                    }
                });
            }
            this.yctDevice.stopFmwUpdate();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(UpgradeCancelEvent upgradeCancelEvent) {
        if (this.waitingReboot || this.upgradeFinished || TextUtils.isEmpty(this.session) || this.fileSize <= 0 || TextUtils.isEmpty(this.fileMd5)) {
            return;
        }
        EventBus.getDefault().post(new OrderBean(upgradeCancelEvent.deviceType, "UPGRADE,START," + this.session + "," + this.fileSize + "," + this.fileMd5));
    }

    private void startStateTimer(final DeviceType deviceType) {
        if (this.futureStateTimer == null) {
            LogToFile.i("开启定时查询升级状态");
            this.count = 0;
            ScheduledExecutorService scheduledExecutorService = this.executorStateTimer;
            if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
                this.executorStateTimer = Executors.newSingleThreadScheduledExecutor();
            }
            this.futureStateTimer = this.executorStateTimer.scheduleWithFixedDelay(new Runnable() { // from class: com.qianhe.yct.activity.debug.DebugUpgradeFmwDialog.9
                @Override // java.lang.Runnable
                public void run() {
                    DebugUpgradeFmwDialog.this.count++;
                    LogToFile.i("查询升级状态..." + DebugUpgradeFmwDialog.this.count);
                    EventBus.getDefault().post(new OrderBean(deviceType, "UPGRADE,STATE"));
                }
            }, 2000L, 2000L, TimeUnit.MILLISECONDS);
        }
    }

    private void stopStateTimer() {
        if (this.futureStateTimer != null) {
            LogToFile.i("取消定时查询升级状态。");
            this.futureStateTimer.cancel(true);
            this.futureStateTimer = null;
            ScheduledExecutorService scheduledExecutorService = this.executorStateTimer;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }
    }

    public void refreshTip(String str) {
        DialogDebugUpgradeBinding dialogDebugUpgradeBinding = this.binding;
        if (dialogDebugUpgradeBinding != null) {
            dialogDebugUpgradeBinding.tvTip.setText(str);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                isPad();
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * 0.6f), -2);
                window.setDimAmount(0.3f);
                setWindowsCallback(window);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.activity.debug.DebugUpgradeFmwDialog.10
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (DebugUpgradeFmwDialog.this.getFragmentManager() != null) {
                        DebugUpgradeFmwDialog.this.getFragmentManager().beginTransaction().remove(DebugUpgradeFmwDialog.this).commitAllowingStateLoss();
                    }
                    DebugUpgradeFmwDialog.m1612$$Nest$fgetlistener(DebugUpgradeFmwDialog.this);
                }
            });
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
    }

    private void stopWriteTimer() {
        this.startWrite.set(Boolean.FALSE);
        if (this.futureWriteTimer != null) {
            LogToFile.i("取消定时检测写入应答。");
            this.futureWriteTimer.cancel(true);
            this.futureWriteTimer = null;
            ScheduledExecutorService scheduledExecutorService = this.executorWriteTimer;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }
    }

    private void stopWriteFmw() {
        if (this.futureWriteTimer != null) {
            LogToFile.i("取消写入。");
            Future<?> future = this.futureWrite;
            if (future != null) {
                future.cancel(true);
            }
            this.futureWrite = null;
            ExecutorService executorService = this.executorServiceWrite;
            if (executorService != null) {
                executorService.shutdownNow();
            }
        }
    }

    @Override // com.qianhe.yct.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        stopWriteFmw();
        stopWriteTimer();
        stopStateTimer();
        this.handler.removeCallbacksAndMessages(null);
        EventBus.getDefault().unregister(this);
        this.yctDevice.stopFmwUpdate();
    }
}
