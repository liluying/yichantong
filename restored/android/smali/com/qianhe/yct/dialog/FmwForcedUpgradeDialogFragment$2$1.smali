.class Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2$1;
.super Ljava/lang/Object;
.source "FmwForcedUpgradeDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;->update(JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;

.field final synthetic val$bytesRead:J

.field final synthetic val$contentLength:J

.field final synthetic val$done:Z


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;JJZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2$1;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;

    iput-wide p2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2$1;->val$bytesRead:J

    iput-wide p4, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2$1;->val$contentLength:J

    iput-boolean p6, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2$1;->val$done:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v0, 0x64

    .line 170
    iget-wide v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2$1;->val$bytesRead:J

    mul-long v2, v2, v0

    iget-wide v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2$1;->val$contentLength:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    .line 171
    iget-boolean v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2$1;->val$done:Z

    if-eqz v1, :cond_1

    .line 172
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2$1;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;

    iget-object v1, v1, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->-$$Nest$fgetmodel(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2$1;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->-$$Nest$mstartGnssUpgrade(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)V

    return-void

    .line 175
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2$1;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;

    iget-object v2, v2, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;->val$event:Lcom/qianhe/yct/event/FirmwareFileInfoResponse;

    iget-object v2, v2, Lcom/qianhe/yct/event/FirmwareFileInfoResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "UPGRADE,STATE"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2$1;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->download_success_transferring_firmware:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->refreshTip(Ljava/lang/String;)V

    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2$1;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;

    iget-object v1, v1, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2$1;->this$1:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;

    iget-object v3, v3, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$2;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    sget v4, Lcom/qianhe/yct/R$string;->download_firmware:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->refreshTip(Ljava/lang/String;)V

    return-void
.end method
