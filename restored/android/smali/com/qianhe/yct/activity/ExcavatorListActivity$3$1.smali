.class Lcom/qianhe/yct/activity/ExcavatorListActivity$3$1;
.super Ljava/lang/Object;
.source "ExcavatorListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->onExecuteClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/ExcavatorListActivity$3;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ExcavatorListActivity$3;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/ExcavatorListActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm()V
    .locals 7

    .line 181
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/ExcavatorListActivity$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetmList(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 183
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 184
    iget-object v2, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/ExcavatorListActivity$3;

    iget-object v2, v2, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Ljava/util/List;

    move-result-object v2

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    iget-object v2, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/ExcavatorListActivity$3;

    iget-object v2, v2, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/db/DatabaseManager;->deleteExcavatorById(Lcom/qianhe/baselib/bean/ExcavatorEntity;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 188
    iget-object v2, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/ExcavatorListActivity$3;

    iget-object v2, v2, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Ljava/util/List;

    move-result-object v2

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 191
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->delExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 193
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/ExcavatorListActivity$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    sget v1, Lcom/qianhe/yct/R$string;->delete_success:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/ExcavatorListActivity$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/ExcavatorListActivity$3;

    iget-object v1, v1, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->refreshIdStrList(Ljava/util/List;)V

    .line 196
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/ExcavatorListActivity$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/yct/adapter/ExcavatorListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ExcavatorListAdapter;->closeSelUi()V

    .line 197
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/ExcavatorListActivity$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityExcavatorListBinding;->bottomBtn:Lcom/qianhe/yct/view/ExcavatorBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/ExcavatorBottomView;->closeExecuteUi()V

    .line 198
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3$1;->this$1:Lcom/qianhe/yct/activity/ExcavatorListActivity$3;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ExcavatorListActivity$3;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ExcavatorListActivity;Z)V

    return-void
.end method
