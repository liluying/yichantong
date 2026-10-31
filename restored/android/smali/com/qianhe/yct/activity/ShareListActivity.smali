.class public Lcom/qianhe/yct/activity/ShareListActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "ShareListActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

.field private databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

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

.field private isProChange:Z

.field private launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private localAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShareEntity;",
            ">;"
        }
    .end annotation
.end field

.field private shareListAdapter:Lcom/qianhe/yct/adapter/ShareListAdapter;


# direct methods
.method public static synthetic $r8$lambda$CXqujQ4lUBQ_N9_L0TUHjCCFGR0(Lcom/qianhe/yct/activity/ShareListActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 192
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 194
    const-string v0, "shareCode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showShareWayDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ShareListActivity;)Lcom/qianhe/yct/databinding/ActivityShareListBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/ShareListActivity;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ShareListActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->idStrList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlauncher(Lcom/qianhe/yct/activity/ShareListActivity;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmList(Lcom/qianhe/yct/activity/ShareListActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshareListAdapter(Lcom/qianhe/yct/activity/ShareListActivity;)Lcom/qianhe/yct/adapter/ShareListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->shareListAdapter:Lcom/qianhe/yct/adapter/ShareListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdatabaseManager(Lcom/qianhe/yct/activity/ShareListActivity;Lcom/qianhe/yct/db/DatabaseManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputidStrList(Lcom/qianhe/yct/activity/ShareListActivity;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->idStrList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenShareWay(Lcom/qianhe/yct/activity/ShareListActivity;Lcom/qianhe/baselib/bean/ShareEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ShareListActivity;->openShareWay(Lcom/qianhe/baselib/bean/ShareEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ShareListActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ShareListActivity;->showSelectAll(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEmptyView(Lcom/qianhe/yct/activity/ShareListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->updateEmptyView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSelectAllState(Lcom/qianhe/yct/activity/ShareListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->updateSelectAllState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->idStrList:Ljava/util/List;

    return-void
.end method

.method private createProject()V
    .locals 6

    .line 484
    const-string v0, ","

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "current_coords"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 485
    iget-object v2, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 486
    new-instance v2, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v2}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v2, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 488
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 489
    iget-object v2, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 490
    iget-object v2, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 492
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 497
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->localAll:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 498
    iget v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->index:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->localAll:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 499
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->localAll:Ljava/util/List;

    iget v1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 500
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_1

    .line 505
    :cond_1
    iget v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->index:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->index:I

    .line 506
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->createProject()V

    goto :goto_1

    .line 509
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->syncEnd()V

    goto :goto_1

    .line 512
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->syncEnd()V

    :goto_1
    return-void
.end method

.method private getLoacalData()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 308
    iput v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->index:I

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    iget-object v1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseManager;->cleanupDuplicateProjectsByUuid()I

    .line 314
    iget-object v1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v1

    .line 315
    iget-object v2, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 316
    iget-object v4, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v5, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v4

    .line 317
    iget-object v5, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v5

    .line 318
    iget-object v6, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v7, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v7}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    invoke-virtual {v6, v7, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v3

    .line 319
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 320
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 322
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 323
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private initActivityResultLauncher()V
    .locals 2

    .line 190
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/activity/ShareListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ShareListActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/ShareListActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initShareList()V
    .locals 3

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mList:Ljava/util/List;

    .line 220
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->rcvShare:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v2, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->rcvShare:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 228
    :cond_1
    :goto_0
    new-instance v0, Lcom/qianhe/yct/adapter/ShareListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/adapter/ShareListAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->shareListAdapter:Lcom/qianhe/yct/adapter/ShareListAdapter;

    .line 229
    iget-object v1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->rcvShare:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 231
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->shareListAdapter:Lcom/qianhe/yct/adapter/ShareListAdapter;

    new-instance v1, Lcom/qianhe/yct/activity/ShareListActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ShareListActivity$3;-><init>(Lcom/qianhe/yct/activity/ShareListActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/ShareListAdapter$OnActionListener;)V

    return-void
.end method

.method private openShareWay(Lcom/qianhe/baselib/bean/ShareEntity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 288
    :cond_0
    iget v0, p1, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 289
    sget p1, Lcom/qianhe/yct/R$string;->cannot_share_others_projects:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 292
    :cond_1
    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareCode:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showShareWayDialog(Ljava/lang/String;)V

    return-void
.end method

.method private showSelectAll(Z)V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->lltAll:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 275
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 277
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->updateSelectAllState()V

    return-void
.end method

.method private syncEnd()V
    .locals 1

    .line 479
    const-string/jumbo v0, "\u6570\u636e\u540c\u6b65\u7ed3\u675f"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

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

    .line 534
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->resolveSameNameOnSync(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    return-void
.end method

.method private updateEmptyView()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mList:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->lltEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->rcvShare:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 297
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->lltEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->rcvShare:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->ivEmpty:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_share_new:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->tvEmptyDesc:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->share_empty_des:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateSelectAllState()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 283
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mGGA:Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->initShareList()V

    .line 175
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->initActivityResultLauncher()V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->share_list:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->bottomBtn:Lcom/qianhe/yct/view/ShareBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/ShareBottomView;->getSelectedIndex()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 618
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->bottomBtn:Lcom/qianhe/yct/view/ShareBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/ShareBottomView;->closeExecuteUi()V

    .line 619
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->shareListAdapter:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ShareListAdapter;->closeSelUi()V

    const/4 v0, 0x0

    .line 620
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ShareListActivity;->showSelectAll(Z)V

    return-void

    .line 622
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    .line 79
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->bottomBtn:Lcom/qianhe/yct/view/ShareBottomView;

    new-instance v1, Lcom/qianhe/yct/activity/ShareListActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ShareListActivity$1;-><init>(Lcom/qianhe/yct/activity/ShareListActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ShareBottomView;->setOnNavItemClickListener(Lcom/qianhe/yct/view/ShareBottomView$OnNavItemClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->lltAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/activity/ShareListActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ShareListActivity$2;-><init>(Lcom/qianhe/yct/activity/ShareListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->getLoacalData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->localAll:Ljava/util/List;

    if-nez p1, :cond_0

    .line 167
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/qianhe/yct/R$string;->loading:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 169
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryProjectByType(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 628
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateProjectResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 520
    :cond_0
    iget v0, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->state:I

    if-nez v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object p1, p1, Lcom/qianhe/yct/event/CreateProjectResponse;->entity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 523
    :cond_1
    iget p1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->index:I

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->localAll:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 525
    iget p1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->index:I

    .line 526
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->createProject()V

    return-void

    .line 528
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->syncEnd()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/DelShareResponse;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 582
    iget v0, p1, Lcom/qianhe/yct/event/DelShareResponse;->state:I

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-nez v0, :cond_3

    .line 583
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v4, p1, Lcom/qianhe/yct/event/DelShareResponse;->entity:Lcom/qianhe/baselib/bean/ShareEntity;

    invoke-virtual {v0, v4}, Lcom/qianhe/yct/db/DatabaseManager;->deleteShare(Lcom/qianhe/baselib/bean/ShareEntity;)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v2, p1, Lcom/qianhe/yct/event/DelShareResponse;->entity:Lcom/qianhe/baselib/bean/ShareEntity;

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->deleteForeignSharedProjectsAndEngineering(Lcom/qianhe/baselib/bean/ShareEntity;)V

    .line 588
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mList:Ljava/util/List;

    iget-object p1, p1, Lcom/qianhe/yct/event/DelShareResponse;->entity:Lcom/qianhe/baselib/bean/ShareEntity;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 589
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->shareListAdapter:Lcom/qianhe/yct/adapter/ShareListAdapter;

    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/ShareListAdapter;->setData(Ljava/util/List;)V

    .line 590
    sget p1, Lcom/qianhe/yct/R$string;->delete_success:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 592
    :cond_2
    sget p1, Lcom/qianhe/yct/R$string;->delete_failed:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 594
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->updateEmptyView()V

    return-void

    .line 596
    :cond_3
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 598
    sget p1, Lcom/qianhe/yct/R$string;->current_not_login:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 599
    :cond_4
    const-string/jumbo v0, "token error"

    iget-object v1, p1, Lcom/qianhe/yct/event/DelShareResponse;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 600
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->notifyUserLogged(J)V

    .line 601
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/UserSession;->clearLoginInfo()V

    .line 602
    sget p1, Lcom/qianhe/yct/R$string;->current_login_offline:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 604
    :cond_5
    iget p1, p1, Lcom/qianhe/yct/event/DelShareResponse;->state:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ErrorCodeUtils;->getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryProjectResponse;)V
    .locals 13
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 330
    const-string v0, ","

    iget v1, p1, Lcom/qianhe/yct/event/QueryProjectResponse;->state:I

    if-nez v1, :cond_20

    .line 331
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "current_coords"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    iget-object v2, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    new-instance v2, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v2}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object v2, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 335
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 336
    iget-object v2, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v2, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 337
    iget-object v2, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 339
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 342
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->cleanupDuplicateProjectsByUuid()I

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    iget-object v2, p0, Lcom/qianhe/yct/activity/ShareListActivity;->localAll:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 349
    iget-object v6, v5, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v5, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_4
    iget-object v6, p1, Lcom/qianhe/yct/event/QueryProjectResponse;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 351
    iget-object v8, v7, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, v7, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_6
    iget-object v8, v7, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    iget-object v9, v5, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 353
    iget-wide v8, v5, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    iget-wide v10, v7, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    cmp-long v12, v8, v10

    if-ltz v12, :cond_d

    iget-wide v8, v5, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    iget-wide v10, v7, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    cmp-long v12, v8, v10

    if-gtz v12, :cond_7

    goto/16 :goto_3

    .line 358
    :cond_7
    iget v7, v5, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_8

    .line 359
    move-object v7, v5

    check-cast v7, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    .line 360
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_2

    .line 361
    :cond_8
    iget v7, v5, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_9

    .line 362
    move-object v7, v5

    check-cast v7, Lcom/qianhe/baselib/bean/ShuaPoEntity;

    .line 363
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_2

    .line 364
    :cond_9
    iget v7, v5, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_a

    .line 365
    move-object v7, v5

    check-cast v7, Lcom/qianhe/baselib/bean/WaGouEntity;

    .line 366
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_2

    .line 367
    :cond_a
    iget v7, v5, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_b

    .line 368
    move-object v7, v5

    check-cast v7, Lcom/qianhe/baselib/bean/DikeEntity;

    .line 369
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_2

    .line 370
    :cond_b
    iget v7, v5, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v8, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    if-ne v7, v8, :cond_c

    .line 371
    move-object v7, v5

    check-cast v7, Lcom/qianhe/baselib/bean/LineEntity;

    .line 372
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {v8, v9, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 374
    :cond_c
    :goto_2
    iput-boolean v3, p0, Lcom/qianhe/yct/activity/ShareListActivity;->isProChange:Z

    goto/16 :goto_1

    .line 355
    :cond_d
    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v9, v7, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityByUUid(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/lang/Long;)I

    goto/16 :goto_1

    .line 379
    :cond_e
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/ShareListActivity;->isProChange:Z

    if-eqz v2, :cond_f

    .line 380
    iput-boolean v4, p0, Lcom/qianhe/yct/activity/ShareListActivity;->isProChange:Z

    .line 382
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryProjectByType(Ljava/lang/Integer;)V

    return-void

    .line 386
    :cond_f
    iget-object v2, p1, Lcom/qianhe/yct/event/QueryProjectResponse;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 387
    iget-object v5, v3, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 389
    iget-object v5, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v5, v3}, Lcom/qianhe/yct/db/DatabaseManager;->isEntityUUidExists(Lcom/qianhe/baselib/base/BaseProEntity;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_4

    .line 392
    :cond_11
    iget v5, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_13

    .line 393
    move-object v5, v3

    check-cast v5, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    .line 394
    iget-object v7, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    iget-object v8, v3, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v7, v6, v4, v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 395
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 396
    iget-object v6, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v7, v3, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v5, v3}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/lang/Long;)J

    goto :goto_4

    .line 398
    :cond_12
    invoke-direct {p0, v3, v6}, Lcom/qianhe/yct/activity/ShareListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto :goto_4

    .line 400
    :cond_13
    iget v5, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_15

    .line 401
    move-object v5, v3

    check-cast v5, Lcom/qianhe/baselib/bean/ShuaPoEntity;

    .line 402
    iget-object v7, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    iget-object v8, v3, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v7, v6, v4, v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 403
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 404
    iget-object v6, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v7, v3, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v5, v3}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/lang/Long;)J

    goto :goto_4

    .line 406
    :cond_14
    invoke-direct {p0, v3, v6}, Lcom/qianhe/yct/activity/ShareListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto :goto_4

    .line 408
    :cond_15
    iget v5, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_17

    .line 409
    move-object v5, v3

    check-cast v5, Lcom/qianhe/baselib/bean/WaGouEntity;

    .line 410
    iget-object v7, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    iget-object v8, v3, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v7, v6, v4, v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 411
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 412
    iget-object v6, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v7, v3, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v5, v3}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/lang/Long;)J

    goto/16 :goto_4

    .line 414
    :cond_16
    invoke-direct {p0, v3, v6}, Lcom/qianhe/yct/activity/ShareListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_4

    .line 416
    :cond_17
    iget v5, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_19

    .line 417
    move-object v5, v3

    check-cast v5, Lcom/qianhe/baselib/bean/DikeEntity;

    .line 418
    iget-object v7, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    iget-object v8, v3, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v7, v6, v4, v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 419
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 420
    iget-object v6, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v7, v3, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v5, v3}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/lang/Long;)J

    goto/16 :goto_4

    .line 422
    :cond_18
    invoke-direct {p0, v3, v6}, Lcom/qianhe/yct/activity/ShareListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_4

    .line 424
    :cond_19
    iget v5, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    if-ne v5, v7, :cond_10

    .line 425
    move-object v5, v3

    check-cast v5, Lcom/qianhe/baselib/bean/LineEntity;

    .line 426
    iget-object v7, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    iget-object v8, v3, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v7, v6, v4, v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 427
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 428
    iget-object v6, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v7, v3, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v5, v3}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/lang/Long;)J

    goto/16 :goto_4

    .line 430
    :cond_1a
    invoke-direct {p0, v3, v6}, Lcom/qianhe/yct/activity/ShareListActivity;->sysProject(Lcom/qianhe/baselib/base/BaseProEntity;Ljava/util/List;)V

    goto/16 :goto_4

    .line 436
    :cond_1b
    iget-object v1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->localAll:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 437
    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 438
    iget-object v3, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v3, :cond_1c

    iget v4, v2, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v4, :cond_1c

    .line 439
    invoke-virtual {v3, v2}, Lcom/qianhe/yct/db/DatabaseManager;->deleteById(Lcom/qianhe/baselib/base/BaseProEntity;)J

    goto :goto_5

    .line 444
    :cond_1d
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryProjectResponse;->list:Ljava/util/List;

    if-eqz p1, :cond_1e

    .line 445
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->renameUnsyncedConflictsWithServer(Ljava/util/List;)V

    .line 447
    :cond_1e
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->localAll:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 448
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->getLoacalData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->localAll:Ljava/util/List;

    .line 449
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->createProject()V

    goto :goto_7

    .line 451
    :cond_1f
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->syncEnd()V

    goto :goto_7

    .line 454
    :cond_20
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->localAll:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 455
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->getLoacalData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->localAll:Ljava/util/List;

    .line 456
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->createProject()V

    goto :goto_6

    .line 458
    :cond_21
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 460
    :goto_6
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryProjectResponse;->err_msg:Ljava/lang/String;

    const-string/jumbo v0, "timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 461
    sget p1, Lcom/qianhe/yct/R$string;->times_out_please_reload:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->reload:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/ShareListActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ShareListActivity$4;-><init>(Lcom/qianhe/yct/activity/ShareListActivity;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_22
    :goto_7
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryShareResponse;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 539
    iget-object v0, p1, Lcom/qianhe/yct/event/QueryShareResponse;->codes:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 541
    :cond_2
    iget v0, p1, Lcom/qianhe/yct/event/QueryShareResponse;->state:I

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 542
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryShareByShareId(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 543
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 545
    iget-object v3, p1, Lcom/qianhe/yct/event/QueryShareResponse;->list:Ljava/util/List;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 546
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryShareResponse;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/ShareEntity;

    const/4 v4, 0x0

    .line 547
    iput v4, v3, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    .line 548
    iget-wide v5, v3, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v5, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v6, v3, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/qianhe/yct/db/DatabaseManager;->queryShareByShareId(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v5

    .line 550
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 551
    iget-object v4, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4, v3}, Lcom/qianhe/yct/db/DatabaseManager;->insertShare(Lcom/qianhe/baselib/bean/ShareEntity;)J

    goto :goto_0

    .line 552
    :cond_4
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/bean/ShareEntity;

    iget v4, v4, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 553
    iget-object v4, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4, v3}, Lcom/qianhe/yct/db/DatabaseManager;->updateShare(Lcom/qianhe/baselib/bean/ShareEntity;)I

    goto :goto_0

    .line 558
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ShareEntity;

    .line 559
    iget v3, v0, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    if-eqz v3, :cond_7

    goto :goto_1

    .line 560
    :cond_7
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 561
    iget-object v3, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v3, v0}, Lcom/qianhe/yct/db/DatabaseManager;->deleteShare(Lcom/qianhe/baselib/bean/ShareEntity;)J

    .line 562
    iget-object v3, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v3, v0}, Lcom/qianhe/yct/db/DatabaseManager;->deleteForeignSharedProjectsAndEngineering(Lcom/qianhe/baselib/bean/ShareEntity;)V

    goto :goto_1

    .line 566
    :cond_8
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryShareByShareId(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mList:Ljava/util/List;

    .line 567
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->shareListAdapter:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->setData(Ljava/util/List;)V

    .line 568
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->updateEmptyView()V

    return-void

    .line 570
    :cond_9
    const-string/jumbo p1, "\u8bf7\u6c42\u5931\u8d25\uff0c\u4f7f\u7528\u7f13\u5b58\u6570\u636e"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 571
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryShareByShareId(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 572
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 573
    iput-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity;->mList:Ljava/util/List;

    .line 574
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->shareListAdapter:Lcom/qianhe/yct/adapter/ShareListAdapter;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->setData(Ljava/util/List;)V

    .line 576
    :cond_a
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ShareListActivity;->updateEmptyView()V

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

.method protected onPause()V
    .locals 1

    .line 611
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 612
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 265
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 266
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 267
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 269
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryShare(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
