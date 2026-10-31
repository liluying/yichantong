.class Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;
.super Ljava/lang/Object;
.source "UpgradeFmwDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->update(JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

.field final synthetic val$bytesRead:J

.field final synthetic val$contentLength:J

.field final synthetic val$done:Z


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;JJZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iput-wide p2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->val$bytesRead:J

    iput-wide p4, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->val$contentLength:J

    iput-boolean p6, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->val$done:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v0, 0x64

    .line 225
    iget-wide v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->val$bytesRead:J

    mul-long v2, v2, v0

    iget-wide v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->val$contentLength:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    .line 226
    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v1, v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetstartWrite(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 227
    iget-boolean v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->val$done:Z

    if-eqz v1, :cond_2

    .line 228
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v1, v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetmodel(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->isGnssFmw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$mstartGnssUpgrade(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V

    return-void

    .line 231
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v2, v2, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->val$event:Lcom/qianhe/yct/event/FirmwareFileInfoResponse;

    iget-object v2, v2, Lcom/qianhe/yct/event/FirmwareFileInfoResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "UPGRADE,STATE"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetstartWrite(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->download_success_transferring_firmware:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v2, v2, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    iget-object v2, v2, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetstartWrite(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$mcancelUpgradeingDialog(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V

    return-void

    .line 236
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v1, v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetstartWrite(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v1, v1, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v3, v3, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    sget v4, Lcom/qianhe/yct/R$string;->download_firmware:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v2, v2, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    iget-object v2, v2, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->onCloseListener:Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    invoke-virtual {v1, v0, v2}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->showUpgradeingDialog(Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetstartWrite(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6$1;->this$1:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;

    iget-object v0, v0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$mcancelUpgradeingDialog(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)V

    :cond_4
    return-void
.end method
