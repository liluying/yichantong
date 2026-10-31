package com.qianhe.yct.base;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentResultListener;
import androidx.lifecycle.Observer;
import com.qh.diffclient.DiffClient;
import com.qh.libexcavator.Excavator;
import com.qh.xcad.XCadView$$ExternalSyntheticBackport0;
import com.qh.yctdevice.YctDevice;
import com.qianhe.baselib.Constant;
import com.qianhe.baselib.bean.BestPosEntity;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.GPDOPEntity;
import com.qianhe.baselib.bean.GSTEntity;
import com.qianhe.baselib.bean.GnssTransParamEntity;
import com.qianhe.baselib.bean.InsAhrs;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.OrderBean;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.ConnectModeEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.FrequencyEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.BleLogCache;
import com.qianhe.baselib.utils.CalibrateLogToFile;
import com.qianhe.baselib.utils.FileUtil;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.baselib.utils.UnitConvertUtils;
import com.qianhe.ntripclientlib.bean.AuthResult;
import com.qianhe.rtkclientlib.MultiBluetoothManager;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.event.Batt;
import com.qianhe.rtkclientlib.event.BluetoothBondRequestEvent;
import com.qianhe.rtkclientlib.event.DeviceModelEvent;
import com.qianhe.rtkclientlib.event.Expiredate;
import com.qianhe.rtkclientlib.event.FeaturesEvent;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.PowerSourceEvent;
import com.qianhe.rtkclientlib.event.RtkInfo;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.rtkclientlib.event.UpgradeInfoEvent;
import com.qianhe.yct.MainActivity;
import com.qianhe.yct.R$color;
import com.qianhe.yct.R$drawable;
import com.qianhe.yct.R$id;
import com.qianhe.yct.R$string;
import com.qianhe.yct.activity.BluetoothActivity;
import com.qianhe.yct.activity.BluetoothBondActivity;
import com.qianhe.yct.activity.CorsRenewActivity;
import com.qianhe.yct.activity.DiffDataConfigActivity;
import com.qianhe.yct.activity.EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0;
import com.qianhe.yct.activity.ExcavatorListActivity;
import com.qianhe.yct.activity.LocateInfoActivity;
import com.qianhe.yct.activity.PrivacyPolicyActivity;
import com.qianhe.yct.activity.ShareListActivity;
import com.qianhe.yct.activity.UserLoginActivity;
import com.qianhe.yct.activity.UserManageActivity;
import com.qianhe.yct.activity.ZeroingActivity;
import com.qianhe.yct.activity.basestation.BaseStationConfigActivity;
import com.qianhe.yct.activity.basestation.BaseStationDataLinkConfigActivity;
import com.qianhe.yct.activity.basestation.BaseStationNetworkLinkActivity;
import com.qianhe.yct.activity.basestation.BaseStationWorkModeConfigActivity;
import com.qianhe.yct.activity.excavator.ExcavatorCreateActivity;
import com.qianhe.yct.activity.share.ShareCreateActivity;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.bean.AppConfig;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.AppForcedUpgradeDialogFragment;
import com.qianhe.yct.dialog.BubbleCompassDialogFragment;
import com.qianhe.yct.dialog.CalibrateDialogFragment;
import com.qianhe.yct.dialog.CollectingDialogFragment;
import com.qianhe.yct.dialog.DifferentialInterruptDialogFragment;
import com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment;
import com.qianhe.yct.dialog.LoadingFragment;
import com.qianhe.yct.dialog.PoleHeightInputDialogFragment;
import com.qianhe.yct.dialog.ShareWayDialogFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.dialog.ToastDialogFragment;
import com.qianhe.yct.dialog.UpgradeFmwDialogFragment;
import com.qianhe.yct.enums.BluetoothActionEnum;
import com.qianhe.yct.enums.InsStatusEnum;
import com.qianhe.yct.event.ApkListResponse;
import com.qianhe.yct.event.AppVersionCheckEndEvent;
import com.qianhe.yct.event.BluetoothConnectActionByMacEvent;
import com.qianhe.yct.event.BluetoothConnectActionEvent;
import com.qianhe.yct.event.BluetoothConnectStateEvent;
import com.qianhe.yct.event.BluetoothScanStateEvent;
import com.qianhe.yct.event.CorsExpireEpochEvent;
import com.qianhe.yct.event.FirmwareResponse;
import com.qianhe.yct.event.LogoutResponse;
import com.qianhe.yct.event.ReloadAppConfigEvent;
import com.qianhe.yct.event.StartDemo;
import com.qianhe.yct.event.StopDemo;
import com.qianhe.yct.event.TcpClientEvent;
import com.qianhe.yct.event.UnknownHostEvent;
import com.qianhe.yct.manage.AppConfigManager;
import com.qianhe.yct.service.BluetoothConnectService;
import com.qianhe.yct.utils.ApkInstaller30;
import com.qianhe.yct.utils.AppUpgrader;
import com.qianhe.yct.utils.CalibrateUploadHelper;
import com.qianhe.yct.utils.LoadingDialogManager;
import com.qianhe.yct.utils.NetworkDataLoader;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.utils.ScreenOrientationHelper;
import com.qianhe.yct.utils.ThemeModeManager;
import com.qianhe.yct.utils.TipsDialogManager;
import com.qianhe.yct.utils.UpgradeingDialogManager;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import pl.droidsonroids.gif.GifImageView;
import pub.devrel.easypermissions.AppSettingsDialog;
import pub.devrel.easypermissions.EasyPermissions;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public abstract class BaseActivity extends AppCompatActivity implements EasyPermissions.PermissionCallbacks {
    private static boolean bluetoothKickedTips;
    private static boolean connectFailedTips;
    private static boolean connectingDialogConsumed;
    private static Intent intentService;
    private static String sHandledClipFingerprint;
    private static String sLastTcpClientTip;
    private static long sLastTcpClientTipTime;
    private static long sLastUnknownHostTipTime;
    private static boolean sShareCodePrompting;
    private static ScreenReceiver screenReceiver;
    protected long angleLastTime;
    public AppConfig appConfig;
    protected boolean authFlag;
    private CalibrateDialogFragment calibrateDialogFragment;
    private CollectingDialogFragment collectingDialogFragment;
    protected int count;
    private long delayBigCount;
    private FmwForcedUpgradeDialogFragment forcedUpgradeDialog;
    private AppForcedUpgradeDialogFragment forcedUpgradeDialogFragment;
    private GifImageView gifCharging;
    protected boolean headingDegreesOK;
    private boolean init;
    private boolean instrumentCollectPoleHeightSet;
    private int instrumentCollectQuality;
    private boolean instrumentDopLogEnabled;
    private DifferentialInterruptDialogFragment interruptDialogFragment;
    private boolean isInstrumentCollecting;
    protected boolean isShowTips;
    private boolean isStartConnect;
    protected boolean isVisible;
    private ImageView ivBack;
    private ImageView ivBattIcon;
    private int lastInsDisplayState;
    protected double latestHeadingDegreesError;
    private View lltBackTb;
    private View lltBatt;
    private View lltInsState;
    private View lltLocate;
    private View lltStar;
    private LoadingDialogManager loadingDialogManager;
    protected boolean mAvailable;
    public GGAEntity mGGA;
    protected GPDOPEntity mGPDOP;
    private long mScreenOffTime;
    protected EngineeringEntity mSharedWorkEngineering;
    private GnssTransParamEntity mSharedWorkTransParam;
    protected SharedPreferences mSp;
    protected double pitchAngle;
    private View rltRMS;
    private View rltSensorBatt;
    protected int sensorOfflineCount;
    private float sessionPoleHeightMeters;
    private float softInputTouchDownX;
    private float softInputTouchDownY;
    private boolean softInputTouchMoved;
    protected TipsDialogManager tipsDialogManager;
    private ToastDialogFragment toastDialogFragment;
    private FrameLayout topBar;
    private TextView tvAngle;
    private TextView tvDemoTip;
    private TextView tvDiffDelay;
    private TextView tvGotoConnect;
    private TextView tvHRMS;
    private TextView tvInsState;
    private TextView tvRtkState;
    private TextView tvSensorBatt;
    private TextView tvUseStars;
    private TextView tvVRMS;
    private TextView tvZpyBatt;
    private UpgradeFmwDialogFragment upgradeDialog;
    private UpgradeInfoEvent upgradeInfo;
    private UpgradeingDialogManager upgradeingDialogManager;
    protected boolean workPageDataAvailable;
    private final List<double[]> instrumentCollectSamples = new ArrayList();
    private final List<Float> instrumentHdopSamples = new ArrayList();
    private final List<Float> instrumentVdopSamples = new ArrayList();
    private int mH5PowerPercent = -1;
    private int mH5PowerSourceType = -1;
    protected final int MAX_COLLECT_COUNT = 5;
    protected float zeroDegrees = Float.MIN_VALUE;
    private int fmwUpgradeCurrentStep = 0;
    private List<FirmwareResponse.Fmw.Info> fmwInfoList = new ArrayList();

    public interface OnInstrumentCollectListener {
        void onResult(InstrumentCollectResult instrumentCollectResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface OnPoleHeightInputConfirmListener {
        void onConfirm(float f);
    }

    protected enum WorkInsAvailabilityMode {
        FULL,
        ELEVATION_ONLY
    }

    protected void beforePromptOpenSharedProject() {
    }

    protected void bluetoothStatus(int i) {
    }

    protected int getCentralMeridian(double d) {
        return (((int) ((d - 1.5d) / 3.0d)) + 1) * 3;
    }

    protected abstract void getGGA(GGAEntity gGAEntity);

    protected abstract View getRootView();

    protected abstract void initData();

    protected abstract FrameLayout initTopBar();

    protected abstract void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange);

    protected abstract void onINsNavi(InsNavi insNavi);

    public boolean shouldIgnoreBucketSensorLost() {
        return false;
    }

    protected boolean shouldRestoreBluetoothConnectProgressUi() {
        return true;
    }

    public double getLatestHeadingDegreesError() {
        return this.latestHeadingDegreesError;
    }

    public class ScreenReceiver extends BroadcastReceiver {
        public ScreenReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                LogToFile.i("============ 已亮屏 ============");
            } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                BaseActivity.this.mScreenOffTime = System.currentTimeMillis();
                LogToFile.i("============ 已息屏 ============");
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @SuppressLint({"SourceLockedOrientationActivity", "MissingPermission"})
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        applyScreenOrientation();
        super.onCreate(bundle);
        restoreBatteryStateFromBundle(bundle);
        getWindow().addFlags(128);
        setContentView(getRootView());
        ThemeModeManager.applySystemBars(this);
        ScreenOrientationHelper.applyTabletNavigationBar(this);
        ((YCTApplication) getApplication()).getActivityList().add(this);
        this.mSp = getSharedPreferences("sp", 0);
        loadSharedWorkEngineeringFromIntent();
        this.collectingDialogFragment = new CollectingDialogFragment();
        this.toastDialogFragment = new ToastDialogFragment();
        this.tipsDialogManager = new TipsDialogManager(getSupportFragmentManager());
        this.loadingDialogManager = new LoadingDialogManager(getSupportFragmentManager());
        this.upgradeingDialogManager = new UpgradeingDialogManager(getSupportFragmentManager());
        if (screenReceiver == null) {
            screenReceiver = new ScreenReceiver();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            registerReceiver(screenReceiver, intentFilter);
        }
        getSupportFragmentManager().setFragmentResultListener("gotoconnect", this, new FragmentResultListener() { // from class: com.qianhe.yct.base.BaseActivity.1
            @Override // androidx.fragment.app.FragmentResultListener
            public void onFragmentResult(String str, Bundle bundle2) {
                if (str.equals("gotoconnect") && bundle2.getBoolean("confirm")) {
                    if (BaseActivity.this.forcedUpgradeDialog != null && BaseActivity.this.forcedUpgradeDialog.getFragmentManager() != null) {
                        BaseActivity.this.forcedUpgradeDialog.dismiss();
                    }
                    if (BaseActivity.this.upgradeDialog != null && BaseActivity.this.upgradeDialog.getFragmentManager() != null) {
                        BaseActivity.this.upgradeDialog.dismiss();
                    }
                    BaseActivity.this.gotoBluetoothActivity();
                }
            }
        });
        if (hasPermissions("basic")) {
            init();
        }
    }

    public boolean isPad() {
        return ((YCTApplication) getApplication()).isPad();
    }

    public boolean isAutoAdaptation() {
        return ((YCTApplication) getApplication()).isAutoAdaptation();
    }

    private void applyScreenOrientation() {
        ScreenOrientationHelper.apply(this);
    }

    public void notAllowRotateScreen() {
        setRequestedOrientation(14);
    }

    public void allowRotateScreen() {
        if (isAutoAdaptation()) {
            setRequestedOrientation(4);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        FrameLayout frameLayoutInitTopBar = initTopBar();
        this.topBar = frameLayoutInitTopBar;
        if (frameLayoutInitTopBar != null) {
            this.ivBack = (ImageView) frameLayoutInitTopBar.findViewById(R$id.ivBackTb);
            this.lltBackTb = this.topBar.findViewById(R$id.lltBackTb);
            this.tvDemoTip = (TextView) this.topBar.findViewById(R$id.tvDemoTip);
            this.lltLocate = this.topBar.findViewById(R$id.lltLocate);
            this.lltBatt = this.topBar.findViewById(R$id.lltBatt);
            this.tvUseStars = (TextView) this.topBar.findViewById(R$id.tvUseStars);
            this.lltInsState = this.topBar.findViewById(R$id.lltInsState);
            this.tvInsState = (TextView) this.topBar.findViewById(R$id.tvInsState);
            this.tvAngle = (TextView) this.topBar.findViewById(R$id.tvAngle);
            this.tvGotoConnect = (TextView) this.topBar.findViewById(R$id.tvGotoConnect);
            this.tvRtkState = (TextView) this.topBar.findViewById(R$id.tvRtkState);
            this.tvDiffDelay = (TextView) this.topBar.findViewById(R$id.tvDiffDelay);
            this.lltStar = this.topBar.findViewById(R$id.lltStar);
            this.rltRMS = this.topBar.findViewById(R$id.rltRMS);
            this.tvHRMS = (TextView) this.topBar.findViewById(R$id.tvHRMS);
            this.tvVRMS = (TextView) this.topBar.findViewById(R$id.tvVRMS);
            this.ivBattIcon = (ImageView) this.topBar.findViewById(R$id.ivBattIcon);
            this.tvZpyBatt = (TextView) this.topBar.findViewById(R$id.tvZpyBatt);
            this.gifCharging = (GifImageView) this.topBar.findViewById(R$id.gifCharging);
            this.rltSensorBatt = this.topBar.findViewById(R$id.rltSensorBatt);
            this.tvSensorBatt = (TextView) this.topBar.findViewById(R$id.tvSensorBatt);
            View view = this.lltBackTb;
            if (view != null) {
                view.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.base.BaseActivity.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        BaseActivity.this.ivBackClick();
                    }
                });
            }
            TextView textView = this.tvGotoConnect;
            if (textView != null) {
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.base.BaseActivity.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        BaseActivity.this.gotoBluetoothActivity();
                    }
                });
            }
            View view2 = this.lltLocate;
            if (view2 != null) {
                view2.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.base.BaseActivity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        BaseActivity.this.startActivity(new Intent(BaseActivity.this, (Class<?>) LocateInfoActivity.class));
                    }
                });
            }
            View view3 = this.lltInsState;
            if (view3 != null) {
                view3.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.base.BaseActivity.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view4) {
                        if (YCTApplication.getInstance().isH5Pro()) {
                            BaseActivity baseActivity = BaseActivity.this;
                            if (baseActivity.mAvailable) {
                                return;
                            }
                            baseActivity.showCalibrateDialog(null);
                            return;
                        }
                        BaseActivity.this.startActivity(new Intent(BaseActivity.this, (Class<?>) ZeroingActivity.class));
                    }
                });
            }
            View view4 = this.lltBatt;
            if (view4 != null) {
                view4.setOnClickListener(new View.OnClickListener() { // from class: com.qianhe.yct.base.BaseActivity.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view5) {
                        BaseActivity.this.gotoBluetoothActivity();
                    }
                });
            }
            restoreTopBarBatteryUi();
        }
        checkPermissions("basic", true);
    }

    protected void ivBackClick() {
        onBackPressed();
    }

    public void gotoBluetoothActivity() {
        gotoBluetoothActivity(0);
    }

    public void gotoBluetoothActivity(int i) {
        if (hasPermissions("basic")) {
            if (!isLocationEnabled()) {
                showTipDialog(getString(R$string.location_info_not_enabled), getString(R$string.go_open), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity.7
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        BaseActivity baseActivity = BaseActivity.this;
                        baseActivity.openLocationSettings(baseActivity);
                    }
                });
                return;
            }
            if (!MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.BASE) && (getClass().getName().contains(BaseStationConfigActivity.class.getName()) || getClass().getName().contains(BaseStationWorkModeConfigActivity.class.getName()) || getClass().getName().contains(BaseStationDataLinkConfigActivity.class.getName()) || getClass().getName().contains(BaseStationNetworkLinkActivity.class.getName()))) {
                Intent intent = new Intent(this, (Class<?>) BluetoothActivity.class);
                intent.putExtra("fragmentIndex", 1);
                startActivity(intent);
                return;
            } else {
                Intent intent2 = new Intent(this, (Class<?>) BluetoothActivity.class);
                intent2.putExtra("fragmentIndex", i);
                startActivity(intent2);
                return;
            }
        }
        checkPermissions("basic", true);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    @SuppressLint({"MissingPermission"})
    protected void onResume() throws IOException {
        BluetoothDevice bluetoothDevice;
        super.onResume();
        this.isVisible = true;
        if (!this.init && hasPermissions("basic")) {
            init();
        }
        this.appConfig = ((YCTApplication) getApplicationContext()).getAppConfig();
        SharedPreferences sharedPreferences = this.mSp;
        ConnectModeEnum connectModeEnum = ConnectModeEnum.BLE;
        if (sharedPreferences.getInt("mode", connectModeEnum.getType()) == connectModeEnum.getType()) {
            MyBluetoothDevice currentDevice = YCTApplication.getInstance().getCurrentDevice();
            if (this.mScreenOffTime > 0 && System.currentTimeMillis() - this.mScreenOffTime > 10000 && currentDevice != null && currentDevice.state != BluetoothStateEnum.CONNECTED.getState() && !getClass().getName().equals(BluetoothActivity.class.getName())) {
                this.mScreenOffTime = 0L;
                LogToFile.i("息屏超过10秒->断开重连。");
                reConnect(DeviceType.ZPY);
            }
            if (!getClass().getName().equals(BluetoothActivity.class.getName()) && !getClass().getName().equals(PrivacyPolicyActivity.class.getName()) && this.tvGotoConnect != null) {
                if (!MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.BASE) && (getClass().getName().contains(BaseStationConfigActivity.class.getName()) || getClass().getName().contains(BaseStationWorkModeConfigActivity.class.getName()) || getClass().getName().contains(BaseStationDataLinkConfigActivity.class.getName()) || getClass().getName().contains(BaseStationNetworkLinkActivity.class.getName()))) {
                    this.tvGotoConnect.setVisibility(0);
                } else {
                    this.tvGotoConnect.setVisibility(MultiBluetoothManager.getInstance(this).getAllConnectedDevices().isEmpty() ? 0 : 8);
                    if (!MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY)) {
                        TextView textView = this.tvInsState;
                        if (textView != null) {
                            textView.setText(R$string.data_empty);
                            this.tvInsState.setSelected(false);
                        }
                        TextView textView2 = this.tvAngle;
                        if (textView2 != null) {
                            textView2.setText(getString(R$string.data_empty));
                            this.tvAngle.setSelected(false);
                        }
                        TextView textView3 = this.tvHRMS;
                        if (textView3 != null) {
                            textView3.setSelected(true);
                        }
                        TextView textView4 = this.tvVRMS;
                        if (textView4 != null) {
                            textView4.setSelected(true);
                        }
                    }
                }
            }
            if (currentDevice != null && (bluetoothDevice = currentDevice.bluetoothDevice) != null && bluetoothDevice.getName() != null && !currentDevice.bluetoothDevice.getName().equals(((YCTApplication) getApplication()).getLastDeviceName())) {
                if (currentDevice.deviceType == DeviceType.ZPY) {
                    ((YCTApplication) getApplication()).setLastDeviceName(currentDevice.bluetoothDevice.getName());
                }
                resetLastDeviceInfo();
            }
        } else {
            TextView textView5 = this.tvGotoConnect;
            if (textView5 != null) {
                textView5.setVisibility(8);
            }
        }
        new Handler().postDelayed(new Runnable() { // from class: com.qianhe.yct.base.BaseActivity.8
            @Override // java.lang.Runnable
            public void run() {
                if (BaseActivity.this.isFinishing() || BaseActivity.this.isDestroyed()) {
                    return;
                }
                BaseActivity.this.restoreTopBarBatteryUi();
                EventBus.getDefault().post(new OrderBean("GET,POWER.BATTERYLEVEL"));
                EventBus.getDefault().post(new OrderBean("GET,POWER.SOURCE"));
            }
        }, 500L);
        ImageView imageView = this.ivBattIcon;
        if (imageView != null) {
            imageView.setImageResource(MultiBluetoothManager.getInstance(this).isKe76Pro() ? R$drawable.icon_zpy_batt_ex30 : R$drawable.icon_zpy_batt_h5pro);
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.qianhe.yct.base.BaseActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                BaseActivity.$r8$lambda$K2cuzYMVLKlATM09znXSIwdIIxo(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$K2cuzYMVLKlATM09znXSIwdIIxo(BaseActivity baseActivity) {
        baseActivity.dismissStaleBluetoothPairingDialogsIfNeeded();
        baseActivity.restoreBluetoothConnectUi();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.isVisible = false;
    }

    public void checkPermissions(String str, boolean z) {
        if (str.contains("camera")) {
            if (EasyPermissions.hasPermissions(this, "android.permission.CAMERA")) {
                init();
                return;
            } else if (z) {
                EasyPermissions.requestPermissions(this, getString(R$string.permission_des), 102, "android.permission.CAMERA");
                return;
            } else {
                showPermissionNotGrantedDialog(true);
                return;
            }
        }
        if (hasPermissions(str)) {
            init();
        } else {
            if (z) {
                if (getClass().getName().contains(PrivacyPolicyActivity.class.getName())) {
                    return;
                }
                showTipDialog(getString(R$string.permission_desc), getString(R$string.agree), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity.9
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z2) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() throws IOException {
                        BaseActivity.this.continueBasicPermissionFlow();
                    }
                }, "permission");
                return;
            }
            continueBasicPermissionFlow();
        }
    }

    public boolean hasPermissions(String str) {
        if (str.contains("camera")) {
            return EasyPermissions.hasPermissions(this, "android.permission.CAMERA");
        }
        return hasBasicRuntimePermissions() && FileUtil.hasExternalStorageAccess(this);
    }

    private String[] getBasicRuntimePermissions() {
        if (Build.VERSION.SDK_INT >= 31) {
            return new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.BLUETOOTH_SCAN", "android.permission.BLUETOOTH_CONNECT"};
        }
        return new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"};
    }

    private boolean hasBasicRuntimePermissions() {
        return EasyPermissions.hasPermissions(this, getBasicRuntimePermissions());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void continueBasicPermissionFlow() throws IOException {
        if (hasPermissions("basic")) {
            init();
        } else if (!hasBasicRuntimePermissions()) {
            EasyPermissions.requestPermissions(this, getString(R$string.permission_des), 100, getBasicRuntimePermissions());
        } else {
            requestStoragePermission();
        }
    }

    private void requestStoragePermission() throws IOException {
        if (FileUtil.hasExternalStorageAccess(this)) {
            init();
        } else if (Build.VERSION.SDK_INT >= 30) {
            showTipDialog(getString(R$string.permission_desc), getString(R$string.go_open), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity.10
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    FileUtil.openAllFilesAccessSettings(BaseActivity.this);
                }
            }, "permission");
        } else {
            EasyPermissions.requestPermissions(this, getString(R$string.permission_des), 101, "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE");
        }
    }

    private void onBasicPermissionRequestFinished(int i) throws IOException {
        if (hasPermissions("basic")) {
            init();
        } else if (hasBasicRuntimePermissions() && !FileUtil.hasExternalStorageAccess(this)) {
            requestStoragePermission();
        } else {
            handleBasicPermissionDenied(i, Arrays.asList(getBasicRuntimePermissions()));
        }
    }

    private void handleBasicPermissionDenied(int i, List<String> list) {
        if (EasyPermissions.somePermissionPermanentlyDenied(this, list)) {
            new AppSettingsDialog.Builder(this).build().show();
        } else {
            showPermissionNotGrantedDialog(i == 100 || i == 102);
        }
    }

    private void showPermissionNotGrantedDialog(final boolean z) {
        showTipDialog(getString(R$string.permission_not_obtained), getString(R$string.go_open), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity.11
            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onClose(boolean z2) {
            }

            @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
            public void onConfirm() {
                if (z || Build.VERSION.SDK_INT < 30) {
                    BaseActivity.this.openAppPermissionsSettings();
                } else {
                    FileUtil.openAllFilesAccessSettings(BaseActivity.this);
                }
            }
        }, "permission");
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        AppConfig appConfig = this.appConfig;
        if (appConfig != null) {
            bundle.putSerializable("appConfig", appConfig);
        }
        bundle.putInt("state_power_percent", this.mH5PowerPercent);
        bundle.putInt("state_power_source_type", this.mH5PowerSourceType);
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        AppConfig appConfig = (AppConfig) bundle.getSerializable("appConfig");
        this.appConfig = appConfig;
        if (appConfig == null) {
            LogToFile.i("读取配置文件");
            this.appConfig = ((YCTApplication) getApplicationContext()).getAppConfig();
        }
        ((YCTApplication) getApplicationContext()).setAppConfig(this.appConfig);
        restoreBatteryStateFromBundle(bundle);
        restoreTopBarBatteryUi();
    }

    private void restoreBatteryStateFromBundle(Bundle bundle) {
        if (bundle == null) {
            restoreBatteryStateFromApp();
            return;
        }
        if (bundle.containsKey("state_power_percent")) {
            this.mH5PowerPercent = bundle.getInt("state_power_percent", -1);
        }
        if (bundle.containsKey("state_power_source_type")) {
            this.mH5PowerSourceType = bundle.getInt("state_power_source_type", -1);
        }
        restoreBatteryStateFromApp();
    }

    private void restoreBatteryStateFromApp() {
        if (this.mH5PowerPercent == -1) {
            this.mH5PowerPercent = YCTApplication.getInstance().getH5PowerPercent();
        }
        if (this.mH5PowerSourceType == -1) {
            this.mH5PowerSourceType = YCTApplication.getInstance().getH5PowerSourceType();
        }
    }

    private void init() throws IOException {
        if (this.init) {
            return;
        }
        this.init = true;
        FileUtil.migrateYctDbToXfixIfNeeded(this);
        LogToFile.init(this, false);
        if (!BleLogCache.isInit()) {
            BleLogCache.init(this);
            try {
                DiffClient.setLoggerFilePath(FileUtil.mkDiffLogFile(this));
            } catch (Throwable th) {
                LogToFile.e("DiffClient.setLoggerFilePath 失败：" + th);
            }
            try {
                YctDevice.setLoggerFilePath(FileUtil.mkDevLogFile(this));
            } catch (Throwable th2) {
                LogToFile.e("YctDevice.setLoggerFilePath 失败：" + th2);
            }
        }
        if (!CalibrateLogToFile.isInit()) {
            CalibrateLogToFile.init(this);
        }
        CalibrateUploadHelper.install();
        if (TextUtils.isEmpty(CalibrateLogToFile.getXexcavatorVersion())) {
            try {
                CalibrateLogToFile.setXexcavatorVersion(Excavator.libraryVersion());
            } catch (Throwable unused) {
            }
        }
        if (this.appConfig == null) {
            LogToFile.i("读取配置文件");
            this.appConfig = ((YCTApplication) getApplicationContext()).getAppConfig();
        }
        SharedPreferences sharedPreferences = this.mSp;
        ConnectModeEnum connectModeEnum = ConnectModeEnum.BLE;
        int i = sharedPreferences.getInt("mode", connectModeEnum.getType());
        if (i == connectModeEnum.getType()) {
            initData();
            checkConnect();
        } else if (i == ConnectModeEnum.DEMO.getType()) {
            TextView textView = this.tvGotoConnect;
            if (textView != null) {
                textView.setVisibility(8);
            }
            initData();
            startBlueService();
        }
        initObserveAppForeground();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(DeviceModelEvent deviceModelEvent) {
        ImageView imageView = this.ivBattIcon;
        if (imageView != null) {
            int i = deviceModelEvent.deviceModel;
            imageView.setImageResource((i == 0 || i == 1) ? R$drawable.icon_zpy_batt_h5pro : R$drawable.icon_zpy_batt_ex30);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(ReloadAppConfigEvent reloadAppConfigEvent) {
        if (reloadAppConfigEvent.appConfig != null) {
            LogToFile.i("重新使用配置(" + getClass().getName() + ")");
            this.appConfig = reloadAppConfigEvent.appConfig;
            ((YCTApplication) getApplicationContext()).setAppConfig(this.appConfig);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void getApkList(final DeviceType deviceType, final boolean z) {
        final LoadingFragment.OnCloseListener onCloseListener = new LoadingFragment.OnCloseListener() { // from class: com.qianhe.yct.base.BaseActivity$$ExternalSyntheticLambda6
            @Override // com.qianhe.yct.dialog.LoadingFragment.OnCloseListener
            public final void onClose(int i) {
                BaseActivity.$r8$lambda$1tdYl4MCXYNn5PYE6l8tWC1j7gU(this.f$0, deviceType, i);
            }
        };
        if (z) {
            showUpgradeingDialog(getString(R$string.checking_version), onCloseListener);
            this.mSp.edit().putString("ignoreApkVersion", "").apply();
        }
        AppUpgrader.INSTANCE.startCheckAppUprage(this, FileUtil.mkApkDir(this), this.mSp.getString("ignoreApkVersion", ""), z, getPackageName(), "2.0.2609.109", new AppUpgrader.OnUpgradeListioner() { // from class: com.qianhe.yct.base.BaseActivity.12
            @Override // com.qianhe.yct.utils.AppUpgrader.OnUpgradeListioner
            public void onCheckFailed(String str) {
                BaseActivity.this.cancelUpgradeingDialog();
                if (z) {
                    BaseActivity baseActivity = BaseActivity.this;
                    baseActivity.showTipDialog(str, baseActivity.getString(R$string.ok), null);
                }
            }

            @Override // com.qianhe.yct.utils.AppUpgrader.OnUpgradeListioner
            public void onLatestVersion() {
                BaseActivity.this.cancelUpgradeingDialog();
                ((YCTApplication) BaseActivity.this.getApplication()).setAppVersionCheckedComplete(true);
                if (z) {
                    BaseActivity baseActivity = BaseActivity.this;
                    baseActivity.showTipDialog(baseActivity.getString(R$string.app_is_already_latest_version), BaseActivity.this.getString(R$string.ok), null);
                } else {
                    EventBus.getDefault().post(new AppVersionCheckEndEvent(deviceType));
                }
            }

            @Override // com.qianhe.yct.utils.AppUpgrader.OnUpgradeListioner
            public void hasNewVersion(ApkListResponse.ApkInfo apkInfo) {
                if (apkInfo == null || !apkInfo.forced) {
                    return;
                }
                BaseActivity.this.cancelUpgradeingDialog();
            }

            @Override // com.qianhe.yct.utils.AppUpgrader.OnUpgradeListioner
            public void onUpgradeTipsDialogShown() {
                if (BaseActivity.this.isDestroyed()) {
                    return;
                }
                View decorView = BaseActivity.this.getWindow().getDecorView();
                final BaseActivity baseActivity = BaseActivity.this;
                decorView.post(new Runnable() { // from class: com.qianhe.yct.base.BaseActivity$12$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        baseActivity.cancelUpgradeingDialog();
                    }
                });
            }

            @Override // com.qianhe.yct.utils.AppUpgrader.OnUpgradeListioner
            public void onIgnore(ApkListResponse.ApkInfo apkInfo) {
                BaseActivity.this.cancelUpgradeingDialog();
                BaseActivity.this.mSp.edit().putString("ignoreApkVersion", apkInfo.version).apply();
                ((YCTApplication) BaseActivity.this.getApplication()).setAppVersionCheckedComplete(true);
                EventBus.getDefault().post(new AppVersionCheckEndEvent(deviceType));
            }

            @Override // com.qianhe.yct.utils.AppUpgrader.OnUpgradeListioner
            public void onCancel(int i) {
                BaseActivity.this.cancelUpgradeingDialog();
                if (i == 1) {
                    ((YCTApplication) BaseActivity.this.getApplication()).setAppVersionCheckedComplete(true);
                    EventBus.getDefault().post(new AppVersionCheckEndEvent(deviceType));
                }
            }

            @Override // com.qianhe.yct.utils.AppUpgrader.OnUpgradeListioner
            public void onDownloadInfo() {
                BaseActivity baseActivity = BaseActivity.this;
                baseActivity.showUpgradeingDialog(baseActivity.getString(R$string.get_upgrade_info), onCloseListener);
            }

            @Override // com.qianhe.yct.utils.AppUpgrader.OnUpgradeListioner
            public void onStartDownload(boolean z2) {
                if (z2) {
                    BaseActivity.this.showAppForcedUpgradeDialog(0, BaseActivity.this.getString(R$string.download_upgrade_package) + "0%", "");
                    return;
                }
                BaseActivity.this.showUpgradeingDialog(BaseActivity.this.getString(R$string.download_upgrade_package) + "0%", onCloseListener);
            }

            @Override // com.qianhe.yct.utils.AppUpgrader.OnUpgradeListioner
            public void onDownloadProgress(boolean z2, int i) {
                if (z2) {
                    BaseActivity.this.showAppForcedUpgradeDialog(0, BaseActivity.this.getString(R$string.download_upgrade_package) + i + "%", "");
                    return;
                }
                BaseActivity.this.showUpgradeingDialog(BaseActivity.this.getString(R$string.download_upgrade_package) + i + "%", onCloseListener);
            }

            @Override // com.qianhe.yct.utils.AppUpgrader.OnUpgradeListioner
            public void onDownloadDone(boolean z2, final String str) {
                BaseActivity.this.cancelUpgradeingDialog();
                BaseActivity.this.cancelForcedUpgradeDialog();
                if (z2) {
                    BaseActivity baseActivity = BaseActivity.this;
                    baseActivity.showAppForcedUpgradeDialog(1, baseActivity.getString(R$string.download_completed_click_install), str);
                } else {
                    BaseActivity baseActivity2 = BaseActivity.this;
                    baseActivity2.showTipDialog(baseActivity2.getString(R$string.download_completed_click_install), BaseActivity.this.getString(R$string.install), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity.12.1
                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onClose(boolean z3) {
                        }

                        @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                        public void onConfirm() {
                            BaseActivity baseActivity3 = BaseActivity.this;
                            baseActivity3.installApkWithRestart(baseActivity3, str);
                        }
                    });
                }
                BaseActivity baseActivity3 = BaseActivity.this;
                baseActivity3.installApkWithRestart(baseActivity3, str);
            }

            @Override // com.qianhe.yct.utils.AppUpgrader.OnUpgradeListioner
            public void onParsingPackage() {
                BaseActivity baseActivity = BaseActivity.this;
                baseActivity.showUpgradeingDialog(baseActivity.getString(R$string.analyzing_upgrade_package), onCloseListener);
            }

            @Override // com.qianhe.yct.utils.AppUpgrader.OnUpgradeListioner
            public void onDownloadError(final boolean z2) {
                BaseActivity.this.cancelUpgradeingDialog();
                BaseActivity baseActivity = BaseActivity.this;
                baseActivity.showTipDialog(baseActivity.getString(R$string.upgrade_package_download_failed), BaseActivity.this.getString(R$string.ok), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity.12.2
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        if (z2) {
                            BaseActivity.this.finish();
                        }
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z3) {
                        if (z2) {
                            BaseActivity.this.finish();
                        }
                    }
                });
            }

            @Override // com.qianhe.yct.utils.AppUpgrader.OnUpgradeListioner
            public void onParsingError() {
                BaseActivity.this.cancelUpgradeingDialog();
                BaseActivity baseActivity = BaseActivity.this;
                baseActivity.showTipDialog(baseActivity.getString(R$string.installation_package_parsing_error), BaseActivity.this.getString(R$string.redownload), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity.12.3
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        BaseActivity baseActivity2 = BaseActivity.this;
                        baseActivity2.showUpgradeingDialog(baseActivity2.getString(R$string.get_upgrade_info), onCloseListener);
                        AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                        BaseActivity.this.getApkList(deviceType, z);
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z2) {
                        ((YCTApplication) BaseActivity.this.getApplication()).setAppVersionCheckedComplete(true);
                        EventBus.getDefault().post(new AppVersionCheckEndEvent(deviceType));
                    }
                });
            }

            @Override // com.qianhe.yct.utils.AppUpgrader.OnUpgradeListioner
            public void onUpgradeFailed(String str) {
                BaseActivity.this.cancelUpgradeingDialog();
                ((YCTApplication) BaseActivity.this.getApplication()).setAppVersionCheckedComplete(true);
                EventBus.getDefault().post(new AppVersionCheckEndEvent(deviceType));
                BaseActivity baseActivity = BaseActivity.this;
                baseActivity.showTipDialog(str, baseActivity.getString(R$string.ok), null);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$1tdYl4MCXYNn5PYE6l8tWC1j7gU(BaseActivity baseActivity, DeviceType deviceType, int i) {
        if (i != 1) {
            baseActivity.getClass();
        } else {
            if (baseActivity.isDestroyed()) {
                return;
            }
            baseActivity.cancelUpgradeingDialog();
            AppUpgrader.INSTANCE.cancelDownload();
            EventBus.getDefault().post(new AppVersionCheckEndEvent(deviceType));
            baseActivity.showToastDialog(baseActivity.getString(R$string.download_cancelled));
        }
    }

    protected void showUpgradeingDialog(String str, LoadingFragment.OnCloseListener onCloseListener) {
        if (this.upgradeingDialogManager == null) {
            this.upgradeingDialogManager = new UpgradeingDialogManager(getSupportFragmentManager());
        }
        UpgradeingDialogManager upgradeingDialogManager = this.upgradeingDialogManager;
        if (TextUtils.isEmpty(str)) {
            str = getString(R$string.upgrading);
        }
        upgradeingDialogManager.show(str, onCloseListener);
    }

    public void cancelUpgradeingDialog() {
        UpgradeingDialogManager upgradeingDialogManager = this.upgradeingDialogManager;
        if (upgradeingDialogManager != null) {
            upgradeingDialogManager.dismissImmediately();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAppForcedUpgradeDialog(int i, String str, final String str2) {
        if (this.forcedUpgradeDialogFragment == null) {
            this.forcedUpgradeDialogFragment = new AppForcedUpgradeDialogFragment();
        }
        if (this.forcedUpgradeDialogFragment.getFragmentManager() != null) {
            this.forcedUpgradeDialogFragment.refreshTip(str);
            return;
        }
        this.forcedUpgradeDialogFragment.show(getSupportFragmentManager(), "ForcedUpgradeDialogFragment");
        Bundle bundle = new Bundle();
        bundle.putInt("state", i);
        bundle.putString("tip", str);
        this.forcedUpgradeDialogFragment.setArguments(bundle);
        this.forcedUpgradeDialogFragment.setOnCloseListener(new AppForcedUpgradeDialogFragment.OnCloseListener() { // from class: com.qianhe.yct.base.BaseActivity.13
            @Override // com.qianhe.yct.dialog.AppForcedUpgradeDialogFragment.OnCloseListener
            public void onClose(int i2) {
            }

            @Override // com.qianhe.yct.dialog.AppForcedUpgradeDialogFragment.OnCloseListener
            public void onInstall() {
                BaseActivity baseActivity = BaseActivity.this;
                baseActivity.installApkWithRestart(baseActivity, str2);
            }
        });
    }

    protected void cancelForcedUpgradeDialog() {
        AppForcedUpgradeDialogFragment appForcedUpgradeDialogFragment;
        if (isDestroyed() || (appForcedUpgradeDialogFragment = this.forcedUpgradeDialogFragment) == null || appForcedUpgradeDialogFragment.getDialog() == null || !this.forcedUpgradeDialogFragment.getDialog().isShowing()) {
            return;
        }
        this.forcedUpgradeDialogFragment.dismiss();
        this.forcedUpgradeDialogFragment = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void installApkWithRestart(Context context, String str) {
        LogToFile.i("------------正在安装apk--------------" + str);
        AppUpgrader appUpgrader = AppUpgrader.INSTANCE;
        if (appUpgrader.getApkInfo() != null) {
            LogToFile.i("当前版本：2.0.2609.109，新版本：" + appUpgrader.getApkInfo().version);
        }
        if (getTargetSdk(context) < 30) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            if (Build.VERSION.SDK_INT >= 24) {
                intent.addFlags(1);
                intent.setDataAndType(FileProvider.getUriForFile(context, context.getPackageName() + ".provider", new File(str)), "application/vnd.android.package-archive");
            } else {
                intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
            }
            context.startActivity(intent);
            return;
        }
        if (ApkInstaller30.canInstallApk(this)) {
            ApkInstaller30.installApk(this, new File(str));
        } else {
            ApkInstaller30.requestInstallPermission(this);
        }
        registerInstallReceiver(context);
    }

    private int getTargetSdk(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.targetSdkVersion;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    private void registerInstallReceiver(Context context) {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.qianhe.yct.base.BaseActivity.14
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (intent.getAction().equals("android.intent.action.PACKAGE_REPLACED") && intent.getData().getSchemeSpecificPart().equals(context2.getPackageName())) {
                    LogToFile.i("------------重启应用--------------");
                    BaseActivity.this.restartApp(context2);
                    context2.unregisterReceiver(this);
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addDataScheme("package");
        context.registerReceiver(broadcastReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restartApp(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        launchIntentForPackage.addFlags(268468224);
        context.startActivity(launchIntentForPackage);
        Process.killProcess(Process.myPid());
    }

    private boolean isLocationEnabled() {
        try {
            return Settings.Secure.getInt(getContentResolver(), "location_mode") != 0;
        } catch (Settings.SettingNotFoundException e) {
            LogToFile.e("无法获取位置模式设置:" + e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openLocationSettings(Activity activity) {
        Intent intent = new Intent();
        if (Build.VERSION.SDK_INT >= 28) {
            intent.setAction("android.settings.LOCATION_SOURCE_SETTINGS");
        } else {
            intent.setAction("android.settings.LOCATION_SOURCE_SETTINGS");
        }
        try {
            activity.startActivityForResult(intent, 1001);
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(activity, R$string.jump_failed, 0).show();
            LogToFile.e("无法打开位置设置页面:" + e);
        }
    }

    protected boolean isFromOutside() {
        ClipDescription primaryClipDescription;
        ClipboardManager clipboardManager = (ClipboardManager) getSystemService("clipboard");
        if (!clipboardManager.hasPrimaryClip() || (primaryClipDescription = clipboardManager.getPrimaryClipDescription()) == null) {
            return true;
        }
        if ((Build.VERSION.SDK_INT >= 24 ? primaryClipDescription.getExtras() : null) == null) {
            return true;
        }
        return !TextUtils.equals(r0.getString("owner_pkg"), getPackageName());
    }

    protected String readClipboard() {
        ClipData primaryClip;
        CharSequence text;
        ClipboardManager clipboardManager = (ClipboardManager) getSystemService("clipboard");
        if (clipboardManager.hasPrimaryClip() && (primaryClip = clipboardManager.getPrimaryClip()) != null && primaryClip.getItemCount() > 0 && (text = primaryClip.getItemAt(0).getText()) != null) {
            return text.toString();
        }
        return "";
    }

    protected long getClipboardTimestamp() {
        ClipDescription primaryClipDescription;
        try {
            ClipboardManager clipboardManager = (ClipboardManager) getSystemService("clipboard");
            if (clipboardManager == null || !clipboardManager.hasPrimaryClip() || (primaryClipDescription = clipboardManager.getPrimaryClipDescription()) == null || Build.VERSION.SDK_INT < 26) {
                return 0L;
            }
            return primaryClipDescription.getTimestamp();
        } catch (Exception unused) {
            return 0L;
        }
    }

    protected boolean isShareCodeClipboardContent(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return (str.contains(getString(R$string.app_name)) || str.contains("One Shovel")) && str.contains(getString(R$string.share_code_flag));
    }

    protected String extractShareCode(String str) {
        if (!isShareCodeClipboardContent(str)) {
            return "";
        }
        Matcher matcher = Pattern.compile("\\d{5,}").matcher(str);
        return matcher.find() ? matcher.group() : "";
    }

    protected boolean markClipboardSnapshotHandled(String str) {
        long clipboardTimestamp = getClipboardTimestamp();
        String str2 = clipboardTimestamp + "\n" + str;
        synchronized (BaseActivity.class) {
            try {
                if (TextUtils.equals(sHandledClipFingerprint, str2)) {
                    return false;
                }
                boolean z = TextUtils.equals(this.mSp.getString("last_handled_clip_text", ""), str) && (clipboardTimestamp == 0 || this.mSp.getLong("last_handled_clip_ts", -1L) == clipboardTimestamp);
                sHandledClipFingerprint = str2;
                if (z) {
                    return false;
                }
                this.mSp.edit().putString("last_handled_clip_text", str).putLong("last_handled_clip_ts", clipboardTimestamp).commit();
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected void clearPendingClipShareCode() {
        this.mSp.edit().remove("pending_clip_share_code").apply();
    }

    protected void promptOpenSharedProject(final String str) {
        if (TextUtils.isEmpty(str) || sShareCodePrompting || isDestroyed() || isFinishing()) {
            return;
        }
        sShareCodePrompting = true;
        beforePromptOpenSharedProject();
        if (isDestroyed() || isFinishing()) {
            sShareCodePrompting = false;
        } else {
            showTipDialog(getString(R$string.want_to_open_shared_project), getString(R$string.confirm), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity.15
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    BaseActivity.sShareCodePrompting = false;
                    BaseActivity.this.clearPendingClipShareCode();
                    NetworkUserLoader.getInstance().cancel();
                    Intent intent = new Intent(BaseActivity.this, (Class<?>) ShareCreateActivity.class);
                    intent.setFlags(603979776);
                    intent.putExtra("shareCode", str);
                    BaseActivity.this.startActivity(intent);
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                    BaseActivity.sShareCodePrompting = false;
                    BaseActivity.this.clearPendingClipShareCode();
                }
            });
        }
    }

    protected void gotoShareProjectFromCode() {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.qianhe.yct.base.BaseActivity.16
            @Override // java.lang.Runnable
            public void run() {
                if (BaseActivity.this.isDestroyed() || BaseActivity.this.isFinishing()) {
                    return;
                }
                String token = UserSession.get().getToken();
                String string = BaseActivity.this.mSp.getString("pending_clip_share_code", "");
                if (!TextUtils.isEmpty(token) && !TextUtils.isEmpty(string)) {
                    BaseActivity.this.promptOpenSharedProject(string);
                    return;
                }
                if (BaseActivity.this.isFromOutside()) {
                    String clipboard = BaseActivity.this.readClipboard();
                    if (BaseActivity.this.isShareCodeClipboardContent(clipboard)) {
                        String strExtractShareCode = BaseActivity.this.extractShareCode(clipboard);
                        if (!TextUtils.isEmpty(strExtractShareCode) && BaseActivity.this.markClipboardSnapshotHandled(clipboard)) {
                            LogToFile.i("剪切板内容：" + clipboard);
                            if (!TextUtils.isEmpty(token)) {
                                BaseActivity.this.promptOpenSharedProject(strExtractShareCode);
                            } else {
                                BaseActivity.this.mSp.edit().putString("pending_clip_share_code", strExtractShareCode).apply();
                                BaseActivity.this.gotoUserManage();
                            }
                        }
                    }
                }
            }
        }, 300L);
    }

    private void initObserveAppForeground() {
        ((YCTApplication) getApplication()).observeAppForeground().observe(this, new Observer() { // from class: com.qianhe.yct.base.BaseActivity$$ExternalSyntheticLambda7
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BaseActivity.m2016$r8$lambda$RHwmvHltTYhGpzWkx0xhmajaQk(this.f$0, (Boolean) obj);
            }
        });
    }

    /* renamed from: $r8$lambda$RHwmvHltTYhGpzWkx0xh-majaQk, reason: not valid java name */
    public static /* synthetic */ void m2016$r8$lambda$RHwmvHltTYhGpzWkx0xhmajaQk(BaseActivity baseActivity, Boolean bool) {
        baseActivity.getClass();
        if (bool.booleanValue()) {
            baseActivity.gotoShareProjectFromCode();
        } else {
            baseActivity.handleAppBackgroundDuringBluetoothBond();
        }
    }

    public void gotoUserManage() {
        final Intent intent;
        if (TextUtils.isEmpty(UserSession.get().getToken())) {
            intent = new Intent(this, (Class<?>) UserLoginActivity.class);
        } else {
            intent = new Intent(this, (Class<?>) UserManageActivity.class);
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.qianhe.yct.base.BaseActivity.17
            @Override // java.lang.Runnable
            public void run() {
                if (BaseActivity.this.isDestroyed()) {
                    return;
                }
                BaseActivity.this.startActivity(intent);
            }
        }, 200L);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.onRequestPermissionsResult(i, strArr, iArr);
        EasyPermissions.onRequestPermissionsResult(i, strArr, iArr, this);
    }

    @Override // pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks
    public void onPermissionsGranted(int i, List<String> list) throws IOException {
        if (i == 100 || i == 101) {
            onBasicPermissionRequestFinished(i);
        } else if (i == 102 && hasPermissions("camera")) {
            init();
        }
    }

    @Override // pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks
    public void onPermissionsDenied(int i, List<String> list) throws IOException {
        if (i != 100 && i != 101) {
            if (i == 102) {
                handleBasicPermissionDenied(i, list);
            }
        } else if (hasBasicRuntimePermissions() && !FileUtil.hasExternalStorageAccess(this)) {
            requestStoragePermission();
        } else {
            handleBasicPermissionDenied(i, list);
        }
    }

    protected boolean shouldHandleForegroundUiEvent() {
        return (!this.isVisible || isFinishing() || isDestroyed()) ? false : true;
    }

    protected boolean shouldHandleFmwUpgradeEvent() {
        return shouldHandleForegroundUiEvent();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothBondRequestEvent bluetoothBondRequestEvent) {
        if (bluetoothBondRequestEvent == null || bluetoothBondRequestEvent.handledByActivity) {
            return;
        }
        MultiBluetoothManager.getInstance(this).suppressBackgroundBondCancel(12000L);
        if (shouldHandleForegroundUiEvent() && tryStartBondActivity(this, bluetoothBondRequestEvent)) {
            return;
        }
        List<Activity> activityList = ((YCTApplication) getApplication()).getActivityList();
        for (int size = activityList.size() - 1; size >= 0; size--) {
            Activity activity = activityList.get(size);
            if (activity != null && activity != this && !activity.isFinishing() && !activity.isDestroyed() && tryStartBondActivity(activity, bluetoothBondRequestEvent)) {
                return;
            }
        }
    }

    private boolean tryStartBondActivity(Activity activity, BluetoothBondRequestEvent bluetoothBondRequestEvent) {
        if (activity != null && bluetoothBondRequestEvent != null && !TextUtils.isEmpty(bluetoothBondRequestEvent.deviceAddress)) {
            try {
                Intent intent = new Intent(activity, (Class<?>) BluetoothBondActivity.class);
                intent.putExtra("bond_device_address", bluetoothBondRequestEvent.deviceAddress);
                intent.addFlags(603979776);
                activity.startActivity(intent);
                activity.overridePendingTransition(0, 0);
                bluetoothBondRequestEvent.handledByActivity = true;
                LogToFile.i("启动前台配对页: " + bluetoothBondRequestEvent.deviceAddress);
                return true;
            } catch (Throwable th) {
                LogToFile.i("启动前台配对页失败: " + th.getMessage());
            }
        }
        return false;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(TcpClientEvent tcpClientEvent) {
        if (tcpClientEvent == null || !shouldHandleForegroundUiEvent()) {
            return;
        }
        String string = tcpClientEvent.connected ? getString(R$string.simulator_connected, tcpClientEvent.ip) : getString(R$string.simulator_disconnected);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!string.equals(sLastTcpClientTip) || jCurrentTimeMillis - sLastTcpClientTipTime >= 1500) {
            sLastTcpClientTip = string;
            sLastTcpClientTipTime = jCurrentTimeMillis;
            showTipDialog(string, getString(R$string.ok), null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(UnknownHostEvent unknownHostEvent) {
        if (unknownHostEvent == null || !shouldHandleForegroundUiEvent()) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - sLastUnknownHostTipTime < 1500) {
            return;
        }
        sLastUnknownHostTipTime = jCurrentTimeMillis;
        showTipDialog(getString(R$string.please_check_device_network), getString(R$string.ok), null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(StartDemo startDemo) {
        TextView textView = this.tvGotoConnect;
        if (textView != null) {
            textView.setVisibility(8);
        }
        TextView textView2 = this.tvDemoTip;
        if (textView2 != null) {
            textView2.setVisibility(0);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(StopDemo stopDemo) {
        TextView textView = this.tvDemoTip;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(String str) {
        if ("未获取权限".equals(str)) {
            if (hasPermissions("basic")) {
                showTipDialog(getString(R$string.permission_not_obtained), getString(R$string.go_open), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity.18
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        if (Build.VERSION.SDK_INT >= 30 && !FileUtil.hasExternalStorageAccess(BaseActivity.this)) {
                            FileUtil.openAllFilesAccessSettings(BaseActivity.this);
                        } else {
                            BaseActivity.this.openAppPermissionsSettings();
                        }
                    }
                });
            }
        } else if ("checkConnect".equals(str)) {
            checkConnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAppPermissionsSettings() {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", getPackageName(), null));
        if (intent.resolveActivity(getPackageManager()) != null) {
            startActivity(intent);
        } else {
            Toast.makeText(this, "无法打开权限设置页面", 1).show();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(Batt batt) {
        if (batt.deviceType == DeviceType.BASE) {
            return;
        }
        this.mH5PowerPercent = batt.percent;
        YCTApplication.getInstance().setH5PowerPercent(batt.percent);
        refrshBattState();
    }

    private void refrshBattState() {
        int i;
        TextView textView = this.tvZpyBatt;
        if (textView == null || (i = this.mH5PowerPercent) == -1) {
            return;
        }
        textView.setText(String.valueOf(i));
        if (this.mH5PowerPercent < 20) {
            this.tvZpyBatt.setTextColor(ContextCompat.getColor(this, R$color.red));
        } else {
            this.tvZpyBatt.setTextColor(ContextCompat.getColor(this, R$color.text_black));
        }
    }

    private void refrshChargingState() {
        int i;
        GifImageView gifImageView = this.gifCharging;
        if (gifImageView == null || (i = this.mH5PowerSourceType) == -1) {
            return;
        }
        gifImageView.setVisibility(i == 1 ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreTopBarBatteryUi() {
        restoreBatteryStateFromApp();
        refrshBattState();
        refrshChargingState();
        if (MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY)) {
            SensorInfoEvent sensorInfo = YCTApplication.getInstance().getSensorInfo();
            View view = this.rltSensorBatt;
            if (view != null) {
                view.setVisibility(sensorInfo != null ? 0 : 8);
            }
            TextView textView = this.tvSensorBatt;
            if (textView == null || sensorInfo == null) {
                return;
            }
            textView.setText(String.valueOf(sensorInfo.powerLevel));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(PowerSourceEvent powerSourceEvent) {
        if (powerSourceEvent.deviceType == DeviceType.ZPY) {
            this.mH5PowerSourceType = powerSourceEvent.type;
            YCTApplication.getInstance().setH5PowerSourceType(powerSourceEvent.type);
            refrshChargingState();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GSTEntity gSTEntity) throws NumberFormatException {
        if (gSTEntity == null) {
            return;
        }
        if ((MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY) && gSTEntity.deviceType == DeviceType.BASE) || this.tvHRMS == null || this.tvVRMS == null) {
            return;
        }
        if (this.rltRMS.getVisibility() == 8) {
            this.rltRMS.setVisibility(0);
        }
        float f = gSTEntity.latstd;
        float f2 = gSTEntity.lonstd;
        float f3 = Float.parseFloat(formatCoords(Math.sqrt((f * f) + (f2 * f2)), 2));
        float f4 = Float.parseFloat(formatCoords(gSTEntity.altstd, 2));
        this.tvHRMS.setText(String.format("H:%s", Float.valueOf(f3)));
        this.tvHRMS.setSelected(f3 <= this.appConfig.details.hrms_limit);
        this.tvVRMS.setText(String.format("V:%s", Float.valueOf(f4)));
        this.tvVRMS.setSelected(f4 <= this.appConfig.details.vrms_limit);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GGAEntity gGAEntity) {
        String string;
        int i;
        if (gGAEntity == null) {
            LogToFile.i("gga = null");
            return;
        }
        if (MultiBluetoothManager.getInstance(this).isH5OrOnlyone(gGAEntity.deviceType)) {
            this.mGGA = gGAEntity;
            switch (gGAEntity.quality) {
                case 0:
                    string = getString(R$string.invalid_solution);
                    break;
                case 1:
                    string = getString(R$string.singlepoint_solution);
                    break;
                case 2:
                    string = getString(R$string.diff_solution);
                    break;
                case 3:
                    string = getString(R$string.invalid_solution);
                    break;
                case 4:
                    string = getString(R$string.fixed_solution);
                    break;
                case 5:
                    string = getString(R$string.float_solution);
                    break;
                case 6:
                    string = getString(R$string.calcul_solution);
                    break;
                case 7:
                    string = getString(R$string.base_fixed);
                    break;
                case 8:
                    string = getString(R$string.UWL);
                    break;
                case 9:
                    string = getString(R$string.sbas_solution);
                    break;
                default:
                    string = getString(R$string.unknown_solution) + gGAEntity.quality;
                    break;
            }
            TextView textView = this.tvRtkState;
            if (textView != null) {
                textView.setText(string);
                TextView textView2 = this.tvRtkState;
                int i2 = gGAEntity.quality;
                textView2.setSelected(i2 == 4 || (gGAEntity.deviceType == DeviceType.BASE && i2 == 7));
            }
            TextView textView3 = this.tvDiffDelay;
            if (textView3 != null && this.lltStar != null) {
                float f = gGAEntity.age;
                if (f < 0.0f && (i = gGAEntity.quality) != 2 && i != 4 && i != 5) {
                    textView3.setVisibility(8);
                    this.lltStar.setVisibility(0);
                } else {
                    textView3.setSelected(f < 3.0f);
                    if (gGAEntity.age > 5.0f) {
                        this.tvDiffDelay.setVisibility(0);
                        this.lltStar.setVisibility(8);
                        this.tvDiffDelay.setText(getString(R$string.delay) + ((int) gGAEntity.age));
                        long j = this.delayBigCount + 1;
                        this.delayBigCount = j;
                        if (j == 5 && this.interruptDialogFragment == null && "bluetooth".equals(this.mSp.getString("obtain_difference_type", "bluetooth"))) {
                            DifferentialInterruptDialogFragment differentialInterruptDialogFragment = new DifferentialInterruptDialogFragment();
                            this.interruptDialogFragment = differentialInterruptDialogFragment;
                            differentialInterruptDialogFragment.show(getSupportFragmentManager(), "DifferentialInterruptDialogFragment");
                            Bundle bundle = new Bundle();
                            bundle.putString("tip", getString(R$string.difference_interrupt));
                            bundle.putString("btnStr", getString(R$string.ok));
                            this.interruptDialogFragment.setArguments(bundle);
                        }
                    } else {
                        this.delayBigCount = 0L;
                        this.tvDiffDelay.setVisibility(8);
                        this.lltStar.setVisibility(0);
                        this.tvDiffDelay.setText(String.valueOf((int) gGAEntity.age));
                        DifferentialInterruptDialogFragment differentialInterruptDialogFragment2 = this.interruptDialogFragment;
                        if (differentialInterruptDialogFragment2 != null) {
                            differentialInterruptDialogFragment2.dismissAllowingStateLoss();
                            this.interruptDialogFragment = null;
                        }
                    }
                }
            }
        }
        accumulateInstrumentCollectSample(gGAEntity);
        getGGA(gGAEntity);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GPDOPEntity gPDOPEntity) {
        if (gPDOPEntity == null) {
            return;
        }
        if (MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY) && gPDOPEntity.deviceType == DeviceType.BASE) {
            return;
        }
        this.mGPDOP = gPDOPEntity;
    }

    protected int getUtmZone(double d) {
        int iFloor = ((int) Math.floor((d + 180.0d) / 6.0d)) + 1;
        if (iFloor < 1) {
            return 1;
        }
        if (iFloor > 60) {
            return 60;
        }
        return iFloor;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BestPosEntity bestPosEntity) {
        TextView textView;
        if (bestPosEntity == null) {
            return;
        }
        if ((MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY) && bestPosEntity.deviceType == DeviceType.BASE) || (textView = this.tvUseStars) == null) {
            return;
        }
        textView.setText(String.format("%s", Integer.valueOf(bestPosEntity.useStar)));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GETHorizontalAngleRange gETHorizontalAngleRange) {
        if (MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY) && gETHorizontalAngleRange.deviceType == DeviceType.BASE) {
            return;
        }
        float f = gETHorizontalAngleRange.l1;
        float f2 = gETHorizontalAngleRange.h2;
        this.zeroDegrees = f2 - (Math.abs(f2 - f) / 2.0f);
        onHorizontalAngleRange(gETHorizontalAngleRange);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(InsAhrs insAhrs) {
        if (insAhrs == null || insAhrs.deviceType == DeviceType.BASE) {
            return;
        }
        this.latestHeadingDegreesError = insAhrs.headingDegreesError;
        if (YCTApplication.getInstance().isH5Pro()) {
            this.headingDegreesOK = insAhrs.headingDegreesError < ((double) (this.headingDegreesOK ? 0.5f : 0.2f));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(InsNavi insNavi) {
        if (this.isVisible) {
            if (MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY) && insNavi.deviceType == DeviceType.BASE) {
                return;
            }
            copyInsGeodeticFromSource(insNavi);
            double[] dArr = new double[3];
            if (convertInsGeodeticToPlane(insNavi.geodeticLon, insNavi.geodeticLat, insNavi.geodeticElev, dArr)) {
                insNavi.east = dArr[0];
                insNavi.north = dArr[1];
                insNavi.elevation = dArr[2];
            }
            double[] dArr2 = new double[3];
            if (convertInsGeodeticToGeo(insNavi.geodeticLon, insNavi.geodeticLat, insNavi.geodeticElev, dArr2)) {
                insNavi.longitude = dArr2[0];
                insNavi.latitude = dArr2[1];
            }
            boolean zIsH5Pro = YCTApplication.getInstance().isH5Pro();
            int iResolveInsDisplayState = resolveInsDisplayState(zIsH5Pro, insNavi.insStaus);
            if (iResolveInsDisplayState != this.lastInsDisplayState) {
                this.isShowTips = false;
                this.count = 0;
                this.sensorOfflineCount = 0;
                this.lastInsDisplayState = iResolveInsDisplayState;
                if (isInsAbnormalDisplayState(zIsH5Pro, iResolveInsDisplayState) || isInsReadyDisplayState(zIsH5Pro, iResolveInsDisplayState)) {
                    YCTApplication.getInstance().setIgnoreSensorOfflineForData(false);
                }
            }
            if (zIsH5Pro) {
                double[] dArr3 = new double[3];
                if (convertInsGeodeticToPlane(insNavi.geodeticLonR, insNavi.geodeticLatR, insNavi.geodeticElevR, dArr3)) {
                    insNavi.eastR = dArr3[0];
                    insNavi.northR = dArr3[1];
                    insNavi.elevationR = dArr3[2];
                }
                double[] dArr4 = new double[3];
                if (convertInsGeodeticToGeo(insNavi.geodeticLonR, insNavi.geodeticLatR, insNavi.geodeticElevR, dArr4)) {
                    insNavi.longitudeR = dArr4[0];
                    insNavi.latitudeR = dArr4[1];
                }
                insNavi.eastM = (insNavi.east + insNavi.eastR) / 2.0d;
                insNavi.northM = (insNavi.north + insNavi.northR) / 2.0d;
                insNavi.elevationM = (insNavi.elevation + insNavi.elevationR) / 2.0d;
                insNavi.longitudeM = (insNavi.longitude + insNavi.longitudeR) / 2.0d;
                insNavi.latitudeM = (insNavi.latitude + insNavi.latitudeR) / 2.0d;
                insNavi.geodeticLonM = (insNavi.geodeticLon + insNavi.geodeticLonR) / 2.0d;
                insNavi.geodeticLatM = (insNavi.geodeticLat + insNavi.geodeticLatR) / 2.0d;
                insNavi.geodeticElevM = (insNavi.geodeticElev + insNavi.geodeticElevR) / 2.0d;
                if (this.tvInsState != null) {
                    if ((insNavi.insStaus & InsStatusEnum.GNSSLOST.getStatus()) != 0) {
                        this.mAvailable = false;
                        this.headingDegreesOK = false;
                        this.tvInsState.setText(R$string.lost_star);
                    } else if ((insNavi.insStaus & InsStatusEnum.GNSSREJECT.getStatus()) != 0) {
                        this.mAvailable = false;
                        this.headingDegreesOK = false;
                        this.tvInsState.setText(R$string.ins_invalid);
                    } else if ((insNavi.insStaus & InsStatusEnum.TILTREJECT.getStatus()) != 0) {
                        this.mAvailable = false;
                        this.headingDegreesOK = false;
                        this.tvInsState.setText(R$string.swing);
                    } else if ((insNavi.insStaus & InsStatusEnum.SENSORLOST.getStatus()) != 0) {
                        this.mAvailable = false;
                        this.headingDegreesOK = false;
                        this.tvInsState.setText(R$string.sensor_offline);
                        View view = this.rltSensorBatt;
                        if (view != null && view.getVisibility() != 8) {
                            this.rltSensorBatt.setVisibility(8);
                        }
                        if (YCTApplication.getInstance().getSensorInfo() != null) {
                            YCTApplication.getInstance().setSensorInfo(null);
                        }
                    } else if ((insNavi.insStaus & InsStatusEnum.READY.getStatus()) != 0) {
                        this.mAvailable = true;
                        this.tvInsState.setText(R$string.ins_ok);
                    }
                    this.tvInsState.setSelected(this.mAvailable);
                }
                refrshAngle(zIsH5Pro, insNavi);
            } else {
                if (this.tvInsState != null) {
                    if ((insNavi.insStaus & InsStatusEnum.VERTICAL.getStatus()) != 0) {
                        this.mAvailable = true;
                        this.tvInsState.setText(R$string.arm_vertical);
                    } else {
                        this.mAvailable = false;
                        this.tvInsState.setText(R$string.arm_tilt);
                    }
                    this.tvInsState.setSelected(this.mAvailable);
                }
                refrshAngle(zIsH5Pro, insNavi);
                double d = insNavi.east;
                insNavi.eastR = d;
                insNavi.eastM = d;
                double d2 = insNavi.north;
                insNavi.northR = d2;
                insNavi.northM = d2;
                double d3 = insNavi.elevation;
                insNavi.elevationR = d3;
                insNavi.elevationM = d3;
                double d4 = insNavi.geodeticLon;
                insNavi.geodeticLonR = d4;
                insNavi.geodeticLonM = d4;
                double d5 = insNavi.geodeticLat;
                insNavi.geodeticLatR = d5;
                insNavi.geodeticLatM = d5;
                double d6 = insNavi.geodeticElev;
                insNavi.geodeticElevR = d6;
                insNavi.geodeticElevM = d6;
                double d7 = insNavi.longitude;
                insNavi.longitudeR = d7;
                insNavi.longitudeM = d7;
                double d8 = insNavi.latitude;
                insNavi.latitudeR = d8;
                insNavi.latitudeM = d8;
            }
            onINsNavi(insNavi);
        }
    }

    private void copyInsGeodeticFromSource(InsNavi insNavi) {
        insNavi.geodeticLon = insNavi.longitude;
        insNavi.geodeticLat = insNavi.latitude;
        insNavi.geodeticElev = insNavi.elevation;
        insNavi.geodeticLonR = insNavi.longitudeR;
        insNavi.geodeticLatR = insNavi.latitudeR;
        insNavi.geodeticElevR = insNavi.elevationR;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(SensorInfoEvent sensorInfoEvent) {
        View view = this.rltSensorBatt;
        if (view != null && view.getVisibility() != 0) {
            this.rltSensorBatt.setVisibility(this.tvInsState.getText().equals(getString(R$string.sensor_offline)) ? 8 : 0);
        }
        TextView textView = this.tvSensorBatt;
        if (textView != null) {
            textView.setText(String.valueOf(sensorInfoEvent.powerLevel));
        }
    }

    private void refrshAngle(boolean z, InsNavi insNavi) {
        if (System.currentTimeMillis() - this.angleLastTime >= 800 || this.appConfig.details.ins_interval == FrequencyEnum.HZ_1.getFrequency()) {
            if (z) {
                this.pitchAngle = insNavi.pitchDegrees;
            } else {
                this.pitchAngle = insNavi.pitchDegrees - this.zeroDegrees;
            }
            TextView textView = this.tvAngle;
            if (textView != null) {
                textView.setSelected(true);
                this.tvAngle.setText(String.format(Locale.ROOT, "%.2f°", Double.valueOf(this.pitchAngle)));
            }
            this.angleLastTime = System.currentTimeMillis();
        }
    }

    protected boolean isDataAvailable() {
        if (YCTApplication.getInstance().isH5Pro() && YCTApplication.getInstance().isIgnoreSensorOfflineForData()) {
            return true;
        }
        return this.mAvailable;
    }

    public boolean isHeadingDegreesOK() {
        return this.headingDegreesOK;
    }

    protected boolean needHeadingAccuracyCheck() {
        return YCTApplication.getInstance().isH5Pro();
    }

    public void showHeadingAccuracyDialog(CalibrateDialogFragment.OnConfirmListener onConfirmListener) {
        showHeadingAccuracyDialog(onConfirmListener, 0.0f);
    }

    public void showHeadingAccuracyDialog(CalibrateDialogFragment.OnConfirmListener onConfirmListener, float f) {
        if (isDestroyed()) {
            return;
        }
        CalibrateDialogFragment calibrateDialogFragment = this.calibrateDialogFragment;
        if (calibrateDialogFragment == null || calibrateDialogFragment.getFragmentManager() == null || this.calibrateDialogFragment.getDialog() == null || !this.calibrateDialogFragment.getDialog().isShowing()) {
            CalibrateDialogFragment calibrateDialogFragment2 = new CalibrateDialogFragment();
            this.calibrateDialogFragment = calibrateDialogFragment2;
            calibrateDialogFragment2.show(getSupportFragmentManager(), "CalibrateDialogFragment");
            Bundle bundle = new Bundle();
            GGAEntity gGAEntity = this.mGGA;
            if (gGAEntity != null) {
                bundle.putInt("quality", gGAEntity.quality);
            }
            bundle.putBoolean("headingAccuracyMode", true);
            if (f > 0.0f) {
                bundle.putFloat("headingErrorMaxDeg", f);
            }
            bundle.putString("requestKey", "allowRotate");
            this.calibrateDialogFragment.setArguments(bundle);
            this.calibrateDialogFragment.setOnConfirmListener(wrapCalibrateListener(onConfirmListener));
        }
    }

    private boolean convertInsGeodeticToPlane(double d, double d2, double d3, double[] dArr) {
        if (this.mSharedWorkEngineering != null) {
            return GnssCoordConvertManager.getInstance().geoToAlignedProj(this.mSharedWorkEngineering, this.mSharedWorkTransParam, d, d2, d3, dArr);
        }
        return GnssCoordConvertManager.getInstance().geoToAlignedProj(d, d2, d3, dArr);
    }

    public boolean convertInsGeodeticToGeo(double d, double d2, double d3, double[] dArr) {
        if (this.mSharedWorkEngineering != null) {
            double[] dArr2 = new double[3];
            if (GnssCoordConvertManager.getInstance().geoToAlignedProj(this.mSharedWorkEngineering, this.mSharedWorkTransParam, d, d2, d3, dArr2)) {
                return GnssCoordConvertManager.getInstance().projToGeodeticInverse(this.mSharedWorkEngineering, this.mSharedWorkTransParam, dArr2[0], dArr2[1], dArr2[2], dArr);
            }
            return false;
        }
        return GnssCoordConvertManager.getInstance().geoToAlignedGeodetic(d, d2, d3, dArr);
    }

    private void loadSharedWorkEngineeringFromIntent() {
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        Serializable serializableExtra = intent.getSerializableExtra("shared_engineering");
        if (serializableExtra instanceof EngineeringEntity) {
            this.mSharedWorkEngineering = (EngineeringEntity) serializableExtra;
            this.mSharedWorkTransParam = DatabaseManager.getInstance(this).resolveGnssTransParamForEngineering(this.mSharedWorkEngineering);
            GnssCoordConvertManager.getInstance().setSessionEngineering(this.mSharedWorkEngineering, this.mSharedWorkTransParam);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        disableInstrumentDopLog();
        if (this.mSharedWorkEngineering != null) {
            GnssCoordConvertManager.getInstance().clearSessionEngineering();
            GnssCoordConvertManager.getInstance().invalidateEngineeringCache();
            this.mSharedWorkEngineering = null;
            this.mSharedWorkTransParam = null;
        }
        super.onDestroy();
    }

    private int resolveInsDisplayState(boolean z, int i) {
        if (z) {
            InsStatusEnum insStatusEnum = InsStatusEnum.GNSSLOST;
            if ((insStatusEnum.getStatus() & i) != 0) {
                return insStatusEnum.getStatus();
            }
            InsStatusEnum insStatusEnum2 = InsStatusEnum.GNSSREJECT;
            if ((insStatusEnum2.getStatus() & i) != 0) {
                return insStatusEnum2.getStatus();
            }
            InsStatusEnum insStatusEnum3 = InsStatusEnum.TILTREJECT;
            if ((insStatusEnum3.getStatus() & i) != 0) {
                return insStatusEnum3.getStatus();
            }
            InsStatusEnum insStatusEnum4 = InsStatusEnum.SENSORLOST;
            if ((insStatusEnum4.getStatus() & i) != 0) {
                return insStatusEnum4.getStatus();
            }
            InsStatusEnum insStatusEnum5 = InsStatusEnum.READY;
            if ((i & insStatusEnum5.getStatus()) != 0) {
                return insStatusEnum5.getStatus();
            }
            return 0;
        }
        InsStatusEnum insStatusEnum6 = InsStatusEnum.VERTICAL;
        if ((i & insStatusEnum6.getStatus()) != 0) {
            return insStatusEnum6.getStatus();
        }
        return -1;
    }

    private boolean isInsAbnormalDisplayState(boolean z, int i) {
        return z ? i == InsStatusEnum.GNSSLOST.getStatus() || i == InsStatusEnum.GNSSREJECT.getStatus() || i == InsStatusEnum.TILTREJECT.getStatus() || i == InsStatusEnum.SENSORLOST.getStatus() : i == -1;
    }

    private boolean isInsReadyDisplayState(boolean z, int i) {
        return z ? i == InsStatusEnum.READY.getStatus() : i == InsStatusEnum.VERTICAL.getStatus();
    }

    protected boolean resolveWorkInsAvailable(boolean z) {
        if (YCTApplication.getInstance().isIgnoreSensorOfflineForData() && YCTApplication.getInstance().isH5Pro()) {
            return true;
        }
        return z;
    }

    protected boolean isInsReadyOrElevationAvailable(InsNavi insNavi) {
        if (insNavi == null) {
            return false;
        }
        return ((insNavi.insStaus & InsStatusEnum.READY.getStatus()) == 0 && (insNavi.insStaus & InsStatusEnum.ELEVATIONAVAILABLE.getStatus()) == 0) ? false : true;
    }

    protected boolean resolveWorkPageAvailable(InsNavi insNavi, WorkInsAvailabilityMode workInsAvailabilityMode) {
        if (insNavi == null) {
            this.workPageDataAvailable = false;
            return false;
        }
        if (!YCTApplication.getInstance().isH5Pro()) {
            z = (insNavi.insStaus & InsStatusEnum.VERTICAL.getStatus()) != 0 || AppConfigManager.getInstance().getAppConfig().details.tilt_display == 1;
            this.workPageDataAvailable = z;
            return z;
        }
        int i = insNavi.insStaus;
        if ((InsStatusEnum.GNSSLOST.getStatus() & i) != 0 || (InsStatusEnum.GNSSREJECT.getStatus() & i) != 0) {
            this.workPageDataAvailable = false;
            return false;
        }
        if (workInsAvailabilityMode == WorkInsAvailabilityMode.ELEVATION_ONLY) {
            boolean zIsInsReadyOrElevationAvailable = isInsReadyOrElevationAvailable(insNavi);
            if (zIsInsReadyOrElevationAvailable && resolveWorkInsAvailable(zIsInsReadyOrElevationAvailable)) {
                z = true;
            }
            this.workPageDataAvailable = z;
            return z;
        }
        boolean z = (InsStatusEnum.READY.getStatus() & i) != 0;
        if ((InsStatusEnum.SENSORLOST.getStatus() & i) != 0) {
            if (z && resolveWorkInsAvailable(true)) {
                z = true;
            }
            this.workPageDataAvailable = z;
            return z;
        }
        if (z) {
            boolean zResolveWorkInsAvailable = resolveWorkInsAvailable(true);
            this.workPageDataAvailable = zResolveWorkInsAvailable;
            return zResolveWorkInsAvailable;
        }
        this.workPageDataAvailable = false;
        return false;
    }

    protected boolean isSensorOfflineWithUsableData(InsNavi insNavi) {
        return (insNavi == null || !YCTApplication.getInstance().isH5Pro() || (insNavi.insStaus & InsStatusEnum.SENSORLOST.getStatus()) == 0 || (insNavi.insStaus & InsStatusEnum.READY.getStatus()) == 0) ? false : true;
    }

    protected void handleWorkInsCalibrateTips(InsNavi insNavi, boolean z, boolean z2) {
        handleWorkInsCalibrateTips(insNavi, z, z2, WorkInsAvailabilityMode.FULL);
    }

    protected void handleWorkInsCalibrateTips(InsNavi insNavi, boolean z, boolean z2, WorkInsAvailabilityMode workInsAvailabilityMode) {
        if (workInsAvailabilityMode == WorkInsAvailabilityMode.ELEVATION_ONLY && z) {
            this.count = 0;
            this.isShowTips = false;
            this.sensorOfflineCount = 0;
            return;
        }
        boolean zIsH5Pro = YCTApplication.getInstance().isH5Pro();
        if (z) {
            this.count = 0;
            if (!isSensorOfflineWithUsableData(insNavi)) {
                this.isShowTips = false;
                this.sensorOfflineCount = 0;
            }
        } else if (z2) {
            int i = this.count + 1;
            this.count = i;
            this.sensorOfflineCount = 0;
            if (zIsH5Pro && !this.isShowTips && i > this.appConfig.details.ins_unavailable_count && this.mGGA != null) {
                this.isShowTips = true;
                showCalibrateTips();
            }
        }
        checkSensorOfflineCalibrateTip(insNavi, z2);
    }

    protected void checkSensorOfflineCalibrateTip(InsNavi insNavi, boolean z) {
        if (!YCTApplication.getInstance().isH5Pro() || insNavi == null) {
            return;
        }
        if (YCTApplication.getInstance().isIgnoreSensorOfflineForData()) {
            this.sensorOfflineCount = 0;
            return;
        }
        if (!isSensorOfflineWithUsableData(insNavi)) {
            this.sensorOfflineCount = 0;
            return;
        }
        if (!z || this.mGGA == null) {
            return;
        }
        int i = this.sensorOfflineCount + 1;
        this.sensorOfflineCount = i;
        if (this.isShowTips || i <= this.appConfig.details.ins_unavailable_count) {
            return;
        }
        this.isShowTips = true;
        showCalibrateTips();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothScanStateEvent bluetoothScanStateEvent) {
        MyBluetoothDevice myBluetoothDevice;
        SharedPreferences sharedPreferences = this.mSp;
        ConnectModeEnum connectModeEnum = ConnectModeEnum.BLE;
        if (sharedPreferences.getInt("mode", connectModeEnum.getType()) != connectModeEnum.getType() || (myBluetoothDevice = bluetoothScanStateEvent.mySevice) == null || myBluetoothDevice.state == BluetoothStateEnum.SCAN_STARTED.getState()) {
            return;
        }
        if (bluetoothScanStateEvent.mySevice.state == BluetoothStateEnum.SCAN_FINISHED.getState()) {
            MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
            if (this.isStartConnect || multiBluetoothManager.isBondingInProgress() || multiBluetoothManager.isConnectingInProgress()) {
                return;
            }
            cancelLoadingDialog();
            return;
        }
        if (bluetoothScanStateEvent.mySevice.state == BluetoothStateEnum.SCAN_FAIL.getState()) {
            cancelLoadingDialog();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    @SuppressLint({"MissingPermission"})
    public void onEventMessage(final BluetoothConnectStateEvent bluetoothConnectStateEvent) {
        MyBluetoothDevice myBluetoothDevice;
        TextView textView;
        if (this instanceof BluetoothActivity) {
            return;
        }
        SharedPreferences sharedPreferences = this.mSp;
        ConnectModeEnum connectModeEnum = ConnectModeEnum.BLE;
        if (sharedPreferences.getInt("mode", connectModeEnum.getType()) != connectModeEnum.getType() || (myBluetoothDevice = bluetoothConnectStateEvent.myDevice) == null) {
            return;
        }
        if (myBluetoothDevice.state == BluetoothStateEnum.CANCEL_BOND.getState()) {
            dismissBluetoothPairingDialogsGlobally();
            if (shouldHandleForegroundUiEvent()) {
                if (this.tvGotoConnect != null && !getClass().getName().equals(BluetoothActivity.class.getName()) && !getClass().getName().equals(PrivacyPolicyActivity.class.getName()) && MultiBluetoothManager.getInstance(this).getAllConnectedDevices().isEmpty()) {
                    this.tvGotoConnect.setVisibility(0);
                }
                bluetoothStatus(bluetoothConnectStateEvent.myDevice.state);
                return;
            }
            return;
        }
        int i = bluetoothConnectStateEvent.myDevice.state;
        BluetoothStateEnum bluetoothStateEnum = BluetoothStateEnum.CONNECTED;
        if (i == bluetoothStateEnum.getState() || bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.CONNECT_FAILED.getState() || bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.DISCONNECT.getState() || bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.SOCKET_CLOSE.getState()) {
            dismissConnectingDialog();
            if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.CONNECT_FAILED.getState()) {
                connectingDialogConsumed = true;
            } else if (bluetoothConnectStateEvent.myDevice.state == bluetoothStateEnum.getState()) {
                connectingDialogConsumed = false;
                connectFailedTips = false;
            }
        }
        if (shouldHandleForegroundUiEvent()) {
            if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.STARTCONNECT.getState()) {
                DeviceType deviceType = bluetoothConnectStateEvent.myDevice.deviceType;
                if (deviceType == null) {
                    deviceType = DeviceType.ZPY;
                }
                if (MultiBluetoothManager.getInstance(this).isDeviceConnected(deviceType)) {
                    dismissConnectingDialog();
                    return;
                }
                this.isStartConnect = true;
                if (this.tvGotoConnect != null && MultiBluetoothManager.getInstance(this).getAllConnectedDevices().isEmpty()) {
                    this.tvGotoConnect.setVisibility(0);
                }
                if (!connectFailedTips && !connectingDialogConsumed) {
                    connectingDialogConsumed = true;
                    showLoadingDialog(getString(R$string.connecting_device), new LoadingFragment.OnCloseListener() { // from class: com.qianhe.yct.base.BaseActivity.19
                        @Override // com.qianhe.yct.dialog.LoadingFragment.OnCloseListener
                        public void onClose(int i2) {
                            if (i2 == 1) {
                                BaseActivity.connectingDialogConsumed = true;
                                MultiBluetoothManager.getInstance(BaseActivity.this).disconnectDevice(bluetoothConnectStateEvent.myDevice.deviceType);
                            }
                        }
                    });
                }
            } else if (bluetoothConnectStateEvent.myDevice.state == bluetoothStateEnum.getState()) {
                if (bluetoothConnectStateEvent.myDevice.bluetoothDevice != null) {
                    ((YCTApplication) getApplication()).setLastDeviceName(bluetoothConnectStateEvent.myDevice.bluetoothDevice.getName());
                }
                cancelTipDialog();
                TextView textView2 = this.tvGotoConnect;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                }
                if (!MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.BASE) && ((getClass().getName().contains(BaseStationConfigActivity.class.getName()) || getClass().getName().contains(BaseStationWorkModeConfigActivity.class.getName()) || getClass().getName().contains(BaseStationDataLinkConfigActivity.class.getName()) || getClass().getName().contains(BaseStationNetworkLinkActivity.class.getName())) && (textView = this.tvGotoConnect) != null)) {
                    textView.setVisibility(0);
                }
                if (bluetoothConnectStateEvent.myDevice.bluetoothDevice != null) {
                    NetworkUserLoader.getInstance().getCorsExpirationTime(getClass().getName(), bluetoothConnectStateEvent.myDevice.bluetoothDevice.getName());
                }
            } else if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.DISCONNECT.getState()) {
                this.zeroDegrees = -1.0f;
                this.init = false;
                this.authFlag = false;
                cancelLoadingDialog();
                if ((MultiBluetoothManager.getInstance(this).getAllConnectedDevices().isEmpty() || (!MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.BASE) && (getClass().getName().contains(BaseStationConfigActivity.class.getName()) || getClass().getName().contains(BaseStationWorkModeConfigActivity.class.getName()) || getClass().getName().contains(BaseStationDataLinkConfigActivity.class.getName()) || getClass().getName().contains(BaseStationNetworkLinkActivity.class.getName())))) && this.tvGotoConnect != null && !getClass().getName().equals(BluetoothActivity.class.getName()) && !getClass().getName().equals(PrivacyPolicyActivity.class.getName())) {
                    this.tvGotoConnect.setVisibility(0);
                }
                if (!MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY)) {
                    resetLastDeviceInfo();
                }
            } else if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.CONNECT_FAILED.getState()) {
                if (this.tvGotoConnect != null && !getClass().getName().equals(BluetoothActivity.class.getName()) && !getClass().getName().equals(PrivacyPolicyActivity.class.getName()) && MultiBluetoothManager.getInstance(this).getAllConnectedDevices().isEmpty()) {
                    this.tvGotoConnect.setVisibility(0);
                }
                cancelLoadingDialog();
                MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
                if (multiBluetoothManager.isBondingInProgress() || multiBluetoothManager.isConnectingInProgress()) {
                    return;
                }
                if (!connectFailedTips) {
                    connectFailedTips = true;
                    showTipDialog(getString(R$string.please_manually_connect), getString(R$string.go_to_connect), null, "gotoconnect");
                }
            } else if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.SOCKET_CLOSE.getState()) {
                this.zeroDegrees = -1.0f;
                this.init = false;
                this.authFlag = false;
                cancelLoadingDialog();
                if (this.tvGotoConnect != null && !getClass().getName().equals(BluetoothActivity.class.getName()) && !getClass().getName().equals(PrivacyPolicyActivity.class.getName()) && MultiBluetoothManager.getInstance(this).getAllConnectedDevices().isEmpty()) {
                    this.tvGotoConnect.setVisibility(0);
                }
                if (!MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY)) {
                    resetLastDeviceInfo();
                }
                bluetoothKickedTips = true;
            } else if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.START_BOND.getState()) {
                showPairingProgressDialog();
            } else if (bluetoothConnectStateEvent.myDevice.state == BluetoothStateEnum.BONDING.getState()) {
                cancelLoadingDialog();
            }
            bluetoothStatus(bluetoothConnectStateEvent.myDevice.state);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getExpireDate(long j, long j2) {
        if (j2 == 0) {
            return getString(R$string.permanently_valid);
        }
        if (j2 == -1) {
            return getString(R$string.on_trial);
        }
        int i = (int) ((j2 - j) / 86400000);
        if (i <= 0) {
            if (i == 0) {
                return getString(R$string.expire_today);
            }
            return getString(R$string.expired);
        }
        return new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(j2)) + " (" + i + getString(R$string.days_later) + ")";
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CorsExpireEpochEvent corsExpireEpochEvent) {
        if (corsExpireEpochEvent.state == 0 && corsExpireEpochEvent.className.equals(getClass().getName())) {
            long j = corsExpireEpochEvent.expireEpoch * 1000;
            this.mSp.edit().putLong("corsAccountExpireEpoch", j).commit();
            if (j == 0 || j == -1) {
                return;
            }
            String expireDate = getExpireDate(System.currentTimeMillis(), j);
            int iCurrentTimeMillis = (int) ((j - System.currentTimeMillis()) / 86400000);
            if (TextUtils.isEmpty(expireDate) || iCurrentTimeMillis > 3) {
                return;
            }
            showTipDialog(expireDate, getString(R$string.cors_renew), getString(R$string.close), "", new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity.20
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    BaseActivity.this.startActivity(new Intent(BaseActivity.this, (Class<?>) CorsRenewActivity.class));
                }
            });
        }
    }

    protected void resetLastDeviceInfo() {
        this.upgradeInfo = null;
        TextView textView = this.tvRtkState;
        if (textView != null) {
            textView.setSelected(false);
            this.tvRtkState.setText(R$string.loading);
        }
        TextView textView2 = this.tvDiffDelay;
        if (textView2 != null) {
            textView2.setSelected(false);
            this.tvDiffDelay.setText("");
        }
        TextView textView3 = this.tvInsState;
        if (textView3 != null) {
            textView3.setText("");
        }
        TextView textView4 = this.tvAngle;
        if (textView4 != null) {
            textView4.setText("");
        }
        TextView textView5 = this.tvUseStars;
        if (textView5 != null) {
            textView5.setText("0");
        }
        this.mH5PowerPercent = -1;
        this.mH5PowerSourceType = -1;
        YCTApplication.getInstance().clearH5PowerState();
        TextView textView6 = this.tvZpyBatt;
        if (textView6 != null) {
            textView6.setText("0");
        }
        GifImageView gifImageView = this.gifCharging;
        if (gifImageView != null) {
            gifImageView.setVisibility(8);
        }
        View view = this.rltSensorBatt;
        if (view != null) {
            view.setVisibility(8);
        }
        TextView textView7 = this.tvSensorBatt;
        if (textView7 != null) {
            textView7.setText("0");
        }
        if (MultiBluetoothManager.getInstance(this).isDeviceConnected(DeviceType.ZPY)) {
            return;
        }
        TextView textView8 = this.tvInsState;
        if (textView8 != null) {
            textView8.setText("");
            this.tvInsState.setSelected(false);
        }
        TextView textView9 = this.tvAngle;
        if (textView9 != null) {
            textView9.setText("");
            this.tvAngle.setSelected(false);
        }
        TextView textView10 = this.tvHRMS;
        if (textView10 != null) {
            textView10.setSelected(true);
        }
        TextView textView11 = this.tvVRMS;
        if (textView11 != null) {
            textView11.setSelected(true);
        }
    }

    private void checkConnect() {
        BluetoothAdapter adapter = ((BluetoothManager) getSystemService("bluetooth")).getAdapter();
        if (adapter != null) {
            String string = this.mSp.getString("latestDeviceAddress", "");
            if (adapter.isEnabled() && !TextUtils.isEmpty(string)) {
                startBlueService();
                return;
            }
            if (getClass().getName().contains(BluetoothActivity.class.getName())) {
                startBlueService();
                return;
            }
            TextView textView = this.tvGotoConnect;
            if (textView != null) {
                textView.setVisibility(0);
                return;
            }
            return;
        }
        Toast.makeText(this, getString(R$string.phone_no_ble), 0).show();
        LogToFile.i("该手机不支持蓝牙功能：" + Build.MANUFACTURER + " " + Build.MODEL);
    }

    public void startBlueService() {
        if (intentService == null) {
            intentService = new Intent(this, (Class<?>) BluetoothConnectService.class);
        }
        if (!isServiceRunning(this, BluetoothConnectService.class)) {
            if (Build.VERSION.SDK_INT >= 26) {
                startForegroundService(intentService);
                return;
            } else {
                startService(intentService);
                return;
            }
        }
        startService(intentService);
    }

    public void reConnect(DeviceType deviceType) {
        EventBus.getDefault().post(new BluetoothConnectActionEvent(BluetoothActionEnum.DISCONNECT, "", deviceType));
        if (isServiceRunning(this, BluetoothConnectService.class)) {
            String string = this.mSp.getString("latestDeviceAddress", "");
            if (TextUtils.isEmpty(string)) {
                return;
            }
            EventBus.getDefault().post(new BluetoothConnectActionByMacEvent(BluetoothActionEnum.CONNECT, string));
            return;
        }
        startBlueService();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(AuthResult authResult) {
        ((YCTApplication) getApplication()).setAuthResult(authResult);
        List<Activity> activityList = ((YCTApplication) getApplication()).getActivityList();
        if (activityList.isEmpty() || activityList.get(activityList.size() - 1).getClass().getName().contains(DiffDataConfigActivity.class.getName())) {
            return;
        }
        int i = authResult.result;
        if (i != 0) {
            if (i == 6) {
                if (this.authFlag) {
                    return;
                }
                cancelLoadingDialog();
                this.authFlag = true;
                showTipDialog(getString(R$string.cors_connect_failed), getString(R$string.ok), null);
                return;
            }
            this.authFlag = false;
            return;
        }
        if (this.authFlag) {
            return;
        }
        cancelLoadingDialog();
        this.authFlag = true;
        if (TextUtils.isEmpty(authResult.reason)) {
            return;
        }
        if (authResult.reason.contains("Bad Password")) {
            authResult.reason = getString(R$string.cors_input_error);
        }
        showTipDialog(getString(R$string.cors_auth_failed) + "：" + authResult.reason, getString(R$string.ok), null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(Expiredate expiredate) {
        if (isDateExpired(expiredate.value)) {
            StringBuilder sb = new StringBuilder();
            sb.append(expiredate.deviceType == DeviceType.ZPY ? "" : getString(R$string.base));
            sb.append(getString(R$string.host_code_expired));
            sb.append("！");
            showTipDialog(sb.toString(), getString(R$string.ok), null);
        }
    }

    private boolean isDateExpired(String str) throws ParseException {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String strTrim = str.trim();
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.parse(strTrim);
            return strTrim.compareTo(simpleDateFormat.format(new Date())) < 0;
        } catch (ParseException unused) {
            LogToFile.e("日期格式错误: " + strTrim);
            return false;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(RtkInfo rtkInfo) {
        if (rtkInfo != null) {
            this.fmwInfoList.clear();
            this.upgradeInfo = null;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(FeaturesEvent featuresEvent) {
        if (shouldHandleFmwUpgradeEvent() && ((YCTApplication) getApplication()).isAppVersionCheckedComplete()) {
            if (featuresEvent.value.contains("UPGRADE")) {
                if (((YCTApplication) getApplication()).isCheckFmwUpgrade()) {
                    return;
                }
                ((YCTApplication) getApplication()).setCheckFmwUpgrade(true);
                this.upgradeInfo = null;
                this.fmwInfoList.clear();
                this.fmwUpgradeCurrentStep = 0;
                if (this.mSp.getInt("mode", ConnectModeEnum.BLE.getType()) != ConnectModeEnum.DEMO.getType()) {
                    LogToFile.i("---------开始检测固件升级-----------");
                }
                EventBus.getDefault().post(new OrderBean(featuresEvent.deviceType, "UPGRADE,INFO"));
                return;
            }
            showToastDialog(getString(R$string.host_no_upgradle));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(AppVersionCheckEndEvent appVersionCheckEndEvent) {
        if (shouldHandleFmwUpgradeEvent()) {
            this.upgradeInfo = null;
            this.fmwInfoList.clear();
            this.fmwUpgradeCurrentStep = 0;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(UpgradeInfoEvent upgradeInfoEvent) {
        if (shouldHandleFmwUpgradeEvent()) {
            this.upgradeInfo = upgradeInfoEvent;
            NetworkDataLoader.getInstance().getFirmwareList(upgradeInfoEvent.deviceType, upgradeInfoEvent.pns, upgradeInfoEvent.vsersions, false);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(FirmwareResponse firmwareResponse) {
        if (shouldHandleFmwUpgradeEvent()) {
            cancelLoadingDialog();
            if (firmwareResponse.state == 0) {
                List<FirmwareResponse.Fmw> list = firmwareResponse.fmw_list;
                if (list != null && !list.isEmpty()) {
                    Iterator<FirmwareResponse.Fmw> it = firmwareResponse.fmw_list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        FirmwareResponse.Fmw next = it.next();
                        if (!next.list.isEmpty()) {
                            this.fmwInfoList.add(next.list.get(0));
                            break;
                        }
                    }
                }
                if (!firmwareResponse.isModuleUpgrade) {
                    checkModelUpgrade(firmwareResponse.deviceType);
                    return;
                } else {
                    this.fmwUpgradeCurrentStep = 1;
                    showUpgradeFmwDialog(firmwareResponse);
                    return;
                }
            }
            if (this.fmwInfoList.isEmpty()) {
                return;
            }
            this.fmwUpgradeCurrentStep = 1;
            showUpgradeFmwDialog(firmwareResponse);
        }
    }

    private void checkModelUpgrade(DeviceType deviceType) {
        String string;
        if (deviceType == DeviceType.BASE) {
            string = this.mSp.getString("base_deviceSn", "");
        } else {
            string = this.mSp.getString("deviceSn", "");
        }
        if (string.length() > 7) {
            NetworkDataLoader.getInstance().getFirmwareList(deviceType, "GNSS-" + String.valueOf(string.charAt(7)) + String.valueOf(string.charAt(8)), this.mSp.getString(Constant.GNSS_FWM_VERSION, ""), true);
        }
    }

    private void showUpgradeFmwDialog(FirmwareResponse firmwareResponse) {
        String str;
        RtkInfo baseInfo;
        RtkInfo baseInfo2;
        if (isDestroyed() || isFinishing()) {
            return;
        }
        int i = this.fmwUpgradeCurrentStep;
        FirmwareResponse.Fmw.Info info = (i <= 0 || i + (-1) >= this.fmwInfoList.size()) ? null : this.fmwInfoList.get(this.fmwUpgradeCurrentStep - 1);
        if (info == null) {
            return;
        }
        if (info.forced) {
            FmwForcedUpgradeDialogFragment fmwForcedUpgradeDialogFragment = this.forcedUpgradeDialog;
            if (fmwForcedUpgradeDialogFragment != null && fmwForcedUpgradeDialogFragment.getFragmentManager() != null) {
                this.forcedUpgradeDialog.dismissAllowingStateLoss();
            }
            this.forcedUpgradeDialog = new FmwForcedUpgradeDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("id", info.id);
            bundle.putString("upgradeLog", info.update_log);
            if (YCTApplication.getInstance().isGnssFmw(info.model)) {
                bundle.putString("versionOld", this.mSp.getString(Constant.GNSS_FWM_VERSION, ""));
            } else {
                DeviceType deviceType = firmwareResponse.deviceType;
                if (deviceType == DeviceType.ZPY) {
                    RtkInfo rtkInfo = YCTApplication.getInstance().getRtkInfo();
                    if (rtkInfo != null) {
                        bundle.putString("versionOld", rtkInfo.firmwareVersion);
                    }
                } else if (deviceType == DeviceType.BASE && (baseInfo2 = YCTApplication.getInstance().getBaseInfo()) != null) {
                    bundle.putString("versionOld", baseInfo2.firmwareVersion);
                }
            }
            bundle.putSerializable("deviceType", firmwareResponse.deviceType);
            bundle.putString("versionNew", info.version);
            bundle.putLong("fileSize", info.file_size);
            bundle.putString("md5", info.file_md5);
            bundle.putString("model", info.model);
            bundle.putInt("totalStep", this.fmwInfoList.size());
            bundle.putInt("currentStep", this.fmwUpgradeCurrentStep);
            this.forcedUpgradeDialog.setArguments(bundle);
            this.forcedUpgradeDialog.setOnCloseListener(new FmwForcedUpgradeDialogFragment.OnCloseListener() { // from class: com.qianhe.yct.base.BaseActivity.21
                @Override // com.qianhe.yct.dialog.FmwForcedUpgradeDialogFragment.OnCloseListener
                public void onClose(int i2) {
                }
            });
            showDialogFragmentSafely(this.forcedUpgradeDialog, "ForcedUpgradeFmwDialogFragment");
            return;
        }
        if (YCTApplication.getInstance().isGnssFmw(info.model)) {
            str = "ignoreFmwVersion_gnss";
        } else {
            str = "ignoreFmwVersion";
        }
        if (this.mSp.getString(firmwareResponse.deviceType.getType() + "_" + str, "").equals(info.version)) {
            return;
        }
        this.mSp.edit().putString(firmwareResponse.deviceType.getType() + "_" + str, "").apply();
        UpgradeFmwDialogFragment upgradeFmwDialogFragment = this.upgradeDialog;
        if (upgradeFmwDialogFragment != null && upgradeFmwDialogFragment.getFragmentManager() != null) {
            this.upgradeDialog.dismissAllowingStateLoss();
        }
        this.upgradeDialog = new UpgradeFmwDialogFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putInt("id", info.id);
        bundle2.putString("upgradeLog", info.update_log);
        if (YCTApplication.getInstance().isGnssFmw(info.model)) {
            bundle2.putString("versionOld", this.mSp.getString(Constant.GNSS_FWM_VERSION, ""));
        } else {
            DeviceType deviceType2 = firmwareResponse.deviceType;
            if (deviceType2 == DeviceType.ZPY) {
                RtkInfo rtkInfo2 = YCTApplication.getInstance().getRtkInfo();
                if (rtkInfo2 != null) {
                    bundle2.putString("versionOld", rtkInfo2.firmwareVersion);
                }
            } else if (deviceType2 == DeviceType.BASE && (baseInfo = YCTApplication.getInstance().getBaseInfo()) != null) {
                bundle2.putString("versionOld", baseInfo.firmwareVersion);
            }
        }
        bundle2.putSerializable("deviceType", firmwareResponse.deviceType);
        bundle2.putString("versionNew", info.version);
        bundle2.putLong("fileSize", info.file_size);
        bundle2.putString("md5", info.file_md5);
        bundle2.putString("model", info.model);
        bundle2.putInt("totalStep", this.fmwInfoList.size());
        bundle2.putInt("currentStep", this.fmwUpgradeCurrentStep);
        this.upgradeDialog.setArguments(bundle2);
        this.upgradeDialog.setOnActionListener(new UpgradeFmwDialogFragment.OnActionListener() { // from class: com.qianhe.yct.base.BaseActivity.22
            @Override // com.qianhe.yct.dialog.UpgradeFmwDialogFragment.OnActionListener
            public void next(int i2) {
            }

            @Override // com.qianhe.yct.dialog.UpgradeFmwDialogFragment.OnActionListener
            public void onClose(int i2) {
            }
        });
        showDialogFragmentSafely(this.upgradeDialog, "UpgradeFmwDialogFragment");
    }

    private void showDialogFragmentSafely(DialogFragment dialogFragment, String str) {
        try {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            if (supportFragmentManager.isStateSaved()) {
                supportFragmentManager.beginTransaction().add(dialogFragment, str).commitAllowingStateLoss();
            } else {
                dialogFragment.show(supportFragmentManager, str);
            }
        } catch (Exception e) {
            LogToFile.i("Show dialog failed: " + e.getMessage());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(LogoutResponse logoutResponse) {
        UserSession.get().clearLoginInfo();
    }

    public void showLoadingDialog(String str) {
        showLoadingDialog(str, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void showLoadingDialog(String str, LoadingFragment.OnCloseListener onCloseListener) {
        if (isDestroyed()) {
            return;
        }
        this.loadingDialogManager.show(str, onCloseListener);
    }

    public void cancelLoadingDialog() {
        if (isDestroyed()) {
            return;
        }
        this.loadingDialogManager.dismiss();
    }

    public void showCollectingDialog(String str, int i, CollectingDialogFragment.OnCloseListener onCloseListener) {
        if (isDestroyed()) {
            return;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        CollectingDialogFragment collectingDialogFragment = (CollectingDialogFragment) supportFragmentManager.findFragmentByTag("CollectingDialogFragment");
        if (collectingDialogFragment != null) {
            supportFragmentManager.beginTransaction().remove(collectingDialogFragment).commitNowAllowingStateLoss();
        }
        this.collectingDialogFragment = new CollectingDialogFragment();
        Bundle bundle = new Bundle();
        if (TextUtils.isEmpty(str)) {
            str = getString(R$string.collecting);
        }
        bundle.putString("tip", str);
        bundle.putInt("countDownSeconds", i);
        this.collectingDialogFragment.setArguments(bundle);
        this.collectingDialogFragment.setOnCloseListener(onCloseListener);
        try {
            if (supportFragmentManager.isStateSaved()) {
                supportFragmentManager.beginTransaction().add(this.collectingDialogFragment, "CollectingDialogFragment").commitAllowingStateLoss();
            } else {
                this.collectingDialogFragment.show(supportFragmentManager, "CollectingDialogFragment");
            }
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.i("Show collecting dialog failed: " + e.getMessage());
            if (onCloseListener != null) {
                onCloseListener.onClose(1);
            }
        }
    }

    public void cancelCollectingDialog() {
        CollectingDialogFragment collectingDialogFragment;
        if (isDestroyed() || (collectingDialogFragment = (CollectingDialogFragment) getSupportFragmentManager().findFragmentByTag("CollectingDialogFragment")) == null) {
            return;
        }
        collectingDialogFragment.cancelManually();
    }

    public static final class InstrumentCollectResult {
        public final double[] coords;
        public final double[] geodetic;
        public final double hdop;
        public final int quality;
        public final double vdop;

        public InstrumentCollectResult(double[] dArr, double[] dArr2, int i, double d, double d2) {
            this.coords = dArr;
            this.geodetic = dArr2;
            this.quality = i;
            this.hdop = d;
            this.vdop = d2;
        }
    }

    public void startInstrumentCollectWithPoleHeight(final OnInstrumentCollectListener onInstrumentCollectListener) {
        if (isDestroyed() || onInstrumentCollectListener == null) {
            return;
        }
        showPoleHeightInputDialog(new OnPoleHeightInputConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity$$ExternalSyntheticLambda9
            @Override // com.qianhe.yct.base.BaseActivity.OnPoleHeightInputConfirmListener
            public final void onConfirm(float f) {
                BaseActivity.m2018$r8$lambda$xBBqBUsZY2L0yUZaCPqgy65ePA(this.f$0, onInstrumentCollectListener, f);
            }
        });
    }

    /* renamed from: $r8$lambda$xBBqBUsZ-Y2L0yUZaCPqgy65ePA, reason: not valid java name */
    public static /* synthetic */ void m2018$r8$lambda$xBBqBUsZY2L0yUZaCPqgy65ePA(BaseActivity baseActivity, OnInstrumentCollectListener onInstrumentCollectListener, float f) {
        baseActivity.sessionPoleHeightMeters = f;
        baseActivity.instrumentCollectPoleHeightSet = true;
        baseActivity.startInstrumentCollectCountdown(onInstrumentCollectListener);
    }

    public void startInstrumentCollect(final OnInstrumentCollectListener onInstrumentCollectListener) {
        if (isDestroyed() || onInstrumentCollectListener == null) {
            return;
        }
        if (!this.instrumentCollectPoleHeightSet) {
            showPoleHeightInputDialog(new OnPoleHeightInputConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity$$ExternalSyntheticLambda8
                @Override // com.qianhe.yct.base.BaseActivity.OnPoleHeightInputConfirmListener
                public final void onConfirm(float f) {
                    BaseActivity.m2015$r8$lambda$59H5i5OFC6FJnQfrKynfeOd77w(this.f$0, onInstrumentCollectListener, f);
                }
            });
        } else {
            startInstrumentCollectCountdown(onInstrumentCollectListener);
        }
    }

    /* renamed from: $r8$lambda$59H5i5OFC6FJnQ-frKynfeOd77w, reason: not valid java name */
    public static /* synthetic */ void m2015$r8$lambda$59H5i5OFC6FJnQfrKynfeOd77w(BaseActivity baseActivity, OnInstrumentCollectListener onInstrumentCollectListener, float f) {
        baseActivity.sessionPoleHeightMeters = f;
        baseActivity.instrumentCollectPoleHeightSet = true;
        baseActivity.startInstrumentCollectCountdown(onInstrumentCollectListener);
    }

    public void startInstrumentCollectWithBubbleCompass(final OnInstrumentCollectListener onInstrumentCollectListener) {
        if (isDestroyed()) {
            return;
        }
        if (!this.instrumentCollectPoleHeightSet) {
            showPoleHeightInputDialog(new OnPoleHeightInputConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity$$ExternalSyntheticLambda10
                @Override // com.qianhe.yct.base.BaseActivity.OnPoleHeightInputConfirmListener
                public final void onConfirm(float f) {
                    BaseActivity.$r8$lambda$aZ6tKhts54m7ubwnDUDpZyh73Vk(this.f$0, onInstrumentCollectListener, f);
                }
            });
        } else {
            showBubbleCompassCollectDialog(onInstrumentCollectListener);
        }
    }

    public static /* synthetic */ void $r8$lambda$aZ6tKhts54m7ubwnDUDpZyh73Vk(BaseActivity baseActivity, OnInstrumentCollectListener onInstrumentCollectListener, float f) {
        baseActivity.sessionPoleHeightMeters = f;
        baseActivity.instrumentCollectPoleHeightSet = true;
        baseActivity.showBubbleCompassCollectDialog(onInstrumentCollectListener);
    }

    private void showBubbleCompassCollectDialog(final OnInstrumentCollectListener onInstrumentCollectListener) {
        if (isDestroyed()) {
            return;
        }
        GGAEntity gGAEntity = this.mGGA;
        if (gGAEntity == null || gGAEntity.quality != 4) {
            showTipDialog(getString(R$string.no_fixed_solution), getString(R$string.ok), null);
            if (onInstrumentCollectListener != null) {
                onInstrumentCollectListener.onResult(null);
                return;
            }
            return;
        }
        enableInstrumentDopLog();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        BubbleCompassDialogFragment bubbleCompassDialogFragment = (BubbleCompassDialogFragment) supportFragmentManager.findFragmentByTag("BubbleCompassDialogFragment");
        if (bubbleCompassDialogFragment != null) {
            supportFragmentManager.beginTransaction().remove(bubbleCompassDialogFragment).commitNowAllowingStateLoss();
        }
        BubbleCompassDialogFragment bubbleCompassDialogFragment2 = new BubbleCompassDialogFragment();
        if (onInstrumentCollectListener != null) {
            bubbleCompassDialogFragment2.setOnActionListener(new BubbleCompassDialogFragment.OnActionListener() { // from class: com.qianhe.yct.base.BaseActivity.23
                @Override // com.qianhe.yct.dialog.BubbleCompassDialogFragment.OnActionListener
                public void onCollect() {
                    InstrumentCollectResult instrumentCollectResultBuildInstrumentCollectResultFromCurrentGga = BaseActivity.this.buildInstrumentCollectResultFromCurrentGga();
                    BaseActivity.this.disableInstrumentDopLog();
                    if (instrumentCollectResultBuildInstrumentCollectResultFromCurrentGga == null || instrumentCollectResultBuildInstrumentCollectResultFromCurrentGga.coords == null) {
                        BaseActivity baseActivity = BaseActivity.this;
                        baseActivity.showToastDialog(baseActivity.getString(R$string.getting_location));
                        onInstrumentCollectListener.onResult(null);
                        return;
                    }
                    onInstrumentCollectListener.onResult(instrumentCollectResultBuildInstrumentCollectResultFromCurrentGga);
                }

                @Override // com.qianhe.yct.dialog.BubbleCompassDialogFragment.OnActionListener
                public void onCancel() {
                    BaseActivity.this.disableInstrumentDopLog();
                    onInstrumentCollectListener.onResult(null);
                }
            });
        }
        try {
            if (supportFragmentManager.isStateSaved()) {
                supportFragmentManager.beginTransaction().add(bubbleCompassDialogFragment2, "BubbleCompassDialogFragment").commitAllowingStateLoss();
            } else {
                bubbleCompassDialogFragment2.show(supportFragmentManager, "BubbleCompassDialogFragment");
            }
        } catch (Exception e) {
            LogToFile.e("Show bubble compass dialog failed: " + e.getMessage());
            disableInstrumentDopLog();
            if (onInstrumentCollectListener != null) {
                onInstrumentCollectListener.onResult(null);
            }
        }
    }

    protected boolean isVaildCoords(double[] dArr) {
        for (double d : dArr) {
            if (!isValidCoord(d)) {
                return false;
            }
        }
        return true;
    }

    protected boolean isValidCoord(double d) {
        return XCadView$$ExternalSyntheticBackport0.m(d) && !Double.isNaN(d);
    }

    private void showPoleHeightInputDialog(final OnPoleHeightInputConfirmListener onPoleHeightInputConfirmListener) {
        if (isDestroyed()) {
            return;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        PoleHeightInputDialogFragment poleHeightInputDialogFragment = (PoleHeightInputDialogFragment) supportFragmentManager.findFragmentByTag("PoleHeightInputDialogFragment");
        if (poleHeightInputDialogFragment != null) {
            supportFragmentManager.beginTransaction().remove(poleHeightInputDialogFragment).commitNowAllowingStateLoss();
        }
        PoleHeightInputDialogFragment poleHeightInputDialogFragment2 = new PoleHeightInputDialogFragment();
        poleHeightInputDialogFragment2.setOnPoleHeightConfirmListener(new PoleHeightInputDialogFragment.OnPoleHeightConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity.24
            @Override // com.qianhe.yct.dialog.PoleHeightInputDialogFragment.OnPoleHeightConfirmListener
            public void onCancel() {
            }

            @Override // com.qianhe.yct.dialog.PoleHeightInputDialogFragment.OnPoleHeightConfirmListener
            public void onConfirm(float f) {
                OnPoleHeightInputConfirmListener onPoleHeightInputConfirmListener2 = onPoleHeightInputConfirmListener;
                if (onPoleHeightInputConfirmListener2 != null) {
                    onPoleHeightInputConfirmListener2.onConfirm(f);
                }
            }
        });
        try {
            if (supportFragmentManager.isStateSaved()) {
                supportFragmentManager.beginTransaction().add(poleHeightInputDialogFragment2, "PoleHeightInputDialogFragment").commitAllowingStateLoss();
            } else {
                poleHeightInputDialogFragment2.show(supportFragmentManager, "PoleHeightInputDialogFragment");
            }
        } catch (Exception e) {
            LogToFile.e("Show pole height dialog failed: " + e.getMessage());
        }
    }

    private void startInstrumentCollectCountdown(final OnInstrumentCollectListener onInstrumentCollectListener) {
        GGAEntity gGAEntity = this.mGGA;
        if (gGAEntity == null || gGAEntity.quality != 4) {
            showTipDialog(getString(R$string.no_fixed_solution), getString(R$string.ok), null);
            onInstrumentCollectListener.onResult(null);
        } else {
            enableInstrumentDopLog();
            clearInstrumentQualitySamples();
            this.isInstrumentCollecting = true;
            showCollectingDialog(getString(R$string.collecting), 2, new CollectingDialogFragment.OnCloseListener() { // from class: com.qianhe.yct.base.BaseActivity$$ExternalSyntheticLambda11
                @Override // com.qianhe.yct.dialog.CollectingDialogFragment.OnCloseListener
                public final void onClose(int i) {
                    BaseActivity.$r8$lambda$24tKbNO6WeO0_99RGcQATOuRo6A(this.f$0, onInstrumentCollectListener, i);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$24tKbNO6WeO0_99RGcQATOuRo6A(BaseActivity baseActivity, OnInstrumentCollectListener onInstrumentCollectListener, int i) {
        baseActivity.isInstrumentCollecting = false;
        baseActivity.disableInstrumentDopLog();
        if (i != 0) {
            baseActivity.clearInstrumentQualitySamples();
            onInstrumentCollectListener.onResult(null);
            return;
        }
        InstrumentCollectResult instrumentCollectResultBuildInstrumentCollectResult = baseActivity.buildInstrumentCollectResult();
        baseActivity.clearInstrumentQualitySamples();
        if (instrumentCollectResultBuildInstrumentCollectResult == null || instrumentCollectResultBuildInstrumentCollectResult.coords == null) {
            baseActivity.showToastDialog(baseActivity.getString(R$string.getting_location));
            onInstrumentCollectListener.onResult(null);
        } else {
            onInstrumentCollectListener.onResult(instrumentCollectResultBuildInstrumentCollectResult);
        }
    }

    private void accumulateInstrumentCollectSample(GGAEntity gGAEntity) {
        if (this.isInstrumentCollecting && gGAEntity != null && gGAEntity.quality == 4) {
            this.instrumentCollectSamples.add(new double[]{gGAEntity.longitude, gGAEntity.latitude, (gGAEntity.elevation - this.mSp.getFloat("zpy_antennaheight", 0.0f)) - this.sessionPoleHeightMeters});
            this.instrumentCollectQuality = gGAEntity.quality;
            GPDOPEntity gPDOPEntity = this.mGPDOP;
            if (gPDOPEntity != null) {
                this.instrumentHdopSamples.add(Float.valueOf(gPDOPEntity.hdop));
                this.instrumentVdopSamples.add(Float.valueOf(this.mGPDOP.vdop));
            } else {
                this.instrumentHdopSamples.add(Float.valueOf((float) gGAEntity.hdop));
            }
        }
    }

    private InstrumentCollectResult buildInstrumentCollectResult() {
        int i;
        GPDOPEntity gPDOPEntity;
        GGAEntity gGAEntity;
        if (this.instrumentCollectSamples.isEmpty()) {
            return null;
        }
        Iterator<double[]> it = this.instrumentCollectSamples.iterator();
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            double[] next = it.next();
            d += next[0];
            d2 += next[1];
            d3 += next[2];
        }
        double size = this.instrumentCollectSamples.size();
        double d4 = d / size;
        double d5 = d2 / size;
        double d6 = d3 / size;
        int i2 = this.instrumentCollectQuality;
        if (i2 != 0) {
            i = i2;
        } else {
            GGAEntity gGAEntity2 = this.mGGA;
            if (gGAEntity2 != null) {
                i = gGAEntity2.quality;
            }
        }
        double dAverageInstrumentDop = averageInstrumentDop(this.instrumentHdopSamples);
        if (dAverageInstrumentDop == 0.0d && (gGAEntity = this.mGGA) != null) {
            dAverageInstrumentDop = gGAEntity.hdop;
        }
        double dAverageInstrumentDop2 = averageInstrumentDop(this.instrumentVdopSamples);
        if (dAverageInstrumentDop2 == 0.0d && (gPDOPEntity = this.mGPDOP) != null) {
            dAverageInstrumentDop2 = gPDOPEntity.vdop;
        }
        return buildInstrumentCollectResult(d4, d5, d6, i, dAverageInstrumentDop, dAverageInstrumentDop2);
    }

    public InstrumentCollectResult snapshotInstrumentCollectFromCurrentGga() {
        return buildInstrumentCollectResultFromCurrentGga();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InstrumentCollectResult buildInstrumentCollectResultFromCurrentGga() {
        GGAEntity gGAEntity = this.mGGA;
        if (gGAEntity == null || gGAEntity.quality != 4) {
            return null;
        }
        float f = this.mSp.getFloat("zpy_antennaheight", 0.0f);
        GGAEntity gGAEntity2 = this.mGGA;
        double d = (gGAEntity2.elevation - f) - this.sessionPoleHeightMeters;
        int i = gGAEntity2.quality;
        GPDOPEntity gPDOPEntity = this.mGPDOP;
        return buildInstrumentCollectResult(gGAEntity2.longitude, gGAEntity2.latitude, d, i, gPDOPEntity != null ? gPDOPEntity.hdop : gGAEntity2.hdop, gPDOPEntity != null ? gPDOPEntity.vdop : 0.0d);
    }

    private InstrumentCollectResult buildInstrumentCollectResult(double d, double d2, double d3, int i, double d4, double d5) {
        double[] dArr = {d, d2, d3};
        double[] dArr2 = new double[3];
        if (convertInsGeodeticToPlane(d, d2, d3, dArr2)) {
            return new InstrumentCollectResult(dArr2, dArr, i, d4, d5);
        }
        return null;
    }

    private void enableInstrumentDopLog() {
        if (this.instrumentDopLogEnabled) {
            return;
        }
        EventBus.getDefault().post(new OrderBean(resolveInstrumentDeviceType(), "LOG,DOP,ONTIME,1"));
        this.instrumentDopLogEnabled = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disableInstrumentDopLog() {
        if (this.instrumentDopLogEnabled) {
            EventBus.getDefault().post(new OrderBean(resolveInstrumentDeviceType(), "UNLOG,DOP"));
            this.instrumentDopLogEnabled = false;
        }
    }

    private DeviceType resolveInstrumentDeviceType() {
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
        DeviceType deviceType = DeviceType.ZPY;
        if (!multiBluetoothManager.isDeviceConnected(deviceType)) {
            MultiBluetoothManager multiBluetoothManager2 = MultiBluetoothManager.getInstance(this);
            DeviceType deviceType2 = DeviceType.BASE;
            if (multiBluetoothManager2.isDeviceConnected(deviceType2)) {
                return deviceType2;
            }
        }
        return deviceType;
    }

    private void clearInstrumentQualitySamples() {
        this.instrumentCollectSamples.clear();
        this.instrumentHdopSamples.clear();
        this.instrumentVdopSamples.clear();
        this.instrumentCollectQuality = 0;
    }

    private double averageInstrumentDop(List<Float> list) {
        double dFloatValue = 0.0d;
        if (list == null || list.isEmpty()) {
            return 0.0d;
        }
        while (list.iterator().hasNext()) {
            dFloatValue += r2.next().floatValue();
        }
        return dFloatValue / list.size();
    }

    public void showToastDialog(String str) {
        if (isDestroyed() || isFinishing()) {
            return;
        }
        if (this.toastDialogFragment.getDialog() != null && this.toastDialogFragment.getDialog().isShowing()) {
            this.toastDialogFragment.refreshTip(str);
            return;
        }
        this.toastDialogFragment = new ToastDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString("tip", str);
        this.toastDialogFragment.setArguments(bundle);
        try {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            if (supportFragmentManager.isStateSaved()) {
                supportFragmentManager.beginTransaction().add(this.toastDialogFragment, "ToastDialogFragment").commitAllowingStateLoss();
            } else {
                this.toastDialogFragment.show(supportFragmentManager, "ToastDialogFragment");
            }
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.i("Show toast dialog failed: " + e.getMessage());
        }
    }

    public void showTipDialog(String str, String str2, TipsDialogFragment.OnConfirmListener onConfirmListener) {
        if (isDestroyed()) {
            return;
        }
        this.tipsDialogManager.show(str, str2, onConfirmListener);
    }

    public void showTipDialog(String str, String str2, TipsDialogFragment.OnConfirmListener onConfirmListener, String str3) {
        if (isDestroyed()) {
            return;
        }
        this.tipsDialogManager.show(str, str2, "", "", onConfirmListener, str3);
    }

    public void showTipDialog(String str, String str2, String str3, TipsDialogFragment.OnConfirmListener onConfirmListener, String str4) {
        if (isDestroyed()) {
            return;
        }
        this.tipsDialogManager.show(str, str2, str3, "", onConfirmListener, str4);
    }

    public void showTipDialog(String str, String str2, String str3, String str4, TipsDialogFragment.OnConfirmListener onConfirmListener) {
        if (isDestroyed()) {
            return;
        }
        this.tipsDialogManager.show(str, str2, str3, str4, onConfirmListener, "");
    }

    public void showTipDialog(String str, String str2, String str3, String str4, TipsDialogFragment.OnConfirmListener onConfirmListener, String str5) {
        if (isDestroyed()) {
            return;
        }
        this.tipsDialogManager.show(str, str2, str3, str4, onConfirmListener, str5);
    }

    public void cancelTipDialog() {
        if (isDestroyed()) {
            return;
        }
        this.tipsDialogManager.dismissImmediately();
    }

    protected void dismissConnectingDialog() {
        this.isStartConnect = false;
        if (isDestroyed()) {
            return;
        }
        this.loadingDialogManager.dismissImmediately();
    }

    protected void forceDismissBluetoothPairingDialogs() {
        this.isStartConnect = false;
        if (isDestroyed()) {
            return;
        }
        this.loadingDialogManager.dismissImmediately();
        if (this.tipsDialogManager.isPermissionDialogShowing()) {
            return;
        }
        this.tipsDialogManager.dismissImmediately();
    }

    private void dismissBluetoothPairingDialogsGlobally() {
        List<Activity> activityList = ((YCTApplication) getApplication()).getActivityList();
        for (int size = activityList.size() - 1; size >= 0; size--) {
            Activity activity = activityList.get(size);
            if (activity != null && !activity.isFinishing() && !activity.isDestroyed() && (activity instanceof BaseActivity)) {
                ((BaseActivity) activity).forceDismissBluetoothPairingDialogs();
            }
        }
    }

    @SuppressLint({"MissingPermission"})
    private void dismissStaleBluetoothPairingDialogsIfNeeded() {
        if (!hasPermissions("basic") || this.tipsDialogManager.isPermissionDialogShowing() || this.tipsDialogManager.isBluetoothPairingDialogShowing()) {
            return;
        }
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
        if (multiBluetoothManager.isBondingInProgress() || multiBluetoothManager.isConnectingInProgress() || !this.loadingDialogManager.isShowing()) {
            return;
        }
        MyBluetoothDevice currentDevice = YCTApplication.getInstance().getCurrentDevice();
        MyBluetoothDevice currentBaseDevice = YCTApplication.getInstance().getCurrentBaseDevice();
        if (isDeviceBonding(currentDevice) || isDeviceBonding(currentBaseDevice)) {
            return;
        }
        this.isStartConnect = false;
        if (isDestroyed()) {
            return;
        }
        this.loadingDialogManager.dismissImmediately();
    }

    protected LoadingFragment.OnCloseListener createPairingLoadingCloseListener() {
        return new LoadingFragment.OnCloseListener() { // from class: com.qianhe.yct.base.BaseActivity$$ExternalSyntheticLambda5
            @Override // com.qianhe.yct.dialog.LoadingFragment.OnCloseListener
            public final void onClose(int i) {
                BaseActivity.m2017$r8$lambda$qGuYmRP2zOCHWIXdEOZ8kQwCE(this.f$0, i);
            }
        };
    }

    /* renamed from: $r8$lambda$qGuYmRP2zOCHWIXd-EOZ8-kQwCE, reason: not valid java name */
    public static /* synthetic */ void m2017$r8$lambda$qGuYmRP2zOCHWIXdEOZ8kQwCE(BaseActivity baseActivity, int i) {
        if (i == 1) {
            baseActivity.cancelBluetoothBondingIfNeeded();
        } else {
            baseActivity.getClass();
        }
    }

    protected boolean isBluetoothPairingTipDialogShowing() {
        return this.tipsDialogManager.isBluetoothPairingDialogShowing();
    }

    protected void showPairingProgressDialog() {
        showLoadingDialog(getString(R$string.pairing), createPairingLoadingCloseListener());
    }

    protected void cancelBluetoothBondingIfNeeded() {
        MultiBluetoothManager.getInstance(this).cancelBondingIfNeeded();
    }

    private void handleAppBackgroundDuringBluetoothBond() {
        MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
        if (multiBluetoothManager.isBondingInProgress()) {
            if (multiBluetoothManager.isBackgroundBondCancelSuppressed()) {
                LogToFile.i("忽略短暂退后台取消配对（切换/配对页启动中）");
            } else {
                multiBluetoothManager.cancelBondingIfNeeded();
                dismissBluetoothPairingDialogsGlobally();
            }
        }
    }

    @SuppressLint({"MissingPermission"})
    private void restoreBluetoothConnectUi() {
        DeviceType deviceType;
        if (shouldHandleForegroundUiEvent() && shouldRestoreBluetoothConnectProgressUi()) {
            SharedPreferences sharedPreferences = this.mSp;
            ConnectModeEnum connectModeEnum = ConnectModeEnum.BLE;
            if (sharedPreferences.getInt("mode", connectModeEnum.getType()) != connectModeEnum.getType()) {
                return;
            }
            MultiBluetoothManager multiBluetoothManager = MultiBluetoothManager.getInstance(this);
            MyBluetoothDevice myBluetoothDeviceResolveInProgressBluetoothDevice = resolveInProgressBluetoothDevice(multiBluetoothManager);
            boolean z = false;
            boolean z2 = myBluetoothDeviceResolveInProgressBluetoothDevice != null && (((deviceType = myBluetoothDeviceResolveInProgressBluetoothDevice.deviceType) != null && multiBluetoothManager.isDeviceConnected(deviceType)) || myBluetoothDeviceResolveInProgressBluetoothDevice.state == BluetoothStateEnum.CONNECTED.getState());
            if (multiBluetoothManager.isBondingInProgress() || multiBluetoothManager.isConnectingInProgress() || (myBluetoothDeviceResolveInProgressBluetoothDevice != null && isBluetoothProgressState(myBluetoothDeviceResolveInProgressBluetoothDevice.state))) {
                z = true;
            }
            if (z2 || !z) {
                if (!this.loadingDialogManager.isShowing() || multiBluetoothManager.isBondingInProgress()) {
                    return;
                }
                dismissConnectingDialog();
                return;
            }
            if (myBluetoothDeviceResolveInProgressBluetoothDevice == null) {
                return;
            }
            if (((myBluetoothDeviceResolveInProgressBluetoothDevice.state == BluetoothStateEnum.STARTCONNECT.getState() || multiBluetoothManager.isConnectingInProgress()) && !multiBluetoothManager.isBondingInProgress()) || this.tipsDialogManager.isShowing() || this.loadingDialogManager.isShowing()) {
                return;
            }
            this.isStartConnect = true;
            int i = myBluetoothDeviceResolveInProgressBluetoothDevice.state;
            if (i == BluetoothStateEnum.START_BOND.getState() || i == BluetoothStateEnum.BONDING.getState() || multiBluetoothManager.isBondingInProgress()) {
                showPairingProgressDialog();
            }
        }
    }

    private MyBluetoothDevice resolveInProgressBluetoothDevice(MultiBluetoothManager multiBluetoothManager) {
        MyBluetoothDevice currentDevice = YCTApplication.getInstance().getCurrentDevice();
        MyBluetoothDevice currentBaseDevice = YCTApplication.getInstance().getCurrentBaseDevice();
        if (!isBluetoothProgressState(currentDevice.state)) {
            if (!isBluetoothProgressState(currentBaseDevice.state)) {
                if (!multiBluetoothManager.isBondingInProgress() && !multiBluetoothManager.isConnectingInProgress()) {
                    return null;
                }
                if (currentDevice.bluetoothDevice == null && (currentBaseDevice.bluetoothDevice != null || !multiBluetoothManager.isBondingInProgress())) {
                }
            }
            return currentBaseDevice;
        }
        return currentDevice;
    }

    private boolean isBluetoothProgressState(int i) {
        return i == BluetoothStateEnum.START_BOND.getState() || i == BluetoothStateEnum.BONDING.getState() || i == BluetoothStateEnum.STARTCONNECT.getState();
    }

    @SuppressLint({"MissingPermission"})
    private boolean isDeviceBonding(MyBluetoothDevice myBluetoothDevice) {
        BluetoothDevice bluetoothDevice;
        return (myBluetoothDevice == null || (bluetoothDevice = myBluetoothDevice.bluetoothDevice) == null || bluetoothDevice.getBondState() != 11) ? false : true;
    }

    public void showCalibrateDialog(CalibrateDialogFragment.OnConfirmListener onConfirmListener) {
        if (isDestroyed()) {
            return;
        }
        CalibrateDialogFragment calibrateDialogFragment = this.calibrateDialogFragment;
        if (calibrateDialogFragment == null || calibrateDialogFragment.getFragmentManager() == null || this.calibrateDialogFragment.getDialog() == null || !this.calibrateDialogFragment.getDialog().isShowing()) {
            CalibrateDialogFragment calibrateDialogFragment2 = new CalibrateDialogFragment();
            this.calibrateDialogFragment = calibrateDialogFragment2;
            calibrateDialogFragment2.show(getSupportFragmentManager(), "CalibrateDialogFragment");
            Bundle bundle = new Bundle();
            GGAEntity gGAEntity = this.mGGA;
            if (gGAEntity != null) {
                bundle.putInt("quality", gGAEntity.quality);
            }
            bundle.putString("requestKey", "allowRotate");
            this.calibrateDialogFragment.setArguments(bundle);
            this.calibrateDialogFragment.setOnConfirmListener(wrapCalibrateListener(onConfirmListener));
        }
    }

    private CalibrateDialogFragment.OnConfirmListener wrapCalibrateListener(final CalibrateDialogFragment.OnConfirmListener onConfirmListener) {
        return new CalibrateDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity.25
            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public void onConfirm() {
                CalibrateDialogFragment.OnConfirmListener onConfirmListener2 = onConfirmListener;
                if (onConfirmListener2 != null) {
                    onConfirmListener2.onConfirm();
                }
            }

            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                CalibrateDialogFragment.OnConfirmListener onConfirmListener2 = onConfirmListener;
                if (onConfirmListener2 != null) {
                    onConfirmListener2.onClose(z);
                }
            }

            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public void onClose(boolean z, boolean z2) {
                if (z && z2) {
                    YCTApplication.getInstance().setIgnoreSensorOfflineForData(true);
                }
                CalibrateDialogFragment.OnConfirmListener onConfirmListener2 = onConfirmListener;
                if (onConfirmListener2 != null) {
                    onConfirmListener2.onClose(z);
                }
            }
        };
    }

    protected void showCalibrateTips() {
        showCalibrateDialog(new CalibrateDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity.26
            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public /* synthetic */ void onClose(boolean z, boolean z2) {
                onClose(z);
            }

            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public void onConfirm() {
                BaseActivity.this.count = 0;
            }

            @Override // com.qianhe.yct.dialog.CalibrateDialogFragment.OnConfirmListener
            public void onClose(boolean z) {
                BaseActivity.this.count = 0;
            }
        });
    }

    protected boolean isServiceRunning(Context context, Class<?> cls) {
        Iterator<ActivityManager.RunningServiceInfo> it = ((ActivityManager) context.getSystemService("activity")).getRunningServices(Integer.MAX_VALUE).iterator();
        while (it.hasNext()) {
            if (cls.getName().equals(it.next().service.getClassName())) {
                return true;
            }
        }
        return false;
    }

    public String formatCoords(String str, int i) {
        try {
            return formatCoords(Double.parseDouble(str), i);
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    protected String formatCoords(double d, int i) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            return "";
        }
        if (i < 0) {
            i = 0;
        }
        String plainString = BigDecimal.valueOf(d).setScale(i, RoundingMode.HALF_UP).toPlainString();
        return plainString.contains(".") ? plainString.replaceAll("0*$", "").replaceAll("\\.$", "") : plainString;
    }

    public String formatDouble(double d) {
        if (d == 0.0d) {
            return "";
        }
        String plainString = EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0.m(BigDecimal.valueOf(d)).toPlainString();
        return (plainString.contains(".") && plainString.endsWith(".")) ? plainString.substring(0, plainString.length() - 1) : plainString;
    }

    public String formatDistance(double d) {
        if (d >= 1000.0d) {
            double d2 = d / 1000.0d;
            int i = (int) d2;
            return d2 != ((double) i) ? String.format(Locale.ROOT, "%.3f km", Double.valueOf(d2)) : String.format("%s km", Integer.valueOf(i));
        }
        if (d < 1.0d) {
            return String.format("%s cm", Integer.valueOf((int) Math.floor(d * 100.0d)));
        }
        int i2 = (int) d;
        return d != ((double) i2) ? String.format(Locale.ROOT, "%.2f m", Double.valueOf(d)) : String.format("%s m", Integer.valueOf(i2));
    }

    protected String formatElevationDiffText(double d) {
        long jAbs = Math.abs(Math.round(d));
        if (jAbs < 1000) {
            return String.valueOf(Math.round(d));
        }
        return jAbs < 100000 ? String.format(Locale.ROOT, "%.1f", Double.valueOf(d / 100.0d)) : String.format(Locale.ROOT, "%.0f", Double.valueOf(d / 100.0d));
    }

    protected float getElevationDiffTextSize(String str, int i) {
        int length = str.length();
        if (length <= 2) {
            return i;
        }
        return length == 3 ? i - 10 : length == 4 ? i - 20 : i - 30;
    }

    public double calculatePhaseToHang() {
        float f = this.mSp.getFloat("zpy_antennaheight", 0.0f);
        return MultiBluetoothManager.getInstance(this).isKe76Pro() ? f + 0.125d : f;
    }

    protected String getCopySharecodeTips() {
        String string = LanguagePrefs.getString(this, R$string.copy_sharecode_tips);
        if (!getPackageName().equals("com.qianhe.xfix")) {
            return string;
        }
        if (LanguagePrefs.getCurrentLanguageCode(this).startsWith("zh")) {
            return string.replace("一铲通", "XFIX").replace("一鏟通", "XFIX");
        }
        return string.replace("YCT", "XFIX");
    }

    protected String buildShareCodeContent(String str) {
        return getCopySharecodeTips() + "\n" + LanguagePrefs.getString(this, R$string.please_enter_share_code) + str;
    }

    protected void showShareWayDialog(final String str) {
        if (TextUtils.isEmpty(str)) {
            Toast.makeText(this, R$string.data_anomaly, 0).show();
            return;
        }
        ShareWayDialogFragment shareWayDialogFragment = new ShareWayDialogFragment();
        shareWayDialogFragment.setOnConfirmListener(new ShareWayDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.base.BaseActivity.27
            @Override // com.qianhe.yct.dialog.ShareWayDialogFragment.OnConfirmListener
            public void onCopy() {
                BaseActivity.this.copyShareCodeToClipboard(str, false);
            }

            @Override // com.qianhe.yct.dialog.ShareWayDialogFragment.OnConfirmListener
            public void onShare() {
                BaseActivity.this.showWeChatOnlyChooser(str);
            }
        });
        shareWayDialogFragment.show(getSupportFragmentManager(), "ShareWayDialogFragment");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void copyShareCodeToClipboard(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            Toast.makeText(this, R$string.data_anomaly, 0).show();
            return;
        }
        String strBuildShareCodeContent = buildShareCodeContent(str);
        copyShareTextToClipboard(strBuildShareCodeContent);
        if (z) {
            sharePlainText(strBuildShareCodeContent);
        } else {
            Toast.makeText(this, R$string.copy_to_clipboard, 0).show();
        }
    }

    protected void copyShareTextToClipboard(String str) {
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("owner_pkg", getPackageName());
        ((ClipboardManager) getSystemService("clipboard")).setPrimaryClip(new ClipData(new ClipDescription("copied_text", new String[]{"text/plain"}, persistableBundle) { // from class: com.qianhe.yct.base.BaseActivity.28
            final /* synthetic */ PersistableBundle val$tag;

            {
                this.val$tag = persistableBundle;
                if (Build.VERSION.SDK_INT >= 24) {
                    setExtras(persistableBundle);
                }
            }
        }, new ClipData.Item(str)));
    }

    protected void sharePlainText(String str) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", str);
        startActivity(Intent.createChooser(intent, getString(R$string.share_to)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void shareFile(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        try {
            Uri uriForFile = FileProvider.getUriForFile(this, getPackageName() + ".provider", file);
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType(resolveShareMimeType(file.getName()));
            intent.putExtra("android.intent.extra.STREAM", uriForFile);
            intent.addFlags(1);
            startActivity(Intent.createChooser(intent, getString(R$string.share_to)));
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(this, R$string.not_support_share, 0).show();
        }
    }

    private static String resolveShareMimeType(String str) {
        if (str == null) {
            return "*/*";
        }
        String lowerCase = str.toLowerCase(Locale.US);
        if (lowerCase.endsWith(".csv")) {
            return "text/csv";
        }
        if (lowerCase.endsWith(".xls") || lowerCase.endsWith(".xlsx")) {
            return "application/vnd.ms-excel";
        }
        if (!lowerCase.endsWith(".txt")) {
            return "*/*";
        }
        return "text/plain";
    }

    protected void showWeChatOnlyChooser(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strBuildShareCodeContent = buildShareCodeContent(str);
        copyShareTextToClipboard(strBuildShareCodeContent);
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", strBuildShareCodeContent);
        if (!LanguagePrefs.isZH_CN(this)) {
            startActivity(Intent.createChooser(intent, getString(R$string.share_to)));
            return;
        }
        List<ResolveInfo> listQueryIntentActivities = getPackageManager().queryIntentActivities(intent, 65536);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : listQueryIntentActivities) {
            if ("com.tencent.mm".equals(resolveInfo.activityInfo.packageName)) {
                Intent intent2 = new Intent(intent);
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                intent2.setClassName(activityInfo.packageName, activityInfo.name);
                arrayList.add(intent2);
            }
        }
        if (arrayList.isEmpty()) {
            Toast.makeText(this, R$string.wechat_not_installed, 0).show();
            return;
        }
        Intent intentCreateChooser = Intent.createChooser((Intent) arrayList.remove(0), getString(R$string.share_to));
        if (intentCreateChooser != null) {
            if (!arrayList.isEmpty()) {
                intentCreateChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Intent[0]));
            }
            startActivity(intentCreateChooser);
        }
    }

    protected void finishPreviousActivity() {
        List<Activity> activityList = ((YCTApplication) getApplication()).getActivityList();
        if (activityList == null || activityList.isEmpty()) {
            return;
        }
        Iterator<Activity> it = activityList.iterator();
        while (it.hasNext()) {
            Activity next = it.next();
            if (next != null && !next.getClass().getName().equals(getClass().getName()) && !next.getClass().getName().equals(MainActivity.class.getName()) && !next.getClass().getName().equals(ShareListActivity.class.getName()) && !next.getClass().getName().equals(ShareCreateActivity.class.getName()) && !next.getClass().getName().equals(LocateInfoActivity.class.getName()) && !next.getClass().getName().equals(BluetoothActivity.class.getName()) && !next.getClass().getName().equals(ExcavatorListActivity.class.getName()) && !next.getClass().getName().equals(ExcavatorCreateActivity.class.getName()) && !next.getClass().getName().equals(ZeroingActivity.class.getName())) {
                next.finish();
                it.remove();
            }
        }
    }

    protected void finishNotMainActivity() {
        List<Activity> activityList = ((YCTApplication) getApplication()).getActivityList();
        if (activityList == null || activityList.isEmpty()) {
            return;
        }
        Iterator<Activity> it = activityList.iterator();
        while (it.hasNext()) {
            Activity next = it.next();
            if (next != null && !next.getClass().getName().equals(MainActivity.class.getName())) {
                next.finish();
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isWeChatInstalled() throws PackageManager.NameNotFoundException {
        try {
            getPackageManager().getPackageInfo("com.tencent.mm", 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    protected double formatOtherToMeter(int i, double d, int i2) {
        return UnitConvertUtils.toMeter(i, d);
    }

    protected double formatMetertoOther(int i, double d, int i2) {
        return UnitConvertUtils.fromMeter(i, d, i2);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.softInputTouchDownX = motionEvent.getRawX();
            this.softInputTouchDownY = motionEvent.getRawY();
            this.softInputTouchMoved = false;
            hideSoftInputIfTouchOutside(motionEvent.getRawX(), motionEvent.getRawY());
        } else if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked == 3) {
                    this.softInputTouchMoved = true;
                }
            } else if (!this.softInputTouchMoved) {
                float scaledTouchSlop = ViewConfiguration.get(this).getScaledTouchSlop();
                if (Math.abs(motionEvent.getRawX() - this.softInputTouchDownX) > scaledTouchSlop || Math.abs(motionEvent.getRawY() - this.softInputTouchDownY) > scaledTouchSlop) {
                    this.softInputTouchMoved = true;
                }
            }
        } else if (!this.softInputTouchMoved) {
            showSoftInputIfClickEditText(motionEvent.getRawX(), motionEvent.getRawY());
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    private void hideSoftInputIfTouchOutside(float f, float f2) {
        View currentFocus = getCurrentFocus();
        if ((currentFocus instanceof EditText) && findEditTextUnder(f, f2) == null) {
            currentFocus.clearFocus();
            InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
            }
        }
    }

    private void showSoftInputIfClickEditText(float f, float f2) {
        InputMethodManager inputMethodManager;
        EditText editTextFindEditTextUnder = findEditTextUnder(f, f2);
        if (editTextFindEditTextUnder == null || getCurrentFocus() == editTextFindEditTextUnder || (inputMethodManager = (InputMethodManager) getSystemService("input_method")) == null || isSoftInputVisible()) {
            return;
        }
        editTextFindEditTextUnder.requestFocus();
        inputMethodManager.showSoftInput(editTextFindEditTextUnder, 1);
    }

    private boolean isSoftInputVisible() {
        WindowInsets rootWindowInsets;
        View decorView = getWindow() != null ? getWindow().getDecorView() : null;
        if (decorView == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 30 && (rootWindowInsets = decorView.getRootWindowInsets()) != null && rootWindowInsets.isVisible(WindowInsets.Type.ime())) {
            return true;
        }
        decorView.getWindowVisibleDisplayFrame(new Rect());
        if (r0 - r2.bottom > decorView.getRootView().getHeight() * 0.15d) {
            return true;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        View currentFocus = getCurrentFocus();
        return inputMethodManager != null && (currentFocus instanceof EditText) && inputMethodManager.isActive(currentFocus) && inputMethodManager.isAcceptingText();
    }

    private boolean isTouchOnView(View view, float f, float f2) {
        if (view != null && view.isShown()) {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            if (f >= iArr[0] && f < r2 + view.getWidth()) {
                if (f2 >= iArr[1] && f2 < r1 + view.getHeight()) {
                    return true;
                }
            }
        }
        return false;
    }

    private EditText findEditTextUnder(float f, float f2) {
        View decorView = getWindow() != null ? getWindow().getDecorView() : null;
        if (decorView == null) {
            return null;
        }
        return findEditTextInHierarchy(decorView, f, f2);
    }

    private EditText findEditTextInHierarchy(View view, float f, float f2) {
        if (view.isShown() && isTouchOnView(view, f, f2)) {
            if (view instanceof EditText) {
                if (view.isEnabled()) {
                    return (EditText) view;
                }
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View childAt = viewGroup.getChildAt(childCount);
                    if (childAt.isShown() && isTouchOnView(childAt, f, f2)) {
                        EditText editTextFindEditTextInHierarchy = findEditTextInHierarchy(childAt, f, f2);
                        if (editTextFindEditTextInHierarchy != null) {
                            return editTextFindEditTextInHierarchy;
                        }
                        if (childAt.isClickable() || childAt.isLongClickable()) {
                            return null;
                        }
                    }
                }
            }
        }
        return null;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(LanguagePrefs.wrapContext(context));
    }

    protected void stopService() {
        if (getClass().getName().contains(MainActivity.class.getName())) {
            Intent intent = intentService;
            if (intent != null) {
                stopService(intent);
            }
            intentService = null;
            ScreenReceiver screenReceiver2 = screenReceiver;
            if (screenReceiver2 != null) {
                try {
                    unregisterReceiver(screenReceiver2);
                    screenReceiver = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            List<Activity> activityList = ((YCTApplication) getApplication()).getActivityList();
            if (activityList == null || activityList.isEmpty()) {
                return;
            }
            activityList.remove(this);
        }
    }
}
