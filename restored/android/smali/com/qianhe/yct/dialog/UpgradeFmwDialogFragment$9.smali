.class Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$9;
.super Ljava/lang/Object;
.source "UpgradeFmwDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->startWriteTimer(Lcom/qianhe/baselib/enums/DeviceType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

.field final synthetic val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 411
    iput-object p1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$9;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    iput-object p2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$9;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$9;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v2}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetlastAnswerTime(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 415
    const-string/jumbo v0, "\u4e3b\u673a5\u79d2\u5185\u65e0\u5e94\u7b54\uff0c\u91cd\u65b0\u8c03\u7528writeFwm()"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$9;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetfutureWrite(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$9;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fgetfutureWrite(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;)Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$9;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$fputfutureWrite(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Ljava/util/concurrent/Future;)V

    .line 418
    iget-object v0, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$9;->this$0:Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$9;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-static {v0, v1}, Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;->-$$Nest$mwriteFwm(Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment;Lcom/qianhe/baselib/enums/DeviceType;)V

    :cond_1
    return-void
.end method
