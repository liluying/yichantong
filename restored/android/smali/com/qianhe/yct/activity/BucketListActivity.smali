.class public Lcom/qianhe/yct/activity/BucketListActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "BucketListActivity.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/BucketListAdapter;

.field private binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

.field private databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private deviceCalibParams:Ljava/lang/String;

.field private deviceCalibParamsId:Ljava/lang/String;

.field private holdHostCalibAfterSwitchFail:Z

.field private idStrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private isChange:Z

.field private localList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShovelEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShovelEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mParamsType:I

.field private pendingConfigSuccessToast:Z

.field private pendingSwitchBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

.field private selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

.field private showError:Z

.field private switchRollbackDeviceCalibParams:Ljava/lang/String;

.field private switchRollbackDeviceCalibParamsId:Ljava/lang/String;

.field private switchRollbackExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private switchingBucket:Z


# direct methods
.method public static synthetic $r8$lambda$kGdn2m1Xrz3AegZQLD8pxFs3XAA(Lcom/qianhe/yct/activity/BucketListActivity;Landroid/view/View;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    .line 143
    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 144
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->adapter:Lcom/qianhe/yct/adapter/BucketListAdapter;

    iget-object p0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/qianhe/yct/adapter/BucketListAdapter;->selecteAll(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$w1hwAxrs4UUaL47xgPxb-QeQ2qM(Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 1

    .line 821
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/yct/adapter/BucketListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->adapter:Lcom/qianhe/yct/adapter/BucketListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/yct/databinding/ActivityBucketListBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/BucketListActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->idStrList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentExcavator(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestIns(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmList(Lcom/qianhe/yct/activity/BucketListActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectShovelEntity(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdatabaseManager(Lcom/qianhe/yct/activity/BucketListActivity;Lcom/qianhe/yct/db/DatabaseManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputidStrList(Lcom/qianhe/yct/activity/BucketListActivity;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->idStrList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectShovelEntity(Lcom/qianhe/yct/activity/BucketListActivity;Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputswitchingBucket(Lcom/qianhe/yct/activity/BucketListActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchingBucket:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misSupportBucket(Lcom/qianhe/yct/activity/BucketListActivity;Z)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BucketListActivity;->isSupportBucket(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monLocalSwitchSuccess(Lcom/qianhe/yct/activity/BucketListActivity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/BucketListActivity;->onLocalSwitchSuccess(Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenBucketEdit(Lcom/qianhe/yct/activity/BucketListActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/BucketListActivity;->openBucketEdit(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostSwitchFailed(Lcom/qianhe/yct/activity/BucketListActivity;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/BucketListActivity;->postSwitchFailed(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshCurrentBucketMarker(Lcom/qianhe/yct/activity/BucketListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->refreshCurrentBucketMarker()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/BucketListActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BucketListActivity;->showSelectAll(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSwitchConfigFailedDialog(Lcom/qianhe/yct/activity/BucketListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->showSwitchConfigFailedDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswicthBucket(Lcom/qianhe/yct/activity/BucketListActivity;Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BucketListActivity;->swicthBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSelectAllState(Lcom/qianhe/yct/activity/BucketListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->updateSelectAllState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mList:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->idStrList:Ljava/util/List;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->index:I

    .line 71
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 72
    new-instance v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParams:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackDeviceCalibParamsId:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackDeviceCalibParams:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/BucketListActivity;)D
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    return-wide v0
.end method

.method private applyDeviceCalibParams(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V
    .locals 1

    .line 467
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->holdHostCalibAfterSwitchFail:Z

    if-eqz v0, :cond_0

    .line 468
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BucketListActivity;->applyHostCalibParamsWithoutLocalPrefer(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V

    return-void

    .line 471
    :cond_0
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->applyGetCalibrateParam(Landroid/content/Context;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    .line 472
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParams:Ljava/lang/String;

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/activity/BucketListActivity;->bindCurrentExcavatorFromCalibParamsId(Ljava/lang/String;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V

    return-void
.end method

.method private applyHostCalibParamsWithoutLocalPrefer(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V
    .locals 2

    .line 480
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    .line 481
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParams:Ljava/lang/String;

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 485
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByCalibParamsId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 487
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p1, 0x0

    .line 488
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->reloadExcavatorFromDb(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-void

    .line 491
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/activity/BucketListActivity;->bindCurrentExcavatorFromCalibParamsId(Ljava/lang/String;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V

    .line 492
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 493
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 494
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParams:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 495
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParams:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method private bindCurrentExcavatorFromCalibParamsId(Ljava/lang/String;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V
    .locals 1

    .line 501
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->findExcavatorByDeviceCalibParamsId(Landroid/content/Context;Ljava/lang/String;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 503
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->reloadExcavatorFromDb(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-void

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez p1, :cond_1

    .line 506
    new-instance p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 508
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, p2, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 509
    iget-object p2, p2, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    iput-object p2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 510
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->resolveLocalExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-void
.end method

.method private clearSwitchRollback()V
    .locals 1

    const/4 v0, 0x0

    .line 424
    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 425
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackDeviceCalibParamsId:Ljava/lang/String;

    .line 426
    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackDeviceCalibParams:Ljava/lang/String;

    return-void
.end method

.method private continuePendingSwitch()V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->pendingSwitchBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-nez v0, :cond_0

    return-void

    .line 552
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->getActiveCalibParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->pendingSwitchBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 554
    iput-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->pendingSwitchBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    const/4 v1, 0x0

    .line 555
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchingBucket:Z

    .line 556
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 557
    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v1, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->endBucketSwitchFailed(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 558
    sget v0, Lcom/qianhe/yct/R$string;->cannot_configure:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->pendingSwitchBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 562
    iput-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->pendingSwitchBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 563
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 564
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/BucketListActivity;->startLocalBucketSwitch(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    return-void
.end method

.method private static copyExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 434
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 435
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0
.end method

.method private getActiveCalibParams()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParams:Ljava/lang/String;

    return-object v0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    return-object v0

    .line 463
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private isCurrentExcavatorMode1()Z
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->isMode1Excavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 635
    :cond_0
    iget v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mParamsType:I

    if-lez v0, :cond_1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    return v1

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->isMode1Format(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isSupportBucket(Z)Z
    .locals 3

    .line 228
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 229
    :cond_0
    iget v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mParamsType:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    if-eqz p1, :cond_1

    .line 230
    sget p1, Lcom/qianhe/yct/R$string;->not_support_replace_bucket:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method private onLocalSwitchSuccess(Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;)V
    .locals 10

    .line 339
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->rememberCalibBeforeSwitch()V

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/BucketListActivity;->syncExcavatorWithSwitchedBucket(Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    goto :goto_0

    .line 342
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 351
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v5

    .line 352
    iget-object v3, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v4, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v8, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordFineTuneSetParam(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 353
    iget-object p2, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const/4 v0, 0x1

    invoke-static {p2, p1, v1, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildBucketSwitchMeta(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;Z)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 354
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 355
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v2, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 356
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 355
    const-string v3, "#CALIBRATE,,SET_PARAM,OK*3D\r\n"

    invoke-static {v3, p2, v1, v5, v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordSetParamReply(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 357
    invoke-static {v0, p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->endSession(ZLcom/google/gson/JsonObject;)V

    .line 358
    iput-boolean v7, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchingBucket:Z

    .line 359
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 360
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->onSetParamSuccess()V

    return-void

    .line 363
    :cond_2
    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->scheduleEndAfterSetParamReply(Lcom/google/gson/JsonObject;)V

    .line 365
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CALIBRATE,,SET_PARAM,"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v0, v1, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 343
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {p2, p1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->endBucketSwitchFailed(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 344
    iput-boolean v7, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchingBucket:Z

    .line 345
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->rollbackSwitchCalibAfterFailure()V

    .line 346
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 347
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->showSwitchConfigFailedDialog()V

    const/4 p1, 0x0

    .line 348
    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    return-void
.end method

.method private onSetParamSuccess()V
    .locals 2

    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->holdHostCalibAfterSwitchFail:Z

    .line 371
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->clearSwitchRollback()V

    .line 372
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->isVisible:Z

    if-eqz v0, :cond_0

    .line 373
    sget v0, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 375
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->pendingConfigSuccessToast:Z

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_1

    .line 378
    iget-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    iput-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    .line 379
    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParams:Ljava/lang/String;

    .line 381
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->refreshCurrentBucketMarker()V

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 383
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    return-void
.end method

.method private openBucketEdit(J)V
    .locals 2

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/BucketCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    const-string v1, "localId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 222
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BucketListActivity;->isSupportBucket(Z)Z

    move-result p1

    const-string p2, "isSupportBucket"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    const-string p1, "currentExcavator"

    iget-object p2, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private postSwitchFailed(Ljava/lang/String;I)V
    .locals 0

    .line 322
    new-instance p1, Lcom/qianhe/yct/activity/BucketListActivity$4;

    invoke-direct {p1, p0, p2}, Lcom/qianhe/yct/activity/BucketListActivity$4;-><init>(Lcom/qianhe/yct/activity/BucketListActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshCurrentBucketMarker()V
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 538
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->reloadCurrentExcavatorFromDb()V

    .line 539
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->isCurrentExcavatorMode1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->adapter:Lcom/qianhe/yct/adapter/BucketListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mList:Ljava/util/List;

    iget-object v2, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/qianhe/yct/adapter/BucketListAdapter;->setCurrentParam(Ljava/lang/String;Ljava/util/List;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->adapter:Lcom/qianhe/yct/adapter/BucketListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mList:Ljava/util/List;

    iget-object v3, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/adapter/BucketListAdapter;->setCurrentParam(Ljava/lang/String;Ljava/util/List;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->adapter:Lcom/qianhe/yct/adapter/BucketListAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/BucketListAdapter;->clearCurrentParam()V

    return-void
.end method

.method private reloadCurrentExcavatorFromDb()V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 516
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->findExcavatorByDeviceCalibParamsId(Landroid/content/Context;Ljava/lang/String;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 521
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->reloadExcavatorFromDb(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 524
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->holdHostCalibAfterSwitchFail:Z

    if-nez v1, :cond_3

    .line 525
    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->preferCalibParamsId(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    .line 527
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_4

    .line 528
    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParams:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method private rememberCalibBeforeSwitch()V
    .locals 6

    const/4 v0, 0x0

    .line 387
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->holdHostCalibAfterSwitchFail:Z

    .line 388
    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackDeviceCalibParamsId:Ljava/lang/String;

    .line 389
    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParams:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_1
    iput-object v2, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackDeviceCalibParams:Ljava/lang/String;

    const/4 v1, 0x0

    .line 390
    iput-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 391
    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_2

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 392
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    .line 393
    invoke-virtual {v1, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByLocalId(J)Ljava/util/List;

    move-result-object v1

    .line 394
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 395
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->copyExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-void

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->copyExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-void
.end method

.method private rollbackSwitchCalibAfterFailure()V
    .locals 5

    const/4 v0, 0x1

    .line 403
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->holdHostCalibAfterSwitchFail:Z

    .line 404
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackDeviceCalibParamsId:Ljava/lang/String;

    .line 405
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackDeviceCalibParams:Ljava/lang/String;

    .line 406
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->refreshCurrentBucketMarker()V

    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_2

    .line 411
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 412
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateExcavatorById(Lcom/qianhe/baselib/bean/ExcavatorEntity;)I

    .line 413
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackDeviceCalibParamsId:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchRollbackDeviceCalibParams:Ljava/lang/String;

    if-eqz v0, :cond_4

    move-object v1, v0

    :cond_4
    iput-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParams:Ljava/lang/String;

    .line 419
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->clearSwitchRollback()V

    .line 420
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->refreshCurrentBucketMarker()V

    return-void
.end method

.method private showList()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 609
    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 610
    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 611
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->refreshCurrentBucketMarker()V

    .line 612
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->adapter:Lcom/qianhe/yct/adapter/BucketListAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/BucketListAdapter;->closeSelUi()V

    .line 613
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->bottomBtn:Lcom/qianhe/yct/view/BucketBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/BucketBottomView;->closeExecuteUi()V

    const/4 v0, 0x0

    .line 614
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/BucketListActivity;->showSelectAll(Z)V

    return-void
.end method

.method private showPendingConfigSuccessToast()V
    .locals 1

    .line 660
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->pendingConfigSuccessToast:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity;->isVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 661
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->pendingConfigSuccessToast:Z

    .line 662
    sget v0, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 663
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->refreshCurrentBucketMarker()V

    .line 664
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->showList()V

    :cond_1
    :goto_0
    return-void
.end method

.method private showSelectAll(Z)V
    .locals 3

    .line 618
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->lltAll:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 620
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 622
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->updateSelectAllState()V

    return-void
.end method

.method private showSwitchConfigFailedDialog()V
    .locals 3

    const/4 v0, 0x1

    .line 442
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->holdHostCalibAfterSwitchFail:Z

    .line 443
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->refreshCurrentBucketMarker()V

    .line 444
    sget v0, Lcom/qianhe/yct/R$string;->config_failed_please_check_params:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/activity/BucketListActivity$5;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/BucketListActivity$5;-><init>(Lcom/qianhe/yct/activity/BucketListActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private startLocalBucketSwitch(Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 3

    .line 265
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->getActiveCalibParams()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 266
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    sget v1, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 273
    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 274
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/qianhe/yct/activity/BucketListActivity$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/qianhe/yct/activity/BucketListActivity$3;-><init>(Lcom/qianhe/yct/activity/BucketListActivity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 318
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    .line 267
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->endBucketSwitchFailed(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    const/4 p1, 0x0

    .line 268
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchingBucket:Z

    .line 269
    sget p1, Lcom/qianhe/yct/R$string;->cannot_configure:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method private swicthBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 4

    .line 237
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/BucketSwitchHelper;->reloadBucketFromDb(Landroid/content/Context;Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    const/4 p1, 0x1

    .line 238
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchingBucket:Z

    .line 239
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginBucketSwitch(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 240
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->getActiveCalibParams()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->pendingSwitchBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 242
    sget p1, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object p1

    .line 244
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v2, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordGetParamCmd(Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 246
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "CALIBRATE,,GET_PARAM"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BucketListActivity;->startLocalBucketSwitch(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    return-void
.end method

.method private syncExcavatorWithSwitchedBucket(Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lcom/qianhe/yct/utils/BucketSwitchHelper;->syncExcavatorWithSwitchedBucket(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;Z)Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;

    move-result-object p2

    .line 254
    iget-object v0, p2, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_0

    .line 255
    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 257
    :cond_0
    iget-object v0, p2, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->calibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p2, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->calibParamsId:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParams:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParams:Ljava/lang/String;

    .line 261
    iget-object p2, p2, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz p2, :cond_3

    move-object p1, p2

    :cond_3
    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    return-void
.end method

.method private updateData(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShovelEntity;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 762
    iget-object v1, v0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 763
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 764
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 766
    iget-object v3, v0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 767
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    .line 768
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_a

    .line 770
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 771
    iget-object v8, v7, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v7, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 773
    iget-object v10, v9, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v9, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_4
    iget-object v10, v9, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    iget-object v11, v7, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 776
    iget-wide v10, v7, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    iget-wide v12, v9, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    cmp-long v14, v10, v12

    if-ltz v14, :cond_6

    iget-wide v14, v7, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    move-object/from16 v16, v5

    iget-wide v4, v9, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    cmp-long v17, v14, v4

    if-gtz v17, :cond_5

    goto :goto_1

    :cond_5
    cmp-long v4, v10, v12

    if-lez v4, :cond_8

    .line 792
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    const/4 v4, 0x1

    .line 793
    iput-boolean v4, v0, Lcom/qianhe/yct/activity/BucketListActivity;->isChange:Z

    goto :goto_2

    :cond_6
    move-object/from16 v16, v5

    .line 778
    :goto_1
    iget-wide v4, v7, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    iput-wide v4, v9, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    .line 780
    iget v4, v7, Lcom/qianhe/baselib/bean/ShovelEntity;->showUnit:I

    iput v4, v9, Lcom/qianhe/baselib/bean/ShovelEntity;->showUnit:I

    .line 783
    invoke-virtual {v9, v7}, Lcom/qianhe/baselib/bean/ShovelEntity;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 784
    iget-object v4, v0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4, v9}, Lcom/qianhe/yct/db/DatabaseManager;->updateShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)I

    goto :goto_2

    :cond_7
    move-object/from16 v16, v5

    :cond_8
    :goto_2
    move-object/from16 v5, v16

    const/4 v4, 0x0

    goto :goto_0

    .line 799
    :cond_9
    iget-boolean v4, v0, Lcom/qianhe/yct/activity/BucketListActivity;->isChange:Z

    if-eqz v4, :cond_a

    .line 800
    iput-boolean v6, v0, Lcom/qianhe/yct/activity/BucketListActivity;->isChange:Z

    .line 801
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryBucket()V

    return-void

    .line 807
    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 808
    iget-object v7, v5, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 809
    iget-object v7, v0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v8, v5, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 810
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 811
    iget-object v7, v0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v7, v5}, Lcom/qianhe/yct/db/DatabaseManager;->insertShovel(Lcom/qianhe/baselib/bean/ShovelEntity;)J

    goto :goto_3

    .line 814
    :cond_c
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 815
    iget-wide v8, v5, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    iget-wide v10, v7, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    cmp-long v12, v8, v10

    if-lez v12, :cond_d

    .line 816
    iget-wide v7, v7, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    iput-wide v7, v5, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    .line 817
    iget-object v7, v0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v7, v5}, Lcom/qianhe/yct/db/DatabaseManager;->updateShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)I

    goto :goto_3

    .line 820
    :cond_d
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/qianhe/yct/utils/NetworkUserLoader;->delBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 821
    iget-object v5, v0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    invoke-virtual {v5}, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v5

    new-instance v8, Lcom/qianhe/yct/activity/BucketListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v8, v7}, Lcom/qianhe/yct/activity/BucketListActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    const-wide/16 v9, 0x1f4

    invoke-virtual {v5, v8, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 829
    :cond_e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 830
    iget-object v4, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 831
    iget-object v4, v0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4, v3}, Lcom/qianhe/yct/db/DatabaseManager;->deleteShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)J

    goto :goto_4

    .line 836
    :cond_10
    iget-object v1, v0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/yct/activity/BucketListActivity;->localList:Ljava/util/List;

    .line 837
    invoke-direct {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->uploadBuckets()V

    return-void
.end method

.method private updateSelectAllState()V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 628
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private uploadBuckets()V
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->localList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->index:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->localList:Ljava/util/List;

    iget v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 843
    iget-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    return-void

    .line 846
    :cond_0
    iget v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->index:I

    .line 847
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->uploadBuckets()V

    return-void

    .line 850
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->showList()V

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

    .line 569
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 0

    .line 0
    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->bucket_manage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 575
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->bottomBtn:Lcom/qianhe/yct/view/BucketBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/BucketBottomView;->getSelectedIndex()I

    move-result v0

    if-lez v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->bottomBtn:Lcom/qianhe/yct/view/BucketBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/BucketBottomView;->closeExecuteUi()V

    .line 886
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->adapter:Lcom/qianhe/yct/adapter/BucketListAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/BucketListAdapter;->closeSelUi()V

    const/4 v0, 0x0

    .line 887
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/BucketListActivity;->showSelectAll(Z)V

    return-void

    .line 889
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    .line 92
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 94
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 95
    new-instance p1, Lcom/qianhe/yct/adapter/BucketListAdapter;

    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mList:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/adapter/BucketListAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V

    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->adapter:Lcom/qianhe/yct/adapter/BucketListAdapter;

    .line 96
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 98
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 102
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->adapter:Lcom/qianhe/yct/adapter/BucketListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 104
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->adapter:Lcom/qianhe/yct/adapter/BucketListAdapter;

    new-instance v0, Lcom/qianhe/yct/activity/BucketListActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/BucketListActivity$1;-><init>(Lcom/qianhe/yct/activity/BucketListActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/BucketListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;)V

    .line 142
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->lltAll:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/qianhe/yct/activity/BucketListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/BucketListActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/BucketListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->bottomBtn:Lcom/qianhe/yct/view/BucketBottomView;

    new-instance v0, Lcom/qianhe/yct/activity/BucketListActivity$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/BucketListActivity$2;-><init>(Lcom/qianhe/yct/activity/BucketListActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/BucketBottomView;->setOnNavItemClickListener(Lcom/qianhe/yct/view/BucketBottomView$OnNavItemClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 895
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->endAwaitingSessionIfNeeded()V

    const/4 v0, 0x0

    .line 896
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchingBucket:Z

    .line 897
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 898
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 871
    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_5

    .line 669
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 670
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 671
    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    if-eqz v0, :cond_2

    .line 673
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mParamsType:I

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6821\u51c6\u53c2\u6570\u7c7b\u578b\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mParamsType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 676
    :cond_2
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BucketListActivity;->applyDeviceCalibParams(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V

    .line 677
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->refreshCurrentBucketMarker()V

    .line 678
    iget-boolean v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchingBucket:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->pendingSwitchBucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v1, :cond_4

    .line 679
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v1

    .line 680
    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->line:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 681
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->line:Ljava/lang/String;

    goto :goto_1

    .line 682
    :cond_3
    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->buildGetParamReplyLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 683
    :goto_1
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v4, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {p1, v2, v3, v1, v4}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordGetParamReply(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 686
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->continuePendingSwitch()V

    :cond_5
    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 695
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchingBucket:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getSensorInfo()Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 697
    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 699
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v3, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v4, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    .line 700
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 699
    invoke-static {p1, v2, v3, v0, v4}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->handleSetParamReplyIfWaiting(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 701
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchingBucket:Z

    .line 703
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-nez p1, :cond_2

    :goto_0
    return-void

    .line 704
    :cond_2
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 705
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchingBucket:Z

    .line 706
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->onSetParamSuccess()V

    return-void

    .line 709
    :cond_3
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearAwaitSetParamReply()V

    .line 710
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->hasActiveSession()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const-string v2, "bucket"

    .line 711
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->getActiveFileFlow()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    .line 713
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object p1, v3

    :goto_1
    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    iget-object v4, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mLatestIns:Lcom/qianhe/baselib/bean/InsNavi;

    iget-wide v5, p0, Lcom/qianhe/yct/base/BaseActivity;->latestHeadingDegreesError:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 712
    invoke-static {p1, v2, v4, v0, v5}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->recordSetParamReply(Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Ljava/lang/Double;)V

    .line 714
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->mCurrentExcavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->endBucketSwitchFailed(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 716
    :cond_5
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->switchingBucket:Z

    .line 717
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->rollbackSwitchCalibAfterFailure()V

    .line 718
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 719
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/qianhe/yct/activity/BucketListActivity$6;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/BucketListActivity$6;-><init>(Lcom/qianhe/yct/activity/BucketListActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 727
    iput-object v3, p0, Lcom/qianhe/yct/activity/BucketListActivity;->selectShovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/CreateBucketResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 856
    iget v0, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->state:I

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz p1, :cond_0

    .line 858
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updateShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)I

    .line 860
    :cond_0
    iget p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->index:I

    .line 861
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->uploadBuckets()V

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/QueryBucketResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 733
    iget v0, p1, Lcom/qianhe/yct/event/QueryBucketResponse;->state:I

    if-nez v0, :cond_0

    .line 734
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryBucketResponse;->list:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BucketListActivity;->updateData(Ljava/util/List;)V

    return-void

    .line 736
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->showList()V

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/SwicthBucketEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 644
    :cond_0
    iget-boolean v0, p1, Lcom/qianhe/yct/event/SwicthBucketEvent;->refreshOnly:Z

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p1, Lcom/qianhe/yct/event/SwicthBucketEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    iget-object p1, p1, Lcom/qianhe/yct/event/SwicthBucketEvent;->calibParamsId:Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->deviceCalibParamsId:Ljava/lang/String;

    .line 648
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->reloadCurrentExcavatorFromDb()V

    .line 649
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->refreshCurrentBucketMarker()V

    .line 650
    iget-boolean p1, p0, Lcom/qianhe/yct/base/BaseActivity;->isVisible:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 651
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->adapter:Lcom/qianhe/yct/adapter/BucketListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 655
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/BucketListActivity;->isSupportBucket(Z)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_0
    return-void

    .line 656
    :cond_4
    iget-object p1, p1, Lcom/qianhe/yct/event/SwicthBucketEvent;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/BucketListActivity;->swicthBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 580
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 581
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->showPendingConfigSuccessToast()V

    .line 582
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 583
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->localList:Ljava/util/List;

    const/4 v0, 0x0

    .line 586
    iput v0, p0, Lcom/qianhe/yct/activity/BucketListActivity;->index:I

    .line 588
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryBucket()V

    .line 590
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->showList()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 595
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 598
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "CALIBRATE,,GET_PARAM"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 599
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->showError:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 600
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/BucketListActivity;->showError:Z

    .line 602
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/qianhe/yct/activity/BucketListActivity;->showSwitchConfigFailedDialog()V

    :cond_0
    return-void
.end method
