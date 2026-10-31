package com.qianhe.yct.activity;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.fragment.app.FragmentResultListener;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.utils.FileUtil;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.event.Expiredate;
import com.qianhe.rtkclientlib.event.FeaturesEvent;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.GetFeatureCodeEvent;
import com.qianhe.rtkclientlib.event.GnssInfo;
import com.qianhe.rtkclientlib.event.HostPoweroffEvent;
import com.qianhe.rtkclientlib.event.RtkInfo;
import com.qianhe.rtkclientlib.event.Serial;
import com.qianhe.rtkclientlib.event.SetFeatureCodeResult;
import com.qianhe.rtkclientlib.event.UpgradeInfoEvent;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.RTKInfoActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityRtkinfoBinding;
import com.qianhe.yct.dialog.ChooseListDialogFragment;
import com.qianhe.yct.dialog.ChooseSensorDialogFragment;
import com.qianhe.yct.dialog.PasswordDialogFragment;
import com.qianhe.yct.dialog.RTKFeatureCodeDialogFragment;
import com.qianhe.yct.dialog.RTKRegisterDialogFragment;
import com.qianhe.yct.dialog.SensorScanListDialogFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.event.BluetoothConnectStateEvent;
import com.qianhe.yct.utils.NetworkDataLoader;
import com.qianhe.yct.utils.NetworkUserLoader;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.locationtech.proj4j.parser.Proj4Keyword;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class RTKInfoActivity extends BaseActivity {
    private ActivityRtkinfoBinding binding;
    private DeviceType deviceType;
    private boolean hasExpiredate;
    private boolean hasRtkInfo;
    private boolean isClickQuery;
    private volatile boolean logUploadFinished;
    private volatile boolean logUploadLoadingDismissed;
    private int logUploadSession;
    private ScheduledFuture<?> scheduledFuture;
    private UpgradeInfoEvent upgradeInfo;
    private ScheduledExecutorService scheduledExecutor = Executors.newSingleThreadScheduledExecutor();
    private String featureCode = "";

    /* JADX INFO: Access modifiers changed from: private */
    interface LogUploadTask {
        void run(int i);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityRtkinfoBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        boolean zIsH5Pro = YCTApplication.getInstance().isH5Pro();
        Intent intent = getIntent();
        if (intent != null) {
            DeviceType deviceType = (DeviceType) intent.getSerializableExtra("deviceType");
            this.deviceType = deviceType;
            this.binding.rltBucketSensor.setVisibility((deviceType == DeviceType.ZPY && YCTApplication.getInstance().isH5Pro()) ? 0 : 8);
        }
        this.binding.rltRegister.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RTKInfoActivity.this.ensureDeviceConnected()) {
                    RTKRegisterDialogFragment rTKRegisterDialogFragment = new RTKRegisterDialogFragment();
                    rTKRegisterDialogFragment.show(RTKInfoActivity.this.getSupportFragmentManager(), "RTKRegisterDialogFragment");
                    Bundle bundle2 = new Bundle();
                    bundle2.putSerializable("deviceType", RTKInfoActivity.this.deviceType);
                    bundle2.putString("requestKey", "rtkregister");
                    rTKRegisterDialogFragment.setArguments(bundle2);
                }
            }
        });
        this.binding.rltFeatureCode.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RTKInfoActivity.this.ensureDeviceConnected()) {
                    RTKFeatureCodeDialogFragment rTKFeatureCodeDialogFragment = new RTKFeatureCodeDialogFragment();
                    rTKFeatureCodeDialogFragment.show(RTKInfoActivity.this.getSupportFragmentManager(), "RTKFeatureCodeDialogFragment");
                    Bundle bundle2 = new Bundle();
                    bundle2.putSerializable("deviceType", RTKInfoActivity.this.deviceType);
                    bundle2.putString("featureCode", RTKInfoActivity.this.featureCode);
                    bundle2.putString("requestKey", "rtkfeaturecode");
                    rTKFeatureCodeDialogFragment.setArguments(bundle2);
                }
            }
        });
        this.binding.lltFirmware.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RTKInfoActivity.this.ensureDeviceConnected()) {
                    RTKInfoActivity.this.binding.lltFirmware.setSelected(true);
                    RTKInfoActivity.this.binding.lltBoard.setSelected(false);
                    RTKInfoActivity.this.checkFmwUpgrade();
                }
            }
        });
        this.binding.lltBoard.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RTKInfoActivity.this.ensureDeviceConnected()) {
                    RTKInfoActivity.this.binding.lltBoard.setSelected(true);
                    RTKInfoActivity.this.binding.lltFirmware.setSelected(false);
                    RTKInfoActivity.this.checkFmwUpgrade();
                }
            }
        });
        this.binding.tvCopySn.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((ClipboardManager) RTKInfoActivity.this.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", RTKInfoActivity.this.binding.tvDeviceNumber.getText().toString().trim()));
                Toast.makeText(RTKInfoActivity.this, R$string.copy_to_clipboard, 0).show();
            }
        });
        this.binding.rltPoweroff.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RTKInfoActivity.this.ensureDeviceConnected()) {
                    RTKInfoActivity rTKInfoActivity = RTKInfoActivity.this;
                    rTKInfoActivity.showTipDialog(rTKInfoActivity.getString(R$string.are_you_sure_shut_down_host), RTKInfoActivity.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.6.1
                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onClose(boolean z) {
                        }

                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            DeviceType deviceType2 = RTKInfoActivity.this.deviceType;
                            DeviceType deviceType3 = DeviceType.ZPY;
                            if (deviceType2 == deviceType3) {
                                EventBus.getDefault().post("activeDisconnect");
                                EventBus.getDefault().post(new OrderBean(deviceType3, "SET,POWEROFF"));
                                return;
                            }
                            DeviceType deviceType4 = RTKInfoActivity.this.deviceType;
                            DeviceType deviceType5 = DeviceType.BASE;
                            if (deviceType4 == deviceType5) {
                                EventBus.getDefault().post(new OrderBean(deviceType5, "SET,POWEROFF"));
                                EventBus.getDefault().post("activeDisconnect_base");
                            }
                        }
                    });
                }
            }
        });
        RelativeLayout relativeLayout = this.binding.rltRestartPositionBoard;
        DeviceType deviceType2 = this.deviceType;
        DeviceType deviceType3 = DeviceType.ZPY;
        relativeLayout.setVisibility((deviceType2 == deviceType3 && zIsH5Pro) ? 0 : 8);
        this.binding.rltRestartPositionBoard.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RTKInfoActivity.this.ensureDeviceConnected()) {
                    RTKInfoActivity.this.showTipDialog(RTKInfoActivity.this.getString(R$string.restart_gnss) + "?", RTKInfoActivity.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.7.1
                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onClose(boolean z) {
                        }

                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            EventBus.getDefault().post(new OrderBean(RTKInfoActivity.this.deviceType, "SET,RESET,GNSS"));
                        }
                    });
                }
            }
        });
        this.binding.rltResetRtk.setVisibility((this.deviceType == deviceType3 && zIsH5Pro) ? 0 : 8);
        this.binding.rltResetRtk.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RTKInfoActivity.this.ensureDeviceConnected()) {
                    RTKInfoActivity.this.showTipDialog(RTKInfoActivity.this.getString(R$string.reset_gnss) + "?", RTKInfoActivity.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.8.1
                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onClose(boolean z) {
                        }

                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            EventBus.getDefault().post(new OrderBean(RTKInfoActivity.this.deviceType, "SET,RESET,RTK"));
                        }
                    });
                }
            }
        });
        this.binding.rltResetHost.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RTKInfoActivity.this.ensureDeviceConnected()) {
                    RTKInfoActivity.this.showTipDialog(RTKInfoActivity.this.getString(R$string.reset_host) + "?", RTKInfoActivity.this.getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.9.1
                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onClose(boolean z) {
                        }

                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            DeviceType deviceType4 = RTKInfoActivity.this.deviceType;
                            DeviceType deviceType5 = DeviceType.ZPY;
                            if (deviceType4 == deviceType5) {
                                EventBus.getDefault().post(new OrderBean(deviceType5, "SET,FRESET,CONFIG"));
                            } else {
                                DeviceType deviceType6 = RTKInfoActivity.this.deviceType;
                                DeviceType deviceType7 = DeviceType.BASE;
                                if (deviceType6 == deviceType7) {
                                    EventBus.getDefault().post(new OrderBean(deviceType7, "SET,FRESET,CONFIG"));
                                }
                            }
                            RTKInfoActivity rTKInfoActivity = RTKInfoActivity.this;
                            rTKInfoActivity.showTipDialog(rTKInfoActivity.getString(R$string.already_reset), RTKInfoActivity.this.getString(R$string.ok), null);
                        }
                    });
                }
            }
        });
        this.binding.rltValidity.setVisibility(this.deviceType == deviceType3 ? 0 : 8);
        this.binding.ivDoubt.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RTKInfoActivity rTKInfoActivity = RTKInfoActivity.this;
                rTKInfoActivity.showTipDialog(rTKInfoActivity.getString(R$string.expiration_date_host), RTKInfoActivity.this.getString(R$string.ok), null);
            }
        });
        this.binding.rltUploadLog.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RTKInfoActivity.this.hasPermissions("basic")) {
                    RTKInfoActivity.this.uploadTodayLog();
                } else {
                    RTKInfoActivity.this.checkPermissions("basic", true);
                }
            }
        });
        this.binding.rltUploadLog.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.12
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (RTKInfoActivity.this.hasPermissions("basic")) {
                    PasswordDialogFragment passwordDialogFragment = new PasswordDialogFragment();
                    passwordDialogFragment.show(RTKInfoActivity.this.getSupportFragmentManager(), "PasswordDialogFragment");
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("btnContent", RTKInfoActivity.this.getString(R$string.log_list));
                    bundle2.putString("requestKey", "loglist");
                    passwordDialogFragment.setArguments(bundle2);
                    return false;
                }
                RTKInfoActivity.this.checkPermissions("basic", true);
                return false;
            }
        });
        this.binding.rltBucketSensor.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RTKInfoActivity.this.ensureDeviceConnected()) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(Proj4Keyword.title, RTKInfoActivity.this.getString(R$string.confirm_sensor_status));
                    bundle2.putString("nextStr", RTKInfoActivity.this.getString(R$string.disconnect1));
                    bundle2.putString("requestKey", "clickaction");
                    ChooseSensorDialogFragment.showSafely(RTKInfoActivity.this.getSupportFragmentManager(), bundle2);
                }
            }
        });
        getSupportFragmentManager().setFragmentResultListener("rtkregister", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity$$ExternalSyntheticLambda0
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) {
                RTKInfoActivity.$r8$lambda$ZzTxi3rRy6TDKhJJB8U1SO84kjk(this.f$0, str, bundle2);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("logupload", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity$$ExternalSyntheticLambda1
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) {
                RTKInfoActivity.$r8$lambda$O7hCgKFzRVDSH1KoUpnRiOumdzU(this.f$0, str, bundle2);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("viewlog", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity$$ExternalSyntheticLambda2
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) throws ParseException {
                RTKInfoActivity.m1474$r8$lambda$FkZjIzjGMMBPpZjfndQvUYsWrQ(this.f$0, str, bundle2);
            }
        });
        getSupportFragmentManager().setFragmentResultListener("loglist", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity$$ExternalSyntheticLambda3
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) throws ParseException {
                RTKInfoActivity.m1475$r8$lambda$SNn2aid5Coap1VIgiWmquQkVoA(this.f$0, str, bundle2);
            }
        });
        EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,SERIAL"));
        EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,FEATURE_CODE"));
        EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,GNSS.INFO"));
        initTimer();
        updateDeviceInfoPlaceholders();
        if (isTargetDeviceConnected()) {
            return;
        }
        showConnectDeviceTip();
    }

    public static /* synthetic */ void $r8$lambda$ZzTxi3rRy6TDKhJJB8U1SO84kjk(RTKInfoActivity rTKInfoActivity, String str, Bundle bundle) {
        rTKInfoActivity.getClass();
        boolean z = bundle.getBoolean("close");
        if (str.equals("rtkregister") && z) {
            EventBus.getDefault().post(new OrderBean(rTKInfoActivity.deviceType, "GET,EXPIREDATE"));
        }
    }

    public static /* synthetic */ void $r8$lambda$O7hCgKFzRVDSH1KoUpnRiOumdzU(RTKInfoActivity rTKInfoActivity, String str, Bundle bundle) {
        rTKInfoActivity.getClass();
        if (str.equals("logupload") && bundle.getBoolean("confirm")) {
            rTKInfoActivity.uploadTodayLog();
        }
    }

    /* renamed from: $r8$lambda$FkZjIzjG-MMBPpZjfndQvUYsWrQ, reason: not valid java name */
    public static /* synthetic */ void m1474$r8$lambda$FkZjIzjGMMBPpZjfndQvUYsWrQ(RTKInfoActivity rTKInfoActivity, String str, Bundle bundle) throws ParseException {
        int i;
        rTKInfoActivity.getClass();
        if (!str.equals("viewlog") || (i = bundle.getInt("index")) == -1) {
            return;
        }
        String logDir = FileUtil.getLogDir(rTKInfoActivity);
        ArrayList<String> arrayListListFileName = FileUtil.listFileName(logDir);
        if (i < 0 || i >= arrayListListFileName.size()) {
            return;
        }
        LogviewActivity.start(rTKInfoActivity, logDir + arrayListListFileName.get(i));
    }

    /* renamed from: $r8$lambda$SNn2aid5C-oap1VIgiWmquQkVoA, reason: not valid java name */
    public static /* synthetic */ void m1475$r8$lambda$SNn2aid5Coap1VIgiWmquQkVoA(RTKInfoActivity rTKInfoActivity, String str, Bundle bundle) throws ParseException {
        rTKInfoActivity.getClass();
        if (str.equals("loglist") && bundle.getBoolean("confirm")) {
            ArrayList<String> arrayListListFileName = FileUtil.listFileName(FileUtil.getLogDir(rTKInfoActivity));
            ChooseListDialogFragment chooseListDialogFragment = new ChooseListDialogFragment();
            chooseListDialogFragment.show(rTKInfoActivity.getSupportFragmentManager(), "ChooseListDialogFragment");
            Bundle bundle2 = new Bundle();
            bundle2.putString(Proj4Keyword.title, rTKInfoActivity.getString(R$string.select_file));
            bundle2.putStringArrayList("list", arrayListListFileName);
            bundle2.putString("requestKey", "viewlog");
            chooseListDialogFragment.setArguments(bundle2);
        }
    }

    private boolean isTargetDeviceConnected() {
        return YCTApplication.getInstance().isDemo() || MultiBluetoothManager.getInstance(this).isDeviceConnected(this.deviceType);
    }

    private void updateDeviceInfoPlaceholders() {
        CharSequence text = getText(isTargetDeviceConnected() ? R$string.loading : R$string.disconnected_device);
        this.binding.tvDeviceNumber.setText(text);
        this.binding.tvHardwareVersion.setText(text);
        this.binding.tvFirmwareVersion.setText(text);
        this.binding.tvGnssBoardVersion.setText(text);
        this.binding.tvExpireDate.setText(text);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ensureDeviceConnected() {
        if (isTargetDeviceConnected()) {
            return true;
        }
        showConnectDeviceTip();
        return false;
    }

    private void showConnectDeviceTip() {
        showTipDialog(getString(R$string.please_connect_device, getString(this.deviceType == DeviceType.BASE ? R$string.base : R$string.level)), getString(R$string.go_to_connect), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.14
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                RTKInfoActivity rTKInfoActivity = RTKInfoActivity.this;
                rTKInfoActivity.gotoBluetoothActivity(rTKInfoActivity.deviceType == DeviceType.BASE ? 1 : 0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkFmwUpgrade() {
        this.isClickQuery = true;
        this.upgradeInfo = null;
        showLoadingDialog(getString(R$string.detecting_version));
        initTimer();
        EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,FEATURES"));
    }

    public static /* synthetic */ void $r8$lambda$s_wEuPoPuGEiS0_fArHGymQCqkA(RTKInfoActivity rTKInfoActivity, int i) {
        rTKInfoActivity.getClass();
        NetworkUserLoader networkUserLoader = NetworkUserLoader.getInstance();
        StringBuilder sb = new StringBuilder();
        sb.append(rTKInfoActivity.getPackageName().equals("com.qianhe.xfix") ? "XFIX" : "YCT");
        sb.append("日志");
        networkUserLoader.uploadTodayLog(rTKInfoActivity, sb.toString(), rTKInfoActivity.createUploadLogCallback(i), rTKInfoActivity.createUploadProgressListener(i), rTKInfoActivity.createCompressProgressListener(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadTodayLog() {
        startUploadLog(new LogUploadTask() { // from class: com.qianhe.yct.activity.RTKInfoActivity$$ExternalSyntheticLambda4
            @Override // com.qianhe.yct.activity.RTKInfoActivity.LogUploadTask
            public final void run(int i) {
                RTKInfoActivity.$r8$lambda$s_wEuPoPuGEiS0_fArHGymQCqkA(this.f$0, i);
            }
        }, getString(R$string.log_compressing));
    }

    /* renamed from: $r8$lambda$ZMprjKp1ihBelTSPn-5_B1vCnj4, reason: not valid java name */
    public static /* synthetic */ void m1476$r8$lambda$ZMprjKp1ihBelTSPn5_B1vCnj4(final RTKInfoActivity rTKInfoActivity, final int i, final int i2) {
        rTKInfoActivity.getClass();
        rTKInfoActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.RTKInfoActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                RTKInfoActivity.m1472$r8$lambda$4CApnk9AUIQoHI0Y3MGei66w7s(this.f$0, i, i2);
            }
        });
    }

    private NetworkUserLoader.UploadProgressListener createCompressProgressListener(final int i) {
        return new NetworkUserLoader.UploadProgressListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity$$ExternalSyntheticLambda7
            @Override // com.qianhe.yct.utils.NetworkUserLoader.UploadProgressListener
            public final void onProgress(int i2) {
                RTKInfoActivity.m1476$r8$lambda$ZMprjKp1ihBelTSPn5_B1vCnj4(this.f$0, i, i2);
            }
        };
    }

    /* renamed from: $r8$lambda$4CApnk9AUIQoHI0Y3-MGei66w7s, reason: not valid java name */
    public static /* synthetic */ void m1472$r8$lambda$4CApnk9AUIQoHI0Y3MGei66w7s(RTKInfoActivity rTKInfoActivity, int i, int i2) {
        if (rTKInfoActivity.isDestroyed() || i != rTKInfoActivity.logUploadSession || rTKInfoActivity.logUploadFinished || rTKInfoActivity.logUploadLoadingDismissed) {
            return;
        }
        rTKInfoActivity.showLoadingDialog(rTKInfoActivity.getString(R$string.log_compressing) + i2 + "%", new RTKInfoActivity$$ExternalSyntheticLambda5(rTKInfoActivity));
    }

    /* renamed from: $r8$lambda$73LRL1j3ejwsfcLLfxWmxgVbn-Y, reason: not valid java name */
    public static /* synthetic */ void m1473$r8$lambda$73LRL1j3ejwsfcLLfxWmxgVbnY(final RTKInfoActivity rTKInfoActivity, final int i, final int i2) {
        rTKInfoActivity.getClass();
        rTKInfoActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.RTKInfoActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                RTKInfoActivity.$r8$lambda$eME9Vly5lYd3IGEtRyem0bfN0qI(this.f$0, i, i2);
            }
        });
    }

    private NetworkUserLoader.UploadProgressListener createUploadProgressListener(final int i) {
        return new NetworkUserLoader.UploadProgressListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity$$ExternalSyntheticLambda8
            @Override // com.qianhe.yct.utils.NetworkUserLoader.UploadProgressListener
            public final void onProgress(int i2) {
                RTKInfoActivity.m1473$r8$lambda$73LRL1j3ejwsfcLLfxWmxgVbnY(this.f$0, i, i2);
            }
        };
    }

    public static /* synthetic */ void $r8$lambda$eME9Vly5lYd3IGEtRyem0bfN0qI(RTKInfoActivity rTKInfoActivity, int i, int i2) {
        if (rTKInfoActivity.isDestroyed() || i != rTKInfoActivity.logUploadSession || rTKInfoActivity.logUploadFinished || rTKInfoActivity.logUploadLoadingDismissed) {
            return;
        }
        rTKInfoActivity.showLoadingDialog(rTKInfoActivity.getString(R$string.log_uploading) + i2 + "%", new RTKInfoActivity$$ExternalSyntheticLambda5(rTKInfoActivity));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLogUploadLoadingClosed(int i) {
        if (i != 1 || this.logUploadFinished) {
            return;
        }
        this.logUploadLoadingDismissed = true;
        this.logUploadFinished = true;
        this.logUploadSession++;
        NetworkUserLoader.getInstance().cancelLogUpload();
    }

    private void startUploadLog(final LogUploadTask logUploadTask, String str) {
        final int i = this.logUploadSession + 1;
        this.logUploadSession = i;
        this.logUploadFinished = false;
        this.logUploadLoadingDismissed = false;
        showLoadingDialog(str, new RTKInfoActivity$$ExternalSyntheticLambda5(this));
        new Thread(new Runnable() { // from class: com.qianhe.yct.activity.RTKInfoActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                RTKInfoActivity.$r8$lambda$rivTMB1nHLWbBe6JPb0l3R7zRJQ(this.f$0, i, logUploadTask);
            }
        }).start();
    }

    public static /* synthetic */ void $r8$lambda$rivTMB1nHLWbBe6JPb0l3R7zRJQ(RTKInfoActivity rTKInfoActivity, int i, LogUploadTask logUploadTask) {
        if (i != rTKInfoActivity.logUploadSession) {
            return;
        }
        logUploadTask.run(i);
    }

    /* renamed from: com.qianhe.yct.activity.RTKInfoActivity$15, reason: invalid class name */
    class AnonymousClass15 implements NetworkUserLoader.OnRequestCallBackListener {
        final /* synthetic */ int val$session;

        AnonymousClass15(int i) {
            this.val$session = i;
        }

        @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
        public void onFailure(Call call, final String str) {
            RTKInfoActivity rTKInfoActivity = RTKInfoActivity.this;
            final int i = this.val$session;
            rTKInfoActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.RTKInfoActivity$15$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    RTKInfoActivity.AnonymousClass15.$r8$lambda$qLt7jj5dY4J6Wc7sVY3xdRllR9c(this.f$0, i, str);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$qLt7jj5dY4J6Wc7sVY3xdRllR9c(AnonymousClass15 anonymousClass15, int i, String str) {
            String str2;
            if (RTKInfoActivity.this.isDestroyed() || i != RTKInfoActivity.this.logUploadSession || RTKInfoActivity.this.logUploadLoadingDismissed) {
                return;
            }
            RTKInfoActivity.this.logUploadFinished = true;
            RTKInfoActivity.this.cancelLoadingDialog();
            RTKInfoActivity rTKInfoActivity = RTKInfoActivity.this;
            StringBuilder sb = new StringBuilder();
            sb.append(RTKInfoActivity.this.getString(R$string.log_upload_failed));
            if (TextUtils.isEmpty(str)) {
                str2 = "";
            } else {
                str2 = "\n" + str;
            }
            sb.append(str2);
            rTKInfoActivity.showTipDialog(sb.toString(), RTKInfoActivity.this.getString(R$string.ok), null);
        }

        @Override // com.qianhe.yct.utils.NetworkUserLoader.OnRequestCallBackListener
        public void onResponse(String str) {
            RTKInfoActivity rTKInfoActivity = RTKInfoActivity.this;
            final int i = this.val$session;
            rTKInfoActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.activity.RTKInfoActivity$15$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RTKInfoActivity.AnonymousClass15.$r8$lambda$EQrC8kYIIKcdReSfcoYUOXwtzk0(this.f$0, i);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$EQrC8kYIIKcdReSfcoYUOXwtzk0(AnonymousClass15 anonymousClass15, int i) {
            if (RTKInfoActivity.this.isDestroyed() || i != RTKInfoActivity.this.logUploadSession || RTKInfoActivity.this.logUploadLoadingDismissed) {
                return;
            }
            RTKInfoActivity.this.logUploadFinished = true;
            RTKInfoActivity.this.cancelLoadingDialog();
            RTKInfoActivity rTKInfoActivity = RTKInfoActivity.this;
            rTKInfoActivity.showTipDialog(rTKInfoActivity.getString(R$string.log_upload_successful), RTKInfoActivity.this.getString(R$string.ok), null);
        }
    }

    private NetworkUserLoader.OnRequestCallBackListener createUploadLogCallback(int i) {
        return new AnonymousClass15(i);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() {
        getSupportFragmentManager().setFragmentResultListener("clickaction", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.16
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                boolean z = bundle.getBoolean("sensor_scan");
                bundle.getBoolean("confirm");
                if (z) {
                    SensorScanListDialogFragment sensorScanListDialogFragment = new SensorScanListDialogFragment();
                    sensorScanListDialogFragment.show(RTKInfoActivity.this.getSupportFragmentManager(), "SensorScanListDialogFragment");
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(Proj4Keyword.title, RTKInfoActivity.this.getString(R$string.please_select_sensor));
                    bundle2.putString("requestKey", "sensorscanlist");
                    sensorScanListDialogFragment.setArguments(bundle2);
                }
            }
        });
        getSupportFragmentManager().setFragmentResultListener("sensorscanlist", this, new FragmentResultListener() { // from class: com.qianhe.yct.activity.RTKInfoActivity.17
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle) {
                MyBluetoothDevice myBluetoothDevice = (MyBluetoothDevice) bundle.getParcelable("sensor_myBluetoothDevice");
                ChooseSensorDialogFragment chooseSensorDialogFragmentFind = ChooseSensorDialogFragment.find(RTKInfoActivity.this.getSupportFragmentManager());
                if (chooseSensorDialogFragmentFind == null || myBluetoothDevice == null) {
                    return;
                }
                chooseSensorDialogFragmentFind.setChooseDevice(myBluetoothDevice);
            }
        });
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        if (this.deviceType == DeviceType.BASE) {
            this.binding.topBar.tvTitle.setText(R$string.base_station_info);
        } else {
            this.binding.topBar.tvTitle.setText(getString(R$string.leveling_device_info));
        }
        return this.binding.topBar.getRoot();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(Serial serial) {
        this.binding.tvDeviceNumber.setText(serial.sn);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GnssInfo gnssInfo) {
        this.binding.tvGnssBoardVersion.setText(gnssInfo.gnssVersion);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(HostPoweroffEvent hostPoweroffEvent) {
        if (hostPoweroffEvent.line.contains("OK")) {
            showToastDialog(getString(R$string.host_has_shut_down));
        } else {
            showTipDialog(getString(R$string.poweroff_failed), getString(R$string.ok), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initTimer() {
        if (this.scheduledExecutor == null) {
            this.scheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        }
        this.hasRtkInfo = false;
        this.hasExpiredate = false;
        this.scheduledFuture = this.scheduledExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.qianhe.yct.activity.RTKInfoActivity.18
            @Override // java.lang.Runnable
            public void run() {
                if (RTKInfoActivity.this.isDestroyed()) {
                    return;
                }
                if (!RTKInfoActivity.this.hasRtkInfo) {
                    EventBus.getDefault().post(new OrderBean(RTKInfoActivity.this.deviceType, "GET,VERSION"));
                }
                if (!RTKInfoActivity.this.hasExpiredate) {
                    EventBus.getDefault().post(new OrderBean(RTKInfoActivity.this.deviceType, "GET,EXPIREDATE"));
                }
                if (RTKInfoActivity.this.hasRtkInfo && RTKInfoActivity.this.hasExpiredate) {
                    RTKInfoActivity.this.stopTimer();
                }
            }
        }, 0L, 500L, TimeUnit.MILLISECONDS);
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(FeaturesEvent featuresEvent) {
        if (featuresEvent.value.contains("UPGRADE")) {
            EventBus.getDefault().post(new OrderBean(this.deviceType, "UPGRADE,INFO"));
        } else {
            cancelLoadingDialog();
            showTipDialog(getString(R$string.host_not_support_upgradle), getString(R$string.ok), null);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(UpgradeInfoEvent upgradeInfoEvent) {
        if (this.upgradeInfo == null) {
            this.upgradeInfo = upgradeInfoEvent;
            String str = upgradeInfoEvent.pns;
            String string = upgradeInfoEvent.vsersions;
            if (!this.binding.lltFirmware.isSelected()) {
                String string2 = this.mSp.getString("deviceSn", "");
                if (string2.length() > 7) {
                    str = "GNSS-" + String.valueOf(string2.charAt(7)) + String.valueOf(string2.charAt(8));
                    string = this.mSp.getString(Constant.GNSS_FWM_VERSION, "");
                }
            }
            NetworkDataLoader.getInstance().getFirmwareList(upgradeInfoEvent.deviceType, str, string, !this.binding.lltFirmware.isSelected());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0135, code lost:
    
        if (r8.isClickQuery == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0137, code lost:
    
        showTipDialog(getString(com.qianhe.yct.R$string.firmware_is_latest_version), getString(com.qianhe.yct.R$string.ok), null);
     */
    @Override // com.qianhe.yct.base.BaseActivity
    @org.greenrobot.eventbus.Subscribe(threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onEventMessage(com.qianhe.yct.event.FirmwareResponse r9) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qianhe.yct.activity.RTKInfoActivity.onEventMessage(com.qianhe.yct.event.FirmwareResponse):void");
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(RtkInfo rtkInfo) {
        if (rtkInfo == null) {
            return;
        }
        this.hasRtkInfo = true;
        this.binding.tvHardwareVersion.setText(!TextUtils.isEmpty(rtkInfo.hardwareVersion) ? rtkInfo.hardwareVersion : getText(R$string.loading));
        this.binding.tvFirmwareVersion.setText(!TextUtils.isEmpty(rtkInfo.firmwareVersion) ? rtkInfo.firmwareVersion : getText(R$string.loading));
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(Expiredate expiredate) {
        if (expiredate == null) {
            return;
        }
        this.hasExpiredate = true;
        this.binding.tvExpireDate.setText(expiredate.value);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GetFeatureCodeEvent getFeatureCodeEvent) {
        if (getFeatureCodeEvent == null || getFeatureCodeEvent.deviceType != this.deviceType) {
            return;
        }
        String str = getFeatureCodeEvent.code;
        if (str == null) {
            str = "";
        }
        this.featureCode = str;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SetFeatureCodeResult setFeatureCodeResult) {
        String str;
        if (setFeatureCodeResult == null || setFeatureCodeResult.deviceType != this.deviceType || !setFeatureCodeResult.result.equalsIgnoreCase("OK") || (str = setFeatureCodeResult.code) == null) {
            return;
        }
        this.featureCode = str;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothConnectStateEvent bluetoothConnectStateEvent) {
        super.onEventMessage(bluetoothConnectStateEvent);
        MyBluetoothDevice myBluetoothDevice = bluetoothConnectStateEvent.myDevice;
        if (myBluetoothDevice == null || myBluetoothDevice.deviceType != this.deviceType) {
            return;
        }
        if (myBluetoothDevice.state == BluetoothStateEnum.CONNECTED.getState()) {
            updateDeviceInfoPlaceholders();
            EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,SERIAL"));
            EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,GNSS.INFO"));
            initTimer();
            EventBus.getDefault().post(new OrderBean(this.deviceType, "GET,FEATURE_CODE"));
            return;
        }
        if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.DISCONNECT.getState() || bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.CONNECT_FAILED.getState()) {
            updateDeviceInfoPlaceholders();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopTimer() {
        ScheduledFuture<?> scheduledFuture = this.scheduledFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = this.scheduledExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
        this.scheduledExecutor = null;
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        stopTimer();
    }
}
