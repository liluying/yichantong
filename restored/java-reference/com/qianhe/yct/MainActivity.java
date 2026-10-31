package com.qianhe.yct;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.nfc.Tag;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Process;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentResultListener;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.YctDeviceManager;
import com.google.gson.Gson;
import com.qh.diffclient.DiffClient;
import com.qh.yctdevice.YctDevice;
import com.qianhe.baselib.base.BaseProEntity;
import com.qianhe.baselib.bean.ArbitraryLineEntity;
import com.qianhe.baselib.bean.CurvedSlopeEntity;
import com.qianhe.baselib.bean.DikeEntity;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.bean.ExcavatorEntity;
import com.qianhe.baselib.bean.GGAEntity;
import com.qianhe.baselib.bean.GnssTransParamEntity;
import com.qianhe.baselib.bean.InsNavi;
import com.qianhe.baselib.bean.LineEntity;
import com.qianhe.baselib.bean.MultiPointAreaEntity;
import com.qianhe.baselib.bean.OnePointAreaEntity;
import com.qianhe.baselib.bean.PointGroupEntity;
import com.qianhe.baselib.bean.PolyLineEntity;
import com.qianhe.baselib.bean.ShareEntity;
import com.qianhe.baselib.bean.ShovelEntity;
import com.qianhe.baselib.bean.ShuaPoEntity;
import com.qianhe.baselib.bean.SiteLevelingEntity;
import com.qianhe.baselib.bean.ThreePointAreaEntity;
import com.qianhe.baselib.bean.WaGouEntity;
import com.qianhe.baselib.bean.ZhaoPingEntity;
import com.qianhe.baselib.enums.BluetoothStateEnum;
import com.qianhe.baselib.enums.ConnectModeEnum;
import com.qianhe.baselib.enums.DeviceType;
import com.qianhe.baselib.enums.ProjectEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.baselib.utils.NetworkChecker;
import com.qianhe.baselib.utils.NfcTagReader;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.event.GETHorizontalAngleRange;
import com.qianhe.rtkclientlib.event.RTKRegisterResult;
import com.qianhe.yct.application.YCTApplication;
import com.qianhe.yct.base.BaseActivity;
import com.qianhe.yct.databinding.ActivityMainBinding;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.db.SQLiteBatchColumnRenameUtil;
import com.qianhe.yct.db.UserSession;
import com.qianhe.yct.dialog.ExitDialogFragment;
import com.qianhe.yct.dialog.LoadingFragment;
import com.qianhe.yct.dialog.TipsDialogFragment;
import com.qianhe.yct.enums.BluetoothActionEnum;
import com.qianhe.yct.event.BluetoothConnectActionByMacEvent;
import com.qianhe.yct.event.BluetoothConnectStateEvent;
import com.qianhe.yct.event.CheckTokenResponse;
import com.qianhe.yct.event.CreateBucketResponse;
import com.qianhe.yct.event.CreateEngineeringResponse;
import com.qianhe.yct.event.CreateExcavatorResponse;
import com.qianhe.yct.event.CreateProjectResponse;
import com.qianhe.yct.event.DeviceUniqueIdEvent;
import com.qianhe.yct.event.GnssTransParamResponse;
import com.qianhe.yct.event.InitDataEvent;
import com.qianhe.yct.event.PointGroupResponse;
import com.qianhe.yct.event.QueryBucketResponse;
import com.qianhe.yct.event.QueryExcacatorResponse;
import com.qianhe.yct.event.QueryGnssEngineeringResponse;
import com.qianhe.yct.event.QueryGnssTransParamResponse;
import com.qianhe.yct.event.QueryPointGroupResponse;
import com.qianhe.yct.event.QueryPointResponse;
import com.qianhe.yct.event.QueryProjectResponse;
import com.qianhe.yct.event.QueryShareResponse;
import com.qianhe.yct.fragment.HomeFragment;
import com.qianhe.yct.fragment.SettingFragment;
import com.qianhe.yct.provider.NetworkLocationProvider;
import com.qianhe.yct.utils.BsPatchManager;
import com.qianhe.yct.utils.EngineeringProjectionParser;
import com.qianhe.yct.utils.NetworkDataLoader;
import com.qianhe.yct.utils.NetworkUserLoader;
import com.qianhe.yct.utils.PointLibSyncHelper;
import com.qianhe.yct.utils.SyncNameHelper;
import com.qianhe.yct.view.SimpleBottomNav;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class MainActivity extends BaseActivity {
    private boolean afterLogin;
    private ActivityMainBinding binding;
    private int bucketIndex;
    private List<ShovelEntity> bucketLocalList;
    private DatabaseManager databaseManager;
    private List<EngineeringEntity> engineeringLocalList;
    private int excavatorIndex;
    private List<ExcavatorEntity> excavatorLocalList;
    private ExitDialogFragment exitDialogFragment;
    private int index;
    private boolean initFocus;
    private boolean isBucketChange;
    private boolean isEngineeringSyncing;
    private boolean isExcavatorChange;
    private boolean isPause;
    private boolean isProChange;
    private boolean isTipRegisterOk;
    private boolean isTransParamChange;
    private boolean isUpdateDefaultCM;
    private List<BaseProEntity> localAll;
    private ScheduledFuture<?> logUploadFuture;
    private List<EngineeringEntity> loginUnassignedEngineerings;
    private List<ExcavatorEntity> loginUnassignedExcavators;
    private List<PointGroupEntity> loginUnassignedPointGroups;
    private List<BaseProEntity> loginUnassignedProjects;
    private List<ShovelEntity> loginUnassignedShovels;
    private List<GnssTransParamEntity> loginUnassignedTransParams;
    private InsNavi mINS;
    private NfcTagReader nfcTagReader;
    private boolean pendingPointGroupSyncAfterEngineering;
    private boolean pendingProjectSyncAfterEngineering;
    private long pendingServerCurrentId;
    private String pendingServerCurrentUuid;
    private boolean pendingSyncPointsAfterEngineeringSwitch;
    private boolean projectSyncActive;
    private boolean sessionStartedAfterStorage;
    private boolean skipCheckTokenDataSync;
    private LoadingFragment syncingProjectDialog;
    private int transParamIndex;
    private List<GnssTransParamEntity> transParamLocalList;
    private ScheduledExecutorService logUploadExecutor = Executors.newSingleThreadScheduledExecutor();
    private final ExecutorService executorService = Executors.newSingleThreadExecutor();
    private final Set<Long> pendingEngineeringCreateLocalIds = Collections.synchronizedSet(new HashSet());
    private final Gson gson = new Gson();
    private final MutableLiveData ggaLiveData = new MutableLiveData();

    @Override // com.qianhe.yct.base.BaseActivity
    protected void ivBackClick() {
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onHorizontalAngleRange(GETHorizontalAngleRange gETHorizontalAngleRange) {
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.binding = ActivityMainBinding.inflate(getLayoutInflater());
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        ((YCTApplication) getApplication()).setAppVersionCheckedComplete(false);
        View childAt = this.binding.viewPager.getChildAt(0);
        if (childAt instanceof RecyclerView) {
            childAt.setOverScrollMode(2);
        }
        initViewPager();
        getSupportFragmentManager().setFragmentResultListener("exit", this, new FragmentResultListener() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda4
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle2) {
                MainActivity.m1176$r8$lambda$8SPcDxgQJhr_oSmAtwAS0fvqkc(this.f$0, str, bundle2);
            }
        });
    }

    /* renamed from: $r8$lambda$8SPcDxgQJhr_oSmAtwAS0-fvqkc, reason: not valid java name */
    public static /* synthetic */ void m1176$r8$lambda$8SPcDxgQJhr_oSmAtwAS0fvqkc(MainActivity mainActivity, String str, Bundle bundle) {
        mainActivity.getClass();
        if (str.equals("exit") && bundle.getBoolean("confirm")) {
            mainActivity.eixt();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!z || this.initFocus) {
            return;
        }
        this.initFocus = true;
        finishNotMainActivity();
        overridePendingTransition(0, 0);
        initTopbarView();
        startSessionAfterStorageReady();
    }

    private void startSessionAfterStorageReady() {
        if (!hasPermissions("basic") || this.sessionStartedAfterStorage) {
            return;
        }
        this.sessionStartedAfterStorage = true;
        if (TextUtils.isEmpty(UserSession.get().getDeviceId())) {
            NetworkUserLoader.getInstance().getDeviceUniqueId();
        } else {
            startLogUploadTimer();
        }
        NetworkUserLoader.getInstance().checkTokenValid();
        checkNetworkAfterPermission();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void initData() throws PackageManager.NameNotFoundException, IntentFilter.MalformedMimeTypeException {
        startSessionAfterStorageReady();
        TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
        LogToFile.i("sim卡信息：" + telephonyManager.getSimOperator() + "，" + telephonyManager.getSimOperatorName() + "，" + telephonyManager.getSimCountryIso());
        try {
            LogToFile.i("差分客户端so包版本——> " + DiffClient.getVersion());
        } catch (Throwable th) {
            LogToFile.e("读取差分客户端so版本失败：" + th);
        }
        try {
            LogToFile.i("直通功能so包版本——> " + YctDevice.getVersion());
        } catch (Throwable th2) {
            LogToFile.e("读取直通功能so版本失败：" + th2);
        }
        initApkList(DeviceType.ZPY);
        LogToFile.i("当前手机信息: " + Build.MANUFACTURER + " " + Build.MODEL + " SDK:" + Build.VERSION.SDK_INT + "(Android " + Build.VERSION.RELEASE + ")");
        LogToFile.i("当前软件版本号: 2.0.2609.109(82) 构建时间: 202609091412");
        try {
            LogToFile.i("当前APK信息：store，targetSdk版本：" + getPackageManager().getPackageInfo(getPackageName(), 0).applicationInfo.targetSdkVersion);
        } catch (PackageManager.NameNotFoundException e) {
            LogToFile.e("当前APK信息：" + e);
        }
        LogToFile.i("分辨率：" + getResources().getDisplayMetrics().widthPixels + "×" + getResources().getDisplayMetrics().heightPixels);
        dataBaseColumnReName();
        executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.m1182$r8$lambda$VERg5ZQqqB0naQn032CDffeBKA(this.f$0);
            }
        });
        NetworkLocationProvider.getInstance().getNetworkLocation(this, new NetworkLocationProvider.LocationCallback() { // from class: com.qianhe.yct.MainActivity.1
            @Override // com.qianhe.yct.provider.NetworkLocationProvider.LocationCallback
            public void onLocationReceived(double d, double d2, double d3, float f, String str) {
                if (MainActivity.this.mINS == null) {
                    MainActivity.this.mINS = new InsNavi();
                    MainActivity.this.mINS.longitude = d2;
                    MainActivity.this.mINS.latitude = d;
                    MainActivity.this.mINS.elevation = d3;
                    ((BaseActivity) MainActivity.this).mSp.edit().putString("current_coords", d2 + "," + d + "," + d3).apply();
                }
            }

            @Override // com.qianhe.yct.provider.NetworkLocationProvider.LocationCallback
            public void onLocationFailed(String str) {
                LogToFile.e(str);
            }
        });
        initNFC();
    }

    /* renamed from: $r8$lambda$VERg5ZQ-qqB0naQn032CDffeBKA, reason: not valid java name */
    public static /* synthetic */ void m1182$r8$lambda$VERg5ZQqqB0naQn032CDffeBKA(MainActivity mainActivity) {
        mainActivity.getClass();
        DatabaseManager databaseManager = DatabaseManager.getInstance(mainActivity);
        mainActivity.databaseManager = databaseManager;
        databaseManager.cleanupDuplicateProjectsByUuid();
    }

    private void checkNetworkAfterPermission() {
        NetworkChecker.checkNetworkAsync(getApplicationContext(), new NetworkChecker.NetworkCheckCallback() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda21
            @Override // com.qianhe.baselib.utils.NetworkChecker.NetworkCheckCallback
            public final void onResult(boolean z) {
                MainActivity.m1186$r8$lambda$s51vbQEEpy3GYYgmQStRKKAuwU(this.f$0, z);
            }
        });
    }

    /* renamed from: $r8$lambda$s51vb-QEEpy3GYYgmQStRKKAuwU, reason: not valid java name */
    public static /* synthetic */ void m1186$r8$lambda$s51vbQEEpy3GYYgmQStRKKAuwU(final MainActivity mainActivity, boolean z) {
        mainActivity.getClass();
        if (z) {
            LogToFile.i("网络可用");
        } else {
            LogToFile.e("网络探测失败，提示检查设备网络");
            mainActivity.runOnUiThread(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.m1187$r8$lambda$tfpWQDZZCtKxDz_EOAIkGmPzcw(this.f$0);
                }
            });
        }
    }

    /* renamed from: $r8$lambda$tfpWQD-ZZCtKxDz_EOAIkGmPzcw, reason: not valid java name */
    public static /* synthetic */ void m1187$r8$lambda$tfpWQDZZCtKxDz_EOAIkGmPzcw(MainActivity mainActivity) {
        if (mainActivity.isFinishing() || mainActivity.isDestroyed()) {
            return;
        }
        mainActivity.showTipDialog(mainActivity.getString(R$string.please_check_device_network), mainActivity.getString(R$string.ok), null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(DeviceUniqueIdEvent deviceUniqueIdEvent) {
        startLogUploadTimer();
    }

    private void initNFC() throws IntentFilter.MalformedMimeTypeException {
        NfcTagReader nfcTagReader = new NfcTagReader();
        this.nfcTagReader = nfcTagReader;
        if (!nfcTagReader.isNfcAvailable(this)) {
            LogToFile.i("设备不支持NFC功能");
            return;
        }
        if (!this.nfcTagReader.isNfcEnabled(this)) {
            LogToFile.i("请在设置中开启NFC功能");
        } else if (!this.nfcTagReader.hasNfcPermission(this)) {
            requestNfcPermission();
        } else {
            startBlueService();
            this.nfcTagReader.initNfcReader(this);
        }
    }

    private boolean isZpyDeviceConnected() {
        MyBluetoothDevice currentDevice = YCTApplication.getInstance().getCurrentDevice();
        return currentDevice != null && currentDevice.state == BluetoothStateEnum.CONNECTED.getState();
    }

    private void updateNfcForegroundDispatch() {
        NfcTagReader nfcTagReader = this.nfcTagReader;
        if (nfcTagReader == null || !nfcTagReader.hasNfcPermission(this)) {
            return;
        }
        if (isZpyDeviceConnected()) {
            this.nfcTagReader.disableForegroundDispatch(this);
        } else {
            this.nfcTagReader.enableForegroundDispatch(this);
        }
    }

    private void requestNfcPermission() {
        if (Build.VERSION.SDK_INT >= 23) {
            requestPermissions(new String[]{"android.permission.NFC"}, 1001);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) throws IllegalAccessException, SecurityException, IntentFilter.MalformedMimeTypeException, IllegalArgumentException, InvocationTargetException {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1001) {
            int i2 = 0;
            while (true) {
                if (i2 >= strArr.length) {
                    break;
                }
                if (!"android.permission.NFC".equals(strArr[i2])) {
                    i2++;
                } else if (iArr[i2] == 0) {
                    this.nfcTagReader.initNfcReader(this);
                    LogToFile.i("NFC权限已授予");
                    return;
                }
            }
            LogToFile.i("NFC权限被拒绝，请在设置中手动授权");
            Toast.makeText(this, "NFC权限被拒绝，请在设置中手动授权", 1).show();
        }
    }

    private void dataBaseColumnReName() {
        try {
            DatabaseManager databaseManager = DatabaseManager.getInstance(this);
            this.databaseManager = databaseManager;
            if (databaseManager.getDatabase().isOpen()) {
                LogToFile.i("当前系统的数据库版本：" + SQLiteBatchColumnRenameUtil.getSQLiteVersion(this.databaseManager.getDatabase()));
                LogToFile.i("数据库版本号:" + this.databaseManager.getDatabase().getVersion());
                if (SQLiteBatchColumnRenameUtil.isColumnExists(this.databaseManager.getDatabase(), "zhaoping", "create_time")) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("_id", "id");
                    linkedHashMap.put("create_time", "createTime");
                    if (SQLiteBatchColumnRenameUtil.renameColumns(this.databaseManager.getDatabase(), "zhaoping", linkedHashMap)) {
                        LogToFile.i("找平-批量字段重命名成功！");
                        SQLiteBatchColumnRenameUtil.verifyColumnRenames(this.databaseManager.getDatabase(), "zhaoping", linkedHashMap);
                    } else {
                        LogToFile.i("找平-批量字段重命名失败！");
                    }
                    if (SQLiteBatchColumnRenameUtil.renameColumns(this.databaseManager.getDatabase(), "shuapo", linkedHashMap)) {
                        LogToFile.i("刷坡-批量字段重命名成功！");
                        SQLiteBatchColumnRenameUtil.verifyColumnRenames(this.databaseManager.getDatabase(), "shuapo", linkedHashMap);
                    } else {
                        LogToFile.i("刷坡-批量字段重命名失败！");
                    }
                    if (SQLiteBatchColumnRenameUtil.renameColumns(this.databaseManager.getDatabase(), "wagou", linkedHashMap)) {
                        LogToFile.i("挖沟-批量字段重命名成功！");
                        SQLiteBatchColumnRenameUtil.verifyColumnRenames(this.databaseManager.getDatabase(), "wagou", linkedHashMap);
                    } else {
                        LogToFile.i("挖沟-批量字段重命名失败！");
                    }
                    if (SQLiteBatchColumnRenameUtil.renameColumns(this.databaseManager.getDatabase(), "pointLib", linkedHashMap)) {
                        LogToFile.i("点库-批量字段重命名成功！");
                        SQLiteBatchColumnRenameUtil.verifyColumnRenames(this.databaseManager.getDatabase(), "pointLib", linkedHashMap);
                    } else {
                        LogToFile.i("点库-批量字段重命名失败！");
                    }
                    if (SQLiteBatchColumnRenameUtil.renameColumns(this.databaseManager.getDatabase(), "cors", linkedHashMap)) {
                        LogToFile.i("CORS-批量字段重命名成功！");
                        SQLiteBatchColumnRenameUtil.verifyColumnRenames(this.databaseManager.getDatabase(), "cors", linkedHashMap);
                    } else {
                        LogToFile.i("CORS-批量字段重命名失败！");
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e("数据库字段重命名：" + e);
        }
    }

    private void startLogUploadTimer() {
        LogToFile.i("开启定时器(日志上传查询)。");
        ScheduledExecutorService scheduledExecutorService = this.logUploadExecutor;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            this.logUploadExecutor = Executors.newSingleThreadScheduledExecutor();
        }
        this.logUploadFuture = this.logUploadExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.qianhe.yct.MainActivity.2
            @Override // java.lang.Runnable
            public void run() {
                NetworkUserLoader.getInstance().queryNeedUploadLog(MainActivity.this);
            }
        }, 0L, 180L, TimeUnit.SECONDS);
    }

    private void stopLogUploadTimer() {
        LogToFile.i("停止定时器(日志上传查询)。");
        ScheduledFuture<?> scheduledFuture = this.logUploadFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.logUploadFuture = null;
        this.logUploadExecutor.shutdownNow();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected FrameLayout initTopBar() {
        this.binding.topBar.ivBackTb.setVisibility(8);
        this.binding.topBar.tvTitle.setText(getString(R$string.app_name));
        this.binding.topBar.tvTitle.setTextColor(ContextCompat.getColor(this, R$color.theme));
        if (this.mSp.getInt("mode", ConnectModeEnum.BLE.getType()) == ConnectModeEnum.DEMO.getType()) {
            this.binding.topBar.tvDemoTip.setVisibility(0);
        }
        return this.binding.topBar.getRoot();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected View getRootView() {
        return this.binding.getRoot();
    }

    public LiveData observeGGA() {
        return this.ggaLiveData;
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void getGGA(GGAEntity gGAEntity) {
        if (gGAEntity == null) {
            return;
        }
        this.ggaLiveData.setValue(gGAEntity);
        if (gGAEntity.deviceType != DeviceType.ZPY || gGAEntity.quality <= 0) {
            return;
        }
        double d = gGAEntity.longitude;
        if (d == 0.0d || this.isUpdateDefaultCM) {
            return;
        }
        updateDefaultEngineeringCentralMeridian(d);
    }

    private void updateDefaultEngineeringCentralMeridian(double d) {
        EngineeringEntity.TransverseMercatorParams transverseMercatorParams;
        EngineeringEntity.GaussKrugerParams gaussKrugerParams;
        DatabaseManager databaseManager = DatabaseManager.getInstance(this);
        this.databaseManager = databaseManager;
        EngineeringEntity engineeringEntityQueryDefaultEngineering = databaseManager.queryDefaultEngineering();
        if (engineeringEntityQueryDefaultEngineering != null) {
            int centralMeridian = getCentralMeridian(d);
            int i = engineeringEntityQueryDefaultEngineering.projectionType;
            if (i == 1 && (gaussKrugerParams = engineeringEntityQueryDefaultEngineering.gaussKrugerParams) != null) {
                if (gaussKrugerParams.lon0 == 0.0d) {
                    gaussKrugerParams.lon0 = centralMeridian;
                    this.databaseManager.updateEngineering(engineeringEntityQueryDefaultEngineering);
                    this.isUpdateDefaultCM = true;
                    LogToFile.i("通过GGA更新默认工程高斯投影中央子午线为：" + centralMeridian);
                    return;
                }
                this.isUpdateDefaultCM = true;
                return;
            }
            if (i != 3 || (transverseMercatorParams = engineeringEntityQueryDefaultEngineering.transverseMercatorParams) == null) {
                this.isUpdateDefaultCM = true;
                return;
            }
            if (transverseMercatorParams.lon0 == 0.0d) {
                transverseMercatorParams.lon0 = centralMeridian;
                this.databaseManager.updateEngineering(engineeringEntityQueryDefaultEngineering);
                this.isUpdateDefaultCM = true;
                LogToFile.i("通过GGA更新默认工程横轴墨卡托投影中央子午线为：" + centralMeridian);
                return;
            }
            this.isUpdateDefaultCM = true;
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void onINsNavi(InsNavi insNavi) {
        this.mINS = insNavi;
    }

    private void initViewPager() {
        final List listAsList = Arrays.asList(new HomeFragment(), new SettingFragment());
        this.binding.viewPager.setAdapter(new FragmentStateAdapter(this) { // from class: com.qianhe.yct.MainActivity.3
            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public Fragment createFragment(int i) {
                return (Fragment) listAsList.get(i);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return listAsList.size();
            }
        });
        this.binding.bottomNav.setOnNavItemClickListener(new SimpleBottomNav.OnNavItemClickListener() { // from class: com.qianhe.yct.MainActivity.4
            @Override // com.qianhe.yct.view.SimpleBottomNav.OnNavItemClickListener
            public void onItemClick(int i) {
                MainActivity.this.binding.viewPager.setCurrentItem(i, true);
            }
        });
        this.binding.viewPager.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.qianhe.yct.MainActivity.5
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                MainActivity.this.binding.bottomNav.setSelectedIndex(i);
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CheckTokenResponse checkTokenResponse) {
        if (checkTokenResponse.state == 0) {
            YctDeviceManager.getInstanceH5().notifyUserLogged(UserSession.get().getUserId());
            if (YCTApplication.getInstance().isSynDataFlag() || this.skipCheckTokenDataSync) {
                this.skipCheckTokenDataSync = false;
                return;
            } else {
                startDataSyncAfterTokenValid(false);
                return;
            }
        }
        if (TextUtils.isEmpty(UserSession.get().getToken())) {
            String clipboard = readClipboard();
            if (clipboard.contains(getString(R$string.please_enter_share_code))) {
                LogToFile.i("剪切板内容：" + clipboard);
                showTipDialog(getString(R$string.current_not_login), getString(R$string.goto_login), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.MainActivity.6
                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onClose(boolean z) {
                    }

                    @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                    public void onConfirm() {
                        MainActivity.this.gotoUserManage();
                    }
                });
                return;
            }
            return;
        }
        if ("token error".equals(checkTokenResponse.msg)) {
            YctDeviceManager.getInstanceH5().notifyUserLogged(-1L);
            UserSession.get().clearLoginInfo();
            showTipDialog(getString(R$string.current_login_offline), getString(R$string.re_login), new TipsDialogFragment.OnConfirmListener() { // from class: com.qianhe.yct.MainActivity.7
                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onClose(boolean z) {
                }

                @Override // com.qianhe.yct.dialog.TipsDialogFragment.OnConfirmListener
                public void onConfirm() {
                    MainActivity.this.gotoUserManage();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void synProject() throws Throwable {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.synProject();
                }
            });
            return;
        }
        DatabaseManager databaseManager = DatabaseManager.getInstance(this);
        this.databaseManager = databaseManager;
        databaseManager.cleanupDuplicateProjectsByUuid();
        this.databaseManager.applyLatestCurrentEngineeringParams();
        this.databaseManager.renameUnsyncedLocalDuplicatesForAllEngineerings();
        this.localAll = getLoacalData();
        this.projectSyncActive = true;
        NetworkUserLoader.getInstance().queryProjectByType(null, false);
    }

    private void startDataSyncAfterTokenValid(boolean z) {
        this.pendingProjectSyncAfterEngineering = true;
        this.pendingPointGroupSyncAfterEngineering = z;
        this.pendingEngineeringCreateLocalIds.clear();
        this.pendingServerCurrentUuid = null;
        this.pendingServerCurrentId = 0L;
        if (this.afterLogin) {
            DatabaseManager databaseManager = DatabaseManager.getInstance(this);
            this.databaseManager = databaseManager;
            if (databaseManager.currentBelongUid() != 0) {
                this.databaseManager.removeUnassignedDuplicatesAlreadyOwnedByCurrentUser();
            }
            this.loginUnassignedEngineerings = this.databaseManager.queryUnassignedEngineering();
            this.loginUnassignedProjects = this.databaseManager.queryUnassignedProjectsAcrossEngineerings();
            this.loginUnassignedExcavators = this.databaseManager.queryUnassignedExcavators();
            this.loginUnassignedShovels = this.databaseManager.queryUnassignedShovels();
            this.loginUnassignedTransParams = this.databaseManager.queryUnassignedGnssTransParams();
            this.loginUnassignedPointGroups = this.databaseManager.queryUnassignedPointGroups();
            this.databaseManager.claimUnassignedDataToCurrentUser();
        } else {
            this.loginUnassignedEngineerings = null;
            this.loginUnassignedProjects = null;
            this.loginUnassignedExcavators = null;
            this.loginUnassignedShovels = null;
            this.loginUnassignedTransParams = null;
            this.loginUnassignedPointGroups = null;
            this.databaseManager = DatabaseManager.getInstance(this);
            if (UserSession.get().isLoggedIn() && this.databaseManager.currentBelongUid() != 0) {
                this.databaseManager.removeUnassignedDuplicatesAlreadyOwnedByCurrentUser();
                this.databaseManager.claimUnassignedDataToCurrentUser();
            }
        }
        synExcavator();
        synBucket();
        synEngineering();
        synTransParam();
    }

    private boolean shouldUploadBelongUid(boolean z, long j) {
        if (!z) {
            return true;
        }
        DatabaseManager databaseManager = this.databaseManager;
        if (databaseManager == null || !databaseManager.getDatabase().isOpen()) {
            this.databaseManager = DatabaseManager.getInstance(this);
        }
        return this.databaseManager.isLoginSyncBelongUid(j);
    }

    private void tryStartDeferredProjectSync() throws Throwable {
        if ((this.pendingProjectSyncAfterEngineering || this.pendingPointGroupSyncAfterEngineering) && !this.isEngineeringSyncing && this.pendingEngineeringCreateLocalIds.isEmpty()) {
            applyPendingServerCurrentEngineering();
            boolean z = this.pendingProjectSyncAfterEngineering;
            boolean z2 = this.pendingPointGroupSyncAfterEngineering;
            this.pendingProjectSyncAfterEngineering = false;
            this.pendingPointGroupSyncAfterEngineering = false;
            if (z) {
                synProject();
            }
            if (z2) {
                synPointGroup();
            }
        }
    }

    private void applyPendingServerCurrentEngineering() {
        DatabaseManager databaseManager = this.databaseManager;
        if (databaseManager == null || !databaseManager.getDatabase().isOpen()) {
            this.databaseManager = DatabaseManager.getInstance(this);
        }
        EngineeringEntity engineeringEntityQueryCurrentEngineering = this.databaseManager.queryCurrentEngineering();
        if ((this.pendingServerCurrentId > 0 || !TextUtils.isEmpty(this.pendingServerCurrentUuid)) && this.databaseManager.applyServerCurrentEngineering(this.pendingServerCurrentUuid, this.pendingServerCurrentId)) {
            LogToFile.i("工程上传完成后对齐平台当前工程: uuid=" + this.pendingServerCurrentUuid + ", id=" + this.pendingServerCurrentId);
        }
        this.databaseManager.applyLatestCurrentEngineeringParams();
        EngineeringEntity engineeringEntityQueryCurrentEngineering2 = this.databaseManager.queryCurrentEngineering();
        if (hasCurrentEngineeringChanged(engineeringEntityQueryCurrentEngineering, engineeringEntityQueryCurrentEngineering2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("项目同步前当前工程已切换: ");
            String str = "null";
            sb.append(engineeringEntityQueryCurrentEngineering != null ? engineeringEntityQueryCurrentEngineering.name : "null");
            sb.append(" -> ");
            if (engineeringEntityQueryCurrentEngineering2 != null) {
                str = engineeringEntityQueryCurrentEngineering2.name;
            }
            sb.append(str);
            LogToFile.i(sb.toString());
        }
        this.pendingServerCurrentUuid = null;
        this.pendingServerCurrentId = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void synExcavator() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.synExcavator();
                }
            });
            return;
        }
        DatabaseManager databaseManager = DatabaseManager.getInstance(this);
        this.databaseManager = databaseManager;
        this.excavatorLocalList = databaseManager.queryExcavatorByUserId(0L);
        this.excavatorIndex = 0;
        NetworkUserLoader.getInstance().queryExcavator();
    }

    private void uploadExcavator() {
        List<ExcavatorEntity> list = this.loginUnassignedExcavators;
        if (list == null) {
            list = this.excavatorLocalList;
        }
        int i = this.excavatorIndex;
        if (i <= -1 || list == null || i >= list.size()) {
            return;
        }
        ExcavatorEntity excavatorEntity = list.get(this.excavatorIndex);
        if (TextUtils.isEmpty(excavatorEntity.calibrateUUid)) {
            if (shouldUploadBelongUid(this.loginUnassignedExcavators != null, excavatorEntity.userId)) {
                NetworkUserLoader.getInstance().createExcavator(this, excavatorEntity);
                return;
            }
        }
        this.excavatorIndex++;
        uploadExcavator();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(CreateExcavatorResponse createExcavatorResponse) {
        this.excavatorIndex++;
        uploadExcavator();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(QueryExcacatorResponse queryExcacatorResponse) {
        if (queryExcacatorResponse == null || queryExcacatorResponse.state != 0) {
            return;
        }
        updateExcavatorData(queryExcacatorResponse.list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateExcavatorData(final List<ExcavatorEntity> list) {
        DatabaseManager databaseManager;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.updateExcavatorData(list);
                }
            });
            return;
        }
        this.databaseManager = DatabaseManager.getInstance(this);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!list.isEmpty()) {
            List<ExcavatorEntity> listQueryExcavatorByUserId = this.databaseManager.queryExcavatorByUserId(0L);
            if (!listQueryExcavatorByUserId.isEmpty()) {
                for (ExcavatorEntity excavatorEntity : listQueryExcavatorByUserId) {
                    if (!arrayList2.contains(excavatorEntity.calibrateUUid)) {
                        arrayList2.add(excavatorEntity.calibrateUUid);
                    }
                    for (ExcavatorEntity excavatorEntity2 : list) {
                        if (!arrayList.contains(excavatorEntity2.calibrateUUid)) {
                            arrayList.add(excavatorEntity2.calibrateUUid);
                        }
                        if (excavatorEntity2.calibrateUUid.equals(excavatorEntity.calibrateUUid)) {
                            if (excavatorEntity.version < excavatorEntity2.version || excavatorEntity.updateTime <= excavatorEntity2.updateTime) {
                                excavatorEntity2.localId = excavatorEntity.localId;
                                excavatorEntity2.showUnit = excavatorEntity.showUnit;
                                excavatorEntity2.name = SyncNameHelper.resolve(excavatorEntity.name, excavatorEntity2.name);
                                if (!excavatorEntity2.equals(excavatorEntity)) {
                                    this.databaseManager.updateExcavatorById(excavatorEntity2);
                                }
                            } else {
                                NetworkUserLoader.getInstance().modifyExcavator(excavatorEntity);
                                this.isExcavatorChange = true;
                            }
                        }
                    }
                }
                if (this.isExcavatorChange) {
                    this.isExcavatorChange = false;
                    NetworkUserLoader.getInstance().queryExcavator();
                    return;
                }
            }
            this.databaseManager = DatabaseManager.getInstance(this);
            for (ExcavatorEntity excavatorEntity3 : list) {
                if (!arrayList2.contains(excavatorEntity3.calibrateUUid)) {
                    List<ExcavatorEntity> listQueryExcavatorByName = this.databaseManager.queryExcavatorByName(excavatorEntity3.name);
                    if (listQueryExcavatorByName.isEmpty()) {
                        this.databaseManager.insertExcavator(excavatorEntity3);
                    } else {
                        final ExcavatorEntity excavatorEntity4 = listQueryExcavatorByName.get(0);
                        if (excavatorEntity3.createTime > excavatorEntity4.createTime) {
                            excavatorEntity3.localId = excavatorEntity4.localId;
                            excavatorEntity3.name = SyncNameHelper.resolve(excavatorEntity4.name, excavatorEntity3.name);
                            this.databaseManager.updateExcavatorById(excavatorEntity3);
                        } else {
                            NetworkUserLoader.getInstance().delExcavator(excavatorEntity3);
                            this.binding.getRoot().postDelayed(new Runnable() { // from class: com.qianhe.yct.MainActivity.8
                                @Override // java.lang.Runnable
                                public void run() {
                                    NetworkUserLoader.getInstance().createExcavator(MainActivity.this, excavatorEntity4);
                                }
                            }, 500L);
                        }
                    }
                }
            }
        }
        if (!this.excavatorLocalList.isEmpty()) {
            for (ExcavatorEntity excavatorEntity5 : this.excavatorLocalList) {
                if (!TextUtils.isEmpty(excavatorEntity5.calibrateUUid) && !arrayList.contains(excavatorEntity5.calibrateUUid) && (databaseManager = this.databaseManager) != null) {
                    databaseManager.deleteExcavatorById(excavatorEntity5);
                }
            }
        }
        uploadExcavator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void synBucket() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.synBucket();
                }
            });
            return;
        }
        DatabaseManager databaseManager = DatabaseManager.getInstance(this);
        this.databaseManager = databaseManager;
        this.bucketLocalList = databaseManager.queryShovelByName(null);
        this.bucketIndex = 0;
        NetworkUserLoader.getInstance().queryBucket();
    }

    private void uploadBucket() {
        List<ShovelEntity> list = this.loginUnassignedShovels;
        if (list == null) {
            list = this.bucketLocalList;
        }
        int i = this.bucketIndex;
        if (i <= -1 || list == null || i >= list.size()) {
            return;
        }
        ShovelEntity shovelEntity = list.get(this.bucketIndex);
        if (TextUtils.isEmpty(shovelEntity.bucket_uuid)) {
            if (shouldUploadBelongUid(this.loginUnassignedShovels != null, shovelEntity.belong_uid)) {
                NetworkUserLoader.getInstance().createBucket(shovelEntity);
                return;
            }
        }
        this.bucketIndex++;
        uploadBucket();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(CreateBucketResponse createBucketResponse) {
        ShovelEntity shovelEntity;
        if (createBucketResponse.state == 0 && (shovelEntity = createBucketResponse.shovelEntity) != null) {
            this.databaseManager.updateShovelById(shovelEntity);
        }
        this.bucketIndex++;
        uploadBucket();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(QueryBucketResponse queryBucketResponse) {
        if (queryBucketResponse == null || queryBucketResponse.state != 0) {
            return;
        }
        updateBucketData(queryBucketResponse.list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBucketData(final List<ShovelEntity> list) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.updateBucketData(list);
                }
            });
            return;
        }
        this.databaseManager = DatabaseManager.getInstance(this);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!list.isEmpty()) {
            List<ShovelEntity> listQueryShovelByName = this.databaseManager.queryShovelByName(null);
            if (!listQueryShovelByName.isEmpty()) {
                for (ShovelEntity shovelEntity : listQueryShovelByName) {
                    if (!TextUtils.isEmpty(shovelEntity.bucket_uuid)) {
                        arrayList2.add(shovelEntity.bucket_uuid);
                    }
                    for (ShovelEntity shovelEntity2 : list) {
                        if (!arrayList.contains(shovelEntity2.bucket_uuid)) {
                            arrayList.add(shovelEntity2.bucket_uuid);
                        }
                        String str = shovelEntity2.bucket_uuid;
                        if (str != null && str.equals(shovelEntity.bucket_uuid)) {
                            if (shovelEntity.version < shovelEntity2.version || shovelEntity.updateTime <= shovelEntity2.updateTime) {
                                shovelEntity2.localId = shovelEntity.localId;
                                if (!shovelEntity2.equals(shovelEntity)) {
                                    this.databaseManager.updateShovelById(shovelEntity2);
                                }
                            } else {
                                NetworkUserLoader.getInstance().modifyBucket(shovelEntity);
                                this.isBucketChange = true;
                            }
                        }
                    }
                }
                if (this.isBucketChange) {
                    this.isBucketChange = false;
                    NetworkUserLoader.getInstance().queryBucket();
                    return;
                }
            }
            for (ShovelEntity shovelEntity3 : list) {
                if (!arrayList2.contains(shovelEntity3.bucket_uuid)) {
                    List<ShovelEntity> listQueryShovelByName2 = this.databaseManager.queryShovelByName(shovelEntity3.name);
                    if (listQueryShovelByName2.isEmpty()) {
                        this.databaseManager.insertShovel(shovelEntity3);
                    } else {
                        final ShovelEntity shovelEntity4 = listQueryShovelByName2.get(0);
                        if (shovelEntity3.createTime > shovelEntity4.createTime) {
                            shovelEntity3.localId = shovelEntity4.localId;
                            this.databaseManager.updateShovelById(shovelEntity3);
                        } else {
                            NetworkUserLoader.getInstance().delBucket(shovelEntity3);
                            this.binding.getRoot().postDelayed(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda6
                                @Override // java.lang.Runnable
                                public final void run() {
                                    NetworkUserLoader.getInstance().createBucket(shovelEntity4);
                                }
                            }, 500L);
                        }
                    }
                }
            }
        }
        if (!this.bucketLocalList.isEmpty()) {
            for (ShovelEntity shovelEntity5 : this.bucketLocalList) {
                if (!TextUtils.isEmpty(shovelEntity5.bucket_uuid) && !arrayList.contains(shovelEntity5.bucket_uuid)) {
                    this.databaseManager.deleteShovelById(shovelEntity5);
                }
            }
        }
        uploadBucket();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void synEngineering() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.synEngineering();
                }
            });
            return;
        }
        if (this.isEngineeringSyncing || TextUtils.isEmpty(UserSession.get().getToken())) {
            return;
        }
        this.isEngineeringSyncing = true;
        DatabaseManager databaseManager = DatabaseManager.getInstance(this);
        this.databaseManager = databaseManager;
        this.engineeringLocalList = databaseManager.queryAllEngineering();
        NetworkUserLoader.getInstance().queryGnssEngineering(null, null, null, null, null, 0L, 0L, 1, 100);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void synPointGroup() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.synPointGroup();
                }
            });
        } else {
            if (TextUtils.isEmpty(UserSession.get().getToken())) {
                return;
            }
            this.databaseManager = DatabaseManager.getInstance(this);
            NetworkUserLoader.getInstance().queryPointGroup(null, null, null, 0L, 0L, 1, 100);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(final QueryPointGroupResponse queryPointGroupResponse) {
        final boolean z = this.pendingSyncPointsAfterEngineeringSwitch;
        if (queryPointGroupResponse == null || queryPointGroupResponse.state != 0) {
            this.loginUnassignedPointGroups = null;
            if (z) {
                this.pendingSyncPointsAfterEngineeringSwitch = false;
                executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.syncAllGroupPoints();
                    }
                });
                return;
            }
            return;
        }
        this.pendingSyncPointsAfterEngineeringSwitch = false;
        final List<PointGroupEntity> list = this.loginUnassignedPointGroups;
        this.loginUnassignedPointGroups = null;
        executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.$r8$lambda$bNsGDwHIkTNfHIuz_NR4JTyWLSY(this.f$0, queryPointGroupResponse, list, z);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$bNsGDwHIkTNfHIuz_NR4JTyWLSY(MainActivity mainActivity, QueryPointGroupResponse queryPointGroupResponse, List list, boolean z) {
        mainActivity.getClass();
        DatabaseManager databaseManager = DatabaseManager.getInstance(mainActivity);
        mainActivity.databaseManager = databaseManager;
        PointLibSyncHelper.mergePointGroupsFromServer(databaseManager, queryPointGroupResponse.list, list);
        if (z) {
            mainActivity.syncAllGroupPoints();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncAllGroupPoints() {
        if (this.databaseManager == null) {
            this.databaseManager = DatabaseManager.getInstance(this);
        }
        for (PointGroupEntity pointGroupEntity : this.databaseManager.queryAllPointGroups()) {
            if (pointGroupEntity != null && pointGroupEntity.groupId > 0) {
                NetworkUserLoader.getInstance().queryPoints(pointGroupEntity.groupId, null, null, 0L, 0L, 1, 200);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(final QueryPointResponse queryPointResponse) {
        if (queryPointResponse == null || queryPointResponse.state != 0 || queryPointResponse.list == null) {
            return;
        }
        executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.$r8$lambda$5niABjwizx6hhUfCXZP8SHUYdNY(this.f$0, queryPointResponse);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$5niABjwizx6hhUfCXZP8SHUYdNY(MainActivity mainActivity, QueryPointResponse queryPointResponse) {
        PointGroupEntity next;
        mainActivity.getClass();
        DatabaseManager databaseManager = DatabaseManager.getInstance(mainActivity);
        mainActivity.databaseManager = databaseManager;
        Iterator<PointGroupEntity> it = databaseManager.queryAllPointGroups().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (next.groupId == queryPointResponse.groupId) {
                    break;
                }
            }
        }
        if (next == null) {
            return;
        }
        PointLibSyncHelper.mergePointsFromServer(mainActivity.databaseManager, next, queryPointResponse.list);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(PointGroupResponse pointGroupResponse) {
        if (pointGroupResponse == null || pointGroupResponse.state != 0 || pointGroupResponse.groupLocalId <= 0 || pointGroupResponse.id <= 0) {
            return;
        }
        DatabaseManager databaseManager = DatabaseManager.getInstance(this);
        this.databaseManager = databaseManager;
        databaseManager.updatePointGroupServerIds(pointGroupResponse.groupLocalId, pointGroupResponse.id, pointGroupResponse.uuid);
        PointGroupEntity pointGroupEntity = pointGroupResponse.entity;
        if (pointGroupEntity != null) {
            pointGroupEntity.belongUid = UserSession.get().getUserId();
        }
    }

    private void uploadEngineering() throws Throwable {
        List<EngineeringEntity> list = this.loginUnassignedEngineerings;
        if (list == null) {
            list = this.engineeringLocalList;
        }
        if (list == null) {
            tryStartDeferredProjectSync();
            return;
        }
        this.pendingEngineeringCreateLocalIds.clear();
        ArrayList arrayList = new ArrayList();
        for (EngineeringEntity engineeringEntity : list) {
            if (engineeringEntity != null && TextUtils.isEmpty(engineeringEntity.engineeringUuid)) {
                if (engineeringEntity.editState != 1) {
                    if (shouldUploadBelongUid(this.loginUnassignedEngineerings != null, engineeringEntity.belongUid)) {
                        this.pendingEngineeringCreateLocalIds.add(Long.valueOf(engineeringEntity.id));
                        arrayList.add(engineeringEntity);
                    }
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            NetworkUserLoader.getInstance().createGnssEngineering((EngineeringEntity) it.next());
        }
        if (this.pendingEngineeringCreateLocalIds.isEmpty()) {
            tryStartDeferredProjectSync();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(CreateEngineeringResponse createEngineeringResponse) throws Throwable {
        if (createEngineeringResponse != null) {
            long j = createEngineeringResponse.localDbId;
            if (j <= 0) {
                return;
            }
            boolean zRemove = this.pendingEngineeringCreateLocalIds.remove(Long.valueOf(j));
            if (createEngineeringResponse.state != 0 || createEngineeringResponse.id <= 0) {
                if (zRemove) {
                    LogToFile.e("工程上传失败 localId=" + createEngineeringResponse.localDbId + " err=" + createEngineeringResponse.errMsg);
                }
                tryStartDeferredProjectSync();
                return;
            }
            DatabaseManager databaseManager = this.databaseManager;
            if (databaseManager == null || !databaseManager.getDatabase().isOpen()) {
                this.databaseManager = DatabaseManager.getInstance(this);
            }
            this.databaseManager.updateEngineeringServerIds(createEngineeringResponse.localDbId, createEngineeringResponse.id, createEngineeringResponse.uuid);
            if (this.loginUnassignedEngineerings != null) {
                long userId = UserSession.get().getUserId();
                for (EngineeringEntity engineeringEntity : this.loginUnassignedEngineerings) {
                    if (engineeringEntity != null && engineeringEntity.id == createEngineeringResponse.localDbId) {
                        engineeringEntity.belongUid = userId;
                        engineeringEntity.engineeringId = createEngineeringResponse.id;
                        engineeringEntity.engineeringUuid = createEngineeringResponse.uuid;
                    }
                }
            }
            pushProjectsBelongEngineeringToServer(this.databaseManager.updateProjectsBelongEngineeringId(createEngineeringResponse.localDbId, createEngineeringResponse.id));
            this.databaseManager.renameUnsyncedLocalDuplicatesInEngineering(this.databaseManager.queryEngineeringByLocalId(createEngineeringResponse.localDbId));
            tryStartDeferredProjectSync();
        }
    }

    private void pushProjectsBelongEngineeringToServer(List<BaseProEntity> list) {
        NetworkUserLoader.getInstance().syncProjectsBelongEngineering(this.mINS, list);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(final QueryGnssEngineeringResponse queryGnssEngineeringResponse) throws Throwable {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.onEventMessage(queryGnssEngineeringResponse);
                }
            });
            return;
        }
        if (queryGnssEngineeringResponse == null || queryGnssEngineeringResponse.state != 0) {
            this.isEngineeringSyncing = false;
            ensureCurrentEngineeringReady();
            tryStartDeferredProjectSync();
        } else {
            updateEngineeringData(queryGnssEngineeringResponse.list);
            this.isEngineeringSyncing = false;
            ensureCurrentEngineeringReady();
            tryStartDeferredProjectSync();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEngineeringData(List<QueryGnssEngineeringResponse.GnssEngineeringItem> list) throws Throwable {
        EngineeringEntity engineeringEntity;
        long j;
        final List<QueryGnssEngineeringResponse.GnssEngineeringItem> arrayList = list;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.updateEngineeringData(arrayList);
                }
            });
            return;
        }
        this.databaseManager = DatabaseManager.getInstance(this);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        List<EngineeringEntity> listQueryAllEngineering = this.databaseManager.queryAllEngineering();
        EngineeringEntity engineeringEntityFindCurrentUsageEngineering = DatabaseManager.findCurrentUsageEngineering(listQueryAllEngineering);
        int i = 1;
        if (!arrayList.isEmpty()) {
            if (!listQueryAllEngineering.isEmpty()) {
                Iterator<EngineeringEntity> it = listQueryAllEngineering.iterator();
                while (it.hasNext()) {
                    EngineeringEntity next = it.next();
                    if (!TextUtils.isEmpty(next.engineeringUuid)) {
                        arrayList3.add(next.engineeringUuid);
                    }
                    for (QueryGnssEngineeringResponse.GnssEngineeringItem gnssEngineeringItem : arrayList) {
                        if (!arrayList2.contains(gnssEngineeringItem.uuid)) {
                            arrayList2.add(gnssEngineeringItem.uuid);
                        }
                        if (!gnssEngineeringItem.uuid.equals(next.engineeringUuid)) {
                            engineeringEntity = next;
                        } else if (next.editState != i) {
                            long j2 = next.version;
                            long j3 = gnssEngineeringItem.version;
                            if (j2 >= j3) {
                                if (j2 == j3) {
                                    j = j2;
                                    engineeringEntity = next;
                                    if (next.updateTime < gnssEngineeringItem.updateEpoch) {
                                    }
                                } else {
                                    engineeringEntity = next;
                                    j = j2;
                                }
                                if (j > j3 || (j == j3 && engineeringEntity.updateTime > gnssEngineeringItem.updateEpoch)) {
                                    NetworkUserLoader.getInstance().modifyGnssEngineering(engineeringEntity);
                                }
                            } else {
                                engineeringEntity = next;
                            }
                            EngineeringEntity engineeringEntityConvertToEngineeringEntity = convertToEngineeringEntity(gnssEngineeringItem);
                            engineeringEntityConvertToEngineeringEntity.id = engineeringEntity.id;
                            engineeringEntityConvertToEngineeringEntity.currentUsage = gnssEngineeringItem.currentUsage;
                            this.databaseManager.updateEngineeringFromServer(engineeringEntityConvertToEngineeringEntity);
                        }
                        next = engineeringEntity;
                        i = 1;
                    }
                }
            }
            for (QueryGnssEngineeringResponse.GnssEngineeringItem gnssEngineeringItem2 : arrayList) {
                if (!arrayList3.contains(gnssEngineeringItem2.uuid)) {
                    EngineeringEntity engineeringEntityQueryEngineeringByName = this.databaseManager.queryEngineeringByName(gnssEngineeringItem2.name);
                    if (engineeringEntityQueryEngineeringByName != null && engineeringEntityQueryEngineeringByName.editState != 1) {
                        EngineeringEntity engineeringEntityConvertToEngineeringEntity2 = convertToEngineeringEntity(gnssEngineeringItem2);
                        engineeringEntityConvertToEngineeringEntity2.id = engineeringEntityQueryEngineeringByName.id;
                        engineeringEntityConvertToEngineeringEntity2.currentUsage = gnssEngineeringItem2.currentUsage;
                        this.databaseManager.updateEngineeringFromServer(engineeringEntityConvertToEngineeringEntity2);
                        pushProjectsBelongEngineeringToServer(this.databaseManager.updateProjectsBelongEngineeringId(engineeringEntityQueryEngineeringByName.id, gnssEngineeringItem2.id));
                        DatabaseManager databaseManager = this.databaseManager;
                        databaseManager.renameUnsyncedLocalDuplicatesInEngineering(databaseManager.queryEngineeringByLocalId(engineeringEntityQueryEngineeringByName.id));
                    } else {
                        long jInsertEngineering = this.databaseManager.insertEngineering(convertToEngineeringEntity(gnssEngineeringItem2));
                        if (jInsertEngineering > 0) {
                            pushProjectsBelongEngineeringToServer(this.databaseManager.updateProjectsBelongEngineeringId(jInsertEngineering, gnssEngineeringItem2.id));
                            DatabaseManager databaseManager2 = this.databaseManager;
                            databaseManager2.renameUnsyncedLocalDuplicatesInEngineering(databaseManager2.queryEngineeringByLocalId(jInsertEngineering));
                        }
                    }
                }
            }
        }
        for (EngineeringEntity engineeringEntity2 : listQueryAllEngineering) {
            if (engineeringEntity2.editState != 1 && !TextUtils.isEmpty(engineeringEntity2.engineeringUuid) && !arrayList2.contains(engineeringEntity2.engineeringUuid)) {
                this.databaseManager.deleteEngineeringById(engineeringEntity2.id);
            }
        }
        ensureDefaultEngineeringAfterSync(arrayList, engineeringEntityFindCurrentUsageEngineering);
        this.engineeringLocalList = this.databaseManager.queryAllEngineering();
        uploadEngineering();
    }

    private void ensureDefaultEngineeringAfterSync(List<QueryGnssEngineeringResponse.GnssEngineeringItem> list, EngineeringEntity engineeringEntity) throws Resources.NotFoundException {
        int size = list != null ? list.size() : 0;
        QueryGnssEngineeringResponse.GnssEngineeringItem gnssEngineeringItemFindServerCurrentItem = findServerCurrentItem(list);
        String str = gnssEngineeringItemFindServerCurrentItem != null ? gnssEngineeringItemFindServerCurrentItem.uuid : null;
        long j = gnssEngineeringItemFindServerCurrentItem != null ? gnssEngineeringItemFindServerCurrentItem.id : 0L;
        long j2 = gnssEngineeringItemFindServerCurrentItem != null ? gnssEngineeringItemFindServerCurrentItem.createEpoch : 0L;
        this.pendingServerCurrentUuid = str;
        this.pendingServerCurrentId = j;
        EngineeringEntity engineeringEntityFinalizeEngineeringSyncAfterServerPull = this.databaseManager.finalizeEngineeringSyncAfterServerPull(size, str, j, j2, engineeringEntity);
        long j3 = j;
        if (hasCurrentEngineeringChanged(engineeringEntity, engineeringEntityFinalizeEngineeringSyncAfterServerPull)) {
            StringBuilder sb = new StringBuilder();
            sb.append("同步后当前工程已切换: ");
            String str2 = "null";
            sb.append(engineeringEntity != null ? engineeringEntity.name : "null");
            sb.append(" -> ");
            if (engineeringEntityFinalizeEngineeringSyncAfterServerPull != null) {
                str2 = engineeringEntityFinalizeEngineeringSyncAfterServerPull.name;
            }
            sb.append(str2);
            LogToFile.i(sb.toString());
            this.databaseManager.applyLatestCurrentEngineeringParams();
        }
        syncEngineeringCurrentUsageToServer(engineeringEntityFinalizeEngineeringSyncAfterServerPull, engineeringEntity, str, j3);
    }

    private static boolean hasCurrentEngineeringChanged(EngineeringEntity engineeringEntity, EngineeringEntity engineeringEntity2) {
        return engineeringEntity2 == null ? engineeringEntity != null : engineeringEntity == null || engineeringEntity.id != engineeringEntity2.id;
    }

    private void syncEngineeringCurrentUsageToServer(EngineeringEntity engineeringEntity, EngineeringEntity engineeringEntity2, String str, long j) {
        if (engineeringEntity == null || TextUtils.isEmpty(UserSession.get().getToken()) || engineeringEntity.engineeringId <= 0 || DatabaseManager.isSameServerEngineering(engineeringEntity, str, j)) {
            return;
        }
        engineeringEntity.currentUsage = 1;
        NetworkUserLoader.getInstance().modifyGnssEngineering(engineeringEntity);
        EngineeringEntity engineeringEntityFindEngineeringByServerIdentity = this.databaseManager.findEngineeringByServerIdentity(str, j);
        if (engineeringEntityFindEngineeringByServerIdentity == null || engineeringEntityFindEngineeringByServerIdentity.id == engineeringEntity.id || engineeringEntityFindEngineeringByServerIdentity.engineeringId <= 0) {
            return;
        }
        engineeringEntityFindEngineeringByServerIdentity.currentUsage = 0;
        NetworkUserLoader.getInstance().modifyGnssEngineering(engineeringEntityFindEngineeringByServerIdentity);
    }

    private QueryGnssEngineeringResponse.GnssEngineeringItem findServerCurrentItem(List<QueryGnssEngineeringResponse.GnssEngineeringItem> list) {
        QueryGnssEngineeringResponse.GnssEngineeringItem gnssEngineeringItem = null;
        if (list != null && !list.isEmpty()) {
            long j = -1;
            for (QueryGnssEngineeringResponse.GnssEngineeringItem gnssEngineeringItem2 : list) {
                if (gnssEngineeringItem2 != null && gnssEngineeringItem2.currentUsage == 1) {
                    long jEffectiveCreateTime = DatabaseManager.effectiveCreateTime(gnssEngineeringItem2.createEpoch);
                    if (gnssEngineeringItem == null || jEffectiveCreateTime >= j) {
                        gnssEngineeringItem = gnssEngineeringItem2;
                        j = jEffectiveCreateTime;
                    }
                }
            }
        }
        return gnssEngineeringItem;
    }

    private EngineeringEntity convertToEngineeringEntity(QueryGnssEngineeringResponse.GnssEngineeringItem gnssEngineeringItem) {
        EngineeringEntity engineeringEntity = new EngineeringEntity();
        engineeringEntity.engineeringId = gnssEngineeringItem.id;
        engineeringEntity.engineeringUuid = gnssEngineeringItem.uuid;
        engineeringEntity.createTime = gnssEngineeringItem.createEpoch;
        engineeringEntity.updateTime = gnssEngineeringItem.updateEpoch;
        engineeringEntity.version = gnssEngineeringItem.version;
        engineeringEntity.name = gnssEngineeringItem.name;
        engineeringEntity.currentUsage = gnssEngineeringItem.currentUsage;
        QueryGnssEngineeringResponse.Projection projection = gnssEngineeringItem.projection;
        if (projection != null) {
            engineeringEntity.ellipsoidType = projection.ellipsoidType;
            engineeringEntity.projectionType = projection.projectionType;
            String str = projection.paramsDetail;
            if (!TextUtils.isEmpty(str)) {
                EngineeringProjectionParser.applyParamsDetail(engineeringEntity, str);
            }
        }
        QueryGnssEngineeringResponse.TransParam transParam = gnssEngineeringItem.transParam;
        if (transParam != null) {
            long j = gnssEngineeringItem.transParamId;
            if (j > 0) {
                engineeringEntity.transParamId = j;
                engineeringEntity.conversionParamsType = transParam.paramType;
                engineeringEntity.transParam = this.databaseManager.fromEngineeringTransParam(transParam);
                this.databaseManager.bindTransParamLocalId(engineeringEntity, gnssEngineeringItem.transParam.name);
                return engineeringEntity;
            }
        }
        engineeringEntity.conversionParamsType = 0;
        engineeringEntity.transParamId = 0L;
        engineeringEntity.transParamLocalId = 0L;
        engineeringEntity.transParam = null;
        return engineeringEntity;
    }

    private void createProject() {
        String string = this.mSp.getString("current_coords", "");
        if (this.mINS == null && !TextUtils.isEmpty(string)) {
            InsNavi insNavi = new InsNavi();
            this.mINS = insNavi;
            try {
                insNavi.longitude = Double.parseDouble(string.split(",")[0]);
                this.mINS.latitude = Double.parseDouble(string.split(",")[1]);
                this.mINS.elevation = Double.parseDouble(string.split(",")[2]);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        List<BaseProEntity> list = this.loginUnassignedProjects;
        if (list == null) {
            list = this.localAll;
        }
        if (list != null && !list.isEmpty()) {
            int i = this.index;
            if (i >= 0 && i < list.size()) {
                BaseProEntity baseProEntity = list.get(this.index);
                if (TextUtils.isEmpty(baseProEntity.projectUUid)) {
                    if (shouldUploadBelongUid(this.loginUnassignedProjects != null, baseProEntity.belongUid)) {
                        if (shouldDeferProjectUploadUntilEngineeringSynced(baseProEntity)) {
                            this.index++;
                            createProject();
                            return;
                        } else {
                            NetworkUserLoader.getInstance().createProject(this.mINS, baseProEntity);
                            return;
                        }
                    }
                }
                this.index++;
                createProject();
                return;
            }
            syncFinish();
            NetworkUserLoader.getInstance().queryShare(null, null, null, "");
            return;
        }
        syncFinish();
        NetworkUserLoader.getInstance().queryShare(null, null, null, "");
    }

    private boolean shouldDeferProjectUploadUntilEngineeringSynced(BaseProEntity baseProEntity) {
        if (baseProEntity == null || baseProEntity.engineeringLocalId <= 0 || baseProEntity.belongEngineeringId > 0 || !TextUtils.isEmpty(baseProEntity.engineeringUuid)) {
            return false;
        }
        DatabaseManager databaseManager = this.databaseManager;
        if (databaseManager == null || !databaseManager.getDatabase().isOpen()) {
            this.databaseManager = DatabaseManager.getInstance(this);
        }
        EngineeringEntity engineeringEntityQueryEngineeringByLocalId = this.databaseManager.queryEngineeringByLocalId(baseProEntity.engineeringLocalId);
        if (engineeringEntityQueryEngineeringByLocalId == null) {
            return false;
        }
        return engineeringEntityQueryEngineeringByLocalId.engineeringId <= 0 || TextUtils.isEmpty(engineeringEntityQueryEngineeringByLocalId.engineeringUuid);
    }

    private void syncFinish() {
        this.projectSyncActive = false;
        ensureCurrentEngineeringReady();
        final boolean z = this.afterLogin;
        this.afterLogin = false;
        postSyncUi(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.m1181$r8$lambda$TCL4LhUKDpiZFCBLAdXHJ2atZ8(this.f$0, z);
            }
        });
    }

    /* renamed from: $r8$lambda$TCL4LhUKDpiZFCB-LAdXHJ2atZ8, reason: not valid java name */
    public static /* synthetic */ void m1181$r8$lambda$TCL4LhUKDpiZFCBLAdXHJ2atZ8(MainActivity mainActivity, boolean z) {
        if (z) {
            mainActivity.showToastDialog(mainActivity.getString(R$string.data_has_updated));
        }
        LoadingFragment loadingFragment = mainActivity.syncingProjectDialog;
        if (loadingFragment == null || loadingFragment.getFragmentManager() == null) {
            return;
        }
        mainActivity.syncingProjectDialog.dismiss();
    }

    private void ensureCurrentEngineeringReady() {
        DatabaseManager databaseManager = this.databaseManager;
        if (databaseManager == null || !databaseManager.getDatabase().isOpen()) {
            this.databaseManager = DatabaseManager.getInstance(this);
        }
        this.databaseManager.bindOrphanDataToDefaultEngineering();
        DatabaseManager.prepareCurrentEngineeringForCoordConvert(this);
    }

    private void executeSyncWork(final Runnable runnable) {
        ExecutorService executorService = this.executorService;
        if (executorService == null || executorService.isShutdown()) {
            runnable.run();
        } else {
            this.executorService.execute(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda29
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.m1185$r8$lambda$qGoOUzp0IAeBQO1nWdvNWZWT8(runnable);
                }
            });
        }
    }

    /* renamed from: $r8$lambda$qGoOUzp0IAeBQ-O1-nWdvNWZWT8, reason: not valid java name */
    public static /* synthetic */ void m1185$r8$lambda$qGoOUzp0IAeBQO1nWdvNWZWT8(Runnable runnable) {
        try {
            runnable.run();
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e("executeSyncWork: " + e);
        }
    }

    private void postSyncUi(final Runnable runnable) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        runOnUiThread(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.m1180$r8$lambda$Pyf10fAGK__Dvaw8_q8ICObmxo(this.f$0, runnable);
            }
        });
    }

    /* renamed from: $r8$lambda$Pyf10fAGK__Dvaw8_-q8ICObmxo, reason: not valid java name */
    public static /* synthetic */ void m1180$r8$lambda$Pyf10fAGK__Dvaw8_q8ICObmxo(MainActivity mainActivity, Runnable runnable) {
        if (mainActivity.isFinishing() || mainActivity.isDestroyed()) {
            return;
        }
        runnable.run();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(final CreateProjectResponse createProjectResponse) {
        executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.$r8$lambda$k_nxLwguJFCw9gb7wfgb0RxkPTE(this.f$0, createProjectResponse);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$k_nxLwguJFCw9gb7wfgb0RxkPTE(MainActivity mainActivity, CreateProjectResponse createProjectResponse) {
        mainActivity.getClass();
        DatabaseManager databaseManager = DatabaseManager.getInstance(mainActivity);
        mainActivity.databaseManager = databaseManager;
        if (createProjectResponse.state == 0) {
            databaseManager.updateEntityById(createProjectResponse.entity);
            BaseProEntity baseProEntity = createProjectResponse.entity;
            if (baseProEntity != null) {
                baseProEntity.belongUid = UserSession.get().getUserId();
                List<BaseProEntity> list = mainActivity.loginUnassignedProjects;
                if (list != null) {
                    for (BaseProEntity baseProEntity2 : list) {
                        if (baseProEntity2 != null) {
                            long j = baseProEntity2.id;
                            BaseProEntity baseProEntity3 = createProjectResponse.entity;
                            if (j == baseProEntity3.id) {
                                baseProEntity2.belongUid = baseProEntity3.belongUid;
                                baseProEntity2.projectUUid = baseProEntity3.projectUUid;
                                baseProEntity2.projectId = baseProEntity3.projectId;
                            }
                        }
                    }
                }
            }
        }
        int i = mainActivity.index;
        if (i < 0 || i >= mainActivity.localAll.size()) {
            return;
        }
        mainActivity.index++;
        mainActivity.createProject();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(final QueryProjectResponse queryProjectResponse) {
        DatabaseManager databaseManager;
        if (queryProjectResponse == null || !queryProjectResponse.filterByCurrentEngineering) {
            if (this.projectSyncActive || this.afterLogin) {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.onEventMessage(queryProjectResponse);
                        }
                    });
                    return;
                }
                ArrayList<BaseProEntity> arrayList = queryProjectResponse.list == null ? new ArrayList() : new ArrayList(queryProjectResponse.list);
                ArrayList<BaseProEntity> arrayList2 = this.localAll == null ? new ArrayList() : new ArrayList(this.localAll);
                if (queryProjectResponse.state == 0) {
                    String string = this.mSp.getString("current_coords", "");
                    if (this.mINS == null && !TextUtils.isEmpty(string)) {
                        InsNavi insNavi = new InsNavi();
                        this.mINS = insNavi;
                        try {
                            insNavi.longitude = Double.parseDouble(string.split(",")[0]);
                            this.mINS.latitude = Double.parseDouble(string.split(",")[1]);
                            this.mINS.elevation = Double.parseDouble(string.split(",")[2]);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    this.databaseManager = DatabaseManager.getInstance(this);
                    ArrayList arrayList3 = new ArrayList();
                    ArrayList arrayList4 = new ArrayList();
                    for (BaseProEntity baseProEntity : arrayList2) {
                        if (!arrayList4.contains(baseProEntity.projectUUid)) {
                            arrayList4.add(baseProEntity.projectUUid);
                        }
                        for (BaseProEntity baseProEntity2 : arrayList) {
                            if (!arrayList3.contains(baseProEntity2.projectUUid)) {
                                arrayList3.add(baseProEntity2.projectUUid);
                            }
                            if (baseProEntity2.projectUUid.equals(baseProEntity.projectUUid)) {
                                if (this.databaseManager.needsEngineeringBindingReconcile(baseProEntity, baseProEntity2) || baseProEntity.version < baseProEntity2.version || baseProEntity.updateTime <= baseProEntity2.updateTime) {
                                    this.databaseManager.syncPullUpdateProjectFromServer(baseProEntity, baseProEntity2);
                                } else {
                                    if (baseProEntity.type == ProjectEnum.ZHAOPING.getType()) {
                                        NetworkUserLoader.getInstance().modifyProject(this.mINS, (ZhaoPingEntity) baseProEntity);
                                    } else if (baseProEntity.type == ProjectEnum.SHUAPO.getType()) {
                                        NetworkUserLoader.getInstance().modifyProject(this.mINS, (ShuaPoEntity) baseProEntity);
                                    } else if (baseProEntity.type == ProjectEnum.WAGOU.getType()) {
                                        NetworkUserLoader.getInstance().modifyProject(this.mINS, (WaGouEntity) baseProEntity);
                                    } else if (baseProEntity.type == ProjectEnum.DIKE.getType()) {
                                        NetworkUserLoader.getInstance().modifyProject(this.mINS, (DikeEntity) baseProEntity);
                                    } else if (baseProEntity.type == ProjectEnum.LINE.getType()) {
                                        NetworkUserLoader.getInstance().modifyProject(this.mINS, (LineEntity) baseProEntity);
                                    } else if (baseProEntity.type == ProjectEnum.POLY_LINE.getType()) {
                                        NetworkUserLoader.getInstance().modifyProject(this.mINS, (PolyLineEntity) baseProEntity);
                                    } else if (baseProEntity.type == ProjectEnum.ONEPOINTAREA.getType()) {
                                        NetworkUserLoader.getInstance().modifyProject(this.mINS, (OnePointAreaEntity) baseProEntity);
                                    } else if (baseProEntity.type == ProjectEnum.THREEPOINTAREA.getType()) {
                                        NetworkUserLoader.getInstance().modifyProject(this.mINS, (ThreePointAreaEntity) baseProEntity);
                                    } else if (baseProEntity.type == ProjectEnum.SITELEVELING.getType()) {
                                        NetworkUserLoader.getInstance().modifyProject(this.mINS, (SiteLevelingEntity) baseProEntity);
                                    } else if (baseProEntity.type == ProjectEnum.ARBITRARYLINE.getType()) {
                                        NetworkUserLoader.getInstance().modifyProject(this.mINS, (ArbitraryLineEntity) baseProEntity);
                                    } else if (baseProEntity.type == ProjectEnum.CURVEDSLOPE.getType()) {
                                        NetworkUserLoader.getInstance().modifyProject(this.mINS, (CurvedSlopeEntity) baseProEntity);
                                    } else if (baseProEntity.type == ProjectEnum.MULTI_POINT_AREA.getType()) {
                                        NetworkUserLoader.getInstance().modifyProject(this.mINS, (MultiPointAreaEntity) baseProEntity);
                                    }
                                    this.isProChange = true;
                                }
                            }
                        }
                    }
                    if (this.isProChange) {
                        this.isProChange = false;
                        NetworkUserLoader.getInstance().queryProjectByType(null, false);
                        return;
                    }
                    for (BaseProEntity baseProEntity3 : arrayList) {
                        if (!arrayList4.contains(baseProEntity3.projectUUid)) {
                            int i = baseProEntity3.type;
                            ProjectEnum projectEnum = ProjectEnum.ZHAOPING;
                            if (i == projectEnum.getType()) {
                                List<BaseProEntity> listQuerySyncLocalByExactName = this.databaseManager.querySyncLocalByExactName(projectEnum.getType(), baseProEntity3);
                                if (listQuerySyncLocalByExactName.isEmpty()) {
                                    this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                } else {
                                    sysProject(baseProEntity3, listQuerySyncLocalByExactName);
                                }
                            } else {
                                int i2 = baseProEntity3.type;
                                ProjectEnum projectEnum2 = ProjectEnum.SHUAPO;
                                if (i2 == projectEnum2.getType()) {
                                    List<BaseProEntity> listQuerySyncLocalByExactName2 = this.databaseManager.querySyncLocalByExactName(projectEnum2.getType(), baseProEntity3);
                                    if (listQuerySyncLocalByExactName2.isEmpty()) {
                                        this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                    } else {
                                        sysProject(baseProEntity3, listQuerySyncLocalByExactName2);
                                    }
                                } else {
                                    int i3 = baseProEntity3.type;
                                    ProjectEnum projectEnum3 = ProjectEnum.WAGOU;
                                    if (i3 == projectEnum3.getType()) {
                                        List<BaseProEntity> listQuerySyncLocalByExactName3 = this.databaseManager.querySyncLocalByExactName(projectEnum3.getType(), baseProEntity3);
                                        if (listQuerySyncLocalByExactName3.isEmpty()) {
                                            this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                        } else {
                                            sysProject(baseProEntity3, listQuerySyncLocalByExactName3);
                                        }
                                    } else {
                                        int i4 = baseProEntity3.type;
                                        ProjectEnum projectEnum4 = ProjectEnum.DIKE;
                                        if (i4 == projectEnum4.getType()) {
                                            List<BaseProEntity> listQuerySyncLocalByExactName4 = this.databaseManager.querySyncLocalByExactName(projectEnum4.getType(), baseProEntity3);
                                            if (listQuerySyncLocalByExactName4.isEmpty()) {
                                                this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                            } else {
                                                sysProject(baseProEntity3, listQuerySyncLocalByExactName4);
                                            }
                                        } else {
                                            int i5 = baseProEntity3.type;
                                            ProjectEnum projectEnum5 = ProjectEnum.LINE;
                                            if (i5 == projectEnum5.getType()) {
                                                List<BaseProEntity> listQuerySyncLocalByExactName5 = this.databaseManager.querySyncLocalByExactName(projectEnum5.getType(), baseProEntity3);
                                                if (listQuerySyncLocalByExactName5.isEmpty()) {
                                                    this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                } else {
                                                    sysProject(baseProEntity3, listQuerySyncLocalByExactName5);
                                                }
                                            } else {
                                                int i6 = baseProEntity3.type;
                                                ProjectEnum projectEnum6 = ProjectEnum.POLY_LINE;
                                                if (i6 == projectEnum6.getType()) {
                                                    List<BaseProEntity> listQuerySyncLocalByExactName6 = this.databaseManager.querySyncLocalByExactName(projectEnum6.getType(), baseProEntity3);
                                                    if (listQuerySyncLocalByExactName6.isEmpty()) {
                                                        this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                    } else {
                                                        sysProject(baseProEntity3, listQuerySyncLocalByExactName6);
                                                    }
                                                } else {
                                                    int i7 = baseProEntity3.type;
                                                    ProjectEnum projectEnum7 = ProjectEnum.ONEPOINTAREA;
                                                    if (i7 == projectEnum7.getType()) {
                                                        List<BaseProEntity> listQuerySyncLocalByExactName7 = this.databaseManager.querySyncLocalByExactName(projectEnum7.getType(), baseProEntity3);
                                                        if (listQuerySyncLocalByExactName7.isEmpty()) {
                                                            this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                        } else {
                                                            sysProject(baseProEntity3, listQuerySyncLocalByExactName7);
                                                        }
                                                    } else {
                                                        int i8 = baseProEntity3.type;
                                                        ProjectEnum projectEnum8 = ProjectEnum.THREEPOINTAREA;
                                                        if (i8 == projectEnum8.getType()) {
                                                            List<BaseProEntity> listQuerySyncLocalByExactName8 = this.databaseManager.querySyncLocalByExactName(projectEnum8.getType(), baseProEntity3);
                                                            if (listQuerySyncLocalByExactName8.isEmpty()) {
                                                                this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                            } else {
                                                                sysProject(baseProEntity3, listQuerySyncLocalByExactName8);
                                                            }
                                                        } else {
                                                            int i9 = baseProEntity3.type;
                                                            ProjectEnum projectEnum9 = ProjectEnum.SITELEVELING;
                                                            if (i9 == projectEnum9.getType()) {
                                                                List<BaseProEntity> listQuerySyncLocalByExactName9 = this.databaseManager.querySyncLocalByExactName(projectEnum9.getType(), baseProEntity3);
                                                                if (listQuerySyncLocalByExactName9.isEmpty()) {
                                                                    this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                                } else {
                                                                    sysProject(baseProEntity3, listQuerySyncLocalByExactName9);
                                                                }
                                                            } else {
                                                                int i10 = baseProEntity3.type;
                                                                ProjectEnum projectEnum10 = ProjectEnum.ARBITRARYLINE;
                                                                if (i10 == projectEnum10.getType()) {
                                                                    List<BaseProEntity> listQuerySyncLocalByExactName10 = this.databaseManager.querySyncLocalByExactName(projectEnum10.getType(), baseProEntity3);
                                                                    if (listQuerySyncLocalByExactName10.isEmpty()) {
                                                                        this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                                    } else {
                                                                        sysProject(baseProEntity3, listQuerySyncLocalByExactName10);
                                                                    }
                                                                } else {
                                                                    int i11 = baseProEntity3.type;
                                                                    ProjectEnum projectEnum11 = ProjectEnum.CURVEDSLOPE;
                                                                    if (i11 == projectEnum11.getType()) {
                                                                        List<BaseProEntity> listQuerySyncLocalByExactName11 = this.databaseManager.querySyncLocalByExactName(projectEnum11.getType(), baseProEntity3);
                                                                        if (listQuerySyncLocalByExactName11.isEmpty()) {
                                                                            this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                                        } else {
                                                                            sysProject(baseProEntity3, listQuerySyncLocalByExactName11);
                                                                        }
                                                                    } else {
                                                                        int i12 = baseProEntity3.type;
                                                                        ProjectEnum projectEnum12 = ProjectEnum.MULTI_POINT_AREA;
                                                                        if (i12 == projectEnum12.getType()) {
                                                                            List<BaseProEntity> listQuerySyncLocalByExactName12 = this.databaseManager.querySyncLocalByExactName(projectEnum12.getType(), baseProEntity3);
                                                                            if (listQuerySyncLocalByExactName12.isEmpty()) {
                                                                                this.databaseManager.syncInsertOrReconcileProject(baseProEntity3);
                                                                            } else {
                                                                                sysProject(baseProEntity3, listQuerySyncLocalByExactName12);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    for (BaseProEntity baseProEntity4 : arrayList2) {
                        if (!TextUtils.isEmpty(baseProEntity4.projectUUid) && !arrayList3.contains(baseProEntity4.projectUUid) && (databaseManager = this.databaseManager) != null && baseProEntity4.editState == 0) {
                            databaseManager.deleteById(baseProEntity4);
                        }
                    }
                    this.databaseManager.renameUnsyncedConflictsWithServer(arrayList);
                    if (!arrayList2.isEmpty()) {
                        this.localAll = getLoacalData();
                        createProject();
                        return;
                    } else {
                        syncFinish();
                        return;
                    }
                }
                postSyncUi(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity.$r8$lambda$FaUDeCAv0VBY4cxNJOa7z8ulHEs(this.f$0);
                    }
                });
                if (arrayList2.isEmpty()) {
                    return;
                }
                this.localAll = getLoacalData();
                createProject();
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$FaUDeCAv0VBY4cxNJOa7z8ulHEs(MainActivity mainActivity) {
        LoadingFragment loadingFragment = mainActivity.syncingProjectDialog;
        if (loadingFragment == null || loadingFragment.getFragmentManager() == null) {
            return;
        }
        mainActivity.syncingProjectDialog.dismiss();
    }

    private void sysProject(BaseProEntity baseProEntity, List<BaseProEntity> list) {
        this.databaseManager.resolveSameNameOnSync(baseProEntity, list);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(QueryShareResponse queryShareResponse) {
        if (queryShareResponse.codes != null) {
            return;
        }
        if (queryShareResponse.state == 0) {
            List<ShareEntity> listQueryShareByShareId = this.databaseManager.queryShareByShareId(null);
            HashSet hashSet = new HashSet();
            List<ShareEntity> list = queryShareResponse.list;
            if (list != null && !list.isEmpty()) {
                for (ShareEntity shareEntity : queryShareResponse.list) {
                    shareEntity.editState = 0;
                    hashSet.add(Long.valueOf(shareEntity.shareId));
                    List<ShareEntity> listQueryShareByShareId2 = this.databaseManager.queryShareByShareId(Long.valueOf(shareEntity.shareId));
                    if (listQueryShareByShareId2.isEmpty()) {
                        this.databaseManager.insertShare(shareEntity);
                    } else if (listQueryShareByShareId2.get(0).editState != 1) {
                        this.databaseManager.updateShare(shareEntity);
                    }
                }
            }
            for (ShareEntity shareEntity2 : listQueryShareByShareId) {
                if (shareEntity2.editState == 0 && !hashSet.contains(Long.valueOf(shareEntity2.shareId))) {
                    this.databaseManager.deleteShare(shareEntity2);
                    this.databaseManager.deleteForeignSharedProjectsAndEngineering(shareEntity2);
                }
            }
            gotoShareProjectFromCode();
            return;
        }
        gotoShareProjectFromCode();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    protected void beforePromptOpenSharedProject() {
        finishNotMainActivity();
    }

    private List<BaseProEntity> getLoacalData() {
        this.index = 0;
        DatabaseManager databaseManager = DatabaseManager.getInstance(this);
        this.databaseManager = databaseManager;
        databaseManager.bindOrphanDataToDefaultEngineering();
        return this.databaseManager.queryAllProjectsAcrossEngineerings();
    }

    @Override // com.qianhe.yct.base.BaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(BluetoothConnectStateEvent bluetoothConnectStateEvent) {
        BluetoothDevice bluetoothDevice;
        super.onEventMessage(bluetoothConnectStateEvent);
        MyBluetoothDevice myBluetoothDevice = bluetoothConnectStateEvent.myDevice;
        if (myBluetoothDevice != null && myBluetoothDevice.state == BluetoothStateEnum.CONNECTED.getState()) {
            if (this.isPause) {
                this.binding.topBar.tvGotoConnect.setVisibility(8);
                this.binding.viewPager.setCurrentItem(0);
                cancelUpgradeingDialog();
            }
            MyBluetoothDevice myBluetoothDevice2 = bluetoothConnectStateEvent.myDevice;
            if (myBluetoothDevice2 != null && (bluetoothDevice = myBluetoothDevice2.bluetoothDevice) != null) {
                this.binding.topBar.tvSn.setText(String.format("SN:%s", bluetoothDevice.getName().substring(bluetoothConnectStateEvent.myDevice.bluetoothDevice.getName().length() - 5)));
                this.binding.topBar.tvSn.setVisibility(0);
            }
        }
        updateNfcForegroundDispatch();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(RTKRegisterResult rTKRegisterResult) {
        String string;
        if (this.isPause || !rTKRegisterResult.result.equals("OK") || this.isTipRegisterOk) {
            return;
        }
        this.isTipRegisterOk = true;
        if (rTKRegisterResult.deviceType == DeviceType.BASE) {
            string = this.mSp.getString("base_deviceSn", "");
        } else {
            string = this.mSp.getString("deviceSn", "");
        }
        if (!TextUtils.isEmpty(this.mSp.getString(rTKRegisterResult.deviceType + "_" + string, ""))) {
            showTipDialog(getString(R$string.registered_success), getString(R$string.ok), null);
        }
        this.mSp.edit().putString(string, rTKRegisterResult.code).apply();
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    @SuppressLint({"MissingPermission"})
    protected void onResume() throws IOException {
        super.onResume();
        this.isPause = false;
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        initTopbarView();
        updateNfcForegroundDispatch();
        if (YCTApplication.getInstance().isSynDataFlag()) {
            YCTApplication.getInstance().setSynDataFlag(false);
            this.skipCheckTokenDataSync = true;
            if (TextUtils.isEmpty(UserSession.get().getToken())) {
                return;
            }
            this.binding.viewPager.setCurrentItem(0, false);
            this.afterLogin = true;
            Bundle bundle = new Bundle();
            bundle.putString("tip", getString(R$string.syncing_data));
            LoadingFragment loadingFragment = new LoadingFragment();
            this.syncingProjectDialog = loadingFragment;
            loadingFragment.setArguments(bundle);
            this.syncingProjectDialog.show(getSupportFragmentManager(), "LoadingFragment");
            this.binding.getRoot().post(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.$r8$lambda$YxN_zpPNhKZB4gUzShHuNueybh0(this.f$0);
                }
            });
            return;
        }
        if (YCTApplication.getInstance().isSyncAfterEngineeringSwitch()) {
            YCTApplication.getInstance().setSyncAfterEngineeringSwitch(false);
            final String token = UserSession.get().getToken();
            this.binding.getRoot().post(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.$r8$lambda$nSPoVPa0665tlerPC7Ptu7WQQ78(this.f$0, token);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$YxN_zpPNhKZB4gUzShHuNueybh0(final MainActivity mainActivity) {
        mainActivity.getClass();
        mainActivity.executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.m1188$r8$lambda$zESoSxDO73Rjb2g8ARYOp0Kmiw(this.f$0);
            }
        });
    }

    /* renamed from: $r8$lambda$zESoSxDO-73Rjb2g8ARYOp0Kmiw, reason: not valid java name */
    public static /* synthetic */ void m1188$r8$lambda$zESoSxDO73Rjb2g8ARYOp0Kmiw(MainActivity mainActivity) {
        mainActivity.getClass();
        GnssCoordConvertManager.getInstance().invalidateEngineeringCache();
        mainActivity.ensureCurrentEngineeringReady();
        mainActivity.startDataSyncAfterTokenValid(true);
    }

    public static /* synthetic */ void $r8$lambda$nSPoVPa0665tlerPC7Ptu7WQQ78(final MainActivity mainActivity, final String str) {
        mainActivity.getClass();
        mainActivity.executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                MainActivity.m1175$r8$lambda$24sPO6MQihJqw1elfac9dk832k(this.f$0, str);
            }
        });
    }

    /* renamed from: $r8$lambda$24sPO6MQihJqw1elfa-c9dk832k, reason: not valid java name */
    public static /* synthetic */ void m1175$r8$lambda$24sPO6MQihJqw1elfac9dk832k(MainActivity mainActivity, String str) throws Throwable {
        mainActivity.getClass();
        DatabaseManager databaseManager = DatabaseManager.getInstance(mainActivity);
        mainActivity.databaseManager = databaseManager;
        databaseManager.cleanupDuplicateProjectsByUuid();
        GnssCoordConvertManager.getInstance().invalidateEngineeringCache();
        mainActivity.ensureCurrentEngineeringReady();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        mainActivity.pendingSyncPointsAfterEngineeringSwitch = true;
        mainActivity.synProject();
        mainActivity.synPointGroup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void synTransParam() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.synTransParam();
                }
            });
            return;
        }
        DatabaseManager databaseManager = DatabaseManager.getInstance(this);
        this.databaseManager = databaseManager;
        this.transParamLocalList = databaseManager.queryAllGnssTransParams();
        this.transParamIndex = 0;
        NetworkUserLoader.getInstance().queryGnssTransParam(null, null, null, null, 0L, 0L, 1, 100);
    }

    private void uploadTransParam() {
        int i;
        List<GnssTransParamEntity> list = this.loginUnassignedTransParams;
        if (list == null) {
            list = this.transParamLocalList;
        }
        if (list == null || (i = this.transParamIndex) < 0 || i >= list.size()) {
            return;
        }
        GnssTransParamEntity gnssTransParamEntity = list.get(this.transParamIndex);
        if (TextUtils.isEmpty(gnssTransParamEntity.transParamUuid) || gnssTransParamEntity.transParamId <= 0) {
            if (shouldUploadBelongUid(this.loginUnassignedTransParams != null, gnssTransParamEntity.belongUid)) {
                NetworkUserLoader.getInstance().createGnssTransParam(gnssTransParamEntity);
                return;
            }
        }
        this.transParamIndex++;
        uploadTransParam();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(GnssTransParamResponse gnssTransParamResponse) {
        if (gnssTransParamResponse == null) {
            return;
        }
        if (gnssTransParamResponse.state == 0 && gnssTransParamResponse.id > 0 && gnssTransParamResponse.localDbId > 0) {
            DatabaseManager databaseManager = this.databaseManager;
            if (databaseManager == null || !databaseManager.getDatabase().isOpen()) {
                this.databaseManager = DatabaseManager.getInstance(this);
            }
            this.databaseManager.updateGnssTransParamServerIds(gnssTransParamResponse.localDbId, gnssTransParamResponse.id, gnssTransParamResponse.uuid);
            if (this.loginUnassignedTransParams != null) {
                long userId = UserSession.get().getUserId();
                for (GnssTransParamEntity gnssTransParamEntity : this.loginUnassignedTransParams) {
                    if (gnssTransParamEntity != null && gnssTransParamEntity.localId == gnssTransParamResponse.localDbId) {
                        gnssTransParamEntity.belongUid = userId;
                        gnssTransParamEntity.transParamId = gnssTransParamResponse.id;
                        gnssTransParamEntity.transParamUuid = gnssTransParamResponse.uuid;
                    }
                }
            }
        }
        if (gnssTransParamResponse.entity != null) {
            this.transParamIndex++;
            uploadTransParam();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(QueryGnssTransParamResponse queryGnssTransParamResponse) {
        if (queryGnssTransParamResponse == null || queryGnssTransParamResponse.state != 0) {
            return;
        }
        updateTransParamData(queryGnssTransParamResponse.list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTransParamData(final List<QueryGnssTransParamResponse.GnssTransParamItem> list) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            executeSyncWork(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.updateTransParamData(list);
                }
            });
            return;
        }
        this.databaseManager = DatabaseManager.getInstance(this);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (list == null) {
            list = new ArrayList<>();
        }
        if (!list.isEmpty()) {
            List<GnssTransParamEntity> listQueryAllGnssTransParams = this.databaseManager.queryAllGnssTransParams();
            if (!listQueryAllGnssTransParams.isEmpty()) {
                for (GnssTransParamEntity gnssTransParamEntity : listQueryAllGnssTransParams) {
                    if (!TextUtils.isEmpty(gnssTransParamEntity.transParamUuid)) {
                        arrayList2.add(gnssTransParamEntity.transParamUuid);
                    }
                    for (QueryGnssTransParamResponse.GnssTransParamItem gnssTransParamItem : list) {
                        if (gnssTransParamItem.state == 0) {
                            if (!arrayList.contains(gnssTransParamItem.uuid)) {
                                arrayList.add(gnssTransParamItem.uuid);
                            }
                            if (gnssTransParamItem.uuid.equals(gnssTransParamEntity.transParamUuid)) {
                                if (gnssTransParamEntity.version <= gnssTransParamItem.version) {
                                    GnssTransParamEntity gnssTransParamEntityFromQueryItem = this.databaseManager.fromQueryItem(gnssTransParamItem);
                                    gnssTransParamEntityFromQueryItem.localId = gnssTransParamEntity.localId;
                                    if (!gnssTransParamEntityFromQueryItem.equals(gnssTransParamEntity)) {
                                        this.databaseManager.updateGnssTransParam(gnssTransParamEntityFromQueryItem);
                                    }
                                } else {
                                    NetworkUserLoader.getInstance().modifyGnssTransParam(gnssTransParamEntity);
                                    this.isTransParamChange = true;
                                }
                            }
                        }
                    }
                }
                if (this.isTransParamChange) {
                    this.isTransParamChange = false;
                    NetworkUserLoader.getInstance().queryGnssTransParam(null, null, null, null, 0L, 0L, 1, 100);
                    return;
                }
            }
            for (QueryGnssTransParamResponse.GnssTransParamItem gnssTransParamItem2 : list) {
                if (gnssTransParamItem2.state == 0 && !arrayList2.contains(gnssTransParamItem2.uuid)) {
                    final GnssTransParamEntity gnssTransParamEntityQueryGnssTransParamByName = this.databaseManager.queryGnssTransParamByName(gnssTransParamItem2.name);
                    if (gnssTransParamEntityQueryGnssTransParamByName == null) {
                        DatabaseManager databaseManager = this.databaseManager;
                        databaseManager.insertGnssTransParam(databaseManager.fromQueryItem(gnssTransParamItem2));
                    } else if (gnssTransParamEntityQueryGnssTransParamByName.version <= gnssTransParamItem2.version) {
                        GnssTransParamEntity gnssTransParamEntityFromQueryItem2 = this.databaseManager.fromQueryItem(gnssTransParamItem2);
                        gnssTransParamEntityFromQueryItem2.localId = gnssTransParamEntityQueryGnssTransParamByName.localId;
                        this.databaseManager.updateGnssTransParam(gnssTransParamEntityFromQueryItem2);
                    } else {
                        NetworkUserLoader.getInstance().deleteGnssTransParam(true, gnssTransParamItem2.id);
                        this.binding.getRoot().postDelayed(new Runnable() { // from class: com.qianhe.yct.MainActivity$$ExternalSyntheticLambda23
                            @Override // java.lang.Runnable
                            public final void run() {
                                NetworkUserLoader.getInstance().createGnssTransParam(gnssTransParamEntityQueryGnssTransParamByName);
                            }
                        }, 500L);
                    }
                }
            }
        }
        List<GnssTransParamEntity> list2 = this.transParamLocalList;
        if (list2 != null && !list2.isEmpty()) {
            for (GnssTransParamEntity gnssTransParamEntity2 : this.transParamLocalList) {
                if (!TextUtils.isEmpty(gnssTransParamEntity2.transParamUuid) && !arrayList.contains(gnssTransParamEntity2.transParamUuid)) {
                    this.databaseManager.deleteGnssTransParamByLocalId(gnssTransParamEntity2.localId);
                }
            }
        }
        this.transParamLocalList = this.databaseManager.queryAllGnssTransParams();
        uploadTransParam();
    }

    @SuppressLint({"MissingPermission"})
    private void initTopbarView() {
        this.binding.topBar.tvDemoTip.setVisibility(this.mSp.getInt("mode", ConnectModeEnum.BLE.getType()) == 1 ? 0 : 8);
        MyBluetoothDevice currentDevice = ((YCTApplication) getApplication()).getCurrentDevice();
        MyBluetoothDevice currentBaseDevice = ((YCTApplication) getApplication()).getCurrentBaseDevice();
        if (currentDevice != null && currentDevice.state == BluetoothStateEnum.CONNECTED.getState()) {
            cancelLoadingDialog();
            BluetoothDevice bluetoothDevice = currentDevice.bluetoothDevice;
            if (bluetoothDevice != null && !TextUtils.isEmpty(bluetoothDevice.getName()) && !TextUtils.isEmpty(currentDevice.bluetoothDevice.getAddress())) {
                this.binding.topBar.tvSn.setText(String.format("SN:%s", currentDevice.bluetoothDevice.getName().substring(currentDevice.bluetoothDevice.getName().length() - 5)));
                this.binding.topBar.tvSn.setVisibility(0);
            }
        } else if (currentBaseDevice != null && currentBaseDevice.state == BluetoothStateEnum.CONNECTED.getState()) {
            BluetoothDevice bluetoothDevice2 = currentBaseDevice.bluetoothDevice;
            if (bluetoothDevice2 != null && !TextUtils.isEmpty(bluetoothDevice2.getName()) && !TextUtils.isEmpty(currentBaseDevice.bluetoothDevice.getAddress())) {
                this.binding.topBar.tvSn.setText(String.format("SN:%s", currentBaseDevice.bluetoothDevice.getName().substring(currentBaseDevice.bluetoothDevice.getName().length() - 5)));
                this.binding.topBar.tvSn.setVisibility(0);
            }
        } else {
            this.binding.topBar.tvSn.setText("");
        }
        this.binding.topBar.tvTitle.setVisibility(8);
        this.binding.topBar.ivLogo.setVisibility(0);
        if (getPackageName().equals("com.qianhe.xfix")) {
            this.binding.topBar.ivLogo.setImageResource(R$drawable.icon_topbar_logo_overseas);
        } else if (LanguagePrefs.isZH(this)) {
            this.binding.topBar.ivLogo.setImageResource(R$drawable.icon_topbar_logo_ch);
        } else {
            this.binding.topBar.ivLogo.setImageResource(R$drawable.icon_topbar_logo_en);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) throws IOException {
        NfcTagReader nfcTagReader;
        Tag tagFromIntent;
        super.onNewIntent(intent);
        if (isZpyDeviceConnected() || (nfcTagReader = this.nfcTagReader) == null || (tagFromIntent = nfcTagReader.getTagFromIntent(intent)) == null) {
            return;
        }
        String ndefData = this.nfcTagReader.readNdefData(tagFromIntent);
        if (ndefData == null || ndefData.contains("不包含NDEF数据")) {
            ndefData = this.nfcTagReader.readRawData(tagFromIntent);
        }
        if (TextUtils.isEmpty(ndefData)) {
            return;
        }
        LogToFile.i("NFC读取信息：" + ndefData);
        String bluetoothMac = this.nfcTagReader.getBluetoothMac(ndefData);
        LogToFile.i("蓝牙mac地址：" + bluetoothMac);
        if (!TextUtils.isEmpty(bluetoothMac)) {
            showLoadingDialog(getString(R$string.connecting_device));
            EventBus.getDefault().post(new BluetoothConnectActionByMacEvent(BluetoothActionEnum.CONNECT, bluetoothMac));
        } else {
            showTipDialog(getString(R$string.nfc_label_reading_failed), getString(R$string.ok), null);
        }
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.isPause = true;
        EventBus.getDefault().unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMessage(InitDataEvent initDataEvent) {
        initApkList(initDataEvent.deviceType);
    }

    private void initApkList(DeviceType deviceType) {
        String string;
        if (((YCTApplication) getApplication()).isCheckApkList()) {
            return;
        }
        if (deviceType == DeviceType.BASE) {
            string = this.mSp.getString("base_deviceSn", "");
        } else {
            string = this.mSp.getString("deviceSn", "");
        }
        if (!TextUtils.isEmpty(string)) {
            ((YCTApplication) getApplication()).setCheckApkList(true);
            getApkList(deviceType, false);
        } else {
            ((YCTApplication) getApplication()).setAppVersionCheckedComplete(true);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        ExitDialogFragment exitDialogFragment = this.exitDialogFragment;
        if (exitDialogFragment == null || exitDialogFragment.getDialog() == null || (this.exitDialogFragment.getDialog() != null && !this.exitDialogFragment.getDialog().isShowing())) {
            ExitDialogFragment exitDialogFragment2 = new ExitDialogFragment();
            this.exitDialogFragment = exitDialogFragment2;
            exitDialogFragment2.show(getSupportFragmentManager(), "ExitDialogFragment");
            Bundle bundle = new Bundle();
            bundle.putString("requestKey", "exit");
            this.exitDialogFragment.setArguments(bundle);
            return;
        }
        stopService();
        super.onBackPressed();
    }

    private void eixt() {
        stopService();
        finishAffinity();
        Process.killProcess(Process.myPid());
    }

    @Override // com.qianhe.yct.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        NetworkDataLoader.getInstance().cancelRequest();
        NetworkUserLoader.getInstance().release();
        BsPatchManager.getInstance().release();
        stopLogUploadTimer();
        DatabaseManager databaseManager = this.databaseManager;
        if (databaseManager != null) {
            databaseManager.close();
        }
        ExecutorService executorService = this.executorService;
        if (executorService != null) {
            executorService.shutdownNow();
        }
        try {
            NfcTagReader nfcTagReader = this.nfcTagReader;
            if (nfcTagReader != null && nfcTagReader.hasNfcPermission(this)) {
                this.nfcTagReader.disableForegroundDispatch(this);
            }
        } catch (Exception e) {
            e.printStackTrace();
            LogToFile.e("nfcTagReader：" + e);
        }
        NetworkLocationProvider.getInstance().reset();
    }
}
