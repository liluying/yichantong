package com.qianhe.yct.application;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.qianhe.baselib.bean.EngineeringEntity;
import com.qianhe.baselib.bean.GnssTransParamEntity;
import com.qianhe.baselib.enums.ConnectModeEnum;
import com.qianhe.baselib.manage.GnssCoordConvertManager;
import com.qianhe.baselib.utils.CrashHandler;
import com.qianhe.baselib.utils.FileUtil;
import com.qianhe.baselib.utils.LanguagePrefs;
import com.qianhe.baselib.utils.LogToFile;
import com.qianhe.ntripclientlib.bean.AuthResult;
import com.qianhe.rtkclientlib.ForegroundActivityProvider;
import com.qianhe.rtkclientlib.RtkConstant;
import com.qianhe.rtkclientlib.bean.MyBluetoothDevice;
import com.qianhe.rtkclientlib.event.BaseStatusEvent;
import com.qianhe.rtkclientlib.event.RtkInfo;
import com.qianhe.rtkclientlib.event.SensorInfoEvent;
import com.qianhe.yct.bean.AppConfig;
import com.qianhe.yct.bean.DeviceInfo;
import com.qianhe.yct.db.DatabaseManager;
import com.qianhe.yct.manage.AppConfigManager;
import com.qianhe.yct.utils.NetworkDataLoader;
import com.qianhe.yct.utils.ScreenOrientationHelper;
import com.qianhe.yct.utils.ThemeModeManager;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.smtt.sdk.QbSdk;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/apk-analysis/output/recovered-dex/classes.dex */
public class YCTApplication extends Application {
    private static YCTApplication instance;
    private int activityStartedCount;
    private AppConfig appConfig;
    private boolean appConfigLoadedFromDisk;
    private boolean appVersionCheckedComplete;
    private AuthResult authResult;
    private RtkInfo baseInfo;
    private BaseStatusEvent baseStatus;
    private boolean h5SupportRadioains;
    private boolean ignoreSensorOfflineForData;
    private boolean isCheckApkList;
    private boolean isCheckFmwUpgrade;
    private boolean isH5ProDemo;
    private MyBluetoothDevice mCurrentBaseDevice;
    private MyBluetoothDevice mCurrentDevice;
    private SharedPreferences mSP;
    private RtkInfo rtkInfo;
    private SensorInfoEvent sensorInfo;
    private boolean synDataNotify;
    private boolean syncAfterEngineeringSwitch;
    private final List<Activity> activityList = new ArrayList();
    private final MutableLiveData appForeground = new MutableLiveData();
    private String lastDeviceName = "";
    private int h5PowerPercent = -1;
    private int h5PowerSourceType = -1;

    public static YCTApplication getInstance() {
        return instance;
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(LanguagePrefs.wrapContext(context));
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        ThemeModeManager.applySavedMode(this);
        instance = this;
        GnssCoordConvertManager.setEngineeringProvider(new GnssCoordConvertManager.EngineeringProvider() { // from class: com.qianhe.yct.application.YCTApplication.1
            @Override // com.qianhe.baselib.manage.GnssCoordConvertManager.EngineeringProvider
            public EngineeringEntity queryCurrentEngineering() {
                return DatabaseManager.getInstance(YCTApplication.getInstance()).queryCurrentEngineering();
            }

            @Override // com.qianhe.baselib.manage.GnssCoordConvertManager.EngineeringProvider
            public GnssTransParamEntity resolveGnssTransParamForEngineering(EngineeringEntity engineeringEntity) {
                return DatabaseManager.getInstance(YCTApplication.getInstance()).resolveGnssTransParamForEngineering(engineeringEntity);
            }
        });
        this.mSP = getSharedPreferences("sp", 0);
        if (getPackageName().equals("com.qianhe.xfix")) {
            CrashReport.initCrashReport(getApplicationContext(), "add7994dc6", false);
        } else {
            CrashReport.initCrashReport(getApplicationContext(), "92c6e44cb7", false);
        }
        CrashHandler.getInstance().init(this);
        RtkConstant.setForegroundActivityProvider(new ForegroundActivityProvider() { // from class: com.qianhe.yct.application.YCTApplication.2
            @Override // com.qianhe.rtkclientlib.ForegroundActivityProvider
            public Activity getForegroundActivity() {
                return YCTApplication.this.getForegroundActivity();
            }
        });
        registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.qianhe.yct.application.YCTApplication.3
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                YCTApplication.this.activityStartedCount++;
                YCTApplication.this.appForeground.setValue(Boolean.TRUE);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                YCTApplication.this.activityStartedCount = Math.max(0, r3.activityStartedCount - 1);
                if (YCTApplication.this.activityStartedCount == 0) {
                    YCTApplication.this.appForeground.setValue(Boolean.FALSE);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPreCreated(Activity activity, Bundle bundle) {
                if (Build.VERSION.SDK_INT >= 29) {
                    ScreenOrientationHelper.apply(activity);
                }
            }
        });
        QbSdk.initX5Environment(getApplicationContext(), new QbSdk.PreInitCallback() { // from class: com.qianhe.yct.application.YCTApplication.4
            @Override // com.tencent.smtt.sdk.QbSdk.PreInitCallback
            public void onCoreInitFinished() {
                LogToFile.i("内核初始化完成");
            }

            @Override // com.tencent.smtt.sdk.QbSdk.PreInitCallback
            public void onViewInitFinished(boolean z) {
                StringBuilder sb = new StringBuilder();
                sb.append("X5内核加载");
                sb.append(z ? "成功" : "失败，使用系统内核。");
                LogToFile.i(sb.toString());
            }
        });
    }

    public boolean isPad() {
        return (Build.MANUFACTURER.contains("CPDEVICE") && Build.MODEL.contains("SPRING")) || Build.MODEL.contains("RT3 Pro");
    }

    public boolean isAT80orAT85() {
        return Build.MANUFACTURER.contains("CPDEVICE") && Build.MODEL.contains("SPRING");
    }

    public boolean isAutoAdaptation() {
        return Build.MANUFACTURER.contains("wheatek") && Build.MODEL.contains("RT3");
    }

    public boolean isDemo() {
        return this.mSP.getInt("mode", ConnectModeEnum.BLE.getType()) == ConnectModeEnum.DEMO.getType();
    }

    public LiveData observeAppForeground() {
        return this.appForeground;
    }

    public List<Activity> getActivityList() {
        return this.activityList;
    }

    public Activity getForegroundActivity() {
        for (int size = this.activityList.size() - 1; size >= 0; size--) {
            Activity activity = this.activityList.get(size);
            if (activity != null && !activity.isFinishing() && !activity.isDestroyed() && !activity.getClass().getName().contains("BluetoothBondActivity")) {
                return activity;
            }
        }
        return null;
    }

    public void setRtkInfo(RtkInfo rtkInfo) {
        this.rtkInfo = rtkInfo;
    }

    public void setBaseInfo(RtkInfo rtkInfo) {
        this.baseInfo = rtkInfo;
    }

    public RtkInfo getRtkInfo() {
        return this.rtkInfo;
    }

    public RtkInfo getBaseInfo() {
        return this.baseInfo;
    }

    public MyBluetoothDevice getCurrentDevice() {
        MyBluetoothDevice myBluetoothDevice = this.mCurrentDevice;
        return myBluetoothDevice != null ? myBluetoothDevice : new MyBluetoothDevice();
    }

    public void setCurrentDevice(MyBluetoothDevice myBluetoothDevice) {
        this.mCurrentDevice = myBluetoothDevice;
    }

    public MyBluetoothDevice getCurrentBaseDevice() {
        MyBluetoothDevice myBluetoothDevice = this.mCurrentBaseDevice;
        return myBluetoothDevice != null ? myBluetoothDevice : new MyBluetoothDevice();
    }

    public void setCurrentBaseDevice(MyBluetoothDevice myBluetoothDevice) {
        this.mCurrentBaseDevice = myBluetoothDevice;
    }

    public String getLastDeviceName() {
        return this.lastDeviceName;
    }

    public void setLastDeviceName(String str) {
        this.lastDeviceName = str;
    }

    public void setIsH5ProDemo(boolean z) {
        if (this.isH5ProDemo != z) {
            this.isH5ProDemo = z;
        }
    }

    @SuppressLint({"MissingPermission"})
    public boolean isH5Pro() {
        DeviceInfo deviceInfoQueryDeviceInfo;
        if (this.mSP.getInt("mode", ConnectModeEnum.BLE.getType()) == ConnectModeEnum.DEMO.getType()) {
            return this.isH5ProDemo;
        }
        MyBluetoothDevice myBluetoothDevice = this.mCurrentDevice;
        return (myBluetoothDevice == null || myBluetoothDevice.bluetoothDevice == null || (deviceInfoQueryDeviceInfo = DatabaseManager.getInstance(this).queryDeviceInfo(this.mCurrentDevice.bluetoothDevice.getName())) == null || !deviceInfoQueryDeviceInfo.type.equalsIgnoreCase("h5pro")) ? false : true;
    }

    public boolean isAppVersionCheckedComplete() {
        return this.appVersionCheckedComplete;
    }

    public void setAppVersionCheckedComplete(boolean z) {
        this.appVersionCheckedComplete = z;
    }

    public void setAuthResult(AuthResult authResult) {
        this.authResult = authResult;
    }

    public AuthResult getAuthResult() {
        AuthResult authResult = this.authResult;
        return authResult == null ? new AuthResult(5) : authResult;
    }

    public AppConfig getAppConfig() {
        if (!FileUtil.hasExternalStorageAccess(this)) {
            if (this.appConfig == null) {
                this.appConfig = new AppConfig();
            }
            return this.appConfig;
        }
        if (this.appConfig == null || !this.appConfigLoadedFromDisk) {
            this.appConfig = AppConfigManager.getInstance().getAppConfig();
            this.appConfigLoadedFromDisk = true;
        }
        return this.appConfig;
    }

    public void setAppConfig(AppConfig appConfig) {
        this.appConfig = appConfig;
        if (appConfig == null || !FileUtil.hasExternalStorageAccess(this)) {
            return;
        }
        this.appConfigLoadedFromDisk = true;
    }

    public boolean isCheckApkList() {
        return this.isCheckApkList;
    }

    public void setCheckApkList(boolean z) {
        this.isCheckApkList = z;
    }

    public boolean isCheckFmwUpgrade() {
        return this.isCheckFmwUpgrade;
    }

    public void setCheckFmwUpgrade(boolean z) {
        this.isCheckFmwUpgrade = z;
    }

    public boolean isGnssFmw(String str) {
        return str.contains("M10") || str.contains("980");
    }

    public boolean isSynDataFlag() {
        return this.synDataNotify;
    }

    public void setSynDataFlag(boolean z) {
        this.synDataNotify = z;
    }

    public boolean isSyncAfterEngineeringSwitch() {
        return this.syncAfterEngineeringSwitch;
    }

    public void setSyncAfterEngineeringSwitch(boolean z) {
        this.syncAfterEngineeringSwitch = z;
    }

    public SensorInfoEvent getSensorInfo() {
        return this.sensorInfo;
    }

    public void setSensorInfo(SensorInfoEvent sensorInfoEvent) {
        this.sensorInfo = sensorInfoEvent;
    }

    public BaseStatusEvent getBaseStatus() {
        return this.baseStatus;
    }

    public void setBaseStatus(BaseStatusEvent baseStatusEvent) {
        this.baseStatus = baseStatusEvent;
    }

    public int getH5PowerPercent() {
        return this.h5PowerPercent;
    }

    public void setH5PowerPercent(int i) {
        this.h5PowerPercent = i;
    }

    public int getH5PowerSourceType() {
        return this.h5PowerSourceType;
    }

    public void setH5PowerSourceType(int i) {
        this.h5PowerSourceType = i;
    }

    public void clearH5PowerState() {
        this.h5PowerPercent = -1;
        this.h5PowerSourceType = -1;
    }

    public boolean isH5SupportRadioains() {
        return this.h5SupportRadioains;
    }

    public void setH5SupportRadio(boolean z) {
        this.h5SupportRadioains = z;
    }

    public boolean isIgnoreSensorOfflineForData() {
        return this.ignoreSensorOfflineForData;
    }

    public void setIgnoreSensorOfflineForData(boolean z) {
        this.ignoreSensorOfflineForData = z;
    }

    public void reset() {
        this.rtkInfo = null;
        this.appConfig = null;
        this.authResult = null;
        this.sensorInfo = null;
        this.baseStatus = null;
        clearH5PowerState();
        this.lastDeviceName = "";
        this.appVersionCheckedComplete = false;
        this.isCheckApkList = false;
        this.isCheckFmwUpgrade = false;
        NetworkDataLoader.getInstance().resetFmwListRequestState();
    }
}
