.class Lcom/qianhe/yct/activity/EngineeringListActivity$2;
.super Ljava/lang/Object;
.source "EngineeringListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/EngineeringListActivity;->initList()V
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

    .line 143
    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    sget v1, Lcom/qianhe/yct/R$string;->want_to_switch_engineering:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    sget v3, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/activity/EngineeringListActivity$2$1;

    invoke-direct {v3, p0, p1}, Lcom/qianhe/yct/activity/EngineeringListActivity$2$1;-><init>(Lcom/qianhe/yct/activity/EngineeringListActivity$2;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onMenuAction(ILcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 4

    .line 172
    sget-object v0, Lcom/qianhe/yct/enums/MenuActionEnum;->MODIFY:Lcom/qianhe/yct/enums/MenuActionEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 173
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {p1, p2}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$mopenEngineeringEdit(Lcom/qianhe/yct/activity/EngineeringListActivity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    return-void

    .line 176
    :cond_0
    iget-object p2, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/EngineeringListActivity;)Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->bottomBtn:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/view/EngineeringBottomView;->setSelectedIndex(I)V

    .line 177
    iget-object p2, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/EngineeringListActivity;)Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityEngineeringListBinding;->bottomBtn:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/EngineeringBottomView;->showExecuteUi()V

    .line 178
    iget-object p2, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/EngineeringListActivity;)Lcom/qianhe/yct/adapter/EngineeringListAdapter;

    move-result-object p2

    sget-object v0, Lcom/qianhe/yct/enums/MenuActionEnum;->DELETE:Lcom/qianhe/yct/enums/MenuActionEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->showSelUi(Z)V

    .line 179
    iget-object p2, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {p2, v2}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/EngineeringListActivity;Z)V

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

    .line 184
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fputidStrList(Lcom/qianhe/yct/activity/EngineeringListActivity;Ljava/util/ArrayList;)V

    .line 185
    iget-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$mupdateSelectAllState(Lcom/qianhe/yct/activity/EngineeringListActivity;)V

    return-void
.end method
