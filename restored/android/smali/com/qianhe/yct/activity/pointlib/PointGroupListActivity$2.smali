.class Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$2;
.super Ljava/lang/Object;
.source "PointGroupListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->deleteSelectedGroups()V
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

    .line 163
    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$2;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

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

    .line 166
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$2;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetmList(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 167
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 169
    iget-object v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$2;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Ljava/util/List;

    move-result-object v2

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$2;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-virtual {v2, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->collectServerPointIdsInGroup(J)Ljava/util/List;

    move-result-object v2

    .line 171
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->deletePoints(Ljava/util/List;)V

    .line 174
    :cond_1
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 175
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    invoke-virtual {v2, v3, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->deletePointGroup(J)V

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$2;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/db/DatabaseManager;->deletePointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)J

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 179
    iget-object v2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$2;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Ljava/util/List;

    move-result-object v2

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$2;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Lcom/qianhe/yct/adapter/PointGroupListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$2;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->refreshIdStrList(Ljava/util/List;)V

    .line 182
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$2;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Lcom/qianhe/yct/adapter/PointGroupListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->closeSelUi()V

    .line 183
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$2;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->bottomBtn:Lcom/qianhe/yct/view/PointBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/PointBottomView;->closeExecuteUi()V

    .line 184
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$2;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    sget v1, Lcom/qianhe/yct/R$string;->delete_success:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$2;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v0, v2}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Z)V

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$2;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$mupdateEmptyView(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V

    return-void
.end method
