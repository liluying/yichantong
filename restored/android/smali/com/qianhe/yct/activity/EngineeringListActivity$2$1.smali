.class Lcom/qianhe/yct/activity/EngineeringListActivity$2$1;
.super Ljava/lang/Object;
.source "EngineeringListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/EngineeringListActivity$2;->onItemClick(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/EngineeringListActivity$2;

.field final synthetic val$entity:Lcom/qianhe/baselib/bean/EngineeringEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/EngineeringListActivity$2;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/EngineeringListActivity$2;

    iput-object p2, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2$1;->val$entity:Lcom/qianhe/baselib/bean/EngineeringEntity;

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

    .line 149
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/EngineeringListActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/EngineeringListActivity;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/EngineeringListActivity$2;

    iget-object v1, v1, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/EngineeringListActivity;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2$1;->val$entity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->setCurrentEngineering(J)V

    .line 151
    iget-object v1, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/EngineeringListActivity$2;

    iget-object v1, v1, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/EngineeringListActivity;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2$1;->val$entity:Lcom/qianhe/baselib/bean/EngineeringEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryEngineeringByLocalId(J)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/EngineeringListActivity$2;

    iget-object v2, v2, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/EngineeringListActivity;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/yct/db/DatabaseManager;->applyLatestCurrentEngineeringParams()V

    .line 154
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/EngineeringListActivity$2;

    iget-object v2, v2, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$fputsuppressEngineeringQueryUntilElapsed(Lcom/qianhe/yct/activity/EngineeringListActivity;J)V

    .line 155
    iget-object v2, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/EngineeringListActivity$2;

    iget-object v2, v2, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {v2, v1, v0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$msyncCurrentUsageToServer(Lcom/qianhe/yct/activity/EngineeringListActivity;Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 157
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->setSyncAfterEngineeringSwitch(Z)V

    .line 158
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/EngineeringListActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/EngineeringListActivity;->-$$Nest$mreloadListFromLocal(Lcom/qianhe/yct/activity/EngineeringListActivity;)V

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/activity/EngineeringListActivity$2$1;->this$1:Lcom/qianhe/yct/activity/EngineeringListActivity$2;

    iget-object v0, v0, Lcom/qianhe/yct/activity/EngineeringListActivity$2;->this$0:Lcom/qianhe/yct/activity/EngineeringListActivity;

    sget v1, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5f53\u524d\u5de5\u7a0b\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/EngineeringEntity;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method
