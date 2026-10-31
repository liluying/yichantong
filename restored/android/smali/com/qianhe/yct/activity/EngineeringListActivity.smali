.class public Lcom/qianhe/yct/activity/EngineeringListActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "EngineeringListActivity.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

.field private binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

.field private databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private idStrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isEngineeringSyncing:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ">;"
        }
    .end annotation
.end field

.field private suppressEngineeringQueryUntilElapsed:J


# direct methods
.method public static synthetic $r8$lambda$wWcIXYrXnU4Uql663zq2BiX-leo(Lcom/qianhe/yct/activity/EngineeringListActivity;Landroid/view/View;)V
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    .line 127
    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 128
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->adapter:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    iget-object p0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->selectAll(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lcom/qianhe/yct/activity/EngineeringListActivity;)Lcom/qianhe/yct/adapter/EngineeringListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->adapter:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/EngineeringListActivity;)Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/EngineeringListActivity;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/EngineeringListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->idStrList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmList(Lcom/qianhe/yct/activity/EngineeringListActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputidStrList(Lcom/qianhe/yct/activity/EngineeringListActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->idStrList:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsuppressEngineeringQueryUntilElapsed(Lcom/qianhe/yct/activity/EngineeringListActivity;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->suppressEngineeringQueryUntilElapsed:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteNextEngineering(Lcom/qianhe/yct/activity/EngineeringListActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->deleteNextEngineering(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenEngineeringEdit(Lcom/qianhe/yct/activity/EngineeringListActivity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->openEngineeringEdit(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreloadListFromLocal(Lcom/qianhe/yct/activity/EngineeringListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->reloadListFromLocal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/EngineeringListActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->showSelectAll(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncCurrentUsageToServer(Lcom/qianhe/yct/activity/EngineeringListActivity;Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/EngineeringListActivity;->syncCurrentUsageToServer(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSelectAllState(Lcom/qianhe/yct/activity/EngineeringListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->updateSelectAllState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->idStrList:Ljava/util/ArrayList;

    return-void
.end method

.method private applyServerIdsToLocalEngineering(Lcom/qianhe/yct/event/CreateEngineeringResponse;)V
    .locals 6

    .line 600
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v1, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->localDbId:J

    iget-wide v3, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->id:J

    iget-object v5, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->uuid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/qianhe/yct/db/DatabaseManager;->updateEngineeringServerIds(JJLjava/lang/String;)V

    .line 601
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v2, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->localDbId:J

    iget-wide v4, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->id:J

    .line 602
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->updateProjectsBelongEngineeringId(JJ)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 601
    invoke-virtual {v0, v2, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->syncProjectsBelongEngineering(Lcom/qianhe/baselib/bean/InsNavi;Ljava/util/List;)V

    .line 604
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v1, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->localDbId:J

    .line 605
    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p1

    .line 604
    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->renameUnsyncedLocalDuplicatesInEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    return-void
.end method

.method private convertToEngineeringEntity(Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 7

    .line 408
    new-instance v0, Lcom/qianhe/baselib/bean/EngineeringEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/EngineeringEntity;-><init>()V

    .line 409
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    .line 410
    iget v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->currentUsage:I

    iput v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    .line 411
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->id:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    .line 412
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    .line 413
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->createEpoch:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    .line 414
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->updateEpoch:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    .line 415
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->version:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->version:J

    .line 417
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->projection:Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;

    if-eqz v1, :cond_0

    .line 418
    iget v2, v1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;->ellipsoidType:I

    iput v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    .line 419
    iget v2, v1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;->projectionType:I

    iput v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    .line 421
    iget-object v1, v1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;->paramsDetail:Ljava/lang/String;

    .line 422
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 423
    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/EngineeringProjectionParser;->applyParamsDetail(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;)V

    .line 427
    :cond_0
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->transParam:Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    iget-wide v4, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->transParamId:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 428
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    .line 429
    iget v2, v1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->paramType:I

    iput v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    .line 430
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/db/DatabaseManager;->fromEngineeringTransParam(Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 431
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object p1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->transParam:Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;

    iget-object p1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->bindTransParamLocalId(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    .line 433
    iput p1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    .line 434
    iput-wide v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    .line 435
    iput-wide v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    const/4 p1, 0x0

    .line 436
    iput-object p1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    return-object v0
.end method

.method private deleteFinish()V
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 574
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->adapter:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->setData(Ljava/util/List;)V

    .line 575
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->adapter:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->refreshIdStrList(Ljava/util/List;)V

    .line 576
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->adapter:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->closeSelUi()V

    .line 577
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->bottomBtn:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/EngineeringBottomView;->closeExecuteUi()V

    const/4 v0, 0x0

    .line 578
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->showSelectAll(Z)V

    .line 579
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->updateEmptyView()V

    return-void
.end method

.method private deleteLocalEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;I)V
    .locals 7

    .line 548
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->collectProjectsForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 549
    iget-wide v4, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 550
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->delProject(Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->collectPointGroupsForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 554
    iget-object v4, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v5, v1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-virtual {v4, v5, v6}, Lcom/qianhe/yct/db/DatabaseManager;->collectServerPointIdsInGroup(J)Ljava/util/List;

    move-result-object v4

    .line 555
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 556
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->deletePoints(Ljava/util/List;)V

    .line 558
    :cond_3
    iget-wide v4, v1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_2

    .line 559
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v4

    iget-wide v5, v1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    invoke-virtual {v4, v5, v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->deletePointGroup(J)V

    goto :goto_1

    .line 562
    :cond_4
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_5

    .line 563
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    invoke-virtual {v0, v4, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->deleteGnssTransParam(ZJ)V

    .line 565
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->deleteEngineeringById(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_6

    .line 567
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    add-int/2addr p2, v4

    .line 569
    invoke-direct {p0, p2}, Lcom/qianhe/yct/activity/EngineeringListActivity;->deleteNextEngineering(I)V

    return-void
.end method

.method private deleteNextEngineering(I)V
    .locals 5

    .line 515
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 516
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->deleteFinish()V

    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 522
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 523
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x1

    if-nez v2, :cond_3

    add-int/2addr p1, v0

    .line 530
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->deleteNextEngineering(I)V

    return-void

    .line 534
    :cond_3
    iget v1, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    if-ne v1, v0, :cond_4

    .line 535
    sget p1, Lcom/qianhe/yct/R$string;->current_engineering_cannot_delete:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 536
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->deleteFinish()V

    return-void

    .line 540
    :cond_4
    iget-wide v0, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    .line 541
    invoke-direct {p0, v2, p1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->deleteLocalEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;I)V

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_5

    .line 543
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->deleteGnssEngineering(J)V

    :cond_5
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

    .line 449
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 452
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

    .line 453
    iget v4, v3, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->currentUsage:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 454
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

.method private initList()V
    .locals 3

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->mList:Ljava/util/List;

    .line 134
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->rcvEngineeringList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v2, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->rcvEngineeringList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 140
    :goto_0
    new-instance v0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->mList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->adapter:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    .line 141
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->rcvEngineeringList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->adapter:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringListActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringListActivity$2;-><init>(Lcom/qianhe/yct/activity/EngineeringListActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->bottomBtn:Lcom/qianhe/yct/view/EngineeringBottomView;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringListActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringListActivity$1;-><init>(Lcom/qianhe/yct/activity/EngineeringListActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/EngineeringBottomView;->setOnNavItemClickListener(Lcom/qianhe/yct/view/EngineeringBottomView$OnNavItemClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->lltAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/activity/EngineeringListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/EngineeringListActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/EngineeringListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private mergeLocalEngineeringState(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;)V
    .locals 0

    .line 444
    iget p2, p2, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->currentUsage:I

    iput p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    return-void
.end method

.method private openEngineeringEdit(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 233
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    const-string v1, "engineering"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private reloadListFromLocal()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllEngineering()Ljava/util/List;

    move-result-object v0

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->mList:Ljava/util/List;

    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v1, :cond_0

    .line 206
    iget v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 207
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->adapter:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->setData(Ljava/util/List;)V

    .line 211
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->updateEmptyView()V

    .line 212
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->adapter:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->closeSelUi()V

    .line 213
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->bottomBtn:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/EngineeringBottomView;->closeExecuteUi()V

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->showSelectAll(Z)V

    return-void
.end method

.method private showSelectAll(Z)V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->lltAll:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 220
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->updateSelectAllState()V

    return-void
.end method

.method private syncCurrentUsageToServer(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 6

    .line 247
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 248
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 249
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 251
    iget-wide v2, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    iget-wide v2, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 252
    iput p1, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    .line 253
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private syncEngineeringWithServer()V
    .locals 13

    .line 240
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->isEngineeringSyncing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->isEngineeringSyncing:Z

    .line 242
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

.method private syncResolvedCurrentUsageToServer(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;J)V
    .locals 4

    if-eqz p1, :cond_3

    .line 390
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_1

    goto :goto_0

    .line 393
    :cond_1
    invoke-static {p1, p3, p4, p5}, Lcom/qianhe/yct/db/DatabaseManager;->isSameServerEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;J)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    .line 397
    iput p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    .line 398
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 400
    iget-object p2, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p2, p3, p4, p5}, Lcom/qianhe/yct/db/DatabaseManager;->findEngineeringByServerIdentity(Ljava/lang/String;J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 401
    iget-wide p3, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long p1, p3, v0

    if-eqz p1, :cond_3

    iget-wide p3, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    cmp-long p1, p3, v2

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 402
    iput p1, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    .line 403
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateEmptyView()V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->lltEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->rcvEngineeringList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->lltEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->rcvEngineeringList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateEngineeringData(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 268
    iget-object v1, v0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    :cond_0
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 271
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    iget-object v3, v0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllEngineering()Ljava/util/List;

    move-result-object v3

    .line 274
    invoke-static {v3}, Lcom/qianhe/yct/db/DatabaseManager;->findCurrentUsageEngineering(Ljava/util/List;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v11

    if-nez p1, :cond_2

    .line 276
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_2
    move-object/from16 v4, p1

    .line 279
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v12, 0x1

    if-nez v5, :cond_15

    .line 280
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    .line 281
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 282
    iget-object v10, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 283
    iget-object v10, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;

    .line 286
    iget-object v14, v13, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->uuid:Ljava/lang/String;

    invoke-interface {v1, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 287
    iget-object v14, v13, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->uuid:Ljava/lang/String;

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_4
    iget-object v14, v13, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->uuid:Ljava/lang/String;

    iget-object v15, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 290
    iget-wide v14, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->version:J

    const-wide/16 v16, 0x0

    iget-wide v7, v13, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->version:J

    cmp-long v10, v14, v7

    if-ltz v10, :cond_9

    cmp-long v10, v14, v7

    move-wide/from16 v18, v7

    if-nez v10, :cond_5

    iget-wide v6, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    move-object v8, v5

    move-wide/from16 v20, v6

    iget-wide v5, v13, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->updateEpoch:J

    cmp-long v7, v20, v5

    if-gez v7, :cond_6

    goto :goto_3

    :cond_5
    move-object v8, v5

    .line 305
    :cond_6
    iget v5, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    if-eq v5, v12, :cond_7

    cmp-long v6, v14, v18

    if-nez v6, :cond_7

    iget-wide v6, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    move-wide/from16 v20, v6

    iget-wide v6, v13, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->updateEpoch:J

    cmp-long v10, v20, v6

    if-nez v10, :cond_7

    iget v6, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    iget v7, v13, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->currentUsage:I

    if-eq v6, v7, :cond_7

    .line 310
    iput v7, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    .line 311
    iget-object v5, v0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v9, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {v5, v9, v10, v7}, Lcom/qianhe/yct/db/DatabaseManager;->updateEngineeringCurrentUsageOnly(JI)V

    goto :goto_5

    :cond_7
    if-eq v5, v12, :cond_e

    cmp-long v5, v14, v18

    if-gtz v5, :cond_8

    cmp-long v5, v14, v18

    if-nez v5, :cond_e

    .line 312
    iget-wide v5, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    iget-wide v13, v13, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->updateEpoch:J

    cmp-long v7, v5, v13

    if-lez v7, :cond_e

    .line 316
    :cond_8
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    goto :goto_5

    :cond_9
    move-object v8, v5

    .line 292
    :goto_3
    invoke-direct {v0, v13}, Lcom/qianhe/yct/activity/EngineeringListActivity;->convertToEngineeringEntity(Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v5

    .line 293
    iget-wide v6, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iput-wide v6, v5, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    .line 294
    iget-wide v6, v13, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->transParamId:J

    cmp-long v10, v6, v16

    if-lez v10, :cond_a

    iget-wide v6, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    cmp-long v10, v6, v16

    if-lez v10, :cond_a

    .line 295
    iput-wide v6, v5, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    .line 298
    :cond_a
    iget v6, v9, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    if-ne v6, v12, :cond_b

    .line 299
    iput v12, v5, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v6, 0x0

    .line 300
    iput v6, v5, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    goto :goto_4

    .line 302
    :cond_b
    invoke-direct {v0, v5, v13}, Lcom/qianhe/yct/activity/EngineeringListActivity;->mergeLocalEngineeringState(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;)V

    .line 304
    :goto_4
    iget-object v6, v0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6, v5}, Lcom/qianhe/yct/db/DatabaseManager;->updateEngineeringFromServer(Lcom/qianhe/baselib/bean/EngineeringEntity;)I

    goto :goto_5

    :cond_c
    const-wide/16 v16, 0x0

    goto/16 :goto_2

    :cond_d
    move-object v8, v5

    const-wide/16 v16, 0x0

    :cond_e
    :goto_5
    move-object v5, v8

    goto/16 :goto_1

    :cond_f
    const-wide/16 v16, 0x0

    .line 324
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;

    .line 325
    iget-object v7, v6, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->uuid:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 326
    iget-object v7, v0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v8, v6, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByName(Ljava/lang/String;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 327
    iget v8, v7, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    if-eq v8, v12, :cond_12

    .line 328
    invoke-direct {v0, v6}, Lcom/qianhe/yct/activity/EngineeringListActivity;->convertToEngineeringEntity(Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v8

    .line 329
    iget-wide v9, v7, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iput-wide v9, v8, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    .line 330
    iget-wide v9, v6, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->transParamId:J

    cmp-long v13, v9, v16

    if-lez v13, :cond_10

    iget-wide v9, v7, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    cmp-long v13, v9, v16

    if-lez v13, :cond_10

    .line 331
    iput-wide v9, v8, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    .line 333
    :cond_10
    invoke-direct {v0, v8, v6}, Lcom/qianhe/yct/activity/EngineeringListActivity;->mergeLocalEngineeringState(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;)V

    .line 334
    iget-object v9, v0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v9, v8}, Lcom/qianhe/yct/db/DatabaseManager;->updateEngineeringFromServer(Lcom/qianhe/baselib/bean/EngineeringEntity;)I

    .line 335
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, v0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v13, v7, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    move-object v10, v2

    move-object v15, v3

    iget-wide v2, v6, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->id:J

    .line 336
    invoke-virtual {v9, v13, v14, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->updateProjectsBelongEngineeringId(JJ)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 335
    invoke-virtual {v8, v3, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->syncProjectsBelongEngineering(Lcom/qianhe/baselib/bean/InsNavi;Ljava/util/List;)V

    .line 337
    iget-object v2, v0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v6, v7, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    .line 338
    invoke-virtual {v2, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v3

    .line 337
    invoke-virtual {v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->renameUnsyncedLocalDuplicatesInEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    :cond_11
    :goto_7
    const/4 v8, 0x0

    goto :goto_8

    :cond_12
    move-object v10, v2

    move-object v15, v3

    .line 340
    invoke-direct {v0, v6}, Lcom/qianhe/yct/activity/EngineeringListActivity;->convertToEngineeringEntity(Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v2

    .line 341
    iget-object v3, v0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/db/DatabaseManager;->insertEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)J

    move-result-wide v2

    cmp-long v7, v2, v16

    if-lez v7, :cond_11

    .line 343
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v7

    iget-object v8, v0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v13, v6, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->id:J

    .line 344
    invoke-virtual {v8, v2, v3, v13, v14}, Lcom/qianhe/yct/db/DatabaseManager;->updateProjectsBelongEngineeringId(JJ)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    .line 343
    invoke-virtual {v7, v8, v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->syncProjectsBelongEngineering(Lcom/qianhe/baselib/bean/InsNavi;Ljava/util/List;)V

    .line 345
    iget-object v6, v0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 346
    invoke-virtual {v6, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v2

    .line 345
    invoke-virtual {v6, v2}, Lcom/qianhe/yct/db/DatabaseManager;->renameUnsyncedLocalDuplicatesInEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    goto :goto_8

    :cond_13
    move-object v10, v2

    move-object v15, v3

    goto :goto_7

    :goto_8
    move-object v2, v10

    move-object v3, v15

    goto/16 :goto_6

    :cond_14
    :goto_9
    move-object v15, v3

    const/4 v8, 0x0

    goto :goto_a

    :cond_15
    const-wide/16 v16, 0x0

    goto :goto_9

    .line 354
    :goto_a
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 356
    iget v5, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    if-ne v5, v12, :cond_17

    goto :goto_b

    .line 357
    :cond_17
    iget-object v5, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 358
    iget-object v5, v0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v6, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {v5, v6, v7}, Lcom/qianhe/yct/db/DatabaseManager;->deleteEngineeringById(J)J

    goto :goto_b

    .line 362
    :cond_18
    invoke-direct {v0, v4}, Lcom/qianhe/yct/activity/EngineeringListActivity;->findServerCurrentItem(Ljava/util/List;)Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 363
    iget-object v6, v1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->uuid:Ljava/lang/String;

    move-object v3, v6

    goto :goto_c

    :cond_19
    move-object v3, v8

    :goto_c
    if-eqz v1, :cond_1a

    .line 364
    iget-wide v5, v1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->id:J

    move-wide v7, v5

    goto :goto_d

    :cond_1a
    move-wide/from16 v7, v16

    :goto_d
    if-eqz v1, :cond_1b

    .line 365
    iget-wide v1, v1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->createEpoch:J

    move-wide v9, v1

    :goto_e
    move-object v1, v4

    goto :goto_f

    :cond_1b
    move-wide/from16 v9, v16

    goto :goto_e

    .line 366
    :goto_f
    iget-object v4, v0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 367
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move-object v6, v3

    .line 366
    invoke-virtual/range {v4 .. v11}, Lcom/qianhe/yct/db/DatabaseManager;->finalizeEngineeringSyncAfterServerPull(ILjava/lang/String;JJLcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v1

    move-wide v4, v7

    move-object v2, v11

    if-nez v2, :cond_1c

    if-eqz v1, :cond_20

    goto :goto_10

    :cond_1c
    if-eqz v1, :cond_1d

    .line 370
    iget-wide v6, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iget-wide v8, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long v10, v6, v8

    if-eqz v10, :cond_20

    .line 373
    :cond_1d
    :goto_10
    iget-object v6, v0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/yct/db/DatabaseManager;->applyLatestCurrentEngineeringParams()V

    .line 374
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/qianhe/yct/application/YCTApplication;->setSyncAfterEngineeringSwitch(Z)V

    .line 375
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5de5\u7a0b\u5217\u8868\u540c\u6b65\u540e\u5f53\u524d\u5de5\u7a0b\u5df2\u5207\u6362: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string v7, "null"

    if-eqz v2, :cond_1e

    iget-object v8, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    goto :goto_11

    :cond_1e
    move-object v8, v7

    :goto_11
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1f

    .line 378
    iget-object v7, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    :cond_1f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 375
    invoke-static {v6}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 380
    :cond_20
    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/activity/EngineeringListActivity;->syncResolvedCurrentUsageToServer(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;J)V

    .line 381
    invoke-direct/range {p0 .. p0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->reloadListFromLocal()V

    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->uploadPendingEngineeringToServer()V

    return-void
.end method

.method private updateSelectAllState()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 228
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private uploadPendingEngineeringToServer()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllEngineering()Ljava/util/List;

    move-result-object v0

    .line 260
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-eqz v1, :cond_0

    .line 261
    iget-object v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 262
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    goto :goto_0

    :cond_1
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

    .line 475
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 480
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->project_management:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 481
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->bottomBtn:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/EngineeringBottomView;->getSelectedIndex()I

    move-result v0

    if-lez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->bottomBtn:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/EngineeringBottomView;->closeExecuteUi()V

    .line 507
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->adapter:Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->closeSelUi()V

    const/4 v0, 0x0

    .line 508
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->showSelectAll(Z)V

    return-void

    .line 510
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    .line 62
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 64
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 65
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->initView()V

    .line 66
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->initList()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 584
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 585
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateEngineeringResponse;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    .line 591
    iget-wide v0, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->localDbId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    iget v0, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->state:I

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->id:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 593
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->applyServerIdsToLocalEngineering(Lcom/qianhe/yct/event/CreateEngineeringResponse;)V

    return-void

    .line 595
    :cond_1
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

    :cond_2
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 610
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->isEngineeringSyncing:Z

    .line 611
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->suppressEngineeringQueryUntilElapsed:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 612
    const-string p1, "EngineeringListActivity \u5ffd\u7565\u8fc7\u671f\u5de5\u7a0b\u67e5\u8be2\uff08\u521a\u624b\u52a8\u5207\u6362\u5f53\u524d\u5de5\u7a0b\uff09"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 613
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->reloadListFromLocal()V

    return-void

    .line 616
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineeringListActivity received QueryGnssEngineeringResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    iget v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 617
    iget v0, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;->state:I

    if-nez v0, :cond_2

    .line 618
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;->list:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->updateEngineeringData(Ljava/util/List;)V

    return-void

    .line 620
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->reloadListFromLocal()V

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

.method protected onResume()V
    .locals 1

    .line 192
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 193
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->createDefaultEngineeringIfAbsentLocally()Z

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->bindOrphanDataToDefaultEngineering()V

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->reloadListFromLocal()V

    .line 198
    invoke-direct {p0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->syncEngineeringWithServer()V

    return-void
.end method
