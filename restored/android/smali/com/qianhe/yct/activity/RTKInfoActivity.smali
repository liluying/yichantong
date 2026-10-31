.class public Lcom/qianhe/yct/activity/RTKInfoActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "RTKInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/activity/RTKInfoActivity$LogUploadTask;
    }
.end annotation


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

.field private deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field private featureCode:Ljava/lang/String;

.field private hasExpiredate:Z

.field private hasRtkInfo:Z

.field private isClickQuery:Z

.field private volatile logUploadFinished:Z

.field private volatile logUploadLoadingDismissed:Z

.field private logUploadSession:I

.field private scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private upgradeInfo:Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;


# direct methods
.method public static synthetic $r8$lambda$4CApnk9AUIQoHI0Y3-MGei66w7s(Lcom/qianhe/yct/activity/RTKInfoActivity;II)V
    .locals 1

    .line 399
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    iget v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadSession:I

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadFinished:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadLoadingDismissed:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/qianhe/yct/R$string;->log_compressing:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$73LRL1j3ejwsfcLLfxWmxgVbn-Y(Lcom/qianhe/yct/activity/RTKInfoActivity;II)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    new-instance v0, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda10;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;II)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AY5VVC5iCiRFkX0UZJmtAlRCzUI(Lcom/qianhe/yct/activity/RTKInfoActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->onLogUploadLoadingClosed(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FkZjIzjG-MMBPpZjfndQvUYsWrQ(Lcom/qianhe/yct/activity/RTKInfoActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    const-string/jumbo v0, "viewlog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 299
    const-string p1, "index"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 301
    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->getLogDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 302
    invoke-static {p2}, Lcom/qianhe/baselib/utils/FileUtil;->listFileName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-ltz p1, :cond_0

    .line 303
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qianhe/yct/activity/LogviewActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$O7hCgKFzRVDSH1KoUpnRiOumdzU(Lcom/qianhe/yct/activity/RTKInfoActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    const-string v0, "logupload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 291
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->uploadTodayLog()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$SNn2aid5C-oap1VIgiWmquQkVoA(Lcom/qianhe/yct/activity/RTKInfoActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    const-string v0, "loglist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 311
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 313
    invoke-static {p0}, Lcom/qianhe/baselib/utils/FileUtil;->getLogDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-static {p1}, Lcom/qianhe/baselib/utils/FileUtil;->listFileName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 315
    new-instance p2, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {p2}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 316
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseListDialogFragment"

    invoke-virtual {p2, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 317
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 318
    sget v1, Lcom/qianhe/yct/R$string;->select_file:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string p0, "list"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 320
    const-string p0, "requestKey"

    const-string/jumbo p1, "viewlog"

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$ZMprjKp1ihBelTSPn-5_B1vCnj4(Lcom/qianhe/yct/activity/RTKInfoActivity;II)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    new-instance v0, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda9;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;II)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZzTxi3rRy6TDKhJJB8U1SO84kjk(Lcom/qianhe/yct/activity/RTKInfoActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    const-string v0, "close"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 282
    const-string v0, "rtkregister"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 285
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object p0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v0, "GET,EXPIREDATE"

    invoke-direct {p2, p0, v0}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$eME9Vly5lYd3IGEtRyem0bfN0qI(Lcom/qianhe/yct/activity/RTKInfoActivity;II)V
    .locals 1

    .line 406
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    iget v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadSession:I

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadFinished:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadLoadingDismissed:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/qianhe/yct/R$string;->log_uploading:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$rivTMB1nHLWbBe6JPb0l3R7zRJQ(Lcom/qianhe/yct/activity/RTKInfoActivity;ILcom/qianhe/yct/activity/RTKInfoActivity$LogUploadTask;)V
    .locals 0

    .line 427
    iget p0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadSession:I

    if-eq p1, p0, :cond_0

    return-void

    .line 428
    :cond_0
    invoke-interface {p2, p1}, Lcom/qianhe/yct/activity/RTKInfoActivity$LogUploadTask;->run(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s_wEuPoPuGEiS0_fArHGymQCqkA(Lcom/qianhe/yct/activity/RTKInfoActivity;I)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.qianhe.xfix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "XFIX"

    goto :goto_0

    :cond_0
    const-string v2, "YCT"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u65e5\u5fd7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->createUploadLogCallback(I)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    move-result-object v3

    .line 392
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->createUploadProgressListener(I)Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

    move-result-object v4

    .line 393
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->createCompressProgressListener(I)Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;

    move-result-object v5

    move-object v1, p0

    .line 388
    invoke-virtual/range {v0 .. v5}, Lcom/qianhe/yct/utils/NetworkUserLoader;->uploadTodayLog(Landroid/content/Context;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/RTKInfoActivity;)Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeviceType(Lcom/qianhe/yct/activity/RTKInfoActivity;)Lcom/qianhe/baselib/enums/DeviceType;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfeatureCode(Lcom/qianhe/yct/activity/RTKInfoActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->featureCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethasExpiredate(Lcom/qianhe/yct/activity/RTKInfoActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->hasExpiredate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethasRtkInfo(Lcom/qianhe/yct/activity/RTKInfoActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->hasRtkInfo:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlogUploadLoadingDismissed(Lcom/qianhe/yct/activity/RTKInfoActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadLoadingDismissed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlogUploadSession(Lcom/qianhe/yct/activity/RTKInfoActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadSession:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputlogUploadFinished(Lcom/qianhe/yct/activity/RTKInfoActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadFinished:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckFmwUpgrade(Lcom/qianhe/yct/activity/RTKInfoActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->checkFmwUpgrade()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mensureDeviceConnected(Lcom/qianhe/yct/activity/RTKInfoActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->ensureDeviceConnected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitTimer(Lcom/qianhe/yct/activity/RTKInfoActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->initTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTimer(Lcom/qianhe/yct/activity/RTKInfoActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->stopTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$muploadTodayLog(Lcom/qianhe/yct/activity/RTKInfoActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->uploadTodayLog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 72
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->featureCode:Ljava/lang/String;

    return-void
.end method

.method private checkFmwUpgrade()V
    .locals 4

    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->isClickQuery:Z

    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->upgradeInfo:Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;

    .line 381
    sget v0, Lcom/qianhe/yct/R$string;->detecting_version:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 382
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->initTimer()V

    .line 384
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,FEATURES"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private createCompressProgressListener(I)Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;
    .locals 1

    .line 398
    new-instance v0, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;I)V

    return-object v0
.end method

.method private createUploadLogCallback(I)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;
    .locals 1

    .line 437
    new-instance v0, Lcom/qianhe/yct/activity/RTKInfoActivity$15;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/activity/RTKInfoActivity$15;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;I)V

    return-object v0
.end method

.method private createUploadProgressListener(I)Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;
    .locals 1

    .line 405
    new-instance v0, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda8;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;I)V

    return-object v0
.end method

.method private ensureDeviceConnected()Z
    .locals 1

    .line 356
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->isTargetDeviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->showConnectDeviceTip()V

    const/4 v0, 0x0

    return v0
.end method

.method private initTimer()V
    .locals 8

    .line 541
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    const/4 v0, 0x0

    .line 542
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->hasRtkInfo:Z

    .line 543
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->hasExpiredate:Z

    .line 544
    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/qianhe/yct/activity/RTKInfoActivity$18;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$18;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    const-wide/16 v5, 0x1f4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private isTargetDeviceConnected()Z
    .locals 2

    .line 340
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    invoke-static {p0}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0, v1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private onLogUploadLoadingClosed(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 413
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadFinished:Z

    if-nez p1, :cond_0

    .line 414
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadLoadingDismissed:Z

    .line 415
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadFinished:Z

    .line 416
    iget p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadSession:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadSession:I

    .line 417
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->cancelLogUpload()V

    :cond_0
    return-void
.end method

.method private showConnectDeviceTip()V
    .locals 4

    .line 362
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/qianhe/yct/R$string;->base:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget v0, Lcom/qianhe/yct/R$string;->level:I

    goto :goto_0

    .line 363
    :goto_1
    sget v1, Lcom/qianhe/yct/R$string;->please_connect_device:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 364
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->go_to_connect:I

    .line 365
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/activity/RTKInfoActivity$14;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$14;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    .line 363
    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private startUploadLog(Lcom/qianhe/yct/activity/RTKInfoActivity$LogUploadTask;Ljava/lang/String;)V
    .locals 2

    .line 422
    iget v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadSession:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadSession:I

    const/4 v1, 0x0

    .line 423
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadFinished:Z

    .line 424
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->logUploadLoadingDismissed:Z

    .line 425
    new-instance v1, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {p0, p2, v1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    .line 426
    new-instance p2, Ljava/lang/Thread;

    new-instance v1, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0, p1}, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;ILcom/qianhe/yct/activity/RTKInfoActivity$LogUploadTask;)V

    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 429
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private stopTimer()V
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    const/4 v0, 0x0

    .line 712
    iput-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private updateDeviceInfoPlaceholders()V
    .locals 2

    .line 346
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->isTargetDeviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/qianhe/yct/R$string;->loading:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/qianhe/yct/R$string;->disconnected_device:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->tvDeviceNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->tvHardwareVersion:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->tvFirmwareVersion:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->tvGnssBoardVersion:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->tvExpireDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private uploadTodayLog()V
    .locals 2

    .line 388
    new-instance v0, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    sget v1, Lcom/qianhe/yct/R$string;->log_compressing:I

    .line 394
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->startUploadLog(Lcom/qianhe/yct/activity/RTKInfoActivity$LogUploadTask;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 462
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/RTKInfoActivity$16;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$16;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    const-string v2, "clickaction"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 478
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/RTKInfoActivity$17;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$17;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    const-string v2, "sensorscanlist"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->base_station_info:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->leveling_device_info:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    .line 86
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result p1

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 91
    const-string v3, "deviceType"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 92
    iget-object v3, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->rltBucketSensor:Landroid/widget/RelativeLayout;

    sget-object v4, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->rltRegister:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/qianhe/yct/activity/RTKInfoActivity$1;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$1;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->rltFeatureCode:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/qianhe/yct/activity/RTKInfoActivity$2;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$2;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->lltFirmware:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/qianhe/yct/activity/RTKInfoActivity$3;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$3;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->lltBoard:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/qianhe/yct/activity/RTKInfoActivity$4;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$4;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->tvCopySn:Landroid/widget/TextView;

    new-instance v3, Lcom/qianhe/yct/activity/RTKInfoActivity$5;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$5;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->rltPoweroff:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/qianhe/yct/activity/RTKInfoActivity$6;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$6;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->rltRestartPositionBoard:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v4, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v3, v4, :cond_2

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->rltRestartPositionBoard:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/qianhe/yct/activity/RTKInfoActivity$7;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$7;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->rltResetRtk:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v3, v4, :cond_3

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/16 p1, 0x8

    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->rltResetRtk:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/qianhe/yct/activity/RTKInfoActivity$8;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$8;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->rltResetHost:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/qianhe/yct/activity/RTKInfoActivity$9;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$9;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->rltValidity:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v4, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->ivDoubt:Landroid/widget/ImageView;

    new-instance v0, Lcom/qianhe/yct/activity/RTKInfoActivity$10;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$10;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->rltUploadLog:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/qianhe/yct/activity/RTKInfoActivity$11;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$11;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->rltUploadLog:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/qianhe/yct/activity/RTKInfoActivity$12;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$12;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 269
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->rltBucketSensor:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/qianhe/yct/activity/RTKInfoActivity$13;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$13;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    const-string v1, "rtkregister"

    invoke-virtual {p1, v1, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 289
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    const-string v1, "logupload"

    invoke-virtual {p1, v1, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    const-string/jumbo v1, "viewlog"

    invoke-virtual {p1, v1, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 309
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    const-string v1, "loglist"

    invoke-virtual {p1, v1, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 326
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "GET,SERIAL"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 328
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "GET,FEATURE_CODE"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 330
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "GET,GNSS.INFO"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 331
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->initTimer()V

    .line 332
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->updateDeviceInfoPlaceholders()V

    .line 334
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->isTargetDeviceConnected()Z

    move-result p1

    if-nez p1, :cond_5

    .line 335
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->showConnectDeviceTip()V

    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 717
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 718
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 719
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->stopTimer()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/Expiredate;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 672
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->hasExpiredate:Z

    .line 673
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->tvExpireDate:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/Expiredate;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/FeaturesEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 562
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v0, "UPGRADE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 564
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "UPGRADE,INFO"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 567
    sget p1, Lcom/qianhe/yct/R$string;->host_not_support_upgradle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetFeatureCodeEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    .line 678
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetFeatureCodeEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 679
    :cond_0
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetFeatureCodeEvent;->code:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->featureCode:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GnssInfo;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->tvGnssBoardVersion:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GnssInfo;->gnssVersion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/HostPoweroffEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 533
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/HostPoweroffEvent;->line:Ljava/lang/String;

    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 534
    sget p1, Lcom/qianhe/yct/R$string;->host_has_shut_down:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 536
    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->poweroff_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/RtkInfo;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 664
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->hasRtkInfo:Z

    .line 665
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->tvHardwareVersion:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/RtkInfo;->hardwareVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/RtkInfo;->hardwareVersion:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget v1, Lcom/qianhe/yct/R$string;->loading:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->tvFirmwareVersion:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/RtkInfo;->firmwareVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/RtkInfo;->firmwareVersion:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget p1, Lcom/qianhe/yct/R$string;->loading:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/Serial;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->tvDeviceNumber:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/Serial;->sn:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SetFeatureCodeResult;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 684
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetFeatureCodeResult;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetFeatureCodeResult;->result:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetFeatureCodeResult;->code:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 686
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->featureCode:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->upgradeInfo:Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;

    if-nez v0, :cond_1

    .line 575
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->upgradeInfo:Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;

    .line 576
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;->pns:Ljava/lang/String;

    .line 577
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;->vsersions:Ljava/lang/String;

    .line 578
    iget-object v2, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->lltFirmware:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v3, "deviceSn"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 580
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x7

    if-le v3, v5, :cond_0

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GNSS-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/qianhe/baselib/Constant;->GNSS_FWM_VERSION:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 586
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v2

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/UpgradeInfoEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v3, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->binding:Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->lltFirmware:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getFirmwareList(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 694
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V

    .line 695
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v2, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 697
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->updateDeviceInfoPlaceholders()V

    .line 698
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "GET,SERIAL"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 699
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "GET,GNSS.INFO"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 700
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->initTimer()V

    .line 702
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "GET,FEATURE_CODE"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 703
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECT_FAILED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 704
    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 705
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/RTKInfoActivity;->updateDeviceInfoPlaceholders()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/FirmwareResponse;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 593
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 594
    iget v0, p1, Lcom/qianhe/yct/event/FirmwareResponse;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_8

    .line 595
    iget-object v0, p1, Lcom/qianhe/yct/event/FirmwareResponse;->fmw_list:Ljava/util/List;

    const-string v3, ""

    if-eqz v0, :cond_7

    .line 597
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/event/FirmwareResponse$Fmw;

    .line 598
    iget-object v5, v4, Lcom/qianhe/yct/event/FirmwareResponse$Fmw;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 599
    iget-object v0, v4, Lcom/qianhe/yct/event/FirmwareResponse$Fmw;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;

    .line 601
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v4

    iget-object v5, v0, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->model:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 602
    const-string v4, "ignoreFmwVersion_gnss"

    goto :goto_0

    .line 604
    :cond_1
    const-string v4, "ignoreFmwVersion"

    .line 606
    :goto_0
    iget-object v5, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v7}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 607
    iget-object v6, v0, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->isClickQuery:Z

    if-eqz v5, :cond_6

    .line 608
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 609
    new-instance v2, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-direct {v2}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;-><init>()V

    .line 610
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-string v5, "UpgradeFmwDialogFragment"

    invoke-virtual {v2, v4, v5}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 611
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 612
    const-string v5, "id"

    iget v6, v0, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->id:I

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 613
    const-string/jumbo v5, "upgradeLog"

    iget-object v6, v0, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->update_log:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v5

    iget-object v6, v0, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->model:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v6, "versionOld"

    if-eqz v5, :cond_3

    .line 615
    iget-object v5, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v7, Lcom/qianhe/baselib/Constant;->GNSS_FWM_VERSION:Ljava/lang/String;

    invoke-interface {v5, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 616
    :cond_3
    iget-object v3, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v5, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v3, v5, :cond_4

    .line 617
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qianhe/yct/application/YCTApplication;->getRtkInfo()Lcom/qianhe/rtkclientlib/event/RtkInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 618
    iget-object v3, v3, Lcom/qianhe/rtkclientlib/event/RtkInfo;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 619
    :cond_4
    sget-object v5, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v3, v5, :cond_5

    .line 620
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qianhe/yct/application/YCTApplication;->getBaseInfo()Lcom/qianhe/rtkclientlib/event/RtkInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 621
    iget-object v3, v3, Lcom/qianhe/rtkclientlib/event/RtkInfo;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_5
    :goto_1
    const-string v3, "deviceType"

    iget-object p1, p1, Lcom/qianhe/yct/event/FirmwareResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v4, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 624
    const-string/jumbo p1, "versionNew"

    iget-object v3, v0, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->version:Ljava/lang/String;

    invoke-virtual {v4, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string p1, "fileSize"

    iget-wide v5, v0, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->file_size:J

    invoke-virtual {v4, p1, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 626
    const-string p1, "md5"

    iget-object v3, v0, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->file_md5:Ljava/lang/String;

    invoke-virtual {v4, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string p1, "model"

    iget-object v0, v0, Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;->model:Ljava/lang/String;

    invoke-virtual {v4, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string/jumbo p1, "totalStep"

    const/4 v0, 0x1

    invoke-virtual {v4, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 629
    const-string p1, "currentStep"

    invoke-virtual {v4, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 630
    invoke-virtual {v2, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 631
    new-instance p1, Lcom/qianhe/yct/activity/RTKInfoActivity$19;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$19;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    invoke-virtual {v2, p1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->setOnActionListener(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;)V

    goto :goto_2

    .line 649
    :cond_6
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->isClickQuery:Z

    if-eqz p1, :cond_9

    sget p1, Lcom/qianhe/yct/R$string;->firmware_is_latest_version:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    goto :goto_2

    .line 653
    :cond_7
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->isClickQuery:Z

    if-eqz v0, :cond_9

    iget-object p1, p1, Lcom/qianhe/yct/event/FirmwareResponse;->err_msg:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    goto :goto_2

    .line 656
    :cond_8
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->isClickQuery:Z

    if-eqz v0, :cond_9

    iget-object p1, p1, Lcom/qianhe/yct/event/FirmwareResponse;->err_msg:Ljava/lang/String;

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 658
    :cond_9
    :goto_2
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity;->isClickQuery:Z

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    return-void
.end method
