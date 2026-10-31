.class Lcom/qianhe/yct/activity/ProjectListActivity$1$1;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ProjectListActivity$1;->onExecuteClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/ProjectListActivity$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ProjectListActivity$1;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ProjectListActivity$1;

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

    .line 178
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ProjectListActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetmList(Lcom/qianhe/yct/activity/ProjectListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 179
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 181
    iget-object v2, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ProjectListActivity$1;

    iget-object v2, v2, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ProjectListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-wide v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ProjectListActivity$1;

    iget-object v2, v2, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/ProjectListActivity;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/db/DatabaseManager;->deleteById(Lcom/qianhe/baselib/base/BaseProEntity;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 185
    iget-object v2, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ProjectListActivity$1;

    iget-object v2, v2, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ProjectListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-wide v3, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 187
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->delProject(Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ProjectListActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    sget v1, Lcom/qianhe/yct/R$string;->delete_success:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ProjectListActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproListAdapter(Lcom/qianhe/yct/activity/ProjectListActivity;)Lcom/qianhe/yct/adapter/ProjectListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ProjectListActivity$1;

    iget-object v1, v1, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ProjectListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->refreshIdStrList(Ljava/util/List;)V

    .line 192
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ProjectListActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproListAdapter(Lcom/qianhe/yct/activity/ProjectListActivity;)Lcom/qianhe/yct/adapter/ProjectListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->closeSelUi()V

    .line 193
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ProjectListActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ProjectListActivity;)Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->bottomBtn:Lcom/qianhe/yct/view/ProjectBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/ProjectBottomView;->closeExecuteUi()V

    .line 194
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ProjectListActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0, v2}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ProjectListActivity;Z)V

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ProjectListActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$mupdateEmptyView(Lcom/qianhe/yct/activity/ProjectListActivity;)V

    return-void
.end method
