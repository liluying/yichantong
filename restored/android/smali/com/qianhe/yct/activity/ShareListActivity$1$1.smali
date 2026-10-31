.class Lcom/qianhe/yct/activity/ShareListActivity$1$1;
.super Ljava/lang/Object;
.source "ShareListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ShareListActivity$1;->onExecuteClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/ShareListActivity$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ShareListActivity$1;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ShareListActivity$1;

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

    .line 117
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ShareListActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetmList(Lcom/qianhe/yct/activity/ShareListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/ShareEntity;

    .line 120
    iget-object v2, p0, Lcom/qianhe/yct/activity/ShareListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ShareListActivity$1;

    iget-object v2, v2, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ShareListActivity;)Ljava/util/List;

    move-result-object v2

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    iget v2, v1, Lcom/qianhe/baselib/bean/ShareEntity;->editState:I

    if-nez v2, :cond_1

    .line 123
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->delShare(Lcom/qianhe/baselib/bean/ShareEntity;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/activity/ShareListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ShareListActivity$1;

    iget-object v2, v2, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    .line 126
    invoke-virtual {v2, v1}, Lcom/qianhe/yct/db/DatabaseManager;->deleteShare(Lcom/qianhe/baselib/bean/ShareEntity;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 128
    invoke-virtual {v2, v1}, Lcom/qianhe/yct/db/DatabaseManager;->deleteForeignSharedProjectsAndEngineering(Lcom/qianhe/baselib/bean/ShareEntity;)V

    .line 131
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 132
    iget-object v2, p0, Lcom/qianhe/yct/activity/ShareListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ShareListActivity$1;

    iget-object v2, v2, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ShareListActivity;)Ljava/util/List;

    move-result-object v2

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ShareListActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetshareListAdapter(Lcom/qianhe/yct/activity/ShareListActivity;)Lcom/qianhe/yct/adapter/ShareListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ShareListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ShareListActivity$1;

    iget-object v1, v1, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ShareListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ShareListAdapter;->refreshIdStrList(Ljava/util/List;)V

    .line 136
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ShareListActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ShareListActivity;Z)V

    .line 137
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/ShareListActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/ShareListActivity$1;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$mupdateEmptyView(Lcom/qianhe/yct/activity/ShareListActivity;)V

    return-void
.end method
