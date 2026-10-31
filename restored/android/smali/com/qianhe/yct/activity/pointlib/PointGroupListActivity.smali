.class public Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "PointGroupListActivity.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/PointGroupListAdapter;

.field private binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

.field private databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private final idStrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isPointGroupSyncing:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mRequireGeodetic:Z

.field private mReturnEcef:Z

.field private mReturnRawElev:Z

.field private mReturnValue:Z

.field private pickFlowLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private pointListLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FIg21uscjTYkOnBtwObrA3lfBxY(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Ljava/io/File;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->showExportSuccessDialog(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Knc0V8w73J7zWgziiZrPz8rvFW0(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Landroid/view/View;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    .line 121
    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 122
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->adapter:Lcom/qianhe/yct/adapter/PointGroupListAdapter;

    iget-object p0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->selecteAll(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TBuErNIjy53aig8FOx-SY410XxI(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;Ljava/io/File;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->exportPointsToExcel(Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ggUqU9HANfnKAmEL0iEa1BNzqds(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$mlSvSWTtYOzGYq_enL8TlkaBahY(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    .line 90
    const-string v0, "openPointList"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/PointListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const-string v1, "groupLocalId"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 93
    const-string v6, "groupName"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    const-string v8, "pendingGroupName"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    cmp-long v9, v4, v2

    if-lez v9, :cond_1

    .line 96
    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 97
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    invoke-virtual {v0, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->putPickExtras(Landroid/content/Intent;)V

    .line 102
    iget-object p0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->pointListLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    .line 105
    :cond_3
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic $r8$lambda$pJnveg7sMvW9Gie0lM1T-sNnMxU(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V
    .locals 1

    .line 245
    sget v0, Lcom/qianhe/yct/R$string;->export_failed:I

    .line 245
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xvhHLT_IufWzK-LmIBPBxxqhySA(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Ljava/io/File;Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;D)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    :try_start_0
    iget-object p2, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    invoke-static/range {p0 .. p5}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->export(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/util/List;D)Ljava/io/File;

    move-result-object p1

    .line 242
    new-instance p2, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Ljava/io/File;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 244
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    new-instance p1, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Lcom/qianhe/yct/adapter/PointGroupListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->adapter:Lcom/qianhe/yct/adapter/PointGroupListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->idStrList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmList(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReturnValue(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->mReturnValue:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpickFlowLauncher(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->pickFlowLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpointListLauncher(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->pointListLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdeleteSelectedGroups(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->deleteSelectedGroups()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mexportPointGroup(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->exportPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmodifySelectedGroup(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->modifySelectedGroup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenModifyPage(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->openModifyPage(Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mputPickExtras(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->putPickExtras(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->showSelectAll(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEmptyView(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->updateEmptyView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSelectAllState(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->updateSelectAllState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->idStrList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Ljava/io/File;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->shareFile(Ljava/io/File;)V

    return-void
.end method

.method private deleteSelectedGroups()V
    .locals 7

    .line 158
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    sget v0, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 162
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/qianhe/yct/R$string;->delete_point_group_confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 163
    :goto_1
    sget v0, Lcom/qianhe/yct/R$string;->want_to_delete:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$2;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$2;-><init>(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V

    const-string v4, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private exportPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryPoint(Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 224
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 228
    :cond_1
    new-instance v1, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;

    invoke-direct {v1}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;-><init>()V

    .line 229
    new-instance v2, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment;->setOnConfirmListener(Lcom/qianhe/yct/dialog/ChooseExportFolderDialogFragment$OnConfirmListener;)V

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "ChooseExportFolderDialogFragment"

    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 225
    :cond_2
    :goto_0
    sget p1, Lcom/qianhe/yct/R$string;->no_point_in_group:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method private exportPointsToExcel(Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointlibEntity;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 234
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v2, p0

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->calculatePhaseToHang()D

    move-result-wide v6

    .line 239
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda4;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Ljava/io/File;Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;D)V

    const-string p1, "point-group-export"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 235
    :goto_0
    sget p1, Lcom/qianhe/yct/R$string;->export_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method private initList()V
    .locals 3

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->mList:Ljava/util/List;

    .line 270
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->rcvPointGroupList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v2, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->rcvPointGroupList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 276
    :goto_0
    new-instance v0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->mList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/adapter/PointGroupListAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->adapter:Lcom/qianhe/yct/adapter/PointGroupListAdapter;

    .line 277
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->rcvPointGroupList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 278
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->adapter:Lcom/qianhe/yct/adapter/PointGroupListAdapter;

    new-instance v1, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;-><init>(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->lltAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->bottomBtn:Lcom/qianhe/yct/view/PointBottomView;

    new-instance v1, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$1;-><init>(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/PointBottomView;->setOnNavItemClickListener(Lcom/qianhe/yct/view/PointBottomView$OnNavItemClickListener;)V

    return-void
.end method

.method private modifySelectedGroup()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget v0, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 201
    sget v0, Lcom/qianhe/yct/R$string;->only_one_can_selected_modify:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->idStrList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 205
    iget-object v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupByLocalId(J)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->openModifyPage(Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    return-void
.end method

.method private openModifyPage(Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 210
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    const-string v1, "editGroupLocalId"

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 212
    const-string v1, "groupName"

    iget-object p1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->mReturnValue:Z

    if-eqz p1, :cond_1

    .line 214
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->putPickExtras(Landroid/content/Intent;)V

    .line 215
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->pickFlowLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    .line 217
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private putPickExtras(Landroid/content/Intent;)V
    .locals 2

    .line 113
    const-string v0, "returnValue"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    const-string v0, "requireGeodetic"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->mRequireGeodetic:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    const-string v0, "returnEcef"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->mReturnEcef:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string v0, "returnRawElev"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->mReturnRawElev:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private reloadListFromLocal()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllPointGroups()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->mList:Ljava/util/List;

    .line 331
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->adapter:Lcom/qianhe/yct/adapter/PointGroupListAdapter;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->setData(Ljava/util/List;)V

    .line 332
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->updateEmptyView()V

    .line 333
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->adapter:Lcom/qianhe/yct/adapter/PointGroupListAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->closeSelUi()V

    .line 334
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->bottomBtn:Lcom/qianhe/yct/view/PointBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/PointBottomView;->closeExecuteUi()V

    const/4 v0, 0x0

    .line 335
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->showSelectAll(Z)V

    return-void
.end method

.method private showExportSuccessDialog(Ljava/io/File;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u70b9\u5e93\u7ec4\u5bfc\u51fa\u6210\u529f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 256
    sget v0, Lcom/qianhe/yct/R$string;->export_success:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/qianhe/yct/R$string;->share:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v0, Lcom/qianhe/yct/R$string;->close:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$3;

    invoke-direct {v9, p0, p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$3;-><init>(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Ljava/io/File;)V

    const-string v8, ""

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private showSelectAll(Z)V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->lltAll:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 341
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 343
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->updateSelectAllState()V

    return-void
.end method

.method private syncAllGroupPoints()V
    .locals 19

    move-object/from16 v0, p0

    .line 399
    iget-object v1, v0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllPointGroups()Ljava/util/List;

    move-result-object v1

    .line 400
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 401
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 402
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

    :cond_1
    return-void
.end method

.method private syncPointGroupWithServer()V
    .locals 11

    .line 353
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->isPointGroupSyncing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 355
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->isPointGroupSyncing:Z

    .line 356
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

.method private updateEmptyView()V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->mList:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->lltEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->rcvPointGroupList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 423
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->lltEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->rcvPointGroupList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->ivEmpty:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_pointlib_new:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 426
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->tvEmptyDesc:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->no_point_group:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updatePointGroupData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;",
            ">;)V"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-static {v0, p1}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->mergePointGroupsFromServer(Lcom/qianhe/yct/db/DatabaseManager;Ljava/util/List;)V

    .line 394
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->reloadListFromLocal()V

    .line 395
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->syncAllGroupPoints()V

    return-void
.end method

.method private updateSelectAllState()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 349
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private uploadPendingPointsForGroup(J)V
    .locals 7

    .line 371
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupByLocalId(J)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 372
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_1

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->queryPoint(Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object p1

    .line 374
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 375
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 376
    iget-wide v5, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    cmp-long v2, v5, v3

    if-gtz v2, :cond_1

    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    iget-wide v5, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-virtual {v2, v5, v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isPointUploading(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 377
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 381
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->addPoints(Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;)V

    :cond_3
    :goto_1
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

    .line 446
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 451
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->point_group_list:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->bottomBtn:Lcom/qianhe/yct/view/PointBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/PointBottomView;->getSelectedIndex()I

    move-result v0

    if-lez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->bottomBtn:Lcom/qianhe/yct/view/PointBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/PointBottomView;->closeExecuteUi()V

    .line 437
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->adapter:Lcom/qianhe/yct/adapter/PointGroupListAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->closeSelUi()V

    const/4 v0, 0x0

    .line 438
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->showSelectAll(Z)V

    return-void

    .line 440
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    .line 70
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 72
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    const-string v0, "returnValue"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->mReturnValue:Z

    .line 76
    const-string v0, "requireGeodetic"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->mRequireGeodetic:Z

    .line 77
    const-string v0, "returnEcef"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->mReturnEcef:Z

    .line 78
    const-string v0, "returnRawElev"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->mReturnRawElev:Z

    .line 80
    :cond_0
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->pointListLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 86
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->pickFlowLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 108
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->initView()V

    .line 109
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->initList()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 469
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 470
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/PointGroupResponse;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 362
    iget v0, p1, Lcom/qianhe/yct/event/PointGroupResponse;->state:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-wide v4, p1, Lcom/qianhe/yct/event/PointGroupResponse;->id:J

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    iget-wide v2, p1, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    cmp-long v6, v2, v0

    if-lez v6, :cond_1

    .line 364
    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v6, p1, Lcom/qianhe/yct/event/PointGroupResponse;->uuid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/db/DatabaseManager;->updatePointGroupServerIds(JJLjava/lang/String;)V

    .line 365
    iget-wide v0, p1, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->uploadPendingPointsForGroup(J)V

    .line 366
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->reloadListFromLocal()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryPointGroupResponse;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 387
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->isPointGroupSyncing:Z

    if-eqz p1, :cond_1

    .line 388
    iget v0, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse;->state:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse;->list:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->updatePointGroupData(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryPointResponse;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_4

    .line 409
    iget v0, p1, Lcom/qianhe/yct/event/QueryPointResponse;->state:I

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/qianhe/yct/event/QueryPointResponse;->list:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllPointGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 412
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    iget-wide v4, p1, Lcom/qianhe/yct/event/QueryPointResponse;->groupId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    goto :goto_1

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object p1, p1, Lcom/qianhe/yct/event/QueryPointResponse;->list:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->mergePointsFromServer(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;)V

    :cond_4
    :goto_1
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
    .locals 0

    .line 319
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 320
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->reloadListFromLocal()V

    .line 321
    invoke-direct {p0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->syncPointGroupWithServer()V

    return-void
.end method
