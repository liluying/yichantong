.class Lcom/qianhe/yct/activity/ShareListActivity$1;
.super Ljava/lang/Object;
.source "ShareListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/ShareBottomView$OnNavItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ShareListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ShareListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ShareListActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetshareListAdapter(Lcom/qianhe/yct/activity/ShareListActivity;)Lcom/qianhe/yct/adapter/ShareListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ShareListAdapter;->closeSelUi()V

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ShareListActivity;Z)V

    return-void
.end method

.method public onExecuteClick(I)V
    .locals 7

    if-nez p1, :cond_1

    .line 97
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    const-class v1, Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x24000000

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetlauncher(Lcom/qianhe/yct/activity/ShareListActivity;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->current_not_login:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 106
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 107
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    const-class v1, Lcom/qianhe/yct/activity/share/ShareJoinActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 110
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ShareListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 111
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    sget p1, Lcom/qianhe/yct/R$string;->want_to_delete_project:I

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->deletion_cannot_restored:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/qianhe/yct/activity/ShareListActivity$1$1;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/ShareListActivity$1$1;-><init>(Lcom/qianhe/yct/activity/ShareListActivity$1;)V

    const-string v4, ""

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_8

    .line 145
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ShareListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 146
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 149
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ShareListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_6

    .line 150
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->only_one_can_selected_share:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 153
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/ShareListActivity;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fputdatabaseManager(Lcom/qianhe/yct/activity/ShareListActivity;Lcom/qianhe/yct/db/DatabaseManager;)V

    .line 154
    :cond_7
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/ShareListActivity;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ShareListActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryShareByShareId(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShareEntity;

    .line 155
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$mopenShareWay(Lcom/qianhe/yct/activity/ShareListActivity;Lcom/qianhe/baselib/bean/ShareEntity;)V

    :cond_8
    return-void
.end method

.method public onItemClick(I)V
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetshareListAdapter(Lcom/qianhe/yct/activity/ShareListActivity;)Lcom/qianhe/yct/adapter/ShareListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Lcom/qianhe/yct/adapter/ShareListAdapter;->showSelUi(Z)V

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    if-ne p1, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ShareListActivity;Z)V

    return-void
.end method
