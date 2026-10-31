package com.qianhe.yct.dialog;

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
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import com.YctDeviceManager;
import com.qh.yctdevice.YctDevice;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.FileUtil;
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
import com.qianhe.yct.databinding.DialogFmwForcedUpgradeBinding;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.event.BluetoothConnectStateEvent;
import com.qianhe.yct.event.FirmwareFileInfoResponse;
import com.qianhe.yct.event.ReloadAppConfigEvent;
import com.qianhe.yct.manage.AppConfigManager;
import com.qianhe.yct.utils.NetworkDataLoader;
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
import net.lingala.zip4j.util.InternalZipConstants;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class FmwForcedUpgradeDialogFragment extends BaseDialogFragment {
    private DialogFmwForcedUpgradeBinding binding;
    private int currentStep;
    private DeviceType deviceType;
    private String fileMd5;
    private long fileSize;
    private ScheduledFuture<?> futureStateTimer;
    private Future<?> futureWrite;
    private ScheduledFuture<?> futureWriteTimer;
    private int id;
    private long lastAnswerTime;
    private OnCloseListener listener;
    private String mFilePath;
    private int totalStep;
    private LoadingFragment upgradeingFragment;
    private String versionNew;
    private YctDevice yctDevice;
    private String session = "";
    private int currentIndex = 0;
    private ExecutorService executorServiceWrite = Executors.newSingleThreadExecutor();
    private ScheduledExecutorService executorWriteTimer = Executors.newSingleThreadScheduledExecutor();
    private ScheduledExecutorService executorStateTimer = Executors.newSingleThreadScheduledExecutor();
    private String model = "";
    private final AtomicReference<Boolean> startWrite = new AtomicReference<>(Boolean.FALSE);
    private final Handler handler = new Handler(Looper.getMainLooper()) { // from class: com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment.7
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
        }
    };

    public interface OnCloseListener {
        void onClose(int i);
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.listener = onCloseListener;
    }

    @Override // androidx.fragment.app.DialogFragment
    @SuppressLint({"ClickableViewAccessibility"})
    public Dialog onCreateDialog(Bundle bundle) throws JSONException {
        this.binding = DialogFmwForcedUpgradeBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        EventBus.getDefault().register(this);
        this.upgradeingFragment = new LoadingFragment();
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        if (getArguments() != null) {
            Bundle arguments = getArguments();
            this.id = arguments.getInt("id", 0);
            arguments.getString("upgradeLog");
            arguments.getString("versionOld");
            this.deviceType = (DeviceType) arguments.getSerializable("deviceType");
            this.versionNew = arguments.getString("versionNew");
            this.fileSize = arguments.getLong("fileSize", 0L);
            this.fileMd5 = arguments.getString("md5");
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
                e.printStackTrace();
                LogToFile.e("FmwForcedUpgradeDialogFragment:" + e);
            }
        }
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 4 && keyEvent.getAction() == 1;
            }
        });
        refreshTip("获取固件地址...");
        NetworkDataLoader.getInstance().getFirmwareDownloadUrl(this.id, this.deviceType);
        return alertDialogCreate;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(final FirmwareFileInfoResponse firmwareFileInfoResponse) {
        this.startWrite.set(Boolean.TRUE);
        ExecutorService executorService = this.executorServiceWrite;
        if (executorService == null || executorService.isShutdown()) {
            this.executorServiceWrite = Executors.newSingleThreadExecutor();
        }
        String strMkFmwDir = FileUtil.mkFmwDir(requireContext());
        File file = new File(strMkFmwDir);
        if (!file.exists()) {
            file.mkdirs();
        }
        this.mFilePath = strMkFmwDir + InternalZipConstants.ZIP_FILE_SEPARATOR + firmwareFileInfoResponse.version + ".fmw";
        if (!new File(this.mFilePath).exists() || new File(this.mFilePath).length() != firmwareFileInfoResponse.file_size) {
            LogToFile.deleteFolderFile(strMkFmwDir, false);
            refreshTip(getString(R$string.download_firmware) + "0%");
            NetworkDataLoader.getInstance().downloadFirmwareWithProgress(firmwareFileInfoResponse.download_url, this.mFilePath, new NetworkDataLoader.ProgressListener() { // from class: com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment.2
                @Override // com.qianhe.yct.utils.NetworkDataLoader.ProgressListener
                public void update(final long j, final long j2, final boolean z) {
                    if (FmwForcedUpgradeDialogFragment.this.isAdded()) {
                        FmwForcedUpgradeDialogFragment.this.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                int i = (int) ((j * 100) / j2);
                                if (z) {
                                    if (YCTApplication.getInstance().isGnssFmw(FmwForcedUpgradeDialogFragment.this.model)) {
                                        FmwForcedUpgradeDialogFragment.this.startGnssUpgrade();
                                        return;
                                    }
                                    EventBus.getDefault().post(new OrderBean(firmwareFileInfoResponse.deviceType, "UPGRADE,STATE"));
                                    FmwForcedUpgradeDialogFragment fmwForcedUpgradeDialogFragment = FmwForcedUpgradeDialogFragment.this;
                                    fmwForcedUpgradeDialogFragment.refreshTip(fmwForcedUpgradeDialogFragment.getString(R$string.download_success_transferring_firmware));
                                    return;
                                }
                                FmwForcedUpgradeDialogFragment.this.refreshTip(FmwForcedUpgradeDialogFragment.this.getString(R$string.download_firmware) + i + "%");
                            }
                        });
                    }
                }

                @Override // com.qianhe.yct.utils.NetworkDataLoader.ProgressListener
                public void onError() {
                    FmwForcedUpgradeDialogFragment.this.isAdded();
                }
            });
            return;
        }
        if (YCTApplication.getInstance().isGnssFmw(this.model)) {
            startGnssUpgrade();
        } else {
            EventBus.getDefault().post(new OrderBean(firmwareFileInfoResponse.deviceType, "UPGRADE,STATE"));
            requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment.3
                @Override // java.lang.Runnable
                public void run() {
                    FmwForcedUpgradeDialogFragment fmwForcedUpgradeDialogFragment = FmwForcedUpgradeDialogFragment.this;
                    fmwForcedUpgradeDialogFragment.refreshTip(fmwForcedUpgradeDialogFragment.getString(R$string.download_success_transferring_firmware));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startGnssUpgrade() {
        refreshTip(getString(R$string.transferring_firmware));
        if (YCTApplication.getInstance().isGnssFmw(this.model)) {
            EventBus.getDefault().post("startGnssUpgrade");
        }
        YctDevice yctDevice = this.yctDevice;
        if (yctDevice != null) {
            yctDevice.startFmwUpdate(this.model.contains("M10") ? this.yctDevice.FMW_TYPE_BEIYUN : this.model.contains("980") ? this.yctDevice.FMW_TYPE_UNICORE : this.yctDevice.FMW_TYPE_DEVICE, this.mFilePath, new AnonymousClass4());
        }
    }

    /* renamed from: com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment$4, reason: invalid class name */
    class AnonymousClass4 implements YctDevice.FmwUpdateListener {
        AnonymousClass4() {
        }

        @Override // com.qh.yctdevice.YctDevice.FmwUpdateListener
        public void onUpdateSuccessed() {
            FmwForcedUpgradeDialogFragment.this.handler.post(new Runnable() { // from class: com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment.4.1
                @Override // java.lang.Runnable
                public void run() {
                    LogToFile.i("===============板卡固件升级成功===================");
                    ((BaseDialogFragment) FmwForcedUpgradeDialogFragment.this).mSp.edit().putString(Constant.GNSS_FWM_VERSION, FmwForcedUpgradeDialogFragment.this.versionNew).commit();
                    FmwForcedUpgradeDialogFragment.this.yctDevice.stopFmwUpdate();
                    EventBus.getDefault().post(new ReloadAppConfigEvent(AppConfigManager.getInstance().getAppConfig()));
                    if (FmwForcedUpgradeDialogFragment.this.currentStep >= FmwForcedUpgradeDialogFragment.this.totalStep) {
                        FmwForcedUpgradeDialogFragment fmwForcedUpgradeDialogFragment = FmwForcedUpgradeDialogFragment.this;
                        fmwForcedUpgradeDialogFragment.showTipDialog(fmwForcedUpgradeDialogFragment.getString(R$string.firmware_upgrade_completed), FmwForcedUpgradeDialogFragment.this.getString(R$string.ok), null);
                    }
                    EventBus.getDefault().post("restoreConnectCheck");
                    FmwForcedUpgradeDialogFragment.this.handler.postDelayed(new Runnable() { // from class: com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment.4.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (FmwForcedUpgradeDialogFragment.this.isAdded()) {
                                EventBus.getDefault().post(new OrderBean("SET,RESTART"));
                                FmwForcedUpgradeDialogFragment.this.dismiss();
                            }
                        }
                    }, 200L);
                }
            });
        }

        @Override // com.qh.yctdevice.YctDevice.FmwUpdateListener
        public void onUpdateFailed(int i, final String str) {
            FmwForcedUpgradeDialogFragment.this.handler.post(new Runnable() { // from class: com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment.4.2
                @Override // java.lang.Runnable
                public void run() {
                    if (FmwForcedUpgradeDialogFragment.this.isAdded()) {
                        FmwForcedUpgradeDialogFragment.this.dismiss();
                        FmwForcedUpgradeDialogFragment fmwForcedUpgradeDialogFragment = FmwForcedUpgradeDialogFragment.this;
                        fmwForcedUpgradeDialogFragment.showTipDialog(str, fmwForcedUpgradeDialogFragment.getString(R$string.ok), null);
                    }
                }
            });
        }

        @Override // com.qh.yctdevice.YctDevice.FmwUpdateListener
        public void onUpdateProgress(final int i, final int i2) {
            FmwForcedUpgradeDialogFragment.this.handler.post(new Runnable() { // from class: com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment.4.3
                @Override // java.lang.Runnable
                public void run() {
                    String str;
                    if (FmwForcedUpgradeDialogFragment.this.isAdded()) {
                        int i3 = i;
                        if (i3 == 0) {
                            FmwForcedUpgradeDialogFragment.this.refreshTip(FmwForcedUpgradeDialogFragment.this.getString(R$string.transferring_firmware) + i2 + "%");
                            return;
                        }
                        if (i3 == 1) {
                            FmwForcedUpgradeDialogFragment fmwForcedUpgradeDialogFragment = FmwForcedUpgradeDialogFragment.this;
                            fmwForcedUpgradeDialogFragment.refreshTip(fmwForcedUpgradeDialogFragment.getString(R$string.unzip_firmware));
                            return;
                        }
                        if (i3 == 2) {
                            FmwForcedUpgradeDialogFragment fmwForcedUpgradeDialogFragment2 = FmwForcedUpgradeDialogFragment.this;
                            StringBuilder sb = new StringBuilder();
                            sb.append(FmwForcedUpgradeDialogFragment.this.getString(R$string.burn_firmware));
                            if (i2 != -1) {
                                str = i2 + "%";
                            } else {
                                str = "";
                            }
                            sb.append(str);
                            fmwForcedUpgradeDialogFragment2.refreshTip(sb.toString());
                        }
                    }
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(UpgradeStateEvent upgradeStateEvent) {
        if ("IDEL".equals(upgradeStateEvent.state)) {
            refreshTip(getString(R$string.transferring_firmware) + "0%");
            EventBus.getDefault().post(new OrderBean(upgradeStateEvent.deviceType, "UPGRADE,START," + this.session + "," + this.fileSize + "," + this.fileMd5));
            return;
        }
        if ("FINISHED".equals(upgradeStateEvent.state)) {
            stopWriteTimer();
            stopStateTimer();
            cancelLoadingDialog();
            this.lastAnswerTime = 0L;
            if (this.currentStep >= this.totalStep) {
                showTipDialog(getString(R$string.firmware_upgrade_completed), getString(R$string.ok), null);
                EventBus.getDefault().post(new OrderBean(upgradeStateEvent.deviceType, "UPGRADE,CANCLE"));
            }
            dismiss();
            return;
        }
        if ("GOING".equals(upgradeStateEvent.state)) {
            if (this.fileSize == upgradeStateEvent.totalSize && this.session.equals(upgradeStateEvent.session)) {
                this.currentIndex = upgradeStateEvent.currentIndex;
                refreshTip(getString(R$string.transferring_firmware) + ((int) ((this.currentIndex * 100) / this.fileSize)) + "%");
                startWriteTimer(upgradeStateEvent.deviceType);
                writeFwm(upgradeStateEvent.deviceType);
                return;
            }
            EventBus.getDefault().post(new OrderBean(upgradeStateEvent.deviceType, "UPGRADE,CANCLE"));
        }
    }

    private void startWriteTimer(final DeviceType deviceType) {
        if (this.futureWriteTimer == null) {
            stopStateTimer();
            LogToFile.i("开启定时检测写入应答");
            this.lastAnswerTime = System.currentTimeMillis();
            if (this.executorWriteTimer.isShutdown()) {
                this.executorWriteTimer = Executors.newSingleThreadScheduledExecutor();
            }
            this.futureWriteTimer = this.executorWriteTimer.scheduleWithFixedDelay(new Runnable() { // from class: com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment.5
                @Override // java.lang.Runnable
                public void run() {
                    if (System.currentTimeMillis() - FmwForcedUpgradeDialogFragment.this.lastAnswerTime >= 5000) {
                        LogToFile.i("主机5秒内无应答，重新调用writeFwm()");
                        if (FmwForcedUpgradeDialogFragment.this.futureWrite != null) {
                            FmwForcedUpgradeDialogFragment.this.futureWrite.cancel(true);
                        }
                        FmwForcedUpgradeDialogFragment.this.futureWrite = null;
                        FmwForcedUpgradeDialogFragment.this.writeFwm(deviceType);
                    }
                }
            }, 5000L, 5000L, TimeUnit.MILLISECONDS);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(UpgradeStartEvent upgradeStartEvent) {
        if (upgradeStartEvent.line.contains("OK")) {
            startWriteTimer(upgradeStartEvent.deviceType);
            writeFwm(upgradeStartEvent.deviceType);
        } else {
            dismiss();
            showTipDialog(getString(R$string.upgrade_failed), getString(R$string.ok), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeFwm(final DeviceType deviceType) {
        if (this.executorServiceWrite.isShutdown()) {
            return;
        }
        this.futureWrite = this.executorServiceWrite.submit(new Runnable() { // from class: com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment.6
            @Override // java.lang.Runnable
            public void run() throws IOException {
                byte[] bArr;
                try {
                    FileInputStream fileInputStream = new FileInputStream(new File(FmwForcedUpgradeDialogFragment.this.mFilePath));
                    try {
                        if (FmwForcedUpgradeDialogFragment.this.fileSize - FmwForcedUpgradeDialogFragment.this.currentIndex < ConstantsAPI.AppSupportContentFlag.MMAPP_SUPPORT_XLS) {
                            bArr = new byte[(int) (FmwForcedUpgradeDialogFragment.this.fileSize - FmwForcedUpgradeDialogFragment.this.currentIndex)];
                        } else {
                            bArr = new byte[1024];
                        }
                        long jSkip = fileInputStream.skip(FmwForcedUpgradeDialogFragment.this.currentIndex);
                        if (jSkip != FmwForcedUpgradeDialogFragment.this.currentIndex) {
                            LogToFile.e("读取失败：" + jSkip);
                        } else {
                            int i = fileInputStream.read(bArr);
                            if (i != -1) {
                                EventBus.getDefault().post(new OrderBean(deviceType, "UPGRADE,WRITE," + FmwForcedUpgradeDialogFragment.this.session + "," + FmwForcedUpgradeDialogFragment.this.currentIndex + "," + i + "," + FmwForcedUpgradeDialogFragment.this.sumBytesAsUint8(bArr) + "," + Base64.encodeToString(bArr, 2)));
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
        NetworkDataLoader.getInstance().cancelDownload();
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
            this.startWrite.set(Boolean.FALSE);
            stopWriteTimer();
            stopStateTimer();
            this.lastAnswerTime = 0L;
            if (this.currentStep >= this.totalStep) {
                showTipDialog(getString(R$string.firmware_upgrade_completed), getString(R$string.ok), null);
                EventBus.getDefault().post(new OrderBean("UPGRADE,CANCLE"));
            }
            dismiss();
            return;
        }
        if ("GOING".equals(upgradeWriteEvent.state)) {
            this.lastAnswerTime = System.currentTimeMillis();
            this.currentIndex = upgradeWriteEvent.currentIndex;
            this.startWrite.set(Boolean.TRUE);
            writeFwm(upgradeWriteEvent.deviceType);
            refreshTip(getString(R$string.transferring_firmware) + ((int) ((this.currentIndex * 100) / this.fileSize)) + "%");
            return;
        }
        if ("APPLYING".equals(upgradeWriteEvent.state)) {
            LogToFile.i("===============传输完成，等待重启===================");
            this.startWrite.set(Boolean.FALSE);
            stopWriteTimer();
            this.lastAnswerTime = 0L;
            startStateTimer(upgradeWriteEvent.deviceType);
            refreshTip(getString(R$string.verifying_data));
            return;
        }
        if ("ERROR".equals(upgradeWriteEvent.result)) {
            LogToFile.i("===============传输异常===================");
            cancelUpgrade("");
            showTipDialog(getString(R$string.firmware_transmission_exception), getString(R$string.ok), null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothConnectStateEvent bluetoothConnectStateEvent) throws JSONException {
        if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.CONNECTED.getState()) {
            refreshTip(getString(R$string.obtain_firmware_address));
            NetworkDataLoader.getInstance().getFirmwareDownloadUrl(this.id, this.deviceType);
        } else if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.DISCONNECT.getState() && this.deviceType == bluetoothConnectStateEvent.myDevice.deviceType && this.startWrite.get().booleanValue()) {
            cancelUpgrade("");
            showTipDialog(getString(R$string.bluetooth_disconnection_click_reconnect), getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment.8
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    ((BaseActivity) FmwForcedUpgradeDialogFragment.this.requireActivity()).gotoBluetoothActivity();
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    if (z) {
                        FmwForcedUpgradeDialogFragment.this.requireActivity().finish();
                    }
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(UpgradeCancelEvent upgradeCancelEvent) {
        EventBus.getDefault().post(new OrderBean(upgradeCancelEvent.deviceType, "UPGRADE,START," + this.session + "," + this.fileSize + "," + this.fileMd5));
    }

    private void startStateTimer(final DeviceType deviceType) {
        if (this.futureStateTimer == null) {
            LogToFile.i("开启定时查询升级状态");
            if (this.executorWriteTimer.isShutdown()) {
                this.executorStateTimer = Executors.newSingleThreadScheduledExecutor();
            }
            this.futureStateTimer = this.executorStateTimer.scheduleWithFixedDelay(new Runnable() { // from class: com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment.9
                @Override // java.lang.Runnable
                public void run() {
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
        DialogFmwForcedUpgradeBinding dialogFmwForcedUpgradeBinding = this.binding;
        if (dialogFmwForcedUpgradeBinding != null) {
            dialogFmwForcedUpgradeBinding.tvTip.setText(str);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                int i = getResources().getDisplayMetrics().widthPixels;
                int i2 = getResources().getDisplayMetrics().heightPixels;
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * 0.6f), -2);
                window.setDimAmount(0.3f);
                setWindowsCallback(window);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment.10
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (FmwForcedUpgradeDialogFragment.this.getFragmentManager() != null) {
                        FmwForcedUpgradeDialogFragment.this.getFragmentManager().beginTransaction().remove(FmwForcedUpgradeDialogFragment.this).commitAllowingStateLoss();
                    }
                    if (FmwForcedUpgradeDialogFragment.this.listener == null || !FmwForcedUpgradeDialogFragment.this.isAdded()) {
                        return;
                    }
                    FmwForcedUpgradeDialogFragment.this.listener.onClose(1);
                }
            });
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.listener == null || !isAdded()) {
            return;
        }
        this.listener.onClose(0);
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
