.class public Lcom/qianhe/yct/activity/ConverParamsListActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "ConverParamsListActivity.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

.field private binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

.field private createLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private filterParamType:I

.field private idStrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isChange:Z

.field private isSyncing:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/GnssTransParamEntity;",
            ">;"
        }
    .end annotation
.end field

.field private selectMode:Z

.field private showCurrentUse:Z


# direct methods
.method public static synthetic $r8$lambda$-ZQH8IxTrwlfLeh5VfYnlTCtuCQ(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 1

    .line 490
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AMyAX-WMIAQMYFeRDtc6jOG989g(Lcom/qianhe/yct/activity/ConverParamsListActivity;Landroid/view/View;)V
    .locals 1

    .line 171
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    .line 171
    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 172
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

    iget-object p0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->selectAll(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$t9ITiL7c76_a-n0sxKQztUZ8e3Y(Lcom/qianhe/yct/activity/ConverParamsListActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 7

    .line 87
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->selectMode:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "localId"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-gtz v0, :cond_2

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Lcom/qianhe/yct/adapter/ConverParamsListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->idStrList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectMode(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->selectMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputidStrList(Lcom/qianhe/yct/activity/ConverParamsListActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->idStrList:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteSelectedParams(Lcom/qianhe/yct/activity/ConverParamsListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->deleteSelectedParams()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindReferencedTransParamTip(Lcom/qianhe/yct/activity/ConverParamsListActivity;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->findReferencedTransParamTip(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misAutoCreatedDefaultEngineeringInUse(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->isAutoCreatedDefaultEngineeringInUse()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mopenCreatePage(Lcom/qianhe/yct/activity/ConverParamsListActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->openCreatePage(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ConverParamsListActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->showSelectAll(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchCurrentTransParam(Lcom/qianhe/yct/activity/ConverParamsListActivity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->switchCurrentTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSelectAllState(Lcom/qianhe/yct/activity/ConverParamsListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->updateSelectAllState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->idStrList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->showCurrentUse:Z

    return-void
.end method

.method private applyTransParamToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 2

    .line 405
    iget v0, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    iput v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    .line 406
    iget-wide v0, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    .line 407
    iget-wide v0, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    .line 408
    iput-object p2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    return-void
.end method

.method private applyTransformParamsToDevice(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 2

    .line 412
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getInstance()Lcom/qianhe/baselib/manage/GnssParamTransformManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/manage/GnssParamTransformManager;->getGnssParamTransform()Lcom/qh/yctdevice/GnssParamTransform;

    move-result-object v0

    .line 413
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qianhe/yct/db/DatabaseManager;->resolveGnssTransParamForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 415
    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->applyToTransform(Lcom/qh/yctdevice/GnssParamTransform;)V

    :cond_0
    return-void
.end method

.method private deleteSelectedParams()V
    .locals 7

    .line 237
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByLocalId(J)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->softDeleteGnssTransParamByLocalId(J)I

    .line 247
    iget-wide v1, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    .line 248
    sget v1, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    const/4 v2, 0x1

    iget-wide v3, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->deleteGnssTransParam(ZJ)V

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 254
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->reloadListFromLocal()V

    .line 255
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->bottomBtn:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/EngineeringBottomView;->closeExecuteUi()V

    .line 256
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->closeSelUi()V

    const/4 v0, 0x0

    .line 257
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->showSelectAll(Z)V

    return-void
.end method

.method private findReferencedTransParamTip(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 362
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 363
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 366
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    iget-object v4, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByLocalId(J)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 371
    iget-wide v5, v4, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x0

    .line 372
    :goto_1
    iget-object v7, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v7, v2, v3, v5, v6}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringReferencingTransParam(JJ)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v4, :cond_3

    .line 374
    iget-object p1, v4, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object v1, v4, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    .line 375
    :cond_3
    iget-object p1, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string p1, ""

    .line 376
    :goto_2
    sget v0, Lcom/qianhe/yct/R$string;->trans_param_referenced_by_engineering_cannot_delete:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    nop

    goto :goto_0

    :cond_5
    :goto_3
    return-object v0
.end method

.method private getCurrentTransParamLocalId()J
    .locals 5

    .line 320
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 321
    iget v3, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-lez v3, :cond_0

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    return-wide v3

    :cond_0
    return-wide v1
.end method

.method private initCreateLauncher()V
    .locals 2

    .line 86
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsListActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/ConverParamsListActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->createLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private initList()V
    .locals 3

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->mList:Ljava/util/List;

    .line 178
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->rcvConverParamsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v2, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->rcvConverParamsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 184
    :goto_0
    new-instance v0, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->mList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

    .line 185
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->rcvConverParamsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;-><init>(Lcom/qianhe/yct/activity/ConverParamsListActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->bottomBtn:Lcom/qianhe/yct/view/EngineeringBottomView;

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;-><init>(Lcom/qianhe/yct/activity/ConverParamsListActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/EngineeringBottomView;->setOnNavItemClickListener(Lcom/qianhe/yct/view/EngineeringBottomView$OnNavItemClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->lltAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/activity/ConverParamsListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/ConverParamsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isAutoCreatedDefaultEngineeringInUse()Z
    .locals 6

    .line 329
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    .line 333
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->isDefaultEngineeringName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isDefaultEngineeringName(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 338
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 341
    :cond_0
    sget v2, Lcom/qianhe/yct/R$string;->Default:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 344
    :cond_1
    new-array v2, v0, [Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    aput-object v4, v2, v3

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    aput-object v4, v2, v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 349
    aget-object v5, v2, v4

    .line 350
    new-instance v6, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 351
    invoke-virtual {v6, v5}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 352
    invoke-virtual {p0, v6}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/qianhe/yct/R$string;->Default:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 353
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    add-int/2addr v4, v1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private openCreatePage(J)V
    .locals 4

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/ConverParamsCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 100
    const-string v1, "localId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 102
    :cond_0
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->selectMode:Z

    if-eqz p1, :cond_2

    .line 103
    const-string p1, "selectMode"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    iget p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->filterParamType:I

    if-lez p1, :cond_1

    .line 105
    const-string p2, "paramType"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->createLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    .line 109
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private refreshCurrentTransParamIndicator()V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->showCurrentUse:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->getCurrentTransParamLocalId()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->setCurrentTransParamLocalId(J)V

    return-void
.end method

.method private reloadListFromLocal()V
    .locals 4

    .line 295
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllGnssTransParams()Ljava/util/List;

    move-result-object v0

    .line 296
    iget v1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->filterParamType:I

    if-lez v1, :cond_1

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->mList:Ljava/util/List;

    .line 298
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 299
    iget v2, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    iget v3, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->filterParamType:I

    if-ne v2, v3, :cond_0

    .line 300
    iget-object v2, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    :cond_1
    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->mList:Ljava/util/List;

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->setData(Ljava/util/List;)V

    .line 307
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->refreshCurrentTransParamIndicator()V

    .line 308
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->updateEmptyView()V

    .line 309
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->closeSelUi()V

    .line 310
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->bottomBtn:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/EngineeringBottomView;->closeExecuteUi()V

    const/4 v0, 0x0

    .line 311
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->showSelectAll(Z)V

    return-void
.end method

.method private showSelectAll(Z)V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->lltAll:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 263
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->updateSelectAllState()V

    return-void
.end method

.method private switchCurrentTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 386
    sget p1, Lcom/qianhe/yct/R$string;->no_engineering_applied:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 389
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->applyTransParamToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    .line 390
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->applyTransformParamsToDevice(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 391
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)I

    .line 392
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 393
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    .line 395
    :cond_2
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 397
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 399
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5207\u6362\u8f6c\u6362\u53c2\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> \u5de5\u7a0b "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->refreshCurrentTransParamIndicator()V

    .line 401
    sget p1, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method private syncWithServer()V
    .locals 12

    .line 288
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->isSyncing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->isSyncing:Z

    .line 290
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

.method private updateData(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 441
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 442
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 443
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllGnssTransParams()Ljava/util/List;

    move-result-object v3

    if-eqz p1, :cond_c

    .line 445
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 446
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_7

    .line 447
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 448
    iget-object v7, v6, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 449
    iget-object v7, v6, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;

    .line 452
    iget v9, v8, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->state:I

    if-eqz v9, :cond_3

    goto :goto_0

    .line 453
    :cond_3
    iget-object v9, v8, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->uuid:Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v8, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->uuid:Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_4
    iget-object v9, v8, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->uuid:Ljava/lang/String;

    iget-object v10, v6, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 456
    iget-wide v9, v6, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->version:J

    iget-wide v11, v8, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->version:J

    cmp-long v13, v9, v11

    if-gtz v13, :cond_5

    .line 457
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/qianhe/yct/db/DatabaseManager;->fromQueryItem(Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v8

    .line 458
    iget-wide v9, v6, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    iput-wide v9, v8, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    .line 459
    invoke-virtual {v8, v6}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 460
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/qianhe/yct/db/DatabaseManager;->updateGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)I

    goto :goto_0

    .line 463
    :cond_5
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    const/4 v8, 0x1

    .line 464
    iput-boolean v8, v0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->isChange:Z

    goto :goto_0

    .line 469
    :cond_6
    iget-boolean v4, v0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->isChange:Z

    if-eqz v4, :cond_7

    .line 470
    iput-boolean v5, v0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->isChange:Z

    .line 471
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v6

    const/4 v15, 0x1

    const/16 v16, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-virtual/range {v6 .. v16}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryGnssTransParam(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;JJII)V

    return-void

    .line 476
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;

    .line 477
    iget v7, v6, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->state:I

    if-eqz v7, :cond_9

    goto :goto_1

    .line 478
    :cond_9
    iget-object v7, v6, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->uuid:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 479
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v7

    iget-object v8, v6, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryGnssTransParamByName(Ljava/lang/String;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v7

    if-nez v7, :cond_a

    .line 481
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v7

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/qianhe/yct/db/DatabaseManager;->fromQueryItem(Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/qianhe/yct/db/DatabaseManager;->insertGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)J

    goto :goto_1

    .line 484
    :cond_a
    iget-wide v8, v7, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->version:J

    iget-wide v10, v6, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->version:J

    cmp-long v12, v8, v10

    if-gtz v12, :cond_b

    .line 485
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/qianhe/yct/db/DatabaseManager;->fromQueryItem(Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-result-object v6

    .line 486
    iget-wide v7, v7, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    iput-wide v7, v6, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    .line 487
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/qianhe/yct/db/DatabaseManager;->updateGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)I

    goto :goto_1

    .line 489
    :cond_b
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v8

    iget-wide v9, v6, Lcom/qianhe/yct/event/QueryGnssTransParamResponse$GnssTransParamItem;->id:J

    invoke-virtual {v8, v5, v9, v10}, Lcom/qianhe/yct/utils/NetworkUserLoader;->deleteGnssTransParam(ZJ)V

    .line 490
    iget-object v6, v0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    invoke-virtual {v6}, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v6

    new-instance v8, Lcom/qianhe/yct/activity/ConverParamsListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v8, v7}, Lcom/qianhe/yct/activity/ConverParamsListActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    const-wide/16 v9, 0x1f4

    invoke-virtual {v6, v8, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 497
    :cond_c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 498
    iget-object v4, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 499
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v4

    iget-wide v5, v3, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    invoke-virtual {v4, v5, v6}, Lcom/qianhe/yct/db/DatabaseManager;->deleteGnssTransParamByLocalId(J)J

    goto :goto_2

    .line 503
    :cond_e
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->reloadListFromLocal()V

    .line 504
    invoke-direct {v0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->uploadPendingTransParamsToServer()V

    return-void
.end method

.method private updateEmptyView()V
    .locals 3

    .line 420
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->mList:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->lltEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->rcvConverParamsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 421
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->lltEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->rcvConverParamsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSelectAllState()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 271
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private uploadPendingTransParamsToServer()V
    .locals 7

    .line 431
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllGnssTransParams()Ljava/util/List;

    move-result-object v0

    .line 432
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-nez v1, :cond_1

    goto :goto_0

    .line 434
    :cond_1
    iget-object v2, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    .line 435
    :cond_2
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    goto :goto_0

    :cond_3
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

    .line 541
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 546
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->params_conver:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 547
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->bottomBtn:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/EngineeringBottomView;->getSelectedIndex()I

    move-result v0

    if-lez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->bottomBtn:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/EngineeringBottomView;->closeExecuteUi()V

    .line 570
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->adapter:Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->closeSelUi()V

    const/4 v0, 0x0

    .line 571
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->showSelectAll(Z)V

    return-void

    .line 573
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    .line 74
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selectMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->selectMode:Z

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "showCurrentUse"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->showCurrentUse:Z

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "paramType"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->filterParamType:I

    .line 78
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 79
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 80
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->initCreateLauncher()V

    .line 81
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->initView()V

    .line 82
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->initList()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 579
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 580
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/DeleteGnssTransParamResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 530
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 531
    iget v0, p1, Lcom/qianhe/yct/event/DeleteGnssTransParamResponse;->state:I

    const/16 v1, 0x2368

    if-ne v0, v1, :cond_1

    .line 532
    iget-object v0, p1, Lcom/qianhe/yct/event/DeleteGnssTransParamResponse;->errMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/qianhe/yct/event/DeleteGnssTransParamResponse;->errMsg:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->delete_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 533
    :goto_0
    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 535
    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->delete_success:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/GnssTransParamResponse;)V
    .locals 11
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    .line 520
    iget-wide v0, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->localDbId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    iget v0, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->state:I

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->id:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 522
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v5

    iget-wide v6, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->localDbId:J

    iget-wide v8, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->id:J

    iget-object v10, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->uuid:Ljava/lang/String;

    invoke-virtual/range {v5 .. v10}, Lcom/qianhe/yct/db/DatabaseManager;->updateGnssTransParamServerIds(JJLjava/lang/String;)V

    return-void

    .line 524
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u8f6c\u6362\u53c2\u6570\u4e0a\u4f20\u5931\u8d25 localId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->localDbId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/yct/event/GnssTransParamResponse;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryGnssTransParamResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->isSyncing:Z

    if-eqz p1, :cond_0

    .line 510
    iget v0, p1, Lcom/qianhe/yct/event/QueryGnssTransParamResponse;->state:I

    if-nez v0, :cond_0

    .line 511
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryGnssTransParamResponse;->list:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->updateData(Ljava/util/List;)V

    return-void

    .line 513
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->reloadListFromLocal()V

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

    .line 276
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 277
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->createDefaultEngineeringIfAbsentLocally()Z

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->reloadListFromLocal()V

    .line 281
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->syncWithServer()V

    :cond_1
    return-void
.end method
