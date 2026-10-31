.class public abstract Lcom/qianhe/yct/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"

# interfaces
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/base/BaseActivity$ScreenReceiver;,
        Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;,
        Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;,
        Lcom/qianhe/yct/base/BaseActivity$OnPoleHeightInputConfirmListener;,
        Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;
    }
.end annotation


# static fields
.field private static bluetoothKickedTips:Z

.field private static connectFailedTips:Z

.field private static connectingDialogConsumed:Z

.field private static intentService:Landroid/content/Intent;

.field private static sHandledClipFingerprint:Ljava/lang/String;

.field private static sLastTcpClientTip:Ljava/lang/String;

.field private static sLastTcpClientTipTime:J

.field private static sLastUnknownHostTipTime:J

.field private static sShareCodePrompting:Z

.field private static screenReceiver:Lcom/qianhe/yct/base/BaseActivity$ScreenReceiver;


# instance fields
.field protected final MAX_COLLECT_COUNT:I

.field protected angleLastTime:J

.field public appConfig:Lcom/qianhe/yct/bean/AppConfig;

.field protected authFlag:Z

.field private calibrateDialogFragment:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

.field private collectingDialogFragment:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

.field protected count:I

.field private delayBigCount:J

.field private fmwInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;",
            ">;"
        }
    .end annotation
.end field

.field private fmwUpgradeCurrentStep:I

.field private forcedUpgradeDialog:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

.field private forcedUpgradeDialogFragment:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

.field private gifCharging:Lpl/droidsonroids/gif/GifImageView;

.field protected headingDegreesOK:Z

.field private init:Z

.field private instrumentCollectPoleHeightSet:Z

.field private instrumentCollectQuality:I

.field private final instrumentCollectSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private instrumentDopLogEnabled:Z

.field private final instrumentHdopSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final instrumentVdopSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private interruptDialogFragment:Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;

.field private isInstrumentCollecting:Z

.field protected isShowTips:Z

.field private isStartConnect:Z

.field protected isVisible:Z

.field private ivBack:Landroid/widget/ImageView;

.field private ivBattIcon:Landroid/widget/ImageView;

.field private lastInsDisplayState:I

.field protected latestHeadingDegreesError:D

.field private lltBackTb:Landroid/view/View;

.field private lltBatt:Landroid/view/View;

.field private lltInsState:Landroid/view/View;

.field private lltLocate:Landroid/view/View;

.field private lltStar:Landroid/view/View;

.field private loadingDialogManager:Lcom/qianhe/yct/utils/LoadingDialogManager;

.field protected mAvailable:Z

.field public mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field protected mGPDOP:Lcom/qianhe/baselib/bean/GPDOPEntity;

.field private mH5PowerPercent:I

.field private mH5PowerSourceType:I

.field private mScreenOffTime:J

.field protected mSharedWorkEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

.field private mSharedWorkTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

.field protected mSp:Landroid/content/SharedPreferences;

.field protected pitchAngle:D

.field private rltRMS:Landroid/view/View;

.field private rltSensorBatt:Landroid/view/View;

.field protected sensorOfflineCount:I

.field private sessionPoleHeightMeters:F

.field private softInputTouchDownX:F

.field private softInputTouchDownY:F

.field private softInputTouchMoved:Z

.field protected tipsDialogManager:Lcom/qianhe/yct/utils/TipsDialogManager;

.field private toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

.field private topBar:Landroid/widget/FrameLayout;

.field private tvAngle:Landroid/widget/TextView;

.field private tvDemoTip:Landroid/widget/TextView;

.field private tvDiffDelay:Landroid/widget/TextView;

.field private tvGotoConnect:Landroid/widget/TextView;

.field private tvHRMS:Landroid/widget/TextView;

.field private tvInsState:Landroid/widget/TextView;

.field private tvRtkState:Landroid/widget/TextView;

.field private tvSensorBatt:Landroid/widget/TextView;

.field private tvUseStars:Landroid/widget/TextView;

.field private tvVRMS:Landroid/widget/TextView;

.field private tvZpyBatt:Landroid/widget/TextView;

.field private upgradeDialog:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

.field private upgradeInfo:Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;

.field private upgradeingDialogManager:Lcom/qianhe/yct/utils/UpgradeingDialogManager;

.field protected workPageDataAvailable:Z

.field protected zeroDegrees:F


# direct methods
.method public static synthetic $r8$lambda$1tdYl4MCXYNn5PYE6l8tWC1j7gU(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/baselib/enums/DeviceType;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 798
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelUpgradeingDialog()V

    .line 800
    sget-object p2, Lcom/qianhe/yct/utils/AppUpgrader;->INSTANCE:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-virtual {p2}, Lcom/qianhe/yct/utils/AppUpgrader;->cancelDownload()V

    .line 802
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/qianhe/yct/event/AppVersionCheckEndEvent;

    invoke-direct {v0, p1}, Lcom/qianhe/yct/event/AppVersionCheckEndEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 803
    sget p1, Lcom/qianhe/yct/R$string;->download_cancelled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$24tKbNO6WeO0_99RGcQATOuRo6A(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;I)V
    .locals 2

    const/4 v0, 0x0

    .line 2820
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->isInstrumentCollecting:Z

    .line 2821
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->disableInstrumentDopLog()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2823
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->clearInstrumentQualitySamples()V

    .line 2824
    invoke-interface {p1, v0}, Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;->onResult(Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    return-void

    .line 2827
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->buildInstrumentCollectResult()Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;

    move-result-object p2

    .line 2828
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->clearInstrumentQualitySamples()V

    if-eqz p2, :cond_2

    .line 2829
    iget-object v1, p2, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->coords:[D

    if-nez v1, :cond_1

    goto :goto_0

    .line 2834
    :cond_1
    invoke-interface {p1, p2}, Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;->onResult(Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    return-void

    .line 2830
    :cond_2
    :goto_0
    sget p2, Lcom/qianhe/yct/R$string;->getting_location:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 2831
    invoke-interface {p1, v0}, Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;->onResult(Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$59H5i5OFC6FJnQ-frKynfeOd77w(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;F)V
    .locals 0

    .line 2688
    iput p2, p0, Lcom/qianhe/yct/base/BaseActivity;->sessionPoleHeightMeters:F

    const/4 p2, 0x1

    .line 2689
    iput-boolean p2, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentCollectPoleHeightSet:Z

    .line 2690
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->startInstrumentCollectCountdown(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K2cuzYMVLKlATM09znXSIwdIIxo(Lcom/qianhe/yct/base/BaseActivity;)V
    .locals 0

    .line 540
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->dismissStaleBluetoothPairingDialogsIfNeeded()V

    .line 541
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->restoreBluetoothConnectUi()V

    return-void
.end method

.method public static synthetic $r8$lambda$RHwmvHltTYhGpzWkx0xh-majaQk(Lcom/qianhe/yct/base/BaseActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1259
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1261
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->gotoShareProjectFromCode()V

    return-void

    .line 1263
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->handleAppBackgroundDuringBluetoothBond()V

    return-void
.end method

.method public static synthetic $r8$lambda$aZ6tKhts54m7ubwnDUDpZyh73Vk(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;F)V
    .locals 0

    .line 2705
    iput p2, p0, Lcom/qianhe/yct/base/BaseActivity;->sessionPoleHeightMeters:F

    const/4 p2, 0x1

    .line 2706
    iput-boolean p2, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentCollectPoleHeightSet:Z

    .line 2707
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showBubbleCompassCollectDialog(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qGuYmRP2zOCHWIXd-EOZ8-kQwCE(Lcom/qianhe/yct/base/BaseActivity;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3074
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelBluetoothBondingIfNeeded()V

    return-void

    .line 0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$xBBqBUsZ-Y2L0yUZaCPqgy65ePA(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;F)V
    .locals 0

    .line 2678
    iput p2, p0, Lcom/qianhe/yct/base/BaseActivity;->sessionPoleHeightMeters:F

    const/4 p2, 0x1

    .line 2679
    iput-boolean p2, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentCollectPoleHeightSet:Z

    .line 2680
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->startInstrumentCollectCountdown(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetforcedUpgradeDialog(Lcom/qianhe/yct/base/BaseActivity;)Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialog:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetupgradeDialog(Lcom/qianhe/yct/base/BaseActivity;)Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseActivity;->upgradeDialog:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmScreenOffTime(Lcom/qianhe/yct/base/BaseActivity;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mScreenOffTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildInstrumentCollectResultFromCurrentGga(Lcom/qianhe/yct/base/BaseActivity;)Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->buildInstrumentCollectResultFromCurrentGga()Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcontinueBasicPermissionFlow(Lcom/qianhe/yct/base/BaseActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->continueBasicPermissionFlow()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableInstrumentDopLog(Lcom/qianhe/yct/base/BaseActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->disableInstrumentDopLog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minstallApkWithRestart(Lcom/qianhe/yct/base/BaseActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/base/BaseActivity;->installApkWithRestart(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenAppPermissionsSettings(Lcom/qianhe/yct/base/BaseActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->openAppPermissionsSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenLocationSettings(Lcom/qianhe/yct/base/BaseActivity;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->openLocationSettings(Landroid/app/Activity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestartApp(Lcom/qianhe/yct/base/BaseActivity;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->restartApp(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestoreTopBarBatteryUi(Lcom/qianhe/yct/base/BaseActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->restoreTopBarBatteryUi()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowAppForcedUpgradeDialog(Lcom/qianhe/yct/base/BaseActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->showAppForcedUpgradeDialog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputconnectingDialogConsumed(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/qianhe/yct/base/BaseActivity;->connectingDialogConsumed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsShareCodePrompting(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/qianhe/yct/base/BaseActivity;->sShareCodePrompting:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 181
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentCollectSamples:Ljava/util/List;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentHdopSamples:Ljava/util/List;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentVdopSamples:Ljava/util/List;

    const/4 v0, -0x1

    .line 205
    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerPercent:I

    .line 207
    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerSourceType:I

    const/4 v0, 0x5

    .line 222
    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->MAX_COLLECT_COUNT:I

    const/4 v0, 0x1

    .line 223
    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->zeroDegrees:F

    const/4 v0, 0x0

    .line 262
    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->fmwUpgradeCurrentStep:I

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->fmwInfoList:Ljava/util/List;

    return-void
.end method

.method private accumulateInstrumentCollectSample(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 10

    .line 2839
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->isInstrumentCollecting:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2842
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "zpy_antennaheight"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 2843
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentCollectSamples:Ljava/util/List;

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    float-to-double v8, v0

    sub-double/2addr v6, v8

    iget v0, p0, Lcom/qianhe/yct/base/BaseActivity;->sessionPoleHeightMeters:F

    float-to-double v8, v0

    sub-double/2addr v6, v8

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v8, 0x0

    aput-wide v2, v0, v8

    const/4 v2, 0x1

    aput-wide v4, v0, v2

    const/4 v2, 0x2

    aput-wide v6, v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2844
    iget v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentCollectQuality:I

    .line 2845
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mGPDOP:Lcom/qianhe/baselib/bean/GPDOPEntity;

    if-eqz v0, :cond_1

    .line 2846
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentHdopSamples:Ljava/util/List;

    iget v0, v0, Lcom/qianhe/baselib/bean/GPDOPEntity;->hdop:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2847
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentVdopSamples:Ljava/util/List;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mGPDOP:Lcom/qianhe/baselib/bean/GPDOPEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/GPDOPEntity;->vdop:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2849
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentHdopSamples:Ljava/util/List;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->hdop:D

    double-to-float p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private applyScreenOrientation()V
    .locals 0

    .line 342
    invoke-static {p0}, Lcom/qianhe/yct/utils/ScreenOrientationHelper;->apply(Landroid/app/Activity;)V

    return-void
.end method

.method private averageInstrumentDop(Ljava/util/List;)D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)D"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    .line 2936
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 2938
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    add-double/2addr v0, v3

    goto :goto_0

    .line 2941
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    :cond_2
    :goto_1
    return-wide v0
.end method

.method private buildInstrumentCollectResult()Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;
    .locals 16

    move-object/from16 v0, p0

    .line 2855
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->instrumentCollectSamples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 2861
    :cond_0
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->instrumentCollectSamples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    move-wide v8, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    .line 2862
    aget-wide v11, v10, v11

    add-double/2addr v4, v11

    const/4 v11, 0x1

    .line 2863
    aget-wide v11, v10, v11

    add-double/2addr v6, v11

    const/4 v11, 0x2

    .line 2864
    aget-wide v11, v10, v11

    add-double/2addr v8, v11

    goto :goto_0

    .line 2866
    :cond_1
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->instrumentCollectSamples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v12, v1

    div-double/2addr v4, v12

    div-double/2addr v6, v12

    div-double/2addr v8, v12

    .line 2870
    iget v1, v0, Lcom/qianhe/yct/base/BaseActivity;->instrumentCollectQuality:I

    if-eqz v1, :cond_2

    move v11, v1

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v1, :cond_3

    iget v11, v1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    .line 2871
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->instrumentHdopSamples:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->averageInstrumentDop(Ljava/util/List;)D

    move-result-wide v12

    cmpl-double v1, v12, v2

    if-nez v1, :cond_4

    .line 2872
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v1, :cond_4

    iget-wide v12, v1, Lcom/qianhe/baselib/bean/GGAEntity;->hdop:D

    .line 2873
    :cond_4
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->instrumentVdopSamples:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->averageInstrumentDop(Ljava/util/List;)D

    move-result-wide v14

    cmpl-double v1, v14, v2

    if-nez v1, :cond_5

    .line 2874
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->mGPDOP:Lcom/qianhe/baselib/bean/GPDOPEntity;

    if-eqz v1, :cond_5

    iget v1, v1, Lcom/qianhe/baselib/bean/GPDOPEntity;->vdop:F

    float-to-double v14, v1

    :cond_5
    move-wide v1, v4

    move-wide v3, v6

    move-wide v5, v8

    move v7, v11

    move-wide v8, v12

    move-wide v10, v14

    .line 2875
    invoke-direct/range {v0 .. v11}, Lcom/qianhe/yct/base/BaseActivity;->buildInstrumentCollectResult(DDDIDD)Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;

    move-result-object v1

    return-object v1
.end method

.method private buildInstrumentCollectResult(DDDIDD)Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;
    .locals 12

    const/4 v0, 0x3

    .line 2898
    new-array v3, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v3, v1

    const/4 v1, 0x1

    aput-wide p3, v3, v1

    const/4 v1, 0x2

    aput-wide p5, v3, v1

    .line 2899
    new-array v11, v0, [D

    move-object v4, p0

    move-wide v5, p1

    move-wide v7, p3

    move-wide/from16 v9, p5

    .line 2900
    invoke-direct/range {v4 .. v11}, Lcom/qianhe/yct/base/BaseActivity;->convertInsGeodeticToPlane(DDD[D)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2903
    :cond_0
    new-instance v1, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;

    move/from16 v4, p7

    move-wide/from16 v5, p8

    move-wide/from16 v7, p10

    move-object v2, v11

    invoke-direct/range {v1 .. v8}, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;-><init>([D[DIDD)V

    return-object v1
.end method

.method private buildInstrumentCollectResultFromCurrentGga()Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;
    .locals 14

    .line 2885
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v1, :cond_3

    iget v1, v1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_4

    .line 2888
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "zpy_antennaheight"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 2889
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    float-to-double v5, v1

    sub-double/2addr v3, v5

    iget v1, p0, Lcom/qianhe/yct/base/BaseActivity;->sessionPoleHeightMeters:F

    float-to-double v5, v1

    sub-double v5, v3, v5

    .line 2890
    iget v7, v2, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    .line 2891
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mGPDOP:Lcom/qianhe/baselib/bean/GPDOPEntity;

    if-eqz v1, :cond_1

    iget v3, v1, Lcom/qianhe/baselib/bean/GPDOPEntity;->hdop:F

    float-to-double v3, v3

    :goto_0
    move-wide v8, v3

    goto :goto_1

    :cond_1
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/GGAEntity;->hdop:D

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_2

    .line 2892
    iget v1, v1, Lcom/qianhe/baselib/bean/GPDOPEntity;->vdop:F

    float-to-double v3, v1

    :goto_2
    move-wide v10, v3

    goto :goto_3

    :cond_2
    const-wide/16 v3, 0x0

    goto :goto_2

    .line 2893
    :goto_3
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    iget-wide v1, v2, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    move-wide v12, v3

    move-wide v3, v1

    move-wide v1, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/qianhe/yct/base/BaseActivity;->buildInstrumentCollectResult(DDDIDD)Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;

    move-result-object v1

    return-object v1

    :cond_3
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private checkConnect()V
    .locals 5

    .line 2284
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2286
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v3, "latestDeviceAddress"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2287
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2288
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->startBlueService()V

    return-void

    .line 2290
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2291
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->startBlueService()V

    return-void

    .line 2294
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    .line 2298
    :cond_3
    sget v0, Lcom/qianhe/yct/R$string;->phone_no_ble:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u8be5\u624b\u673a\u4e0d\u652f\u6301\u84dd\u7259\u529f\u80fd\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private checkModelUpgrade(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 5

    .line 2474
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v1, ""

    if-ne p1, v0, :cond_0

    .line 2475
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "base_deviceSn"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2477
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "deviceSn"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2479
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-le v2, v3, :cond_1

    .line 2480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GNSS-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2481
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/qianhe/baselib/Constant;->GNSS_FWM_VERSION:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2483
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getFirmwareList(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private clearInstrumentQualitySamples()V
    .locals 1

    .line 2929
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentCollectSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2930
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentHdopSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2931
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentVdopSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 2932
    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentCollectQuality:I

    return-void
.end method

.method private continueBasicPermissionFlow()V
    .locals 3

    .line 618
    const-string v0, "basic"

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->init()V

    return-void

    .line 622
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->hasBasicRuntimePermissions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 623
    sget v0, Lcom/qianhe/yct/R$string;->permission_des:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->getBasicRuntimePermissions()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    return-void

    .line 626
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->requestStoragePermission()V

    return-void
.end method

.method private convertInsGeodeticToPlane(DDD[D)Z
    .locals 11

    .line 1842
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSharedWorkEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v0, :cond_0

    .line 1844
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mSharedWorkEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v3, p0, Lcom/qianhe/yct/base/BaseActivity;->mSharedWorkTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToAlignedProj(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;DDD[D)Z

    move-result p1

    return p1

    .line 1846
    :cond_0
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToAlignedProj(DDD[D)Z

    move-result p1

    return p1
.end method

.method private copyInsGeodeticFromSource(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 2

    .line 1763
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLon:D

    .line 1764
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLat:D

    .line 1765
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElev:D

    .line 1766
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLonR:D

    .line 1767
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLatR:D

    .line 1768
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElevR:D

    return-void
.end method

.method private disableInstrumentDopLog()V
    .locals 4

    .line 2913
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentDopLogEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 2914
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->resolveInstrumentDeviceType()Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v2

    const-string v3, "UNLOG,DOP"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2915
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentDopLogEnabled:Z

    return-void
.end method

.method private dismissBluetoothPairingDialogsGlobally()V
    .locals 4

    .line 3031
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 3032
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 3033
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 3034
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 3037
    :cond_0
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 3040
    :cond_1
    instance-of v3, v2, Lcom/qianhe/yct/base/BaseActivity;

    if-eqz v3, :cond_2

    .line 3041
    check-cast v2, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v2}, Lcom/qianhe/yct/base/BaseActivity;->forceDismissBluetoothPairingDialogs()V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private dismissStaleBluetoothPairingDialogsIfNeeded()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 3049
    const-string v0, "basic"

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tipsDialogManager:Lcom/qianhe/yct/utils/TipsDialogManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/TipsDialogManager;->isPermissionDialogShowing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tipsDialogManager:Lcom/qianhe/yct/utils/TipsDialogManager;

    .line 3050
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/TipsDialogManager;->isBluetoothPairingDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3053
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    .line 3054
    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isBondingInProgress()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isConnectingInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3057
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->loadingDialogManager:Lcom/qianhe/yct/utils/LoadingDialogManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 3060
    :cond_2
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    .line 3061
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentBaseDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    .line 3062
    invoke-direct {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->isDeviceBonding(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->isDeviceBonding(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 3065
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->isStartConnect:Z

    .line 3066
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3067
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->loadingDialogManager:Lcom/qianhe/yct/utils/LoadingDialogManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->dismissImmediately()V

    :cond_4
    :goto_0
    return-void
.end method

.method private enableInstrumentDopLog()V
    .locals 4

    .line 2907
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentDopLogEnabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 2908
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->resolveInstrumentDeviceType()Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v2

    const-string v3, "LOG,DOP,ONTIME,1"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2909
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentDopLogEnabled:Z

    return-void
.end method

.method private findEditTextInHierarchy(Landroid/view/View;FF)Landroid/widget/EditText;
    .locals 4

    .line 3708
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->isTouchOnView(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3709
    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 3710
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    check-cast p1, Landroid/widget/EditText;

    return-object p1

    :cond_1
    return-object v1

    .line 3712
    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 3713
    check-cast p1, Landroid/view/ViewGroup;

    .line 3715
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    .line 3716
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3717
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v2, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->isTouchOnView(Landroid/view/View;FF)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 3718
    :cond_3
    invoke-direct {p0, v2, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->findEditTextInHierarchy(Landroid/view/View;FF)Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    .line 3720
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    return-object v1

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-object v1
.end method

.method private findEditTextUnder(FF)Landroid/widget/EditText;
    .locals 2

    .line 3702
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 3704
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/qianhe/yct/base/BaseActivity;->findEditTextInHierarchy(Landroid/view/View;FF)Landroid/widget/EditText;

    move-result-object p1

    return-object p1
.end method

.method private getBasicRuntimePermissions()[Ljava/lang/String;
    .locals 4

    .line 606
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    if-lt v0, v1, :cond_0

    .line 607
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    filled-new-array {v3, v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 609
    :cond_0
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTargetSdk(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 1036
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1037
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1038
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1040
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private handleAppBackgroundDuringBluetoothBond()V
    .locals 2

    .line 3094
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    .line 3095
    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isBondingInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3099
    :cond_0
    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isBackgroundBondCancelSuppressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3100
    const-string/jumbo v0, "\u5ffd\u7565\u77ed\u6682\u9000\u540e\u53f0\u53d6\u6d88\u914d\u5bf9\uff08\u5207\u6362/\u914d\u5bf9\u9875\u542f\u52a8\u4e2d\uff09"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 3103
    :cond_1
    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->cancelBondingIfNeeded()V

    .line 3104
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->dismissBluetoothPairingDialogsGlobally()V

    return-void
.end method

.method private handleBasicPermissionDenied(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 663
    invoke-static {p0, p2}, Lpub/devrel/easypermissions/EasyPermissions;->somePermissionPermanentlyDenied(Landroid/app/Activity;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 664
    new-instance p1, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;

    invoke-direct {p1, p0}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->build()Lpub/devrel/easypermissions/AppSettingsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lpub/devrel/easypermissions/AppSettingsDialog;->show()V

    return-void

    :cond_0
    const/16 p2, 0x64

    if-eq p1, p2, :cond_2

    const/16 p2, 0x66

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 667
    :goto_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showPermissionNotGrantedDialog(Z)V

    return-void
.end method

.method private hasBasicRuntimePermissions()Z
    .locals 1

    .line 613
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->getBasicRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hideSoftInputIfTouchOutside(FF)V
    .locals 2

    .line 3639
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 3640
    instance-of v1, v0, Landroid/widget/EditText;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3642
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/base/BaseActivity;->findEditTextUnder(FF)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3646
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 3647
    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_2

    .line 3649
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private init()V
    .locals 4

    .line 736
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->init:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 737
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->init:Z

    .line 738
    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->migrateYctDbToXfixIfNeeded(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 739
    invoke-static {p0, v0}, Lcom/qianhe/baselib/utils/LogToFile;->init(Landroid/content/Context;Z)V

    .line 740
    invoke-static {}, Lcom/qianhe/baselib/utils/BleLogCache;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 741
    invoke-static {p0}, Lcom/qianhe/baselib/utils/BleLogCache;->init(Landroid/content/Context;)V

    .line 743
    :try_start_0
    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->mkDiffLogFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qh/diffclient/DiffClient;->setLoggerFilePath(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiffClient.setLoggerFilePath \u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 748
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->mkDevLogFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qh/yctdevice/YctDevice;->setLoggerFilePath(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YctDevice.setLoggerFilePath \u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 753
    :cond_0
    :goto_1
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->isInit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 754
    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->init(Landroid/content/Context;)V

    .line 756
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateUploadHelper;->install()V

    .line 758
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->getXexcavatorVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    :try_start_2
    invoke-static {}, Lcom/qh/libexcavator/Excavator;->libraryVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->setXexcavatorVersion(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    nop

    .line 764
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    if-nez v0, :cond_3

    .line 765
    const-string/jumbo v0, "\u8bfb\u53d6\u914d\u7f6e\u6587\u4ef6"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    .line 768
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v2

    const-string v3, "mode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 769
    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 770
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->initData()V

    .line 771
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->checkConnect()V

    goto :goto_3

    .line 772
    :cond_4
    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 773
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 774
    :cond_5
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->initData()V

    .line 775
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->startBlueService()V

    .line 777
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->initObserveAppForeground()V

    :cond_7
    return-void
.end method

.method private initObserveAppForeground()V
    .locals 2

    .line 1257
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    .line 1258
    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->observeAppForeground()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private installApkWithRestart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------\u6b63\u5728\u5b89\u88c5apk--------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1006
    sget-object v0, Lcom/qianhe/yct/utils/AppUpgrader;->INSTANCE:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->getApkInfo()Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f53\u524d\u7248\u672c\uff1a2.0.2609.109\uff0c\u65b0\u7248\u672c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/AppUpgrader;->getApkInfo()Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1007
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->getTargetSdk(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_2

    .line 1008
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 1009
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1011
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, "application/vnd.android.package-archive"

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    .line 1012
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 1014
    invoke-virtual {v0, p2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1016
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1019
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 1022
    :cond_2
    invoke-static {p0}, Lcom/qianhe/yct/utils/ApkInstaller30;->canInstallApk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1023
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1024
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/ApkInstaller30;->installApk(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_1

    .line 1027
    :cond_3
    invoke-static {p0}, Lcom/qianhe/yct/utils/ApkInstaller30;->requestInstallPermission(Landroid/content/Context;)V

    .line 1029
    :goto_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->registerInstallReceiver(Landroid/content/Context;)V

    return-void
.end method

.method private isBluetoothProgressState(I)Z
    .locals 1

    .line 3180
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->START_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->BONDING:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 3181
    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->STARTCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 3182
    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isDateExpired(Ljava/lang/String;)Z
    .locals 4

    .line 2378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2381
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2383
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2384
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 2385
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 2386
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    .line 2388
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u65e5\u671f\u683c\u5f0f\u9519\u8bef: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return v1
.end method

.method private isDeviceBonding(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3187
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_0

    .line 3188
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isInsAbnormalDisplayState(ZI)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1920
    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    if-eq p2, p1, :cond_1

    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    if-eq p2, p1, :cond_1

    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->TILTREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    if-eq p2, p1, :cond_1

    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method private isInsReadyDisplayState(ZI)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1926
    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->READY:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    if-ne p2, p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    if-ne p2, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method private isLocationEnabled()Z
    .locals 4

    const/4 v0, 0x0

    .line 1080
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 1083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u65e0\u6cd5\u83b7\u53d6\u4f4d\u7f6e\u6a21\u5f0f\u8bbe\u7f6e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return v0
.end method

.method private isSoftInputVisible()Z
    .locals 9

    .line 3671
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 3673
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    .line 3674
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowInsets;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3675
    invoke-static {}, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m()I

    move-result v3

    invoke-static {v2, v3}, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    .line 3679
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3680
    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3681
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 3682
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v0, v2

    int-to-double v2, v2

    int-to-double v5, v0

    const-wide v7, 0x3fc3333333333333L    # 0.15

    mul-double v5, v5, v7

    cmpl-double v0, v2, v5

    if-lez v0, :cond_3

    return v4

    .line 3687
    :cond_3
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3688
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_4

    .line 3689
    instance-of v3, v2, Landroid/widget/EditText;

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    if-eqz v0, :cond_4

    return v4

    :cond_4
    return v1
.end method

.method private isTouchOnView(Landroid/view/View;FF)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3694
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 3695
    new-array v1, v1, [I

    .line 3696
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3697
    aget v2, v1, v0

    int-to-float v3, v2

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_1

    const/4 p2, 0x1

    aget v1, v1, p2

    int-to-float v2, v1

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_1

    return p2

    :cond_1
    :goto_0
    return v0
.end method

.method private loadSharedWorkEngineeringFromIntent()V
    .locals 3

    .line 1874
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1876
    :cond_0
    const-string v1, "shared_engineering"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 1877
    instance-of v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v1, :cond_1

    .line 1878
    check-cast v0, Lcom/qianhe/baselib/bean/EngineeringEntity;

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSharedWorkEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 1879
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSharedWorkEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->resolveGnssTransParamForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSharedWorkTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 1881
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSharedWorkEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mSharedWorkTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->setSessionEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onBasicPermissionRequestFinished(I)V
    .locals 1

    .line 651
    const-string v0, "basic"

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->init()V

    return-void

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->hasBasicRuntimePermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->hasExternalStorageAccess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 656
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->requestStoragePermission()V

    return-void

    .line 659
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->getBasicRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->handleBasicPermissionDenied(ILjava/util/List;)V

    return-void
.end method

.method private openAppPermissionsSettings()V
    .locals 4

    .line 1431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1433
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1435
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1436
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 1439
    :cond_0
    const-string/jumbo v0, "\u65e0\u6cd5\u6253\u5f00\u6743\u9650\u8bbe\u7f6e\u9875\u9762"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private openLocationSettings(Landroid/app/Activity;)V
    .locals 4

    .line 1092
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1093
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    if-lt v1, v2, :cond_0

    .line 1095
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1098
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/16 v1, 0x3e9

    .line 1101
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1103
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1104
    sget v1, Lcom/qianhe/yct/R$string;->jump_failed:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u65e0\u6cd5\u6253\u5f00\u4f4d\u7f6e\u8bbe\u7f6e\u9875\u9762:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method private refrshAngle(ZLcom/qianhe/baselib/bean/InsNavi;)V
    .locals 6

    const/4 v0, 0x1

    .line 1782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/qianhe/yct/base/BaseActivity;->angleLastTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x320

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_interval:F

    sget-object v2, Lcom/qianhe/baselib/enums/FrequencyEnum;->HZ_1:Lcom/qianhe/baselib/enums/FrequencyEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/FrequencyEnum;->getFrequency()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 1784
    iget-wide p1, p2, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iput-wide p1, p0, Lcom/qianhe/yct/base/BaseActivity;->pitchAngle:D

    goto :goto_1

    .line 1786
    :cond_2
    iget-wide p1, p2, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iget v1, p0, Lcom/qianhe/yct/base/BaseActivity;->zeroDegrees:F

    float-to-double v1, v1

    sub-double/2addr p1, v1

    iput-wide p1, p0, Lcom/qianhe/yct/base/BaseActivity;->pitchAngle:D

    .line 1788
    :goto_1
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvAngle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 1789
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1790
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvAngle:Landroid/widget/TextView;

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v1, p0, Lcom/qianhe/yct/base/BaseActivity;->pitchAngle:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%.2f\u00b0"

    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1792
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/qianhe/yct/base/BaseActivity;->angleLastTime:J

    return-void
.end method

.method private refrshBattState()V
    .locals 3

    .line 1453
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvZpyBatt:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerPercent:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1454
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1455
    iget v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerPercent:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvZpyBatt:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$color;->red:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvZpyBatt:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$color;->text_black:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private refrshChargingState()V
    .locals 3

    .line 1464
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->gifCharging:Lpl/droidsonroids/gif/GifImageView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerSourceType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 1465
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private registerInstallReceiver(Landroid/content/Context;)V
    .locals 3

    .line 1046
    new-instance v0, Lcom/qianhe/yct/base/BaseActivity$14;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/base/BaseActivity$14;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    .line 1061
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1062
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1063
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private requestStoragePermission()V
    .locals 4

    .line 630
    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->hasExternalStorageAccess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->init()V

    return-void

    .line 634
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 635
    sget v0, Lcom/qianhe/yct/R$string;->permission_desc:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->go_open:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/base/BaseActivity$10;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/base/BaseActivity$10;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    const-string v3, "permission"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void

    .line 646
    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->permission_des:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-static {p0, v0, v2, v1}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method private resolveInProgressBluetoothDevice(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;
    .locals 3

    .line 3159
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    .line 3160
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentBaseDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    .line 3161
    iget v2, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    invoke-direct {p0, v2}, Lcom/qianhe/yct/base/BaseActivity;->isBluetoothProgressState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3164
    :cond_0
    iget v2, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    invoke-direct {p0, v2}, Lcom/qianhe/yct/base/BaseActivity;->isBluetoothProgressState(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 3167
    :cond_1
    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isBondingInProgress()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isConnectingInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 3168
    :cond_3
    :goto_0
    iget-object v2, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_4

    goto :goto_1

    .line 3171
    :cond_4
    iget-object v2, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_5

    goto :goto_2

    .line 3174
    :cond_5
    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isBondingInProgress()Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_1
    return-object v0

    :cond_6
    :goto_2
    return-object v1
.end method

.method private resolveInsDisplayState(ZI)I
    .locals 1

    if-eqz p1, :cond_5

    .line 1905
    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v0

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    return p1

    .line 1906
    :cond_0
    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v0

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    return p1

    .line 1907
    :cond_1
    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->TILTREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v0

    and-int/2addr v0, p2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    return p1

    .line 1908
    :cond_2
    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v0

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    return p1

    .line 1909
    :cond_3
    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->READY:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v0

    and-int/2addr p2, v0

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1

    .line 1910
    :cond_5
    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v0

    and-int/2addr p2, v0

    if-eqz p2, :cond_6

    .line 1911
    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    return p1

    :cond_6
    const/4 p1, -0x1

    return p1
.end method

.method private resolveInstrumentDeviceType()Lcom/qianhe/baselib/enums/DeviceType;
    .locals 3

    .line 2919
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2922
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static resolveShareMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3494
    const-string v0, "*/*"

    if-nez p0, :cond_0

    return-object v0

    .line 3497
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 3498
    const-string v1, ".csv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3499
    const-string/jumbo p0, "text/csv"

    return-object p0

    .line 3501
    :cond_1
    const-string v1, ".xls"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ".xlsx"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 3504
    :cond_2
    const-string v1, ".txt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 3505
    const-string/jumbo p0, "text/plain"

    return-object p0

    :cond_3
    return-object v0

    .line 3502
    :cond_4
    :goto_0
    const-string p0, "application/vnd.ms-excel"

    return-object p0
.end method

.method private restartApp(Landroid/content/Context;)V
    .locals 2

    .line 1069
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x10008000

    .line 1070
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1071
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1072
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private restoreBatteryStateFromApp()V
    .locals 2

    .line 727
    iget v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerPercent:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 728
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getH5PowerPercent()I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerPercent:I

    .line 730
    :cond_0
    iget v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerSourceType:I

    if-ne v0, v1, :cond_1

    .line 731
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getH5PowerSourceType()I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerSourceType:I

    :cond_1
    return-void
.end method

.method private restoreBatteryStateFromBundle(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    .line 714
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->restoreBatteryStateFromApp()V

    return-void

    .line 717
    :cond_0
    const-string/jumbo v0, "state_power_percent"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 718
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerPercent:I

    .line 720
    :cond_1
    const-string/jumbo v0, "state_power_source_type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 721
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerSourceType:I

    .line 723
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->restoreBatteryStateFromApp()V

    return-void
.end method

.method private restoreBluetoothConnectUi()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 3115
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->shouldHandleForegroundUiEvent()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->shouldRestoreBluetoothConnectProgressUi()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3118
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v2

    const-string v3, "mode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3119
    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    .line 3122
    :cond_1
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    .line 3123
    invoke-direct {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->resolveInProgressBluetoothDevice(Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 3124
    iget-object v4, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eqz v4, :cond_2

    .line 3125
    invoke-virtual {v0, v4}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget v4, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v5, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 3126
    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v5

    if-ne v4, v5, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 3127
    :goto_0
    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isBondingInProgress()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isConnectingInProgress()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v1, :cond_6

    iget v5, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 3128
    invoke-direct {p0, v5}, Lcom/qianhe/yct/base/BaseActivity;->isBluetoothProgressState(I)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    if-nez v4, :cond_e

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    if-nez v1, :cond_8

    goto :goto_2

    .line 3139
    :cond_8
    iget v2, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v4, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->STARTCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v4

    if-eq v2, v4, :cond_9

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isConnectingInProgress()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3140
    :cond_9
    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isBondingInProgress()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_2

    .line 3144
    :cond_a
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->tipsDialogManager:Lcom/qianhe/yct/utils/TipsDialogManager;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/TipsDialogManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_2

    .line 3147
    :cond_b
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->loadingDialogManager:Lcom/qianhe/yct/utils/LoadingDialogManager;

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/LoadingDialogManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_2

    .line 3150
    :cond_c
    iput-boolean v3, p0, Lcom/qianhe/yct/base/BaseActivity;->isStartConnect:Z

    .line 3151
    iget v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    .line 3153
    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->START_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    if-eq v1, v2, :cond_d

    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->BONDING:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    if-eq v1, v2, :cond_d

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isBondingInProgress()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3154
    :cond_d
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->showPairingProgressDialog()V

    return-void

    .line 3130
    :cond_e
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->loadingDialogManager:Lcom/qianhe/yct/utils/LoadingDialogManager;

    invoke-virtual {v1}, Lcom/qianhe/yct/utils/LoadingDialogManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isBondingInProgress()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3131
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->dismissConnectingDialog()V

    :cond_f
    :goto_2
    return-void
.end method

.method private restoreTopBarBatteryUi()V
    .locals 3

    .line 1471
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->restoreBatteryStateFromApp()V

    .line 1472
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->refrshBattState()V

    .line 1473
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->refrshChargingState()V

    .line 1474
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1477
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v0

    .line 1478
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->rltSensorBatt:Landroid/view/View;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 1479
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1481
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvSensorBatt:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1482
    iget v0, v0, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->powerLevel:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private showAppForcedUpgradeDialog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 974
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialogFragment:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialogFragment:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialogFragment:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 976
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialogFragment:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->refreshTip(Ljava/lang/String;)V

    return-void

    .line 978
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialogFragment:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "ForcedUpgradeDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 979
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 980
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 981
    const-string/jumbo p1, "tip"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialogFragment:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 983
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialogFragment:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    new-instance p2, Lcom/qianhe/yct/base/BaseActivity$13;

    invoke-direct {p2, p0, p3}, Lcom/qianhe/yct/base/BaseActivity$13;-><init>(Lcom/qianhe/yct/base/BaseActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;->setOnCloseListener(Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;)V

    return-void
.end method

.method private showBubbleCompassCollectDialog(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V
    .locals 5

    .line 2715
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2716
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v0, v0, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 2723
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->enableInstrumentDopLog()V

    .line 2724
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2725
    const-string v2, "BubbleCompassDialogFragment"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;

    if-eqz v3, :cond_2

    .line 2727
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 2729
    :cond_2
    new-instance v3, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;

    invoke-direct {v3}, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;-><init>()V

    if-eqz p1, :cond_3

    .line 2731
    new-instance v4, Lcom/qianhe/yct/base/BaseActivity$23;

    invoke-direct {v4, p0, p1}, Lcom/qianhe/yct/base/BaseActivity$23;-><init>(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment;->setOnActionListener(Lcom/qianhe/yct/dialog/BubbleCompassDialogFragment$OnActionListener;)V

    .line 2752
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2753
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 2755
    :cond_4
    invoke-virtual {v3, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2758
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Show bubble compass dialog failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 2759
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->disableInstrumentDopLog()V

    if-eqz p1, :cond_6

    .line 2761
    invoke-interface {p1, v1}, Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;->onResult(Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    goto :goto_2

    .line 2717
    :cond_5
    :goto_1
    sget v0, Lcom/qianhe/yct/R$string;->no_fixed_solution:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    if-eqz p1, :cond_6

    .line 2719
    invoke-interface {p1, v1}, Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;->onResult(Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private showDialogFragmentSafely(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V
    .locals 2

    .line 2578
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2579
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2580
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 2582
    :cond_0
    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2585
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Show dialog failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private showPermissionNotGrantedDialog(Z)V
    .locals 3

    .line 671
    sget v0, Lcom/qianhe/yct/R$string;->permission_not_obtained:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->go_open:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/base/BaseActivity$11;

    invoke-direct {v2, p0, p1}, Lcom/qianhe/yct/base/BaseActivity$11;-><init>(Lcom/qianhe/yct/base/BaseActivity;Z)V

    const-string p1, "permission"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method

.method private showPoleHeightInputDialog(Lcom/qianhe/yct/base/BaseActivity$OnPoleHeightInputConfirmListener;)V
    .locals 4

    .line 2782
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2783
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2784
    const-string v1, "PoleHeightInputDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;

    if-eqz v2, :cond_1

    .line 2786
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 2788
    :cond_1
    new-instance v2, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;

    invoke-direct {v2}, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;-><init>()V

    .line 2789
    new-instance v3, Lcom/qianhe/yct/base/BaseActivity$24;

    invoke-direct {v3, p0, p1}, Lcom/qianhe/yct/base/BaseActivity$24;-><init>(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/base/BaseActivity$OnPoleHeightInputConfirmListener;)V

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment;->setOnPoleHeightConfirmListener(Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment$OnPoleHeightConfirmListener;)V

    .line 2800
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2801
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 2803
    :cond_2
    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2806
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show pole height dialog failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private showSoftInputIfClickEditText(FF)V
    .locals 1

    .line 3655
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/base/BaseActivity;->findEditTextUnder(FF)Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3658
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_1

    goto :goto_0

    .line 3662
    :cond_1
    const-string p2, "input_method"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_2

    .line 3663
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->isSoftInputVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3664
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x1

    .line 3665
    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private showUpgradeFmwDialog(Lcom/qianhe/yct/event/FirmwareResponse;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2488
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 2489
    :cond_0
    iget v2, v0, Lcom/qianhe/yct/base/BaseActivity;->fmwUpgradeCurrentStep:I

    if-lez v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    iget-object v3, v0, Lcom/qianhe/yct/base/BaseActivity;->fmwInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v2, v0, Lcom/qianhe/yct/base/BaseActivity;->fmwInfoList:Ljava/util/List;

    iget v3, v0, Lcom/qianhe/yct/base/BaseActivity;->fmwUpgradeCurrentStep:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    goto/16 :goto_4

    .line 2491
    :cond_2
    iget-boolean v3, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->forced:Z

    const-string v4, "currentStep"

    const-string/jumbo v5, "totalStep"

    const-string v6, "model"

    const-string v7, "md5"

    const-string v8, "fileSize"

    const-string/jumbo v9, "versionNew"

    const-string v10, "deviceType"

    const-string/jumbo v11, "upgradeLog"

    const-string v12, "id"

    const-string v13, ""

    const-string/jumbo v14, "versionOld"

    if-eqz v3, :cond_7

    .line 2492
    iget-object v3, v0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialog:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2493
    iget-object v3, v0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialog:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2495
    :cond_3
    new-instance v3, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-direct {v3}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;-><init>()V

    iput-object v3, v0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialog:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    .line 2496
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2497
    iget v15, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->id:I

    invoke-virtual {v3, v12, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2498
    iget-object v12, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->update_log:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v11

    iget-object v12, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->model:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2500
    iget-object v11, v0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v12, Lcom/qianhe/baselib/Constant;->GNSS_FWM_VERSION:Ljava/lang/String;

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v14, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2501
    :cond_4
    iget-object v11, v1, Lcom/qianhe/yct/event/FirmwareResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v12, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v11, v12, :cond_5

    .line 2502
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/qianhe/yct/application/YCTApplication;->getRtkInfo()Lcom/qianhe/rtkclientlib/event/RtkInfo;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 2503
    iget-object v11, v11, Lcom/qianhe/rtkclientlib/event/RtkInfo;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v14, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2504
    :cond_5
    sget-object v12, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v11, v12, :cond_6

    .line 2505
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/qianhe/yct/application/YCTApplication;->getBaseInfo()Lcom/qianhe/rtkclientlib/event/RtkInfo;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 2506
    iget-object v11, v11, Lcom/qianhe/rtkclientlib/event/RtkInfo;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v14, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    :cond_6
    :goto_1
    iget-object v1, v1, Lcom/qianhe/yct/event/FirmwareResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v3, v10, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2509
    iget-object v1, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->version:Ljava/lang/String;

    invoke-virtual {v3, v9, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    iget-wide v9, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->file_size:J

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2511
    iget-object v1, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->file_md5:Ljava/lang/String;

    invoke-virtual {v3, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    iget-object v1, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->model:Ljava/lang/String;

    invoke-virtual {v3, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->fmwInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2514
    iget v1, v0, Lcom/qianhe/yct/base/BaseActivity;->fmwUpgradeCurrentStep:I

    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2515
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialog:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2516
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialog:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    new-instance v2, Lcom/qianhe/yct/base/BaseActivity$21;

    invoke-direct {v2, v0}, Lcom/qianhe/yct/base/BaseActivity$21;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->setOnCloseListener(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$OnCloseListener;)V

    .line 2526
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialog:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    const-string v2, "ForcedUpgradeFmwDialogFragment"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showDialogFragmentSafely(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    return-void

    .line 2529
    :cond_7
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v3

    iget-object v15, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->model:Ljava/lang/String;

    invoke-virtual {v3, v15}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2530
    const-string v3, "ignoreFmwVersion_gnss"

    goto :goto_2

    .line 2532
    :cond_8
    const-string v3, "ignoreFmwVersion"

    .line 2534
    :goto_2
    iget-object v15, v0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v16, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    iget-object v5, v1, Lcom/qianhe/yct/event/FirmwareResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v15, v4, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2535
    iget-object v15, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->version:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 2536
    iget-object v4, v0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v6

    iget-object v6, v1, Lcom/qianhe/yct/event/FirmwareResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2537
    iget-object v3, v0, Lcom/qianhe/yct/base/BaseActivity;->upgradeDialog:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 2538
    iget-object v3, v0, Lcom/qianhe/yct/base/BaseActivity;->upgradeDialog:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2540
    :cond_9
    new-instance v3, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-direct {v3}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;-><init>()V

    iput-object v3, v0, Lcom/qianhe/yct/base/BaseActivity;->upgradeDialog:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    .line 2541
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2542
    iget v4, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->id:I

    invoke-virtual {v3, v12, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2543
    iget-object v4, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->update_log:Ljava/lang/String;

    invoke-virtual {v3, v11, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v4

    iget-object v5, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->model:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2545
    iget-object v4, v0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v5, Lcom/qianhe/baselib/Constant;->GNSS_FWM_VERSION:Ljava/lang/String;

    invoke-interface {v4, v5, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2546
    :cond_a
    iget-object v4, v1, Lcom/qianhe/yct/event/FirmwareResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v5, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v4, v5, :cond_b

    .line 2547
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qianhe/yct/application/YCTApplication;->getRtkInfo()Lcom/qianhe/rtkclientlib/event/RtkInfo;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 2548
    iget-object v4, v4, Lcom/qianhe/rtkclientlib/event/RtkInfo;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v14, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2549
    :cond_b
    sget-object v5, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v4, v5, :cond_c

    .line 2550
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qianhe/yct/application/YCTApplication;->getBaseInfo()Lcom/qianhe/rtkclientlib/event/RtkInfo;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 2551
    iget-object v4, v4, Lcom/qianhe/rtkclientlib/event/RtkInfo;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v14, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    :cond_c
    :goto_3
    iget-object v1, v1, Lcom/qianhe/yct/event/FirmwareResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v3, v10, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2554
    iget-object v1, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->version:Ljava/lang/String;

    invoke-virtual {v3, v9, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    iget-wide v4, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->file_size:J

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2556
    iget-object v1, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->file_md5:Ljava/lang/String;

    invoke-virtual {v3, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    iget-object v1, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->model:Ljava/lang/String;

    move-object/from16 v2, v18

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->fmwInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v2, v17

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2559
    iget v1, v0, Lcom/qianhe/yct/base/BaseActivity;->fmwUpgradeCurrentStep:I

    move-object/from16 v2, v16

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2560
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->upgradeDialog:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2561
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->upgradeDialog:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    new-instance v2, Lcom/qianhe/yct/base/BaseActivity$22;

    invoke-direct {v2, v0}, Lcom/qianhe/yct/base/BaseActivity$22;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->setOnActionListener(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;)V

    .line 2571
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->upgradeDialog:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    const-string v2, "UpgradeFmwDialogFragment"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showDialogFragmentSafely(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    :cond_d
    :goto_4
    return-void
.end method

.method private startInstrumentCollectCountdown(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V
    .locals 3

    .line 2811
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2816
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->enableInstrumentDopLog()V

    .line 2817
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->clearInstrumentQualitySamples()V

    const/4 v0, 0x1

    .line 2818
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->isInstrumentCollecting:Z

    .line 2819
    sget v0, Lcom/qianhe/yct/R$string;->collecting:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda11;-><init>(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lcom/qianhe/yct/base/BaseActivity;->showCollectingDialog(Ljava/lang/String;ILcom/qianhe/yct/dialog/CollectingDialogFragment$OnCloseListener;)V

    return-void

    .line 2812
    :cond_1
    :goto_0
    sget v0, Lcom/qianhe/yct/R$string;->no_fixed_solution:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 2813
    invoke-interface {p1, v2}, Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;->onResult(Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V

    return-void
.end method

.method private tryStartBondActivity(Landroid/app/Activity;Lcom/qianhe/rtkclientlib/event/BluetoothBondRequestEvent;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1351
    iget-object v1, p2, Lcom/qianhe/rtkclientlib/event/BluetoothBondRequestEvent;->deviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1355
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1356
    const-string v2, "bond_device_address"

    iget-object v3, p2, Lcom/qianhe/rtkclientlib/event/BluetoothBondRequestEvent;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x24000000

    .line 1357
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1358
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1359
    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    .line 1360
    iput-boolean p1, p2, Lcom/qianhe/rtkclientlib/event/BluetoothBondRequestEvent;->handledByActivity:Z

    .line 1361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u542f\u52a8\u524d\u53f0\u914d\u5bf9\u9875: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/qianhe/rtkclientlib/event/BluetoothBondRequestEvent;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 1364
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u542f\u52a8\u524d\u53f0\u914d\u5bf9\u9875\u5931\u8d25: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method private wrapCalibrateListener(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;
    .locals 1

    .line 3208
    new-instance v0, Lcom/qianhe/yct/base/BaseActivity$25;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/base/BaseActivity$25;-><init>(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    return-object v0
.end method


# virtual methods
.method public allowRotateScreen()V
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isAutoAdaptation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 353
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 3730
    invoke-static {p1}, Lcom/qianhe/baselib/utils/LanguagePrefs;->wrapContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected beforePromptOpenSharedProject()V
    .locals 0

    .line 0
    return-void
.end method

.method protected bluetoothStatus(I)V
    .locals 0

    .line 0
    return-void
.end method

.method protected buildShareCodeContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->getCopySharecodeTips()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/qianhe/yct/R$string;->please_enter_share_code:I

    invoke-static {p0, v1}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public calculatePhaseToHang()D
    .locals 4

    .line 3387
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "zpy_antennaheight"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 3388
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isKe76Pro()Z

    move-result v1

    if-eqz v1, :cond_0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fc0000000000000L    # 0.125

    add-double/2addr v0, v2

    return-wide v0

    :cond_0
    float-to-double v0, v0

    return-wide v0
.end method

.method protected cancelBluetoothBondingIfNeeded()V
    .locals 1

    .line 3089
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->cancelBondingIfNeeded()V

    return-void
.end method

.method public cancelCollectingDialog()V
    .locals 2

    .line 2642
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2643
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CollectingDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    if-eqz v0, :cond_1

    .line 2645
    invoke-virtual {v0}, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->cancelManually()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected cancelForcedUpgradeDialog()V
    .locals 1

    .line 998
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialogFragment:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialogFragment:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialogFragment:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 v0, 0x0

    .line 1000
    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->forcedUpgradeDialogFragment:Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment;

    :cond_0
    return-void
.end method

.method public cancelLoadingDialog()V
    .locals 1

    .line 2608
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->loadingDialogManager:Lcom/qianhe/yct/utils/LoadingDialogManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->dismiss()V

    :cond_0
    return-void
.end method

.method public cancelTipDialog()V
    .locals 1

    .line 3006
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tipsDialogManager:Lcom/qianhe/yct/utils/TipsDialogManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/TipsDialogManager;->dismissImmediately()V

    :cond_0
    return-void
.end method

.method public cancelUpgradeingDialog()V
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->upgradeingDialogManager:Lcom/qianhe/yct/utils/UpgradeingDialogManager;

    if-eqz v0, :cond_0

    .line 968
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->dismissImmediately()V

    :cond_0
    return-void
.end method

.method public checkPermissions(Ljava/lang/String;Z)V
    .locals 2

    .line 552
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    const-string p1, "android.permission.CAMERA"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->init()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 556
    sget p2, Lcom/qianhe/yct/R$string;->permission_des:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x66

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, v0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 558
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showPermissionNotGrantedDialog(Z)V

    return-void

    .line 562
    :cond_2
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 563
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->init()V

    return-void

    :cond_3
    if-eqz p2, :cond_5

    .line 565
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/qianhe/yct/activity/PrivacyPolicyActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 566
    :cond_4
    sget p1, Lcom/qianhe/yct/R$string;->permission_desc:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/qianhe/yct/R$string;->agree:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/qianhe/yct/base/BaseActivity$9;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/base/BaseActivity$9;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    const-string v1, "permission"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void

    .line 578
    :cond_5
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->continueBasicPermissionFlow()V

    return-void
.end method

.method protected checkSensorOfflineCalibrateTip(Lcom/qianhe/baselib/bean/InsNavi;Z)V
    .locals 2

    .line 2028
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 2031
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isIgnoreSensorOfflineForData()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2032
    iput v1, p0, Lcom/qianhe/yct/base/BaseActivity;->sensorOfflineCount:I

    return-void

    .line 2035
    :cond_1
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->isSensorOfflineWithUsableData(Lcom/qianhe/baselib/bean/InsNavi;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2036
    iput v1, p0, Lcom/qianhe/yct/base/BaseActivity;->sensorOfflineCount:I

    return-void

    :cond_2
    if-eqz p2, :cond_4

    .line 2039
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-nez p1, :cond_3

    goto :goto_0

    .line 2042
    :cond_3
    iget p1, p0, Lcom/qianhe/yct/base/BaseActivity;->sensorOfflineCount:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/qianhe/yct/base/BaseActivity;->sensorOfflineCount:I

    .line 2043
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->isShowTips:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_unavailable_count:I

    if-le p1, v0, :cond_4

    .line 2044
    iput-boolean p2, p0, Lcom/qianhe/yct/base/BaseActivity;->isShowTips:Z

    .line 2045
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->showCalibrateTips()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected clearPendingClipShareCode()V
    .locals 2

    .line 1194
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pending_clip_share_code"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public convertInsGeodeticToGeo(DDD[D)Z
    .locals 22

    move-object/from16 v0, p0

    .line 1854
    iget-object v1, v0, Lcom/qianhe/yct/base/BaseActivity;->mSharedWorkEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 1855
    new-array v11, v1, [D

    .line 1856
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/yct/base/BaseActivity;->mSharedWorkEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v4, v0, Lcom/qianhe/yct/base/BaseActivity;->mSharedWorkTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    invoke-virtual/range {v2 .. v11}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToAlignedProj(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;DDD[D)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1859
    :cond_0
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v12

    iget-object v13, v0, Lcom/qianhe/yct/base/BaseActivity;->mSharedWorkEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-object v14, v0, Lcom/qianhe/yct/base/BaseActivity;->mSharedWorkTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    aget-wide v15, v11, v2

    const/4 v1, 0x1

    aget-wide v17, v11, v1

    const/4 v1, 0x2

    aget-wide v19, v11, v1

    move-object/from16 v21, p7

    invoke-virtual/range {v12 .. v21}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->projToGeodeticInverse(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;DDD[D)Z

    move-result v1

    return v1

    .line 1861
    :cond_1
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v2

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToAlignedGeodetic(DDD[D)Z

    move-result v1

    return v1
.end method

.method protected copyShareCodeToClipboard(Ljava/lang/String;Z)V
    .locals 2

    .line 3441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3442
    sget p1, Lcom/qianhe/yct/R$string;->data_anomaly:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 3445
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->buildShareCodeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3446
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->copyShareTextToClipboard(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 3448
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->sharePlainText(Ljava/lang/String;)V

    return-void

    .line 3450
    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->copy_to_clipboard:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected copyShareTextToClipboard(Ljava/lang/String;)V
    .locals 5

    .line 3455
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 3456
    const-string v1, "owner_pkg"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3457
    new-instance v1, Landroid/content/ClipData$Item;

    invoke-direct {v1, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 3458
    new-instance p1, Landroid/content/ClipData;

    new-instance v2, Lcom/qianhe/yct/base/BaseActivity$28;

    const-string/jumbo v3, "text/plain"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "copied_text"

    invoke-direct {v2, p0, v4, v3, v0}, Lcom/qianhe/yct/base/BaseActivity$28;-><init>(Lcom/qianhe/yct/base/BaseActivity;Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-direct {p1, v2, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 3463
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3464
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method protected createPairingLoadingCloseListener()Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;
    .locals 1

    .line 3072
    new-instance v0, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    return-object v0
.end method

.method protected dismissConnectingDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 3011
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->isStartConnect:Z

    .line 3012
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3013
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->loadingDialogManager:Lcom/qianhe/yct/utils/LoadingDialogManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->dismissImmediately()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 3606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3629
    :cond_0
    iput-boolean v1, p0, Lcom/qianhe/yct/base/BaseActivity;->softInputTouchMoved:Z

    goto :goto_0

    .line 3615
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->softInputTouchMoved:Z

    if-nez v0, :cond_5

    .line 3616
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 3617
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/qianhe/yct/base/BaseActivity;->softInputTouchDownX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v0, v0

    cmpl-float v2, v2, v0

    if-gtz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/qianhe/yct/base/BaseActivity;->softInputTouchDownY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v2, v0

    if-lez v0, :cond_5

    .line 3618
    :cond_2
    iput-boolean v1, p0, Lcom/qianhe/yct/base/BaseActivity;->softInputTouchMoved:Z

    goto :goto_0

    .line 3624
    :cond_3
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->softInputTouchMoved:Z

    if-nez v0, :cond_5

    .line 3625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showSoftInputIfClickEditText(FF)V

    goto :goto_0

    .line 3608
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->softInputTouchDownX:F

    .line 3609
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->softInputTouchDownY:F

    const/4 v0, 0x0

    .line 3610
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->softInputTouchMoved:Z

    .line 3612
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->hideSoftInputIfTouchOutside(FF)V

    .line 3634
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected extractShareCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1164
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->isShareCodeClipboardContent(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 1165
    :cond_0
    const-string v0, "\\d{5,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1166
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method protected finishNotMainActivity()V
    .locals 4

    .line 3567
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getActivityList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3568
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3569
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3570
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3571
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 3572
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/qianhe/yct/MainActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3573
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 3574
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected finishPreviousActivity()V
    .locals 4

    .line 3553
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getActivityList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3554
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3555
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3556
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3557
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 3558
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/qianhe/yct/MainActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/qianhe/yct/activity/LocateInfoActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3559
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 3560
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method protected forceDismissBluetoothPairingDialogs()V
    .locals 1

    const/4 v0, 0x0

    .line 3019
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->isStartConnect:Z

    .line 3020
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3023
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->loadingDialogManager:Lcom/qianhe/yct/utils/LoadingDialogManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/LoadingDialogManager;->dismissImmediately()V

    .line 3024
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tipsDialogManager:Lcom/qianhe/yct/utils/TipsDialogManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/TipsDialogManager;->isPermissionDialogShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3025
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tipsDialogManager:Lcom/qianhe/yct/utils/TipsDialogManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/TipsDialogManager;->dismissImmediately()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected formatCoords(DI)Ljava/lang/String;
    .locals 2

    .line 3294
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p3, :cond_1

    const/4 p3, 0x0

    .line 3303
    :cond_1
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, p3, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3306
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    .line 3309
    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3311
    const-string p2, "0*$"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3313
    const-string p2, "\\.$"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public formatCoords(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 3275
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 3277
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method public formatDistance(D)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpl-double v4, p1, v2

    if-ltz v4, :cond_1

    div-double/2addr p1, v2

    double-to-int v2, p1

    int-to-double v3, v2

    cmpl-double v5, p1, v3

    if-eqz v5, :cond_0

    .line 3346
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "%.3f km"

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "%s km"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v2

    if-ltz v4, :cond_3

    double-to-int v2, p1

    int-to-double v3, v2

    cmpl-double v5, p1, v3

    if-eqz v5, :cond_2

    .line 3349
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "%.2f m"

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "%s m"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v2

    .line 3351
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 3353
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "%s cm"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDouble(D)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    .line 3320
    const-string p1, ""

    return-object p1

    .line 3323
    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3324
    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    .line 3327
    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3332
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3333
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method protected formatElevationDiffText(D)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3360
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 3362
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/32 v4, 0x186a0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    cmp-long v8, v2, v4

    if-gez v8, :cond_1

    .line 3365
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    div-double/2addr p1, v6

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "%.1f"

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3367
    :cond_1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    div-double/2addr p1, v6

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "%.0f"

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected formatMetertoOther(IDI)D
    .locals 0

    .line 3595
    invoke-static {p1, p2, p3, p4}, Lcom/qianhe/baselib/utils/UnitConvertUtils;->fromMeter(IDI)D

    move-result-wide p1

    return-wide p1
.end method

.method protected formatOtherToMeter(IDI)D
    .locals 0

    .line 3591
    invoke-static {p1, p2, p3}, Lcom/qianhe/baselib/utils/UnitConvertUtils;->toMeter(ID)D

    move-result-wide p1

    return-wide p1
.end method

.method protected getApkList(Lcom/qianhe/baselib/enums/DeviceType;Z)V
    .locals 12

    .line 797
    new-instance v0, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 806
    const-string v1, ""

    const-string v2, "ignoreApkVersion"

    if-eqz p2, :cond_0

    .line 807
    sget v3, Lcom/qianhe/yct/R$string;->checking_version:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/qianhe/yct/base/BaseActivity;->showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    .line 808
    iget-object v3, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 810
    :cond_0
    sget-object v4, Lcom/qianhe/yct/utils/AppUpgrader;->INSTANCE:Lcom/qianhe/yct/utils/AppUpgrader;

    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->mkApkDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lcom/qianhe/yct/base/BaseActivity$12;

    invoke-direct {v11, p0, p2, p1, v0}, Lcom/qianhe/yct/base/BaseActivity$12;-><init>(Lcom/qianhe/yct/base/BaseActivity;ZLcom/qianhe/baselib/enums/DeviceType;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    const-string v10, "2.0.2609.109"

    move-object v5, p0

    move v8, p2

    invoke-virtual/range {v4 .. v11}, Lcom/qianhe/yct/utils/AppUpgrader;->startCheckAppUprage(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/AppUpgrader$OnUpgradeListioner;)V

    return-void
.end method

.method protected getCentralMeridian(D)I
    .locals 2

    .line 0
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    sub-double/2addr p1, v0

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    div-double/2addr p1, v0

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x3

    return p1
.end method

.method protected getClipboardTimestamp()J
    .locals 5

    const-wide/16 v0, 0x0

    .line 1147
    :try_start_0
    const-string v2, "clipboard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    if-eqz v2, :cond_1

    .line 1148
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1149
    :cond_0
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1150
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    .line 1151
    invoke-static {v2}, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticApiModelOutline3;->m(Landroid/content/ClipDescription;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-wide v0
.end method

.method protected getCopySharecodeTips()Ljava/lang/String;
    .locals 3

    .line 3405
    sget v0, Lcom/qianhe/yct/R$string;->copy_sharecode_tips:I

    invoke-static {p0, v0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3406
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.qianhe.xfix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3407
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getCurrentLanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "XFIX"

    if-eqz v1, :cond_0

    .line 3408
    const-string/jumbo v1, "\u4e00\u94f2\u901a"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u4e00\u93df\u901a"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3410
    :cond_0
    const-string v1, "YCT"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected getElevationDiffTextSize(Ljava/lang/String;I)F
    .locals 1

    .line 3372
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    int-to-float p1, p2

    return p1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    add-int/lit8 p2, p2, -0xa

    :goto_0
    int-to-float p1, p2

    return p1

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    add-int/lit8 p2, p2, -0x14

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, -0x1e

    goto :goto_0
.end method

.method protected getExpireDate(JJ)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 2202
    sget p1, Lcom/qianhe/yct/R$string;->permanently_valid:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-nez v2, :cond_1

    .line 2204
    sget p1, Lcom/qianhe/yct/R$string;->on_trial:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    sub-long p1, p3, p1

    const-wide/32 v0, 0x5265c00

    .line 2207
    div-long/2addr p1, v0

    long-to-int p2, p1

    if-lez p2, :cond_2

    .line 2209
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 2210
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget p1, Lcom/qianhe/yct/R$string;->days_later:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez p2, :cond_3

    .line 2212
    sget p1, Lcom/qianhe/yct/R$string;->expire_today:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2214
    :cond_3
    sget p1, Lcom/qianhe/yct/R$string;->expired:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
.end method

.method public getLatestHeadingDegreesError()D
    .locals 2

    .line 246
    iget-wide v0, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    return-wide v0
.end method

.method protected abstract getRootView()Landroid/view/View;
.end method

.method protected getUtmZone(D)I
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    add-double/2addr p1, v0

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    div-double/2addr p1, v0

    .line 1614
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p2

    :cond_0
    const/16 p2, 0x3c

    if-le p1, p2, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method public gotoBluetoothActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 441
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->gotoBluetoothActivity(I)V

    return-void
.end method

.method public gotoBluetoothActivity(I)V
    .locals 5

    .line 445
    const-string v0, "basic"

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 446
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    sget p1, Lcom/qianhe/yct/R$string;->location_info_not_enabled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->go_open:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/base/BaseActivity$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/base/BaseActivity$7;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 458
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    const-string v1, "fragmentIndex"

    const-class v3, Lcom/qianhe/yct/activity/BluetoothActivity;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/qianhe/yct/activity/basestation/BaseStationNetworkLinkActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 464
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 465
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 470
    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method protected gotoShareProjectFromCode()V
    .locals 4

    .line 1229
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/qianhe/yct/base/BaseActivity$16;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/base/BaseActivity$16;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public gotoUserManage()V
    .locals 5

    .line 1269
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1271
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1274
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/UserManageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1276
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/qianhe/yct/base/BaseActivity$17;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/base/BaseActivity$17;-><init>(Lcom/qianhe/yct/base/BaseActivity;Landroid/content/Intent;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected handleWorkInsCalibrateTips(Lcom/qianhe/baselib/bean/InsNavi;ZZ)V
    .locals 1

    .line 1998
    sget-object v0, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->FULL:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qianhe/yct/base/BaseActivity;->handleWorkInsCalibrateTips(Lcom/qianhe/baselib/bean/InsNavi;ZZLcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;)V

    return-void
.end method

.method protected handleWorkInsCalibrateTips(Lcom/qianhe/baselib/bean/InsNavi;ZZLcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;)V
    .locals 2

    .line 2002
    sget-object v0, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->ELEVATION_ONLY:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    const/4 v1, 0x0

    if-ne p4, v0, :cond_0

    if-eqz p2, :cond_0

    .line 2003
    iput v1, p0, Lcom/qianhe/yct/base/BaseActivity;->count:I

    .line 2004
    iput-boolean v1, p0, Lcom/qianhe/yct/base/BaseActivity;->isShowTips:Z

    .line 2005
    iput v1, p0, Lcom/qianhe/yct/base/BaseActivity;->sensorOfflineCount:I

    return-void

    .line 2008
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p4

    invoke-virtual {p4}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result p4

    if-eqz p2, :cond_1

    .line 2010
    iput v1, p0, Lcom/qianhe/yct/base/BaseActivity;->count:I

    .line 2011
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->isSensorOfflineWithUsableData(Lcom/qianhe/baselib/bean/InsNavi;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2012
    iput-boolean v1, p0, Lcom/qianhe/yct/base/BaseActivity;->isShowTips:Z

    .line 2013
    iput v1, p0, Lcom/qianhe/yct/base/BaseActivity;->sensorOfflineCount:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 2016
    iget p2, p0, Lcom/qianhe/yct/base/BaseActivity;->count:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/qianhe/yct/base/BaseActivity;->count:I

    .line 2017
    iput v1, p0, Lcom/qianhe/yct/base/BaseActivity;->sensorOfflineCount:I

    if-eqz p4, :cond_2

    .line 2018
    iget-boolean p4, p0, Lcom/qianhe/yct/base/BaseActivity;->isShowTips:Z

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object p4, p4, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget p4, p4, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_unavailable_count:I

    if-le p2, p4, :cond_2

    iget-object p2, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz p2, :cond_2

    .line 2019
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->isShowTips:Z

    .line 2020
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->showCalibrateTips()V

    .line 2023
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/qianhe/yct/base/BaseActivity;->checkSensorOfflineCalibrateTip(Lcom/qianhe/baselib/bean/InsNavi;Z)V

    return-void
.end method

.method public hasPermissions(Ljava/lang/String;)Z
    .locals 1

    .line 583
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 584
    const-string p1, "android.permission.CAMERA"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 586
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->hasBasicRuntimePermissions()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->hasExternalStorageAccess(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract initData()V
.end method

.method protected abstract initTopBar()Landroid/widget/FrameLayout;
.end method

.method public isAutoAdaptation()Z
    .locals 1

    .line 338
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isAutoAdaptation()Z

    move-result v0

    return v0
.end method

.method protected isBluetoothPairingTipDialogShowing()Z
    .locals 1

    .line 3080
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tipsDialogManager:Lcom/qianhe/yct/utils/TipsDialogManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/TipsDialogManager;->isBluetoothPairingDialogShowing()Z

    move-result v0

    return v0
.end method

.method protected isDataAvailable()Z
    .locals 1

    .line 1798
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1799
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isIgnoreSensorOfflineForData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1802
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    return v0
.end method

.method protected isFromOutside()Z
    .locals 4

    .line 1112
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1113
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 1115
    :cond_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 1119
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_2

    .line 1120
    invoke-static {v0}, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/ClipDescription;)Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    return v2

    .line 1123
    :cond_3
    const-string v1, "owner_pkg"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1124
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public isHeadingDegreesOK()Z
    .locals 1

    .line 1806
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->headingDegreesOK:Z

    return v0
.end method

.method protected isInsReadyOrElevationAvailable(Lcom/qianhe/baselib/bean/InsNavi;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1941
    :cond_0
    iget v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v2, Lcom/qianhe/yct/enums/InsStatusEnum;->READY:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    iget p1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v1, Lcom/qianhe/yct/enums/InsStatusEnum;->ELEVATIONAVAILABLE:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v1

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isPad()Z
    .locals 1

    .line 334
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isPad()Z

    move-result v0

    return v0
.end method

.method protected isSensorOfflineWithUsableData(Lcom/qianhe/baselib/bean/InsNavi;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1984
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1987
    :cond_0
    iget v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v2, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    return v0

    .line 1990
    :cond_1
    iget p1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v1, Lcom/qianhe/yct/enums/InsStatusEnum;->READY:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v1

    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method protected isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 3251
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 3252
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p1

    .line 3253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 3254
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected isShareCodeClipboardContent(Ljava/lang/String;)Z
    .locals 2

    .line 1159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1160
    :cond_0
    sget v0, Lcom/qianhe/yct/R$string;->app_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "One Shovel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->share_code_flag:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method protected isVaildCoords([D)Z
    .locals 5

    .line 2767
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p1, v2

    .line 2768
    invoke-virtual {p0, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->isValidCoord(D)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected isValidCoord(D)Z
    .locals 1

    .line 2774
    invoke-static {p1, p2}, Lcom/qh/xcad/XCadView$$ExternalSyntheticBackport0;->m(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected isWeChatInstalled()Z
    .locals 3

    .line 3581
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3583
    :try_start_0
    const-string v1, "com.tencent.mm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method protected ivBackClick()V
    .locals 0

    .line 437
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected markClipboardSnapshotHandled(Ljava/lang/String;)Z
    .locals 11

    .line 1174
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->getClipboardTimestamp()J

    move-result-wide v0

    .line 1175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1176
    const-class v3, Lcom/qianhe/yct/base/BaseActivity;

    monitor-enter v3

    .line 1177
    :try_start_0
    sget-object v4, Lcom/qianhe/yct/base/BaseActivity;->sHandledClipFingerprint:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1178
    monitor-exit v3

    return v5

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1180
    :cond_0
    iget-object v4, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v6, "last_handled_clip_text"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1181
    iget-object v6, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v7, "last_handled_clip_ts"

    const-wide/16 v8, -0x1

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1182
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v8, 0x1

    if-eqz v4, :cond_2

    const-wide/16 v9, 0x0

    cmp-long v4, v0, v9

    if-eqz v4, :cond_1

    cmp-long v4, v6, v0

    if-nez v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 1184
    :goto_0
    sput-object v2, Lcom/qianhe/yct/base/BaseActivity;->sHandledClipFingerprint:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1186
    monitor-exit v3

    return v5

    .line 1188
    :cond_3
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "last_handled_clip_text"

    invoke-interface {v2, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "last_handled_clip_ts"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1189
    monitor-exit v3

    return v8

    .line 1190
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected needHeadingAccuracyCheck()Z
    .locals 1

    .line 1811
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    return v0
.end method

.method public notAllowRotateScreen()V
    .locals 1

    const/16 v0, 0xe

    .line 347
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity",
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x1

    .line 291
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 293
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->applyScreenOrientation()V

    .line 294
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 295
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->restoreBatteryStateFromBundle(Landroid/os/Bundle;)V

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 297
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 298
    invoke-static {p0}, Lcom/qianhe/yct/utils/ThemeModeManager;->applySystemBars(Landroid/app/Activity;)V

    .line 299
    invoke-static {p0}, Lcom/qianhe/yct/utils/ScreenOrientationHelper;->applyTabletNavigationBar(Landroid/app/Activity;)V

    .line 300
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getActivityList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    const-string/jumbo p1, "sp"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    .line 302
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->loadSharedWorkEngineeringFromIntent()V

    .line 303
    new-instance p1, Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/CollectingDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->collectingDialogFragment:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    .line 304
    new-instance p1, Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/ToastDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    .line 305
    new-instance p1, Lcom/qianhe/yct/utils/TipsDialogManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/qianhe/yct/utils/TipsDialogManager;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->tipsDialogManager:Lcom/qianhe/yct/utils/TipsDialogManager;

    .line 306
    new-instance p1, Lcom/qianhe/yct/utils/LoadingDialogManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/qianhe/yct/utils/LoadingDialogManager;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->loadingDialogManager:Lcom/qianhe/yct/utils/LoadingDialogManager;

    .line 307
    new-instance p1, Lcom/qianhe/yct/utils/UpgradeingDialogManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->upgradeingDialogManager:Lcom/qianhe/yct/utils/UpgradeingDialogManager;

    .line 308
    sget-object p1, Lcom/qianhe/yct/base/BaseActivity;->screenReceiver:Lcom/qianhe/yct/base/BaseActivity$ScreenReceiver;

    if-nez p1, :cond_0

    .line 309
    new-instance p1, Lcom/qianhe/yct/base/BaseActivity$ScreenReceiver;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/base/BaseActivity$ScreenReceiver;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    sput-object p1, Lcom/qianhe/yct/base/BaseActivity;->screenReceiver:Lcom/qianhe/yct/base/BaseActivity$ScreenReceiver;

    .line 310
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 311
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    sget-object v0, Lcom/qianhe/yct/base/BaseActivity;->screenReceiver:Lcom/qianhe/yct/base/BaseActivity$ScreenReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/base/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/base/BaseActivity$1;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    const-string v1, "gotoconnect"

    invoke-virtual {p1, v1, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 328
    const-string p1, "basic"

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 329
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->init()V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1887
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->disableInstrumentDopLog()V

    .line 1888
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSharedWorkEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v0, :cond_0

    .line 1889
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->clearSessionEngineering()V

    .line 1890
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->invalidateEngineeringCache()V

    const/4 v0, 0x0

    .line 1891
    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSharedWorkEngineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 1892
    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSharedWorkTransParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 1894
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/BestPosEntity;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 1624
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1625
    iget-object v0, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1627
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvUseStars:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget p1, p1, Lcom/qianhe/baselib/bean/BestPosEntity;->useStar:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    .line 1517
    const-string p1, "gga = null"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 1520
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    iget-object v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isH5OrOnlyone(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1521
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    .line 1523
    iget v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    packed-switch v0, :pswitch_data_0

    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->unknown_solution:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1552
    :pswitch_0
    sget v0, Lcom/qianhe/yct/R$string;->sbas_solution:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1549
    :pswitch_1
    sget v0, Lcom/qianhe/yct/R$string;->UWL:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1546
    :pswitch_2
    sget v0, Lcom/qianhe/yct/R$string;->base_fixed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1543
    :pswitch_3
    sget v0, Lcom/qianhe/yct/R$string;->calcul_solution:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1540
    :pswitch_4
    sget v0, Lcom/qianhe/yct/R$string;->float_solution:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1537
    :pswitch_5
    sget v0, Lcom/qianhe/yct/R$string;->fixed_solution:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1534
    :pswitch_6
    sget v0, Lcom/qianhe/yct/R$string;->invalid_solution:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1531
    :pswitch_7
    sget v0, Lcom/qianhe/yct/R$string;->diff_solution:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1528
    :pswitch_8
    sget v0, Lcom/qianhe/yct/R$string;->singlepoint_solution:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1525
    :pswitch_9
    sget v0, Lcom/qianhe/yct/R$string;->invalid_solution:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1557
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvRtkState:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 1558
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1559
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvRtkState:Landroid/widget/TextView;

    iget v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    if-eq v1, v3, :cond_2

    iget-object v5, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v6, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x7

    if-ne v1, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1561
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvDiffDelay:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->lltStar:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 1562
    iget v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->age:F

    const/4 v5, 0x0

    const/16 v6, 0x8

    cmpg-float v5, v1, v5

    if-gez v5, :cond_4

    iget v5, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    const/4 v7, 0x2

    if-eq v5, v7, :cond_4

    if-eq v5, v3, :cond_4

    const/4 v3, 0x5

    if-eq v5, v3, :cond_4

    .line 1563
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1564
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->lltStar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_4
    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 1566
    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1567
    iget v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->age:F

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 1568
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvDiffDelay:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1569
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->lltStar:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1570
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvDiffDelay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/qianhe/yct/R$string;->delay:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/qianhe/baselib/bean/GGAEntity;->age:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1571
    iget-wide v0, p0, Lcom/qianhe/yct/base/BaseActivity;->delayBigCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qianhe/yct/base/BaseActivity;->delayBigCount:J

    const-wide/16 v2, 0x5

    cmp-long v4, v0, v2

    if-nez v4, :cond_7

    .line 1572
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->interruptDialogFragment:Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "obtain_difference_type"

    const-string v2, "bluetooth"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1573
    new-instance v0, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->interruptDialogFragment:Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;

    .line 1574
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DifferentialInterruptDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 1575
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1576
    sget v1, Lcom/qianhe/yct/R$string;->difference_interrupt:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tip"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "btnStr"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->interruptDialogFragment:Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_4

    :cond_6
    const-wide/16 v0, 0x0

    .line 1581
    iput-wide v0, p0, Lcom/qianhe/yct/base/BaseActivity;->delayBigCount:J

    .line 1582
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvDiffDelay:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1583
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->lltStar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1584
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvDiffDelay:Landroid/widget/TextView;

    iget v1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->age:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1585
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->interruptDialogFragment:Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;

    if-eqz v0, :cond_7

    .line 1586
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    .line 1587
    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->interruptDialogFragment:Lcom/qianhe/yct/dialog/DifferentialInterruptDialogFragment;

    .line 1593
    :cond_7
    :goto_4
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->accumulateInstrumentCollectSample(Lcom/qianhe/baselib/bean/GGAEntity;)V

    .line 1594
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/GPDOPEntity;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 1600
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1601
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GPDOPEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    .line 1603
    :cond_1
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mGPDOP:Lcom/qianhe/baselib/bean/GPDOPEntity;

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/GSTEntity;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1498
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v2

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v2, v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1499
    iget-object v2, p1, Lcom/qianhe/baselib/bean/GSTEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 1501
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->tvHRMS:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->tvVRMS:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 1502
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->rltRMS:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->rltRMS:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1504
    :cond_2
    iget v2, p1, Lcom/qianhe/baselib/bean/GSTEntity;->latstd:F

    mul-float v2, v2, v2

    iget v3, p1, Lcom/qianhe/baselib/bean/GSTEntity;->lonstd:F

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1505
    iget p1, p1, Lcom/qianhe/baselib/bean/GSTEntity;->altstd:F

    float-to-double v5, p1

    invoke-virtual {p0, v5, v6, v4}, Lcom/qianhe/yct/base/BaseActivity;->formatCoords(DI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 1506
    iget-object v3, p0, Lcom/qianhe/yct/base/BaseActivity;->tvHRMS:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, "H:%s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1507
    iget-object v3, p0, Lcom/qianhe/yct/base/BaseActivity;->tvHRMS:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v4, v4, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v4, v4, Lcom/qianhe/yct/bean/AppConfig$Details;->hrms_limit:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1508
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->tvVRMS:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v3, "V:%s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1509
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->tvVRMS:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v3, v3, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->vrms_limit:F

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/InsAhrs;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_3

    .line 1649
    iget-object v0, p1, Lcom/qianhe/baselib/bean/InsAhrs;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 1650
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsAhrs;->headingDegreesError:D

    iput-wide v0, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 1651
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1652
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->headingDegreesOK:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    .line 1653
    :goto_0
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsAhrs;->headingDegreesError:D

    float-to-double v3, v0

    cmpg-double p1, v1, v3

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/qianhe/yct/base/BaseActivity;->headingDegreesOK:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 13
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1660
    iget-boolean v1, p0, Lcom/qianhe/yct/base/BaseActivity;->isVisible:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1661
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v1, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1662
    iget-object v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v1, v2, :cond_1

    :goto_0
    return-void

    .line 1665
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/qianhe/yct/base/BaseActivity;->copyInsGeodeticFromSource(Lcom/qianhe/baselib/bean/InsNavi;)V

    const/4 v8, 0x3

    .line 1666
    new-array v7, v8, [D

    .line 1667
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLon:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLat:D

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElev:D

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/base/BaseActivity;->convertInsGeodeticToPlane(DDD[D)Z

    move-result v1

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    .line 1668
    aget-wide v0, v7, v11

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    .line 1669
    aget-wide v0, v7, v10

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    .line 1670
    aget-wide v0, v7, v9

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    .line 1672
    :cond_2
    new-array v7, v8, [D

    .line 1673
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLon:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLat:D

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElev:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/qianhe/yct/base/BaseActivity;->convertInsGeodeticToGeo(DDD[D)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1674
    aget-wide v1, v7, v11

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 1675
    aget-wide v1, v7, v10

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 1677
    :cond_3
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v12

    .line 1678
    iget v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    invoke-direct {p0, v12, v1}, Lcom/qianhe/yct/base/BaseActivity;->resolveInsDisplayState(ZI)I

    move-result v1

    .line 1679
    iget v2, p0, Lcom/qianhe/yct/base/BaseActivity;->lastInsDisplayState:I

    if-eq v1, v2, :cond_5

    .line 1680
    iput-boolean v11, p0, Lcom/qianhe/yct/base/BaseActivity;->isShowTips:Z

    .line 1681
    iput v11, p0, Lcom/qianhe/yct/base/BaseActivity;->count:I

    .line 1682
    iput v11, p0, Lcom/qianhe/yct/base/BaseActivity;->sensorOfflineCount:I

    .line 1683
    iput v1, p0, Lcom/qianhe/yct/base/BaseActivity;->lastInsDisplayState:I

    .line 1684
    invoke-direct {p0, v12, v1}, Lcom/qianhe/yct/base/BaseActivity;->isInsAbnormalDisplayState(ZI)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v12, v1}, Lcom/qianhe/yct/base/BaseActivity;->isInsReadyDisplayState(ZI)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1685
    :cond_4
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/qianhe/yct/application/YCTApplication;->setIgnoreSensorOfflineForData(Z)V

    :cond_5
    if-eqz v12, :cond_f

    .line 1690
    new-array v7, v8, [D

    .line 1691
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLonR:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLatR:D

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElevR:D

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/base/BaseActivity;->convertInsGeodeticToPlane(DDD[D)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1692
    aget-wide v0, v7, v11

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    .line 1693
    aget-wide v0, v7, v10

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    .line 1694
    aget-wide v0, v7, v9

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    .line 1696
    :cond_6
    new-array v7, v8, [D

    .line 1697
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLonR:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLatR:D

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElevR:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/qianhe/yct/base/BaseActivity;->convertInsGeodeticToGeo(DDD[D)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1698
    aget-wide v1, v7, v11

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    .line 1699
    aget-wide v1, v7, v10

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    .line 1702
    :cond_7
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    .line 1703
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    add-double/2addr v1, v5

    div-double/2addr v1, v3

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    .line 1704
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    add-double/2addr v1, v5

    div-double/2addr v1, v3

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    .line 1705
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    add-double/2addr v1, v5

    div-double/2addr v1, v3

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    .line 1706
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    add-double/2addr v1, v5

    div-double/2addr v1, v3

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    .line 1707
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLon:D

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLonR:D

    add-double/2addr v1, v5

    div-double/2addr v1, v3

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLonM:D

    .line 1708
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLat:D

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLatR:D

    add-double/2addr v1, v5

    div-double/2addr v1, v3

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLatM:D

    .line 1709
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElev:D

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElevR:D

    add-double/2addr v1, v5

    div-double/2addr v1, v3

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElevM:D

    .line 1711
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    .line 1712
    iget v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v2, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    .line 1713
    iput-boolean v11, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    .line 1714
    iput-boolean v11, p0, Lcom/qianhe/yct/base/BaseActivity;->headingDegreesOK:Z

    .line 1715
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->lost_star:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 1716
    :cond_8
    iget v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v2, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    .line 1717
    iput-boolean v11, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    .line 1718
    iput-boolean v11, p0, Lcom/qianhe/yct/base/BaseActivity;->headingDegreesOK:Z

    .line 1719
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->ins_invalid:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1720
    :cond_9
    iget v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v2, Lcom/qianhe/yct/enums/InsStatusEnum;->TILTREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    .line 1721
    iput-boolean v11, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    .line 1722
    iput-boolean v11, p0, Lcom/qianhe/yct/base/BaseActivity;->headingDegreesOK:Z

    .line 1723
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->swing:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1724
    :cond_a
    iget v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v2, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_c

    .line 1725
    iput-boolean v11, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    .line 1726
    iput-boolean v11, p0, Lcom/qianhe/yct/base/BaseActivity;->headingDegreesOK:Z

    .line 1727
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->sensor_offline:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1728
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->rltSensorBatt:Landroid/view/View;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->rltSensorBatt:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1729
    :cond_b
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/application/YCTApplication;->setSensorInfo(Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    goto :goto_1

    .line 1730
    :cond_c
    iget v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v2, Lcom/qianhe/yct/enums/InsStatusEnum;->READY:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    .line 1731
    iput-boolean v10, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    .line 1732
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->ins_ok:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1734
    :cond_d
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1736
    :cond_e
    invoke-direct {p0, v12, p1}, Lcom/qianhe/yct/base/BaseActivity;->refrshAngle(ZLcom/qianhe/baselib/bean/InsNavi;)V

    goto :goto_3

    .line 1738
    :cond_f
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    .line 1739
    iget v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object v2, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    .line 1740
    iput-boolean v10, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    .line 1741
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->arm_vertical:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1743
    :cond_10
    iput-boolean v11, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    .line 1744
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->arm_tilt:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1746
    :goto_2
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1748
    :cond_11
    invoke-direct {p0, v12, p1}, Lcom/qianhe/yct/base/BaseActivity;->refrshAngle(ZLcom/qianhe/baselib/bean/InsNavi;)V

    .line 1749
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->east:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->eastR:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->eastM:D

    .line 1750
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->north:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->northR:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->northM:D

    .line 1751
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevationM:D

    .line 1752
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLon:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLonR:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLonM:D

    .line 1753
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLat:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLatR:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLatM:D

    .line 1754
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElev:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElevR:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElevM:D

    .line 1755
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->longitudeM:D

    .line 1756
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->latitudeM:D

    .line 1758
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/qianhe/yct/base/BaseActivity;->onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/ntripclientlib/bean/AuthResult;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 2339
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/application/YCTApplication;->setAuthResult(Lcom/qianhe/ntripclientlib/bean/AuthResult;)V

    .line 2341
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 2342
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2343
    iget v0, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->result:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2344
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->authFlag:Z

    if-nez v0, :cond_3

    .line 2345
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 2346
    iput-boolean v2, p0, Lcom/qianhe/yct/base/BaseActivity;->authFlag:Z

    .line 2348
    iget-object v0, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->reason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2349
    iget-object v0, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->reason:Ljava/lang/String;

    const-string v2, "Bad Password"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2350
    sget v0, Lcom/qianhe/yct/R$string;->cors_input_error:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->reason:Ljava/lang/String;

    .line 2352
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/qianhe/yct/R$string;->cors_auth_failed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/ntripclientlib/bean/AuthResult;->reason:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_1
    const/4 p1, 0x6

    if-ne v0, p1, :cond_2

    .line 2356
    iget-boolean p1, p0, Lcom/qianhe/yct/base/BaseActivity;->authFlag:Z

    if-nez p1, :cond_3

    .line 2357
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 2358
    iput-boolean v2, p0, Lcom/qianhe/yct/base/BaseActivity;->authFlag:Z

    .line 2360
    sget p1, Lcom/qianhe/yct/R$string;->cors_connect_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 2363
    iput-boolean p1, p0, Lcom/qianhe/yct/base/BaseActivity;->authFlag:Z

    :cond_3
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/Batt;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1446
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/Batt;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    return-void

    .line 1447
    :cond_0
    iget v0, p1, Lcom/qianhe/rtkclientlib/event/Batt;->percent:I

    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerPercent:I

    .line 1448
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    iget p1, p1, Lcom/qianhe/rtkclientlib/event/Batt;->percent:I

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/application/YCTApplication;->setH5PowerPercent(I)V

    .line 1449
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->refrshBattState()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/BluetoothBondRequestEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_5

    .line 1330
    iget-boolean v0, p1, Lcom/qianhe/rtkclientlib/event/BluetoothBondRequestEvent;->handledByActivity:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1331
    :cond_0
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    const-wide/16 v1, 0x2ee0

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->suppressBackgroundBondCancel(J)V

    .line 1332
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->shouldHandleForegroundUiEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->tryStartBondActivity(Landroid/app/Activity;Lcom/qianhe/rtkclientlib/event/BluetoothBondRequestEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1335
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 1336
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    .line 1337
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_4

    if-eq v2, p0, :cond_4

    .line 1338
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1341
    :cond_2
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 1344
    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/qianhe/yct/base/BaseActivity;->tryStartBondActivity(Landroid/app/Activity;Lcom/qianhe/rtkclientlib/event/BluetoothBondRequestEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/DeviceModelEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->ivBattIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget p1, p1, Lcom/qianhe/rtkclientlib/event/DeviceModelEvent;->deviceModel:I

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_zpy_batt_ex30:I

    goto :goto_1

    :cond_1
    :goto_0
    sget p1, Lcom/qianhe/yct/R$drawable;->icon_zpy_batt_h5pro:I

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/Expiredate;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 2371
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/Expiredate;->value:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->isDateExpired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/Expiredate;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne p1, v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->base:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/qianhe/yct/R$string;->host_code_expired:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\uff01"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/FeaturesEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 2406
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->shouldHandleFmwUpgradeEvent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2407
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isAppVersionCheckedComplete()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2408
    :cond_1
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v1, "UPGRADE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2409
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isCheckFmwUpgrade()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2410
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->setCheckFmwUpgrade(Z)V

    const/4 v0, 0x0

    .line 2411
    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->upgradeInfo:Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;

    .line 2412
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->fmwInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 2413
    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->fmwUpgradeCurrentStep:I

    .line 2414
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-eq v0, v1, :cond_2

    const-string v0, "---------\u5f00\u59cb\u68c0\u6d4b\u56fa\u4ef6\u5347\u7ea7-----------"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2416
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "UPGRADE,INFO"

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    .line 2419
    :cond_4
    sget p1, Lcom/qianhe/yct/R$string;->host_no_upgradle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1635
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    return-void

    .line 1638
    :cond_0
    iget v0, p1, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;->l1:F

    .line 1641
    iget v1, p1, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;->h2:F

    sub-float v0, v1, v0

    .line 1642
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/qianhe/yct/base/BaseActivity;->zeroDegrees:F

    .line 1643
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/PowerSourceEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1488
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/PowerSourceEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 1489
    iget v0, p1, Lcom/qianhe/rtkclientlib/event/PowerSourceEvent;->type:I

    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerSourceType:I

    .line 1490
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    iget p1, p1, Lcom/qianhe/rtkclientlib/event/PowerSourceEvent;->type:I

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/application/YCTApplication;->setH5PowerSourceType(I)V

    .line 1491
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->refrshChargingState()V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/RtkInfo;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 2397
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->fmwInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 2398
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->upgradeInfo:Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1773
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->rltSensorBatt:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1774
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->rltSensorBatt:Landroid/view/View;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->sensor_offline:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1776
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvSensorBatt:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget p1, p1, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->powerLevel:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 2434
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->shouldHandleFmwUpgradeEvent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2435
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->upgradeInfo:Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;

    .line 2436
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;->pns:Ljava/lang/String;

    .line 2437
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;->vsersions:Ljava/lang/String;

    .line 2439
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v2

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getFirmwareList(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/AppVersionCheckEndEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 2425
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->shouldHandleFmwUpgradeEvent()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2426
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->upgradeInfo:Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;

    .line 2427
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->fmwInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 2428
    iput p1, p0, Lcom/qianhe/yct/base/BaseActivity;->fmwUpgradeCurrentStep:I

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 2084
    instance-of v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity;

    if-eqz v0, :cond_0

    return-void

    .line 2087
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v2

    const-string v3, "mode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2088
    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 2089
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 2093
    :cond_1
    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CANCEL_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    const-class v2, Lcom/qianhe/yct/activity/PrivacyPolicyActivity;

    const-class v3, Lcom/qianhe/yct/activity/BluetoothActivity;

    const/4 v4, 0x0

    if-ne v0, v1, :cond_4

    .line 2094
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->dismissBluetoothPairingDialogsGlobally()V

    .line 2095
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->shouldHandleForegroundUiEvent()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 2098
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2099
    :cond_3
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->bluetoothStatus(I)V

    return-void

    .line 2102
    :cond_4
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v0, v5, :cond_5

    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v5, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECT_FAILED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 2103
    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v5

    if-eq v0, v5, :cond_5

    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v5, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 2104
    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v5

    if-eq v0, v5, :cond_5

    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v5, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SOCKET_CLOSE:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 2105
    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v5

    if-ne v0, v5, :cond_7

    .line 2107
    :cond_5
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->dismissConnectingDialog()V

    .line 2108
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v5, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECT_FAILED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v5

    if-ne v0, v5, :cond_6

    .line 2109
    sput-boolean v6, Lcom/qianhe/yct/base/BaseActivity;->connectingDialogConsumed:Z

    goto :goto_0

    .line 2110
    :cond_6
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v5

    if-ne v0, v5, :cond_7

    .line 2111
    sput-boolean v4, Lcom/qianhe/yct/base/BaseActivity;->connectingDialogConsumed:Z

    .line 2112
    sput-boolean v4, Lcom/qianhe/yct/base/BaseActivity;->connectFailedTips:Z

    .line 2115
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->shouldHandleForegroundUiEvent()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_3

    .line 2118
    :cond_8
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v5, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->STARTCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v5

    if-ne v0, v5, :cond_c

    .line 2119
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    .line 2120
    :goto_1
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2121
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->dismissConnectingDialog()V

    return-void

    .line 2124
    :cond_a
    iput-boolean v6, p0, Lcom/qianhe/yct/base/BaseActivity;->isStartConnect:Z

    .line 2125
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2126
    :cond_b
    sget-boolean v0, Lcom/qianhe/yct/base/BaseActivity;->connectFailedTips:Z

    if-nez v0, :cond_1c

    sget-boolean v0, Lcom/qianhe/yct/base/BaseActivity;->connectingDialogConsumed:Z

    if-nez v0, :cond_1c

    .line 2127
    sput-boolean v6, Lcom/qianhe/yct/base/BaseActivity;->connectingDialogConsumed:Z

    .line 2128
    sget v0, Lcom/qianhe/yct/R$string;->connecting_device:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/base/BaseActivity$19;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/base/BaseActivity$19;-><init>(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    goto/16 :goto_2

    .line 2138
    :cond_c
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    const-class v5, Lcom/qianhe/yct/activity/basestation/BaseStationNetworkLinkActivity;

    const-class v7, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    const-class v8, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    const-class v9, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    if-ne v0, v1, :cond_11

    .line 2139
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_d

    .line 2140
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    iget-object v1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->setLastDeviceName(Ljava/lang/String;)V

    .line 2142
    :cond_d
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelTipDialog()V

    .line 2143
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2145
    :cond_e
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2146
    :cond_f
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2149
    :cond_10
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1c

    .line 2150
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object v2, v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getCorsExpirationTime(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2152
    :cond_11
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    const/high16 v10, -0x40800000    # -1.0f

    if-ne v0, v1, :cond_14

    .line 2153
    iput v10, p0, Lcom/qianhe/yct/base/BaseActivity;->zeroDegrees:F

    .line 2154
    iput-boolean v4, p0, Lcom/qianhe/yct/base/BaseActivity;->init:Z

    .line 2155
    iput-boolean v4, p0, Lcom/qianhe/yct/base/BaseActivity;->authFlag:Z

    .line 2156
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 2158
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2159
    :cond_12
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2161
    :cond_13
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->resetLastDeviceInfo()V

    goto/16 :goto_2

    .line 2162
    :cond_14
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECT_FAILED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 2163
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2164
    :cond_15
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 2165
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    .line 2166
    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isBondingInProgress()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isConnectingInProgress()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_3

    .line 2169
    :cond_16
    sget-boolean v0, Lcom/qianhe/yct/base/BaseActivity;->connectFailedTips:Z

    if-nez v0, :cond_1c

    .line 2170
    sput-boolean v6, Lcom/qianhe/yct/base/BaseActivity;->connectFailedTips:Z

    .line 2171
    sget v0, Lcom/qianhe/yct/R$string;->please_manually_connect:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->go_to_connect:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "gotoconnect"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2173
    :cond_17
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SOCKET_CLOSE:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 2174
    iput v10, p0, Lcom/qianhe/yct/base/BaseActivity;->zeroDegrees:F

    .line 2175
    iput-boolean v4, p0, Lcom/qianhe/yct/base/BaseActivity;->init:Z

    .line 2176
    iput-boolean v4, p0, Lcom/qianhe/yct/base/BaseActivity;->authFlag:Z

    .line 2177
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 2178
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2179
    :cond_18
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->resetLastDeviceInfo()V

    .line 2180
    :cond_19
    sput-boolean v6, Lcom/qianhe/yct/base/BaseActivity;->bluetoothKickedTips:Z

    goto :goto_2

    .line 2185
    :cond_1a
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->START_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 2186
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->showPairingProgressDialog()V

    goto :goto_2

    .line 2187
    :cond_1b
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->BONDING:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 2188
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 2191
    :cond_1c
    :goto_2
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->bluetoothStatus(I)V

    :cond_1d
    :goto_3
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothScanStateEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 2059
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v2

    const-string v3, "mode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2060
    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 2061
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->mySevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2062
    :cond_0
    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_STARTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 2069
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->mySevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_FINISHED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2070
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    .line 2071
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->isStartConnect:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isBondingInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isConnectingInProgress()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2072
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    return-void

    .line 2074
    :cond_2
    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothScanStateEvent;->mySevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_FAIL:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 2075
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CorsExpireEpochEvent;)V
    .locals 10
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 2222
    iget v0, p1, Lcom/qianhe/yct/event/CorsExpireEpochEvent;->state:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qianhe/yct/event/CorsExpireEpochEvent;->className:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2223
    iget-wide v0, p1, Lcom/qianhe/yct/event/CorsExpireEpochEvent;->expireEpoch:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 2224
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "corsAccountExpireEpoch"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2228
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->getExpireDate(JJ)Ljava/lang/String;

    move-result-object v5

    .line 2229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    .line 2230
    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 2231
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 2232
    sget p1, Lcom/qianhe/yct/R$string;->cors_renew:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget p1, Lcom/qianhe/yct/R$string;->close:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/qianhe/yct/base/BaseActivity$20;

    invoke-direct {v9, p0}, Lcom/qianhe/yct/base/BaseActivity$20;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    const-string v8, ""

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/FirmwareResponse;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 2445
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->shouldHandleFmwUpgradeEvent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2446
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 2447
    iget v0, p1, Lcom/qianhe/yct/event/FirmwareResponse;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 2448
    iget-object v0, p1, Lcom/qianhe/yct/event/FirmwareResponse;->fmw_list:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2449
    iget-object v0, p1, Lcom/qianhe/yct/event/FirmwareResponse;->fmw_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw;

    .line 2450
    iget-object v3, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2451
    iget-object v0, v2, Lcom/qianhe/yct/event/FirmwareResponse$Fmw;->list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;

    .line 2453
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->fmwInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2458
    :cond_2
    iget-boolean v0, p1, Lcom/qianhe/yct/event/FirmwareResponse;->isModuleUpgrade:Z

    if-nez v0, :cond_3

    .line 2460
    iget-object p1, p1, Lcom/qianhe/yct/event/FirmwareResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->checkModelUpgrade(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 2463
    :cond_3
    iput v1, p0, Lcom/qianhe/yct/base/BaseActivity;->fmwUpgradeCurrentStep:I

    .line 2464
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showUpgradeFmwDialog(Lcom/qianhe/yct/event/FirmwareResponse;)V

    return-void

    .line 2466
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->fmwInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2467
    iput v1, p0, Lcom/qianhe/yct/base/BaseActivity;->fmwUpgradeCurrentStep:I

    .line 2468
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showUpgradeFmwDialog(Lcom/qianhe/yct/event/FirmwareResponse;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/LogoutResponse;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 2596
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/UserSession;->clearLoginInfo()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/ReloadAppConfigEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 789
    iget-object v0, p1, Lcom/qianhe/yct/event/ReloadAppConfigEvent;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    if-eqz v0, :cond_0

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u91cd\u65b0\u4f7f\u7528\u914d\u7f6e("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 791
    iget-object p1, p1, Lcom/qianhe/yct/event/ReloadAppConfigEvent;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    .line 792
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/application/YCTApplication;->setAppConfig(Lcom/qianhe/yct/bean/AppConfig;)V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/StartDemo;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1395
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvDemoTip:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/StopDemo;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1401
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->tvDemoTip:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/TcpClientEvent;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_3

    .line 1371
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->shouldHandleForegroundUiEvent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1372
    :cond_0
    iget-boolean v0, p1, Lcom/qianhe/yct/event/TcpClientEvent;->connected:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/qianhe/yct/R$string;->simulator_connected:I

    iget-object p1, p1, Lcom/qianhe/yct/event/TcpClientEvent;->ip:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->simulator_disconnected:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1373
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1374
    sget-object v2, Lcom/qianhe/yct/base/BaseActivity;->sLastTcpClientTip:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-wide v2, Lcom/qianhe/yct/base/BaseActivity;->sLastTcpClientTipTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    goto :goto_1

    .line 1377
    :cond_2
    sput-object p1, Lcom/qianhe/yct/base/BaseActivity;->sLastTcpClientTip:Ljava/lang/String;

    .line 1378
    sput-wide v0, Lcom/qianhe/yct/base/BaseActivity;->sLastTcpClientTipTime:J

    .line 1379
    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/UnknownHostEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    .line 1384
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->shouldHandleForegroundUiEvent()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1385
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1386
    sget-wide v2, Lcom/qianhe/yct/base/BaseActivity;->sLastUnknownHostTipTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    goto :goto_0

    .line 1389
    :cond_1
    sput-wide v0, Lcom/qianhe/yct/base/BaseActivity;->sLastUnknownHostTipTime:J

    .line 1390
    sget p1, Lcom/qianhe/yct/R$string;->please_check_device_network:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEventMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1406
    const-string/jumbo v0, "\u672a\u83b7\u53d6\u6743\u9650"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1407
    const-string p1, "basic"

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1410
    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->permission_not_obtained:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->go_open:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/base/BaseActivity$18;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/base/BaseActivity$18;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 1425
    :cond_1
    const-string v0, "checkConnect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1426
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->checkConnect()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected abstract onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
.end method

.method protected abstract onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
.end method

.method protected onPause()V
    .locals 1

    .line 547
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->isVisible:Z

    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x64

    if-eq p1, v0, :cond_2

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    .line 1314
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/base/BaseActivity;->handleBasicPermissionDenied(ILjava/util/List;)V

    :cond_1
    return-void

    .line 1308
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->hasBasicRuntimePermissions()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->hasExternalStorageAccess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1309
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->requestStoragePermission()V

    return-void

    .line 1312
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/base/BaseActivity;->handleBasicPermissionDenied(ILjava/util/List;)V

    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 p2, 0x64

    if-eq p1, p2, :cond_2

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x66

    if-ne p1, p2, :cond_1

    .line 1299
    const-string p1, "camera"

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1300
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->init()V

    :cond_1
    return-void

    .line 1297
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onBasicPermissionRequestFinished(I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1290
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    .line 1291
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 700
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 702
    const-string v0, "appConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/bean/AppConfig;

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    if-nez v0, :cond_0

    .line 704
    const-string/jumbo v0, "\u8bfb\u53d6\u914d\u7f6e\u6587\u4ef6"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    .line 707
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->setAppConfig(Lcom/qianhe/yct/bean/AppConfig;)V

    .line 708
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->restoreBatteryStateFromBundle(Landroid/os/Bundle;)V

    .line 709
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->restoreTopBarBatteryUi()V

    return-void
.end method

.method protected onResume()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 478
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    .line 479
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->isVisible:Z

    .line 480
    iget-boolean v1, p0, Lcom/qianhe/yct/base/BaseActivity;->init:Z

    if-nez v1, :cond_0

    const-string v1, "basic"

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->init()V

    .line 483
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    .line 484
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v3

    const-string v4, "mode"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 485
    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v1, v2, :cond_a

    .line 486
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    .line 488
    iget-wide v4, p0, Lcom/qianhe/yct/base/BaseActivity;->mScreenOffTime:J

    const-class v2, Lcom/qianhe/yct/activity/BluetoothActivity;

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/qianhe/yct/base/BaseActivity;->mScreenOffTime:J

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x2710

    cmp-long v10, v4, v8

    if-lez v10, :cond_1

    if-eqz v1, :cond_1

    iget v4, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v5, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 489
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 491
    iput-wide v6, p0, Lcom/qianhe/yct/base/BaseActivity;->mScreenOffTime:J

    .line 492
    const-string/jumbo v4, "\u606f\u5c4f\u8d85\u8fc710\u79d2->\u65ad\u5f00\u91cd\u8fde\u3002"

    invoke-static {v4}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 493
    sget-object v4, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p0, v4}, Lcom/qianhe/yct/base/BaseActivity;->reConnect(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 496
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/qianhe/yct/activity/PrivacyPolicyActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    .line 497
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v2

    sget-object v4, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v2, v4}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/qianhe/yct/activity/basestation/BaseStationNetworkLinkActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 501
    :cond_3
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getAllConnectedDevices()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x0

    :cond_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 502
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v2

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v2, v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 503
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 504
    sget v3, Lcom/qianhe/yct/R$string;->data_empty:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 505
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 507
    :cond_5
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->tvAngle:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 508
    sget v3, Lcom/qianhe/yct/R$string;->data_empty:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->tvAngle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 511
    :cond_6
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->tvHRMS:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 512
    :cond_7
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->tvVRMS:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_8
    :goto_0
    if-eqz v1, :cond_b

    .line 517
    iget-object v0, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v2}, Lcom/qianhe/yct/application/YCTApplication;->getLastDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 518
    iget-object v0, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v2, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->setLastDeviceName(Ljava/lang/String;)V

    .line 520
    :cond_9
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->resetLastDeviceInfo()V

    goto :goto_1

    .line 523
    :cond_a
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 525
    :cond_b
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/qianhe/yct/base/BaseActivity$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/base/BaseActivity$8;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 536
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->ivBattIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 537
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isKe76Pro()Z

    move-result v1

    if-eqz v1, :cond_c

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_zpy_batt_ex30:I

    goto :goto_2

    :cond_c
    sget v1, Lcom/qianhe/yct/R$drawable;->icon_zpy_batt_h5pro:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 539
    :cond_d
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 689
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 691
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    if-eqz v0, :cond_0

    .line 692
    const-string v1, "appConfig"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 694
    :cond_0
    const-string/jumbo v0, "state_power_percent"

    iget v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerPercent:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 695
    const-string/jumbo v0, "state_power_source_type"

    iget v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerSourceType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 359
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 360
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->initTopBar()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    .line 362
    sget v1, Lcom/qianhe/yct/R$id;->ivBackTb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->ivBack:Landroid/widget/ImageView;

    .line 363
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->lltBackTb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->lltBackTb:Landroid/view/View;

    .line 364
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->tvDemoTip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvDemoTip:Landroid/widget/TextView;

    .line 365
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->lltLocate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->lltLocate:Landroid/view/View;

    .line 366
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->lltBatt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->lltBatt:Landroid/view/View;

    .line 367
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->tvUseStars:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvUseStars:Landroid/widget/TextView;

    .line 368
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->lltInsState:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->lltInsState:Landroid/view/View;

    .line 369
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->tvInsState:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    .line 370
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->tvAngle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvAngle:Landroid/widget/TextView;

    .line 371
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->tvGotoConnect:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    .line 372
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->tvRtkState:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvRtkState:Landroid/widget/TextView;

    .line 373
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->tvDiffDelay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvDiffDelay:Landroid/widget/TextView;

    .line 374
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->lltStar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->lltStar:Landroid/view/View;

    .line 375
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->rltRMS:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->rltRMS:Landroid/view/View;

    .line 376
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->tvHRMS:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvHRMS:Landroid/widget/TextView;

    .line 377
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->tvVRMS:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvVRMS:Landroid/widget/TextView;

    .line 378
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->ivBattIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->ivBattIcon:Landroid/widget/ImageView;

    .line 379
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->tvZpyBatt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvZpyBatt:Landroid/widget/TextView;

    .line 380
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->gifCharging:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->gifCharging:Lpl/droidsonroids/gif/GifImageView;

    .line 381
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->rltSensorBatt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->rltSensorBatt:Landroid/view/View;

    .line 382
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->topBar:Landroid/widget/FrameLayout;

    sget v1, Lcom/qianhe/yct/R$id;->tvSensorBatt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvSensorBatt:Landroid/widget/TextView;

    .line 383
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->lltBackTb:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 384
    new-instance v1, Lcom/qianhe/yct/base/BaseActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/base/BaseActivity$2;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvGotoConnect:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 392
    new-instance v1, Lcom/qianhe/yct/base/BaseActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/base/BaseActivity$3;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->lltLocate:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 401
    new-instance v1, Lcom/qianhe/yct/base/BaseActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/base/BaseActivity$4;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->lltInsState:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 410
    new-instance v1, Lcom/qianhe/yct/base/BaseActivity$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/base/BaseActivity$5;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->lltBatt:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 424
    new-instance v1, Lcom/qianhe/yct/base/BaseActivity$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/base/BaseActivity$6;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->restoreTopBarBatteryUi()V

    .line 433
    :cond_5
    const-string v0, "basic"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method protected promptOpenSharedProject(Ljava/lang/String;)V
    .locals 3

    .line 1201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/qianhe/yct/base/BaseActivity;->sShareCodePrompting:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1202
    sput-boolean v0, Lcom/qianhe/yct/base/BaseActivity;->sShareCodePrompting:Z

    .line 1203
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->beforePromptOpenSharedProject()V

    .line 1204
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1208
    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->want_to_open_shared_project:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/base/BaseActivity$15;

    invoke-direct {v2, p0, p1}, Lcom/qianhe/yct/base/BaseActivity$15;-><init>(Lcom/qianhe/yct/base/BaseActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 1205
    sput-boolean p1, Lcom/qianhe/yct/base/BaseActivity;->sShareCodePrompting:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public reConnect(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 4

    .line 2322
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;

    sget-object v2, Lcom/qianhe/yct/enums/BluetoothActionEnum;->DISCONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const-string v3, ""

    invoke-direct {v1, v2, v3, p1}, Lcom/qianhe/yct/event/BluetoothConnectActionEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;Ljava/lang/String;Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2323
    const-class p1, Lcom/qianhe/yct/service/BluetoothConnectService;

    invoke-virtual {p0, p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2324
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v0, "latestDeviceAddress"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2325
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2326
    new-instance v0, Lcom/qianhe/yct/event/BluetoothConnectActionByMacEvent;

    sget-object v1, Lcom/qianhe/yct/enums/BluetoothActionEnum;->CONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    invoke-direct {v0, v1, p1}, Lcom/qianhe/yct/event/BluetoothConnectActionByMacEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;Ljava/lang/String;)V

    .line 2328
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 2332
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->startBlueService()V

    return-void
.end method

.method protected readClipboard()Ljava/lang/String;
    .locals 2

    .line 1129
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1132
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1133
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1134
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 1135
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 1136
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1138
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1142
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method protected resetLastDeviceInfo()V
    .locals 5

    const/4 v0, 0x0

    .line 2249
    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->upgradeInfo:Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;

    .line 2250
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvRtkState:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2251
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2252
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvRtkState:Landroid/widget/TextView;

    sget v2, Lcom/qianhe/yct/R$string;->loading:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2254
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvDiffDelay:Landroid/widget/TextView;

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 2255
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2256
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvDiffDelay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2258
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2259
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvAngle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2260
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvUseStars:Landroid/widget/TextView;

    const-string v3, "0"

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const/4 v0, -0x1

    .line 2261
    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerPercent:I

    .line 2262
    iput v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mH5PowerSourceType:I

    .line 2263
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->clearH5PowerState()V

    .line 2264
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvZpyBatt:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2265
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->gifCharging:Lpl/droidsonroids/gif/GifImageView;

    const/16 v4, 0x8

    if-eqz v0, :cond_6

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2266
    :cond_6
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->rltSensorBatt:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2267
    :cond_7
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvSensorBatt:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2268
    :cond_8
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2269
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 2270
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2271
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvInsState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2273
    :cond_9
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvAngle:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 2274
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2275
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvAngle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2277
    :cond_a
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvHRMS:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2278
    :cond_b
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tvVRMS:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_c
    return-void
.end method

.method protected resolveWorkInsAvailable(Z)Z
    .locals 1

    .line 1931
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isIgnoreSensorOfflineForData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method protected resolveWorkPageAvailable(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1951
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    return v0

    .line 1954
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 1956
    iget p1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    sget-object p2, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p2

    and-int/2addr p1, p2

    if-nez p1, :cond_1

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget p1, p1, Lcom/qianhe/yct/bean/AppConfig$Details;->tilt_display:I

    if-ne p1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    return v0

    .line 1959
    :cond_3
    iget v1, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    .line 1960
    sget-object v3, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v3}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v3

    and-int/2addr v3, v1

    if-nez v3, :cond_b

    sget-object v3, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v3}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    goto :goto_1

    .line 1964
    :cond_4
    sget-object v3, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->ELEVATION_ONLY:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    if-ne p2, v3, :cond_6

    .line 1965
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->isInsReadyOrElevationAvailable(Lcom/qianhe/baselib/bean/InsNavi;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1966
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->resolveWorkInsAvailable(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    return v0

    .line 1969
    :cond_6
    sget-object p1, Lcom/qianhe/yct/enums/InsStatusEnum;->READY:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p1}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    .line 1970
    :goto_0
    sget-object p2, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {p2}, Lcom/qianhe/yct/enums/InsStatusEnum;->getStatus()I

    move-result p2

    and-int/2addr p2, v1

    if-eqz p2, :cond_9

    if-eqz p1, :cond_8

    .line 1971
    invoke-virtual {p0, v2}, Lcom/qianhe/yct/base/BaseActivity;->resolveWorkInsAvailable(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    return v0

    :cond_9
    if-eqz p1, :cond_a

    .line 1975
    invoke-virtual {p0, v2}, Lcom/qianhe/yct/base/BaseActivity;->resolveWorkInsAvailable(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    return p1

    .line 1978
    :cond_a
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    return v0

    .line 1961
    :cond_b
    :goto_1
    iput-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->workPageDataAvailable:Z

    return v0
.end method

.method protected shareFile(Ljava/io/File;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 3476
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3480
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 3481
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3482
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/base/BaseActivity;->resolveShareMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3483
    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 3484
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3486
    sget p1, Lcom/qianhe/yct/R$string;->share_to:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3488
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3489
    sget p1, Lcom/qianhe/yct/R$string;->not_support_share:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected sharePlainText(Ljava/lang/String;)V
    .locals 2

    .line 3468
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3469
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3470
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3471
    sget p1, Lcom/qianhe/yct/R$string;->share_to:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected shouldHandleFmwUpgradeEvent()Z
    .locals 1

    .line 1325
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->shouldHandleForegroundUiEvent()Z

    move-result v0

    return v0
.end method

.method protected shouldHandleForegroundUiEvent()Z
    .locals 1

    .line 1320
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->isVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldIgnoreBucketSensorLost()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldRestoreBluetoothConnectProgressUi()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public showCalibrateDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V
    .locals 3

    .line 3192
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3193
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->calibrateDialogFragment:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->calibrateDialogFragment:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->calibrateDialogFragment:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3196
    :cond_0
    new-instance v0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->calibrateDialogFragment:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    .line 3197
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "CalibrateDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 3198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3199
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v1, :cond_1

    const-string v2, "quality"

    iget v1, v1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 3200
    :cond_1
    const-string v1, "requestKey"

    const-string v2, "allowRotate"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3201
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->calibrateDialogFragment:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 3202
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->calibrateDialogFragment:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->wrapCalibrateListener(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected showCalibrateTips()V
    .locals 1

    .line 3230
    new-instance v0, Lcom/qianhe/yct/base/BaseActivity$26;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/base/BaseActivity$26;-><init>(Lcom/qianhe/yct/base/BaseActivity;)V

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showCalibrateDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public showCollectingDialog(Ljava/lang/String;ILcom/qianhe/yct/dialog/CollectingDialogFragment$OnCloseListener;)V
    .locals 4

    .line 2616
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2617
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2618
    const-string v1, "CollectingDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    if-eqz v2, :cond_1

    .line 2620
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 2622
    :cond_1
    new-instance v2, Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-direct {v2}, Lcom/qianhe/yct/dialog/CollectingDialogFragment;-><init>()V

    iput-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->collectingDialogFragment:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    .line 2623
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2624
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget p1, Lcom/qianhe/yct/R$string;->collecting:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string/jumbo v3, "tip"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    const-string p1, "countDownSeconds"

    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2626
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->collectingDialogFragment:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2627
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->collectingDialogFragment:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-virtual {p1, p3}, Lcom/qianhe/yct/dialog/CollectingDialogFragment;->setOnCloseListener(Lcom/qianhe/yct/dialog/CollectingDialogFragment$OnCloseListener;)V

    .line 2629
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2630
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Lcom/qianhe/yct/base/BaseActivity;->collectingDialogFragment:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-virtual {p1, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 2632
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->collectingDialogFragment:Lcom/qianhe/yct/dialog/CollectingDialogFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2635
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2636
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Show collecting dialog failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-eqz p3, :cond_4

    const/4 p1, 0x1

    .line 2637
    invoke-interface {p3, p1}, Lcom/qianhe/yct/dialog/CollectingDialogFragment$OnCloseListener;->onClose(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public showHeadingAccuracyDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1815
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showHeadingAccuracyDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;F)V

    return-void
.end method

.method public showHeadingAccuracyDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;F)V
    .locals 3

    .line 1822
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1823
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->calibrateDialogFragment:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->calibrateDialogFragment:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->calibrateDialogFragment:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1826
    :cond_0
    new-instance v0, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->calibrateDialogFragment:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    .line 1827
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "CalibrateDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 1828
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1829
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    if-eqz v1, :cond_1

    const-string v2, "quality"

    iget v1, v1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1830
    :cond_1
    const-string v1, "headingAccuracyMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    .line 1832
    const-string v1, "headingErrorMaxDeg"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1834
    :cond_2
    const-string p2, "requestKey"

    const-string v1, "allowRotate"

    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseActivity;->calibrateDialogFragment:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1836
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseActivity;->calibrateDialogFragment:Lcom/qianhe/yct/dialog/CalibrateDialogFragment;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->wrapCalibrateListener(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showLoadingDialog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2600
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void
.end method

.method protected showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 1

    .line 2604
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->loadingDialogManager:Lcom/qianhe/yct/utils/LoadingDialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/qianhe/yct/utils/LoadingDialogManager;->show(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    :cond_0
    return-void
.end method

.method protected showPairingProgressDialog()V
    .locals 2

    .line 3084
    sget v0, Lcom/qianhe/yct/R$string;->pairing:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->createPairingLoadingCloseListener()Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void
.end method

.method protected showShareWayDialog(Ljava/lang/String;)V
    .locals 2

    .line 3421
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3422
    sget p1, Lcom/qianhe/yct/R$string;->data_anomaly:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 3425
    :cond_0
    new-instance v0, Lcom/qianhe/yct/dialog/ShareWayDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/ShareWayDialogFragment;-><init>()V

    .line 3426
    new-instance v1, Lcom/qianhe/yct/base/BaseActivity$27;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/base/BaseActivity$27;-><init>(Lcom/qianhe/yct/base/BaseActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/ShareWayDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/ShareWayDialogFragment$OnConfirmListener;)V

    .line 3437
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "ShareWayDialogFragment"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 1

    .line 2970
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2971
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->tipsDialogManager:Lcom/qianhe/yct/utils/TipsDialogManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qianhe/yct/utils/TipsDialogManager;->show(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void
.end method

.method public showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V
    .locals 8

    .line 2976
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2977
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tipsDialogManager:Lcom/qianhe/yct/utils/TipsDialogManager;

    const-string v4, ""

    const-string v5, ""

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/qianhe/yct/utils/TipsDialogManager;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V
    .locals 8

    .line 2988
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2989
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tipsDialogManager:Lcom/qianhe/yct/utils/TipsDialogManager;

    const-string v5, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/qianhe/yct/utils/TipsDialogManager;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 8

    .line 2994
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2995
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tipsDialogManager:Lcom/qianhe/yct/utils/TipsDialogManager;

    const-string v7, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/qianhe/yct/utils/TipsDialogManager;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V
    .locals 8

    .line 3000
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3001
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->tipsDialogManager:Lcom/qianhe/yct/utils/TipsDialogManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/qianhe/yct/utils/TipsDialogManager;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showToastDialog(Ljava/lang/String;)V
    .locals 2

    .line 2945
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2948
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2949
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/dialog/ToastDialogFragment;->refreshTip(Ljava/lang/String;)V

    return-void

    .line 2952
    :cond_1
    new-instance v0, Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/ToastDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    .line 2953
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2954
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2955
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2957
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 2958
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "ToastDialogFragment"

    if-eqz v0, :cond_2

    .line 2959
    :try_start_1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 2961
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->toastDialogFragment:Lcom/qianhe/yct/dialog/ToastDialogFragment;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 2964
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show toast dialog failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 2

    .line 960
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->upgradeingDialogManager:Lcom/qianhe/yct/utils/UpgradeingDialogManager;

    if-nez v0, :cond_0

    .line 961
    new-instance v0, Lcom/qianhe/yct/utils/UpgradeingDialogManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->upgradeingDialogManager:Lcom/qianhe/yct/utils/UpgradeingDialogManager;

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->upgradeingDialogManager:Lcom/qianhe/yct/utils/UpgradeingDialogManager;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget p1, Lcom/qianhe/yct/R$string;->upgrading:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/qianhe/yct/utils/UpgradeingDialogManager;->show(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void
.end method

.method protected showWeChatOnlyChooser(Ljava/lang/String;)V
    .locals 5

    .line 3514
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3515
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->buildShareCodeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3516
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->copyShareTextToClipboard(Ljava/lang/String;)V

    .line 3517
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3518
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3519
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3520
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isZH_CN(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3521
    sget p1, Lcom/qianhe/yct/R$string;->share_to:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 3525
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v1, 0x10000

    .line 3526
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 3528
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3529
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 3530
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.tencent.mm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3531
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3532
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3533
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3536
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 3537
    sget p1, Lcom/qianhe/yct/R$string;->wechat_not_installed:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 3541
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    sget v2, Lcom/qianhe/yct/R$string;->share_to:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3543
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3544
    new-array v0, v0, [Landroid/content/Intent;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3546
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    return-void
.end method

.method public snapshotInstrumentCollectFromCurrentGga()Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;
    .locals 1

    .line 2880
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;->buildInstrumentCollectResultFromCurrentGga()Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;

    move-result-object v0

    return-object v0
.end method

.method public startBlueService()V
    .locals 2

    .line 2305
    sget-object v0, Lcom/qianhe/yct/base/BaseActivity;->intentService:Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/service/BluetoothConnectService;

    if-nez v0, :cond_0

    .line 2306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/qianhe/yct/base/BaseActivity;->intentService:Landroid/content/Intent;

    .line 2308
    :cond_0
    invoke-virtual {p0, p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 2310
    sget-object v0, Lcom/qianhe/yct/base/BaseActivity;->intentService:Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticApiModelOutline2;->m(Lcom/qianhe/yct/base/BaseActivity;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    .line 2312
    :cond_1
    sget-object v0, Lcom/qianhe/yct/base/BaseActivity;->intentService:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    .line 2315
    :cond_2
    sget-object v0, Lcom/qianhe/yct/base/BaseActivity;->intentService:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public startInstrumentCollect(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V
    .locals 1

    .line 2685
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2686
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentCollectPoleHeightSet:Z

    if-nez v0, :cond_1

    .line 2687
    new-instance v0, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda8;-><init>(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showPoleHeightInputDialog(Lcom/qianhe/yct/base/BaseActivity$OnPoleHeightInputConfirmListener;)V

    return-void

    .line 2693
    :cond_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->startInstrumentCollectCountdown(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startInstrumentCollectWithBubbleCompass(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V
    .locals 1

    .line 2702
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2703
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->instrumentCollectPoleHeightSet:Z

    if-nez v0, :cond_1

    .line 2704
    new-instance v0, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda10;-><init>(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showPoleHeightInputDialog(Lcom/qianhe/yct/base/BaseActivity$OnPoleHeightInputConfirmListener;)V

    return-void

    .line 2710
    :cond_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showBubbleCompassCollectDialog(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    return-void
.end method

.method public startInstrumentCollectWithPoleHeight(Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V
    .locals 1

    .line 2676
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2677
    :cond_0
    new-instance v0, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/base/BaseActivity$$ExternalSyntheticLambda9;-><init>(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/base/BaseActivity$OnInstrumentCollectListener;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showPoleHeightInputDialog(Lcom/qianhe/yct/base/BaseActivity$OnPoleHeightInputConfirmListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected stopService()V
    .locals 2

    .line 3734
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/qianhe/yct/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3735
    sget-object v0, Lcom/qianhe/yct/base/BaseActivity;->intentService:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    const/4 v0, 0x0

    .line 3736
    sput-object v0, Lcom/qianhe/yct/base/BaseActivity;->intentService:Landroid/content/Intent;

    .line 3737
    sget-object v1, Lcom/qianhe/yct/base/BaseActivity;->screenReceiver:Lcom/qianhe/yct/base/BaseActivity$ScreenReceiver;

    if-eqz v1, :cond_1

    .line 3739
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3740
    sput-object v0, Lcom/qianhe/yct/base/BaseActivity;->screenReceiver:Lcom/qianhe/yct/base/BaseActivity$ScreenReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3742
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3746
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getActivityList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3747
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
