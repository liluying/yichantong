.class public Lcom/qianhe/yct/activity/ExcavatorListActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "ExcavatorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;
    }
.end annotation


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

.field private binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

.field private final createLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private deferredHostCalibCheckEvent:Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;

.field private deviceCalibParamsId:Ljava/lang/String;

.field private dismissedHostCalibParamsId:Ljava/lang/String;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

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

.field private localList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;"
        }
    .end annotation
.end field

.field private pendingHostCalibEvent:Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;

.field private platformSyncInProgress:Z

.field private promptingHostCalibAdd:Z

.field private scrollToTopOnNextListUpdate:Z


# direct methods
.method public static synthetic $r8$lambda$-R03usaIP5uPV-qO9DvPrnx1xK8(Lcom/qianhe/yct/activity/ExcavatorListActivity;Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;)V
    .locals 1

    .line 508
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 509
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->applySyncResult(Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9QJ-4oySX0Rv3aa9abLXuxfXgDI(Lcom/qianhe/yct/activity/ExcavatorListActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->scrollToTopOnNextListUpdate:Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$GBlJiErXi1iIlFkflamhGcYD4-E(Lcom/qianhe/yct/activity/ExcavatorListActivity;Ljava/util/List;)V
    .locals 1

    .line 506
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->performLocalSync(Ljava/util/List;)Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;

    move-result-object p1

    .line 507
    new-instance v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/activity/ExcavatorListActivity;Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O95_ws5MIZx4-KtBXLSOy-i-pDg(Lcom/qianhe/yct/activity/ExcavatorListActivity;Ljava/util/List;)V
    .locals 1

    .line 352
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 353
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->localList:Ljava/util/List;

    .line 354
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->applyListToUi(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cHCREh4Cv0lmJ-cBe6_r4IHa7gY(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByUserId(J)Ljava/util/List;

    move-result-object v0

    .line 351
    new-instance v1, Lcom/qianhe/yct/activity/ExcavatorListActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/activity/ExcavatorListActivity;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$upkiJqpiVPndlELyU6JnwIazplI(Lcom/qianhe/yct/activity/ExcavatorListActivity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xNlTE6xWBRhfjWfRAB1zDipQBWQ(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V
    .locals 1

    .line 368
    iget-object p0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    .line 368
    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/yct/adapter/ExcavatorListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->adapter:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcreateLauncher(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->createLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->idStrList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmList(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingHostCalibEvent(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->pendingHostCalibEvent:Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdeviceCalibParamsId(Lcom/qianhe/yct/activity/ExcavatorListActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->deviceCalibParamsId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdismissedHostCalibParamsId(Lcom/qianhe/yct/activity/ExcavatorListActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->dismissedHostCalibParamsId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputidStrList(Lcom/qianhe/yct/activity/ExcavatorListActivity;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->idStrList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingHostCalibEvent(Lcom/qianhe/yct/activity/ExcavatorListActivity;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->pendingHostCalibEvent:Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpromptingHostCalibAdd(Lcom/qianhe/yct/activity/ExcavatorListActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->promptingHostCalibAdd:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadLocalListAsync(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->loadLocalListAsync()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenExcavatorDetail(Lcom/qianhe/yct/activity/ExcavatorListActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->openExcavatorDetail(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ExcavatorListActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->showSelectAll(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSelectAllState(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->updateSelectAllState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$muploadUnsyncedIfIdle(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->uploadUnsyncedIfIdle()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->mList:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->idStrList:Ljava/util/List;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->deviceCalibParamsId:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->dismissedHostCalibParamsId:Ljava/lang/String;

    .line 74
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/activity/ExcavatorListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->createLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const/4 v0, 0x0

    .line 566
    iput v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->index:I

    return-void
.end method

.method private applyListToUi(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;)V"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 361
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->refreshCurrentExcavatorMarker()V

    .line 365
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->adapter:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 366
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->scrollToTopOnNextListUpdate:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 367
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->scrollToTopOnNextListUpdate:Z

    .line 368
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/qianhe/yct/activity/ExcavatorListActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 370
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->bottomBtn:Lcom/qianhe/yct/view/ExcavatorBottomView;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/ExcavatorBottomView;->getSelectedIndex()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 371
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->updateSelectAllState()V

    return-void

    .line 373
    :cond_2
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->showSelectAll(Z)V

    return-void
.end method

.method private applySyncResult(Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;)V
    .locals 7

    .line 487
    iget-object v0, p1, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;->toModifyOnPlatform:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 488
    iget-object p1, p1, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;->toModifyOnPlatform:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 489
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    goto :goto_0

    .line 491
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryExcavator()V

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 494
    :goto_1
    iget-object v2, p1, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;->platformToDelete:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 495
    iget-object v2, p1, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;->localToCreate:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 496
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v3

    iget-object v4, p1, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;->platformToDelete:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v3, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->delExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 497
    iget-object v3, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    invoke-virtual {v3}, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    new-instance v4, Lcom/qianhe/yct/activity/ExcavatorListActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v2}, Lcom/qianhe/yct/activity/ExcavatorListActivity$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/activity/ExcavatorListActivity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 499
    :cond_2
    iget-object p1, p1, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;->localList:Ljava/util/List;

    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->localList:Ljava/util/List;

    .line 500
    iput v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->index:I

    .line 501
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->uploadExcavator()V

    return-void
.end method

.method private isCurrentDeviceExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 476
    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->deviceCalibParamsId:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {v1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseExcavatorNameFromCalibParamsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    :goto_0
    return v0
.end method

.method private loadLocalListAsync()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qianhe/yct/activity/ExcavatorListActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private logDecodedGetCalibrateParam(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V
    .locals 2

    .line 325
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_PARAM \u6821\u51c6\u53c2\u6570id\u89e3\u7801\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private openExcavatorDetail(J)V
    .locals 2

    .line 392
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/excavator/ExcavatorDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    const-string v1, "localId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private performLocalSync(Ljava/util/List;)Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;)",
            "Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;"
        }
    .end annotation

    .line 405
    new-instance v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;-><init>(Lcom/qianhe/yct/activity/ExcavatorListActivity-IA;)V

    .line 406
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 407
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 408
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_b

    .line 409
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByUserId(J)Ljava/util/List;

    move-result-object v3

    .line 410
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 411
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 412
    iget-object v7, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 413
    iget-object v7, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 416
    iget-object v9, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 417
    iget-object v9, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_3
    iget-object v9, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    iget-object v10, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 420
    iget-wide v9, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    iget-wide v11, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    cmp-long v13, v9, v11

    if-ltz v13, :cond_5

    iget-wide v9, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    iget-wide v11, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    cmp-long v13, v9, v11

    if-gtz v13, :cond_4

    goto :goto_1

    .line 428
    :cond_4
    iget-object v8, v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;->toModifyOnPlatform:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_5
    :goto_1
    iget-wide v9, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    iput-wide v9, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    .line 422
    iget v9, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->showUnit:I

    iput v9, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->showUnit:I

    .line 423
    iget-object v9, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    iget-object v10, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/qianhe/yct/utils/SyncNameHelper;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    .line 424
    invoke-virtual {v8, v6}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 425
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/qianhe/yct/db/DatabaseManager;->updateExcavatorById(Lcom/qianhe/baselib/bean/ExcavatorEntity;)I

    goto :goto_0

    .line 434
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 435
    iget-object v6, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 436
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v6

    iget-object v7, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 437
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 438
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/qianhe/yct/db/DatabaseManager;->insertExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)J

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    .line 440
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 441
    invoke-direct {p0, v6}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->shouldKeepUnsyncedDeviceExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 442
    iget-object v7, v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;->platformToDelete:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v3, v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;->localToCreate:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 444
    :cond_9
    iget-wide v7, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    iget-wide v9, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    cmp-long v11, v7, v9

    if-lez v11, :cond_a

    .line 445
    iget-wide v7, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    .line 446
    iget-object v6, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    iget-object v7, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/qianhe/yct/utils/SyncNameHelper;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    .line 447
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/qianhe/yct/db/DatabaseManager;->updateExcavatorById(Lcom/qianhe/baselib/bean/ExcavatorEntity;)I

    goto :goto_2

    .line 449
    :cond_a
    iget-object v7, v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;->platformToDelete:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v3, v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;->localToCreate:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 456
    :cond_b
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByUserId(J)Ljava/util/List;

    move-result-object p1

    .line 457
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 458
    iget-object v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_3

    .line 461
    :cond_d
    invoke-direct {p0, v2}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->isCurrentDeviceExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_3

    .line 464
    :cond_e
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/db/DatabaseManager;->deleteExcavatorById(Lcom/qianhe/baselib/bean/ExcavatorEntity;)J

    goto :goto_3

    .line 466
    :cond_f
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByUserId(J)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$SyncResult;->localList:Ljava/util/List;

    return-object v0
.end method

.method private promptAddHostCalibParams(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 277
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->dismissedHostCalibParamsId:Ljava/lang/String;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 283
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->promptingHostCalibAdd:Z

    if-eqz v0, :cond_2

    .line 284
    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->pendingHostCalibEvent:Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;

    return-void

    .line 287
    :cond_2
    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->pendingHostCalibEvent:Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;

    const/4 p1, 0x1

    .line 288
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->promptingHostCalibAdd:Z

    .line 289
    sget p1, Lcom/qianhe/yct/R$string;->detect_new_host_calib_params_add_to_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget p1, Lcom/qianhe/yct/R$string;->add:I

    .line 290
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget p1, Lcom/qianhe/yct/R$string;->cancel:I

    .line 291
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/qianhe/yct/activity/ExcavatorListActivity$5;

    invoke-direct {v4, p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity$5;-><init>(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V

    const-string v5, "add_host_calib_params"

    move-object v0, p0

    .line 289
    invoke-virtual/range {v0 .. v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private refreshCurrentExcavatorMarker()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->findExcavatorByDeviceCalibParamsId(Landroid/content/Context;Ljava/lang/String;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 338
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->reloadExcavatorFromDb(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->preferCalibParamsId(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->deviceCalibParamsId:Ljava/lang/String;

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->deviceCalibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->adapter:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->deviceCalibParamsId:Ljava/lang/String;

    iget-object v2, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->mList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->setCurrentExcavator(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->adapter:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private runDeferredHostCalibCheck()V
    .locals 2

    .line 268
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->platformSyncInProgress:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->deferredHostCalibCheckEvent:Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;

    const/4 v1, 0x0

    .line 272
    iput-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->deferredHostCalibCheckEvent:Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;

    .line 273
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->tryPromptHostCalibParams(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldKeepUnsyncedDeviceExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 472
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->isCurrentDeviceExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private showList()V
    .locals 0

    .line 520
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->loadLocalListAsync()V

    return-void
.end method

.method private showSelectAll(Z)V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->lltAll:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 380
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 382
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->updateSelectAllState()V

    return-void
.end method

.method private syncRemoteData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;)V"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qianhe/yct/activity/ExcavatorListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/ExcavatorListActivity;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private tryPromptHostCalibParams(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 255
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->shouldPromptAddFromDeviceParam(Landroid/content/Context;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->promptAddHostCalibParams(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V

    return-void

    .line 262
    :cond_1
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->createLocalBucketIfMissing(Landroid/content/Context;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)Lcom/qianhe/baselib/bean/ShovelEntity;

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSelectAllState()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 388
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private uploadExcavator()V
    .locals 4

    .line 569
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->localList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 570
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->platformSyncInProgress:Z

    .line 571
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->showList()V

    .line 572
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->runDeferredHostCalibCheck()V

    return-void

    .line 575
    :cond_0
    iget v2, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->index:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->localList:Ljava/util/List;

    iget v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 577
    iget-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 579
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void

    .line 581
    :cond_1
    iget v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->index:I

    .line 582
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->uploadExcavator()V

    return-void

    .line 584
    :cond_2
    iget v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->index:I

    iget-object v2, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->localList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 585
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->platformSyncInProgress:Z

    .line 586
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->showList()V

    .line 587
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->runDeferredHostCalibCheck()V

    :cond_3
    return-void
.end method

.method private uploadUnsyncedIfIdle()Z
    .locals 4

    .line 592
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->platformSyncInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->localList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->index:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    return v1

    .line 599
    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByUserId(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->localList:Ljava/util/List;

    .line 600
    iput v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->index:I

    const/4 v0, 0x1

    .line 601
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->platformSyncInProgress:Z

    .line 602
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->uploadExcavator()V

    return v0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 525
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->excavator:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 526
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->bottomBtn:Lcom/qianhe/yct/view/ExcavatorBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/ExcavatorBottomView;->getSelectedIndex()I

    move-result v0

    if-lez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->bottomBtn:Lcom/qianhe/yct/view/ExcavatorBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/ExcavatorBottomView;->closeExecuteUi()V

    .line 644
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->adapter:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->closeSelUi()V

    const/4 v0, 0x0

    .line 645
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->showSelectAll(Z)V

    return-void

    .line 647
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    .line 84
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 89
    new-instance p1, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->mList:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V

    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->adapter:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    .line 90
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 93
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 96
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 98
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->adapter:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 99
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->adapter:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    new-instance v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity$1;-><init>(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;)V

    .line 143
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->lltAll:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity$2;-><init>(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->bottomBtn:Lcom/qianhe/yct/view/ExcavatorBottomView;

    new-instance v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;-><init>(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/ExcavatorBottomView;->setOnNavItemClickListener(Lcom/qianhe/yct/view/ExcavatorBottomView$OnNavItemClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 626
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 627
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

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

.method public onMessageEvent(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 241
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->logDecodedGetCalibrateParam(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V

    .line 243
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->applyGetCalibrateParam(Landroid/content/Context;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->deviceCalibParamsId:Ljava/lang/String;

    .line 244
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->platformSyncInProgress:Z

    if-eqz v0, :cond_0

    .line 245
    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->deferredHostCalibCheckEvent:Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;

    goto :goto_0

    .line 247
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->tryPromptHostCalibParams(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V

    .line 249
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->loadLocalListAsync()V

    .line 250
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->uploadUnsyncedIfIdle()Z

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 223
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;->line:Ljava/lang/String;

    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    sget p1, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "CALIBRATE,,GET_PARAM"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity$4;-><init>(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/CreateExcavatorResponse;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 608
    iget p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->index:I

    .line 609
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->uploadExcavator()V

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/QueryExcacatorResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 614
    iget v0, p1, Lcom/qianhe/yct/event/QueryExcacatorResponse;->state:I

    if-nez v0, :cond_0

    .line 615
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryExcacatorResponse;->list:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->syncRemoteData(Ljava/util/List;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 617
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->platformSyncInProgress:Z

    .line 618
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->uploadUnsyncedIfIdle()Z

    move-result p1

    if-nez p1, :cond_1

    .line 619
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->runDeferredHostCalibCheck()V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 632
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 633
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 546
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 547
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 548
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->loadLocalListAsync()V

    .line 549
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 550
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 551
    iput v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->index:I

    const/4 v0, 0x1

    .line 552
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->platformSyncInProgress:Z

    .line 553
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryExcavator()V

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->showList()V

    .line 557
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v3, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v4, "CALIBRATE,,GET_PARAM"

    invoke-direct {v2, v3, v4}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 559
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->adapter:Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->closeSelUi()V

    .line 561
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->bottomBtn:Lcom/qianhe/yct/view/ExcavatorBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/ExcavatorBottomView;->closeExecuteUi()V

    .line 562
    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->showSelectAll(Z)V

    :cond_1
    return-void
.end method
