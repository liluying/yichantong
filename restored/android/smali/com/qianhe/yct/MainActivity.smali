.class public Lcom/qianhe/yct/MainActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "MainActivity.java"


# instance fields
.field private afterLogin:Z

.field private binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

.field private bucketIndex:I

.field private bucketLocalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShovelEntity;",
            ">;"
        }
    .end annotation
.end field

.field private databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private engineeringLocalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ">;"
        }
    .end annotation
.end field

.field private excavatorIndex:I

.field private excavatorLocalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private exitDialogFragment:Lcom/qianhe/yct/dialog/ExitDialogFragment;

.field private final ggaLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;

.field private index:I

.field private initFocus:Z

.field private isBucketChange:Z

.field private isEngineeringSyncing:Z

.field private isExcavatorChange:Z

.field private isPause:Z

.field private isProChange:Z

.field private isTipRegisterOk:Z

.field private isTransParamChange:Z

.field private isUpdateDefaultCM:Z

.field private localAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation
.end field

.field private logUploadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private logUploadFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private loginUnassignedEngineerings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ">;"
        }
    .end annotation
.end field

.field private loginUnassignedExcavators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;"
        }
    .end annotation
.end field

.field private loginUnassignedPointGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ">;"
        }
    .end annotation
.end field

.field private loginUnassignedProjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation
.end field

.field private loginUnassignedShovels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShovelEntity;",
            ">;"
        }
    .end annotation
.end field

.field private loginUnassignedTransParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/GnssTransParamEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private nfcTagReader:Lcom/qianhe/baselib/utils/NfcTagReader;

.field private final pendingEngineeringCreateLocalIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPointGroupSyncAfterEngineering:Z

.field private pendingProjectSyncAfterEngineering:Z

.field private pendingServerCurrentId:J

.field private pendingServerCurrentUuid:Ljava/lang/String;

.field private pendingSyncPointsAfterEngineeringSwitch:Z

.field private projectSyncActive:Z

.field private sessionStartedAfterStorage:Z

.field private skipCheckTokenDataSync:Z

.field private syncingProjectDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

.field private transParamIndex:I

.field private transParamLocalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/GnssTransParamEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$24sPO6MQihJqw1elfa-c9dk832k(Lcom/qianhe/yct/MainActivity;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1802
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 1803
    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->cleanupDuplicateProjectsByUuid()I

    .line 1804
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->invalidateEngineeringCache()V

    .line 1805
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->ensureCurrentEngineeringReady()V

    .line 1806
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1807
    iput-boolean p1, p0, Lcom/qianhe/yct/MainActivity;->pendingSyncPointsAfterEngineeringSwitch:Z

    .line 1808
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->synProject()V

    .line 1809
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->synPointGroup()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$5niABjwizx6hhUfCXZP8SHUYdNY(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/yct/event/QueryPointResponse;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1021
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 1023
    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllPointGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 1024
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    iget-wide v4, p1, Lcom/qianhe/yct/event/QueryPointResponse;->groupId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return-void

    .line 1030
    :cond_2
    iget-object p0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object p1, p1, Lcom/qianhe/yct/event/QueryPointResponse;->list:Ljava/util/List;

    invoke-static {p0, v1, p1}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->mergePointsFromServer(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$72kTVAzD0WnQD5HsI33_iS8F9rY(Lcom/qianhe/yct/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->synExcavator()V

    return-void
.end method

.method public static synthetic $r8$lambda$8SPcDxgQJhr_oSmAtwAS0-fvqkc(Lcom/qianhe/yct/MainActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 185
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->eixt()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$8l3SJZNV4gq9m-wN1HVhyF1nZ-o(Lcom/qianhe/yct/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->synBucket()V

    return-void
.end method

.method public static synthetic $r8$lambda$FaUDeCAv0VBY4cxNJOa7z8ulHEs(Lcom/qianhe/yct/MainActivity;)V
    .locals 1

    .line 1665
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->syncingProjectDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz v0, :cond_0

    .line 1665
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1666
    iget-object p0, p0, Lcom/qianhe/yct/MainActivity;->syncingProjectDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$GgZFoyho2ecdptenVEj93Ku-MOo(Lcom/qianhe/yct/MainActivity;Ljava/util/List;)V
    .locals 0

    .line 1130
    invoke-direct {p0, p1}, Lcom/qianhe/yct/MainActivity;->updateEngineeringData(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KLPhbEXk1qs_jOh8SQV0ys0gnEQ(Lcom/qianhe/yct/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->synEngineering()V

    return-void
.end method

.method public static synthetic $r8$lambda$LkNo9oR8VkTvjvO2jC7cqrxUkVg(Lcom/qianhe/yct/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->syncAllGroupPoints()V

    return-void
.end method

.method public static synthetic $r8$lambda$O9LHrYUBI6jTmAeqpGscbOEzLr8(Lcom/qianhe/yct/MainActivity;Ljava/util/List;)V
    .locals 0

    .line 1879
    invoke-direct {p0, p1}, Lcom/qianhe/yct/MainActivity;->updateTransParamData(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PYa0fMfhPAZrEnhqBWLjgpEY1XA(Lcom/qianhe/yct/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->synPointGroup()V

    return-void
.end method

.method public static synthetic $r8$lambda$Px3lQeE-LIF2YBewyfmIMdmFqng(Lcom/qianhe/yct/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->synTransParam()V

    return-void
.end method

.method public static synthetic $r8$lambda$Pyf10fAGK__Dvaw8_-q8ICObmxo(Lcom/qianhe/yct/MainActivity;Ljava/lang/Runnable;)V
    .locals 1

    .line 1419
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1420
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    return-void

    .line 1421
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$TCL4LhUKDpiZFCB-LAdXHJ2atZ8(Lcom/qianhe/yct/MainActivity;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1382
    sget p1, Lcom/qianhe/yct/R$string;->data_has_updated:I

    .line 1382
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1382
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 1384
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->syncingProjectDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    if-eqz p1, :cond_1

    .line 1384
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1385
    iget-object p0, p0, Lcom/qianhe/yct/MainActivity;->syncingProjectDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$VERg5ZQ-qqB0naQn032CDffeBKA(Lcom/qianhe/yct/MainActivity;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 258
    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->cleanupDuplicateProjectsByUuid()I

    return-void
.end method

.method public static synthetic $r8$lambda$YxN_zpPNhKZB4gUzShHuNueybh0(Lcom/qianhe/yct/MainActivity;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1791
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda28;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bNsGDwHIkTNfHIuz_NR4JTyWLSY(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/yct/event/QueryPointGroupResponse;Ljava/util/List;Z)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 996
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 997
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse;->list:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->mergePointGroupsFromServer(Lcom/qianhe/yct/db/DatabaseManager;Ljava/util/List;Ljava/util/List;)V

    if-eqz p3, :cond_0

    .line 999
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->syncAllGroupPoints()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$j-aKGnjN7LkkGf-qR40N_y-wr5w(Lcom/qianhe/yct/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->synProject()V

    return-void
.end method

.method public static synthetic $r8$lambda$jLAIUdGBB4_c2PGy85-kehDnHGo(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;)V
    .locals 0

    .line 1111
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/MainActivity;->onEventMessage(Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jWJyH8bcc_aCYvBEkldcf6Z5hMU(Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 1

    .line 933
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k_nxLwguJFCw9gb7wfgb0RxkPTE(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/yct/event/CreateProjectResponse;)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1429
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 1430
    iget v1, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->state:I

    if-nez v1, :cond_1

    .line 1431
    iget-object v1, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 1432
    iget-object v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_1

    .line 1433
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/db/UserSession;->getUserId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->belongUid:J

    .line 1434
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedProjects:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1435
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v1, :cond_0

    .line 1436
    iget-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iget-object v4, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-wide v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    cmp-long v7, v2, v5

    if-nez v7, :cond_0

    .line 1437
    iget-wide v2, v4, Lcom/qianhe/baselib/base/BaseProEntity;->belongUid:J

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->belongUid:J

    .line 1438
    iget-object v2, v4, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    .line 1439
    iget-wide v2, v4, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    goto :goto_0

    .line 1445
    :cond_1
    iget p1, p0, Lcom/qianhe/yct/MainActivity;->index:I

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->localAll:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1447
    iget p1, p0, Lcom/qianhe/yct/MainActivity;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qianhe/yct/MainActivity;->index:I

    .line 1448
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->createProject()V

    :cond_2
    return-void
.end method

.method public static synthetic $r8$lambda$mcdZMY8HhkviHuTfdHtVcN_1BKU(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/yct/event/QueryProjectResponse;)V
    .locals 0

    .line 1460
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/MainActivity;->onEventMessage(Lcom/qianhe/yct/event/QueryProjectResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nSPoVPa0665tlerPC7Ptu7WQQ78(Lcom/qianhe/yct/MainActivity;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1801
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda24;-><init>(Lcom/qianhe/yct/MainActivity;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qGoOUzp0IAeBQ-O1-nWdvNWZWT8(Ljava/lang/Runnable;)V
    .locals 2

    .line 1407
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1409
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeSyncWork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qwTiNMxpx_vzYEs3TMuw22OtGSY(Lcom/qianhe/yct/MainActivity;Ljava/util/List;)V
    .locals 0

    .line 890
    invoke-direct {p0, p1}, Lcom/qianhe/yct/MainActivity;->updateBucketData(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s51vb-QEEpy3GYYgmQStRKKAuwU(Lcom/qianhe/yct/MainActivity;Z)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 287
    const-string/jumbo p0, "\u7f51\u7edc\u53ef\u7528"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 290
    :cond_0
    const-string/jumbo p1, "\u7f51\u7edc\u63a2\u6d4b\u5931\u8d25\uff0c\u63d0\u793a\u68c0\u67e5\u8bbe\u5907\u7f51\u7edc"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 291
    new-instance p1, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda27;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tfpWQD-ZZCtKxDz_EOAIkGmPzcw(Lcom/qianhe/yct/MainActivity;)V
    .locals 3

    .line 292
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 298
    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->please_check_device_network:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vMEGjohcA9MFfRFieb7PXFhSOoU(Lcom/qianhe/yct/MainActivity;Ljava/util/List;)V
    .locals 0

    .line 770
    invoke-direct {p0, p1}, Lcom/qianhe/yct/MainActivity;->updateExcavatorData(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wR0alkVg3AguBFitYgEEZQv62UE(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 1

    .line 1936
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zESoSxDO-73Rjb2g8ARYOp0Kmiw(Lcom/qianhe/yct/MainActivity;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1792
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->invalidateEngineeringCache()V

    .line 1793
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->ensureCurrentEngineeringReady()V

    const/4 v0, 0x1

    .line 1794
    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->startDataSyncAfterTokenValid(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/MainActivity;)Lcom/qianhe/yct/databinding/ActivityMainBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINS(Lcom/qianhe/yct/MainActivity;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmINS(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 134
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->logUploadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 135
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 165
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->pendingEngineeringCreateLocalIds:Ljava/util/Set;

    .line 169
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->gson:Lcom/google/gson/Gson;

    .line 480
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->ggaLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/MainActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private applyPendingServerCurrentEngineering()V
    .locals 7

    .line 701
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 702
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    .line 705
    iget-wide v1, p0, Lcom/qianhe/yct/MainActivity;->pendingServerCurrentId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->pendingServerCurrentUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 706
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->pendingServerCurrentUuid:Ljava/lang/String;

    iget-wide v5, p0, Lcom/qianhe/yct/MainActivity;->pendingServerCurrentId:J

    invoke-virtual {v1, v2, v5, v6}, Lcom/qianhe/yct/db/DatabaseManager;->applyServerCurrentEngineering(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5de5\u7a0b\u4e0a\u4f20\u5b8c\u6210\u540e\u5bf9\u9f50\u5e73\u53f0\u5f53\u524d\u5de5\u7a0b: uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->pendingServerCurrentUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/qianhe/yct/MainActivity;->pendingServerCurrentId:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 713
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseManager;->applyLatestCurrentEngineeringParams()V

    .line 714
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v1

    .line 715
    invoke-static {v0, v1}, Lcom/qianhe/yct/MainActivity;->hasCurrentEngineeringChanged(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u9879\u76ee\u540c\u6b65\u524d\u5f53\u524d\u5de5\u7a0b\u5df2\u5207\u6362: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const-string v5, "null"

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v0, v5

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    .line 719
    iget-object v5, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_6
    const/4 v0, 0x0

    .line 721
    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->pendingServerCurrentUuid:Ljava/lang/String;

    .line 722
    iput-wide v3, p0, Lcom/qianhe/yct/MainActivity;->pendingServerCurrentId:J

    return-void
.end method

.method private checkNetworkAfterPermission()V
    .locals 2

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 285
    new-instance v1, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda21;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-static {v0, v1}, Lcom/qianhe/baselib/utils/NetworkChecker;->checkNetworkAsync(Landroid/content/Context;Lcom/qianhe/baselib/utils/NetworkChecker$NetworkCheckCallback;)V

    return-void
.end method

.method private convertToEngineeringEntity(Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 7

    .line 1279
    new-instance v0, Lcom/qianhe/baselib/bean/EngineeringEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/EngineeringEntity;-><init>()V

    .line 1280
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->id:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    .line 1281
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    .line 1282
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->createEpoch:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    .line 1283
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->updateEpoch:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    .line 1284
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->version:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->version:J

    .line 1285
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    .line 1286
    iget v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->currentUsage:I

    iput v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    .line 1287
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->projection:Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;

    if-eqz v1, :cond_0

    .line 1288
    iget v2, v1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;->ellipsoidType:I

    iput v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    .line 1289
    iget v2, v1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;->projectionType:I

    iput v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    .line 1290
    iget-object v1, v1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;->paramsDetail:Ljava/lang/String;

    .line 1291
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1292
    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/EngineeringProjectionParser;->applyParamsDetail(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;)V

    .line 1296
    :cond_0
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->transParam:Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    iget-wide v4, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->transParamId:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 1297
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    .line 1298
    iget v2, v1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->paramType:I

    iput v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    .line 1299
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/db/DatabaseManager;->fromEngineeringTransParam(Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 1300
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object p1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->transParam:Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;

    iget-object p1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->bindTransParamLocalId(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    .line 1302
    iput p1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    .line 1303
    iput-wide v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    .line 1304
    iput-wide v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    const/4 p1, 0x0

    .line 1305
    iput-object p1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    return-object v0
.end method

.method private createProject()V
    .locals 8

    .line 1313
    const-string v0, ","

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "current_coords"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1314
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1315
    new-instance v2, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v2}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v2, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 1317
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 1318
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v2, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 1319
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, v2, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1321
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1326
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedProjects:Ljava/util/List;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->localAll:Ljava/util/List;

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1328
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1329
    iget v2, p0, Lcom/qianhe/yct/MainActivity;->index:I

    if-ltz v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 1330
    iget v1, p0, Lcom/qianhe/yct/MainActivity;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 1331
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedProjects:Ljava/util/List;

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    :cond_2
    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->belongUid:J

    .line 1332
    invoke-direct {p0, v4, v1, v2}, Lcom/qianhe/yct/MainActivity;->shouldUploadBelongUid(ZJ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1334
    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->shouldDeferProjectUploadUntilEngineeringSynced(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1335
    iget v0, p0, Lcom/qianhe/yct/MainActivity;->index:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/qianhe/yct/MainActivity;->index:I

    .line 1336
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->createProject()V

    return-void

    .line 1340
    :cond_3
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_2

    .line 1343
    :cond_4
    iget v0, p0, Lcom/qianhe/yct/MainActivity;->index:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/qianhe/yct/MainActivity;->index:I

    .line 1344
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->createProject()V

    goto :goto_2

    .line 1348
    :cond_5
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->syncFinish()V

    .line 1350
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryShare(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1354
    :cond_6
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->syncFinish()V

    .line 1356
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryShare(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private dataBaseColumnReName()V
    .locals 9

    .line 380
    const-string v0, "cors"

    const-string v1, "pointLib"

    const-string/jumbo v2, "wagou"

    const-string/jumbo v3, "shuapo"

    const-string v4, "create_time"

    const-string/jumbo v5, "zhaoping"

    :try_start_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v6

    iput-object v6, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 381
    invoke-virtual {v6}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 382
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5f53\u524d\u7cfb\u7edf\u7684\u6570\u636e\u5e93\u7248\u672c\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v7}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-static {v7}, Lcom/qianhe/yct/db/SQLiteBatchColumnRenameUtil;->getSQLiteVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 383
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u6570\u636e\u5e93\u7248\u672c\u53f7:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v7}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 385
    iget-object v6, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-static {v6, v5, v4}, Lcom/qianhe/yct/db/SQLiteBatchColumnRenameUtil;->isColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 388
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 389
    const-string v7, "_id"

    const-string v8, "id"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v7, "createTime"

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v4, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-static {v4, v5, v6}, Lcom/qianhe/yct/db/SQLiteBatchColumnRenameUtil;->renameColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 394
    const-string/jumbo v4, "\u627e\u5e73-\u6279\u91cf\u5b57\u6bb5\u91cd\u547d\u540d\u6210\u529f\uff01"

    invoke-static {v4}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 396
    iget-object v4, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-static {v4, v5, v6}, Lcom/qianhe/yct/db/SQLiteBatchColumnRenameUtil;->verifyColumnRenames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 398
    :cond_0
    const-string/jumbo v4, "\u627e\u5e73-\u6279\u91cf\u5b57\u6bb5\u91cd\u547d\u540d\u5931\u8d25\uff01"

    invoke-static {v4}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 400
    :goto_0
    iget-object v4, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-static {v4, v3, v6}, Lcom/qianhe/yct/db/SQLiteBatchColumnRenameUtil;->renameColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 402
    const-string/jumbo v4, "\u5237\u5761-\u6279\u91cf\u5b57\u6bb5\u91cd\u547d\u540d\u6210\u529f\uff01"

    invoke-static {v4}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 404
    iget-object v4, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-static {v4, v3, v6}, Lcom/qianhe/yct/db/SQLiteBatchColumnRenameUtil;->verifyColumnRenames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 406
    :cond_1
    const-string/jumbo v3, "\u5237\u5761-\u6279\u91cf\u5b57\u6bb5\u91cd\u547d\u540d\u5931\u8d25\uff01"

    invoke-static {v3}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 408
    :goto_1
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v3, v2, v6}, Lcom/qianhe/yct/db/SQLiteBatchColumnRenameUtil;->renameColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 410
    const-string/jumbo v3, "\u6316\u6c9f-\u6279\u91cf\u5b57\u6bb5\u91cd\u547d\u540d\u6210\u529f\uff01"

    invoke-static {v3}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 412
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v3, v2, v6}, Lcom/qianhe/yct/db/SQLiteBatchColumnRenameUtil;->verifyColumnRenames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 414
    :cond_2
    const-string/jumbo v2, "\u6316\u6c9f-\u6279\u91cf\u5b57\u6bb5\u91cd\u547d\u540d\u5931\u8d25\uff01"

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 416
    :goto_2
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v2, v1, v6}, Lcom/qianhe/yct/db/SQLiteBatchColumnRenameUtil;->renameColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 418
    const-string/jumbo v2, "\u70b9\u5e93-\u6279\u91cf\u5b57\u6bb5\u91cd\u547d\u540d\u6210\u529f\uff01"

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v2, v1, v6}, Lcom/qianhe/yct/db/SQLiteBatchColumnRenameUtil;->verifyColumnRenames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 422
    :cond_3
    const-string/jumbo v1, "\u70b9\u5e93-\u6279\u91cf\u5b57\u6bb5\u91cd\u547d\u540d\u5931\u8d25\uff01"

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 424
    :goto_3
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v0, v6}, Lcom/qianhe/yct/db/SQLiteBatchColumnRenameUtil;->renameColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 426
    const-string v1, "CORS-\u6279\u91cf\u5b57\u6bb5\u91cd\u547d\u540d\u6210\u529f\uff01"

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v0, v6}, Lcom/qianhe/yct/db/SQLiteBatchColumnRenameUtil;->verifyColumnRenames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 430
    :cond_4
    const-string v0, "CORS-\u6279\u91cf\u5b57\u6bb5\u91cd\u547d\u540d\u5931\u8d25\uff01"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 436
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6570\u636e\u5e93\u5b57\u6bb5\u91cd\u547d\u540d\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private eixt()V
    .locals 1

    .line 2067
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->stopService()V

    .line 2068
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 2069
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private ensureCurrentEngineeringReady()V
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1393
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 1395
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->bindOrphanDataToDefaultEngineering()V

    .line 1396
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->prepareCurrentEngineeringForCoordConvert(Landroid/content/Context;)V

    return-void
.end method

.method private ensureDefaultEngineeringAfterSync(Ljava/util/List;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;",
            ">;",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1213
    :goto_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/MainActivity;->findServerCurrentItem(Ljava/util/List;)Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1214
    iget-object v0, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->uuid:Ljava/lang/String;

    :goto_1
    move-object v3, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    .line 1215
    iget-wide v4, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->id:J

    goto :goto_3

    :cond_2
    move-wide v4, v0

    :goto_3
    if-eqz p1, :cond_3

    .line 1216
    iget-wide v0, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->createEpoch:J

    :cond_3
    move-wide v6, v0

    .line 1218
    iput-object v3, p0, Lcom/qianhe/yct/MainActivity;->pendingServerCurrentUuid:Ljava/lang/String;

    .line 1219
    iput-wide v4, p0, Lcom/qianhe/yct/MainActivity;->pendingServerCurrentId:J

    .line 1220
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/qianhe/yct/db/DatabaseManager;->finalizeEngineeringSyncAfterServerPull(ILjava/lang/String;JJLcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p1

    move-wide v9, v4

    move-object v5, v8

    move-wide v7, v9

    .line 1223
    invoke-static {v5, p1}, Lcom/qianhe/yct/MainActivity;->hasCurrentEngineeringChanged(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1224
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u540c\u6b65\u540e\u5f53\u524d\u5de5\u7a0b\u5df2\u5207\u6362: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    const-string v0, "null"

    if-eqz v5, :cond_4

    iget-object v1, v5, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v1, v0

    :goto_4
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    .line 1227
    iget-object v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    :cond_5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1224
    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1228
    iget-object p2, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p2}, Lcom/qianhe/yct/db/DatabaseManager;->applyLatestCurrentEngineeringParams()V

    :cond_6
    move-object v4, p1

    move-object v6, v3

    move-object v3, p0

    .line 1230
    invoke-direct/range {v3 .. v8}, Lcom/qianhe/yct/MainActivity;->syncEngineeringCurrentUsageToServer(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;J)V

    return-void
.end method

.method private executeSyncWork(Ljava/lang/Runnable;)V
    .locals 2

    .line 1401
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda29;

    invoke-direct {v1, p1}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda29;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1402
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private findServerCurrentItem(Ljava/util/List;)Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;",
            ">;)",
            "Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1264
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1267
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, -0x1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;

    if-eqz v3, :cond_1

    .line 1268
    iget v4, v3, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->currentUsage:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 1269
    :cond_2
    iget-wide v4, v3, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->createEpoch:J

    invoke-static {v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->effectiveCreateTime(J)J

    move-result-wide v4

    if-eqz v0, :cond_3

    cmp-long v6, v4, v1

    if-ltz v6, :cond_1

    :cond_3
    move-object v0, v3

    move-wide v1, v4

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private getLoacalData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1722
    iput v0, p0, Lcom/qianhe/yct/MainActivity;->index:I

    .line 1723
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 1724
    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->bindOrphanDataToDefaultEngineering()V

    .line 1726
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllProjectsAcrossEngineerings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static hasCurrentEngineeringChanged(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    return v1

    .line 1236
    :cond_2
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iget-wide p0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long v4, v2, p0

    if-eqz v4, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method private initApkList(Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 3

    .line 2036
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isCheckApkList()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2038
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v1, ""

    if-ne p1, v0, :cond_0

    .line 2039
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "base_deviceSn"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2041
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "deviceSn"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2043
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2044
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->setCheckApkList(Z)V

    const/4 v0, 0x0

    .line 2045
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->getApkList(Lcom/qianhe/baselib/enums/DeviceType;Z)V

    return-void

    .line 2047
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/application/YCTApplication;->setAppVersionCheckedComplete(Z)V

    :cond_2
    return-void
.end method

.method private initNFC()V
    .locals 1

    .line 309
    new-instance v0, Lcom/qianhe/baselib/utils/NfcTagReader;

    invoke-direct {v0}, Lcom/qianhe/baselib/utils/NfcTagReader;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->nfcTagReader:Lcom/qianhe/baselib/utils/NfcTagReader;

    .line 311
    invoke-virtual {v0, p0}, Lcom/qianhe/baselib/utils/NfcTagReader;->isNfcAvailable(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const-string/jumbo v0, "\u8bbe\u5907\u4e0d\u652f\u6301NFC\u529f\u80fd"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->nfcTagReader:Lcom/qianhe/baselib/utils/NfcTagReader;

    invoke-virtual {v0, p0}, Lcom/qianhe/baselib/utils/NfcTagReader;->isNfcEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    const-string/jumbo v0, "\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u5f00\u542fNFC\u529f\u80fd"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->nfcTagReader:Lcom/qianhe/baselib/utils/NfcTagReader;

    invoke-virtual {v0, p0}, Lcom/qianhe/baselib/utils/NfcTagReader;->hasNfcPermission(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 316
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->requestNfcPermission()V

    return-void

    .line 318
    :cond_2
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->startBlueService()V

    .line 319
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->nfcTagReader:Lcom/qianhe/baselib/utils/NfcTagReader;

    invoke-virtual {v0, p0}, Lcom/qianhe/baselib/utils/NfcTagReader;->initNfcReader(Landroid/app/Activity;)V

    return-void
.end method

.method private initTopbarView()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1956
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1957
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/TopbarBinding;->tvDemoTip:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1958
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    .line 1959
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentBaseDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v1

    .line 1960
    const-string v5, "SN:%s"

    if-eqz v0, :cond_1

    iget v6, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v7, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v7}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 1961
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 1962
    iget-object v1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1963
    iget-object v1, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1964
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/TopbarBinding;->tvSn:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1965
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvSn:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 1967
    iget v0, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v6, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v6

    if-ne v0, v6, :cond_2

    .line 1968
    iget-object v0, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1969
    iget-object v0, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1970
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/TopbarBinding;->tvSn:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1971
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvSn:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1974
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvSn:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1976
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1977
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1979
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.qianhe.xfix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1980
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->ivLogo:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_topbar_logo_overseas:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1982
    :cond_4
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->isZH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1983
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->ivLogo:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_topbar_logo_ch:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1985
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->ivLogo:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_topbar_logo_en:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private initViewPager()V
    .locals 4

    .line 538
    new-instance v0, Lcom/qianhe/yct/fragment/HomeFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/fragment/HomeFragment;-><init>()V

    new-instance v1, Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-direct {v1}, Lcom/qianhe/yct/fragment/SettingFragment;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 541
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityMainBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/qianhe/yct/MainActivity$3;

    invoke-direct {v2, p0, p0, v0}, Lcom/qianhe/yct/MainActivity$3;-><init>(Lcom/qianhe/yct/MainActivity;Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 553
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->bottomNav:Lcom/qianhe/yct/view/SimpleBottomNav;

    new-instance v1, Lcom/qianhe/yct/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/MainActivity$4;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/SimpleBottomNav;->setOnNavItemClickListener(Lcom/qianhe/yct/view/SimpleBottomNav$OnNavItemClickListener;)V

    .line 560
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/qianhe/yct/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/MainActivity$5;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method private isZpyDeviceConnected()Z
    .locals 2

    .line 327
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->getCurrentDevice()Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget v0, v0, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private postSyncUi(Ljava/lang/Runnable;)V
    .locals 1

    .line 1416
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1417
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 1418
    :cond_1
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda25;-><init>(Lcom/qianhe/yct/MainActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pushProjectsBelongEngineeringToServer(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;)V"
        }
    .end annotation

    .line 1105
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v0, v1, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->syncProjectsBelongEngineering(Lcom/qianhe/baselib/bean/InsNavi;Ljava/util/List;)V

    return-void
.end method

.method private requestNfcPermission()V
    .locals 2

    .line 349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 350
    const-string v0, "android.permission.NFC"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-static {p0, v0, v1}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/qianhe/yct/MainActivity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private shouldDeferProjectUploadUntilEngineeringSynced(Lcom/qianhe/baselib/base/BaseProEntity;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1362
    iget-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_1

    .line 1363
    :cond_0
    iget-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_7

    iget-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1366
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1367
    :cond_2
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 1369
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v5, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    invoke-virtual {v1, v5, v6}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p1

    if-nez p1, :cond_4

    return v0

    .line 1371
    :cond_4
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_6

    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_1
    return v0
.end method

.method private shouldUploadBelongUid(ZJ)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 678
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-nez p1, :cond_2

    .line 679
    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 681
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1, p2, p3}, Lcom/qianhe/yct/db/DatabaseManager;->isLoginSyncBelongUid(J)Z

    move-result p1

    return p1
.end method

.method private startDataSyncAfterTokenValid(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 639
    iput-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->pendingProjectSyncAfterEngineering:Z

    .line 640
    iput-boolean p1, p0, Lcom/qianhe/yct/MainActivity;->pendingPointGroupSyncAfterEngineering:Z

    .line 641
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->pendingEngineeringCreateLocalIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, 0x0

    .line 642
    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->pendingServerCurrentUuid:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 643
    iput-wide v0, p0, Lcom/qianhe/yct/MainActivity;->pendingServerCurrentId:J

    .line 644
    iget-boolean v2, p0, Lcom/qianhe/yct/MainActivity;->afterLogin:Z

    if-eqz v2, :cond_1

    .line 645
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 646
    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    .line 647
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseManager;->removeUnassignedDuplicatesAlreadyOwnedByCurrentUser()V

    .line 649
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseManager;->queryUnassignedEngineering()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedEngineerings:Ljava/util/List;

    .line 650
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseManager;->queryUnassignedProjectsAcrossEngineerings()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedProjects:Ljava/util/List;

    .line 651
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseManager;->queryUnassignedExcavators()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedExcavators:Ljava/util/List;

    .line 652
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseManager;->queryUnassignedShovels()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedShovels:Ljava/util/List;

    .line 653
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseManager;->queryUnassignedGnssTransParams()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedTransParams:Ljava/util/List;

    .line 654
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseManager;->queryUnassignedPointGroups()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedPointGroups:Ljava/util/List;

    .line 655
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseManager;->claimUnassignedDataToCurrentUser()V

    goto :goto_0

    .line 657
    :cond_1
    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedEngineerings:Ljava/util/List;

    .line 658
    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedProjects:Ljava/util/List;

    .line 659
    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedExcavators:Ljava/util/List;

    .line 660
    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedShovels:Ljava/util/List;

    .line 661
    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedTransParams:Ljava/util/List;

    .line 662
    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedPointGroups:Ljava/util/List;

    .line 663
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 664
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/UserSession;->isLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseManager;->currentBelongUid()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    .line 665
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseManager;->removeUnassignedDuplicatesAlreadyOwnedByCurrentUser()V

    .line 666
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseManager;->claimUnassignedDataToCurrentUser()V

    .line 669
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->synExcavator()V

    .line 670
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->synBucket()V

    .line 671
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->synEngineering()V

    .line 672
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->synTransParam()V

    return-void
.end method

.method private startLogUploadTimer()V
    .locals 8

    .line 443
    const-string/jumbo v0, "\u5f00\u542f\u5b9a\u65f6\u5668(\u65e5\u5fd7\u4e0a\u4f20\u67e5\u8be2)\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->logUploadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->logUploadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->logUploadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/qianhe/yct/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/MainActivity$2;-><init>(Lcom/qianhe/yct/MainActivity;)V

    const-wide/16 v5, 0xb4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->logUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private startSessionAfterStorageReady()V
    .locals 1

    .line 208
    const-string v0, "basic"

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->sessionStartedAfterStorage:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->sessionStartedAfterStorage:Z

    .line 212
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getDeviceUniqueId()V

    goto :goto_0

    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->startLogUploadTimer()V

    .line 218
    :goto_0
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->checkTokenValid()V

    .line 219
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->checkNetworkAfterPermission()V

    :cond_2
    :goto_1
    return-void
.end method

.method private stopLogUploadTimer()V
    .locals 2

    .line 454
    const-string/jumbo v0, "\u505c\u6b62\u5b9a\u65f6\u5668(\u65e5\u5fd7\u4e0a\u4f20\u67e5\u8be2)\u3002"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->logUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 456
    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->logUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 457
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->logUploadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method private synBucket()V
    .locals 2

    .line 846
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 847
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    return-void

    .line 850
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const/4 v1, 0x0

    .line 851
    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->bucketLocalList:Ljava/util/List;

    const/4 v0, 0x0

    .line 852
    iput v0, p0, Lcom/qianhe/yct/MainActivity;->bucketIndex:I

    .line 854
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryBucket()V

    return-void
.end method

.method private synEngineering()V
    .locals 13

    .line 956
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 957
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda18;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    return-void

    .line 960
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->isEngineeringSyncing:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 961
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 962
    iput-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->isEngineeringSyncing:Z

    .line 963
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 964
    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllEngineering()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->engineeringLocalList:Ljava/util/List;

    .line 966
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    const/4 v11, 0x1

    const/16 v12, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryGnssEngineering(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JJII)V

    return-void
.end method

.method private synExcavator()V
    .locals 3

    .line 726
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 727
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda15;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    return-void

    .line 730
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const-wide/16 v1, 0x0

    .line 731
    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByUserId(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->excavatorLocalList:Ljava/util/List;

    const/4 v0, 0x0

    .line 732
    iput v0, p0, Lcom/qianhe/yct/MainActivity;->excavatorIndex:I

    .line 734
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryExcavator()V

    return-void
.end method

.method private synPointGroup()V
    .locals 11

    .line 971
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 972
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    return-void

    .line 975
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 976
    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 978
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    const/4 v9, 0x1

    const/16 v10, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryPointGroup(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JJII)V

    return-void
.end method

.method private synProject()V
    .locals 3

    .line 618
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 619
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda17;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    return-void

    .line 622
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 623
    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->cleanupDuplicateProjectsByUuid()I

    .line 625
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->applyLatestCurrentEngineeringParams()V

    .line 627
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->renameUnsyncedLocalDuplicatesForAllEngineerings()V

    .line 628
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->getLoacalData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->localAll:Ljava/util/List;

    const/4 v0, 0x1

    .line 629
    iput-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->projectSyncActive:Z

    .line 631
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryProjectByType(Ljava/lang/Integer;Z)V

    return-void
.end method

.method private synTransParam()V
    .locals 12

    .line 1818
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1819
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda14;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    return-void

    .line 1822
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 1823
    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllGnssTransParams()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->transParamLocalList:Ljava/util/List;

    const/4 v0, 0x0

    .line 1824
    iput v0, p0, Lcom/qianhe/yct/MainActivity;->transParamIndex:I

    .line 1826
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    const/4 v10, 0x1

    const/16 v11, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryGnssTransParam(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;JJII)V

    return-void
.end method

.method private syncAllGroupPoints()V
    .locals 19

    move-object/from16 v0, p0

    .line 1006
    iget-object v1, v0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-nez v1, :cond_0

    .line 1007
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 1009
    :cond_0
    iget-object v1, v0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllPointGroups()Ljava/util/List;

    move-result-object v1

    .line 1010
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/PointGroupEntity;

    if-eqz v2, :cond_1

    .line 1011
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 1012
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-wide v9, v2, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    const/16 v17, 0x1

    const/16 v18, 0xc8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    invoke-virtual/range {v8 .. v18}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryPoints(JLjava/util/List;Ljava/lang/String;JJII)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private syncEngineeringCurrentUsageToServer(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;J)V
    .locals 4

    if-eqz p1, :cond_3

    .line 1244
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1245
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_1

    goto :goto_0

    .line 1248
    :cond_1
    invoke-static {p1, p3, p4, p5}, Lcom/qianhe/yct/db/DatabaseManager;->isSameServerEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;J)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    .line 1252
    iput p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    .line 1253
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 1255
    iget-object p2, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p2, p3, p4, p5}, Lcom/qianhe/yct/db/DatabaseManager;->findEngineeringByServerIdentity(Ljava/lang/String;J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1256
    iget-wide p3, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long p1, p3, v0

    if-eqz p1, :cond_3

    iget-wide p3, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    cmp-long p1, p3, v2

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 1257
    iput p1, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    .line 1258
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private syncFinish()V
    .locals 2

    const/4 v0, 0x0

    .line 1376
    iput-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->projectSyncActive:Z

    .line 1377
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->ensureCurrentEngineeringReady()V

    .line 1378
    iget-boolean v1, p0, Lcom/qianhe/yct/MainActivity;->afterLogin:Z

    .line 1379
    iput-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->afterLogin:Z

    .line 1380
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda26;-><init>(Lcom/qianhe/yct/MainActivity;Z)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->postSyncUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;)V"
        }
    .end annotation

    .line 1680
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->resolveSameNameOnSync(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    return-void
.end method

.method private tryStartDeferredProjectSync()V
    .locals 3

    .line 686
    iget-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->pendingProjectSyncAfterEngineering:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->pendingPointGroupSyncAfterEngineering:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 687
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->isEngineeringSyncing:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->pendingEngineeringCreateLocalIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 690
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->applyPendingServerCurrentEngineering()V

    .line 691
    iget-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->pendingProjectSyncAfterEngineering:Z

    .line 692
    iget-boolean v1, p0, Lcom/qianhe/yct/MainActivity;->pendingPointGroupSyncAfterEngineering:Z

    const/4 v2, 0x0

    .line 693
    iput-boolean v2, p0, Lcom/qianhe/yct/MainActivity;->pendingProjectSyncAfterEngineering:Z

    .line 694
    iput-boolean v2, p0, Lcom/qianhe/yct/MainActivity;->pendingPointGroupSyncAfterEngineering:Z

    if-eqz v0, :cond_3

    .line 695
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->synProject()V

    :cond_3
    if-eqz v1, :cond_4

    .line 696
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->synPointGroup()V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateBucketData(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShovelEntity;",
            ">;)V"
        }
    .end annotation

    .line 889
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 890
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/MainActivity;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    return-void

    .line 893
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 894
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 895
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 896
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 897
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 898
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_8

    .line 899
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 900
    iget-object v5, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 902
    iget-object v7, v6, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v6, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    :cond_4
    iget-object v7, v6, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v8, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 904
    iget-wide v7, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    iget-wide v9, v6, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    cmp-long v11, v7, v9

    if-ltz v11, :cond_6

    iget-wide v7, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    iget-wide v9, v6, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    cmp-long v11, v7, v9

    if-gtz v11, :cond_5

    goto :goto_1

    .line 908
    :cond_5
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    const/4 v6, 0x1

    .line 909
    iput-boolean v6, p0, Lcom/qianhe/yct/MainActivity;->isBucketChange:Z

    goto :goto_0

    .line 905
    :cond_6
    :goto_1
    iget-wide v7, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    iput-wide v7, v6, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    .line 906
    invoke-virtual {v6, v3}, Lcom/qianhe/baselib/bean/ShovelEntity;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v7, v6}, Lcom/qianhe/yct/db/DatabaseManager;->updateShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)I

    goto :goto_0

    .line 914
    :cond_7
    iget-boolean v2, p0, Lcom/qianhe/yct/MainActivity;->isBucketChange:Z

    if-eqz v2, :cond_8

    .line 915
    iput-boolean v4, p0, Lcom/qianhe/yct/MainActivity;->isBucketChange:Z

    .line 917
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryBucket()V

    return-void

    .line 921
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 922
    iget-object v3, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 923
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v5, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 924
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 925
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/db/DatabaseManager;->insertShovel(Lcom/qianhe/baselib/bean/ShovelEntity;)J

    goto :goto_2

    .line 927
    :cond_a
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 928
    iget-wide v5, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    iget-wide v7, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_b

    .line 929
    iget-wide v5, v3, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    .line 930
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/db/DatabaseManager;->updateShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)I

    goto :goto_2

    .line 932
    :cond_b
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->delBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 933
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    invoke-virtual {v2}, Lcom/qianhe/yct/databinding/ActivityMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v5, v3}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 939
    :cond_c
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->bucketLocalList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    .line 940
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->bucketLocalList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 941
    iget-object v2, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 942
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/db/DatabaseManager;->deleteShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)J

    goto :goto_3

    .line 946
    :cond_e
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->uploadBucket()V

    return-void
.end method

.method private updateDefaultEngineeringCentralMeridian(D)V
    .locals 7

    .line 498
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 499
    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryDefaultEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 501
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseActivity;->getCentralMeridian(D)I

    move-result p1

    .line 502
    iget p2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    iget-object v4, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    if-eqz v4, :cond_1

    .line 503
    iget-wide v5, v4, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lon0:D

    cmpl-double p2, v5, v1

    if-nez p2, :cond_0

    int-to-double v1, p1

    .line 504
    iput-wide v1, v4, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lon0:D

    .line 505
    iget-object p2, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)I

    .line 506
    iput-boolean v3, p0, Lcom/qianhe/yct/MainActivity;->isUpdateDefaultCM:Z

    .line 507
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u901a\u8fc7GGA\u66f4\u65b0\u9ed8\u8ba4\u5de5\u7a0b\u9ad8\u65af\u6295\u5f71\u4e2d\u592e\u5b50\u5348\u7ebf\u4e3a\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 509
    :cond_0
    iput-boolean v3, p0, Lcom/qianhe/yct/MainActivity;->isUpdateDefaultCM:Z

    return-void

    :cond_1
    const/4 v4, 0x3

    if-ne p2, v4, :cond_3

    .line 511
    iget-object p2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    if-eqz p2, :cond_3

    .line 512
    iget-wide v4, p2, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lon0:D

    cmpl-double v6, v4, v1

    if-nez v6, :cond_2

    int-to-double v1, p1

    .line 513
    iput-wide v1, p2, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lon0:D

    .line 514
    iget-object p2, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)I

    .line 515
    iput-boolean v3, p0, Lcom/qianhe/yct/MainActivity;->isUpdateDefaultCM:Z

    .line 516
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u901a\u8fc7GGA\u66f4\u65b0\u9ed8\u8ba4\u5de5\u7a0b\u6a2a\u8f74\u58a8\u5361\u6258\u6295\u5f71\u4e2d\u592e\u5b50\u5348\u7ebf\u4e3a\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 518
    :cond_2
    iput-boolean v3, p0, Lcom/qianhe/yct/MainActivity;->isUpdateDefaultCM:Z

    return-void

    .line 521
    :cond_3
    iput-boolean v3, p0, Lcom/qianhe/yct/MainActivity;->isUpdateDefaultCM:Z

    :cond_4
    return-void
.end method

.method private updateEngineeringData(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1128
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1130
    new-instance v2, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda30;

    invoke-direct {v2, v0, v1}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda30;-><init>(Lcom/qianhe/yct/MainActivity;Ljava/util/List;)V

    invoke-direct {v0, v2}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    return-void

    .line 1133
    :cond_0
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    iput-object v2, v0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-nez v1, :cond_1

    .line 1134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    iget-object v4, v0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllEngineering()Ljava/util/List;

    move-result-object v4

    .line 1138
    invoke-static {v4}, Lcom/qianhe/yct/db/DatabaseManager;->findCurrentUsageEngineering(Ljava/util/List;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v5

    .line 1140
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_f

    .line 1141
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1142
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 1143
    iget-object v9, v8, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1144
    iget-object v9, v8, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;

    .line 1147
    iget-object v11, v10, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->uuid:Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1148
    iget-object v11, v10, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->uuid:Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    :cond_4
    iget-object v11, v10, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->uuid:Ljava/lang/String;

    iget-object v12, v8, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1151
    iget v11, v8, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    if-ne v11, v7, :cond_5

    goto :goto_0

    .line 1155
    :cond_5
    iget-wide v11, v8, Lcom/qianhe/baselib/bean/EngineeringEntity;->version:J

    iget-wide v13, v10, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->version:J

    cmp-long v15, v11, v13

    if-ltz v15, :cond_9

    cmp-long v15, v11, v13

    if-nez v15, :cond_6

    move-wide/from16 v16, v11

    iget-wide v11, v8, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    move-object v15, v8

    iget-wide v7, v10, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->updateEpoch:J

    cmp-long v18, v11, v7

    if-gez v18, :cond_7

    goto :goto_1

    :cond_6
    move-object v15, v8

    move-wide/from16 v16, v11

    :cond_7
    cmp-long v7, v16, v13

    if-gtz v7, :cond_8

    cmp-long v7, v16, v13

    if-nez v7, :cond_b

    .line 1161
    iget-wide v7, v15, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    iget-wide v10, v10, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->updateEpoch:J

    cmp-long v12, v7, v10

    if-lez v12, :cond_b

    .line 1164
    :cond_8
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v7

    invoke-virtual {v7, v15}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    goto :goto_2

    :cond_9
    move-object v15, v8

    .line 1157
    :goto_1
    invoke-direct {v0, v10}, Lcom/qianhe/yct/MainActivity;->convertToEngineeringEntity(Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v7

    .line 1158
    iget-wide v11, v15, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iput-wide v11, v7, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    .line 1159
    iget v8, v10, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->currentUsage:I

    iput v8, v7, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    .line 1160
    iget-object v8, v0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v8, v7}, Lcom/qianhe/yct/db/DatabaseManager;->updateEngineeringFromServer(Lcom/qianhe/baselib/bean/EngineeringEntity;)I

    goto :goto_2

    :cond_a
    move-object v15, v8

    :cond_b
    :goto_2
    move-object v8, v15

    const/4 v7, 0x1

    goto :goto_0

    .line 1171
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;

    .line 1172
    iget-object v8, v7, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->uuid:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 1173
    iget-object v8, v0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v9, v7, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByName(Ljava/lang/String;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 1174
    iget v9, v8, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_e

    .line 1175
    invoke-direct {v0, v7}, Lcom/qianhe/yct/MainActivity;->convertToEngineeringEntity(Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v9

    .line 1176
    iget-wide v10, v8, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iput-wide v10, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    .line 1177
    iget v10, v7, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->currentUsage:I

    iput v10, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    .line 1178
    iget-object v10, v0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v10, v9}, Lcom/qianhe/yct/db/DatabaseManager;->updateEngineeringFromServer(Lcom/qianhe/baselib/bean/EngineeringEntity;)I

    .line 1179
    iget-object v9, v0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v10, v8, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iget-wide v12, v7, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->id:J

    .line 1180
    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/qianhe/yct/db/DatabaseManager;->updateProjectsBelongEngineeringId(JJ)Ljava/util/List;

    move-result-object v7

    .line 1179
    invoke-direct {v0, v7}, Lcom/qianhe/yct/MainActivity;->pushProjectsBelongEngineeringToServer(Ljava/util/List;)V

    .line 1181
    iget-object v7, v0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v8, v8, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    .line 1182
    invoke-virtual {v7, v8, v9}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v8

    .line 1181
    invoke-virtual {v7, v8}, Lcom/qianhe/yct/db/DatabaseManager;->renameUnsyncedLocalDuplicatesInEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    goto :goto_3

    .line 1184
    :cond_e
    invoke-direct {v0, v7}, Lcom/qianhe/yct/MainActivity;->convertToEngineeringEntity(Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v8

    .line 1185
    iget-object v9, v0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v9, v8}, Lcom/qianhe/yct/db/DatabaseManager;->insertEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-lez v12, :cond_d

    .line 1187
    iget-object v10, v0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v11, v7, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->id:J

    .line 1188
    invoke-virtual {v10, v8, v9, v11, v12}, Lcom/qianhe/yct/db/DatabaseManager;->updateProjectsBelongEngineeringId(JJ)Ljava/util/List;

    move-result-object v7

    .line 1187
    invoke-direct {v0, v7}, Lcom/qianhe/yct/MainActivity;->pushProjectsBelongEngineeringToServer(Ljava/util/List;)V

    .line 1189
    iget-object v7, v0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 1190
    invoke-virtual {v7, v8, v9}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v8

    .line 1189
    invoke-virtual {v7, v8}, Lcom/qianhe/yct/db/DatabaseManager;->renameUnsyncedLocalDuplicatesInEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    goto :goto_3

    .line 1198
    :cond_f
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 1200
    iget v6, v4, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v10, 0x1

    if-ne v6, v10, :cond_11

    goto :goto_4

    .line 1201
    :cond_11
    iget-object v6, v4, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, v4, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 1202
    iget-object v6, v0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v7, v4, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {v6, v7, v8}, Lcom/qianhe/yct/db/DatabaseManager;->deleteEngineeringById(J)J

    goto :goto_4

    .line 1205
    :cond_12
    invoke-direct {v0, v1, v5}, Lcom/qianhe/yct/MainActivity;->ensureDefaultEngineeringAfterSync(Ljava/util/List;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 1206
    iget-object v1, v0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllEngineering()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/yct/MainActivity;->engineeringLocalList:Ljava/util/List;

    .line 1207
    invoke-direct {v0}, Lcom/qianhe/yct/MainActivity;->uploadEngineering()V

    return-void
.end method

.method private updateExcavatorData(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;)V"
        }
    .end annotation

    .line 769
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 770
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/MainActivity;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    return-void

    .line 773
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 775
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 776
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 777
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByUserId(J)Ljava/util/List;

    move-result-object v2

    .line 778
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_8

    .line 780
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 781
    iget-object v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 783
    iget-object v7, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    :cond_4
    iget-object v7, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    iget-object v8, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 785
    iget-wide v7, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    iget-wide v9, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    cmp-long v11, v7, v9

    if-ltz v11, :cond_6

    iget-wide v7, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    iget-wide v9, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    cmp-long v11, v7, v9

    if-gtz v11, :cond_5

    goto :goto_1

    .line 793
    :cond_5
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    const/4 v6, 0x1

    .line 794
    iput-boolean v6, p0, Lcom/qianhe/yct/MainActivity;->isExcavatorChange:Z

    goto :goto_0

    .line 787
    :cond_6
    :goto_1
    iget-wide v7, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    iput-wide v7, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    .line 788
    iget v7, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->showUnit:I

    iput v7, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->showUnit:I

    .line 789
    iget-object v7, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    iget-object v8, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/qianhe/yct/utils/SyncNameHelper;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    .line 790
    invoke-virtual {v6, v3}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v7, v6}, Lcom/qianhe/yct/db/DatabaseManager;->updateExcavatorById(Lcom/qianhe/baselib/bean/ExcavatorEntity;)I

    goto :goto_0

    .line 799
    :cond_7
    iget-boolean v2, p0, Lcom/qianhe/yct/MainActivity;->isExcavatorChange:Z

    if-eqz v2, :cond_8

    .line 800
    iput-boolean v4, p0, Lcom/qianhe/yct/MainActivity;->isExcavatorChange:Z

    .line 801
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryExcavator()V

    return-void

    .line 805
    :cond_8
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 807
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 808
    iget-object v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 809
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v5, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 810
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 811
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/db/DatabaseManager;->insertExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)J

    goto :goto_2

    .line 813
    :cond_a
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 814
    iget-wide v5, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    iget-wide v7, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_b

    .line 815
    iget-wide v5, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    .line 816
    iget-object v3, v3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    iget-object v5, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/qianhe/yct/utils/SyncNameHelper;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    .line 817
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/db/DatabaseManager;->updateExcavatorById(Lcom/qianhe/baselib/bean/ExcavatorEntity;)I

    goto :goto_2

    .line 819
    :cond_b
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->delExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 820
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    invoke-virtual {v2}, Lcom/qianhe/yct/databinding/ActivityMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/MainActivity$8;

    invoke-direct {v5, p0, v3}, Lcom/qianhe/yct/MainActivity$8;-><init>(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 832
    :cond_c
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->excavatorLocalList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    .line 833
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->excavatorLocalList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 834
    iget-object v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 836
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v2, :cond_d

    .line 837
    invoke-virtual {v2, v1}, Lcom/qianhe/yct/db/DatabaseManager;->deleteExcavatorById(Lcom/qianhe/baselib/bean/ExcavatorEntity;)J

    goto :goto_3

    .line 842
    :cond_e
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->uploadExcavator()V

    return-void
.end method

.method private updateNfcForegroundDispatch()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->nfcTagReader:Lcom/qianhe/baselib/utils/NfcTagReader;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/qianhe/baselib/utils/NfcTagReader;->hasNfcPermission(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->isZpyDeviceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->nfcTagReader:Lcom/qianhe/baselib/utils/NfcTagReader;

    invoke-virtual {v0, p0}, Lcom/qianhe/baselib/utils/NfcTagReader;->disableForegroundDispatch(Landroid/app/Activity;)V

    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->nfcTagReader:Lcom/qianhe/baselib/utils/NfcTagReader;

    invoke-virtual {v0, p0}, Lcom/qianhe/baselib/utils/NfcTagReader;->enableForegroundDispatch(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateTransParamData(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;",
            ">;)V"
        }
    .end annotation

    .line 1877
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1879
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda22;-><init>(Lcom/qianhe/yct/MainActivity;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    return-void

    .line 1882
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 1883
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1884
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    .line 1886
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1889
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1890
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllGnssTransParams()Ljava/util/List;

    move-result-object v2

    .line 1891
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_9

    .line 1892
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 1893
    iget-object v5, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1894
    iget-object v5, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1896
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;

    .line 1897
    iget v7, v6, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->state:I

    if-eqz v7, :cond_5

    goto :goto_0

    .line 1898
    :cond_5
    iget-object v7, v6, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->uuid:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v6, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->uuid:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1899
    :cond_6
    iget-object v7, v6, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->uuid:Ljava/lang/String;

    iget-object v8, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1901
    iget-wide v7, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->version:J

    iget-wide v9, v6, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->version:J

    cmp-long v11, v7, v9

    if-gtz v11, :cond_7

    .line 1902
    iget-object v7, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v7, v6}, Lcom/qianhe/yct/db/DatabaseManager;->fromQueryItem(Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v6

    .line 1903
    iget-wide v7, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    iput-wide v7, v6, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    .line 1904
    invoke-virtual {v6, v3}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1905
    iget-object v7, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v7, v6}, Lcom/qianhe/yct/db/DatabaseManager;->updateGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)I

    goto :goto_0

    .line 1908
    :cond_7
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    .line 1909
    iput-boolean v4, p0, Lcom/qianhe/yct/MainActivity;->isTransParamChange:Z

    goto :goto_0

    .line 1914
    :cond_8
    iget-boolean v2, p0, Lcom/qianhe/yct/MainActivity;->isTransParamChange:Z

    if-eqz v2, :cond_9

    const/4 p1, 0x0

    .line 1915
    iput-boolean p1, p0, Lcom/qianhe/yct/MainActivity;->isTransParamChange:Z

    .line 1916
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    const/4 v9, 0x1

    const/16 v10, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryGnssTransParam(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;JJII)V

    return-void

    .line 1921
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;

    .line 1922
    iget v3, v2, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->state:I

    if-eqz v3, :cond_b

    goto :goto_1

    .line 1923
    :cond_b
    iget-object v3, v2, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->uuid:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1924
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v5, v2, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByName(Ljava/lang/String;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v3

    if-nez v3, :cond_c

    .line 1926
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/db/DatabaseManager;->fromQueryItem(Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/db/DatabaseManager;->insertGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)J

    goto :goto_1

    .line 1929
    :cond_c
    iget-wide v5, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->version:J

    iget-wide v7, v2, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->version:J

    cmp-long v9, v5, v7

    if-gtz v9, :cond_d

    .line 1930
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v2}, Lcom/qianhe/yct/db/DatabaseManager;->fromQueryItem(Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v2

    .line 1931
    iget-wide v5, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    .line 1932
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/db/DatabaseManager;->updateGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)I

    goto :goto_1

    .line 1934
    :cond_d
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v5

    iget-wide v6, v2, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->id:J

    invoke-virtual {v5, v4, v6, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->deleteGnssTransParam(ZJ)V

    .line 1935
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    invoke-virtual {v2}, Lcom/qianhe/yct/databinding/ActivityMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda23;

    invoke-direct {v5, v3}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda23;-><init>(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1943
    :cond_e
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->transParamLocalList:Ljava/util/List;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    .line 1944
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->transParamLocalList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 1945
    iget-object v2, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1946
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    invoke-virtual {v2, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->deleteGnssTransParamByLocalId(J)J

    goto :goto_2

    .line 1950
    :cond_10
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllGnssTransParams()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->transParamLocalList:Ljava/util/List;

    .line 1951
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->uploadTransParam()V

    return-void
.end method

.method private uploadBucket()V
    .locals 5

    .line 858
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedShovels:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->bucketLocalList:Ljava/util/List;

    .line 860
    :goto_0
    iget v1, p0, Lcom/qianhe/yct/MainActivity;->bucketIndex:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 861
    iget v1, p0, Lcom/qianhe/yct/MainActivity;->bucketIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 862
    iget-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedShovels:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->belong_uid:J

    .line 863
    invoke-direct {p0, v1, v3, v4}, Lcom/qianhe/yct/MainActivity;->shouldUploadBelongUid(ZJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 864
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    return-void

    .line 866
    :cond_2
    iget v0, p0, Lcom/qianhe/yct/MainActivity;->bucketIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/qianhe/yct/MainActivity;->bucketIndex:I

    .line 867
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->uploadBucket()V

    :cond_3
    return-void
.end method

.method private uploadEngineering()V
    .locals 7

    .line 1043
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedEngineerings:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->engineeringLocalList:Ljava/util/List;

    :goto_0
    if-nez v0, :cond_1

    .line 1046
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->tryStartDeferredProjectSync()V

    return-void

    .line 1049
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->pendingEngineeringCreateLocalIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1050
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v2, :cond_2

    .line 1053
    iget-object v3, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedEngineerings:Ljava/util/List;

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    iget-wide v5, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->belongUid:J

    .line 1054
    invoke-direct {p0, v4, v5, v6}, Lcom/qianhe/yct/MainActivity;->shouldUploadBelongUid(ZJ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1055
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->pendingEngineeringCreateLocalIds:Ljava/util/Set;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1056
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1060
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 1062
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    goto :goto_3

    .line 1064
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->pendingEngineeringCreateLocalIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1065
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->tryStartDeferredProjectSync()V

    :cond_6
    return-void
.end method

.method private uploadExcavator()V
    .locals 5

    .line 738
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedExcavators:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->excavatorLocalList:Ljava/util/List;

    .line 740
    :goto_0
    iget v1, p0, Lcom/qianhe/yct/MainActivity;->excavatorIndex:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 741
    iget v1, p0, Lcom/qianhe/yct/MainActivity;->excavatorIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 742
    iget-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedExcavators:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->userId:J

    .line 743
    invoke-direct {p0, v1, v3, v4}, Lcom/qianhe/yct/MainActivity;->shouldUploadBelongUid(ZJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 745
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void

    .line 747
    :cond_2
    iget v0, p0, Lcom/qianhe/yct/MainActivity;->excavatorIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/qianhe/yct/MainActivity;->excavatorIndex:I

    .line 748
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->uploadExcavator()V

    :cond_3
    return-void
.end method

.method private uploadTransParam()V
    .locals 7

    .line 1830
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedTransParams:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1831
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->transParamLocalList:Ljava/util/List;

    :goto_0
    if-eqz v0, :cond_4

    .line 1832
    iget v1, p0, Lcom/qianhe/yct/MainActivity;->transParamIndex:I

    if-ltz v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1833
    iget v1, p0, Lcom/qianhe/yct/MainActivity;->transParamIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 1834
    iget-object v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedTransParams:Ljava/util/List;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->belongUid:J

    .line 1835
    invoke-direct {p0, v1, v3, v4}, Lcom/qianhe/yct/MainActivity;->shouldUploadBelongUid(ZJ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1836
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    return-void

    .line 1838
    :cond_3
    iget v0, p0, Lcom/qianhe/yct/MainActivity;->transParamIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/qianhe/yct/MainActivity;->transParamIndex:I

    .line 1839
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->uploadTransParam()V

    :cond_4
    return-void
.end method


# virtual methods
.method protected beforePromptOpenSharedProject()V
    .locals 0

    .line 1718
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->finishNotMainActivity()V

    return-void
.end method

.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->ggaLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 490
    iget-object v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    if-ne v0, v1, :cond_1

    .line 491
    iget v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    if-lez v0, :cond_1

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/qianhe/yct/MainActivity;->isUpdateDefaultCM:Z

    if-nez p1, :cond_1

    .line 492
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/MainActivity;->updateDefaultEngineeringCentralMeridian(D)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 5

    .line 225
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->startSessionAfterStorageReady()V

    .line 226
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 227
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sim\u5361\u4fe1\u606f\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0c"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 232
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5dee\u5206\u5ba2\u6237\u7aefso\u5305\u7248\u672c\u2014\u2014> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qh/diffclient/DiffClient;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bfb\u53d6\u5dee\u5206\u5ba2\u6237\u7aefso\u7248\u672c\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 237
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u76f4\u901a\u529f\u80fdso\u5305\u7248\u672c\u2014\u2014> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qh/yctdevice/YctDevice;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bfb\u53d6\u76f4\u901a\u529f\u80fdso\u7248\u672c\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 241
    :goto_1
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->initApkList(Lcom/qianhe/baselib/enums/DeviceType;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5f53\u524d\u624b\u673a\u4fe1\u606f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SDK:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 244
    const-string/jumbo v0, "\u5f53\u524d\u8f6f\u4ef6\u7248\u672c\u53f7: 2.0.2609.109(82) \u6784\u5efa\u65f6\u95f4: 202609091412"

    .line 245
    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 247
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f53\u524dAPK\u4fe1\u606f\uff1astore\uff0ctargetSdk\u7248\u672c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f53\u524dAPK\u4fe1\u606f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 253
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5206\u8fa8\u7387\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u00d7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->dataBaseColumnReName()V

    .line 256
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda19;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    .line 261
    invoke-static {}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->getInstance()Lcom/qianhe/yct/provider/NetworkLocationProvider;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/MainActivity$1;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->getNetworkLocation(Landroid/content/Context;Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;)V

    .line 279
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->initNFC()V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->ivBackTb:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->app_name:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$color;->theme:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 465
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 466
    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TopbarBinding;->tvDemoTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TopbarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected ivBackClick()V
    .locals 0

    .line 0
    return-void
.end method

.method public observeGGA()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->ggaLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 2054
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->exitDialogFragment:Lcom/qianhe/yct/dialog/ExitDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->exitDialogFragment:Lcom/qianhe/yct/dialog/ExitDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->exitDialogFragment:Lcom/qianhe/yct/dialog/ExitDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2061
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->stopService()V

    .line 2062
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    .line 2055
    :cond_1
    :goto_0
    new-instance v0, Lcom/qianhe/yct/dialog/ExitDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/ExitDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->exitDialogFragment:Lcom/qianhe/yct/dialog/ExitDialogFragment;

    .line 2056
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "ExitDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 2057
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2058
    const-string v1, "requestKey"

    const-string v2, "exit"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->exitDialogFragment:Lcom/qianhe/yct/dialog/ExitDialogFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityMainBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    .line 176
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/application/YCTApplication;->setAppVersionCheckedComplete(Z)V

    .line 180
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityMainBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 181
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->initViewPager()V

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/MainActivity;)V

    const-string v1, "exit"

    invoke-virtual {p1, v1, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 2074
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 2075
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 2076
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkDataLoader;->cancelRequest()V

    .line 2077
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->release()V

    .line 2078
    invoke-static {}, Lcom/qianhe/yct/utils/BsPatchManager;->getInstance()Lcom/qianhe/yct/utils/BsPatchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/BsPatchManager;->release()V

    .line 2079
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->stopLogUploadTimer()V

    .line 2080
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->close()V

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 2083
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->nfcTagReader:Lcom/qianhe/baselib/utils/NfcTagReader;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/qianhe/baselib/utils/NfcTagReader;->hasNfcPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2084
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->nfcTagReader:Lcom/qianhe/baselib/utils/NfcTagReader;

    invoke-virtual {v0, p0}, Lcom/qianhe/baselib/utils/NfcTagReader;->disableForegroundDispatch(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2087
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nfcTagReader\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 2090
    :cond_2
    :goto_0
    invoke-static {}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->getInstance()Lcom/qianhe/yct/provider/NetworkLocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->reset()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1752
    iget-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->isPause:Z

    if-nez v0, :cond_2

    .line 1753
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;->result:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1754
    iget-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->isTipRegisterOk:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1755
    iput-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->isTipRegisterOk:Z

    .line 1757
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, ""

    if-ne v0, v1, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "base_deviceSn"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1760
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "deviceSn"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1762
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1764
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/qianhe/yct/R$string;->registered_success:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 1765
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;->code:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 1733
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Lcom/qianhe/yct/event/BluetoothConnectStateEvent;)V

    .line 1734
    iget-object v1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->state:I

    sget-object v2, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1735
    iget-boolean v1, p0, Lcom/qianhe/yct/MainActivity;->isPause:Z

    if-eqz v1, :cond_0

    .line 1736
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/TopbarBinding;->tvGotoConnect:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1737
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityMainBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 1738
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelUpgradeingDialog()V

    .line 1740
    :cond_0
    iget-object v1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    .line 1741
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;->myDevice:Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x5

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1742
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/TopbarBinding;->tvSn:Landroid/widget/TextView;

    const-string v2, "SN:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1743
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityMainBinding;->topBar:Lcom/qianhe/yct/databinding/TopbarBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/TopbarBinding;->tvSn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1746
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->updateNfcForegroundDispatch()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CheckTokenResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 571
    iget v0, p1, Lcom/qianhe/yct/event/CheckTokenResponse;->state:I

    if-nez v0, :cond_2

    .line 572
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object p1

    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getUserId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/qh/yctdevice/YctDevice;->notifyUserLogged(J)V

    .line 574
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->isSynDataFlag()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/qianhe/yct/MainActivity;->skipCheckTokenDataSync:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->startDataSyncAfterTokenValid(Z)V

    return-void

    .line 575
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->skipCheckTokenDataSync:Z

    return-void

    .line 581
    :cond_2
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 583
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->readClipboard()Ljava/lang/String;

    move-result-object p1

    .line 584
    sget v0, Lcom/qianhe/yct/R$string;->please_enter_share_code:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u526a\u5207\u677f\u5185\u5bb9\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 587
    sget p1, Lcom/qianhe/yct/R$string;->current_not_login:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->goto_login:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/MainActivity$6;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 599
    :cond_3
    const-string/jumbo v0, "token error"

    iget-object p1, p1, Lcom/qianhe/yct/event/CheckTokenResponse;->msg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 600
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/qh/yctdevice/YctDevice;->notifyUserLogged(J)V

    .line 601
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/UserSession;->clearLoginInfo()V

    .line 602
    sget p1, Lcom/qianhe/yct/R$string;->current_login_offline:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->re_login:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/MainActivity$7;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_4
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateEngineeringResponse;)V
    .locals 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_8

    .line 1071
    iget-wide v0, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->localDbId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto/16 :goto_2

    .line 1072
    :cond_0
    iget-object v4, p0, Lcom/qianhe/yct/MainActivity;->pendingEngineeringCreateLocalIds:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1073
    iget v1, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->state:I

    if-nez v1, :cond_6

    iget-wide v4, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->id:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    goto :goto_1

    .line 1080
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1081
    :cond_2
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 1083
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v2, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->localDbId:J

    iget-wide v4, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->id:J

    iget-object v6, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->uuid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/db/DatabaseManager;->updateEngineeringServerIds(JJLjava/lang/String;)V

    .line 1084
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedEngineerings:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1085
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getUserId()J

    move-result-wide v0

    .line 1086
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedEngineerings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v3, :cond_4

    .line 1087
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iget-wide v6, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->localDbId:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    .line 1088
    iput-wide v0, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->belongUid:J

    .line 1089
    iget-wide v4, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->id:J

    iput-wide v4, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    .line 1090
    iget-object v4, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->uuid:Ljava/lang/String;

    iput-object v4, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    goto :goto_0

    .line 1095
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v1, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->localDbId:J

    iget-wide v3, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->id:J

    .line 1096
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->updateProjectsBelongEngineeringId(JJ)Ljava/util/List;

    move-result-object v0

    .line 1097
    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->pushProjectsBelongEngineeringToServer(Ljava/util/List;)V

    .line 1099
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v1, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->localDbId:J

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p1

    .line 1100
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->renameUnsyncedLocalDuplicatesInEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 1101
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->tryStartDeferredProjectSync()V

    return-void

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5de5\u7a0b\u4e0a\u4f20\u5931\u8d25 localId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->localDbId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 1077
    :cond_7
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->tryStartDeferredProjectSync()V

    :cond_8
    :goto_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateProjectResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1428
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/yct/event/CreateProjectResponse;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/DeviceUniqueIdEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 305
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->startLogUploadTimer()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/GnssTransParamResponse;)V
    .locals 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 1847
    :cond_0
    iget v0, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->state:I

    if-nez v0, :cond_4

    iget-wide v0, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    iget-wide v0, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->localDbId:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    .line 1848
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1849
    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 1851
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v2, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->localDbId:J

    iget-wide v4, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->id:J

    iget-object v6, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->uuid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/db/DatabaseManager;->updateGnssTransParamServerIds(JJLjava/lang/String;)V

    .line 1852
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedTransParams:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1853
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getUserId()J

    move-result-wide v0

    .line 1854
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedTransParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eqz v3, :cond_3

    .line 1855
    iget-wide v4, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    iget-wide v6, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->localDbId:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    .line 1856
    iput-wide v0, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->belongUid:J

    .line 1857
    iget-wide v4, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->id:J

    iput-wide v4, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    .line 1858
    iget-object v4, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->uuid:Ljava/lang/String;

    iput-object v4, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    goto :goto_0

    .line 1863
    :cond_4
    iget-object p1, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eqz p1, :cond_5

    .line 1864
    iget p1, p0, Lcom/qianhe/yct/MainActivity;->transParamIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qianhe/yct/MainActivity;->transParamIndex:I

    .line 1865
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->uploadTransParam()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/InitDataEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 2032
    iget-object p1, p1, Lcom/qianhe/yct/event/InitDataEvent;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/MainActivity;->initApkList(Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/PointGroupResponse;)V
    .locals 11
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 1036
    iget v0, p1, Lcom/qianhe/yct/event/PointGroupResponse;->state:I

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-wide v0, p1, Lcom/qianhe/yct/event/PointGroupResponse;->id:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 1037
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v5

    iput-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 1038
    iget-wide v6, p1, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    iget-wide v8, p1, Lcom/qianhe/yct/event/PointGroupResponse;->id:J

    iget-object v10, p1, Lcom/qianhe/yct/event/PointGroupResponse;->uuid:Ljava/lang/String;

    invoke-virtual/range {v5 .. v10}, Lcom/qianhe/yct/db/DatabaseManager;->updatePointGroupServerIds(JJLjava/lang/String;)V

    .line 1039
    iget-object p1, p1, Lcom/qianhe/yct/event/PointGroupResponse;->entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getUserId()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongUid:J

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1110
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1111
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1114
    iget v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;->state:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1120
    :cond_1
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;->list:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/MainActivity;->updateEngineeringData(Ljava/util/List;)V

    .line 1121
    iput-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->isEngineeringSyncing:Z

    .line 1122
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->ensureCurrentEngineeringReady()V

    .line 1124
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->tryStartDeferredProjectSync()V

    return-void

    .line 1115
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->isEngineeringSyncing:Z

    .line 1116
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->ensureCurrentEngineeringReady()V

    .line 1117
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->tryStartDeferredProjectSync()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryGnssTransParamResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 1871
    iget v0, p1, Lcom/qianhe/yct/event/QueryGnssTransParamResponse;->state:I

    if-nez v0, :cond_0

    .line 1872
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryGnssTransParamResponse;->list:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/MainActivity;->updateTransParamData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryPointGroupResponse;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 983
    iget-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->pendingSyncPointsAfterEngineeringSwitch:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 984
    iget v3, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse;->state:I

    if-eqz v3, :cond_0

    goto :goto_0

    .line 992
    :cond_0
    iput-boolean v2, p0, Lcom/qianhe/yct/MainActivity;->pendingSyncPointsAfterEngineeringSwitch:Z

    .line 993
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedPointGroups:Ljava/util/List;

    .line 994
    iput-object v1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedPointGroups:Ljava/util/List;

    .line 995
    new-instance v1, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda13;-><init>(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/yct/event/QueryPointGroupResponse;Ljava/util/List;Z)V

    invoke-direct {p0, v1}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    return-void

    .line 985
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/qianhe/yct/MainActivity;->loginUnassignedPointGroups:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 987
    iput-boolean v2, p0, Lcom/qianhe/yct/MainActivity;->pendingSyncPointsAfterEngineeringSwitch:Z

    .line 988
    new-instance p1, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda12;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-direct {p0, p1}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryPointResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 1019
    iget v0, p1, Lcom/qianhe/yct/event/QueryPointResponse;->state:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/qianhe/yct/event/QueryPointResponse;->list:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1020
    :cond_0
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda16;-><init>(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/yct/event/QueryPointResponse;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryProjectResponse;)V
    .locals 14
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1457
    const-string v0, ","

    if-eqz p1, :cond_0

    iget-boolean v1, p1, Lcom/qianhe/yct/event/QueryProjectResponse;->filterByCurrentEngineering:Z

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 1458
    :cond_0
    iget-boolean v1, p0, Lcom/qianhe/yct/MainActivity;->projectSyncActive:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/qianhe/yct/MainActivity;->afterLogin:Z

    if-nez v1, :cond_1

    goto/16 :goto_8

    .line 1459
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 1460
    new-instance v0, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/qianhe/yct/MainActivity;Lcom/qianhe/yct/event/QueryProjectResponse;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/MainActivity;->executeSyncWork(Ljava/lang/Runnable;)V

    return-void

    .line 1464
    :cond_2
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryProjectResponse;->list:Ljava/util/List;

    if-nez v1, :cond_3

    .line 1465
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/qianhe/yct/event/QueryProjectResponse;->list:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1466
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->localAll:Ljava/util/List;

    if-nez v2, :cond_4

    .line 1467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->localAll:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1468
    :goto_1
    iget p1, p1, Lcom/qianhe/yct/event/QueryProjectResponse;->state:I

    if-nez p1, :cond_36

    .line 1469
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v3, "current_coords"

    const-string v4, ""

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1470
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1471
    new-instance v3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v3, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 1473
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 1474
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 1475
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1477
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1480
    :cond_5
    :goto_2
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 1481
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1484
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 1485
    iget-object v7, v6, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v6, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1486
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 1487
    iget-object v9, v8, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, v8, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1488
    :cond_9
    iget-object v9, v8, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    iget-object v10, v6, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1489
    iget-object v9, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v9, v6, v8}, Lcom/qianhe/yct/db/DatabaseManager;->needsEngineeringBindingReconcile(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v9

    if-nez v9, :cond_17

    iget-wide v9, v6, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    iget-wide v11, v8, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    cmp-long v13, v9, v11

    if-ltz v13, :cond_17

    iget-wide v9, v6, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    iget-wide v11, v8, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    cmp-long v13, v9, v11

    if-gtz v13, :cond_a

    goto/16 :goto_5

    .line 1496
    :cond_a
    iget v8, v6, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v9, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v9

    if-ne v8, v9, :cond_b

    .line 1497
    move-object v8, v6

    check-cast v8, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    .line 1498
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v9, v10, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto/16 :goto_4

    .line 1499
    :cond_b
    iget v8, v6, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v9, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v9

    if-ne v8, v9, :cond_c

    .line 1500
    move-object v8, v6

    check-cast v8, Lcom/qianhe/baselib/bean/ShuaPoEntity;

    .line 1501
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v9, v10, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto/16 :goto_4

    .line 1502
    :cond_c
    iget v8, v6, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v9, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v9

    if-ne v8, v9, :cond_d

    .line 1503
    move-object v8, v6

    check-cast v8, Lcom/qianhe/baselib/bean/WaGouEntity;

    .line 1504
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v9, v10, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto/16 :goto_4

    .line 1505
    :cond_d
    iget v8, v6, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v9, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v9

    if-ne v8, v9, :cond_e

    .line 1506
    move-object v8, v6

    check-cast v8, Lcom/qianhe/baselib/bean/DikeEntity;

    .line 1507
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v9, v10, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto/16 :goto_4

    .line 1508
    :cond_e
    iget v8, v6, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v9, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v9

    if-ne v8, v9, :cond_f

    .line 1509
    move-object v8, v6

    check-cast v8, Lcom/qianhe/baselib/bean/LineEntity;

    .line 1510
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v9, v10, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto/16 :goto_4

    .line 1511
    :cond_f
    iget v8, v6, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v9, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v9

    if-ne v8, v9, :cond_10

    .line 1512
    move-object v8, v6

    check-cast v8, Lcom/qianhe/baselib/bean/PolyLineEntity;

    .line 1513
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v9, v10, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto/16 :goto_4

    .line 1514
    :cond_10
    iget v8, v6, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v9, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v9

    if-ne v8, v9, :cond_11

    .line 1515
    move-object v8, v6

    check-cast v8, Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    .line 1516
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v9, v10, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto/16 :goto_4

    .line 1517
    :cond_11
    iget v8, v6, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v9, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v9

    if-ne v8, v9, :cond_12

    .line 1518
    move-object v8, v6

    check-cast v8, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    .line 1519
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v9, v10, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_4

    .line 1520
    :cond_12
    iget v8, v6, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v9, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v9

    if-ne v8, v9, :cond_13

    .line 1521
    move-object v8, v6

    check-cast v8, Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    .line 1522
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v9, v10, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_4

    .line 1523
    :cond_13
    iget v8, v6, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v9, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v9

    if-ne v8, v9, :cond_14

    .line 1524
    move-object v8, v6

    check-cast v8, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    .line 1525
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v9, v10, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_4

    .line 1526
    :cond_14
    iget v8, v6, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v9, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v9

    if-ne v8, v9, :cond_15

    .line 1527
    move-object v8, v6

    check-cast v8, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    .line 1528
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v9, v10, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_4

    .line 1529
    :cond_15
    iget v8, v6, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v9, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v9}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v9

    if-ne v8, v9, :cond_16

    .line 1530
    move-object v8, v6

    check-cast v8, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    .line 1531
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v9, v10, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 1533
    :cond_16
    :goto_4
    iput-boolean v4, p0, Lcom/qianhe/yct/MainActivity;->isProChange:Z

    goto/16 :goto_3

    .line 1493
    :cond_17
    :goto_5
    iget-object v9, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v9, v6, v8}, Lcom/qianhe/yct/db/DatabaseManager;->syncPullUpdateProjectFromServer(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_3

    .line 1538
    :cond_18
    iget-boolean v3, p0, Lcom/qianhe/yct/MainActivity;->isProChange:Z

    if-eqz v3, :cond_19

    .line 1539
    iput-boolean v5, p0, Lcom/qianhe/yct/MainActivity;->isProChange:Z

    .line 1540
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v5}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryProjectByType(Ljava/lang/Integer;Z)V

    return-void

    .line 1544
    :cond_19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 1545
    iget-object v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1546
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_1c

    .line 1547
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 1548
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1549
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto :goto_6

    .line 1552
    :cond_1b
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/MainActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto :goto_6

    .line 1554
    :cond_1c
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_1e

    .line 1555
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 1556
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1557
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto :goto_6

    .line 1560
    :cond_1d
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/MainActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto :goto_6

    .line 1562
    :cond_1e
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_20

    .line 1563
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 1564
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1565
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto :goto_6

    .line 1568
    :cond_1f
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/MainActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto :goto_6

    .line 1570
    :cond_20
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_22

    .line 1571
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 1572
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1573
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_6

    .line 1576
    :cond_21
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/MainActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_6

    .line 1578
    :cond_22
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_24

    .line 1579
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 1580
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1581
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_6

    .line 1584
    :cond_23
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/MainActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_6

    .line 1586
    :cond_24
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_26

    .line 1587
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 1588
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1589
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_6

    .line 1592
    :cond_25
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/MainActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_6

    .line 1594
    :cond_26
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_28

    .line 1595
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 1596
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1597
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_6

    .line 1600
    :cond_27
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/MainActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_6

    .line 1602
    :cond_28
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_2a

    .line 1603
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 1604
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1605
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_6

    .line 1608
    :cond_29
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/MainActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_6

    .line 1610
    :cond_2a
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_2c

    .line 1611
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 1612
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1613
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_6

    .line 1616
    :cond_2b
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/MainActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_6

    .line 1618
    :cond_2c
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_2e

    .line 1619
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 1620
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1621
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_6

    .line 1624
    :cond_2d
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/MainActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_6

    .line 1626
    :cond_2e
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_30

    .line 1627
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 1628
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1629
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_6

    .line 1632
    :cond_2f
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/MainActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_6

    .line 1634
    :cond_30
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_1a

    .line 1635
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 1636
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 1637
    iget-object v5, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_6

    .line 1640
    :cond_31
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/MainActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_6

    .line 1646
    :cond_32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 1647
    iget-object v4, v3, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    iget-object v4, v3, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 1648
    iget-object v4, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v4, :cond_33

    iget v5, v3, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v5, :cond_33

    .line 1649
    invoke-virtual {v4, v3}, Lcom/qianhe/yct/db/DatabaseManager;->deleteById(Lcom/qianhe/baselib/base/BaseProEntity;)J

    goto :goto_7

    .line 1654
    :cond_34
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/db/DatabaseManager;->renameUnsyncedConflictsWithServer(Ljava/util/List;)V

    .line 1655
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_35

    .line 1656
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->getLoacalData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->localAll:Ljava/util/List;

    .line 1657
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->createProject()V

    goto :goto_8

    .line 1660
    :cond_35
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->syncFinish()V

    goto :goto_8

    .line 1664
    :cond_36
    new-instance p1, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda11;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-direct {p0, p1}, Lcom/qianhe/yct/MainActivity;->postSyncUi(Ljava/lang/Runnable;)V

    .line 1669
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_37

    .line 1670
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->getLoacalData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->localAll:Ljava/util/List;

    .line 1671
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->createProject()V

    :cond_37
    :goto_8
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryShareResponse;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1686
    iget-object v0, p1, Lcom/qianhe/yct/event/QueryShareResponse;->codes:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 1687
    :cond_0
    iget v0, p1, Lcom/qianhe/yct/event/QueryShareResponse;->state:I

    if-nez v0, :cond_7

    .line 1688
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryShareByShareId(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 1689
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1691
    iget-object v2, p1, Lcom/qianhe/yct/event/QueryShareResponse;->list:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1692
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryShareResponse;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/ShareEntity;

    const/4 v3, 0x0

    .line 1693
    iput v3, v2, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    .line 1694
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1695
    iget-object v4, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->queryShareByShareId(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v4

    .line 1696
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1697
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/db/DatabaseManager;->insertShare(Lcom/qianhe/baselib/bean/ShareEntity;)J

    goto :goto_0

    .line 1698
    :cond_2
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/ShareEntity;

    iget v3, v3, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 1699
    iget-object v3, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/db/DatabaseManager;->updateShare(Lcom/qianhe/baselib/bean/ShareEntity;)I

    goto :goto_0

    .line 1703
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ShareEntity;

    .line 1704
    iget v2, v0, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    if-eqz v2, :cond_5

    goto :goto_1

    .line 1705
    :cond_5
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1706
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->deleteShare(Lcom/qianhe/baselib/bean/ShareEntity;)J

    .line 1707
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->deleteForeignSharedProjectsAndEngineering(Lcom/qianhe/baselib/bean/ShareEntity;)V

    goto :goto_1

    .line 1710
    :cond_6
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->gotoShareProjectFromCode()V

    return-void

    .line 1712
    :cond_7
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->gotoShareProjectFromCode()V

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/qianhe/yct/MainActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/CreateBucketResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 874
    iget v0, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->state:I

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/qianhe/yct/event/CreateBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz p1, :cond_0

    .line 875
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updateShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)I

    .line 877
    :cond_0
    iget p1, p0, Lcom/qianhe/yct/MainActivity;->bucketIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qianhe/yct/MainActivity;->bucketIndex:I

    .line 878
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->uploadBucket()V

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/CreateExcavatorResponse;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 755
    iget p1, p0, Lcom/qianhe/yct/MainActivity;->excavatorIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qianhe/yct/MainActivity;->excavatorIndex:I

    .line 756
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->uploadExcavator()V

    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/QueryBucketResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 883
    iget v0, p1, Lcom/qianhe/yct/event/QueryBucketResponse;->state:I

    if-nez v0, :cond_0

    .line 884
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryBucketResponse;->list:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/MainActivity;->updateBucketData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/qianhe/yct/event/QueryExcacatorResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 762
    iget v0, p1, Lcom/qianhe/yct/event/QueryExcacatorResponse;->state:I

    if-nez v0, :cond_0

    .line 763
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryExcacatorResponse;->list:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/MainActivity;->updateExcavatorData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1992
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1993
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->isZpyDeviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1997
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->nfcTagReader:Lcom/qianhe/baselib/utils/NfcTagReader;

    if-eqz v0, :cond_4

    .line 1998
    invoke-virtual {v0, p1}, Lcom/qianhe/baselib/utils/NfcTagReader;->getTagFromIntent(Landroid/content/Intent;)Landroid/nfc/Tag;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2001
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->nfcTagReader:Lcom/qianhe/baselib/utils/NfcTagReader;

    invoke-virtual {v0, p1}, Lcom/qianhe/baselib/utils/NfcTagReader;->readNdefData(Landroid/nfc/Tag;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2002
    const-string/jumbo v1, "\u4e0d\u5305\u542bNDEF\u6570\u636e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2004
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->nfcTagReader:Lcom/qianhe/baselib/utils/NfcTagReader;

    invoke-virtual {v0, p1}, Lcom/qianhe/baselib/utils/NfcTagReader;->readRawData(Landroid/nfc/Tag;)Ljava/lang/String;

    move-result-object v0

    .line 2006
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 2007
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NFC\u8bfb\u53d6\u4fe1\u606f\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2008
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->nfcTagReader:Lcom/qianhe/baselib/utils/NfcTagReader;

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/utils/NfcTagReader;->getBluetoothMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u84dd\u7259mac\u5730\u5740\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 2010
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2011
    sget v0, Lcom/qianhe/yct/R$string;->connecting_device:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 2012
    new-instance v0, Lcom/qianhe/yct/event/BluetoothConnectActionByMacEvent;

    sget-object v1, Lcom/qianhe/yct/enums/BluetoothActionEnum;->CONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    invoke-direct {v0, v1, p1}, Lcom/qianhe/yct/event/BluetoothConnectActionByMacEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;Ljava/lang/String;)V

    .line 2014
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2016
    :cond_3
    sget p1, Lcom/qianhe/yct/R$string;->nfc_label_reading_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 2025
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    const/4 v0, 0x1

    .line 2026
    iput-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->isPause:Z

    .line 2027
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 356
    invoke-super {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 360
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    .line 361
    const-string v0, "android.permission.NFC"

    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 368
    iget-object p1, p0, Lcom/qianhe/yct/MainActivity;->nfcTagReader:Lcom/qianhe/baselib/utils/NfcTagReader;

    invoke-virtual {p1, p0}, Lcom/qianhe/baselib/utils/NfcTagReader;->initNfcReader(Landroid/app/Activity;)V

    .line 369
    const-string p1, "NFC\u6743\u9650\u5df2\u6388\u4e88"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 372
    :cond_1
    const-string p1, "NFC\u6743\u9650\u88ab\u62d2\u7edd\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u624b\u52a8\u6388\u6743"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 373
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1773
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    const/4 v0, 0x0

    .line 1774
    iput-boolean v0, p0, Lcom/qianhe/yct/MainActivity;->isPause:Z

    .line 1775
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 1776
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->initTopbarView()V

    .line 1777
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->updateNfcForegroundDispatch()V

    .line 1778
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->isSynDataFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1779
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/application/YCTApplication;->setSynDataFlag(Z)V

    const/4 v1, 0x1

    .line 1780
    iput-boolean v1, p0, Lcom/qianhe/yct/MainActivity;->skipCheckTokenDataSync:Z

    .line 1781
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 1782
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1783
    iget-object v2, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityMainBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v0, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 1784
    iput-boolean v1, p0, Lcom/qianhe/yct/MainActivity;->afterLogin:Z

    .line 1786
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1787
    sget v1, Lcom/qianhe/yct/R$string;->syncing_data:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tip"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    new-instance v1, Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-direct {v1}, Lcom/qianhe/yct/dialog/LoadingFragment;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/MainActivity;->syncingProjectDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    .line 1789
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1790
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->syncingProjectDialog:Lcom/qianhe/yct/dialog/LoadingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "LoadingFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 1791
    iget-object v0, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1797
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/application/YCTApplication;->isSyncAfterEngineeringSwitch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1799
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/application/YCTApplication;->setSyncAfterEngineeringSwitch(Z)V

    .line 1800
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1801
    iget-object v1, p0, Lcom/qianhe/yct/MainActivity;->binding:Lcom/qianhe/yct/databinding/ActivityMainBinding;

    invoke-virtual {v1}, Lcom/qianhe/yct/databinding/ActivityMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 195
    iget-boolean p1, p0, Lcom/qianhe/yct/MainActivity;->initFocus:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 196
    iput-boolean p1, p0, Lcom/qianhe/yct/MainActivity;->initFocus:Z

    .line 198
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->finishNotMainActivity()V

    const/4 p1, 0x0

    .line 200
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 201
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->initTopbarView()V

    .line 202
    invoke-direct {p0}, Lcom/qianhe/yct/MainActivity;->startSessionAfterStorageReady()V

    :cond_0
    return-void
.end method
