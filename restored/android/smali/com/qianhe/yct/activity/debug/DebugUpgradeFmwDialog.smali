.class public Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "DebugUpgradeFmwDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$OnCloseListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogDebugUpgradeBinding;

.field private count:I

.field private currentIndex:I

.field private currentStep:I

.field private deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field private final executorServiceWrite:Ljava/util/concurrent/ExecutorService;

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

.field private lastAnswerTime:J

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

.field private volatile upgradeFinished:Z

.field private volatile waitingReboot:Z

.field private yctDevice:Lcom/qh/yctdevice/YctDevice;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Lcom/qianhe/yct/databinding/DialogDebugUpgradeBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->binding:Lcom/qianhe/yct/databinding/DialogDebugUpgradeBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcount(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->count:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentIndex(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->currentIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdeviceType(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Lcom/qianhe/baselib/enums/DeviceType;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfileSize(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->fileSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetfutureWrite(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Ljava/util/concurrent/Future;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureWrite:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastAnswerTime(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->lastAnswerTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$OnCloseListener;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilePath(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmodel(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->model:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsession(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->session:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyctDevice(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)Lcom/qh/yctdevice/YctDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcount(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->count:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfutureWrite(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;Ljava/util/concurrent/Future;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureWrite:Ljava/util/concurrent/Future;

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteFwm(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->writeFwm(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->session:Ljava/lang/String;

    const/4 v1, 0x0

    .line 68
    iput v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->currentIndex:I

    .line 69
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->executorServiceWrite:Ljava/util/concurrent/ExecutorService;

    .line 70
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 71
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->executorStateTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 77
    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->model:Ljava/lang/String;

    .line 81
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->waitingReboot:Z

    .line 83
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->upgradeFinished:Z

    .line 358
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    .line 374
    new-instance v0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$6;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$6;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private cancelUpgrade(Ljava/lang/String;)V
    .locals 1

    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showToastDialog(Ljava/lang/String;)V

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 364
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->model:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 365
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    invoke-virtual {p1}, Lcom/qh/yctdevice/YctDevice;->stopFmwUpdate()V

    return-void

    .line 367
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 368
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->stopWriteFmw()V

    .line 369
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->stopWriteTimer()V

    .line 370
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->stopStateTimer()V

    return-void
.end method

.method private onH5UpgradeSuccess(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 3

    .line 253
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->upgradeFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->upgradeFinished:Z

    const/4 v1, 0x0

    .line 257
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->waitingReboot:Z

    .line 258
    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 259
    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureWrite:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 260
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 261
    iput-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureWrite:Ljava/util/concurrent/Future;

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->stopWriteTimer()V

    .line 264
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->stopStateTimer()V

    .line 265
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->cancelLoadingDialog()V

    const-wide/16 v0, 0x0

    .line 266
    iput-wide v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->lastAnswerTime:J

    .line 267
    sget v0, Lcom/qianhe/yct/R$string;->upgrade_success:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 268
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    const-string v2, "UPGRADE,CANCLE"

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private startGnssUpgrade()V
    .locals 4

    .line 157
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string/jumbo v1, "startGnssUpgrade"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 158
    sget v0, Lcom/qianhe/yct/R$string;->transferring_firmware:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->refreshTip(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->model:Ljava/lang/String;

    const-string v2, "M10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    iget v1, v1, Lcom/qh/yctdevice/YctDevice;->FMW_TYPE_BEIYUN:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->model:Ljava/lang/String;

    const-string v2, "980"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    iget v1, v1, Lcom/qh/yctdevice/YctDevice;->FMW_TYPE_UNICORE:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    iget v1, v1, Lcom/qh/yctdevice/YctDevice;->FMW_TYPE_DEVICE:I

    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->mFilePath:Ljava/lang/String;

    new-instance v3, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$3;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->startFmwUpdate(ILjava/lang/String;Lcom/qh/yctdevice/YctDevice$FmwUpdateListener;)Z

    :cond_2
    return-void
.end method

.method private startStateTimer(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 8

    .line 480
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureStateTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_2

    .line 481
    const-string/jumbo v0, "\u5f00\u542f\u5b9a\u65f6\u67e5\u8be2\u5347\u7ea7\u72b6\u6001"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 482
    iput v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->count:I

    .line 483
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->executorStateTimer:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->executorStateTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->executorStateTimer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$9;

    invoke-direct {v2, p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$9;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;Lcom/qianhe/baselib/enums/DeviceType;)V

    const-wide/16 v5, 0x7d0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureStateTimer:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void
.end method

.method private startWriteTimer(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 8

    .line 273
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    .line 274
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->stopStateTimer()V

    .line 275
    const-string/jumbo v0, "\u5f00\u542f\u5b9a\u65f6\u68c0\u6d4b\u5199\u5165\u5e94\u7b54"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->lastAnswerTime:J

    .line 277
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$4;

    invoke-direct {v2, p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$4;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;Lcom/qianhe/baselib/enums/DeviceType;)V

    const-wide/16 v5, 0x1388

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method private stopStateTimer()V
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureStateTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 499
    const-string/jumbo v0, "\u53d6\u6d88\u5b9a\u65f6\u67e5\u8be2\u5347\u7ea7\u72b6\u6001\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureStateTimer:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 501
    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureStateTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 502
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->executorStateTimer:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method private stopWriteFmw()V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 557
    const-string/jumbo v0, "\u53d6\u6d88\u5199\u5165\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureWrite:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 559
    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureWrite:Ljava/util/concurrent/Future;

    .line 560
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->executorServiceWrite:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method

.method private stopWriteTimer()V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 547
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 548
    const-string/jumbo v0, "\u53d6\u6d88\u5b9a\u65f6\u68c0\u6d4b\u5199\u5165\u5e94\u7b54\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 550
    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureWriteTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 551
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->executorWriteTimer:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method private writeFwm(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->executorServiceWrite:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->executorServiceWrite:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$5;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$5;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;Lcom/qianhe/baselib/enums/DeviceType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->futureWrite:Ljava/util/concurrent/Future;

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

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogDebugUpgradeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogDebugUpgradeBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->binding:Lcom/qianhe/yct/databinding/DialogDebugUpgradeBinding;

    .line 102
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->binding:Lcom/qianhe/yct/databinding/DialogDebugUpgradeBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogDebugUpgradeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 106
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 107
    new-instance v1, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$1;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 116
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 119
    const-string v2, "deviceType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 120
    const-string v2, "fmwPath"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->mFilePath:Ljava/lang/String;

    .line 121
    const-string v2, "md5"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->fileMd5:Ljava/lang/String;

    .line 122
    const-string v2, "fileSize"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->fileSize:J

    .line 123
    const-string v2, "model"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->model:Ljava/lang/String;

    .line 124
    const-string/jumbo v2, "totalStep"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->totalStep:I

    .line 125
    const-string v2, "currentStep"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->currentStep:I

    .line 126
    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v1, v2, :cond_1

    .line 127
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceBase()Lcom/qh/yctdevice/YctDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    .line 133
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->fileMd5:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->fileMd5:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->session:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DebugUpgradeFmwDialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 137
    :cond_2
    :goto_1
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->startGnssUpgrade()V

    goto :goto_2

    .line 141
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "UPGRADE,STATE"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 144
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->binding:Lcom/qianhe/yct/databinding/DialogDebugUpgradeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogDebugUpgradeBinding;->tvClose:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$2;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 566
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->onDestroyView()V

    .line 567
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->stopWriteFmw()V

    .line 568
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->stopWriteTimer()V

    .line 569
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->stopStateTimer()V

    .line 570
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 571
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 572
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    invoke-virtual {v0}, Lcom/qh/yctdevice/YctDevice;->stopFmwUpdate()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 541
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/UpgradeCancelEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 470
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->waitingReboot:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->upgradeFinished:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->session:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->fileSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->fileMd5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeCancelEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPGRADE,START,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->session:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->fileSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->fileMd5:Ljava/lang/String;

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

    .line 295
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->waitingReboot:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->upgradeFinished:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStartEvent;->line:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStartEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->startWriteTimer(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 302
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStartEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->writeFwm(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 304
    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->upgrade_failed:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 305
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    .line 297
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

    .line 220
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->state:Ljava/lang/String;

    const-string v1, "IDEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->waitingReboot:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 227
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

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->refreshTip(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPGRADE,START,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->session:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->fileSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->fileMd5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 230
    :cond_1
    const-string v0, "FINISHED"

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    const-string v0, "UpgradeStateEvent - \u56fa\u4ef6\u5347\u7ea7\u5b8c\u6210"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 232
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->onH5UpgradeSuccess(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 233
    :cond_2
    const-string v0, "GOING"

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->waitingReboot:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 238
    :cond_3
    iget-wide v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->fileSize:J

    iget v2, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->totalSize:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->session:Ljava/lang/String;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->session:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    iget v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->currentIndex:I

    iput v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->currentIndex:I

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->transferring_firmware:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->currentIndex:I

    mul-int/lit8 v1, v1, 0x64

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->fileSize:J

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->refreshTip(Ljava/lang/String;)V

    .line 242
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->startWriteTimer(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 243
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeStateEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->writeFwm(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 246
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

    .line 389
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->state:Ljava/lang/String;

    const-string v1, "FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const-string v0, "UpgradeWriteEvent - \u56fa\u4ef6\u5347\u7ea7\u5b8c\u6210"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 391
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->onH5UpgradeSuccess(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 392
    :cond_0
    const-string v0, "GOING"

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->waitingReboot:Z

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 396
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->lastAnswerTime:J

    .line 397
    iget v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->currentIndex:I

    iput v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->currentIndex:I

    .line 398
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 399
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->writeFwm(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/qianhe/yct/R$string;->transferring_firmware:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->currentIndex:I

    mul-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->fileSize:J

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->refreshTip(Ljava/lang/String;)V

    return-void

    .line 401
    :cond_2
    const-string v0, "APPLYING"

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    const-string v0, "===============\u4f20\u8f93\u5b8c\u6210\uff0c\u7b49\u5f85\u91cd\u542f==================="

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 403
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->waitingReboot:Z

    .line 404
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->binding:Lcom/qianhe/yct/databinding/DialogDebugUpgradeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogDebugUpgradeBinding;->tvClose:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 406
    invoke-direct {p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->stopWriteTimer()V

    const-wide/16 v0, 0x0

    .line 407
    iput-wide v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->lastAnswerTime:J

    .line 408
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->startStateTimer(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 410
    sget p1, Lcom/qianhe/yct/R$string;->verifying_data:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->refreshTip(Ljava/lang/String;)V

    return-void

    .line 411
    :cond_3
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->state:Ljava/lang/String;

    const-string v1, "IGNORE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 412
    const-string p1, "===============\u5199\u5165\u88ab\u5ffd\u7565-\u91cd\u65b0\u5199==================="

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 417
    :cond_4
    const-string v0, "ERROR"

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeWriteEvent;->result:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 418
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->waitingReboot:Z

    if-eqz p1, :cond_5

    .line 420
    const-string p1, "UpgradeWriteEvent - \u7b49\u5f85\u91cd\u542f\u9636\u6bb5\u5ffd\u7565ERROR"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 423
    :cond_5
    const-string p1, "===============\u4f20\u8f93\u5f02\u5e38==================="

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 424
    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->cancelUpgrade(Ljava/lang/String;)V

    .line 425
    sget p1, Lcom/qianhe/yct/R$string;->firmware_transmission_exception:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$7;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 441
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 444
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, p1, :cond_2

    .line 445
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->startWrite:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 446
    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->cancelUpgrade(Ljava/lang/String;)V

    .line 447
    sget p1, Lcom/qianhe/yct/R$string;->bluetooth_disconnection_click_reconnect:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$8;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 462
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->yctDevice:Lcom/qh/yctdevice/YctDevice;

    invoke-virtual {p1}, Lcom/qh/yctdevice/YctDevice;->stopFmwUpdate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 513
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 514
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    .line 521
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

    .line 522
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 523
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 526
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog$10;-><init>(Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    return-void
.end method

.method public refreshTip(Ljava/lang/String;)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugUpgradeFmwDialog;->binding:Lcom/qianhe/yct/databinding/DialogDebugUpgradeBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogDebugUpgradeBinding;->tvTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public sumBytesAsUint8([B)J
    .locals 6

    .line 350
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
