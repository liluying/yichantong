.class Lcom/qianhe/yct/activity/ConverParamsListActivity$1;
.super Ljava/lang/Object;
.source "ConverParamsListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/EngineeringBottomView$OnNavItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ConverParamsListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ConverParamsListActivity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->closeSelUi()V

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ConverParamsListActivity;Z)V

    return-void
.end method

.method public onExecuteClick(I)V
    .locals 9

    if-nez p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$mopenCreatePage(Lcom/qianhe/yct/activity/ConverParamsListActivity;J)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 135
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$mfindReferencedTransParamTip(Lcom/qianhe/yct/activity/ConverParamsListActivity;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 141
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 144
    :cond_2
    iget-object v3, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    sget p1, Lcom/qianhe/yct/R$string;->want_to_delete:I

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->deletion_cannot_restored:I

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/qianhe/yct/activity/ConverParamsListActivity$1$1;

    invoke-direct {v8, p0}, Lcom/qianhe/yct/activity/ConverParamsListActivity$1$1;-><init>(Lcom/qianhe/yct/activity/ConverParamsListActivity$1;)V

    .line 144
    const-string v6, ""

    invoke-virtual/range {v3 .. v8}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 156
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 157
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 160
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v0, :cond_5

    .line 161
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->only_one_can_selected_modify:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 164
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 165
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$mopenCreatePage(Lcom/qianhe/yct/activity/ConverParamsListActivity;J)V

    :cond_6
    return-void
.end method

.method public onItemClick(I)V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

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
    invoke-virtual {v0, v2}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->showSelUi(Z)V

    .line 118
    sget-object v0, Lcom/qianhe/yct/enums/MenuActionEnum;->MODIFY:Lcom/qianhe/yct/enums/MenuActionEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->selectCurrentItem()V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$1;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {v0, v3}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ConverParamsListActivity;Z)V

    return-void
.end method
