.class Lcom/qianhe/yct/activity/PointListActivity$1;
.super Ljava/lang/Object;
.source "PointListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/PointBottomView$OnNavItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/PointListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/PointListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/PointListActivity;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity$1;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$1;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetpointAdapter(Lcom/qianhe/yct/activity/PointListActivity;)Lcom/qianhe/yct/adapter/PointListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/PointListAdapter;->closeSelUi()V

    .line 121
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$1;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/PointListActivity;Z)V

    return-void
.end method

.method public onExecuteClick(I)V
    .locals 5

    if-nez p1, :cond_2

    .line 127
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$1;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    const-class v1, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$1;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetgroupLocalId(Lcom/qianhe/yct/activity/PointListActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 129
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$1;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetgroupLocalId(Lcom/qianhe/yct/activity/PointListActivity;)J

    move-result-wide v0

    const-string v2, "groupLocalId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$1;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetpendingGroupName(Lcom/qianhe/yct/activity/PointListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$1;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetpendingGroupName(Lcom/qianhe/yct/activity/PointListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pendingGroupName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$1;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$mlaunchPointEditor(Lcom/qianhe/yct/activity/PointListActivity;Landroid/content/Intent;)V

    return-void

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity$1;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->select_point_group_first:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 138
    iget-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity$1;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$mdeleteSelectedPoints(Lcom/qianhe/yct/activity/PointListActivity;)V

    return-void

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 140
    iget-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity$1;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$mmodifySelectedPoint(Lcom/qianhe/yct/activity/PointListActivity;)V

    :cond_4
    return-void
.end method

.method public onItemClick(I)V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$1;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetpointAdapter(Lcom/qianhe/yct/activity/PointListActivity;)Lcom/qianhe/yct/adapter/PointListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lcom/qianhe/yct/adapter/PointListAdapter;->showSelUi(Z)V

    .line 115
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$1;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/PointListActivity;Z)V

    return-void
.end method
