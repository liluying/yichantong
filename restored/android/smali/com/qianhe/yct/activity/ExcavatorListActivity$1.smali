.class Lcom/qianhe/yct/activity/ExcavatorListActivity$1;
.super Ljava/lang/Object;
.source "ExcavatorListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/ExcavatorListAdapter$OnActionListener;


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

    .line 99
    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    sget v1, Lcom/qianhe/yct/R$string;->want_to_use_this_config:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    sget v3, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/activity/ExcavatorListActivity$1$1;

    invoke-direct {v3, p0, p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity$1$1;-><init>(Lcom/qianhe/yct/activity/ExcavatorListActivity$1;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onMenuAction(ILcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 133
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    iget-wide v0, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$mopenExcavatorDetail(Lcom/qianhe/yct/activity/ExcavatorListActivity;J)V

    :cond_0
    return-void

    .line 137
    :cond_1
    iget-object p2, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->bottomBtn:Lcom/qianhe/yct/view/ExcavatorBottomView;

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/view/ExcavatorBottomView;->setSelectedIndex(I)V

    .line 138
    iget-object p2, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->bottomBtn:Lcom/qianhe/yct/view/ExcavatorBottomView;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/ExcavatorBottomView;->showExecuteUi()V

    .line 139
    iget-object p2, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, v2}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->showSelUi(Z)V

    .line 140
    iget-object p2, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {p2, v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ExcavatorListActivity;Z)V

    return-void
.end method

.method public onSelItem(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fputidStrList(Lcom/qianhe/yct/activity/ExcavatorListActivity;Ljava/util/List;)V

    .line 125
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$1;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$mupdateSelectAllState(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V

    return-void
.end method
