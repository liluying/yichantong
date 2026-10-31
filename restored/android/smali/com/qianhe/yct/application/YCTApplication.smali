.class public Lcom/qianhe/yct/application/YCTApplication;
.super Landroid/app/Application;
.source "YCTApplication.java"


# static fields
.field private static instance:Lcom/qianhe/yct/application/YCTApplication;


# instance fields
.field private final activityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private activityStartedCount:I

.field private appConfig:Lcom/qianhe/yct/bean/AppConfig;

.field private appConfigLoadedFromDisk:Z

.field private final appForeground:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private appVersionCheckedComplete:Z

.field private authResult:Lcom/qianhe/ntripclientlib/bean/AuthResult;

.field private baseInfo:Lcom/qianhe/rtkclientlib/event/RtkInfo;

.field private baseStatus:Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

.field private h5PowerPercent:I

.field private h5PowerSourceType:I

.field private h5SupportRadioains:Z

.field private ignoreSensorOfflineForData:Z

.field private isCheckApkList:Z

.field private isCheckFmwUpgrade:Z

.field private isH5ProDemo:Z

.field private lastDeviceName:Ljava/lang/String;

.field private mCurrentBaseDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

.field private mCurrentDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

.field private mSP:Landroid/content/SharedPreferences;

.field private rtkInfo:Lcom/qianhe/rtkclientlib/event/RtkInfo;

.field private sensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

.field private synDataNotify:Z

.field private syncAfterEngineeringSwitch:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetactivityStartedCount(Lcom/qianhe/yct/application/YCTApplication;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/application/YCTApplication;->activityStartedCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetappForeground(Lcom/qianhe/yct/application/YCTApplication;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/application/YCTApplication;->appForeground:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputactivityStartedCount(Lcom/qianhe/yct/application/YCTApplication;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/application/YCTApplication;->activityStartedCount:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->activityList:Ljava/util/List;

    .line 61
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->appForeground:Landroidx/lifecycle/MutableLiveData;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->lastDeviceName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/qianhe/yct/application/YCTApplication;->h5PowerPercent:I

    .line 80
    iput v0, p0, Lcom/qianhe/yct/application/YCTApplication;->h5PowerSourceType:I

    return-void
.end method

.method public static getInstance()Lcom/qianhe/yct/application/YCTApplication;
    .locals 1

    .line 87
    sget-object v0, Lcom/qianhe/yct/application/YCTApplication;->instance:Lcom/qianhe/yct/application/YCTApplication;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 92
    invoke-static {p1}, Lcom/qianhe/baselib/utils/LanguagePrefs;->wrapContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public clearH5PowerState()V
    .locals 1

    const/4 v0, -0x1

    .line 406
    iput v0, p0, Lcom/qianhe/yct/application/YCTApplication;->h5PowerPercent:I

    .line 407
    iput v0, p0, Lcom/qianhe/yct/application/YCTApplication;->h5PowerSourceType:I

    return-void
.end method

.method public getActivityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->activityList:Ljava/util/List;

    return-object v0
.end method

.method public getAppConfig()Lcom/qianhe/yct/bean/AppConfig;
    .locals 1

    .line 306
    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->hasExternalStorageAccess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lcom/qianhe/yct/bean/AppConfig;

    invoke-direct {v0}, Lcom/qianhe/yct/bean/AppConfig;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    return-object v0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/application/YCTApplication;->appConfigLoadedFromDisk:Z

    if-nez v0, :cond_3

    .line 314
    :cond_2
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/qianhe/yct/application/YCTApplication;->appConfigLoadedFromDisk:Z

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    return-object v0
.end method

.method public getAuthResult()Lcom/qianhe/ntripclientlib/bean/AuthResult;
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->authResult:Lcom/qianhe/ntripclientlib/bean/AuthResult;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(I)V

    :cond_0
    return-object v0
.end method

.method public getBaseInfo()Lcom/qianhe/rtkclientlib/event/RtkInfo;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->baseInfo:Lcom/qianhe/rtkclientlib/event/RtkInfo;

    return-object v0
.end method

.method public getBaseStatus()Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->baseStatus:Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    return-object v0
.end method

.method public getCurrentBaseDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->mCurrentBaseDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {v0}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>()V

    return-object v0
.end method

.method public getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->mCurrentDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    invoke-direct {v0}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>()V

    return-object v0
.end method

.method public getForegroundActivity()Landroid/app/Activity;
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->activityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 217
    iget-object v1, p0, Lcom/qianhe/yct/application/YCTApplication;->activityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 218
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 221
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 225
    const-string v3, "BluetoothBondActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5PowerPercent()I
    .locals 1

    .line 390
    iget v0, p0, Lcom/qianhe/yct/application/YCTApplication;->h5PowerPercent:I

    return v0
.end method

.method public getH5PowerSourceType()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/qianhe/yct/application/YCTApplication;->h5PowerSourceType:I

    return v0
.end method

.method public getLastDeviceName()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->lastDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getRtkInfo()Lcom/qianhe/rtkclientlib/event/RtkInfo;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->rtkInfo:Lcom/qianhe/rtkclientlib/event/RtkInfo;

    return-object v0
.end method

.method public getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->sensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    return-object v0
.end method

.method public isAT80orAT85()Z
    .locals 2

    .line 192
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "CPDEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SPRING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAppVersionCheckedComplete()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/qianhe/yct/application/YCTApplication;->appVersionCheckedComplete:Z

    return v0
.end method

.method public isAutoAdaptation()Z
    .locals 2

    .line 196
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "wheatek"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "RT3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckApkList()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/qianhe/yct/application/YCTApplication;->isCheckApkList:Z

    return v0
.end method

.method public isCheckFmwUpgrade()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/qianhe/yct/application/YCTApplication;->isCheckFmwUpgrade:Z

    return v0
.end method

.method public isDemo()Z
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->mSP:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGnssFmw(Ljava/lang/String;)Z
    .locals 1

    .line 345
    const-string v0, "M10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "980"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isH5Pro()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->mSP:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 280
    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 281
    iget-boolean v0, p0, Lcom/qianhe/yct/application/YCTApplication;->isH5ProDemo:Z

    return v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->mCurrentDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/application/YCTApplication;->mCurrentDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v2, v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryDeviceInfo(Ljava/lang/String;)Lcom/qianhe/yct/bean/DeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, v0, Lcom/qianhe/yct/bean/DeviceInfo;->type:Ljava/lang/String;

    const-string v2, "h5pro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public isH5SupportRadioains()Z
    .locals 1

    .line 411
    iget-boolean v0, p0, Lcom/qianhe/yct/application/YCTApplication;->h5SupportRadioains:Z

    return v0
.end method

.method public isIgnoreSensorOfflineForData()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lcom/qianhe/yct/application/YCTApplication;->ignoreSensorOfflineForData:Z

    return v0
.end method

.method public isPad()Z
    .locals 2

    .line 188
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "CPDEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SPRING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "RT3 Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isSynDataFlag()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/qianhe/yct/application/YCTApplication;->synDataNotify:Z

    return v0
.end method

.method public isSyncAfterEngineeringSwitch()Z
    .locals 1

    .line 358
    iget-boolean v0, p0, Lcom/qianhe/yct/application/YCTApplication;->syncAfterEngineeringSwitch:Z

    return v0
.end method

.method public observeAppForeground()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->appForeground:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 97
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 98
    invoke-static {p0}, Lcom/qianhe/yct/utils/ThemeModeManager;->applySavedMode(Landroid/content/Context;)V

    .line 99
    sput-object p0, Lcom/qianhe/yct/application/YCTApplication;->instance:Lcom/qianhe/yct/application/YCTApplication;

    .line 100
    new-instance v0, Lcom/qianhe/yct/application/YCTApplication$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/application/YCTApplication$1;-><init>(Lcom/qianhe/yct/application/YCTApplication;)V

    invoke-static {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->setEngineeringProvider(Lcom/qianhe/baselib/manage/GnssCoordConvertManager$EngineeringProvider;)V

    .line 112
    const-string/jumbo v0, "sp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->mSP:Landroid/content/SharedPreferences;

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.qianhe.xfix"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "add7994dc6"

    invoke-static {v0, v2, v1}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "92c6e44cb7"

    invoke-static {v0, v2, v1}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 120
    :goto_0
    invoke-static {}, Lcom/qianhe/baselib/utils/CrashHandler;->getInstance()Lcom/qianhe/baselib/utils/CrashHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qianhe/baselib/utils/CrashHandler;->init(Landroid/content/Context;)V

    .line 121
    new-instance v0, Lcom/qianhe/yct/application/YCTApplication$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/application/YCTApplication$2;-><init>(Lcom/qianhe/yct/application/YCTApplication;)V

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/RtkConstant;->setForegroundActivityProvider(Lcom/qianhe/rtkclientlib/ForegroundActivityProvider;)V

    .line 127
    new-instance v0, Lcom/qianhe/yct/application/YCTApplication$3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/application/YCTApplication$3;-><init>(Lcom/qianhe/yct/application/YCTApplication;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/application/YCTApplication$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/application/YCTApplication$4;-><init>(Lcom/qianhe/yct/application/YCTApplication;)V

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/QbSdk;->initX5Environment(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 427
    iput-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->rtkInfo:Lcom/qianhe/rtkclientlib/event/RtkInfo;

    .line 428
    iput-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    .line 429
    iput-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->authResult:Lcom/qianhe/ntripclientlib/bean/AuthResult;

    .line 430
    iput-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->sensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    .line 431
    iput-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->baseStatus:Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    .line 432
    invoke-virtual {p0}, Lcom/qianhe/yct/application/YCTApplication;->clearH5PowerState()V

    .line 433
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/application/YCTApplication;->lastDeviceName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 434
    iput-boolean v0, p0, Lcom/qianhe/yct/application/YCTApplication;->appVersionCheckedComplete:Z

    .line 435
    iput-boolean v0, p0, Lcom/qianhe/yct/application/YCTApplication;->isCheckApkList:Z

    .line 436
    iput-boolean v0, p0, Lcom/qianhe/yct/application/YCTApplication;->isCheckFmwUpgrade:Z

    .line 437
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->resetFmwListRequestState()V

    return-void
.end method

.method public setAppConfig(Lcom/qianhe/yct/bean/AppConfig;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/qianhe/yct/application/YCTApplication;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    if-eqz p1, :cond_0

    .line 322
    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->hasExternalStorageAccess(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 323
    iput-boolean p1, p0, Lcom/qianhe/yct/application/YCTApplication;->appConfigLoadedFromDisk:Z

    :cond_0
    return-void
.end method

.method public setAppVersionCheckedComplete(Z)V
    .locals 0

    .line 294
    iput-boolean p1, p0, Lcom/qianhe/yct/application/YCTApplication;->appVersionCheckedComplete:Z

    return-void
.end method

.method public setAuthResult(Lcom/qianhe/ntripclientlib/bean/AuthResult;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/qianhe/yct/application/YCTApplication;->authResult:Lcom/qianhe/ntripclientlib/bean/AuthResult;

    return-void
.end method

.method public setBaseInfo(Lcom/qianhe/rtkclientlib/event/RtkInfo;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/qianhe/yct/application/YCTApplication;->baseInfo:Lcom/qianhe/rtkclientlib/event/RtkInfo;

    return-void
.end method

.method public setBaseStatus(Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/qianhe/yct/application/YCTApplication;->baseStatus:Lcom/qianhe/rtkclientlib/event/BaseStatusEvent;

    return-void
.end method

.method public setCheckApkList(Z)V
    .locals 0

    .line 332
    iput-boolean p1, p0, Lcom/qianhe/yct/application/YCTApplication;->isCheckApkList:Z

    return-void
.end method

.method public setCheckFmwUpgrade(Z)V
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/qianhe/yct/application/YCTApplication;->isCheckFmwUpgrade:Z

    return-void
.end method

.method public setCurrentBaseDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/qianhe/yct/application/YCTApplication;->mCurrentBaseDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    return-void
.end method

.method public setCurrentDevice(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/qianhe/yct/application/YCTApplication;->mCurrentDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    return-void
.end method

.method public setH5PowerPercent(I)V
    .locals 0

    .line 394
    iput p1, p0, Lcom/qianhe/yct/application/YCTApplication;->h5PowerPercent:I

    return-void
.end method

.method public setH5PowerSourceType(I)V
    .locals 0

    .line 402
    iput p1, p0, Lcom/qianhe/yct/application/YCTApplication;->h5PowerSourceType:I

    return-void
.end method

.method public setH5SupportRadio(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/qianhe/yct/application/YCTApplication;->h5SupportRadioains:Z

    return-void
.end method

.method public setIgnoreSensorOfflineForData(Z)V
    .locals 0

    .line 423
    iput-boolean p1, p0, Lcom/qianhe/yct/application/YCTApplication;->ignoreSensorOfflineForData:Z

    return-void
.end method

.method public setIsH5ProDemo(Z)V
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/qianhe/yct/application/YCTApplication;->isH5ProDemo:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/qianhe/yct/application/YCTApplication;->isH5ProDemo:Z

    :cond_0
    return-void
.end method

.method public setLastDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/qianhe/yct/application/YCTApplication;->lastDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setRtkInfo(Lcom/qianhe/rtkclientlib/event/RtkInfo;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/qianhe/yct/application/YCTApplication;->rtkInfo:Lcom/qianhe/rtkclientlib/event/RtkInfo;

    return-void
.end method

.method public setSensorInfo(Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/qianhe/yct/application/YCTApplication;->sensorInfo:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    return-void
.end method

.method public setSynDataFlag(Z)V
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/qianhe/yct/application/YCTApplication;->synDataNotify:Z

    return-void
.end method

.method public setSyncAfterEngineeringSwitch(Z)V
    .locals 0

    .line 362
    iput-boolean p1, p0, Lcom/qianhe/yct/application/YCTApplication;->syncAfterEngineeringSwitch:Z

    return-void
.end method
