.class Lcom/qianhe/yct/activity/EngineeringListActivity$1;
.super Ljava/lang/Object;
.source "EngineeringListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/EngineeringBottomView$OnNavItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/EngineeringListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/EngineeringListActivity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/EngineeringListActivity;)Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->closeSelUi()V

    .line 83
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/EngineeringListActivity;Z)V

    return-void
.end method

.method public onExecuteClick(I)V
    .locals 7

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    const-class v2, Lcom/qianhe/yct/activity/EngineeringCreateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 91
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/EngineeringListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    sget p1, Lcom/qianhe/yct/R$string;->sure_want_delete:I

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->delete_engineering_tips:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/qianhe/yct/activity/EngineeringListActivity$1$1;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/activity/EngineeringListActivity$1$1;-><init>(Lcom/qianhe/yct/activity/EngineeringListActivity$1;)V

    const-string v4, ""

    invoke-virtual/range {v1 .. v6}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    .line 106
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/EngineeringListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 107
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 110
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/EngineeringListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v0, :cond_4

    .line 111
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->only_one_can_selected_modify:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 115
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fgetmList(Lcom/qianhe/yct/activity/EngineeringListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 116
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/EngineeringListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 121
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$mopenEngineeringEdit(Lcom/qianhe/yct/activity/EngineeringListActivity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    :cond_7
    return-void
.end method

.method public onItemClick(I)V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/EngineeringListActivity;)Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    move-result-object v0

    sget-object v1, Lcom/qianhe/yct/enums/MenuActionEnum;->DELETE:Lcom/qianhe/yct/enums/MenuActionEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->showSelUi(Z)V

    .line 74
    sget-object v0, Lcom/qianhe/yct/enums/MenuActionEnum;->MODIFY:Lcom/qianhe/yct/enums/MenuActionEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/EngineeringListActivity;)Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->selectCurrentItem()V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$1;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {v0, v3}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/EngineeringListActivity;Z)V

    return-void
.end method
