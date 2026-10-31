.class public Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "FmwForcedUpgradeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$OnCloseListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogFmwForcedUpgradeBinding;

.field private currentIndex:I

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

.field private listener:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$OnCloseListener;

.field private mFilePath:Ljava/lang/String;

.field private model:Ljava/lang/String;

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

.field private upgradeingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

.field private versionNew:Ljava/lang/String;

.field private yctDevice:Lcom/qh/yctdevice/YctDevice;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentIndex(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->currentIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentStep(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->currentStep:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfileSize(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->fileSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetfutureWrite(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)Ljava/util/concurrent/Future;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->futureWrite:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastAnswerTime(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->lastAnswerTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$OnCloseListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->listener:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$OnCloseListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilePath(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmodel(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->model:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsession(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->session:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettotalStep(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->totalStep:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetversionNew(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->versionNew:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyctDevice(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)Lcom/qh/yctdevice/YctDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputfutureWrite(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;Ljava/util/concurrent/Future;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->futureWrite:Ljava/util/concurrent/Future;

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartGnssUpgrade(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->startGnssUpgrade()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteFwm(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->writeFwm(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->session:Ljava/lang/String;

    const/4 v1, 0x0

    .line 66
    iput v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->currentIndex:I

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->executorServiceWrite:Ljava/util/concurrent/ExecutorService;

    .line 69
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 70
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->executorStateTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    iput-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->model:Ljava/lang/String;

    .line 386
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    .line 403
    new-instance v0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$7;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$7;-><init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private cancelUpgrade(Ljava/lang/String;)V
    .locals 1

    .line 390
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->cancelDownload()V

    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showToastDialog(Ljava/lang/String;)V

    .line 392
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 393
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->model:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 394
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    invoke-virtual {p1}, Lcom/qh/yctdevice/YctDevice;->stopFmwUpdate()V

    return-void

    .line 396
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 397
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->stopWriteFmw()V

    .line 398
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->stopWriteTimer()V

    .line 399
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->stopStateTimer()V

    return-void
.end method

.method private startGnssUpgrade()V
    .locals 4

    .line 210
    sget v0, Lcom/qianhe/yct/R$string;->transferring_firmware:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->refreshTip(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string/jumbo v1, "startGnssUpgrade"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->model:Ljava/lang/String;

    const-string v2, "M10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    iget v1, v1, Lcom/qh/yctdevice/YctDevice;->FMW_TYPE_BEIYUN:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->model:Ljava/lang/String;

    const-string v2, "980"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    iget v1, v1, Lcom/qh/yctdevice/YctDevice;->FMW_TYPE_UNICORE:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    iget v1, v1, Lcom/qh/yctdevice/YctDevice;->FMW_TYPE_DEVICE:I

    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->mFilePath:Ljava/lang/String;

    new-instance v3, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$4;-><init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->startFmwUpdate(ILjava/lang/String;Lcom/qh/yctdevice/YctDevice$FmwUpdateListener;)Z

    :cond_3
    return-void
.end method

.method private startStateTimer(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 8

    .line 486
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->futureStateTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    .line 487
    const-string/jumbo v0, "\u5f00\u542f\u5b9a\u65f6\u67e5\u8be2\u5347\u7ea7\u72b6\u6001"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->executorStateTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->executorStateTimer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$9;

    invoke-direct {v2, p0, p1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$9;-><init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;Lcom/qianhe/baselib/enums/DeviceType;)V

    const-wide/16 v5, 0x7d0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->futureStateTimer:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method private startWriteTimer(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 8

    .line 306
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->stopStateTimer()V

    .line 308
    const-string/jumbo v0, "\u5f00\u542f\u5b9a\u65f6\u68c0\u6d4b\u5199\u5165\u5e94\u7b54"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->lastAnswerTime:J

    .line 310
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$5;-><init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;Lcom/qianhe/baselib/enums/DeviceType;)V

    const-wide/16 v5, 0x1388

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method private stopStateTimer()V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->futureStateTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 500
    const-string/jumbo v0, "\u53d6\u6d88\u5b9a\u65f6\u67e5\u8be2\u5347\u7ea7\u72b6\u6001\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->futureStateTimer:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 502
    iput-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->futureStateTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 503
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->executorStateTimer:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method private stopWriteFmw()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 558
    const-string/jumbo v0, "\u53d6\u6d88\u5199\u5165\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->futureWrite:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 560
    iput-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->futureWrite:Ljava/util/concurrent/Future;

    .line 561
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->executorServiceWrite:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method

.method private stopWriteTimer()V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 548
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 549
    const-string/jumbo v0, "\u53d6\u6d88\u5b9a\u65f6\u68c0\u6d4b\u5199\u5165\u5e94\u7b54\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 551
    iput-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 552
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method private writeFwm(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->executorServiceWrite:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->executorServiceWrite:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$6;-><init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->futureWrite:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogFmwForcedUpgradeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogFmwForcedUpgradeBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFmwForcedUpgradeBinding;

    .line 100
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFmwForcedUpgradeBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogFmwForcedUpgradeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 104
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 105
    new-instance v1, Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-direct {v1}, Lcom/qianhe/yct/dialog/LoadingFragment;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->upgradeingFragment:Lcom/qianhe/yct/dialog/LoadingFragment;

    .line 107
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 110
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->id:I

    .line 111
    const-string/jumbo v2, "upgradeLog"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    const-string/jumbo v2, "versionOld"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    const-string v2, "deviceType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 114
    const-string/jumbo v2, "versionNew"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->versionNew:Ljava/lang/String;

    .line 115
    const-string v2, "fileSize"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->fileSize:J

    .line 116
    const-string v2, "md5"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->fileMd5:Ljava/lang/String;

    .line 117
    const-string v2, "model"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->model:Ljava/lang/String;

    .line 118
    const-string/jumbo v2, "totalStep"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->totalStep:I

    .line 119
    const-string v2, "currentStep"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->currentStep:I

    .line 120
    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v1, v2, :cond_1

    .line 121
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceBase()Lcom/qh/yctdevice/YctDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    .line 127
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->fileMd5:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->fileMd5:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->session:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FmwForcedUpgradeDialogFragment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 134
    :cond_2
    :goto_1
    new-instance v0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 145
    const-string/jumbo v0, "\u83b7\u53d6\u56fa\u4ef6\u5730\u5740..."

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->refreshTip(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v0

    iget v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->id:I

    iget-object v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getFirmwareDownloadUrl(ILcom/qianhe/baselib/enums/DeviceType;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 567
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->onDestroyView()V

    .line 568
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->stopWriteFmw()V

    .line 569
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->stopWriteTimer()V

    .line 570
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->stopStateTimer()V

    .line 571
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 572
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 573
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    invoke-virtual {v0}, Lcom/qh/yctdevice/YctDevice;->stopFmwUpdate()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 542
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 543
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->listener:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$OnCloseListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->listener:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$OnCloseListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$OnCloseListener;->onClose(I)V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/UpgradeCancelEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 481
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeCancelEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPGRADE,START,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->session:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->fileSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->fileMd5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/UpgradeStartEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 328
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStartEvent;->line:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStartEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->startWriteTimer(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 330
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStartEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->writeFwm(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 332
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 333
    sget p1, Lcom/qianhe/yct/R$string;->upgrade_failed:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 277
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->state:Ljava/lang/String;

    const-string v1, "IDEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
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

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->refreshTip(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPGRADE,START,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->session:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->fileSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->fileMd5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 281
    :cond_0
    const-string v0, "FINISHED"

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "UPGRADE,CANCLE"

    if-eqz v0, :cond_2

    .line 282
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->stopWriteTimer()V

    .line 283
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->stopStateTimer()V

    .line 284
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->cancelLoadingDialog()V

    const-wide/16 v2, 0x0

    .line 285
    iput-wide v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->lastAnswerTime:J

    .line 286
    iget v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->currentStep:I

    iget v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->totalStep:I

    if-lt v0, v2, :cond_1

    .line 287
    sget v0, Lcom/qianhe/yct/R$string;->firmware_upgrade_completed:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 288
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v2, p1, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 290
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    .line 291
    :cond_2
    const-string v0, "GOING"

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->state:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 292
    iget-wide v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->fileSize:J

    iget v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->totalSize:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->session:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->session:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    iget v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->currentIndex:I

    iput v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->currentIndex:I

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->transferring_firmware:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->currentIndex:I

    mul-int/lit8 v1, v1, 0x64

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->fileSize:J

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->refreshTip(Ljava/lang/String;)V

    .line 296
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->startWriteTimer(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 297
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->writeFwm(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 300
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v2, p1, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 417
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->state:Ljava/lang/String;

    const-string v1, "FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    .line 418
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 419
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->stopWriteTimer()V

    .line 420
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->stopStateTimer()V

    .line 421
    iput-wide v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->lastAnswerTime:J

    .line 422
    iget p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->currentStep:I

    iget v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->totalStep:I

    if-lt p1, v0, :cond_0

    .line 423
    sget p1, Lcom/qianhe/yct/R$string;->firmware_upgrade_completed:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 424
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v1, "UPGRADE,CANCLE"

    invoke-direct {v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 426
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    .line 427
    :cond_1
    const-string v0, "GOING"

    iget-object v4, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->state:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->lastAnswerTime:J

    .line 429
    iget v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->currentIndex:I

    iput v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->currentIndex:I

    .line 430
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 431
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->writeFwm(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 432
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/qianhe/yct/R$string;->transferring_firmware:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->currentIndex:I

    mul-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->fileSize:J

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->refreshTip(Ljava/lang/String;)V

    return-void

    .line 433
    :cond_2
    const-string v0, "APPLYING"

    iget-object v4, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->state:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 434
    const-string v0, "===============\u4f20\u8f93\u5b8c\u6210\uff0c\u7b49\u5f85\u91cd\u542f==================="

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 436
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->stopWriteTimer()V

    .line 437
    iput-wide v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->lastAnswerTime:J

    .line 438
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->startStateTimer(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 440
    sget p1, Lcom/qianhe/yct/R$string;->verifying_data:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->refreshTip(Ljava/lang/String;)V

    return-void

    .line 441
    :cond_3
    const-string v0, "ERROR"

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->result:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 442
    const-string p1, "===============\u4f20\u8f93\u5f02\u5e38==================="

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 443
    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->cancelUpgrade(Ljava/lang/String;)V

    .line 444
    sget p1, Lcom/qianhe/yct/R$string;->firmware_transmission_exception:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_4
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 450
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 452
    sget p1, Lcom/qianhe/yct/R$string;->obtain_firmware_address:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->refreshTip(Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object p1

    iget v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->id:I

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getFirmwareDownloadUrl(ILcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 456
    :cond_0
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 457
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, p1, :cond_1

    .line 458
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 459
    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->cancelUpgrade(Ljava/lang/String;)V

    .line 460
    sget p1, Lcom/qianhe/yct/R$string;->bluetooth_disconnection_click_reconnect:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$8;-><init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/FirmwareFileInfoResponse;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->executorServiceWrite:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->executorServiceWrite:Ljava/util/concurrent/ExecutorService;

    .line 156
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/FileUtil;->mkFmwDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 159
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

    iput-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->mFilePath:Ljava/lang/String;

    .line 160
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/qianhe/yct/event/FirmwareFileInfoResponse;->file_size:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    goto :goto_0

    .line 194
    :cond_3
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->startGnssUpgrade()V

    return-void

    .line 197
    :cond_4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object p1, p1, Lcom/qianhe/yct/event/FirmwareFileInfoResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "UPGRADE,STATE"

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    :goto_0
    const/4 v1, 0x0

    .line 161
    invoke-static {v0, v1}, Lcom/qianhe/baselib/utils/LogToFile;->deleteFolderFile(Ljava/lang/String;Z)Z

    .line 162
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

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->refreshTip(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/qianhe/yct/event/FirmwareFileInfoResponse;->download_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->mFilePath:Ljava/lang/String;

    new-instance v3, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;

    invoke-direct {v3, p0, p1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;Lcom/qianhe/yct/event/FirmwareFileInfoResponse;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/utils/NetworkDataLoader;->downloadFirmwareWithProgress(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkDataLoader$ProgressListener;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 514
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 515
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 522
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const v1, 0x3e99999a    # 0.3f

    .line 523
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 524
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 527
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$10;-><init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    return-void
.end method

.method public refreshTip(Ljava/lang/String;)V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogFmwForcedUpgradeBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogFmwForcedUpgradeBinding;->tvTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnCloseListener(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$OnCloseListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->listener:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$OnCloseListener;

    return-void
.end method

.method public sumBytesAsUint8([B)J
    .locals 6

    .line 378
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
