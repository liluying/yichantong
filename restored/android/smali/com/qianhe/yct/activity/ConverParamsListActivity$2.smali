.class Lcom/qianhe/yct/activity/ConverParamsListActivity$2;
.super Ljava/lang/Object;
.source "ConverParamsListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ConverParamsListActivity;->initList()V
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

    .line 186
    iput-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 9

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$fgetselectMode(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    const-string v1, "localId"

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 192
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 193
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$misAutoCreatedDefaultEngineeringInUse(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->default_engineering_switch_params_not_allowed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    .line 198
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 197
    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 201
    :cond_1
    iget-object v3, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->want_to_switch_conversion_params:I

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    sget v1, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    sget v1, Lcom/qianhe/yct/R$string;->switch_sync_to_current_engineering:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/qianhe/yct/activity/ConverParamsListActivity$2$1;

    invoke-direct {v8, p0, p1}, Lcom/qianhe/yct/activity/ConverParamsListActivity$2$1;-><init>(Lcom/qianhe/yct/activity/ConverParamsListActivity$2;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    const-string v6, ""

    invoke-virtual/range {v3 .. v8}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onMenuAction(ILcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 4

    .line 216
    sget-object v0, Lcom/qianhe/yct/enums/MenuActionEnum;->MODIFY:Lcom/qianhe/yct/enums/MenuActionEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 218
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    iget-wide v0, p2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$mopenCreatePage(Lcom/qianhe/yct/activity/ConverParamsListActivity;J)V

    :cond_0
    return-void

    .line 222
    :cond_1
    iget-object p2, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->bottomBtn:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/view/EngineeringBottomView;->setSelectedIndex(I)V

    .line 223
    iget-object p2, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityConverParamsListBinding;->bottomBtn:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/EngineeringBottomView;->showExecuteUi()V

    .line 224
    iget-object p2, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ConverParamsListActivity;)Lcom/qianhe/yct/adapter/ConverParamsListAdapter;

    move-result-object p2

    sget-object v0, Lcom/qianhe/yct/enums/MenuActionEnum;->DELETE:Lcom/qianhe/yct/enums/MenuActionEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Lcom/qianhe/yct/adapter/ConverParamsListAdapter;->showSelUi(Z)V

    .line 225
    iget-object p2, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {p2, v2}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ConverParamsListActivity;Z)V

    return-void
.end method

.method public onSelItem(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$fputidStrList(Lcom/qianhe/yct/activity/ConverParamsListActivity;Ljava/util/ArrayList;)V

    .line 231
    iget-object p1, p0, Lcom/qianhe/yct/activity/ConverParamsListActivity$2;->this$0:Lcom/qianhe/yct/activity/ConverParamsListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ConverParamsListActivity;->-$$Nest$mupdateSelectAllState(Lcom/qianhe/yct/activity/ConverParamsListActivity;)V

    return-void
.end method
