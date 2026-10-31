.class public Lcom/qianhe/yct/activity/share/ShareCreateActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "ShareCreateActivity.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

.field private binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

.field private final dateFormatD:Ljava/text/SimpleDateFormat;

.field private initProjectIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isCreate:Z

.field private isProhibitEdit:Z

.field private launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mShareCode:Ljava/lang/String;

.field private mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

.field private pendingOpenSharedProject:Lcom/qianhe/baselib/base/BaseProEntity;

.field private selectedProjectIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private switchScreen:Z


# direct methods
.method public static synthetic $r8$lambda$4NSH8INYvW7elz5eYym2zkmG_mI(Landroidx/activity/result/ActivityResult;)V
    .locals 2

    .line 391
    invoke-virtual {p0}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 392
    invoke-virtual {p0}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$I9Xd9kXj4z_QNLjXTihYKmUb4ns(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V
    .locals 1

    .line 520
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->refreshSelectProject()V

    .line 521
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    invoke-virtual {p0}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$wKIKbSz-Pdm2pny7zzvYu_MM9m4(Lcom/qianhe/yct/activity/share/ShareCreateActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    const-string v0, "selectedproject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 513
    const-string p1, "action"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 515
    const-string p1, "selectedProjectIds"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 516
    iget-object p2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 517
    iget-object p2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 519
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/activity/share/ShareCreateActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitProjectIds(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmData(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mData:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShareCode(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShareEntity(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/baselib/bean/ShareEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedProjectIds(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdateStringToTimestamp(Lcom/qianhe/yct/activity/share/ShareCreateActivity;Ljava/lang/String;)J
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->dateStringToTimestamp(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mfinishSharePage(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->finishSharePage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhaveSameElements(Lcom/qianhe/yct/activity/share/ShareCreateActivity;Ljava/util/List;Ljava/util/List;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->haveSameElements(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEqualIgnoreOrder(Lcom/qianhe/yct/activity/share/ShareCreateActivity;Ljava/util/List;Ljava/util/List;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isEqualIgnoreOrder(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mopenSharedOrLocalProject(Lcom/qianhe/yct/activity/share/ShareCreateActivity;Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->openSharedOrLocalProject(Lcom/qianhe/baselib/base/BaseProEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshSelectProject(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->refreshSelectProject()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDefaultName(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->setDefaultName()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 68
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mData:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->dateFormatD:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/activity/share/ShareCreateActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/base/BaseActivity;->copyShareCodeToClipboard(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$101(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V
    .locals 0

    .line 68
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private applyIntent(Landroid/content/Intent;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    const-string v0, "ids"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 140
    const-string v1, "proType"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 142
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v3

    .line 143
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 144
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 145
    iget-object v4, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v4, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    iget-wide v5, v3, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 147
    iget-object v4, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    iget-wide v5, v3, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    if-eqz v0, :cond_3

    .line 153
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mData:Ljava/util/List;

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isProhibitEdit:Z

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->refrshData(Ljava/util/List;Z)V

    .line 156
    :cond_3
    const-string v0, "shareCode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareCode:Ljava/lang/String;

    .line 157
    const-string v0, "shareEntityJson"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/qianhe/baselib/bean/ShareEntity;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShareEntity;

    if-nez p1, :cond_5

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isCreate:Z

    .line 174
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvCopy:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvExpireTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->dateFormatD:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    :goto_1
    if-eqz p1, :cond_7

    .line 161
    iput-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    .line 162
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryShareByShareId(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    if-nez v0, :cond_6

    .line 164
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->insertShare(Lcom/qianhe/baselib/bean/ShareEntity;)J

    .line 166
    :cond_6
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->showDataFormList()V

    return-void

    .line 170
    :cond_7
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareCode:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryShare(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dateStringToTimestamp(Ljava/lang/String;)J
    .locals 4

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->dateFormatD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 700
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 702
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private finishSharePage()V
    .locals 1

    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private haveSameElements(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 867
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    .line 871
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 872
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 874
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 875
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 876
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private initActivityResultLauncher()V
    .locals 2

    .line 390
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/qianhe/yct/activity/share/ShareCreateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private isEqualIgnoreOrder(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 650
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    .line 653
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 654
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 656
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 657
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 659
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private isShareExpired(Lcom/qianhe/baselib/bean/ShareEntity;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 225
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShareEntity;->expireTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private loadProjectsByShareUuids()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 622
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShareEntity;->projectUUids:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShareEntity;->projectUUids:Ljava/lang/String;

    goto :goto_0

    .line 624
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShareEntity;->shareCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 625
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iget-object v3, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    iget-object v3, v3, Lcom/qianhe/baselib/bean/ShareEntity;->shareCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryShareByShareCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 626
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 627
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/ShareEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ShareEntity;->projectUUids:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 630
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_4

    .line 633
    :cond_2
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v3

    .line 634
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    .line 635
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 636
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 637
    invoke-static {}, Lcom/qianhe/baselib/enums/ProjectEnum;->values()[Lcom/qianhe/baselib/enums/ProjectEnum;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 638
    invoke-virtual {v10}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v10

    invoke-virtual {v3, v10, v6}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByUUId(ILjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    return-object v0
.end method

.method private loadProjectsForSelection()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 572
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 573
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 575
    iget-object v3, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mData:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 576
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 577
    invoke-direct {p0, v2, v1, v4}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->putIfSelected(Ljava/util/Map;Ljava/util/Set;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_0

    .line 580
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->loadProjectsByShareUuids()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 581
    invoke-direct {p0, v2, v1, v4}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->putIfSelected(Ljava/util/Map;Ljava/util/Set;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_1

    .line 583
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 584
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 585
    iget-object v4, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 586
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 587
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 590
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 591
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v4

    .line 592
    invoke-static {}, Lcom/qianhe/baselib/enums/ProjectEnum;->values()[Lcom/qianhe/baselib/enums/ProjectEnum;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    .line 593
    invoke-virtual {v8}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v8

    invoke-virtual {v4, v8, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByProjectIds(ILjava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 594
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 595
    invoke-direct {p0, v2, v1, v9}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->putIfSelected(Ljava/util/Map;Ljava/util/Set;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_4

    .line 597
    :cond_5
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v8

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v9

    if-lt v8, v9, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 601
    :cond_7
    :goto_5
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 602
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v3, :cond_8

    .line 604
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    :goto_7
    return-object v0
.end method

.method private openSharedOrLocalProject(Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 762
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    .line 764
    iget-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 765
    iget-object v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    iget-wide v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->findEngineeringByServerIdentity(Ljava/lang/String;J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    goto :goto_0

    .line 766
    :cond_1
    iget-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_2

    .line 767
    invoke-virtual {v0, v5, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->findEngineeringByServerIdentity(Ljava/lang/String;J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    goto :goto_0

    .line 768
    :cond_2
    iget-wide v1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringLocalId:J

    cmp-long v6, v1, v3

    if-lez v6, :cond_3

    .line 769
    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v5

    :goto_0
    if-eqz v0, :cond_4

    .line 772
    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->startWorkActivity(Landroidx/appcompat/app/AppCompatActivity;Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    return-void

    .line 775
    :cond_4
    iget-object v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 777
    iput-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->pendingOpenSharedProject:Lcom/qianhe/baselib/base/BaseProEntity;

    .line 778
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryEngineeringByUuid(Ljava/lang/String;)V

    return-void

    .line 781
    :cond_5
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->showSharedEngineeringNotFound()V

    return-void
.end method

.method private prohibitEdit()V
    .locals 2

    .line 362
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isProhibitEdit:Z

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvExpireTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 365
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->fltClearName:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvSubmit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private putIfSelected(Ljava/util/Map;Ljava/util/Set;Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 611
    iget-wide v0, p3, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 614
    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshSelectProject()V
    .locals 3

    .line 555
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->loadProjectsForSelection()Ljava/util/List;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 557
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 558
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    if-eqz v0, :cond_0

    .line 559
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mData:Ljava/util/List;

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isProhibitEdit:Z

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->refrshData(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method private resetSharePageState()V
    .locals 4

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->switchScreen:Z

    .line 182
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 184
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 185
    iput-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareCode:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    .line 187
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isProhibitEdit:Z

    .line 188
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isCreate:Z

    .line 189
    iput-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->pendingOpenSharedProject:Lcom/qianhe/baselib/base/BaseProEntity;

    .line 190
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 191
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvExpireTime:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 193
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->fltClearName:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvSubmit:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvCopy:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    if-eqz v1, :cond_0

    .line 198
    iget-object v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mData:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->refrshData(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method private setDefaultName()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 373
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryShareByShareId(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 374
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/qianhe/yct/R$string;->share:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    const-string v2, "share"

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isEntityNameExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isCreate:Z

    if-eqz v2, :cond_1

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 379
    iget-boolean v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isCreate:Z

    if-nez v1, :cond_2

    .line 380
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/qianhe/baselib/bean/ShareEntity;->name:Ljava/lang/String;

    .line 382
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 384
    :cond_3
    iget-object v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    sget v3, Lcom/qianhe/yct/R$string;->share:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    const-string v0, "%s1"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private showDataFormList()V
    .locals 8

    .line 203
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    if-eqz v0, :cond_2

    .line 204
    iget-object v1, v0, Lcom/qianhe/baselib/bean/ShareEntity;->projectUUids:Ljava/lang/String;

    .line 205
    iget-object v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShareEntity;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 207
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvExpireTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->dateFormatD:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/bean/ShareEntity;->expireTime:J

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    iget v2, v0, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iput-boolean v3, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isProhibitEdit:Z

    .line 210
    :cond_0
    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isShareExpired(Lcom/qianhe/baselib/bean/ShareEntity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->showShareExpiredDialog()V

    .line 212
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->prohibitEdit()V

    return-void

    .line 215
    :cond_1
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryProjectByUUid([Ljava/lang/String;)V

    .line 220
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->prohibitEdit()V

    return-void
.end method

.method private showShareExpiredDialog()V
    .locals 4

    .line 230
    sget v0, Lcom/qianhe/yct/R$string;->share_expired:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/activity/share/ShareCreateActivity$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity$1;-><init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V

    const-string v3, "share_expired"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method

.method private showSharedEngineeringNotFound()V
    .locals 3

    .line 818
    sget v0, Lcom/qianhe/yct/R$string;->project_not_bound_engineering:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

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

    .line 823
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseActivity;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 409
    new-instance v0, Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mData:Ljava/util/List;

    iget-boolean v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isProhibitEdit:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    .line 410
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 411
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    new-instance v1, Lcom/qianhe/yct/activity/share/ShareCreateActivity$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity$2;-><init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/ShareProjectAdapter$OnActionListener;)V

    .line 438
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->fltClearName:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/qianhe/yct/activity/share/ShareCreateActivity$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity$3;-><init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvCopy:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/share/ShareCreateActivity$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity$4;-><init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvAdd:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/share/ShareCreateActivity$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity$5;-><init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvExpireTime:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/share/ShareCreateActivity$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity$6;-><init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvSubmit:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;-><init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/share/ShareCreateActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V

    const-string v2, "selectedproject"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 528
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/activity/share/ShareCreateActivity$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity$8;-><init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V

    const-string v2, "defaultname"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 828
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isCreate:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/qianhe/yct/R$string;->create_share:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/qianhe/yct/R$string;->share_project:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 829
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 881
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isShareExpired(Lcom/qianhe/baselib/bean/ShareEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    if-eqz v0, :cond_3

    .line 886
    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShareEntity;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->haveSameElements(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 899
    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    .line 887
    :cond_2
    :goto_0
    sget v0, Lcom/qianhe/yct/R$string;->data_not_submitted:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/activity/share/ShareCreateActivity$9;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity$9;-><init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 902
    :cond_3
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    .line 88
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->applyIntent(Landroid/content/Intent;)V

    .line 91
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initActivityResultLauncher()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/CreateShareResponse;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 709
    iget v0, p1, Lcom/qianhe/yct/event/CreateShareResponse;->state:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 710
    sget v0, Lcom/qianhe/yct/R$string;->create_success:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 712
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 713
    const-string v1, "shareCode"

    iget-object p1, p1, Lcom/qianhe/yct/event/CreateShareResponse;->shareCode:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 715
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 716
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 718
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 719
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    sget p1, Lcom/qianhe/yct/R$string;->current_not_login:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 721
    :cond_1
    const-string/jumbo v0, "token error"

    iget-object v1, p1, Lcom/qianhe/yct/event/CreateShareResponse;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 722
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object p1

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->notifyUserLogged(J)V

    .line 723
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/UserSession;->clearLoginInfo()V

    .line 724
    sget p1, Lcom/qianhe/yct/R$string;->current_login_offline:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 726
    :cond_2
    iget p1, p1, Lcom/qianhe/yct/event/CreateShareResponse;->state:I

    const/16 v0, 0x2337

    if-ne p1, v0, :cond_3

    .line 727
    sget p1, Lcom/qianhe/yct/R$string;->project_not_exist:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 729
    :cond_3
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ErrorCodeUtils;->getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/ModifyShareResponse;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 737
    iget v0, p1, Lcom/qianhe/yct/event/ModifyShareResponse;->state:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 738
    sget v0, Lcom/qianhe/yct/R$string;->modify_success:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 740
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 741
    iget-object p1, p1, Lcom/qianhe/yct/event/ModifyShareResponse;->entity:Lcom/qianhe/baselib/bean/ShareEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareCode:Ljava/lang/String;

    const-string v1, "shareCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 743
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 744
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 746
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 747
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    sget p1, Lcom/qianhe/yct/R$string;->current_not_login:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 749
    :cond_1
    const-string/jumbo v0, "token error"

    iget-object v1, p1, Lcom/qianhe/yct/event/ModifyShareResponse;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 750
    invoke-static {}, Lcom/YctDeviceManager;->getInstanceH5()Lcom/qh/yctdevice/YctDevice;

    move-result-object p1

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v2, v3}, Lcom/qh/yctdevice/YctDevice;->notifyUserLogged(J)V

    .line 751
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/UserSession;->clearLoginInfo()V

    .line 752
    sget p1, Lcom/qianhe/yct/R$string;->current_login_offline:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 754
    :cond_2
    iget p1, p1, Lcom/qianhe/yct/event/ModifyShareResponse;->state:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ErrorCodeUtils;->getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryEngineeringResponse;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->pendingOpenSharedProject:Lcom/qianhe/baselib/base/BaseProEntity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 788
    :cond_0
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    .line 789
    iget-object v2, p1, Lcom/qianhe/yct/event/QueryEngineeringResponse;->requestEngineeringUuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 790
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/qianhe/yct/event/QueryEngineeringResponse;->requestEngineeringUuid:Ljava/lang/String;

    .line 791
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    .line 794
    iput-object v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->pendingOpenSharedProject:Lcom/qianhe/baselib/base/BaseProEntity;

    .line 795
    iget v2, p1, Lcom/qianhe/yct/event/QueryEngineeringResponse;->state:I

    if-nez v2, :cond_6

    iget-object p1, p1, Lcom/qianhe/yct/event/QueryEngineeringResponse;->engineering:Lcom/qianhe/baselib/bean/EngineeringEntity;

    if-nez p1, :cond_2

    goto :goto_2

    .line 800
    :cond_2
    iget-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 801
    iput-object v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    .line 804
    :cond_3
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iget-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->findEngineeringByServerIdentity(Ljava/lang/String;J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 806
    iput v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    const/4 v1, 0x0

    .line 807
    iput v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    .line 808
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qianhe/yct/db/DatabaseManager;->insertEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    .line 810
    iput-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    goto :goto_1

    :cond_4
    move-object p1, v1

    .line 814
    :cond_5
    :goto_1
    invoke-static {p0, v0, p1}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->startWorkActivity(Landroidx/appcompat/app/AppCompatActivity;Lcom/qianhe/baselib/base/BaseProEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    return-void

    .line 796
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->showSharedEngineeringNotFound()V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryProjectByUUidResponse;)V
    .locals 10
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 253
    iget v0, p1, Lcom/qianhe/yct/event/QueryProjectByUUidResponse;->state:I

    if-nez v0, :cond_c

    .line 254
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->cleanupDuplicateProjectsByUuid()I

    .line 257
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryProjectByUUidResponse;->list:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/qianhe/yct/event/QueryProjectByUUidResponse;->list:Ljava/util/List;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mData:Ljava/util/List;

    .line 259
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    if-eqz p1, :cond_1

    .line 260
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isProhibitEdit:Z

    invoke-virtual {p1, v1, v2}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->refrshData(Ljava/util/List;Z)V

    .line 262
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 264
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 265
    iget-object v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    if-eqz v2, :cond_a

    .line 266
    iget-object v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 268
    :cond_3
    iget v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    iget-object v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByUUId(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 269
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 271
    iget-object v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    iget v2, v2, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v4, 0x1

    :cond_4
    iput v4, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    .line 272
    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;)J

    goto :goto_3

    .line 274
    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 275
    iget-wide v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    iget-wide v5, v2, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v5

    if-lez v9, :cond_8

    .line 277
    iget v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    iput v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    .line 278
    iget-wide v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    iput-wide v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    .line 279
    iget-object v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 280
    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    iput-object v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    .line 282
    :cond_6
    iget-wide v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    cmp-long v5, v3, v7

    if-gtz v5, :cond_7

    .line 283
    iget-wide v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    iput-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    .line 285
    :cond_7
    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityByUUid(Lcom/qianhe/baselib/base/BaseProEntity;)I

    goto :goto_3

    .line 286
    :cond_8
    iget-object v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    .line 287
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 289
    iget-object v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    iput-object v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    .line 290
    iget-wide v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    cmp-long v5, v3, v7

    if-lez v5, :cond_9

    .line 291
    iput-wide v3, v2, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    .line 293
    :cond_9
    invoke-virtual {v0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityByUUid(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 298
    :cond_a
    :goto_3
    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 300
    iget-object v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 303
    :cond_b
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 304
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 307
    :cond_c
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->loadProjectsByShareUuids()Ljava/util/List;

    move-result-object p1

    .line 308
    iput-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mData:Ljava/util/List;

    .line 309
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->adapter:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    if-eqz v0, :cond_d

    .line 310
    iget-boolean v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isProhibitEdit:Z

    invoke-virtual {v0, p1, v1}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->refrshData(Ljava/util/List;Z)V

    .line 313
    :cond_d
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 315
    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 318
    :cond_f
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 319
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/yct/event/QueryShareResponse;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 326
    iget-object v0, p1, Lcom/qianhe/yct/event/QueryShareResponse;->codes:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 327
    :cond_0
    iget v0, p1, Lcom/qianhe/yct/event/QueryShareResponse;->state:I

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 328
    iget-object v0, p1, Lcom/qianhe/yct/event/QueryShareResponse;->list:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 329
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 330
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryShareResponse;->list:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShareEntity;

    iput-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    .line 332
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isShareExpired(Lcom/qianhe/baselib/bean/ShareEntity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 333
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->showShareExpiredDialog()V

    return-void

    .line 337
    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryShareByShareCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 338
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 339
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    iput v2, p1, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    .line 340
    iput-boolean v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isProhibitEdit:Z

    .line 341
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->insertShare(Lcom/qianhe/baselib/bean/ShareEntity;)J

    goto :goto_0

    .line 343
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShareEntity;

    iget p1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    iput p1, v1, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    .line 344
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    iget p1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    if-ne p1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isProhibitEdit:Z

    .line 345
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareEntity:Lcom/qianhe/baselib/bean/ShareEntity;

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateShare(Lcom/qianhe/baselib/bean/ShareEntity;)I

    .line 349
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->showDataFormList()V

    return-void

    .line 351
    :cond_5
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->switchScreen:Z

    if-nez p1, :cond_6

    .line 352
    sget p1, Lcom/qianhe/yct/R$string;->data_empty:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_6
    :goto_1
    return-void

    .line 356
    :cond_7
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/ErrorCodeUtils;->getErrorMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

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

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 127
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 128
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->resetSharePageState()V

    .line 129
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->applyIntent(Landroid/content/Intent;)V

    .line 130
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p1, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isCreate:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/qianhe/yct/R$string;->create_share:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/qianhe/yct/R$string;->share_project:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 848
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onPause()V

    .line 849
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 109
    const-string/jumbo v0, "switchScreen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->switchScreen:Z

    .line 110
    const-string v0, "initProjectIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 111
    const-string v1, "selectedProjectIds"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 113
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iput-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    .line 114
    const-string v0, "isProhibitEdit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isProhibitEdit:Z

    .line 115
    const-string v0, "expireTime"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvExpireTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->mShareCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->refreshSelectProject()V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 402
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onResume()V

    .line 403
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 98
    const-string/jumbo v0, "switchScreen"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    const-string v0, "initProjectIds"

    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initProjectIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 100
    const-string v0, "selectedProjectIds"

    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 101
    const-string v0, "isProhibitEdit"

    iget-boolean v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->isProhibitEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->binding:Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvExpireTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "expireTime"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
