.class Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$1;
.super Ljava/lang/Object;
.source "PointGroupListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/PointBottomView$OnNavItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$1;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$1;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Lcom/qianhe/yct/adapter/PointGroupListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->closeSelUi()V

    .line 134
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$1;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Z)V

    return-void
.end method

.method public onExecuteClick(I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 140
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$1;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    const-class v2, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    const-string v1, "createNewGroup"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$1;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetmReturnValue(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$1;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$mputPickExtras(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Landroid/content/Intent;)V

    .line 144
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$1;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetpickFlowLauncher(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$1;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    if-ne p1, v0, :cond_2

    .line 149
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$1;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$mdeleteSelectedGroups(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V

    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 151
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$1;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$mmodifySelectedGroup(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V

    :cond_3
    return-void
.end method

.method public onItemClick(I)V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$1;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Lcom/qianhe/yct/adapter/PointGroupListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->showSelUi(Z)V

    .line 128
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$1;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Z)V

    return-void
.end method
