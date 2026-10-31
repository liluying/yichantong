.class public Lcom/qianhe/yct/activity/ProjectListActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "ProjectListActivity.java"


# static fields
.field private static final LINE_PARALLEL_NAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

.field private databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final gson:Lcom/google/gson/Gson;

.field private idStrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private isChange:Z

.field private isVisible:Z

.field private launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation
.end field

.field private proListAdapter:Lcom/qianhe/yct/adapter/ProjectListAdapter;

.field private proType:I

.field private refreshUiAfterUpload:Z


# direct methods
.method public static synthetic $r8$lambda$SJakuPwUdlYXHvhIfcZiE6EEWxE(Lcom/qianhe/yct/activity/ProjectListActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 233
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    const-string v0, "shareCode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryShare(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showShareWayDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$dVS8785awLuhiq_H9kFejCN4gFg(Lcom/qianhe/yct/activity/ProjectListActivity;Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/base/BaseProEntity;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/ProjectListActivity;->compareLineProjectForList(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/base/BaseProEntity;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ProjectListActivity;)Lcom/qianhe/yct/databinding/ActivityProjectListBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/ProjectListActivity;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ProjectListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->idStrList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmList(Lcom/qianhe/yct/activity/ProjectListActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetproListAdapter(Lcom/qianhe/yct/activity/ProjectListActivity;)Lcom/qianhe/yct/adapter/ProjectListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proListAdapter:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetproType(Lcom/qianhe/yct/activity/ProjectListActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputdatabaseManager(Lcom/qianhe/yct/activity/ProjectListActivity;Lcom/qianhe/yct/db/DatabaseManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputidStrList(Lcom/qianhe/yct/activity/ProjectListActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->idStrList:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcontinueWork(Lcom/qianhe/yct/activity/ProjectListActivity;Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->continueWork(Lcom/qianhe/baselib/base/BaseProEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenModifyPage(Lcom/qianhe/yct/activity/ProjectListActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/ProjectListActivity;->openModifyPage(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenSharePage(Lcom/qianhe/yct/activity/ProjectListActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->openSharePage(Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ProjectListActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->showSelectAll(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEmptyView(Lcom/qianhe/yct/activity/ProjectListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ProjectListActivity;->updateEmptyView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSelectAllState(Lcom/qianhe/yct/activity/ProjectListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ProjectListActivity;->updateSelectAllState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 99
    const-string v0, "^(.+)_.+([LR])(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/activity/ProjectListActivity;->LINE_PARALLEL_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->idStrList:Ljava/util/ArrayList;

    .line 108
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 112
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->gson:Lcom/google/gson/Gson;

    const/4 v0, 0x0

    .line 614
    iput v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->index:I

    const/4 v0, 0x1

    .line 616
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->refreshUiAfterUpload:Z

    return-void
.end method

.method private compareLineProjectForList(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/base/BaseProEntity;)I
    .locals 4

    .line 531
    iget-wide v0, p2, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    iget-wide v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 535
    :cond_0
    iget-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->getLineProjectBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    iget-object v1, p2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/activity/ProjectListActivity;->getLineProjectBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 541
    :cond_1
    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->getLineParallelSortKey(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/qianhe/yct/activity/ProjectListActivity;->getLineParallelSortKey(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method private continueWork(Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 4

    .line 449
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 450
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 451
    const-class v1, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 452
    :cond_0
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 453
    const-class v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 454
    :cond_1
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 455
    const-class v1, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 456
    :cond_2
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 457
    const-class v1, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 458
    :cond_3
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 459
    const-class v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 460
    :cond_4
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 461
    const-class v1, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 462
    :cond_5
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 463
    const-class v1, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 464
    :cond_6
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 465
    const-class v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 466
    :cond_7
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 467
    const-class v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 468
    :cond_8
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 469
    const-class v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 470
    :cond_9
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 471
    const-class v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 472
    :cond_a
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 473
    const-class v1, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 475
    :cond_b
    :goto_0
    const-string v1, "id"

    iget-wide v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 476
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private createProject(Z)V
    .locals 6

    .line 624
    const-string v0, ","

    iput-boolean p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->refreshUiAfterUpload:Z

    .line 625
    iget p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->index:I

    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 626
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->index:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 627
    iget-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 628
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v3, "current_coords"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 629
    iget-object v3, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 630
    new-instance v3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v3, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 632
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 633
    iget-object v3, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 634
    iget-object v2, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 636
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 640
    :cond_0
    :goto_0
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v0, v1, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_1

    .line 642
    :cond_1
    iget p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->index:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->index:I

    .line 643
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->refreshUiAfterUpload:Z

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->createProject(Z)V

    :goto_1
    return-void

    .line 646
    :cond_2
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->refreshUiAfterUpload:Z

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->synEnd(Z)V

    return-void
.end method

.method private filterProjectsForCurrentList(Ljava/util/List;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    .line 908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 909
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 910
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v1, :cond_1

    .line 911
    iget v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget v3, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 912
    :cond_2
    invoke-static {v1}, Lcom/qianhe/yct/db/DatabaseManager;->isProjectBound(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2, p2, v1}, Lcom/qianhe/yct/db/DatabaseManager;->belongsToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 913
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private getLineParallelSortKey(Ljava/lang/String;)I
    .locals 3

    .line 556
    sget-object v0, Lcom/qianhe/yct/activity/ProjectListActivity;->LINE_PARALLEL_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 557
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 558
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x3

    .line 559
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v1, p1

    return v1

    :cond_1
    const/16 p1, 0x7d0

    return p1
.end method

.method private getLineProjectBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 545
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    const-string p1, ""

    return-object p1

    .line 548
    :cond_0
    sget-object v0, Lcom/qianhe/yct/activity/ProjectListActivity;->LINE_PARALLEL_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 550
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private initActivityResultLauncher()V
    .locals 2

    .line 231
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/activity/ProjectListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ProjectListActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/ProjectListActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initProjectList(Landroid/os/Bundle;)V
    .locals 2

    .line 309
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    .line 310
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 313
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->rcvProList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 316
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->rcvProList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 318
    :cond_1
    :goto_0
    new-instance p1, Lcom/qianhe/yct/adapter/ProjectListAdapter;

    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/adapter/ProjectListAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V

    iput-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proListAdapter:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    .line 319
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->rcvProList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 321
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proListAdapter:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    new-instance v0, Lcom/qianhe/yct/activity/ProjectListActivity$3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/ProjectListActivity$3;-><init>(Lcom/qianhe/yct/activity/ProjectListActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/ProjectListAdapter$OnActionListener;)V

    return-void
.end method

.method private openModifyPage(J)V
    .locals 3

    .line 374
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 375
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 376
    const-class v1, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 377
    :cond_0
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 378
    const-class v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 379
    :cond_1
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 380
    const-class v1, Lcom/qianhe/yct/activity/wagou/WaGouCreateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 381
    :cond_2
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 382
    const-class v1, Lcom/qianhe/yct/activity/dike/DikeCreateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 383
    :cond_3
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 384
    const-class v1, Lcom/qianhe/yct/activity/line/LineCreateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 385
    :cond_4
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 386
    const-class v1, Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 387
    :cond_5
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 388
    const-class v1, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaCreateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 389
    :cond_6
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 390
    const-class v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 391
    :cond_7
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 392
    const-class v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingCreateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 393
    :cond_8
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 394
    const-class v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineCreateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 395
    :cond_9
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 396
    const-class v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 397
    :cond_a
    iget v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 398
    const-class v1, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 400
    :cond_b
    :goto_0
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 401
    const-string p1, "proType"

    iget p2, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openSharePage(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 406
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    sget p1, Lcom/qianhe/yct/R$string;->current_not_login:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->goto_login:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/ProjectListActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ProjectListActivity$4;-><init>(Lcom/qianhe/yct/activity/ProjectListActivity;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_0
    if-eqz p1, :cond_7

    .line 421
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 426
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 428
    iget-object v3, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget v4, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 429
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 431
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 432
    iget v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_5

    .line 433
    sget p1, Lcom/qianhe/yct/R$string;->cannot_share_others_projects:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 435
    :cond_5
    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 436
    sget p1, Lcom/qianhe/yct/R$string;->not_support_share:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 440
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 441
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 442
    const-string v1, "proType"

    iget v2, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 443
    const-string v1, "ids"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 444
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    .line 422
    :cond_7
    :goto_1
    sget p1, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method private refreshLocalData()V
    .locals 6

    .line 491
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proListAdapter:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 493
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->applyLatestCurrentEngineeringParams()V

    .line 494
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 495
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->bindOrphanDataToDefaultEngineering()V

    .line 496
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->cleanupDuplicateProjectsByUuid()I

    .line 498
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget v2, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object v1

    .line 500
    iget-object v2, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 501
    iget-object v2, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 502
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ProjectListActivity;->sortLineProjectListIfNeeded()V

    .line 503
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 504
    iget-object v2, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 505
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 506
    iget-object v3, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 507
    iget-object v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_0
    iget-wide v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 512
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proListAdapter:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    iget-object v2, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->setData(Ljava/util/List;)V

    .line 513
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ProjectListActivity;->updateEmptyView()V

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u9879\u76ee\u5217\u8868\u5237\u65b0\uff1a\u5f53\u524d\u5de5\u7a0b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0c\u6570\u91cf="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    .line 516
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private showSelectAll(Z)V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->lltAll:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 362
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 364
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ProjectListActivity;->updateSelectAllState()V

    return-void
.end method

.method private sortLineProjectListIfNeeded()V
    .locals 2

    .line 524
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    new-instance v1, Lcom/qianhe/yct/activity/ProjectListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ProjectListActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/ProjectListActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 920
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->synEnd(Z)V

    return-void
.end method

.method private synEnd(Z)V
    .locals 1

    .line 924
    const-string/jumbo v0, "\u6570\u636e\u540c\u6b65\u7ed3\u675f"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 925
    iput v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->index:I

    .line 926
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    if-eqz p1, :cond_0

    .line 928
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ProjectListActivity;->refreshLocalData()V

    :cond_0
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

    .line 934
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->resolveSameNameOnSync(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    return-void
.end method

.method private updateEmptyView()V
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->lltEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->rcvProList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 568
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->lltEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->rcvProList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 572
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 573
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_zp_new:I

    .line 574
    sget v0, Lcom/qianhe/yct/R$string;->zp_empty_des:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 575
    :cond_2
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 576
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_sp_new:I

    .line 577
    sget v0, Lcom/qianhe/yct/R$string;->sp_empty_des:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 578
    :cond_3
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 579
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_wg_new:I

    .line 580
    sget v0, Lcom/qianhe/yct/R$string;->wg_empty_des:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 581
    :cond_4
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 582
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_dike_new:I

    .line 583
    sget v0, Lcom/qianhe/yct/R$string;->dike_empty_des:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 584
    :cond_5
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 585
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_line_new:I

    .line 586
    sget v0, Lcom/qianhe/yct/R$string;->line_empty_des:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 587
    :cond_6
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 588
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_poly_line:I

    .line 589
    sget v0, Lcom/qianhe/yct/R$string;->polyline_empty_des:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 590
    :cond_7
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 591
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_onepoint_area:I

    .line 592
    sget v0, Lcom/qianhe/yct/R$string;->onearea_empty_des:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 593
    :cond_8
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 594
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_three_point_area:I

    .line 595
    sget v0, Lcom/qianhe/yct/R$string;->threearea_empty_des:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 596
    :cond_9
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 597
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_siteleveling_new:I

    .line 598
    sget v0, Lcom/qianhe/yct/R$string;->sitezp_empty_des:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 599
    :cond_a
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 600
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_arbitraryline_new:I

    .line 601
    sget v0, Lcom/qianhe/yct/R$string;->arbitrary_empty_des:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 602
    :cond_b
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 603
    sget v2, Lcom/qianhe/yct/R$drawable;->icon_curvedslope:I

    .line 604
    sget v0, Lcom/qianhe/yct/R$string;->curved_slope_empty_des:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 602
    :cond_c
    const-string v0, ""

    .line 606
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->ivEmpty:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 607
    iget-object v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->tvEmptyDesc:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSelectAllState()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 370
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

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

    .line 259
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 264
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->leveling_list:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 266
    :cond_0
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->slope_list:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 268
    :cond_1
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 269
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->ditch_list:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 270
    :cond_2
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 271
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->dike_list:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 272
    :cond_3
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 273
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->line_list:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 274
    :cond_4
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 275
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->polyline_list:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 276
    :cond_5
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 277
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->one_point_area_list:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 278
    :cond_6
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 279
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->three_point_area_list:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 280
    :cond_7
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 281
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->site_leveling_list:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 282
    :cond_8
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 283
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->arbitrary_line_list:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 284
    :cond_9
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 285
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->curve_slope_list:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 286
    :cond_a
    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 287
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->multi_point_area_list:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 289
    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->bottomBtn:Lcom/qianhe/yct/view/ProjectBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/ProjectBottomView;->getSelectedIndex()I

    move-result v0

    if-lez v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->bottomBtn:Lcom/qianhe/yct/view/ProjectBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/ProjectBottomView;->closeExecuteUi()V

    .line 952
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proListAdapter:Lcom/qianhe/yct/adapter/ProjectListAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->closeSelUi()V

    const/4 v0, 0x0

    .line 953
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->showSelectAll(Z)V

    return-void

    .line 955
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    .line 117
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    const-string v1, "proType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->bottomBtn:Lcom/qianhe/yct/view/ProjectBottomView;

    new-instance v1, Lcom/qianhe/yct/activity/ProjectListActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ProjectListActivity$1;-><init>(Lcom/qianhe/yct/activity/ProjectListActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ProjectBottomView;->setOnNavItemClickListener(Lcom/qianhe/yct/view/ProjectBottomView$OnNavItemClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->lltAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/activity/ProjectListActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ProjectListActivity$2;-><init>(Lcom/qianhe/yct/activity/ProjectListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->initProjectList(Landroid/os/Bundle;)V

    .line 227
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ProjectListActivity;->initActivityResultLauncher()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 961
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 962
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 963
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateProjectResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 653
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->isVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 655
    :cond_1
    iget v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->state:I

    if-nez v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object p1, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 658
    :cond_2
    iget p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->index:I

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 660
    iget p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->index:I

    .line 661
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->refreshUiAfterUpload:Z

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->createProject(Z)V

    return-void

    .line 663
    :cond_3
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->refreshUiAfterUpload:Z

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->synEnd(Z)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryProjectResponse;)V
    .locals 13
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 670
    const-string v0, ","

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->isVisible:Z

    if-eqz v1, :cond_36

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 672
    :cond_0
    iget-boolean v1, p1, Lcom/qianhe/yct/event/QueryProjectResponse;->filterByCurrentEngineering:Z

    if-nez v1, :cond_1

    goto/16 :goto_7

    .line 673
    :cond_1
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryProjectResponse;->queryType:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    if-eq v1, v2, :cond_2

    goto/16 :goto_7

    .line 675
    :cond_2
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 676
    iget v1, p1, Lcom/qianhe/yct/event/QueryProjectResponse;->state:I

    const/4 v2, 0x0

    if-nez v1, :cond_34

    .line 677
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 678
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 679
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v4

    iput-object v4, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 680
    invoke-virtual {v4}, Lcom/qianhe/yct/db/DatabaseManager;->applyLatestCurrentEngineeringParams()V

    .line 681
    iget-object v4, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v4

    .line 682
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryProjectResponse;->list:Ljava/util/List;

    invoke-direct {p0, p1, v4}, Lcom/qianhe/yct/activity/ProjectListActivity;->filterProjectsForCurrentList(Ljava/util/List;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object p1

    .line 683
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_30

    .line 684
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget v6, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object v4

    .line 685
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_16

    .line 686
    iget-object v5, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v7, "current_coords"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 687
    iget-object v7, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez v7, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 688
    new-instance v7, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v7}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v7, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 690
    :try_start_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 691
    iget-object v7, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 692
    iget-object v7, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 694
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 698
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 699
    iget-object v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 701
    iget-object v8, v7, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v7, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_7
    iget-object v8, v7, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    iget-object v9, v4, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 703
    iget-object v8, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v8, v4, v7}, Lcom/qianhe/yct/db/DatabaseManager;->needsEngineeringBindingReconcile(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v8

    if-nez v8, :cond_15

    iget-wide v8, v4, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    iget-wide v10, v7, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    cmp-long v12, v8, v10

    if-ltz v12, :cond_15

    iget-wide v8, v4, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    iget-wide v10, v7, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    cmp-long v12, v8, v10

    if-gtz v12, :cond_8

    goto/16 :goto_3

    .line 710
    :cond_8
    iget v7, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_9

    .line 711
    move-object v7, v4

    check-cast v7, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    .line 712
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto/16 :goto_2

    .line 713
    :cond_9
    iget v7, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_a

    .line 714
    move-object v7, v4

    check-cast v7, Lcom/qianhe/baselib/bean/ShuaPoEntity;

    .line 715
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto/16 :goto_2

    .line 716
    :cond_a
    iget v7, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_b

    .line 717
    move-object v7, v4

    check-cast v7, Lcom/qianhe/baselib/bean/WaGouEntity;

    .line 718
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto/16 :goto_2

    .line 719
    :cond_b
    iget v7, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_c

    .line 720
    move-object v7, v4

    check-cast v7, Lcom/qianhe/baselib/bean/DikeEntity;

    .line 721
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto/16 :goto_2

    .line 722
    :cond_c
    iget v7, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_d

    .line 723
    move-object v7, v4

    check-cast v7, Lcom/qianhe/baselib/bean/LineEntity;

    .line 724
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto/16 :goto_2

    .line 725
    :cond_d
    iget v7, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_e

    .line 726
    move-object v7, v4

    check-cast v7, Lcom/qianhe/baselib/bean/PolyLineEntity;

    .line 727
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto/16 :goto_2

    .line 728
    :cond_e
    iget v7, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_f

    .line 729
    move-object v7, v4

    check-cast v7, Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    .line 730
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto/16 :goto_2

    .line 731
    :cond_f
    iget v7, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_10

    .line 732
    move-object v7, v4

    check-cast v7, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    .line 733
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_2

    .line 734
    :cond_10
    iget v7, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_11

    .line 735
    move-object v7, v4

    check-cast v7, Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    .line 736
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_2

    .line 737
    :cond_11
    iget v7, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_12

    .line 738
    move-object v7, v4

    check-cast v7, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    .line 739
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_2

    .line 740
    :cond_12
    iget v7, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_13

    .line 741
    move-object v7, v4

    check-cast v7, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    .line 742
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_2

    .line 743
    :cond_13
    iget v7, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_14

    .line 744
    move-object v7, v4

    check-cast v7, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    .line 745
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 747
    :cond_14
    :goto_2
    iput-boolean v6, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->isChange:Z

    goto/16 :goto_1

    .line 707
    :cond_15
    :goto_3
    iget-object v8, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v8, v4, v7}, Lcom/qianhe/yct/db/DatabaseManager;->syncPullUpdateProjectFromServer(Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_1

    .line 753
    :cond_16
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->isChange:Z

    if-eqz v0, :cond_17

    .line 754
    iput-boolean v2, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->isChange:Z

    .line 755
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryProjectByType(Ljava/lang/Integer;Z)V

    return-void

    .line 759
    :cond_17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 760
    iget-object v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 761
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_1a

    .line 762
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 763
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 764
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto :goto_4

    .line 767
    :cond_19
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ProjectListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto :goto_4

    .line 769
    :cond_1a
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_1c

    .line 770
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 771
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 772
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto :goto_4

    .line 775
    :cond_1b
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ProjectListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto :goto_4

    .line 777
    :cond_1c
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_1e

    .line 778
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 779
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 780
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto :goto_4

    .line 783
    :cond_1d
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ProjectListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto :goto_4

    .line 785
    :cond_1e
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_20

    .line 786
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 787
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 788
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_4

    .line 791
    :cond_1f
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ProjectListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_4

    .line 793
    :cond_20
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_22

    .line 794
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 795
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 796
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_4

    .line 799
    :cond_21
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ProjectListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_4

    .line 801
    :cond_22
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_24

    .line 802
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 803
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 804
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_4

    .line 807
    :cond_23
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ProjectListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_4

    .line 809
    :cond_24
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_26

    .line 810
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 811
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 812
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_4

    .line 815
    :cond_25
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ProjectListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_4

    .line 817
    :cond_26
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_28

    .line 818
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 819
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 820
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_4

    .line 823
    :cond_27
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ProjectListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_4

    .line 825
    :cond_28
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_2a

    .line 826
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 827
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 828
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_4

    .line 831
    :cond_29
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ProjectListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_4

    .line 833
    :cond_2a
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_2c

    .line 834
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 835
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 836
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_4

    .line 839
    :cond_2b
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ProjectListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_4

    .line 841
    :cond_2c
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_2e

    .line 842
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 843
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 844
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_4

    .line 847
    :cond_2d
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ProjectListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_4

    .line 849
    :cond_2e
    iget v5, v4, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_18

    .line 850
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/qianhe/yct/db/DatabaseManager;->querySyncLocalByExactName(ILcom/qianhe/baselib/base/BaseProEntity;)Ljava/util/List;

    move-result-object v5

    .line 851
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 852
    iget-object v5, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->syncInsertOrReconcileProject(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    goto/16 :goto_4

    .line 855
    :cond_2f
    invoke-direct {p0, v4, v5}, Lcom/qianhe/yct/activity/ProjectListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_4

    .line 861
    :cond_30
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 862
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_31
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 863
    iget-object v4, v3, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, v3, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 865
    iget-object v4, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v4, :cond_31

    iget v5, v3, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v5, :cond_31

    .line 866
    invoke-virtual {v4, v3}, Lcom/qianhe/yct/db/DatabaseManager;->deleteById(Lcom/qianhe/baselib/base/BaseProEntity;)J

    goto :goto_5

    .line 872
    :cond_32
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->renameUnsyncedConflictsWithServer(Ljava/util/List;)V

    .line 873
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_33

    .line 875
    iput v2, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->index:I

    .line 876
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ProjectListActivity;->refreshLocalData()V

    .line 877
    invoke-direct {p0, v2}, Lcom/qianhe/yct/activity/ProjectListActivity;->createProject(Z)V

    goto :goto_7

    .line 879
    :cond_33
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ProjectListActivity;->synEnd()V

    goto :goto_7

    .line 882
    :cond_34
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 883
    iput v2, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->index:I

    .line 884
    invoke-direct {p0, v2}, Lcom/qianhe/yct/activity/ProjectListActivity;->createProject(Z)V

    goto :goto_6

    .line 886
    :cond_35
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ProjectListActivity;->synEnd()V

    .line 888
    :goto_6
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryProjectResponse;->err_msg:Ljava/lang/String;

    if-eqz p1, :cond_36

    const-string/jumbo v0, "timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    :cond_36
    :goto_7
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryShareResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 249
    iget-object v0, p1, Lcom/qianhe/yct/event/QueryShareResponse;->list:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryShareResponse;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ShareEntity;

    .line 252
    iget v1, v0, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v2, v0, Lcom/qianhe/baselib/bean/ShareEntity;->shareCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->isShareCodeExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->insertShare(Lcom/qianhe/baselib/bean/ShareEntity;)J

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 939
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    const/4 v0, 0x0

    .line 940
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->isVisible:Z

    .line 941
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->cancel()V

    return-void
.end method

.method protected onResume()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 482
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    const/4 v0, 0x1

    .line 483
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->isVisible:Z

    .line 484
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 485
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ProjectListActivity;->refreshLocalData()V

    .line 487
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    iget v2, p0, Lcom/qianhe/yct/activity/ProjectListActivity;->proType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryProjectByType(Ljava/lang/Integer;Z)V

    return-void
.end method
