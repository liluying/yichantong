.class Lcom/qianhe/yct/activity/BucketListActivity$1;
.super Ljava/lang/Object;
.source "BucketListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;


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

    .line 104
    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$1;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$1;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$misSupportBucket(Lcom/qianhe/yct/activity/BucketListActivity;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$1;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    sget v1, Lcom/qianhe/yct/R$string;->want_to_switch_buckets:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/BucketListActivity$1;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    sget v3, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/activity/BucketListActivity$1$1;

    invoke-direct {v3, p0, p1}, Lcom/qianhe/yct/activity/BucketListActivity$1$1;-><init>(Lcom/qianhe/yct/activity/BucketListActivity$1;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method public onMenuAction(ILcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 131
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$1;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    iget-wide v0, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$mopenBucketEdit(Lcom/qianhe/yct/activity/BucketListActivity;J)V

    :cond_0
    return-void

    .line 135
    :cond_1
    iget-object p2, p0, Lcom/qianhe/yct/activity/BucketListActivity$1;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->bottomBtn:Lcom/qianhe/yct/view/BucketBottomView;

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/view/BucketBottomView;->setSelectedIndex(I)V

    .line 136
    iget-object p2, p0, Lcom/qianhe/yct/activity/BucketListActivity$1;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->bottomBtn:Lcom/qianhe/yct/view/BucketBottomView;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/BucketBottomView;->showExecuteUi()V

    .line 137
    iget-object p2, p0, Lcom/qianhe/yct/activity/BucketListActivity$1;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/yct/adapter/BucketListAdapter;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, v2}, Lcom/qianhe/yct/adapter/BucketListAdapter;->showSelUi(Z)V

    .line 138
    iget-object p2, p0, Lcom/qianhe/yct/activity/BucketListActivity$1;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {p2, v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/BucketListActivity;Z)V

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

    .line 123
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$1;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fputidStrList(Lcom/qianhe/yct/activity/BucketListActivity;Ljava/util/List;)V

    .line 124
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$1;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$mupdateSelectAllState(Lcom/qianhe/yct/activity/BucketListActivity;)V

    return-void
.end method
