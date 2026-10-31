.class Lcom/qianhe/yct/activity/BucketListActivity$2;
.super Ljava/lang/Object;
.source "BucketListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/BucketBottomView$OnNavItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BucketListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/BucketListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BucketListActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/yct/adapter/BucketListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/BucketListAdapter;->closeSelUi()V

    .line 157
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/BucketListActivity;Z)V

    return-void
.end method

.method public onExecuteClick(I)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 163
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    const-class v2, Lcom/qianhe/yct/activity/BucketCreateActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v1, v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$misSupportBucket(Lcom/qianhe/yct/activity/BucketListActivity;Z)Z

    move-result v0

    const-string v1, "isSupportBucket"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetmCurrentExcavator(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    const-string v1, "currentExcavator"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 166
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 168
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/BucketListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetmList(Lcom/qianhe/yct/activity/BucketListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 173
    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/BucketListActivity;)Ljava/util/List;

    move-result-object v1

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/yct/adapter/BucketListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/adapter/BucketListAdapter;->isCurrentUsage(Lcom/qianhe/baselib/bean/ShovelEntity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->current_usage_cannot_delete:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    sget p1, Lcom/qianhe/yct/R$string;->want_to_delete:I

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->deletion_cannot_restored:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/qianhe/yct/activity/BucketListActivity$2$1;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/BucketListActivity$2$1;-><init>(Lcom/qianhe/yct/activity/BucketListActivity$2;)V

    const-string v4, ""

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    .line 205
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/BucketListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 206
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 209
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/BucketListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_6

    .line 210
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->only_one_can_selected_modify:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 213
    :cond_6
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/BucketListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$mopenBucketEdit(Lcom/qianhe/yct/activity/BucketListActivity;J)V

    :cond_7
    return-void
.end method

.method public onItemClick(I)V
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/yct/adapter/BucketListAdapter;

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
    invoke-virtual {v0, v3, v4}, Lcom/qianhe/yct/adapter/BucketListAdapter;->showSelUi(ZZ)V

    .line 151
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/BucketListActivity;Z)V

    return-void
.end method
