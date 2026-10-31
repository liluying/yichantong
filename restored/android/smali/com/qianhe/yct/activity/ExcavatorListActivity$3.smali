.class Lcom/qianhe/yct/activity/ExcavatorListActivity$3;
.super Ljava/lang/Object;
.source "ExcavatorListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/ExcavatorBottomView$OnNavItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ExcavatorListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->closeSelUi()V

    .line 160
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ExcavatorListActivity;Z)V

    return-void
.end method

.method public onExecuteClick(I)V
    .locals 7

    if-nez p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetcreateLauncher(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    const-class v2, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 168
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetmList(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 173
    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Ljava/util/List;

    move-result-object v1

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->isCurrentUsage(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->current_usage_cannot_delete:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    sget p1, Lcom/qianhe/yct/R$string;->want_to_delete:I

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->deletion_cannot_restored:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/qianhe/yct/activity/ExcavatorListActivity$3$1;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/ExcavatorListActivity$3$1;-><init>(Lcom/qianhe/yct/activity/ExcavatorListActivity$3;)V

    const-string v4, ""

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    .line 206
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 207
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 210
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_6

    .line 211
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->only_one_can_selected_modify:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 214
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$mopenExcavatorDetail(Lcom/qianhe/yct/activity/ExcavatorListActivity;J)V

    :cond_7
    return-void
.end method

.method public onItemClick(I)V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v3, v4}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->showSelUi(ZZ)V

    .line 154
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ExcavatorListActivity;Z)V

    return-void
.end method
