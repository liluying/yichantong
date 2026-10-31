.class Lcom/qianhe/yct/activity/BucketListActivity$2$1;
.super Ljava/lang/Object;
.source "BucketListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BucketListActivity$2;->onExecuteClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/BucketListActivity$2;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BucketListActivity$2;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$2;

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
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fputdatabaseManager(Lcom/qianhe/yct/activity/BucketListActivity;Lcom/qianhe/yct/db/DatabaseManager;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetmList(Lcom/qianhe/yct/activity/BucketListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 183
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 185
    iget-object v2, p0, Lcom/qianhe/yct/activity/BucketListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$2;

    iget-object v2, v2, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/BucketListActivity;)Ljava/util/List;

    move-result-object v2

    iget-wide v3, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/qianhe/yct/activity/BucketListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$2;

    iget-object v2, v2, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/db/DatabaseManager;->deleteShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 189
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->delBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    sget v1, Lcom/qianhe/yct/R$string;->delete_success:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/BucketListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/yct/adapter/BucketListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/BucketListAdapter;->closeSelUi()V

    .line 196
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/BucketListActivity;Z)V

    .line 197
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$2;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/BucketListActivity;)Lcom/qianhe/yct/databinding/ActivityBucketListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBucketListBinding;->bottomBtn:Lcom/qianhe/yct/view/BucketBottomView;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/BucketBottomView;->closeExecuteUi()V

    return-void
.end method
