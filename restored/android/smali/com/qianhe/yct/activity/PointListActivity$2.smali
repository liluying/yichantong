.class Lcom/qianhe/yct/activity/PointListActivity$2;
.super Ljava/lang/Object;
.source "PointListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/PointListActivity;->deleteSelectedPoints()V
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

    .line 155
    iput-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity$2;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

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
    .locals 8

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    iget-object v1, p0, Lcom/qianhe/yct/activity/PointListActivity$2;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetmList(Lcom/qianhe/yct/activity/PointListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 160
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 161
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 162
    iget-object v3, p0, Lcom/qianhe/yct/activity/PointListActivity$2;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/PointListActivity;)Ljava/util/List;

    move-result-object v3

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_2
    iget-object v3, p0, Lcom/qianhe/yct/activity/PointListActivity$2;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/PointListActivity;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/db/DatabaseManager;->deletePoint(Lcom/qianhe/baselib/bean/PointlibEntity;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 166
    iget-object v3, p0, Lcom/qianhe/yct/activity/PointListActivity$2;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/PointListActivity;)Ljava/util/List;

    move-result-object v3

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 170
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->deletePoints(Ljava/util/List;)V

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$2;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetpointAdapter(Lcom/qianhe/yct/activity/PointListActivity;)Lcom/qianhe/yct/adapter/PointListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/PointListActivity$2;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/PointListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/PointListAdapter;->refreshIdStrList(Ljava/util/List;)V

    .line 173
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$2;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetpointAdapter(Lcom/qianhe/yct/activity/PointListActivity;)Lcom/qianhe/yct/adapter/PointListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/PointListAdapter;->closeSelUi()V

    .line 174
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$2;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/PointListActivity;)Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->bottomBtn:Lcom/qianhe/yct/view/PointBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/PointBottomView;->closeExecuteUi()V

    .line 175
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$2;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    sget v1, Lcom/qianhe/yct/R$string;->delete_success:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 176
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$2;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0, v2}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/PointListActivity;Z)V

    .line 177
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$2;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$mupdateEmptyView(Lcom/qianhe/yct/activity/PointListActivity;)V

    return-void
.end method
