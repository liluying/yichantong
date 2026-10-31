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
import android.view.View;
import android.view.Window;
import android.widget.TextView;
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
import com.qianhe.yct.base.BaseDialogFragment;
import com.qianhe.yct.databinding.DialogUpgradeBinding;
import com.qianhe.yct.dialog.LoadingFragment;
import com.qianhe.yct.event.BluetoothConnectStateEvent;
import com.qianhe.yct.event.FirmwareFileInfoResponse;
import com.qianhe.yct.event.ReloadAppConfigEvent;
import com.qianhe.yct.manage.AppConfigManager;
import com.qianhe.yct.utils.NetworkDataLoader;
import com.tencent.mm.opensdk.constants.ConstantsAPI;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Locale;
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
public class UpgradeFmwDialogFragment extends BaseDialogFragment {
    private DialogUpgradeBinding binding;
    private int currentStep;
    private DeviceType deviceType;
    private String fileMd5;
    private long fileSize;
    private ScheduledFuture<?> futureStateTimer;
    private Future<?> futureWrite;
    private ScheduledFuture<?> futureWriteTimer;
    private int id;
    private long lastAnswerTime;
    private OnActionListener listener;
    private String mFilePath;
    private int manual;
    private int totalStep;
    private LoadingFragment upgradeingFragment;
    private String versionNew;
    private YctDevice yctDevice;
    private String session = "";
    private int currentFileIndex = 0;
    private ExecutorService executorServiceWrite = Executors.newSingleThreadExecutor();
    private ScheduledExecutorService executorWriteTimer = Executors.newSingleThreadScheduledExecutor();
    private ScheduledExecutorService executorStateTimer = Executors.newSingleThreadScheduledExecutor();
    private int count = 0;
    private String model = "";
    private volatile boolean waitingReboot = false;
    private volatile boolean upgradeFinished = false;
    private final AtomicReference<Boolean> startWrite = new AtomicReference<>(Boolean.FALSE);
    public LoadingFragment.OnCloseListener onCloseListener = new LoadingFragment.OnCloseListener() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.11
        @Override // com.qianhe.yct.dialog.LoadingFragment.OnCloseListener
        public void onClose(int i) {
            if (i == 1 && UpgradeFmwDialogFragment.this.isAdded()) {
                UpgradeFmwDialogFragment upgradeFmwDialogFragment = UpgradeFmwDialogFragment.this;
                upgradeFmwDialogFragment.cancelUpgrade(upgradeFmwDialogFragment.getString(R$string.cancel_upgrade));
                UpgradeFmwDialogFragment.this.manual = 1;
                UpgradeFmwDialogFragment.this.yctDevice.stopFmwUpdate();
                UpgradeFmwDialogFragment.this.handler.postDelayed(new Runnable() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.11.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (UpgradeFmwDialogFragment.this.isAdded() && YCTApplication.getInstance().isGnssFmw(UpgradeFmwDialogFragment.this.model)) {
                            EventBus.getDefault().post(new OrderBean("SET,RESTART"));
                        }
                    }
                }, 200L);
            }
        }
    };
    private final Handler handler = new Handler(Looper.getMainLooper()) { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.12
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
        }
    };

    public interface OnActionListener {
        void next(int i);

        void onClose(int i);
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.listener = onActionListener;
    }

    @Override // androidx.fragment.app.DialogFragment
    @SuppressLint({"ClickableViewAccessibility"})
    public Dialog onCreateDialog(Bundle bundle) {
        this.binding = DialogUpgradeBinding.inflate(getLayoutInflater());
        AlertDialog.Builder builder = new AlertDialog.Builder(requireActivity());
        builder.setView(this.binding.getRoot());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 4 && keyEvent.getAction() == 1;
            }
        });
        EventBus.getDefault().register(this);
        this.upgradeingFragment = new LoadingFragment();
        if (alertDialogCreate.getWindow() != null) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(R$drawable.bg_dialog);
        }
        if (getArguments() != null) {
            Bundle arguments = getArguments();
            this.id = arguments.getInt("id", 0);
            String string = arguments.getString("upgradeLog");
            String string2 = arguments.getString("versionOld");
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
                LogToFile.e("UpgradeFmwDialogFragment:" + e);
            }
            if (!TextUtils.isEmpty(string)) {
                this.binding.tvUpgradeLog.setText(string);
                this.binding.tvUpgradeLog.setVisibility(0);
            }
            TextView textView = this.binding.tvVersionOld;
            Locale locale = Locale.ROOT;
            textView.setText(String.format(locale, getString(R$string.current_version) + "：%s", string2));
            this.binding.tvVersionNew.setText(String.format(locale, getString(R$string.latest_version) + "：%s", this.versionNew));
            this.binding.tvFileSize.setText(String.format(locale, getString(R$string.file_size) + "：%.2f MB", Double.valueOf((this.fileSize / 1024.0d) / 1024.0d)));
        }
        TextView textView2 = this.binding.tvTip;
        StringBuilder sb = new StringBuilder();
        sb.append(getString(R$string.found_new_firmware));
        sb.append(YCTApplication.getInstance().isGnssFmw(this.model) ? "\n(GNSS)" : "");
        textView2.setText(sb.toString());
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.2
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 4 && keyEvent.getAction() == 1;
            }
        });
        this.binding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UpgradeFmwDialogFragment.this.manual = 1;
                if (UpgradeFmwDialogFragment.this.listener != null && UpgradeFmwDialogFragment.this.isAdded() && UpgradeFmwDialogFragment.this.currentStep < UpgradeFmwDialogFragment.this.totalStep) {
                    UpgradeFmwDialogFragment.this.listener.next(UpgradeFmwDialogFragment.this.currentStep);
                }
                if (UpgradeFmwDialogFragment.this.getDialog() == null || !UpgradeFmwDialogFragment.this.getDialog().isShowing()) {
                    return;
                }
                UpgradeFmwDialogFragment.this.dismiss();
            }
        });
        this.binding.tvIgnore.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str;
                UpgradeFmwDialogFragment.this.manual = 1;
                if (!YCTApplication.getInstance().isGnssFmw(UpgradeFmwDialogFragment.this.model)) {
                    str = "ignoreFmwVersion";
                } else {
                    str = "ignoreFmwVersion_gnss";
                }
                ((BaseDialogFragment) UpgradeFmwDialogFragment.this).mSp.edit().putString(UpgradeFmwDialogFragment.this.deviceType.getType() + "_" + str, UpgradeFmwDialogFragment.this.versionNew).apply();
                if (UpgradeFmwDialogFragment.this.listener != null && UpgradeFmwDialogFragment.this.isAdded() && UpgradeFmwDialogFragment.this.currentStep < UpgradeFmwDialogFragment.this.totalStep) {
                    UpgradeFmwDialogFragment.this.listener.next(UpgradeFmwDialogFragment.this.currentStep);
                }
                if (UpgradeFmwDialogFragment.this.getDialog() == null || !UpgradeFmwDialogFragment.this.getDialog().isShowing()) {
                    return;
                }
                UpgradeFmwDialogFragment.this.dismiss();
            }
        });
        this.binding.tvSure.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws JSONException {
                if (!EventBus.getDefault().isRegistered(UpgradeFmwDialogFragment.this)) {
                    EventBus.getDefault().register(UpgradeFmwDialogFragment.this);
                }
                UpgradeFmwDialogFragment upgradeFmwDialogFragment = UpgradeFmwDialogFragment.this;
                upgradeFmwDialogFragment.showUpgradeingDialog(upgradeFmwDialogFragment.getString(R$string.obtain_firmware_address), UpgradeFmwDialogFragment.this.onCloseListener);
                NetworkDataLoader.getInstance().getFirmwareDownloadUrl(UpgradeFmwDialogFragment.this.id, UpgradeFmwDialogFragment.this.deviceType);
            }
        });
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
            showUpgradeingDialog(getString(R$string.download_firmware) + "0%", this.onCloseListener);
            NetworkDataLoader.getInstance().downloadFirmwareWithProgress(firmwareFileInfoResponse.download_url, this.mFilePath, new NetworkDataLoader.ProgressListener() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.6
                @Override // com.qianhe.yct.utils.NetworkDataLoader.ProgressListener
                public void update(final long j, final long j2, final boolean z) {
                    if (UpgradeFmwDialogFragment.this.isAdded()) {
                        UpgradeFmwDialogFragment.this.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.6.1
                            @Override // java.lang.Runnable
                            public void run() {
                                int i = (int) ((j * 100) / j2);
                                if (((Boolean) UpgradeFmwDialogFragment.this.startWrite.get()).booleanValue()) {
                                    if (z) {
                                        if (YCTApplication.getInstance().isGnssFmw(UpgradeFmwDialogFragment.this.model)) {
                                            UpgradeFmwDialogFragment.this.startGnssUpgrade();
                                            return;
                                        }
                                        EventBus.getDefault().post(new OrderBean(firmwareFileInfoResponse.deviceType, "UPGRADE,STATE"));
                                        if (((Boolean) UpgradeFmwDialogFragment.this.startWrite.get()).booleanValue()) {
                                            UpgradeFmwDialogFragment upgradeFmwDialogFragment = UpgradeFmwDialogFragment.this;
                                            upgradeFmwDialogFragment.showUpgradeingDialog(upgradeFmwDialogFragment.getString(R$string.download_success_transferring_firmware), UpgradeFmwDialogFragment.this.onCloseListener);
                                        }
                                        if (((Boolean) UpgradeFmwDialogFragment.this.startWrite.get()).booleanValue()) {
                                            return;
                                        }
                                        UpgradeFmwDialogFragment.this.cancelUpgradeingDialog();
                                        return;
                                    }
                                    if (((Boolean) UpgradeFmwDialogFragment.this.startWrite.get()).booleanValue()) {
                                        UpgradeFmwDialogFragment.this.showUpgradeingDialog(UpgradeFmwDialogFragment.this.getString(R$string.download_firmware) + i + "%", UpgradeFmwDialogFragment.this.onCloseListener);
                                    }
                                    if (((Boolean) UpgradeFmwDialogFragment.this.startWrite.get()).booleanValue()) {
                                        return;
                                    }
                                    UpgradeFmwDialogFragment.this.cancelUpgradeingDialog();
                                }
                            }
                        });
                    }
                }

                @Override // com.qianhe.yct.utils.NetworkDataLoader.ProgressListener
                public void onError() {
                    if (UpgradeFmwDialogFragment.this.isAdded()) {
                        UpgradeFmwDialogFragment.this.requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.6.2
                            @Override // java.lang.Runnable
                            public void run() {
                                UpgradeFmwDialogFragment.this.cancelUpgradeingDialog();
                                UpgradeFmwDialogFragment upgradeFmwDialogFragment = UpgradeFmwDialogFragment.this;
                                upgradeFmwDialogFragment.showTipDialog(upgradeFmwDialogFragment.getString(R$string.firmware_download_failed), UpgradeFmwDialogFragment.this.getString(R$string.ok), null);
                            }
                        });
                    }
                }
            });
            return;
        }
        if (YCTApplication.getInstance().isGnssFmw(this.model)) {
            startGnssUpgrade();
        } else {
            EventBus.getDefault().post(new OrderBean(firmwareFileInfoResponse.deviceType, "UPGRADE,STATE"));
            requireActivity().runOnUiThread(new Runnable() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.7
                @Override // java.lang.Runnable
                public void run() {
                    UpgradeFmwDialogFragment upgradeFmwDialogFragment = UpgradeFmwDialogFragment.this;
                    upgradeFmwDialogFragment.showUpgradeingDialog(upgradeFmwDialogFragment.getString(R$string.download_success_transferring_firmware), UpgradeFmwDialogFragment.this.onCloseListener);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startGnssUpgrade() {
        showUpgradeingDialog(getString(R$string.download_success_transferring_firmware), this.onCloseListener);
        EventBus.getDefault().post("startGnssUpgrade");
        YctDevice yctDevice = this.yctDevice;
        if (yctDevice != null) {
            yctDevice.startFmwUpdate(this.model.contains("M10") ? this.yctDevice.FMW_TYPE_BEIYUN : this.model.contains("980") ? this.yctDevice.FMW_TYPE_UNICORE : this.yctDevice.FMW_TYPE_DEVICE, this.mFilePath, new AnonymousClass8());
        }
    }

    /* renamed from: com.qianhe.yct.dialog.UpgradeFmwDialogFragment$8, reason: invalid class name */
    class AnonymousClass8 implements YctDevice.FmwUpdateListener {
        AnonymousClass8() {
        }

        @Override // com.qh.yctdevice.YctDevice.FmwUpdateListener
        public void onUpdateSuccessed() {
            UpgradeFmwDialogFragment.this.handler.post(new Runnable() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.8.1
                @Override // java.lang.Runnable
                public void run() {
                    LogToFile.i("===============板卡固件升级成功===================");
                    ((BaseDialogFragment) UpgradeFmwDialogFragment.this).mSp.edit().putString(Constant.GNSS_FWM_VERSION, UpgradeFmwDialogFragment.this.versionNew).commit();
                    UpgradeFmwDialogFragment.this.yctDevice.stopFmwUpdate();
                    UpgradeFmwDialogFragment.this.cancelUpgradeingDialog();
                    UpgradeFmwDialogFragment.this.binding.tvClose.setVisibility(8);
                    EventBus.getDefault().post(new ReloadAppConfigEvent(AppConfigManager.getInstance().getAppConfig()));
                    if (UpgradeFmwDialogFragment.this.currentStep >= UpgradeFmwDialogFragment.this.totalStep) {
                        UpgradeFmwDialogFragment upgradeFmwDialogFragment = UpgradeFmwDialogFragment.this;
                        upgradeFmwDialogFragment.showTipDialog(upgradeFmwDialogFragment.getString(R$string.firmware_upgrade_completed), UpgradeFmwDialogFragment.this.getString(R$string.ok), null);
                    }
                    EventBus.getDefault().post("restoreConnectCheck");
                    UpgradeFmwDialogFragment.this.handler.postDelayed(new Runnable() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.8.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (UpgradeFmwDialogFragment.this.isAdded()) {
                                EventBus.getDefault().post(new OrderBean("SET,RESTART"));
                                UpgradeFmwDialogFragment.this.dismiss();
                            }
                        }
                    }, 200L);
                }
            });
        }

        @Override // com.qh.yctdevice.YctDevice.FmwUpdateListener
        public void onUpdateFailed(int i, final String str) {
            UpgradeFmwDialogFragment.this.handler.post(new Runnable() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.8.2
                @Override // java.lang.Runnable
                public void run() {
                    if (UpgradeFmwDialogFragment.this.isAdded()) {
                        UpgradeFmwDialogFragment.this.manual = 1;
                        UpgradeFmwDialogFragment.this.dismiss();
                        UpgradeFmwDialogFragment.this.cancelUpgradeingDialog();
                        UpgradeFmwDialogFragment upgradeFmwDialogFragment = UpgradeFmwDialogFragment.this;
                        upgradeFmwDialogFragment.showTipDialog(str, upgradeFmwDialogFragment.getString(R$string.ok), null);
                    }
                }
            });
        }

        @Override // com.qh.yctdevice.YctDevice.FmwUpdateListener
        public void onUpdateProgress(final int i, final int i2) {
            UpgradeFmwDialogFragment.this.handler.post(new Runnable() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.8.3
                @Override // java.lang.Runnable
                public void run() {
                    String str;
                    if (UpgradeFmwDialogFragment.this.isAdded()) {
                        int i3 = i;
                        if (i3 == 0) {
                            UpgradeFmwDialogFragment.this.showUpgradeingDialog(UpgradeFmwDialogFragment.this.getString(R$string.transferring_firmware) + i2 + "%", UpgradeFmwDialogFragment.this.onCloseListener);
                            return;
                        }
                        if (i3 == 1) {
                            UpgradeFmwDialogFragment upgradeFmwDialogFragment = UpgradeFmwDialogFragment.this;
                            upgradeFmwDialogFragment.showUpgradeingDialog(upgradeFmwDialogFragment.getString(R$string.unzip_firmware));
                            return;
                        }
                        if (i3 == 2) {
                            UpgradeFmwDialogFragment upgradeFmwDialogFragment2 = UpgradeFmwDialogFragment.this;
                            StringBuilder sb = new StringBuilder();
                            sb.append(UpgradeFmwDialogFragment.this.getString(R$string.burn_firmware));
                            if (i2 != -1) {
                                str = i2 + "%";
                            } else {
                                str = "";
                            }
                            sb.append(str);
                            upgradeFmwDialogFragment2.showUpgradeingDialog(sb.toString());
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
            showUpgradeingDialog(getString(R$string.transferring_firmware) + "0%", this.onCloseListener);
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
            this.currentFileIndex = upgradeStateEvent.currentIndex;
            showUpgradeingDialog(getString(R$string.transferring_firmware) + ((int) ((this.currentFileIndex * 100) / this.fileSize)) + "%", this.onCloseListener);
            startWriteTimer(upgradeStateEvent.deviceType);
            writeFwm(upgradeStateEvent.deviceType);
            return;
        }
        EventBus.getDefault().post(new OrderBean(upgradeStateEvent.deviceType, "UPGRADE,CANCLE"));
    }

    private void onH5UpgradeSuccess(DeviceType deviceType) {
        int i;
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
        cancelTipDialog();
        cancelLoadingDialog();
        cancelUpgradeingDialog();
        this.lastAnswerTime = 0L;
        if (this.currentStep >= this.totalStep) {
            showTipDialog(getString(R$string.firmware_upgrade_completed), getString(R$string.ok), null);
            EventBus.getDefault().post(new OrderBean(deviceType, "UPGRADE,CANCLE"));
        } else if (this.listener != null && isAdded() && (i = this.currentStep) < this.totalStep) {
            this.listener.next(i);
        }
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
            this.futureWriteTimer = this.executorWriteTimer.scheduleWithFixedDelay(new Runnable() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.9
                @Override // java.lang.Runnable
                public void run() {
                    if (System.currentTimeMillis() - UpgradeFmwDialogFragment.this.lastAnswerTime >= 5000) {
                        LogToFile.i("主机5秒内无应答，重新调用writeFwm()");
                        if (UpgradeFmwDialogFragment.this.futureWrite != null) {
                            UpgradeFmwDialogFragment.this.futureWrite.cancel(true);
                        }
                        UpgradeFmwDialogFragment.this.futureWrite = null;
                        UpgradeFmwDialogFragment.this.writeFwm(deviceType);
                    }
                }
            }, 5000L, 5000L, TimeUnit.MILLISECONDS);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(UpgradeStartEvent upgradeStartEvent) {
        if (this.waitingReboot || this.upgradeFinished) {
            LogToFile.i("UpgradeStartEvent - 已在等待重启或已成功，忽略START应答");
            return;
        }
        if (upgradeStartEvent.line.contains("OK")) {
            startWriteTimer(upgradeStartEvent.deviceType);
            writeFwm(upgradeStartEvent.deviceType);
        } else {
            cancelUpgradeingDialog();
            showTipDialog(getString(R$string.upgrade_failed), getString(R$string.ok), null);
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeFwm(final DeviceType deviceType) {
        if (this.executorServiceWrite.isShutdown()) {
            return;
        }
        this.futureWrite = this.executorServiceWrite.submit(new Runnable() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.10
            @Override // java.lang.Runnable
            public void run() throws IOException {
                byte[] bArr;
                try {
                    FileInputStream fileInputStream = new FileInputStream(new File(UpgradeFmwDialogFragment.this.mFilePath));
                    try {
                        if (UpgradeFmwDialogFragment.this.fileSize - UpgradeFmwDialogFragment.this.currentFileIndex < ConstantsAPI.AppSupportContentFlag.MMAPP_SUPPORT_XLS) {
                            bArr = new byte[(int) (UpgradeFmwDialogFragment.this.fileSize - UpgradeFmwDialogFragment.this.currentFileIndex)];
                        } else {
                            bArr = new byte[1024];
                        }
                        long jSkip = fileInputStream.skip(UpgradeFmwDialogFragment.this.currentFileIndex);
                        if (jSkip != UpgradeFmwDialogFragment.this.currentFileIndex) {
                            LogToFile.e("读取失败：" + jSkip);
                        } else {
                            int i = fileInputStream.read(bArr);
                            if (i != -1) {
                                EventBus.getDefault().post(new OrderBean(deviceType, "UPGRADE,WRITE," + UpgradeFmwDialogFragment.this.session + "," + UpgradeFmwDialogFragment.this.currentFileIndex + "," + i + "," + UpgradeFmwDialogFragment.this.sumBytesAsUint8(bArr) + "," + Base64.encodeToString(bArr, 2)));
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

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelUpgrade(String str) {
        LogToFile.i("UpgradeFmwDialogFragment - cancelUpgrade()");
        NetworkDataLoader.getInstance().cancelDownload();
        if (!TextUtils.isEmpty(str)) {
            showToastDialog(str);
        }
        this.handler.removeCallbacksAndMessages(null);
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
        cancelUpgradeingDialog();
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
            this.currentFileIndex = upgradeWriteEvent.currentIndex;
            this.startWrite.set(Boolean.TRUE);
            writeFwm(upgradeWriteEvent.deviceType);
            showUpgradeingDialog(getString(R$string.transferring_firmware) + ((int) ((this.currentFileIndex * 100) / this.fileSize)) + "%", this.onCloseListener);
            return;
        }
        if ("APPLYING".equals(upgradeWriteEvent.state)) {
            LogToFile.i("===============传输完成，等待重启===================");
            this.waitingReboot = true;
            this.startWrite.set(Boolean.FALSE);
            cancelUpgradeingDialog();
            stopWriteTimer();
            this.lastAnswerTime = 0L;
            startStateTimer(upgradeWriteEvent.deviceType);
            showLoadingDialog(getString(R$string.verifying_data));
            return;
        }
        if ("ERROR".equals(upgradeWriteEvent.result)) {
            if (this.waitingReboot) {
                LogToFile.i("UpgradeWriteEvent - 等待重启阶段忽略ERROR");
                return;
            }
            LogToFile.i("===============传输异常===================");
            cancelUpgrade("");
            showTipDialog(getString(R$string.firmware_transmission_exception), getString(R$string.ok), null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothConnectStateEvent bluetoothConnectStateEvent) {
        if (bluetoothConnectStateEvent.myDevice.state != BluetoothStateEnum.CONNECTED.getState() && bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.DISCONNECT.getState() && this.deviceType == bluetoothConnectStateEvent.myDevice.deviceType && this.startWrite.get().booleanValue()) {
            cancelUpgrade("");
            showTipDialog(getString(R$string.bluetooth_disconnection_click_reconnect), getString(R$string.ok), null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(UpgradeCancelEvent upgradeCancelEvent) {
        if (this.waitingReboot || this.upgradeFinished) {
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
            this.futureStateTimer = this.executorStateTimer.scheduleWithFixedDelay(new Runnable() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.13
                @Override // java.lang.Runnable
                public void run() {
                    UpgradeFmwDialogFragment.this.count++;
                    LogToFile.i("查询升级状态..." + UpgradeFmwDialogFragment.this.count);
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

    protected void showUpgradeingDialog(String str) {
        showUpgradeingDialog(str, null);
    }

    protected void showUpgradeingDialog(String str, LoadingFragment.OnCloseListener onCloseListener) {
        LoadingFragment loadingFragment = this.upgradeingFragment;
        if (loadingFragment != null) {
            if (loadingFragment.getFragmentManager() != null) {
                this.upgradeingFragment.refreshTip(str);
                return;
            }
            this.upgradeingFragment.show(requireActivity().getSupportFragmentManager(), "LoadingFragment");
            Bundle bundle = new Bundle();
            if (TextUtils.isEmpty(str)) {
                str = getString(R$string.upgrading);
            }
            bundle.putString("tip", str);
            bundle.putString("tag", "upgrade");
            this.upgradeingFragment.setArguments(bundle);
            this.upgradeingFragment.setOnCloseListener(onCloseListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelUpgradeingDialog() {
        LoadingFragment loadingFragment = this.upgradeingFragment;
        if (loadingFragment == null || loadingFragment.getDialog() == null || !this.upgradeingFragment.getDialog().isShowing()) {
            return;
        }
        this.upgradeingFragment.dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                window.setLayout((int) (getResources().getDisplayMetrics().widthPixels * (isPad() ? 0.6f : 0.9f)), -2);
                window.setDimAmount(0.3f);
                setWindowsCallback(window);
            }
            getDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qianhe.yct.dialog.UpgradeFmwDialogFragment.14
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (UpgradeFmwDialogFragment.this.getFragmentManager() != null) {
                        UpgradeFmwDialogFragment.this.getFragmentManager().beginTransaction().remove(UpgradeFmwDialogFragment.this).commitAllowingStateLoss();
                    }
                    if (UpgradeFmwDialogFragment.this.listener == null || !UpgradeFmwDialogFragment.this.isAdded()) {
                        return;
                    }
                    UpgradeFmwDialogFragment.this.listener.onClose(UpgradeFmwDialogFragment.this.manual);
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
        this.listener.onClose(this.manual);
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
        EventBus.getDefault().unregister(this);
        stopWriteFmw();
        stopWriteTimer();
        stopStateTimer();
        this.handler.removeCallbacksAndMessages(null);
        this.yctDevice.stopFmwUpdate();
    }
}
