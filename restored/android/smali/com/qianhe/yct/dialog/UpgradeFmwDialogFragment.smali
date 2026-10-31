.class public Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "UpgradeFmwDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

.field private count:I

.field private currentFileIndex:I

.field private currentStep:I

.field private deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field private executorServiceWrite:Ljava/util/concurrent/ExecutorService;

.field private executorStateTimer:Ljava/util/concurrent/ScheduledExecutorService;

.field private executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

.field private fileMd5:Ljava/lang/String;

.field private fileSize:J

.field private futureStateTimer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private futureWrite:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private id:I

.field private lastAnswerTime:J

.field private listener:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;

.field private mFilePath:Ljava/lang/String;

.field private manual:I

.field private model:Ljava/lang/String;

.field public onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

.field private session:Ljava/lang/String;

.field private final startWrite:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private totalStep:I

.field private volatile upgradeFinished:Z

.field private upgradeingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

.field private versionNew:Ljava/lang/String;

.field private volatile waitingReboot:Z

.field private yctDevice:Lcom/qh/yctdevice/YctDevice;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Lcom/qianhe/yct/databinding/DialogUpgradeBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcount(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->count:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentFileIndex(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->currentFileIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentStep(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->currentStep:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdeviceType(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Lcom/qianhe/baselib/enums/DeviceType;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfileSize(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->fileSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetfutureWrite(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/util/concurrent/Future;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureWrite:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetid(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->id:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastAnswerTime(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->lastAnswerTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->listener:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilePath(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmanual(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->manual:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmodel(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->model:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsession(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->session:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartWrite(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettotalStep(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->totalStep:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetversionNew(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->versionNew:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyctDevice(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Lcom/qh/yctdevice/YctDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcount(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->count:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfutureWrite(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Ljava/util/concurrent/Future;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureWrite:Ljava/util/concurrent/Future;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmanual(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->manual:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelUpgrade(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->cancelUpgrade(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelUpgradeingDialog(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->cancelUpgradeingDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartGnssUpgrade(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->startGnssUpgrade()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteFwm(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->writeFwm(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 62
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->session:Ljava/lang/String;

    const/4 v1, 0x0

    .line 70
    iput v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->currentFileIndex:I

    .line 72
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->executorServiceWrite:Ljava/util/concurrent/ExecutorService;

    .line 73
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 74
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->executorStateTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 80
    iput v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->count:I

    .line 82
    iput-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->model:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->waitingReboot:Z

    .line 89
    iput-boolean v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->upgradeFinished:Z

    .line 492
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    .line 493
    new-instance v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$11;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    .line 530
    new-instance v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$12;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$12;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$300(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private cancelUpgrade(Ljava/lang/String;)V
    .locals 1

    .line 514
    const-string v0, "UpgradeFmwDialogFragment - cancelUpgrade()"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 515
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->cancelDownload()V

    .line 516
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showToastDialog(Ljava/lang/String;)V

    .line 517
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 518
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 519
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->cancelUpgradeingDialog()V

    .line 520
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->model:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 521
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    invoke-virtual {p1}, Lcom/qh/yctdevice/YctDevice;->stopFmwUpdate()V

    return-void

    .line 523
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 524
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->stopWriteFmw()V

    .line 525
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->stopWriteTimer()V

    .line 526
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->stopStateTimer()V

    return-void
.end method

.method private cancelUpgradeingDialog()V
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->upgradeingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->upgradeingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->upgradeingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private onH5UpgradeSuccess(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 3

    .line 379
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->upgradeFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 382
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->upgradeFinished:Z

    const/4 v1, 0x0

    .line 383
    iput-boolean v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->waitingReboot:Z

    .line 384
    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 385
    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureWrite:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 386
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 387
    iput-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureWrite:Ljava/util/concurrent/Future;

    .line 389
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->stopWriteTimer()V

    .line 390
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->stopStateTimer()V

    .line 391
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->cancelTipDialog()V

    .line 392
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->cancelLoadingDialog()V

    .line 393
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->cancelUpgradeingDialog()V

    const-wide/16 v0, 0x0

    .line 394
    iput-wide v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->lastAnswerTime:J

    .line 395
    iget v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->currentStep:I

    iget v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->totalStep:I

    if-lt v0, v1, :cond_2

    .line 396
    sget v0, Lcom/qianhe/yct/R$string;->firmware_upgrade_completed:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 398
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "UPGRADE,CANCLE"

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 400
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->listener:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->currentStep:I

    iget v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->totalStep:I

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->listener:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;

    invoke-interface {v0, p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;->next(I)V

    .line 402
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private startGnssUpgrade()V
    .locals 4

    .line 275
    sget v0, Lcom/qianhe/yct/R$string;->download_success_transferring_firmware:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    .line 276
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string/jumbo v1, "startGnssUpgrade"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->model:Ljava/lang/String;

    const-string v2, "M10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    iget v1, v1, Lcom/qh/yctdevice/YctDevice;->FMW_TYPE_BEIYUN:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->model:Ljava/lang/String;

    const-string v2, "980"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    iget v1, v1, Lcom/qh/yctdevice/YctDevice;->FMW_TYPE_UNICORE:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    iget v1, v1, Lcom/qh/yctdevice/YctDevice;->FMW_TYPE_DEVICE:I

    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->mFilePath:Ljava/lang/String;

    new-instance v3, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$8;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->startFmwUpdate(ILjava/lang/String;Lcom/qh/yctdevice/YctDevice$FmwUpdateListener;)Z

    :cond_2
    return-void
.end method

.method private startStateTimer(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 8

    .line 603
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureStateTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_2

    .line 604
    const-string/jumbo v0, "\u5f00\u542f\u5b9a\u65f6\u67e5\u8be2\u5347\u7ea7\u72b6\u6001"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 605
    iput v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->count:I

    .line 606
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->executorStateTimer:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->executorStateTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 609
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->executorStateTimer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$13;

    invoke-direct {v2, p0, p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$13;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Lcom/qianhe/baselib/enums/DeviceType;)V

    const-wide/16 v5, 0x7d0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureStateTimer:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void
.end method

.method private startWriteTimer(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 8

    .line 406
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    .line 407
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->stopStateTimer()V

    .line 408
    const-string/jumbo v0, "\u5f00\u542f\u5b9a\u65f6\u68c0\u6d4b\u5199\u5165\u5e94\u7b54"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->lastAnswerTime:J

    .line 410
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$9;

    invoke-direct {v2, p0, p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$9;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Lcom/qianhe/baselib/enums/DeviceType;)V

    const-wide/16 v5, 0x1388

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method private stopStateTimer()V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureStateTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 622
    const-string/jumbo v0, "\u53d6\u6d88\u5b9a\u65f6\u67e5\u8be2\u5347\u7ea7\u72b6\u6001\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureStateTimer:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 624
    iput-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureStateTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 625
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->executorStateTimer:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method private stopWriteFmw()V
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 706
    const-string/jumbo v0, "\u53d6\u6d88\u5199\u5165\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureWrite:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 708
    iput-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureWrite:Ljava/util/concurrent/Future;

    .line 709
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->executorServiceWrite:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method

.method private stopWriteTimer()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 696
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 697
    const-string/jumbo v0, "\u53d6\u6d88\u5b9a\u65f6\u68c0\u6d4b\u5199\u5165\u5e94\u7b54\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 699
    iput-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 700
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method private writeFwm(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->executorServiceWrite:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->executorServiceWrite:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$10;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->futureWrite:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 p1, 0x1

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    .line 110
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    invoke-virtual {v1}, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 115
    new-instance v2, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 125
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 126
    new-instance v2, Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-direct {v2}, Lcom/qianhe/yct/dialog/LoadingFragment;-><init>()V

    iput-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->upgradeingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    .line 128
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_4

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 131
    const-string v4, "id"

    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->id:I

    .line 132
    const-string/jumbo v4, "upgradeLog"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    const-string/jumbo v5, "versionOld"

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    const-string v6, "deviceType"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v6, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 135
    const-string/jumbo v6, "versionNew"

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->versionNew:Ljava/lang/String;

    .line 136
    const-string v6, "fileSize"

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->fileSize:J

    .line 137
    const-string v6, "md5"

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->fileMd5:Ljava/lang/String;

    .line 138
    const-string v6, "model"

    invoke-virtual {v2, v6, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->model:Ljava/lang/String;

    .line 139
    const-string/jumbo v6, "totalStep"

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->totalStep:I

    .line 140
    const-string v6, "currentStep"

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->currentStep:I

    .line 141
    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v6, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v2, v6, :cond_1

    .line 142
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceBase()Lcom/qh/yctdevice/YctDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    .line 148
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->fileMd5:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->fileMd5:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v2, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->session:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 150
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UpgradeFmwDialogFragment:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 153
    :cond_2
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 154
    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvUpgradeLog:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvUpgradeLog:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_3
    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvVersionOld:Landroid/widget/TextView;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/qianhe/yct/R$string;->current_version:I

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\uff1a%s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, p1, [Ljava/lang/Object;

    aput-object v5, v8, v1

    invoke-static {v4, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvVersionNew:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/qianhe/yct/R$string;->latest_version:I

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->versionNew:Ljava/lang/String;

    new-array v7, p1, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvFileSize:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/qianhe/yct/R$string;->file_size:I

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\uff1a%.2f MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->fileSize:J

    long-to-double v6, v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double/2addr v6, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v6, p1, v1

    invoke-static {v4, v5, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvTip:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/qianhe/yct/R$string;->found_new_firmware:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v2

    iget-object v4, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->model:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v3, "\n(GNSS)"

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    new-instance p1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$2;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 173
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvIgnore:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$4;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogUpgradeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogUpgradeBinding;->tvSure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$5;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 715
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->onDestroyView()V

    .line 716
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 717
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->stopWriteFmw()V

    .line 718
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->stopWriteTimer()V

    .line 719
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->stopStateTimer()V

    .line 720
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 721
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    invoke-virtual {v0}, Lcom/qh/yctdevice/YctDevice;->stopFmwUpdate()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 690
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 691
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->listener:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->listener:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;

    iget v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->manual:I

    invoke-interface {p1, v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;->onClose(I)V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/UpgradeCancelEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 595
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->waitingReboot:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->upgradeFinished:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeCancelEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPGRADE,START,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->session:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->fileSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->fileMd5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/UpgradeStartEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 428
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->waitingReboot:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->upgradeFinished:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStartEvent;->line:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStartEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->startWriteTimer(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 435
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStartEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->writeFwm(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 437
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->cancelUpgradeingDialog()V

    .line 438
    sget p1, Lcom/qianhe/yct/R$string;->upgrade_failed:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 439
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    .line 430
    :cond_2
    :goto_0
    const-string p1, "UpgradeStartEvent - \u5df2\u5728\u7b49\u5f85\u91cd\u542f\u6216\u5df2\u6210\u529f\uff0c\u5ffd\u7565START\u5e94\u7b54"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 346
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->state:Ljava/lang/String;

    const-string v1, "IDEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->waitingReboot:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->transferring_firmware:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    .line 355
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPGRADE,START,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->session:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->fileSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->fileMd5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 356
    :cond_1
    const-string v0, "FINISHED"

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    const-string v0, "UpgradeStateEvent - \u56fa\u4ef6\u5347\u7ea7\u5b8c\u6210"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 358
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onH5UpgradeSuccess(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 359
    :cond_2
    const-string v0, "GOING"

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 360
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->waitingReboot:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 364
    :cond_3
    iget-wide v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->fileSize:J

    iget v2, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->totalSize:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->session:Ljava/lang/String;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->session:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 366
    iget v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->currentIndex:I

    iput v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->currentFileIndex:I

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->transferring_firmware:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->currentFileIndex:I

    mul-int/lit8 v1, v1, 0x64

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->fileSize:J

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    .line 368
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->startWriteTimer(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 369
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->writeFwm(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 372
    :cond_4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "UPGRADE,CANCLE"

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 544
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->state:Ljava/lang/String;

    const-string v1, "FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    const-string v0, "UpgradeWriteEvent - \u56fa\u4ef6\u5347\u7ea7\u5b8c\u6210"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 546
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onH5UpgradeSuccess(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 547
    :cond_0
    const-string v0, "GOING"

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    iget-boolean v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->waitingReboot:Z

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 551
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->lastAnswerTime:J

    .line 552
    iget v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->currentIndex:I

    iput v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->currentFileIndex:I

    .line 553
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 554
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->writeFwm(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 555
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/qianhe/yct/R$string;->transferring_firmware:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->currentFileIndex:I

    mul-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->fileSize:J

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void

    .line 556
    :cond_2
    const-string v0, "APPLYING"

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 557
    const-string v0, "===============\u4f20\u8f93\u5b8c\u6210\uff0c\u7b49\u5f85\u91cd\u542f==================="

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 558
    iput-boolean v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->waitingReboot:Z

    .line 559
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 560
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->cancelUpgradeingDialog()V

    .line 561
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->stopWriteTimer()V

    const-wide/16 v0, 0x0

    .line 562
    iput-wide v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->lastAnswerTime:J

    .line 563
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->startStateTimer(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 565
    sget p1, Lcom/qianhe/yct/R$string;->verifying_data:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showLoadingDialog(Ljava/lang/String;)V

    return-void

    .line 566
    :cond_3
    const-string v0, "ERROR"

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->result:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 567
    iget-boolean p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->waitingReboot:Z

    if-eqz p1, :cond_4

    .line 569
    const-string p1, "UpgradeWriteEvent - \u7b49\u5f85\u91cd\u542f\u9636\u6bb5\u5ffd\u7565ERROR"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 572
    :cond_4
    const-string p1, "===============\u4f20\u8f93\u5f02\u5e38==================="

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 573
    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->cancelUpgrade(Ljava/lang/String;)V

    .line 574
    sget p1, Lcom/qianhe/yct/R$string;->firmware_transmission_exception:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 580
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 583
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, p1, :cond_1

    .line 584
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 585
    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->cancelUpgrade(Ljava/lang/String;)V

    .line 586
    sget p1, Lcom/qianhe/yct/R$string;->bluetooth_disconnection_click_reconnect:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/FirmwareFileInfoResponse;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->executorServiceWrite:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->executorServiceWrite:Ljava/util/concurrent/ExecutorService;

    .line 211
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/FileUtil;->mkFmwDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 214
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qianhe/yct/event/FirmwareFileInfoResponse;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fmw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->mFilePath:Ljava/lang/String;

    .line 215
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/qianhe/yct/event/FirmwareFileInfoResponse;->file_size:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    goto :goto_0

    .line 259
    :cond_3
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->startGnssUpgrade()V

    return-void

    .line 262
    :cond_4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object p1, p1, Lcom/qianhe/yct/event/FirmwareFileInfoResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "UPGRADE,STATE"

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$7;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$7;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    :goto_0
    const/4 v1, 0x0

    .line 216
    invoke-static {v0, v1}, Lcom/qianhe/baselib/utils/LogToFile;->deleteFolderFile(Ljava/lang/String;Z)Z

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->download_firmware:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    .line 218
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/qianhe/yct/event/FirmwareFileInfoResponse;->download_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->mFilePath:Ljava/lang/String;

    new-instance v3, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    invoke-direct {v3, p0, p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Lcom/qianhe/yct/event/FirmwareFileInfoResponse;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/utils/NetworkDataLoader;->downloadFirmwareWithProgress(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 662
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 663
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 665
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 669
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f666666    # 0.9f

    .line 670
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const v1, 0x3e99999a    # 0.3f

    .line 671
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 672
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 675
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$14;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$14;-><init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->listener:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;

    return-void
.end method

.method protected showUpgradeingDialog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 634
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    return-void
.end method

.method protected showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->upgradeingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz v0, :cond_2

    .line 640
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    iget-object p2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->upgradeingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/dialog/LoadingFragment;->refreshTip(Ljava/lang/String;)V

    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->upgradeingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "LoadingFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 644
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 645
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget p1, Lcom/qianhe/yct/R$string;->upgrading:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string/jumbo p1, "tag"

    const-string/jumbo v1, "upgrade"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->upgradeingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 648
    iget-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->upgradeingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/dialog/LoadingFragment;->setOnCloseListener(Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    :cond_2
    return-void
.end method

.method public sumBytesAsUint8([B)J
    .locals 6

    .line 484
    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method
