.class public Lcom/qianhe/yct/activity/PointListActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "PointListActivity.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

.field private databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private groupLocalId:J

.field private groupName:Ljava/lang/String;

.field private final idStrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isPointSyncing:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointlibEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mRequireGeodetic:Z

.field private mReturnEcef:Z

.field private mReturnRawElev:Z

.field private mReturnValue:Z

.field private pendingGroupName:Ljava/lang/String;

.field private pointAdapter:Lcom/qianhe/yct/adapter/PointListAdapter;

.field private pointEditorLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$C3wCM5CbF109s0TdOrxwx4xUX2E(Lcom/qianhe/yct/activity/PointListActivity;Landroid/view/View;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    .line 108
    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 109
    iget-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity;->pointAdapter:Lcom/qianhe/yct/adapter/PointListAdapter;

    iget-object p0, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/qianhe/yct/adapter/PointListAdapter;->selecteAll(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TgkxzUV6sOHlvKo-IzjXizdzy6s(Lcom/qianhe/yct/activity/PointListActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 76
    const-string v0, "groupLocalId"

    iget-wide v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupLocalId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 79
    iput-wide v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupLocalId:J

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity;->pendingGroupName:Ljava/lang/String;

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PointListActivity;->reloadPoints()V

    .line 84
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PointListActivity;->uploadPendingPointsAsync()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/PointListActivity;)Lcom/qianhe/yct/databinding/ActivityPointListBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/PointListActivity;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/PointListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupLocalId(Lcom/qianhe/yct/activity/PointListActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupLocalId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/PointListActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/PointListActivity;->idStrList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmList(Lcom/qianhe/yct/activity/PointListActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/PointListActivity;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReturnValue(Lcom/qianhe/yct/activity/PointListActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/activity/PointListActivity;->mReturnValue:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingGroupName(Lcom/qianhe/yct/activity/PointListActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/PointListActivity;->pendingGroupName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpointAdapter(Lcom/qianhe/yct/activity/PointListActivity;)Lcom/qianhe/yct/adapter/PointListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/PointListActivity;->pointAdapter:Lcom/qianhe/yct/adapter/PointListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdeleteSelectedPoints(Lcom/qianhe/yct/activity/PointListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PointListActivity;->deleteSelectedPoints()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchPointEditor(Lcom/qianhe/yct/activity/PointListActivity;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/PointListActivity;->launchPointEditor(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmodifySelectedPoint(Lcom/qianhe/yct/activity/PointListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PointListActivity;->modifySelectedPoint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenPointDetail(Lcom/qianhe/yct/activity/PointListActivity;Lcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/PointListActivity;->openPointDetail(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreturnSelectedPoint(Lcom/qianhe/yct/activity/PointListActivity;Lcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/PointListActivity;->returnSelectedPoint(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/PointListActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/PointListActivity;->showSelectAll(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEmptyView(Lcom/qianhe/yct/activity/PointListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PointListActivity;->updateEmptyView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSelectAllState(Lcom/qianhe/yct/activity/PointListActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PointListActivity;->updateSelectAllState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->idStrList:Ljava/util/List;

    return-void
.end method

.method private deleteSelectedPoints()V
    .locals 7

    .line 148
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget v0, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 152
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/qianhe/yct/R$string;->deletion_cannot_restored:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 154
    :goto_1
    sget v0, Lcom/qianhe/yct/R$string;->want_to_delete_point:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/qianhe/yct/activity/PointListActivity$2;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/PointListActivity$2;-><init>(Lcom/qianhe/yct/activity/PointListActivity;)V

    const-string v4, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private initProjectList()V
    .locals 3

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->mList:Ljava/util/List;

    .line 207
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->rcvPointList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v2, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->rcvPointList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 213
    :goto_0
    new-instance v0, Lcom/qianhe/yct/adapter/PointListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->mList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/adapter/PointListAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->pointAdapter:Lcom/qianhe/yct/adapter/PointListAdapter;

    .line 214
    iget-object v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->rcvPointList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 215
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->pointAdapter:Lcom/qianhe/yct/adapter/PointListAdapter;

    new-instance v1, Lcom/qianhe/yct/activity/PointListActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/PointListActivity$3;-><init>(Lcom/qianhe/yct/activity/PointListActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/PointListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;)V

    return-void
.end method

.method private launchPointEditor(Landroid/content/Intent;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->pointEditorLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private modifySelectedPoint()V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget v0, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 192
    sget v0, Lcom/qianhe/yct/R$string;->only_one_can_selected_modify:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 195
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    iget-object v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->idStrList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "pointId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 197
    const-string v1, "groupLocalId"

    iget-wide v2, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupLocalId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 198
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/PointListActivity;->launchPointEditor(Landroid/content/Intent;)V

    return-void
.end method

.method private openPointDetail(Lcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 4

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    const-string v1, "pointId"

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 251
    const-string p1, "groupLocalId"

    iget-wide v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupLocalId:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 252
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/PointListActivity;->launchPointEditor(Landroid/content/Intent;)V

    return-void
.end method

.method private queryPointsFromServerAfterUpload()V
    .locals 13

    .line 347
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->isPointSyncing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 349
    :cond_1
    iget-wide v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    goto :goto_0

    .line 350
    :cond_2
    iget-object v4, p0, Lcom/qianhe/yct/activity/PointListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupByLocalId(J)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 351
    iget-wide v4, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 352
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->isPointSyncing:Z

    .line 353
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    const/4 v11, 0x1

    const/16 v12, 0xc8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryPoints(JLjava/util/List;Ljava/lang/String;JJII)V

    :cond_4
    :goto_0
    return-void
.end method

.method private reloadPoints()V
    .locals 5

    .line 361
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->pointAdapter:Lcom/qianhe/yct/adapter/PointListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 363
    iget-wide v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 364
    iget-object v2, p0, Lcom/qianhe/yct/activity/PointListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->mRequireGeodetic:Z

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPoint(Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->pointAdapter:Lcom/qianhe/yct/adapter/PointListAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/PointListAdapter;->setData(Ljava/util/List;)V

    .line 368
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PointListActivity;->updateEmptyView()V

    return-void
.end method

.method private resolveReturnPlaneCoords(Lcom/qianhe/baselib/bean/PointlibEntity;)[D
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    if-nez v1, :cond_0

    .line 390
    new-array v1, v2, [D

    fill-array-data v1, :array_0

    return-object v1

    .line 391
    :cond_0
    iget-wide v5, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    cmpl-double v7, v5, v3

    if-nez v7, :cond_a

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    cmpl-double v9, v7, v3

    if-nez v9, :cond_a

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    cmpl-double v9, v7, v3

    if-eqz v9, :cond_1

    goto/16 :goto_7

    .line 394
    :cond_1
    iget-wide v5, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    cmpl-double v7, v5, v3

    if-nez v7, :cond_3

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    cmpl-double v9, v7, v3

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v7, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    move-wide v10, v7

    goto :goto_1

    :cond_3
    :goto_0
    move-wide v10, v5

    :goto_1
    cmpl-double v7, v5, v3

    if-nez v7, :cond_5

    .line 395
    iget-wide v5, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    cmpl-double v7, v5, v3

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    iget-wide v5, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    :goto_2
    move-wide v12, v5

    goto :goto_4

    :cond_5
    :goto_3
    iget-wide v5, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    goto :goto_2

    .line 396
    :goto_4
    iget-wide v5, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    cmpl-double v7, v5, v3

    if-eqz v7, :cond_6

    :goto_5
    move-wide v14, v5

    goto :goto_6

    :cond_6
    iget-wide v5, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    goto :goto_5

    :goto_6
    cmpl-double v1, v10, v3

    if-nez v1, :cond_7

    cmpl-double v1, v12, v3

    if-nez v1, :cond_7

    cmpl-double v1, v14, v3

    if-nez v1, :cond_7

    .line 398
    new-array v1, v2, [D

    fill-array-data v1, :array_1

    return-object v1

    .line 400
    :cond_7
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_8

    .line 401
    sget v1, Lcom/qianhe/yct/R$string;->no_engineering_applied:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-object v3

    .line 404
    :cond_8
    new-array v1, v2, [D

    .line 405
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v9

    move-object/from16 v16, v1

    invoke-virtual/range {v9 .. v16}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToAlignedProj(DDD[D)Z

    move-result v1

    if-nez v1, :cond_9

    .line 406
    sget v1, Lcom/qianhe/yct/R$string;->coord_convert_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-object v3

    :cond_9
    return-object v16

    .line 392
    :cond_a
    :goto_7
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    iget-wide v7, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    new-array v1, v2, [D

    const/4 v2, 0x0

    aput-wide v5, v1, v2

    const/4 v2, 0x1

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    aput-wide v7, v1, v2

    return-object v1

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private returnSelectedPoint(Lcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 12

    const/4 v0, 0x3

    if-nez p1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-boolean v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->mRequireGeodetic:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/PointlibEntity;->hasGeodeticCoords()Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    sget p1, Lcom/qianhe/yct/R$string;->no_geodetic_coordinates:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 262
    :cond_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/PointListActivity;->resolveReturnPlaneCoords(Lcom/qianhe/baselib/bean/PointlibEntity;)[D

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    .line 266
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 267
    iget-boolean v3, p0, Lcom/qianhe/yct/activity/PointListActivity;->mRequireGeodetic:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/qianhe/yct/activity/PointListActivity;->mReturnRawElev:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/PointlibEntity;->hasGeodeticCoords()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 268
    :cond_3
    iget-wide v5, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    .line 269
    iget-wide v7, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    .line 270
    iget-wide v9, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    .line 271
    const-string v3, "geodetic"

    new-array v4, v0, [D

    const/4 v11, 0x0

    aput-wide v5, v4, v11

    const/4 v11, 0x1

    aput-wide v7, v4, v11

    const/4 v11, 0x2

    aput-wide v9, v4, v11

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 272
    iget-boolean v3, p0, Lcom/qianhe/yct/activity/PointListActivity;->mReturnEcef:Z

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->ensureCurrentEngineering()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 273
    new-array v11, v0, [D

    .line 274
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v4

    invoke-virtual/range {v4 .. v11}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geodeticToXyzOnly(DDD[D)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    const-string v0, "ecef"

    invoke-virtual {v2, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 279
    :cond_4
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->mReturnRawElev:Z

    if-eqz v0, :cond_5

    .line 280
    const-string v0, "alt"

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 282
    :cond_5
    const-string v0, "coords"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 283
    iget-object v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->coordinateSystem:Ljava/lang/String;

    iget-object v4, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsName:Ljava/lang/String;

    iget-object v5, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsHost:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsUserName:Ljava/lang/String;

    iget-object v8, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsPassword:Ljava/lang/String;

    iget-object v9, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->corsMount:Ljava/lang/String;

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "cors"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 286
    invoke-virtual {p0, p1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 287
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showSelectAll(Z)V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->lltAll:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 374
    iget-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 376
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PointListActivity;->updateSelectAllState()V

    return-void
.end method

.method private updateEmptyView()V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->mList:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->lltEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->rcvPointList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 443
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->lltEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->rcvPointList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->ivEmpty:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_pointlib_new:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 446
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->tvEmptyDesc:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->mRequireGeodetic:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/qianhe/yct/R$string;->no_geodetic_point_in_group:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/qianhe/yct/R$string;->point_empty_des:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updatePointDataFromServer(Ljava/util/List;Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/QueryPointResponse$PointItem;",
            ">;",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ")V"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-static {v0, p2, p1}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->mergePointsFromServer(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;)V

    return-void
.end method

.method private updateSelectAllState()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 382
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private uploadPendingPointsAsync()V
    .locals 9

    .line 323
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    goto :goto_0

    .line 325
    :cond_1
    iget-object v4, p0, Lcom/qianhe/yct/activity/PointListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupByLocalId(J)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 327
    :cond_2
    iget-object v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    return-void

    .line 331
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-wide v4, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupLocalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->queryPoint(Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object v1

    .line 332
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 333
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 334
    iget-wide v6, v5, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    cmp-long v8, v6, v2

    if-gtz v8, :cond_4

    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v6

    iget-wide v7, v5, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-virtual {v6, v7, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isPointUploading(J)Z

    move-result v6

    if-nez v6, :cond_4

    .line 335
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 338
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 339
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->addPoints(Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;)V

    return-void

    .line 341
    :cond_6
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PointListActivity;->queryPointsFromServerAfterUpload()V

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

    .line 455
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->getRoot()Landroid/widget/LinearLayout;

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

    .line 460
    sget v0, Lcom/qianhe/yct/R$string;->coordinates_library:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupName:Ljava/lang/String;

    goto :goto_0

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->pendingGroupName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 464
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->pendingGroupName:Ljava/lang/String;

    .line 466
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->bottomBtn:Lcom/qianhe/yct/view/PointBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/PointBottomView;->getSelectedIndex()I

    move-result v0

    if-lez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->bottomBtn:Lcom/qianhe/yct/view/PointBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/PointBottomView;->closeExecuteUi()V

    .line 486
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->pointAdapter:Lcom/qianhe/yct/adapter/PointListAdapter;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/PointListAdapter;->closeSelUi()V

    const/4 v0, 0x0

    .line 487
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/PointListActivity;->showSelectAll(Z)V

    return-void

    .line 489
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    .line 70
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v0, Lcom/qianhe/yct/activity/PointListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/PointListActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/PointListActivity;)V

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity;->pointEditorLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 86
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 88
    const-string v2, "returnRawElev"

    const-string v3, "returnEcef"

    const-string v4, "requireGeodetic"

    const-string v5, "returnValue"

    if-eqz p1, :cond_0

    const/4 v6, 0x0

    .line 89
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/qianhe/yct/activity/PointListActivity;->mReturnValue:Z

    .line 90
    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/qianhe/yct/activity/PointListActivity;->mRequireGeodetic:Z

    .line 91
    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/qianhe/yct/activity/PointListActivity;->mReturnEcef:Z

    .line 92
    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/qianhe/yct/activity/PointListActivity;->mReturnRawElev:Z

    .line 93
    const-string v6, "groupLocalId"

    invoke-virtual {p1, v6, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupLocalId:J

    .line 94
    const-string v6, "groupName"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupName:Ljava/lang/String;

    .line 95
    const-string v6, "pendingGroupName"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity;->pendingGroupName:Ljava/lang/String;

    .line 97
    :cond_0
    iget-wide v6, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupLocalId:J

    cmp-long p1, v6, v0

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity;->pendingGroupName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->mReturnValue:Z

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->mRequireGeodetic:Z

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->mReturnEcef:Z

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->mReturnRawElev:Z

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->lltAll:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/qianhe/yct/activity/PointListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/PointListActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/PointListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity;->binding:Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->bottomBtn:Lcom/qianhe/yct/view/PointBottomView;

    new-instance v0, Lcom/qianhe/yct/activity/PointListActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/PointListActivity$1;-><init>(Lcom/qianhe/yct/activity/PointListActivity;)V

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/PointBottomView;->setOnNavItemClickListener(Lcom/qianhe/yct/view/PointBottomView$OnNavItemClickListener;)V

    .line 144
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PointListActivity;->initProjectList()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 495
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 496
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

    .line 426
    iget v0, p1, Lcom/qianhe/yct/event/PointGroupResponse;->state:I

    if-nez v0, :cond_1

    iget-wide v2, p1, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    iget-wide v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupLocalId:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    iget-wide v4, p1, Lcom/qianhe/yct/event/PointGroupResponse;->id:J

    const-wide/16 v0, 0x0

    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v6, p1, Lcom/qianhe/yct/event/PointGroupResponse;->uuid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/db/DatabaseManager;->updatePointGroupServerIds(JJLjava/lang/String;)V

    .line 428
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PointListActivity;->uploadPendingPointsAsync()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/PointSyncResponse;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    .line 414
    iget-object v0, p1, Lcom/qianhe/yct/event/PointSyncResponse;->entities:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 415
    :cond_0
    iget v0, p1, Lcom/qianhe/yct/event/PointSyncResponse;->state:I

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/qianhe/yct/event/PointSyncResponse;->ids:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 416
    :goto_0
    iget-object v1, p1, Lcom/qianhe/yct/event/PointSyncResponse;->entities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lcom/qianhe/yct/event/PointSyncResponse;->ids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v2, p1, Lcom/qianhe/yct/event/PointSyncResponse;->entities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    iget-object v4, p1, Lcom/qianhe/yct/event/PointSyncResponse;->ids:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/qianhe/yct/db/DatabaseManager;->updatePointServerId(JJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PointListActivity;->reloadPoints()V

    .line 420
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PointListActivity;->queryPointsFromServerAfterUpload()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryPointResponse;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 433
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->isPointSyncing:Z

    if-eqz p1, :cond_2

    .line 434
    iget v0, p1, Lcom/qianhe/yct/event/QueryPointResponse;->state:I

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/qianhe/yct/event/QueryPointResponse;->list:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/PointListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupByLocalId(J)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 436
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    iget-wide v3, p1, Lcom/qianhe/yct/event/QueryPointResponse;->groupId:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    goto :goto_0

    .line 437
    :cond_1
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryPointResponse;->list:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/activity/PointListActivity;->updatePointDataFromServer(Ljava/util/List;Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    .line 438
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PointListActivity;->reloadPoints()V

    :cond_2
    :goto_0
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
    .locals 6

    .line 292
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 293
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 294
    iget-wide v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->pendingGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->databaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    iget-object v1, p0, Lcom/qianhe/yct/activity/PointListActivity;->pendingGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupByName(Ljava/lang/String;)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-wide v4, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    iput-wide v4, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupLocalId:J

    .line 298
    iget-object v0, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->pendingGroupName:Ljava/lang/String;

    .line 302
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->groupLocalId:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity;->pendingGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    const-string v1, "returnValue"

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/PointListActivity;->mReturnValue:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    const-string v1, "requireGeodetic"

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/PointListActivity;->mRequireGeodetic:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    const-string v1, "returnEcef"

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/PointListActivity;->mReturnEcef:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    const-string v1, "returnRawElev"

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/PointListActivity;->mReturnRawElev:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 309
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 312
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PointListActivity;->reloadPoints()V

    .line 313
    invoke-direct {p0}, Lcom/qianhe/yct/activity/PointListActivity;->uploadPendingPointsAsync()V

    return-void
.end method
